unit frmSistema_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Controls , Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls , Vcl.ExtCtrls, DB , RXCtrls,
  RxLookup, Funcoes, IdFTP, Vcl.ComCtrls, Dateutils, IdTCPConnection, idftpcommon, IniFiles, vcl.Themes, vcl.Styles, system.UITypes, IdTCPClient, jpeg, IdBaseComponent, IdComponent,
  IdExplicitTLSClientServerBase, Datasnap.DBClient, Menus;

type
  TSistema_Entrada = class(TForm)
    Panel1: TPanel;
    cSenha: TEdit;
    cConfirma: TEdit;
    cUsuario: TComboBox;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    lVersao: TLabel;
    lAnoVersao: TLabel;
    IdFTP1: TIdFTP;
    Timer1: TTimer;
    lb1: TLabel;
    lServidor: TLabel;
    cServidor: TComboBox;
    lServ: TStaticText;
    Image2: TImage;
    bCancelar: TButton;
    bOK: TButton;
    procedure bCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Function  GetStateK (Key: integer): boolean;
    procedure cUsuarioChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cUsuarioExit(Sender: TObject);
    procedure ChecaInadimplencia;
    procedure Timer1Timer(Sender: TObject);
    procedure cServidorChange(Sender: TObject);
  private
    procedure LoadMenuToTreeView2;
    { Private declarations }
  public
    { Public declarations }
    mFecha : Boolean;
    OpMenu: TTreeview;   // REMOVER APÓS A ATUALIZAÇÃO DE TODOS OS CLIENTES "CADASTRO DE USUARIOS NOVO".
 end;

var
  Sistema_Entrada: TSistema_Entrada;

implementation

uses frmMenu_Principal, frmDados, frmDMContab, frmAtualiza_Sistema;

{$R *.dfm}

procedure TSistema_Entrada.bCancelarClick(Sender: TObject);
begin
      Menu_Principal.Close;
end;

procedure TSistema_Entrada.FormActivate(Sender: TObject);
Begin
     if fileExists('Banner_Entrada.jpg') then Image2.Picture.LoadFromFile('Banner_Entrada.jpg');
     lVersao.Caption    := 'Versão '+VersaoEXE(Application.ExeName);
     lb1.Caption        := '            »»» Cybersoft Sistemas ERP IMPORTA «««   SISTEMA DE COMÉRCIO EXTERIOR / CONTABILIDADE / FINANCEIRO / FISCAL / ESTOQUE / LOGÍSTICA --> Versão '+ VersaoEXE(Application.ExeName);
     lAnoVersao.Caption := InttoStr(YearOf(Date));

     If not RedePresente then begin
        MessageDlg('Sistemas não foi capaz de encontrar conexões de rede ativas.', mtError, [mbOK], 0);
     End;

     With Dados do begin
          mFecha := False;

          Screen.Cursor := crSQLWait;
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE ISNULL(Desativada, 0) = 0 ORDER BY Razao_Social');
          Empresas.Open;

          Usuarios.SQL.Clear;
          Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE (Ativo = 1) ORDER BY Nome');
          Usuarios.Open;
          
          While not Usuarios.Eof do begin
                cUsuario.Items.Add(UsuariosNome.Value);
                Usuarios.Next;
          End;
          Usuarios.Locate('Nome', cUsuario.Text, [loCaseInsensitive]);
          Screen.Cursor := crDefault;

//          with Dados, Configuracao do begin
//               Open;
//               if fieldbyname('Ativar_Skin').AsBoolean then begin
//                  TStyleManager.TrySetStyle(fieldbyname('Aparencia').asstring, false);
//               end;
//          end;
     End;
end;

procedure TSistema_Entrada.bOKClick(Sender: TObject);
Var
   mDias : Integer;
