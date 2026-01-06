unit frmEstoque_Minimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, IniFiles, Funcoes,
  IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, IdTCPConnection,
  IdSMTP, IdAttachmentFile, ppBands, ppParameter, ppProd, ppReport,
  ppMemo, ppCtrls, ppDBPipe, ppVar, ppTypes,
  IdTCPClient,
  IdExplicitTLSClientServerBase, ppDB, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, IdIOHandlerSocket, IdBaseComponent, IdComponent, IdMessageClient, IdSMTPBase, MemDS;

type
  TDBGridDescendant = class(TDBGrid);
  TEstoque_Minimo = class(TForm)
    DBGrid1: TDBGrid;
    tDisponivel: TMSQuery;
    dstDisponivel: TDataSource;
    tDisponivelCodigo: TIntegerField;
    tDisponivelNCM: TStringField;
    tDisponivelDescricao: TStringField;
    tDisponivelEstoque_Minimo: TFloatField;
    tDisponivelDisponivel: TFloatField;
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    StaticText12: TStaticText;
    cEmail: TEdit;
    cCC: TEdit;
    StaticText1: TStaticText;
    bEmail: TButton;
    StaticText2: TStaticText;
    cAssunto: TEdit;
    SMTP: TIdSMTP;
    EmailMSG: TIdMessage;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;

    rPDF: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    pEmpresas: TppDBPipeline;
    pDisponivel: TppDBPipeline;
    ppDBImage2: TppDBImage;
    lTitulo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText14: TppDBText;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine1: TppLine;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure bEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Estoque_Minimo: TEstoque_Minimo;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TEstoque_Minimo.FormActivate(Sender: TObject);
Var
   aIni : TINIFile;
