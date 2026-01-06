unit frmUtilitarios_EnviarDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls, DB, jpeg, Funcoes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, IdFTPCommon, IdIntercept, IdLogBase, IdLogEvent, ComCtrls, IdGlobal, IniFiles, Math, IdExplicitTLSClientServerBase, IdGlobalProtocols, System.UITypes, system.zip;
  

type
    TUtilitarios_EnviarDados = class(TForm)
    ListBox1: TListBox;
    IdLogEvent1: TIdLogEvent;
    Panel1: TPanel;
    bExecutar: TButton;
    bSair: TButton;
    bCancelar: TButton;
    IdFTP1: TIdFTP;
    Panel2: TPanel;
    lProgresso: TLabel;
   //Animacao: TRxGIFAnimator;
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    lArq: TStaticText;
    lTam: TStaticText;
    lVel: TStaticText;
    lTempo: TStaticText;
    Label1: TLabel;
    ProgressBar2: TProgressBar;
    StaticText6: TStaticText;
    Label2: TLabel;
    ProgressBar3: TProgressBar;
    StaticText7: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bExecutarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;AWorkCountMax: Int64);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  private
    { Private declarations }
    AbortTransfer   : Boolean;
    TransferrignData: Boolean;
    STime           : TDateTime;
    procedure EventoOnProgress(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
    function ObterTamanhoArquivo(const NomeArquivo: string): integer;
    function FTPFileExists(aFileName: string): Boolean;
    var
       BytesParaCompactar,
       BytesProcessados: cardinal;
       PorcentagemGeral: real;
       //TransferrignData,
       //AbortTransfer: Boolean;
       //STime : TDateTime;
       AverageSpeed: Double;
       inicio:Ttime;
       mDia : array[1..7] of string;
  public
    { Public declarations }
    mDirLocal: String;
  end;

var
  Utilitarios_EnviarDados: TUtilitarios_EnviarDados;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitarios_EnviarDados.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Utilitarios_EnviarDados.Release;
     Utilitarios_EnviarDados := nil;
end;

procedure TUtilitarios_EnviarDados.bExecutarClick(Sender: TObject);
Var
    bak,
    pasta,
    destino,
    servidor,
    prenome,
    zip: string;
    ZipFile  : TZipFile;
    i:integer;
    sr: TSearchRec;
begin
     Screen.Cursor := crHourGlass;
     ListBox1.Clear;
     ProgressBar1.Position := 0;
     ProgressBar2.Position := 0;
     ProgressBar3.Position := 0;
     BytesParaCompactar    := 0;
     BytesProcessados      := 0;

     ZipFile            := TZipFile.Create;
     ZipFile.OnProgress := EventoOnProgress;

     mDia[1] := 'Domingo';
     mDia[2] := 'Segunda';
     mDia[3] := 'Terca';
     mDia[4] := 'Quarta';
     mDia[5] := 'Quinta';
     mDia[6] := 'Sexta';
     mDia[7] := 'Sabado';

     Dados.Empresas.SQL.Clear;
     Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
     Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
     Dados.Empresas.Open;

     // Servidor.
     Dados.Configuracao.Open;

     Servidor := Trim(Dados.ConfiguracaoNome_Servidor.AsString);
     pasta    := Trim(Copy(Dados.ConfiguracaoPasta_BACKUP.AsString, 4, 100)) +'\'+mDia[DayOfWeek(Date)]+'\';
     PreNome  := Trim(ApenasLetras(Trim(RemoveCaracter(' ', '_', Dados.EmpresasRazao_Social.AsString))));

     zip := PreNome+'_'+mDia[DayOfWeek(Date)]+'_'+RemoveCaracter('/', '-', Datetostr(Date))+'.rar';

     // Servidor local.
     if Dados.ConfiguracaoServidor_Local.Value = 0 then begin
        if NomeComputador <> Servidor then
           pasta := '\\'+Servidor+'\'+Pasta
        else
           pasta := 'c:\'+Pasta;
     end;

     // Maquina local.
     If Dados.ConfiguracaoServidor_Local.Value = 1 then
        pasta := 'C:\'+Pasta;

     // DataCenter.
     if Dados.ConfiguracaoServidor_Local.Value = 2 then begin
        with Dados do begin
             Empresas.SQL.CLear;
             Empresas.SQL.Add('UPDATE Empresas SET Envio_Backup = 1');
             Empresas.Execute;
             Empresas.SQL.CLear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE ISNULL(Desativada, 0) = 0 ORDER BY Razao_Social');
             Screen.cursor := crDefault;

             ProgressBar1.Position := 0;
             ProgressBar1.Max      := 100;
             for i := 1 to 100 do begin
                 ProgressBar1.Position := i;
                 lProgresso.Caption    := InttoStr(i)+'%';
                 sleep(50);
                 application.ProcessMessages;
             end;
             Showmessage('Backup enviado.');
             close;
             abort;
        end;
     end;

     i := FindFirst(pasta+'*.bak', faAnyFile, sr);
     while i = 0 do begin
           ListBox1.Items.Add(sr.Name);
           i := FindNext(sr);
     end;

     DeleteFile(destino+zip);
     for i := 0 to pred(listbox1.count) do begin
         BytesParaCompactar := BytesParaCompactar + NativeUInt(ObterTamanhoArquivo(pasta+ListBox1.Items[i]));
     end;

     try
        ZipFile.Open(pasta+zip, zmWrite);
        for i := 0 to pred(ListBox1.Count) do begin
            Listbox1.Selected[i] := true;
            ZipFile.Add(pasta+ListBox1.items[i]);
            BytesProcessados := BytesProcessados + ZipFile.FileInfo[Pred(ZipFile.FileCount)].UncompressedSize;
        end;
     finally
        ZipFile.Free;
     end;

     If not FileExists(pasta+zip) then begin
        MessageDlg('Erro!'+#13+#13+
                   'Não foi possivel Compactar os arquivos de BACKUP para envio no servidor '+Trim(Dados.ConfiguracaoNome_Servidor.AsString)+'!'+#13+#13+
                   'Rode o backup do banco de dados para poder enviar.'+#13+#13+
                   'Arquivo de BACKUP não sera enviado.', mtError, [mbOK], 0);
        Abort;
     End;

     // Passo 3 - Envia o arquivo compactado dos backups para o servidor da Cybersoft via FTP.
     IdFTP1.Disconnect;
     Menu_Principal.IdAntiFreeze1.Active := true;

     IdFTP1.Username := Dados.ConfiguracaoUsuario_FTP.AsString;
     IdFTP1.Password := Dados.ConfiguracaoSenha_FTP.AsString;
     IdFTP1.Host     := Dados.ConfiguracaoIP_Suporte.AsString;
     IdFTP1.Passive  := Dados.ConfiguracaoPassive_FTP.AsBoolean;
     IdFTP1.Port     := Dados.ConfiguracaoPorta_FTP.AsInteger;
     lArq.Caption    := pasta+zip;

     IdFTP1.Connect;

     if IdFTP1.Connected then begin
        if FileExists(pasta+zip) then begin
           try
               Destino             := 'Backup Clientes\'+prenome+'\'+zip;
               IdFTP1.TransferType := ftBinary;
               lTam.Caption        := FormatFloat('000,000', Trunc(FileSizeByName(pasta+zip)/1024))+' MB';
               ListBox1.ItemIndex  := ListBox1.Items.Add('Arquivo:'+pasta+zip);
               ListBox1.ItemIndex  := ListBox1.Items.Add('Destino:'+destino);

               if not FTPFileExists('Backup CLientes\'+PreNome) then begin
                  IdFTP1.MakeDir('Backup CLientes\'+PreNome);
               end;

               IdFTP1.Put(pasta+zip, destino);
           finally
               IdFTP1.Disconnect;
               DeleteFile(pasta+zip);
               ListBox1.ItemIndex := ListBox1.Items.Add('Upload do arquivo de backup '+ pasta+zip+' terminado!');
               Messagedlg('Envio do arquivo de backup '+ pasta+zip+' terminado!', mtInformation, [mbOK], 0);
           end;
        end;
     end;

     Menu_Principal.IdAntiFreeze1.Active := false;
     Dados.Configuracao.Close;
     Screen.Cursor := crDefault;
     Close;
end;

function TUtilitarios_EnviarDados.FTPFileExists(aFileName: string): Boolean;
begin
     try
        IdFTP1.List(nil, aFileName, False);
        Result := (IdFTP1.ListResult.Count > 0);
     except
        Result := False;
     end;
end;

procedure TUtilitarios_EnviarDados.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_EnviarDados.bCancelarClick(Sender: TObject);
begin
      AbortTransfer := true;
end;

procedure TUtilitarios_EnviarDados.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
      TransferrignData := true;
      AbortTransfer    := false;
      STime            := Now;
      If AWorkCountMax > 0 then
         ProgressBar1.Max := AWorkCountMax;
      AverageSpeed := 0;
end;

procedure TUtilitarios_EnviarDados.IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
      TransferrignData := false;
      AverageSpeed     := 0;
end;

procedure TUtilitarios_EnviarDados.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
Var
   mTotalTime    : TDateTime;
   S             : String;
   H, M, Sec, MS : Word;
   DLTime        : Double;
begin
      mTotalTime :=  Now - STime;
      DecodeTime(mTotalTime, H, M, Sec, MS);
      Sec    := Sec + M * 60 + H * 3600;
      DLTime := Sec + MS / 1000;
      
      If DLTime > 0 then
         AverageSpeed := (AWorkCount / 1024) / DLTime;

      If AverageSpeed > 0 then begin
         Sec := Trunc(((ProgressBar1.Max - AWorkCount) / 1024) / AverageSpeed);
         S   := PoeZero(2, (Sec div 3600))+':'+PoeZero(2, (Sec div 60) mod 60) + ':'+PoeZero(2, Sec mod 60);
      end else
         S := '';

      if (AverageSpeed/1024) >= 1 then
         lVel.Caption   := FormatFloat('0 MB/s', AverageSpeed/1024)
      else
         lVel.Caption   := FormatFloat('0 KB/s', AverageSpeed);

      lTempo.Caption := S+'   Tempo total: '+TimetoStr(mTotalTime);

      If AbortTransfer then begin
         IdFTP1.Abort;
         IdFTP1.Disconnect;
      End;   

      ProgressBar1.Position := AWorkCount;
      lProgresso.Caption    := InttoStr(Trunc((ProgressBar1.Position/ProgressBar1.Max)*100))+'%';
      AbortTransfer         := false;

      Application.ProcessMessages;
end;

procedure TUtilitarios_EnviarDados.EventoOnProgress(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
var
  PorcentagemArquivo: real;
begin
    Application.ProcessMessages;

    PorcentagemArquivo := (Position / Header.UncompressedSize) * 100;
    PorcentagemGeral   := ((BytesProcessados + Position) / BytesParaCompactar) * 100;

    // Exibe a porcentagem de compactação do arquivo
    Label1.Caption := FormatFloat('### %', (Position / Header.UncompressedSize) * 100);
    Label2.Caption := FormatFloat('### %', porcentagemGeral);

    // Atualiza as barras de progresso
    ProgressBar2.Position := Trunc(PorcentagemArquivo);
    ProgressBar3.Position := Trunc(PorcentagemGeral);
end;

function TUtilitarios_EnviarDados.ObterTamanhoArquivo(const NomeArquivo: string): integer;
var
  StreamArquivo: TFileStream;
begin
     StreamArquivo := TFileStream.Create(NomeArquivo, fmOpenRead);
     try
          result := StreamArquivo.Size;
     finally
          StreamArquivo.Free;
     end;
end;



end.
