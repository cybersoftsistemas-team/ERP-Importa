unit frmAtualiza_Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  IdComponent, IdTCPConnection, IdFTP, RXCtrls, idftpcommon, Funcoes, ShellApi, DB, DBAccess, MSAccess, IdGlobalProtocols, IniFiles, IdTCPClient, MemDS, IdBaseComponent, IdExplicitTLSClientServerBase,
  system.zip, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Vcl.Samples.Gauges, system.UITypes;

type
    TAtualiza_Sistema = class(TForm)
    IdFTP1: TIdFTP;
    
    tScript: TMSQuery;
    tEmpresas: TMSQuery;
    Panel1: TPanel;
    lProgresso: TLabel;
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    lArquivo: TStaticText;
    StaticText2: TStaticText;
    lTamanho: TStaticText;
    StaticText3: TStaticText;
    lVel: TStaticText;
    Panel2: TPanel;
    bAtualizar: TButton;
    bSair: TButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    Label4: TLabel;
    cLog: TMemo;
    Label5: TLabel;
    Memo2: TMemo;
    TabCyber: TMSQuery;
    ServerCyber: TMSConnection;
    TabLocal: TMSQuery;
    Temp: TMSQuery;
    procedure FormCreate(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;AWorkCount: Int64);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;AWorkCountMax: Int64);
    procedure RodaScripts;
    procedure AtualizaTabelas;
    procedure AtDownLoad;
    procedure AtUpLoad;
    procedure AtDescompacta;
    procedure ChecaBACKUP;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    STime: TDateTime;
  public
    { Public declarations }
    AbortTransfer   : Boolean;
    TransferrignData: Boolean;
    mPastaLocal     : String;
    mAutomatico     : Boolean;
    mBACKUP         : Boolean;
    mTexto          : TextFile;
    mLinha          : String;
    mDataArq        : TDateTime;
    mDataAtual      : TDateTime;
    mDia            : array[1..7] of string;
    mDirLocal       : String;
    mMaiorData      : TDateTime;
    mErros          : Integer;
  end;

var
  Atualiza_Sistema: TAtualiza_Sistema;

implementation

uses frmDados, frmMenu_Principal;

Var
  AverageSpeed: Double = 0;

{$R *.dfm}

procedure TAtualiza_Sistema.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TAtualiza_Sistema.bAtualizarClick(Sender: TObject);
Var
    aIni: TIniFile;
    mPastaEXE : String;
    mPastaAtu : String;