begin
     With Dados do begin
          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos WHERE desativado <> 1 ORDER BY Descricao_Reduzida');
          Produtos.Open;
          
          tDisponivel.SQL.Clear;
          tDisponivel.SQL.Add('SELECT Codigo,');
          tDisponivel.SQL.Add('       Codigo_Fabricante,');
          tDisponivel.SQL.Add('       GTIN,');
          tDisponivel.SQL.Add('       NCM,');
          tDisponivel.SQL.Add('       REPLACE( Descricao, ''<{''+CAST(Codigo AS VARCHAR(15))+''}>'', '''') AS Descricao,');
          tDisponivel.SQL.Add('       Estoque_Minimo,');
          tDisponivel.SQL.Add('       CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens      WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
          tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1)), 0) +');
          tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = Codigo) ), 0) -');
          tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
          tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1)  ), 0)) -');
          tDisponivel.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = Codigo) ), 0) AS DECIMAL(14,3))');
          tDisponivel.SQL.Add('       AS Disponivel');
          tDisponivel.SQL.Add('INTO   #TEMP');
          tDisponivel.SQL.Add('FROM   Produtos');
          tDisponivel.SQL.Add('WHERE  Desativado <> 1 AND Estoque_Minimo > 0');
          tDisponivel.SQL.Add('SELECT * FROM #TEMP');
          tDisponivel.SQL.Add('WHERE (Disponivel <= Estoque_Minimo)');
          tDisponivel.SQL.Add('DROP TABLE #TEMP');
          //tDisponivel.SQL.SavetoFile('c:\temp\Estoque_Minimo.SQL');
          tDisponivel.Open;

          bEmail.Enabled := tDisponivel.RecordCount > 0;
    End;

    aINI          := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
    cEmail.Text   := aINI.ReadString('ESTOQUE_MINIMO', 'Email'  , '');
    cCC.Text      := aINI.ReadString('ESTOQUE_MINIMO', 'CC'     , '');
    cAssunto.Text := aINI.ReadString('ESTOQUE_MINIMO', 'Assunto', 'RELAÇÃO DE PRODUTOS QUE ATINGIRAM O ESTOQUE MÍNIMO');
    aIni.Free;
end;

procedure TEstoque_Minimo.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TEstoque_Minimo.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TEstoque_Minimo.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aIni: TINIFile;
begin
     aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     aINI.WriteString('ESTOQUE_MINIMO', 'Email'  , cEmail.Text);
     aINI.WriteString('ESTOQUE_MINIMO', 'CC'     , cCC.Text);
     aINI.WriteString('ESTOQUE_MINIMO', 'Assunto', cAssunto.Text);
     aINI.Free;

     Estoque_Minimo.Release;
     Estoque_Minimo := nil;
end;

procedure TEstoque_Minimo.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      With HintInfo do begin
           If HintControl is TDBGrid then begin
              With TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      Try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 Produtos.Locate('Codigo', tDisponivel.FieldByName('Codigo').Value, [loCaseInsensitive]);

                                 mTexto := ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                 mTam   := 1;
                                 For i := 1 to Length(mTexto) do begin
                                     HintStr := HintStr + Copy(mTexto, i, 1);
                                     Inc(mTam);
                                     If mTam = 50 then begin
                                        HintStr := HintStr + #13;
                                        mtam    := 1;
                                     End;
                                 End;
                            End;
                         End else
                            HintStr := '\';
                      Finally
                         DataLink.ActiveRecord := CurPos
                      End;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   Except
                      CanShow := False
                   End;
              End;
           End;
      End;
end;

procedure TEstoque_Minimo.bEmailClick(Sender: TObject);
Var
    //mMensagem :Widestring;
    mEnviar   :Boolean;
begin
     Screen.Cursor := crAppStart;

     Menu_Principal.IdAntiFreeze1.Active := true;
     mEnviar          := true;
     //GifEmail.Animate := true;

     With Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;

          If (EmpresasEmail_Porta.AsInteger <= 0) then begin
             Showmessage('E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
             mEnviar := false;
          End;
          If (Trim(EmpresasEmail_SMTP.AsString) = '') then begin
             Showmessage('E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
             mEnviar := false;
          End;
          If (Trim(EmpresasEmail_ID.AsString) = '') then begin
             Showmessage('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
             mEnviar := false;
          End;
          If (Trim(EmpresasEmail_Senha.AsString) = '') then begin
             Showmessage('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
             mEnviar := false;
          End;

          If mEnviar = true then begin
             // Configuração do SMTP.
             SMTP.Host     := EmpresasEmail_SMTP.AsString;
             SMTP.Port     := EmpresasEmail_Porta.AsInteger;
             SMTP.UserName := EmpresasEmail_ID.AsString;
             SMTP.Password := EmpresasEmail_Senha.AsString;

             // SSLOptions Method.
             If EmpresasEmail_Metodo.AsString = 'sslvSSLv2' then
                SSLSocket.SSLOptions.Method := sslvSSLv2;
             If EmpresasEmail_Metodo.AsString= 'sslvSSLv23' then
                SSLSocket.SSLOptions.Method := sslvSSLv23;
             If EmpresasEmail_Metodo.AsString = 'sslvSSLv3' then
                SSLSocket.SSLOptions.Method := sslvSSLv3;
             If EmpresasEmail_Metodo.AsString = 'sslvTLSv1' then
                SSLSocket.SSLOptions.Method := sslvTLSv1;

             // Requer Autenticação.
             If EmpresasEmail_Autenticacao.AsBoolean then
                SMTP.AuthType := satDefault
             else
                SMTP.AuthType := satNone;

             // Conexao Segura SSL
             If Dados.EmpresasEmail_SSL.AsBoolean then
                SMTP.IOHandler := SSLSocket
             else
                SMTP.IOHandler := nil;

             // Montando a Mensagem
             EmailMSG.MessageParts.Clear;
             EmailMSG.Clear;
             EmailMSG.Body.Clear;
             
             EmailMSG.From.Address              := EmpresasEmail.AsString;
             EmailMSG.Recipients.EMailAddresses := cEmail.Text;
             EmailMSG.ccList.EMailAddresses     := cCC.Text;
             EmailMSG.Subject                   := cAssunto.Text;

             rPDF.Reset;
             rPDF.AllowPrintToFile := True;
             rPDF.DeviceType       := dtPDF;
             rPDF.TextFileName     := ExtractFilePath(Application.ExeName)+'Estoque_Minimo.pdf';
             rPDF.ShowPrintDialog  := False;
             rPDF.Print;
             rPDF.FreeOnRelease;
             rPDF.Reset;

             TIdAttachmentFile.create(EMailMSG.MessageParts, ExtractFilePath(Application.ExeName)+'Estoque_Minimo.pdf');

             // Enviar email
             Try
                SMTP.Connect;
                //If EmpresasEmail_Autenticacao.AsBoolean then SMTP.Authenticate;
                SMTP.Authenticate;
                SMTP.Send(EMailMSG);
                ShowMessage('Email enviado com sucesso!');
             Except
                 on E:Exception do begin
                    ShowMessage('ERROR!'+#13+'E-Mail não enviado, Verifique as configurações do E-Mail no <Cadastro da Empresa>.'+#13+E.Message);
                 End;
             End;
          End;
     End;

     If SMTP.Connected then SMTP.Disconnect;

     Menu_Principal.IdAntiFreeze1.Active := false;

     //GifEmail.Animate := false;
     Screen.Cursor := crDefault;
end;


end.