begin
     bOK.Enabled             := false;
     Menu_Principal.mEmpresa := Dados.EmpresasCodigo.Value;

     If Dados.Usuarios.Locate('Nome',cUsuario.Text,[loCaseInsensitive]) <> false then begin
        If Dados.UsuariosChave.Value = '' then begin
           If cSenha.Text = cConfirma.Text then begin
              Dados.Usuarios.Edit;
                    Dados.UsuariosChave_Cadastro.Value := False;
                    Dados.UsuariosChave.Value          := cSenha.Text;
              Dados.Usuarios.Post;
           End else begin
              MessageDlg('Senha invalida!'+#13+'Houve um erro na confirmação da sua nova senha, verifique e digite novamente.', mtInformation,[mbOk], 0);
              cSenha.SetFocus;
              cSenha.Clear;
              cConfirma.Clear;
              Screen.Cursor := crDefault;
              Exit;
           End;
        End;
        If Dados.UsuariosChave.Value = cSenha.Text then Begin
           mFecha := True;

           If Trim(cEmpresa.Text) = '' then begin
              MessageDlg('Empresa não cadastrada, Verifique se a empresa informado foi cadastrado com o administrador do sistema. ', mtInformation,[mbOk], 0);
              Screen.Cursor := crDefault;
              Abort;
           End;

           Dados.Banco_Empresas.Server         := Dados.Banco.Server;
           Dados.Banco_Empresas.Authentication := Dados.Banco.Authentication;
           Dados.Banco_Empresas.Database       := Dados.EmpresasBanco_Dados.AsString;
           Dados.Banco_Empresas.Username       := Dados.Banco.Username;
           Dados.Banco_Empresas.Password       := Dados.Banco.Password;

           Dados.Banco_Contabilidade.Server         := Dados.Banco.Server;
           Dados.Banco_Contabilidade.Authentication := Dados.Banco.Authentication;
           Dados.Banco_Contabilidade.Database       := Dados.EmpresasBanco_Contabilidade.AsString;
           Dados.Banco_Contabilidade.Username       := Dados.Banco.Username;
           Dados.Banco_Contabilidade.Password       := Dados.Banco.Password;

           Menu_Principal.Amb_Producao     := Dados.EmpresasAmbiente.Value;
           Menu_Principal.mUsuarioCodigo   := Dados.UsuariosMatricula.Value;
           Menu_Principal.mUsuarioNome     := Dados.UsuariosNome.Value;
           Menu_Principal.mUsuarioNivel    := Dados.UsuariosNivel.Value;
           Menu_Principal.lEmpresa.Caption := Dados.EmpresasRazao_Social.Value;

           If Dados.EmpresasMatriz_Filial.AsBoolean = false then
              Menu_Principal.lFilial.Caption := 'FILIAL '+Dados.EmpresasNumero_Filial.AsString + ' (' + Dados.EmpresasEstado.AsString+')'
           else
              Menu_Principal.lFilial.Caption := 'MATRIZ (' + Dados.EmpresasEstado.AsString+')';

           If FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
              Menu_Principal.cFoto.Picture.LoadFromFile(Dados.Empresas.FieldByName('Logo').AsString);
           End;

           If Trim(Dados.EmpresasMascara_PlanoContas.AsString) <> '' then
              dmContab.PlanoContasConta.EditMask := Dados.EmpresasMascara_PlanoContas.Value+';0; '
           else
              dmContab.PlanoContasConta.EditMask := '';

           // Verificando o vencimento do certificado digital se informada a data de vencimento.
           if Trim(RemoveCaracter('/', '',Dados.EmpresasVencimento_Certificado.AsString)) <> '' then begin
              mDias := StrtoInt(DifDias(Date, Dados.EmpresasVencimento_Certificado.AsDateTime));
              if (mDias < 30) and (mDias > 0) then begin
                 ShowMessage('Atenção!'+#13+#13+
                             'O certificado digital da '+Dados.EmpresasRazao_Social.AsString + ' esta vencendo em '+PoeZero(2, (mDias))+' dias.'+#13+#13+
                             'Com um certificado digital vencido não é possivel enviar nota fiscal eletrônica.'+#13+#13+
                             'Providencie um novo certificado digital.');
              end;
              if (mDias < 0) then begin
                 ShowMessage('Atenção!'+#13+#13+
                             'O certificado digital da '+Dados.EmpresasRazao_Social.AsString + ' esta vencido a '+PoeZero(2, (mDias*-1))+' dias.'+#13+#13+
                             'Com um certificado digital vencido não é possivel enviar nota fiscal eletrônica.'+#13+#13+
                             'Providencie um novo certificado digital.');
              end;
           end;

           Close;

           // Verifica se a mensalidade do cliente esta paga, não estando desabilita o envio de NF-E, estando OK verifica atualização do sistema.
           If (NomeComputador <> 'PROGRAMACAO') and (NomeComputador <> 'NOTE-DED') then begin
              Try
                 ChecaInadimplencia;
              Except
              End;
           End;
        End Else Begin
           If cConfirma.Enabled = False then begin
              MessageDlg('Senha invalida!'+#13+'Se você esqueceu a sua senha entre em contato com o responsavel pelo sistema.', mtInformation,[mbOk], 0);
              cSenha.Clear;
              cSenha.SetFocus;
              Screen.Cursor := crDefault;
              Abort;
           end else begin
              MessageDlg('Confirmação!'+#13+'Você está entrando no sistema pela primeira vez.'+#13+'É necessário informar qual sera a sua senha e confirma-la no campo abaixo.'+#13+'Qualquer duvida consulte o administrador do sistema!', mtInformation,[mbOk], 0);
              cConfirma.SetFocus;
              Screen.Cursor := crDefault;
              Abort;
           End;
        End;
     End else begin
        MessageDlg('Usúario não encontrado, Verifique se o usúario informado foi cadastrado com o administrador do sistema. ', mtInformation,[mbOk], 0);
        cUsuario.SetFocus;
        Screen.Cursor := crDefault;
        Abort;
     End;
     Screen.Cursor := crDefault;
end;

procedure TSistema_Entrada.FormClose(Sender: TObject;var Action: TCloseAction);
var
   i: integer;
   Item: TMenuItem;
begin
     //**********************************[ ESSE BLOCO E PARA A MUDANÇA NO SISTEMA DE PERMISSÕES DO USUARIO, "REMOVER DEPOIS QUE TODOS OS CLIENTES ATUALIZAREM O SISTEMA." ]********************************
     with Dados do begin
          with usuarios do begin 
               sql.clear;
               sql.Add('select * from Usuarios where Nome = :pNome and Chave = :pChave');
               parambyname('pNome').value  := cUsuario.Text;
               parambyname('pChave').value := cSenha.Text;
               open;
          end;
          with Permissoes do begin
               sql.clear;
               sql.Add('select * from UsuariosPermissoes where Matricula = :pMat');
               parambyname('pMat').value := UsuariosMatricula.Value;
               open;
          end;     
          if Permissoes.recordcount = 0 then begin
             LoadMenuToTreeView2;
             for i := 0 to pred(OpMenu.Items.Count) do begin
                 try
                    opMenu.Items[i].ImageIndex := iif(Usuarios.Fieldbyname(OpMenu.Items[i].Text).AsBoolean, 1, 0);
                 except

                 end;
             end;
             with Permissoes do begin
                  sql.clear;
                  sql.add('select * from UsuariosPermissoes where Matricula = :pMat');
                  parambyname('pMat').value := UsuariosMatricula.Value;
                  open;
                  for i := 0 to pred(OpMenu.Items.Count) do begin
                      Append;
                            FieldByName('Matricula').Value := Usuarios.FieldByName('Matricula').Value;
                            FieldByName('Indice').Value    := i;
                            FieldByName('Nome').Value      := opMenu.Items[i].Text;
                            FieldByName('Permitido').Value := iif(opMenu.Items[i].ImageIndex = 0, false, true);
                            FieldByName('Descricao').Value := null;
                      Post;
                  end;
             end;
             with Permissoes do begin
                  sql.clear;
                  sql.Add('update UsuariosPermissoes set Permitido = 1 where Matricula = :pMat and Nome in(''mnCadastros'',''mnFinanceiro'',''mnProcesso'',''mnNotaFiscal'',''mnFiscal'',''mnImpressao'',''Financeiros1'')');
                  parambyname('pMat').value := UsuariosMatricula.Value;
                  execute;
                  sql.clear;
                  sql.Add('select * from UsuariosPermissoes where Matricula = :pMat');
                  parambyname('pMat').value := UsuariosMatricula.Value;
                  close;
             end;     
          end;
     end;
     //***********************************************************************************************************************************************\\

     with Dados do begin
          if UsuariosMatricula.Value <> 'ADM01' then begin
             with Dados, Permissoes do begin
                  sql.clear;
                  sql.Add('select * from UsuariosPermissoes where Matricula = :pMat');
                  parambyname('pMat').value := UsuariosMatricula.Value;
                  open;
                  first;
                  while not eof do begin
                        if pos('opSair', fieldbyname('Nome').AsString) = 0 then begin
                           Item := Menu_Principal.FindComponent(FieldByName('Nome').AsString) as TMenuItem;
                           if Assigned(Item) then begin
                              Item.Enabled := FieldByName('Permitido').asboolean;
                           end;
                        end;
                        next;
                  end;
             end;
          end;
     end;

     Timer1.Enabled := false;
     If Not mFecha Then
        Action := caNone
     Else
        Action := caFree;

     LimpaMemoria;
     Sistema_Entrada.Release;
     Sistema_Entrada := nil;
end;

// **************************************************************| PROVISÓRIA |***********************************************************************************
// APOS A ATUALIZAÇÃO DE TODOS OS CLIENTES REMOVER ESTA PROCEDURE.
procedure TSistema_Entrada.LoadMenuToTreeView2;
         procedure AddMenuItemsToNode(MenuItem: TMenuItem; ParentNode: TTreeNode);
         var
            i: Integer;
            Node: TTreeNode;
         begin
              if MenuItem.Caption <> '-' then begin
                 Node      := OpMenu.Items.AddChild(ParentNode, MenuItem.Name);
                 Node.Data := Pointer(MenuItem); // opcional, caso queira associar o MenuItem original
                 for i := 0 to pred(MenuItem.Count) do begin
                     AddMenuItemsToNode(MenuItem.Items[i], Node);
                 end;
              end;
         end;
var
  i: Integer;
begin
     OpMenu := TTreeview.Create(self);
     with OpMenu do begin
          Parent := Menu_Principal;
          visible := false;
          //BringToFront;
          //Top := 100;
          //Left := 100;
          //Height := 800;
          //Width := 500;
          //Font.Name := 'Courier New';
          //Font.Size := 9;
          Images := Dados.ImageList2;
          Items.BeginUpdate;
          try
              Items.clear;
              for i := 0 to pred(Menu_Principal.Menu.Items.Count) do begin
                  AddMenuItemsToNode(Menu_Principal.Menu.Items[i], nil);
              end;    
          finally
              Items.EndUpdate;
          end;
          if Items.Count > 0 then begin
             FullExpand;
             Selected := OpMenu.Items[0];
          end;
     end;      
end;
// ***************************************************************************************************************************************************************

Function TSistema_Entrada.GetStateK(Key: integer): boolean;
begin
     Result := Odd(GetKeyState (Key));
end;

procedure TSistema_Entrada.cUsuarioChange(Sender: TObject);
begin
      cEmpresa.Enabled := Trim(cUsuario.Text) <> '';
      cSenha.Enabled   := cEmpresa.KeyValue <> 0;
      bOK.Enabled      := cEmpresa.KeyValue <> 0;

      Dados.Usuarios.Locate('Nome',cUsuario.Text,[loCaseInsensitive]);
      If Dados.UsuariosChave.Value = '' then begin
         Sistema_Entrada.Hint     := 'Atenção!'+ #13+'É a primeira vez que você esta entrando no sistema.'+ #13 +'Você precisa informar qual será a sua senha de acesso e confirma-la no campo "Confirmação".';
         Sistema_Entrada.ShowHint := True;
      End;
      cConfirma.Enabled   := Dados.UsuariosChave_Cadastro.Value;
      StaticText4.Enabled := Dados.UsuariosChave_Cadastro.Value;
end;

procedure TSistema_Entrada.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If GetStateK (VK_LMENU) And (Key = VK_F4) Then
         mfecha := False;
end;

procedure TSistema_Entrada.cUsuarioExit(Sender: TObject);
begin
      with Dados do begin
           If cUsuario.Text <> 'ADMINISTRADOR' then begin
              with Empresas do begin
                   sql.clear;
                   sql.add('select * from Empresas');
                   sql.add('where isnull(Desativada, 0) = 0');
                   sql.add('and Codigo in(select distinct Empresa from UsuariosEmpresas where Matricula = :pMatricula)');
                   parambyname('pMatricula').AsString := UsuariosMatricula.AsString;
                   sql.add('order by cnpj');
                   open;
                   Enabled        := Trim(cUsuario.Text) <> '';
                   cSenha.Enabled := cEmpresa.KeyValue <> 0;
                   bOK.Enabled    := cEmpresa.KeyValue <> 0;
              end;
           end else begin
              with Empresas do begin
                   close;
                   sql.Clear;
                   sql.Add('select * from Empresas where isnull(Desativada, 0) = 0 order by CNPJ');
                   open;
                   cEmpresa.Enabled := true;
                   cSenha.Enabled   := true;
                   bOK.Enabled      := true;
              end;
           end;
          cSenha.SetFocus;
      end;
end;

// Verifica se o pagamento da mensalidade foi feito pelo cliente.
procedure TSistema_Entrada.ChecaInadimplencia;
Var
    mCNPJ : WideString;
    mTexto: TextFile;
    mLinha,
    mPath : String;
begin
     Screen.Cursor := crHourGlass;

     Dados.Configuracao.Open;

     // Executa o download do arquivo de "Inadimplencia.txt" para saber se a empresa esta em dia com o pagamento.
     Menu_Principal.IdAntiFreeze1.Active := true;

     IdFtp1.Username := 'cybersoft_importa';
     IdFtp1.Password := 'cybersoft@123';
     IdFtp1.Host     := Menu_Principal.mIPSuporte;
     IdFtp1.Passive  := Dados.ConfiguracaoPassive_FTP.AsBoolean;
     IdFTP1.Port     := Dados.ConfiguracaoPorta_FTP.AsInteger;

     Menu_Principal.IdAntiFreeze1.Active := true;
     mpath := ExtractFilePath(Application.ExeName);

     If Internet then begin
        Try
            IdFtp1.Connect();
            IdFtp1.TransferType := ftBinary;
            IdFtp1.Get('Inadimplencia.txt'      , mPath+'Inadimplencia.txt'      , true, false); // Arquivo de inadimplencia.
            IdFtp1.Get('Clientes_Encerrados.txt', mPath+'Clientes_Encerrados.txt', true, false); // Arquivo de clientes encerrados
            IdFtp1.Get('versao.txt'             , mPath+'versao.txt'             , true, false); // Arquivo de versão.

            Menu_Principal.Icones.GetBitmap(113, Menu_Principal.ImagemFTP.Picture.Bitmap);
            IdFtp1.Disconnect;
            Menu_Principal.IdAntiFreeze1.Active := false;
        Except
            Menu_Principal.Icones.GetBitmap(114, Menu_Principal.ImagemFTP.Picture.Bitmap);
            Menu_Principal.IdAntiFreeze1.Active := false;
            Screen.Cursor := crDefault;
            Abort;
        End;
     End;

     Menu_Principal.lInternet.Visible := not Internet;

     // Verifica se o CNPJ da empresa esta no arquivo texto "Inadimplencia.txt".
     Dados.Empresas.SQL.Clear;
     Dados.Empresas.SQL.Add('UPDATE Empresas SET Pagamento = 1');
     Dados.Empresas.Execute;

     if FileExists(mPath +'Inadimplencia.txt') then begin
        AssignFile(mTexto, 'Inadimplencia.txt');
        Reset(mTexto);

        mCNPJ := '';
        while not Eof (mTexto) do begin
              ReadLn(mTexto, mLinha);
              if Trim(mLinha) <> '' then begin
                 mCNPJ := mCNPJ + QuotedStr(mLinha)+',';
              end;
        end;
        CloseFile(mTexto);

        mCNPJ := Copy(mCNPJ,1, Length(mCNPJ)-1);

        If Trim(mCNPJ) <> '' then begin
           Dados.Empresas.SQL.Clear;
           //Dados.Empresas.SQL.Add('UPDATE Empresas SET Pagamento = 0 WHERE CNPJ IN('+mCNPJ+')');
           Dados.Empresas.SQL.Add('UPDATE Empresas SET Pagamento  = 0');
           Dados.Empresas.SQL.Add('                   ,Desativada = 1');
           Dados.Empresas.SQL.Add('WHERE CNPJ IN('+mCNPJ+')');
           Dados.Empresas.Execute;
        End;
        Dados.Empresas.SQL.Clear;
        Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
        Dados.Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
        Dados.Empresas.Open;

        Menu_Principal.mnNotaFiscal.Enabled := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNF_Entrada.Enabled  := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNF_Saida.Enabled    := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNF_Outros.Enabled   := Dados.EmpresasPagamento.AsBoolean;

        DeleteFile(mPath+'Inadimplencia.txt');
     End;

     // Verifica se o CNPJ da empresa esta no arquivo texto "Clientes_Encerrados.txt" e desativa atualizações caso esteja.
     If FileExists('Clientes_Encerrados.txt') then begin
        AssignFile(mTexto, 'Clientes_Encerrados.txt');
        Reset(mTexto);

        While not Eof (mTexto) do begin
              ReadLn(mTexto, mLinha);
              If Dados.EmpresasCNPJ.Value = mLinha then begin
                 Menu_Principal.mnAtualizar_Sistema.Enabled := false;
              End;
        End;
        CloseFile(mTexto);

        DeleteFile(mPath+'Clientes_Encerrados.txt');
     End;

     // Verifica se há atualização disponivel.
     If Menu_Principal.mnAtualizar_Sistema.Enabled then begin
        If Dados.ConfiguracaoAtualizar_Sistema.AsBoolean then begin
           If Internet then begin
              If FileExists(mPath+'versao.txt') then begin
                 AssignFile(mTexto, 'versao.txt');
                 Reset(mTexto);

                 While not Eof (mTexto) do begin
                       ReadLn(mTexto, mLinha);
                       If Trim(mLinha) > VersaoEXE(Application.ExeName) then begin
                          If MessageDlg('Atenção!'+#13+#13+'Há uma atualização do sistema disponível.'+#13+#13+'Deseja Atualizar agora?', mtConfirmation, [mbYES, mbNO], 0) = mrYes then begin
                             Atualiza_Sistema := TAtualiza_Sistema.Create(Self);
                             Atualiza_Sistema.Caption     := Caption;
                             Atualiza_Sistema.mAutomatico := true;
                             Atualiza_Sistema.ShowModal;
                          End;
                       End;
                 End;
              End;
           End;
        End;
     End;
     
     DeleteFile(mPath+'versao.txt');
     Menu_Principal.IdAntiFreeze1.Active := false;
     Screen.Cursor := crDefault;
end;

procedure TSistema_Entrada.Timer1Timer(Sender: TObject);
var
  Texto:  String;
begin
     Texto := lb1.Caption;
     lb1.Caption := Copy(Texto,2,Length(Texto)+2)+Texto[1];
end;

procedure TSistema_Entrada.cServidorChange(Sender: TObject);
var
   aServidor: TIniFile;
begin
      //aServidor := TIniFile.Create(RemoveCaracter('IMPORTA.EXE','',UpperCase(Application.ExeName))+'ImportaServidor.ini');
      aServidor := TIniFile.Create(ExtractFilePath(UpperCase(Application.ExeName))+'ImportaServidor.ini');
      aServidor.WriteString( 'SERVIDOR', 'Nome', '');
      aServidor.Free;
      With Dados do begin
           // Verifica a conexão com o banco de dados.
           Empresas.Close;;
           Usuarios.Close;
           Banco.Disconnect;
           Banco.Server := cServidor.Text;
           Try
              Banco.Connected := True;
           Except
              ShowMessage('Atenção!'+#13+#13+'O sistema não pode ser aberto porque não foi capaz de abrir o banco de dados '+Banco.Database+#13+'localizado em '+Banco.Server+ #13#13+'Contacte o administrador do sistema.');
              Application.Terminate;
           End;
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE ISNULL(Desativada, 0) = 0 ORDER BY Razao_Social');
           Empresas.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE (Ativo = 1) ORDER BY Nome');
           Usuarios.Open;
      End;
end;



end.