begin
     bAtualizar.Enabled := false;
     cLog.Lines.Clear;
     Memo2.Lines.Clear;

     mPastaEXE := ExtractFilePath(Application.ExeName);
     mPastaAtu := ExtractFilePath(Application.ExeName)+'\Atualizacao';

     AtDownLoad;
     AtDescompacta;
     //ChecaBACKUP;
     RodaScripts;
     //AtualizaTabelas;

     if mErros > 0 then AtUpLoad;

     If FileExists(mPastaEXE+'Cybersoft_Atualiza.exe') = true then begin
        Try
           DeleteFile(mPastaEXE+'Cybersoft_Atualiza.exe');
        Except
           Showmessage('Falha na atualização!'+#13+#13+'Arquivo pode estar sendo utilizado.');
        End;
     End;

     Application.ProcessMessages;
     If not CopyFile(PCHAR(mPastaAtu+'\Cybersoft_Atualiza.exe'), PCHAR(mPastaEXE+'Cybersoft_Atualiza.exe'), true) then begin
        Showmessage('Falha na atualização!'+#13+#13+'Erro ao copiar módulo atualizador.'+#13+'Contacte a Cybersoft para a resolução do problema.');
     End;

     // Atualiza a data de atualização de todas as empresas.
     tEmpresas.SQL.Clear;
     tEmpresas.SQL.Add('USE Cybersoft_Cadastros');
     tEmpresas.SQL.Add('SELECT Codigo, Razao_Social, Banco_Dados, Estado FROM Empresas');
     tEmpresas.SQL.Add('WHERE ISNULL(Banco_Dados, '''') <> '''' ');
     tEmpresas.SQL.Add('  AND Banco_Dados IN(SELECT Name COLLATE SQL_Latin1_General_CP1_CI_AS FROM Master.dbo.sysdatabases)');
     tEmpresas.SQL.Add('ORDER BY Banco_Dados');
     tEmpresas.Open;

     tEmpresas.First;
     while not tEmpresas.Eof do begin
           try
              Dados.Configuracao.SQL.Clear;
              Dados.Configuracao.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
              Dados.Configuracao.SQL.Add('UPDATE Configuracao SET Atualiza_Anterior = Atualiza_Data,');
              Dados.Configuracao.SQL.Add('                        Atualiza_Data     = :pData');
              Dados.Configuracao.ParamByName('pData').AsDateTime := mMaiorData;
              Dados.Configuracao.Execute;
           except
              MessageDlg('ERRO!'+#13+#13+'Banco de dados da empresa '+tEmpresas.FieldByName('Banco_Dados').AsString+' não encontrado!', mtError, [mbOK], 0);
           end;
           tEmpresas.Next;
     end;

     tEmpresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
     Dados.Configuracao.SQL.Clear;
     Dados.Configuracao.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
     Dados.Configuracao.SQL.Add('SELECT * FROM Configuracao');
     Dados.Configuracao.Close;

     Dados.Empresas.SQL.Clear;
     Dados.Empresas.SQL.Add('USE Cybersoft_Cadastros');
     Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE ISNULL(Desativada, 0) = 0 ORDER BY Razao_Social');

     // Habilita a janela de atualizações.
     aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaServidor.ini');

     aIni.WriteBool('ATUALIZA','MostrarAtual', true);
     aIni.Free;

     // Roda o atualizador.
     ShellExecute(Handle, 'Open', PChar(ExtractFilePath(Application.ExeName)+'Cybersoft_Atualiza.EXE'), PChar(''), nil, SW_SHOWNORMAL);
     Application.Terminate;
end;
(*
procedure TAtualiza_Sistema.AtDownload;
begin
     Screen.Cursor        := crHourGlass;
     mPastaLocal          := ExtractFilePath(Application.ExeName)+'Atualizacao';
     lProgresso.Visible   := true;
     ProgressBar1.Visible := true;

     Dados.Configuracao.Open;

     If (Trim(Dados.ConfiguracaoIP_Suporte.AsString) = '') or (Trim(Dados.ConfiguracaoUsuario_FTP.AsString) = '') or (Trim(Dados.ConfiguracaoSenha_FTP.AsString) = '') then begin
        MessageDlg('Falta definir os parâmetros de conexão com o servidor da Cybersoft em configurações!', mtError, [mbOK], 0);
        Abort;
     End;

     // Executa o download do arquivo executavel compactado.
     IdFTP1.Disconnect;
     Menu_Principal.IdAntiFreeze1.Active := true;

     IdFTP1.Username := Dados.ConfiguracaoUsuario_FTP.AsString;
     IdFTP1.Password := Dados.ConfiguracaoSenha_FTP.AsString;
     IdFTP1.Host     := Dados.ConfiguracaoIP_Suporte.AsString;
     IdFTP1.Passive  := Dados.ConfiguracaoPassive_FTP.AsBoolean;
     IdFTP1.Port     := Dados.ConfiguracaoPorta_FTP.AsInteger;

     Try
         IdFTP1.Connect();
     Except
         ShowMessage('Falha na conexão com o servidor da CYBERSOFT!'+#13+'Não foi possivel fazer o download dos arquivos de atualização!'+#13+'Entre em contato com o suporte técnico.');
     End;

     If IdFTP1.Connected then begin
        If not DirectoryExists(mPastaLocal) then begin
           ForceDirectories(mPastaLocal);
        end else begin
           DeleteFile(mPastaLocal+'\IMPORTA.RAR');
           DeleteFile(mPastaLocal+'\IMPORTA.EXE');
           DeleteFile(mPastaLocal+'\Script_Cadastros.txt');
           DeleteFile(mPastaLocal+'\Script_Empresa.txt');
           DeleteFile(mPastaLocal+'\Script_Contabilidade.txt');
           DeleteFile(mPastaLocal+'\Atualiza_Tabelas.txt');
           DeleteFile(mPastaLocal+'\Cybersoft_Atualiza.exe');
           DeleteFile(mPastaLocal+'\Fundo_Cybersoft.bmp');
           DeleteFile(mPastaLocal+'\Fundo_Cybersoft_Logo.bmp');
        End;

        lArquivo.Caption := Dados.ConfiguracaoPasta_AtualizacaoCybersoft.AsString + '\IMPORTA.RAR';
        lTamanho.Caption := FormatFloat('##0.000', IdFTP1.Size('\Importa.rar')/1024)+' MB';

        // Este bloco foi removido por esta dando o erro "connection closed gracefully".
        Try
            cLog.Lines.Add('Fazendo o Download das atualizações...Importa.rar');
            Application.ProcessMessages;
            ProgressBar1.Max := IdFTP1.Size('\Importa.rar');
            IdFTP1.TransferType := ftBinary;
            IdFTP1.Get('IMPORTA.RAR', mPastaLocal+'\IMPORTA.RAR', true, false);
            cLog.Lines.Add('     ...Download concluído');

            Application.ProcessMessages;
        except
           cLog.Lines.Add('      ...Falha no download do servidor da Cybersoft.');
        End;
     end else begin
        Abort;
     End;

     Dados.Configuracao.Close;

     lProgresso.Visible   := false;
     ProgressBar1.Visible := false;
     Application.ProcessMessages;

     Screen.Cursor := crDefault;
end;
*)

procedure TAtualiza_Sistema.AtDownload;
begin
     Screen.Cursor        := crHourGlass;
     mPastaLocal          := ExtractFilePath(Application.ExeName)+'Atualizacao';
     lProgresso.Visible   := true;
     ProgressBar1.Visible := true;

     Dados.Configuracao.Open;

     If (Trim(Dados.ConfiguracaoIP_Suporte.AsString) = '') or (Trim(Dados.ConfiguracaoUsuario_FTP.AsString) = '') or (Trim(Dados.ConfiguracaoSenha_FTP.AsString) = '') then begin
        MessageDlg('Falta definir os parâmetros de conexão com o servidor da Cybersoft em configurações!', mtError, [mbOK], 0);
        Abort;
     End;

     // Executa o download do arquivo executavel compactado.
     IdFTP1.Disconnect;
     Menu_Principal.IdAntiFreeze1.Active := true;

     IdFTP1.Username := Dados.ConfiguracaoUsuario_FTP.AsString;
     IdFTP1.Password := Dados.ConfiguracaoSenha_FTP.AsString;
     IdFTP1.Host     := Dados.ConfiguracaoIP_Suporte.AsString;
     IdFTP1.Passive  := Dados.ConfiguracaoPassive_FTP.AsBoolean;
     IdFTP1.Port     := Dados.ConfiguracaoPorta_FTP.AsInteger;

     Try
         IdFTP1.Connect();
     Except
         ShowMessage('Falha na conexão com o servidor da CYBERSOFT!'+#13+'Não foi possivel fazer o download dos arquivos de atualização!'+#13+'Entre em contato com o suporte técnico.');
     End;

     If IdFTP1.Connected then begin
        If not DirectoryExists(mPastaLocal) then begin
           ForceDirectories(mPastaLocal);
        end else begin
           DeleteFile(mPastaLocal+'\IMPORTA.RAR');
           DeleteFile(mPastaLocal+'\IMPORTA.EXE');
           DeleteFile(mPastaLocal+'\Script_Cadastros.txt');
           DeleteFile(mPastaLocal+'\Script_Empresa.txt');
           DeleteFile(mPastaLocal+'\Script_Contabilidade.txt');
           DeleteFile(mPastaLocal+'\Atualiza_Tabelas.txt');
           DeleteFile(mPastaLocal+'\Cybersoft_Atualiza.exe');
           DeleteFile(mPastaLocal+'\Fundo_Cybersoft.bmp');
           DeleteFile(mPastaLocal+'\Fundo_Cybersoft_Logo.bmp');
        End;

        lArquivo.Caption := Dados.ConfiguracaoPasta_AtualizacaoCybersoft.AsString + '/IMPORTA.RAR';
        lTamanho.Caption := FormatFloat('##0.000', IdFTP1.Size('/Importa.rar')/1024)+' MB';

        Try
            cLog.Lines.Add('Fazendo o Download das atualizações...Importa.rar');
            Application.ProcessMessages;
            ProgressBar1.Max := IdFTP1.Size('/Importa.rar');
            IdFTP1.TransferType := ftBinary;
            IdFTP1.Get('IMPORTA.RAR', mPastaLocal+'/IMPORTA.RAR', true, false);
            cLog.Lines.Add('     ...Download concluído');

            Application.ProcessMessages;
        except
           cLog.Lines.Add('      ...Falha no download do servidor da Cybersoft.');
        End;
     end else begin
        Abort;
     End;

     Dados.Configuracao.Close;

     lProgresso.Visible   := false;
     ProgressBar1.Visible := false;
     Application.ProcessMessages;

     Screen.Cursor := crDefault;
end;

procedure TAtualiza_Sistema.AtDescompacta;
var
    zip:TZipFile;
begin
      Screen.Cursor := crHourGlass;
      zip           := TZipFile.Create;
      mPastaLocal   := ExtractFilePath(Application.ExeName)+'Atualizacao';

      if fileexists(mPastaLocal+'\IMPORTA.RAR') then begin
         cLog.Lines.Add('Descompactando arquivos...');
         zip.Open(mPastaLocal+'\IMPORTA.RAR', zmReadWrite);
         zip.ExtractAll(mPastaLocal);
         zip.Close;
         zip.Free;
         cLog.Lines.Add('Arquivos descompactados...');
      end else begin
         showmessage('Arquivo ' + mPastaLocal+'\IMPORTA.RAR'+' não encontrado.');
         Abort;
      end;
end;

// Executa os scripts de atualização do banco de dados.
procedure TAtualiza_Sistema.RodaScripts;
Var
    mPastaLocal: String;
    mCarrega   : Boolean;
begin
     Screen.Cursor := crHourGlass;

     cLog.Lines.Add('Executando os scripts de atualização do banco de dados.');

     Dados.Configuracao.Open;

     mDataAtual  := Dados.ConfiguracaoAtualiza_Data.Value;
     mPastaLocal := ExtractFilePath(Application.ExeName)+'Atualizacao';
     mCarrega    := false;
     mErros      := 0;

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Cadastros.
     Memo2.Clear;
     Memo2.Lines.Add('[ SCRIPT CADASTROS ]');

     tScript.SQL.Clear;
     tScript.Connection := Dados.Banco;
     tScript.SQL.Add('USE Cybersoft_Cadastros');

     AssignFile(mTexto, mPastaLocal+'\Script_Cadastros.txt');
     Reset(mTexto);
     while not Eof(mTexto) do begin
           ReadLn(mTexto, mLinha);
           if Copy(mLinha,1,3) = '--[' then begin
              mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
              if (mDataAtual < mDataArq) then begin
                 mCarrega := true;
              end;
              if mMaiorData < mDataArq then begin
                 mMaiorData := mDataArq;
              end;
           end;
           if (mCarrega = true) and (Trim(UpperCase(mLinha)) <> 'GO') and (Trim(mLinha) <> '') then begin
              tScript.SQL.Add(mLinha);
           end;
           if (Trim(UpperCase(mLinha)) = 'GO') and (Trim(tScript.SQL.Text) <> '') then begin
              try
                 tScript.Execute;
              except
                 Memo2.Lines.Add(Trim(tScript.SQL.Text));
                 Memo2.Lines.Add('[ SCRIPT ERRO ]');
                 Memo2.Lines.Add('');
                 Inc(mErros);
              end;
              tScript.SQL.Clear;
           end;
     end;
     CloseFile(mTexto);

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Contabilidade.
     tEmpresas.SQL.Clear;
     tEmpresas.SQL.Add('USE Cybersoft_Cadastros');
     tEmpresas.SQL.Add('SELECT Codigo, Razao_Social, Banco_Contabilidade, Estado FROM Empresas');
     tEmpresas.SQL.Add('WHERE LTRIM(RTRIM(Banco_Contabilidade)) <> '''' ');
     tEmpresas.SQL.Add('  AND Banco_Contabilidade IN(SELECT Name COLLATE SQL_Latin1_General_CP1_CI_AS FROM Master.dbo.sysdatabases)');
     tEmpresas.SQL.Add('ORDER BY Razao_Social');
     tEmpresas.Open;
     tEmpresas.First;

     While not tEmpresas.Eof do begin
           Memo2.Lines.Add('[ SCRIPT CONTABILIDADE: '+tEmpresas.FieldByName('Razao_Social').AsString + '('+tEmpresas.FieldByName('Estado').AsString+' ]');

           tScript.SQL.Clear;
           tScript.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Contabilidade').AsString);
           AssignFile(mTexto, mPastaLocal+'\Script_Contabilidade.txt');
           Reset(mTexto);
           mCarrega := false;

           While not Eof(mTexto) do begin
                 ReadLn(mTexto, mLinha);
                 If Copy(mLinha,1,3) = '--[' then begin
                    mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
                    If (mDataAtual < mDataArq) then begin
                       mCarrega := true;
                    End;
                    If mMaiorData < mDataArq then begin
                       mMaiorData := mDataArq;
                    End;
                 End;
                 If (mCarrega = true) and (Trim(UpperCase(mLinha)) <> 'GO') and (Trim(mLinha) <> '') then begin
                    tScript.SQL.Add(mLinha);
                 End;

                 If (Trim(UpperCase(mLinha)) = 'GO') and (Trim(tScript.SQL.Text) <> '') then begin
                    Try
                       tScript.Execute;
                    Except
                       Memo2.Lines.Add('[ SCRIPT ERRO ]');
                       Memo2.Lines.Add(Trim(tScript.SQL.Text));
                       Memo2.Lines.Add('');
                       Inc(mErros);
                    End;
                    tScript.SQL.Clear;
                 End;
           End;
           CloseFile(mTexto);

           tEmpresas.Next;
     End;

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Empresa.
     tEmpresas.SQL.Clear;
     tEmpresas.SQL.Add('USE Cybersoft_Cadastros');
     tEmpresas.SQL.Add('SELECT Codigo, Razao_Social, Banco_Dados, Estado, Matriz_Filial, Numero_Filial FROM Empresas');
     tEmpresas.SQL.Add('WHERE LTRIM(RTRIM(Banco_Dados)) <> '''' ');
     tEmpresas.SQL.Add('  AND Banco_Dados IN(SELECT Name COLLATE SQL_Latin1_General_CP1_CI_AS FROM Master.dbo.sysdatabases)');
     tEmpresas.SQL.Add('ORDER BY Razao_Social');
     tEmpresas.Open;
     tEmpresas.First;

     While not tEmpresas.Eof do begin
           if tEmpresas.FieldByName('Matriz_Filial').AsBoolean then
              Memo2.Lines.Add('[ SCRIPT EMPRESA: '+tEmpresas.FieldByName('Razao_Social').AsString + '('+tEmpresas.FieldByName('Estado').AsString+') - Matriz ]')
           else
              Memo2.Lines.Add('[ SCRIPT EMPRESA: '+tEmpresas.FieldByName('Razao_Social').AsString + '('+tEmpresas.FieldByName('Estado').AsString+') - Filial '+tEmpresas.FieldByName('Numero_Filial').AsString+' ]');

           tScript.SQL.Clear;
           tScript.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
           AssignFile(mTexto, mPastaLocal+'\Script_Empresa.txt');
           Reset(mTexto);
           mCarrega := false;

           While not Eof(mTexto) do begin
                 ReadLn(mTexto, mLinha);
                 If Copy(mLinha,1,3) = '--[' then begin
                    mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
                    If (mDataAtual < mDataArq) then begin
                       mCarrega := true;
                    End;
                    If mMaiorData < mDataArq then begin
                       mMaiorData := mDataArq;
                    End;
                 End;
                 If (mCarrega = true) and (Trim(UpperCase(mLinha)) <> 'GO') and (Trim(mLinha) <> '') then begin
                    tScript.SQL.Add(mLinha);
                 End;

                 If (Trim(UpperCase(mLinha)) = 'GO') and (Trim(tScript.SQL.Text) <> '') then begin
                    Try
                       tScript.Execute;
                    Except
                       Memo2.Lines.Add('[ SCRIPT ERRO ]');
                       Memo2.Lines.Add(Trim(tScript.SQL.Text));
                       Memo2.Lines.Add('');
                       Inc(mErros);
                    End;
                    tScript.SQL.Clear;
                 End;
           End;
           CloseFile(mTexto);

           tEmpresas.Next;
     End;
     
//     DeleteFile(mPastaLocal+'\Script_Erros.txt');
//     If mErros > 0 then begin
//        Memo2.Lines.SaveToFile(mPastaLocal+'\Script_Erros.txt');
//     End;

     If mErros = 0 then
        cLog.Lines.Add('     ...Scripts de banco de dados executados.')
     else
        cLog.Lines.Add('     ...Scripts de banco de dados executados mas com erros.');

     Screen.Cursor := crDefault;
end;

// Executa os scripts de atualização do banco de dados.
procedure TAtualiza_Sistema.AtualizaTabelas;
Var
    mPastaLocal,
    mTab, mValor, minsert: String;
    mCarrega: Boolean;
    i, r: Integer;
    mTipo:TFieldType;
begin
     Screen.Cursor := crHourGlass;
     cLog.Lines.Add('Atualizando tabelas no banco de dados.');
     Dados.Configuracao.Open;

     mDataAtual  := Dados.ConfiguracaoAtualiza_Data.Value;
     mPastaLocal := ExtractFilePath(Application.ExeName)+'Atualizacao';
     mCarrega    := false;

     try
         ServerCyber.Server    := Dados.ConfiguracaoIP_Suporte.AsString;
         ServerCyber.Connected := true;
     except
         memo2.Lines.add('ERRO: Não foi possivel conectar ao banco de dados da Cybersoft para atualizar as tabelas.');
         Abort;
     end;

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Cadastros.
     Memo2.Lines.Add('[ ATUALIZAÇÃO DE TABELAS DO BANCO DE DADOS ]');

     TabCyber.SQL.Clear;
     TabLocal.SQL.Clear;

     AssignFile(mTexto, mPastaLocal+'\Atualiza_Tabelas.txt');
     Reset(mTexto);
     while not Eof(mTexto) do begin
           ReadLn(mTexto, mLinha);
           if Copy(mLinha,1,3) = '--[' then begin
              mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
              if (mDataAtual < mDataArq) then begin
                 mCarrega := true;
              end;
              if mMaiorData < mDataArq then begin
                 mMaiorData := mDataArq;
              end;
           end;
           if (mCarrega = true) and (Trim(UpperCase(mLinha)) <> 'GO') and (Trim(mLinha) <> '') then begin
              if Copy(mLinha,1,3) <> '--[' then begin
                 mTab := mLinha;
                 TabCyber.sql.add('SELECT * FROM '+mTab);
                 temp.sql.Clear;
                 temp.sql.add('select table_name from cybersoft_Cadastros.information_schema.tables where table_name = '+quotedstr(mTab));
                 temp.Open;
                 if temp.RecordCount > 0 then begin
                    TabLocal.sql.Add('truncate table '+mTab);
                 end;
              end;
           end;
           if (Trim(UpperCase(mLinha)) = 'GO') and (Trim(TabCyber.SQL.Text) <> '') then begin
              try
                  TabCyber.Open;
                  // Limpa a tabela.
                  if trim(TabLocal.sql.Text) <> '' then begin
                     TabLocal.execute;
                  end;

                  TabLocal.sql.clear;
                  mInsert := 'INSERT INTO '+ mTab + ' (';

                  for i := 0 to Pred(TabCyber.FieldCount) do begin
                      if i < Pred(TabCyber.FieldCount) then begin
                         mInsert := mInsert + TabCyber.Fields[i].FieldName+',';
                      end else begin
                         mInsert := mInsert + TabCyber.Fields[i].FieldName;
                      end;
                  end;
                  mInsert := mInsert + ') VALUES ';
                  ProgressBar1.Max      := TabCyber.RecordCount;
                  ProgressBar1.Position := 0;
                  ProgressBar1.Visible  := true;
                  ProgressBar1.Enabled  := true;
                  
                  TabLocal.sql.add(mInsert);
                  TabCyber.first;
                  r := 1;
                  while not TabCyber.eof do begin
                        mValor := '(';
                        for i := 0 to Pred(TabCyber.FieldCount) do begin
                            mTipo := TabCyber.FieldByName(TabCyber.Fields[i].FieldName).DataType;
                            if (mTipo = ftString) or (mTipo = ftDateTime) then begin
                               if i < Pred(TabCyber.FieldCount) then begin
                                  mValor := mValor + quotedstr(TabCyber.Fields[i].AsString)+',';
                               end else begin
                                  mValor := mValor + quotedstr(TabCyber.Fields[i].AsString)+'),';
                               end;
                            end else begin
                               if mTipo <> ftBoolean then begin
                                  if i < Pred(TabCyber.FieldCount) then begin
                                     mValor := mValor + TabCyber.Fields[i].AsString+',';
                                  end else begin
                                     mValor := mValor + TabCyber.Fields[i].AsString+'),';
                                  end;
                               end else begin
                                  if i < Pred(TabCyber.FieldCount) then begin
                                     mValor := mValor + iif(TabCyber.Fields[i].asboolean, '1', '0')+',';
                                  end else begin
                                     mValor := mValor + iif(TabCyber.Fields[i].asboolean, '1', '0')+'),';
                                  end;
                               end;
                            end;
                        end;
                        TabLocal.sql.add(mValor);

                        TabCyber.next;
                        inc(r);
                        if r > 990 then begin
                           r := 1;
                           TabLocal.sql.text := Copy(trim(TabLocal.sql.text), 1, length(trim(TabLocal.SQL.text))-1);
                           TabLocal.sql.text := StringReplace(TabLocal.sql.text, 'False', '0', [rfReplaceAll,rfIgnoreCase]);
                           TabLocal.sql.text := StringReplace(TabLocal.sql.text, 'True' , '1', [rfReplaceAll,rfIgnoreCase]);
                           cLog.Lines.add(TabLocal.sql.text);
                           //TabLocal.sql.SaveToFile('c:\temp\Atualiza_Tabela.sql');
                           TabLocal.Execute;
                           TabLocal.sql.clear;
                           TabLocal.sql.add(mInsert);
                        end;
                  end;

                  TabLocal.sql.text := Copy(trim(TabLocal.sql.text), 1, length(trim(TabLocal.SQL.text))-1);
                  TabLocal.sql.text := StringReplace(TabLocal.sql.text, 'False', '0', [rfReplaceAll,rfIgnoreCase]);
                  TabLocal.sql.text := StringReplace(TabLocal.sql.text, 'True' , '1', [rfReplaceAll,rfIgnoreCase]);
                  cLog.Lines.add(TabLocal.sql.text);
                  TabLocal.sql.SaveToFile('c:\temp\Atualiza_Tabela4.sql');
                  TabLocal.Execute;

                  TabCyber.Close;
                  TabLocal.Close;
                  TabCyber.sql.Clear;
                  TabLocal.sql.Clear;
              except on E: Exception do
                  begin
                      Memo2.Lines.Add(Trim(tScript.SQL.Text));
                      Memo2.Lines.Add('[ATUALIZAÇÃO DE TABELAS ERRO]');
                      Memo2.Lines.Add('Tabela: '+mTab );
                      Memo2.Lines.Add('Erro:'+E.Message);
                      Inc(mErros);
                      sleep(5000);
                  end;
              end;
           end;
     end;
     CloseFile(mTexto);
     ServerCyber.Connected := false;

     DeleteFile(mPastaLocal+'\Script_Erros.txt');
     If mErros > 0 then begin
        Memo2.Lines.SaveToFile(mPastaLocal+'\Script_Erros.txt');
     End;

     If mErros = 0 then
        cLog.Lines.Add('     ...Scripts de banco de dados executados.')
     else
        cLog.Lines.Add('     ...Scripts de banco de dados executados mas com erros.');

     Screen.Cursor := crDefault;
end;

procedure TAtualiza_Sistema.AtUpLoad;
begin
     Screen.Cursor := crHourGlass;

     // Envio o arquivo de log de erro de scripts para o servidor da Cybersoft.
     try
         If IdFTP1.Connected then begin
            Dados.Empresas.SQL.Clear;
            Dados.Empresas.SQL.Add('USE Cybersoft_Cadastros');
            Dados.Empresas.SQL.Add('SELECT * FROM Empresas');
            Dados.Empresas.Open;
            Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

            if FileExists(mPastaLocal+'\Script_Erros.txt') then begin
               lProgresso.Visible    := true;
               IdFTP1.TransferType   := ftASCII;
               ProgressBar1.Visible  := true;
               ProgressBar1.Max      := FileSizeByName(mPastaLocal+'\Script_Erros.txt');
               ProgressBar1.Position := 0;

               IdFTP1.Put(mPastaLocal+'\Script_Erros.txt', '\'+ 'Script_Erros_'+RemoveCaracter('.', '', Dados.EmpresasRazao_Social.AsString)+' ('+Trim(NomeComputador)+').txt');

               cLog.Lines.Add('Envio do arquivo de log '+ mPastaLocal+'\Script_Erros.txt'+' terminado!');
            end;
            Dados.Empresas.Close;
         end;
     except 
         cLog.Lines.Add('**** Falha no envio do arquivo de log '+ mPastaLocal+'\Script_Erros.txt');
     end;

     IdFTP1.Disconnect;
     Menu_Principal.IdAntiFreeze1.Active := false;

     lProgresso.Visible   := false;
     ProgressBar1.Visible := false;

     Screen.Cursor := crDefault;
end;

procedure TAtualiza_Sistema.IdFTP1Work(ASender: TObject;AWorkMode: TWorkMode; AWorkCount: Int64);
Var
   S: String;
   TotalTime: TDateTime;
   H, M, Sec, MS: Word;
   DLTime: Double;
begin
      TotalTime :=  Now - STime;
      DecodeTime(TotalTime, H, M, Sec, MS);
      Sec    := Sec + M * 60 + H * 3600;
      DLTime := Sec + MS / 1000;

      If DLTime > 0 then
         AverageSpeed := (AWorkCount / 1024) / DLTime;

      If AverageSpeed > 0 then begin
         Sec := Trunc(((ProgressBar1.Max - AWorkCount) / 1024) / AverageSpeed);
         S := PoeZero(2, (Sec div 3600))+':'+PoeZero(2, (Sec div 60) mod 60) + ':'+PoeZero(2, Sec mod 60);
      end else
         S := '';

      if (AverageSpeed/1024) >= 1 then
         lVel.Caption   := FormatFloat('0 MB/s', AverageSpeed/1024)
      else
         lVel.Caption   := FormatFloat('0 KB/s', AverageSpeed);

      If AbortTransfer then begin
         IdFTP1.Abort;
         IdFTP1.Disconnect;
      End;

      ProgressBar1.Position := AWorkCount;
      lProgresso.Caption    := InttoStr(Trunc((ProgressBar1.Position/ProgressBar1.Max)*100))+'%';
      AbortTransfer         := false;

      Application.ProcessMessages;
end;

procedure TAtualiza_Sistema.IdFTP1WorkEnd(ASender: TObject;AWorkMode: TWorkMode);
begin
      TransferrignData := false;
      AverageSpeed     := 0;
end;

procedure TAtualiza_Sistema.IdFTP1WorkBegin(ASender: TObject;AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
      TransferrignData := true;
      AbortTransfer    := false;
      STime            := now;
      AverageSpeed     := 0;
end;

procedure TAtualiza_Sistema.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TAtualiza_Sistema.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Atualiza_Sistema.Release;
      Atualiza_Sistema := nil;
end;

procedure TAtualiza_Sistema.FormActivate(Sender: TObject);
begin
      //Atualiza_Sistema.Height := 187;
      bAtualizar.Enabled := not mAutomatico;
      If mAutomatico then bAtualizar.Click;
end;

procedure TAtualiza_Sistema.ChecaBACKUP;
begin
     mBACKUP := false;

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Cadastros.
     AssignFile(mTexto, mPastaLocal+'\Sistemas\Faturamento\Codigo_Fonte\Script_Cadastros.txt');
     Reset(mTexto);

     While not Eof (mTexto) do begin
           ReadLn(mTexto, mLinha);
           If Copy(mLinha,1,3) = '--[' then begin
              mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
              If (mDataAtual < mDataArq) then begin
                 mBACKUP  := true;
              End;
           End;
     End;
     CloseFile(mTexto);

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Contabilidade.
     AssignFile(mTexto, mPastaLocal+'\Sistemas\Faturamento\Codigo_Fonte\Script_Contabilidade.txt');
     Reset(mTexto);

     While not Eof (mTexto) do begin
           ReadLn(mTexto, mLinha);
           If Copy(mLinha,1,3) = '--[' then begin
              mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
              If (mDataAtual < mDataArq) then begin
                 mBACKUP := true;
              End;
           End;
     End;
     CloseFile(mTexto);

     // SCRIPT DO BANCO DE DADOS DO Cybersoft_Empresa.
     AssignFile(mTexto, mPastaLocal+'\Sistemas\Faturamento\Codigo_Fonte\Script_Empresa.txt');
     Reset(mTexto);

     While not Eof (mTexto) do begin
           ReadLn(mTexto, mLinha);
           If Copy(mLinha,1,3) = '--[' then begin
              mDataArq := StrtoDateTime(Copy(mLinha,  4, 19));
              If (mDataAtual < mDataArq) then begin
                 mBACKUP := true;
              End;
           End;
     End;
     CloseFile(mTexto);

     // Executa o BACKUP do bando de dados.
     If (mBACKUP = true) then begin
        Menu_Principal.mMSG := false;
        cLog.Lines.Add('');
        cLog.Lines.Add('Executando o BACKUP antes da atualização...');

        // Executando o script de backup no "SERVIDOR.
        mDia[1] := 'Domingo';
        mDia[2] := 'Segunda';
        mDia[3] := 'Terca';
        mDia[4] := 'Quarta';
        mDia[5] := 'Quinta';
        mDia[6] := 'Sexta';
        mDia[7] := 'Sabado';

        With Dados do begin
             Dados.Configuracao.Open;
             
             Screen.Cursor := crSQLWait;
             mDirLocal := Trim(ConfiguracaoPasta_BACKUP.AsString)+'\'+mDia[DayOfWeek(Date)];
             If not DirectoryExists(mDirLocal) then ForceDirectories(mDirLocal);
             Backup.SQL.Clear;
             Backup.SQL.Add('DECLARE @name VARCHAR(50)      -- database name');
             Backup.SQL.Add('DECLARE @path VARCHAR(256)     -- path for backup files');
             Backup.SQL.Add('DECLARE @fileName VARCHAR(256) -- filename for backup');
             Backup.SQL.Add('DECLARE @fileDate VARCHAR(20)  -- used for file name');
             Backup.SQL.Add('SET @path = '+QuotedStr(mDirLocal+'\') );
             Backup.SQL.Add('SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)');
             Backup.SQL.Add('DECLARE db_cursor CURSOR FOR');
             Backup.SQL.Add('SELECT name');
             Backup.SQL.Add('FROM master.dbo.sysdatabases');
             Backup.SQL.Add('WHERE name NOT IN (''master'',''model'',''msdb'',''Northwind'',''pubs'',''tempdb'', ''ReportServer'', ''ReportServerTempDB'')' );
             Backup.SQL.Add('OPEN db_cursor');
             Backup.SQL.Add('FETCH NEXT FROM db_cursor INTO @name');
             Backup.SQL.Add('WHILE @@FETCH_STATUS = 0');
             Backup.SQL.Add('BEGIN');
             Backup.SQL.Add('       SET @fileName = @path + @name + '+QuotedStr('.bak') );
             Backup.SQL.Add('       BACKUP DATABASE @name TO DISK = @fileName');
             Backup.SQL.Add('       FETCH NEXT FROM db_cursor INTO @name');
             Backup.SQL.Add('END');
             Backup.SQL.Add('CLOSE db_cursor');
             Backup.SQL.Add('DEALLOCATE db_cursor');
             //Backup.SQL.SaveToFile('c:\temp\BACKUP.SQL');
             Backup.Execute;

             Screen.Cursor := crHourGlass;
        End;
        cLog.Lines.Add('     ...BACKUP concluído');
     End;

     Screen.Cursor := crDefault;
end;



end.
