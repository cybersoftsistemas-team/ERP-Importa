unit frmFinanceiro_GerarBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, Mask, RxLookup, RXCtrls,
  Vcl.ExtCtrls, DBCtrls, Buttons, Funcoes, Vcl.ComCtrls, ppDB, ppParameter, ppCtrls, ppBarCod, ppPrnabl,  ppClass, ppCache, ppBands, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  myChkBox, MaskUtils, ppTypes, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdAttachmentFile, DateUtils, ClipBrd, IdPOP3, IdText, ShellApi, IdAttachment, RxToolEdit;

type
  TFinanceiro_GerarBoletos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bDesmarcar: TButton;
    bSelecionar: TButton;
    bGerar: TButton;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    tProcessos: TMSQuery;
    tBeneficiarios: TMSQuery;
    dstBeneficiario: TDataSource;
    tRegistro: TMSQuery;
    tBeneficiariosBeneficiario_Codigo: TIntegerField;
    tBeneficiariosBeneficiario_Nome: TStringField;
    tTitulosNumero: TLargeintField;
    tTitulosBeneficiario: TStringField;
    tTitulosClassificacao: TStringField;
    tTitulosData_Vencimento: TDateTimeField;
    tTitulosProcesso: TStringField;
    tTitulosValor_Documento: TCurrencyField;
    tTitulosValor_Parcela: TCurrencyField;
    tTitulosValor_Operacao: TCurrencyField;
    tTitulosNumero_Documento: TStringField;
    tTitulosData_Documento: TDateTimeField;
    tTitulosBoleto_Numero: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grade: TRxDBGrid;
    Grade2: TRxDBGrid;
    tBoletos: TMSQuery;
    dstBoletos: TDataSource;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    cProcesso: TComboBox;
    StaticText2: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cData: TDateEdit;
    StaticText6: TStaticText;
    cNumDoc: TEdit;
    GroupBox2: TGroupBox;
    StaticText8: TStaticText;
    cBeneficiario2: TRxDBLookupCombo;
    StaticText9: TStaticText;
    cData2: TDateEdit;
    StaticText10: TStaticText;
    cNumeroDoc2: TEdit;
    bLimpaBoletos: TSpeedButton;
    bFiltraBoletos: TSpeedButton;
    bImprimir: TButton;
    pEmpresas: TppDBPipeline;
    pBoleto: TppDBPipeline;
    rBoleto: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine8: TppLine;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel14: TppLabel;
    ppLine10: TppLine;
    ppLabel15: TppLabel;
    ppLine11: TppLine;
    ppLabel16: TppLabel;
    ppLine12: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine13: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine15: TppLine;
    ppLabel24: TppLabel;
    ppLine14: TppLine;
    ppLabel25: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel26: TppLabel;
    ppLine18: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine19: TppLine;
    lEndereco2: TppLabel;
    ppLabel36: TppLabel;
    ppLine20: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel5: TppLabel;
    lProtestar: TppLabel;
    lAbatimento: TppLabel;
    lJuros: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    lEndereco1: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel31: TppLabel;
    ppLine26: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine27: TppLine;
    ppLabel35: TppLabel;
    ppLabel40: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel41: TppLabel;
    ppLine30: TppLine;
    ppLabel42: TppLabel;
    ppLine31: TppLine;
    ppLabel43: TppLabel;
    ppLine32: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine33: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine34: TppLine;
    ppLabel51: TppLabel;
    ppLine35: TppLine;
    ppLabel52: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel53: TppLabel;
    ppLine38: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine39: TppLine;
    lEndereco4: TppLabel;
    ppLabel59: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel64: TppLabel;
    lProtestar2: TppLabel;
    lAbatimento2: TppLabel;
    lJuros2: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    lEndereco3: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel1: TppLabel;
    pLogo1: TppImage;
    pLogo2: TppImage;
    ppParameterList1: TppParameterList;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText37: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    lEspecieDOC: TppLabel;
    lEspecieDOC2: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    bPDF: TButton;
    tPDF: TMSQuery;
    dstPDF: TDataSource;
    bFiltro: TSpeedButton;
    bLimpaFiltro: TSpeedButton;
    bPesquisar: TSpeedButton;
    bEmail: TButton;
    EmailMSG: TIdMessage;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    Panel2: TPanel;

    StaticText12: TStaticText;
    cEmail: TEdit;
    Progresso: TProgressBar;
    lProgresso: TLabel;
    SMTP: TIdSMTP;
    bCancelar: TButton;
    tBoletosRegistro: TIntegerField;
    tBoletosAceite_Documento: TStringField;
    tBoletosEmissao_Boleto: TSmallintField;
    tBoletosBanco: TSmallintField;
    tBoletosCarteira: TStringField;
    tBoletosCodigo_Cedente: TStringField;
    tBoletosEspecie_Documento: TStringField;
    tBoletosNosso_Numero: TStringField;
    tBoletosNumero_Documento: TStringField;
    tBoletosSacado: TSmallintField;
    tBoletosLocal_Pagamento: TStringField;
    tBoletosData_Documento: TDateTimeField;
    tBoletosData_Credito: TDateTimeField;
    tBoletosData_Abatimento: TDateTimeField;
    tBoletosData_Desconto: TDateTimeField;
    tBoletosData_Juros: TDateTimeField;
    tBoletosData_Ocorrencia: TDateTimeField;
    tBoletosData_Processamento: TDateTimeField;
    tBoletosData_Protesto: TDateTimeField;
    tBoletosData_Vencimento: TDateTimeField;
    tBoletosData_Baixa: TDateTimeField;
    tBoletosValor_Documento: TCurrencyField;
    tBoletosValor_Abatimento: TCurrencyField;
    tBoletosValor_Desconto: TCurrencyField;
    tBoletosValor_Juros: TCurrencyField;
    tBoletosInstrucoes: TMemoField;
    tBoletosLinha_Digitavel: TStringField;
    tBoletosCodigo_Barra: TStringField;
    tBoletosFinanceiro_Numero: TIntegerField;
    tBoletosBanco_Numero: TSmallintField;
    tBoletosNumero_Remessa: TIntegerField;
    tBoletosData_Emissao: TDateTimeField;
    tBoletosData_Retorno: TDateTimeField;
    tBoletosRetorno: TBooleanField;
    tBoletosPercentual_Juros: TFloatField;
    tBoletosCancelado: TBooleanField;
    tBoletosBeneficiario: TStringField;
    tBoletosNome: TStringField;
    tBoletosImagem: TSmallintField;
    tBoletosCliente_Rua: TStringField;
    tBoletosCliente_Numero: TStringField;
    tBoletosCliente_Complemento: TStringField;
    tBoletosCliente_Bairro: TStringField;
    tBoletosCliente_Municipio: TStringField;
    tBoletosCliente_CEP: TStringField;
    tBoletosCliente_Estado: TStringField;
    tBoletosCliente_CNPJ: TStringField;
    tBoletosCliente_Email: TStringField;
    tBoletosValor_MultaVencimento: TCurrencyField;
    tBoletosValor_JurosDia: TCurrencyField;
    lContato1: TppLabel;
    cNomeContato1: TppDBText;
    lEnderecoContato1: TppLabel;
    lEnderecoContato2: TppLabel;
    lContato2: TppLabel;
    cNomeContato2: TppDBText;
    lEnderecoContato3: TppLabel;
    lEnderecoContato4: TppLabel;
    tBoletosPercentual_Multa: TCurrencyField;
    tBoletosData_Remessa: TDateTimeField;
    tBoletosCliente_EmailCopia: TStringField;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Filtra(Coluna:Integer; Ordem: Boolean);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bSelecionarClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeCellClick(Column: TColumn);
    procedure bPesquisarClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure bLimpaBoletosClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bFiltraBoletosClick(Sender: TObject);
    procedure rBoletoBeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bPDFClick(Sender: TObject);
    procedure Grade2KeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Grade2CellClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure bEmailClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure Grade2DrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tBoletosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    mUltimoClick  : String;
    mContador     : integer;
    mContadorFinal: integer;
    mSelecionou   : boolean;
    mPasta        : WideString;
    mPastaBoleto  : WideString;
  end;

var
  Financeiro_GerarBoletos: TFinanceiro_GerarBoletos;

implementation

uses frmDados, frmMenu_Principal, frmFinanceiro_Pesquisa,frmFinanceiro_BoletoLote, frmJanela_Processamento;

{$R *.dfm}

procedure TFinanceiro_GerarBoletos.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFinanceiro_GerarBoletos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil); 
     Financeiro_GerarBoletos.Release;
     Financeiro_GerarBoletos := nil;
end;

procedure TFinanceiro_GerarBoletos.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_GerarBoletos.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados do begin
          tProcessos.SQL.Clear;
          tProcessos.SQL.Add('SELECT DISTINCT Processo FROM PagarReceber ORDER BY Processo');
          tProcessos.Open;
          tProcessos.First;
          cProcesso.Clear;

          While not tProcessos.Eof do begin
                If Trim(tProcessos.FieldByName('Processo').AsString) <> '' then
                   cProcesso.Items.Add(tProcessos.FieldByName('Processo').AsString);
                tProcessos.Next;
          End;

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE Tipo = ''R'' AND Desativada <> 1 ORDER BY Descricao');
          ClassificacaoFinanceira.Open;

          tBeneficiarios.SQL.Clear;
          tBeneficiarios.SQL.Add('SELECT Codigo AS Beneficiario_Codigo,');
          tBeneficiarios.SQL.Add('       CAST(Nome AS varchar(50)) AS Beneficiario_Nome');
          tBeneficiarios.SQL.Add('FROM   Clientes');
          tBeneficiarios.SQL.Add('WHERE  Ativo = 1');
          tBeneficiarios.SQL.Add('ORDER  BY Nome');
          tBeneficiarios.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          Configuracao.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Codigo = :pCodigo)');
          Municipios.ParamByName('pCodigo').AsInteger := EmpresasMunicipio_Codigo.Value;
          Municipios.Open;

          Filtra(0, true);

          PageControl1.ActivePageIndex := 0;
          bGerar.Enabled    := PageControl1.ActivePageIndex = 0;
          bImprimir.Enabled := PageControl1.ActivePageIndex = 1;
          bPDF.Enabled      := PageControl1.ActivePageIndex = 1;
          bEmail.Enabled    := PageControl1.ActivePageIndex = 1;
          bCancelar.Enabled := PageControl1.ActivePageIndex = 1;
     End;

     PageControl1.ActivePageIndex := 0;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_GerarBoletos.Filtra(Coluna:Integer; Ordem: Boolean);
begin
     Screen.Cursor := crSQLWait;
     
     Grade.DisableScroll;
     Grade.UnselectAll;
     tTitulos.DisableControls;

     tTitulos.SQL.Clear;
     tTitulos.SQL.Add('SELECT DISTINCT');
     tTitulos.SQL.Add('       Numero,');
     tTitulos.SQL.Add('       Beneficiario = (SELECT Nome FROM Clientes WHERE Clientes.Codigo = Cliente),');
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tTitulos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
     end else begin
        tTitulos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
     End;
     tTitulos.SQL.Add('       Data_Vencimento,');
     tTitulos.SQL.Add('       Processo,');
     tTitulos.SQL.Add('       Valor_Documento,');
     tTitulos.SQL.Add('       Valor_Parcela,');
     tTitulos.SQL.Add('       Valor_Operacao,');
     tTitulos.SQL.Add('       Boleto_Numero,');
     tTitulos.SQL.Add('       Numero_Documento,');
     tTitulos.SQL.Add('       Data_Documento');
     tTitulos.SQL.Add('FROM   PagarReceber');
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tTitulos.SQL.Add('WHERE  (SELECT Boleto FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1 ');
     end else begin
        tTitulos.SQL.Add('WHERE  (SELECT Boleto FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = Classificacao) = 1 ');
     End;
     tTitulos.SQL.Add('       AND (ISNULL((SELECT SUM(ROUND(PagarReceberBaixas.Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0)) < ROUND(ISNULL(Valor_Parcela,0)+ISNULL(Juros, 0)+ISNULL(Multa,0)-ISNULL(Desconto,0), 2)');
     tTitulos.SQL.Add('       AND (Data_Vencimento > :pDataFechamento) ');
     tTitulos.SQL.Add('       AND (Nivel <= :pNivel) ');
     tTitulos.SQL.Add('       AND (ISNULL(Provisorio, 0) <> 1) ');
     tTitulos.SQL.Add('       AND (ISNULL(Boleto_Numero, 0) = 0)');
     tTitulos.ParamByName('pDataFechamento').AsDate := Dados.EmpresasFechamento_Financeiro.AsDateTime;
     tTitulos.ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;

     // Filtra pela Data.
     If Trim(RemoveCaracter('/', '',cData.Text)) <> '' then begin
        If Length(Trim(RemoveCaracter('/', '',cData.Text))) <> 7 then begin
           tTitulos.SQL.Add(' AND (Data_Vencimento = :pData)');
           tTitulos.ParamByName('pData').AsDate := cData.Date;
        End;
     End;

     // Filtra pelo Processo.
     If Trim(cProcesso.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Processo = :pProcesso)');
        tTitulos.ParamByName('pProcesso').AsString := cProcesso.Text;
     End;

     // Filtra pelo Classificacao Financeira.
     If Trim(cClassificacao.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Classificacao = :pClassificacao)');
        tTitulos.ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.Value;
     End;

     // Filtra pelo Beneficiario.
     If Trim(cBeneficiario.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Cliente    = :pBeneficiario)');
        tTitulos.ParamByName('pBeneficiario').AsString := tBeneficiarios.FieldByName('Beneficiario_Codigo').AsString;
     End;

     // Filtra pelo Número do documento.
     If Trim(cNumDoc.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Numero_Documento = :pNumeroDoc)');
        tTitulos.ParamByName('pNumeroDoc').AsString := cNumDoc.Text;
     End;

     If Ordem = True then begin
        If mUltimoClick <> Grade.Columns[Coluna].FieldName then begin
           tTitulos.SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' ASC');
           mUltimoClick := Grade.Columns[Coluna].FieldName;
        end else begin
           tTitulos.SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
           mUltimoClick := '';
        End;
     end else begin
        tTitulos.SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
     End;
     //tTitulos.SQL.SaveToFile('c:\temp\Gera_Boletos_Titulos.sql');
     tTitulos.Open;

     bFiltraBoletos.Click;

     Grade.EnableScroll;
     tTitulos.EnableControls;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_GerarBoletos.bLimpaFiltroClick(Sender: TObject);
begin
      cData.Clear;
      cClassificacao.KeyValue := -1;
      cProcesso.ItemIndex     := -1;
      cBeneficiario.KeyValue  := -1;
      cNumDoc.Clear;
      Filtra(1, true);
end;

procedure TFinanceiro_GerarBoletos.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      With Dados do begin
           If Odd(tTitulos.RecNo) then
              Grade.Canvas.Brush.Color:= $00EEEEEE
           else
              Grade.Canvas.Brush.Color:= clWhite;

           If Grade.SelectedRows.CurrentRowSelected then begin
              TDbGrid(Sender).Canvas.Brush.Color := $00FF8080;
              TDbGrid(Sender).Canvas.font.Color  := clBlack;
           end else begin
              TDbGrid(Sender).Canvas.font.Color := clBlack;
           End;

           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              //Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).Columns[Datacol].Field, State);
      End;
end;

procedure TFinanceiro_GerarBoletos.bSelecionarClick(Sender: TObject);
begin
     If PageControl1.ActivePageIndex = 0 then
        Grade.SelectAll
     else
        Grade2.SelectAll;
end;

procedure TFinanceiro_GerarBoletos.bDesmarcarClick(Sender: TObject);
begin
     If PageControl1.ActivePageIndex = 0 then
        Grade.UnselectAll
     else
        Grade2.UnselectAll;
end;

procedure TFinanceiro_GerarBoletos.GradeTitleClick(Column: TColumn);
begin
     Filtra(Column.Index, True);
end;

procedure TFinanceiro_GerarBoletos.GradeKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If (mSelecionou = true) and (Key = 16) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal                 := Grade.DataSource.DataSet.RecNo;
        Grade.DataSource.DataSet.RecNo := mContador;
        Repeat
             Grade.SelectedRows.CurrentRowSelected := true;
             Grade.DataSource.DataSet.Next
        until
             (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (tTitulos.Eof);
     end;
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TFinanceiro_GerarBoletos.GradeCellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := Grade.DataSource.DataSet.RecNo;
      End;
end;

procedure TFinanceiro_GerarBoletos.bPesquisarClick(Sender: TObject);
begin
      Financeiro_Pesquisa := TFinanceiro_Pesquisa.Create(Self);
      Financeiro_Pesquisa.Caption := Caption;
      Financeiro_Pesquisa.mJanela := 'Boleto';
      Financeiro_Pesquisa.ShowModal;
end;

procedure TFinanceiro_GerarBoletos.bGerarClick(Sender: TObject);
begin
      PageControl1.ActivePageIndex := 0;
      Financeiro_BoletoLote := TFinanceiro_BoletoLote.Create(Self);
      Financeiro_BoletoLote.Caption := Caption;
      Financeiro_BoletoLote.ShowModal;
      tBoletos.Refresh;
      tTitulos.Refresh;
end;

procedure TFinanceiro_GerarBoletos.bFiltroClick(Sender: TObject);
begin
     Filtra(1, false);
end;

procedure TFinanceiro_GerarBoletos.bLimpaBoletosClick(Sender: TObject);
begin
      cData2.Clear;
      cBeneficiario2.KeyValue  := -1;
      cNumeroDoc2.Clear;
      bFiltraBoletos.Click;
end;

procedure TFinanceiro_GerarBoletos.bImprimirClick(Sender: TObject);
Var
   s: WideString;
   i: Integer;
begin
      // Pegando a relação de itens selecionados no grid.
      If Grade2.SelectedRows.Count <= 0 then begin
         MessageDlg('Nenhum boleto selecionado para impressão.', mtInformation, [mbok], 0);
         Abort;
      End;
      For i := 0 to Grade2.SelectedRows.Count-1 do begin
          Grade2.DataSource.DataSet.GotoBookMark((Grade2.SelectedRows.Items[i]));
          s := s + tBoletos.FieldByName('Financeiro_Numero').AsString + ',';
      End;
      s := '('+Copy(s, 1, Length(s)-1)+')';

      tBoletos.SQL.Clear;
      tBoletos.SQL.Add('SELECT *');
      tBoletos.SQL.Add('       ,Beneficiario        = (SELECT Nome         FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Nome                = (SELECT Nome_Boleto  FROM Bancos   WHERE Codigo = Banco)');
      tBoletos.SQL.Add('       ,Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco)');
      tBoletos.SQL.Add('       ,Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_CNPJ        = (SELECT CNPJ         FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Email       = (SELECT Email        FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_EmailCopia  = (SELECT CAST(Email_Copia AS VARCHAR(500)) FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('FROM   Boletos');
      tBoletos.SQL.Add('WHERE  Financeiro_Numero IN'+s);
      //tBoletos.SQL.SaveToFile('c:\temp\Boletos.sql');
      tBoletos.Open;

      rBoleto.FreeOnRelease;
      rBoleto.Print;
      rBoleto.Reset;

      bFiltraBoletosClick(Self);
end;

procedure TFinanceiro_GerarBoletos.bFiltraBoletosClick(Sender: TObject);
begin
     tBoletos.SQL.Clear;
     tBoletos.SQL.Add('SELECT *');
     tBoletos.SQL.Add('       ,Beneficiario        = (SELECT Nome         FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Nome                = (SELECT Nome_Boleto  FROM Bancos   WHERE Codigo = Banco) ');
     tBoletos.SQL.Add('       ,Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco) ');
     tBoletos.SQL.Add('       ,Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_CNPJ        = (SELECT CNPJ         FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_Email       = (SELECT Email        FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('       ,Cliente_EmailCopia  = (SELECT CAST(Email_Copia AS VARCHAR(500)) FROM Clientes WHERE Codigo = Sacado)');
     tBoletos.SQL.Add('FROM   Boletos');
     tBoletos.SQL.Add('WHERE  Registro IS NOT NULL');

     // Filtra pela Data.
     If Trim(RemoveCaracter('/', '',cData2.Text)) <> '' then begin
        If Length(Trim(RemoveCaracter('/', '',cData2.Text))) <> 7 then begin
           tBoletos.SQL.Add(' AND (Data_Vencimento = :pData)');
           tBoletos.ParamByName('pData').AsDate := cData2.Date;
        End;
     End;

     // Filtra pelo Beneficiario.
     If Trim(cBeneficiario2.Text) <> '' then begin
        tBoletos.SQL.Add(' AND (Cliente    = :pBeneficiario)');
        tBoletos.ParamByName('pBeneficiario').AsString := tBeneficiarios.FieldByName('Beneficiario_Codigo').AsString;
     End;

     // Filtra pelo Número do documento.
     If Trim(cNumeroDoc2.Text) <> '' then begin
        tBoletos.SQL.Add(' AND (Numero_Documento = :pNumeroDoc)');
        tBoletos.ParamByName('pNumeroDoc').AsString := cNumeroDoc2.Text;
     End;

     tBoletos.SQL.Add('ORDER BY Registro DESC');
     //tBoletos.SQL.SaveToFile('c:\temp\Gera_Boletos_Boletos.sql');
     tBoletos.Open;
end;

procedure TFinanceiro_GerarBoletos.rBoletoBeforePrint(Sender: TObject);
Var
    mBMP: String;
    mJPG: String;
begin
     mBMP := ExtractFilePath(Application.ExeName)+'\Imagens\Bancos\'+tBoletos.FieldByName('Imagem').AsString+'.BMP';
     mJPG := ExtractFilePath(Application.ExeName)+'\Imagens\Bancos\'+tBoletos.FieldByName('Imagem').AsString+'.JPG';
     
     If FileExists(mBMP) then begin
        pLogo1.Picture.LoadFromFile(mBMP);
     end else begin
        If FileExists(mJPG) then begin
           pLogo1.Picture.LoadFromFile(mJPG);
        End;
     End;
     pLogo2.Picture.Assign(pLogo1.Picture);

     With Dados do begin
          lContato1.Visible         := ConfiguracaoBoleto_Contato.AsBoolean;
          lContato2.Visible         := lContato1.Visible;
          cNomeContato1.Visible     := lContato1.Visible;
          cNomeContato2.Visible     := lContato1.Visible;
          lEnderecoContato1.Visible := lContato1.Visible;
          lEnderecoContato2.Visible := lContato1.Visible;
          lEnderecoContato3.Visible := lContato1.Visible;
          lEnderecoContato4.Visible := lContato1.Visible;
     End;
end;

procedure TFinanceiro_GerarBoletos.ppDetailBand1BeforePrint(Sender: TObject);
begin
      With Dados do begin
           lProtestar.Caption   := '';
           lAbatimento.Caption  := '';
           lJuros.Caption       := '';
           lProtestar2.Caption  := '';
           lAbatimento2.Caption := '';
           lJuros2.Caption      := '';

           If RemoveCaracter('/', '', tBoletos.FieldByName('Data_Protesto').AsString)   <> '' then lProtestar.Caption  := 'Protestar em '            + tBoletos.FieldByName('Data_Protesto').AsString;
           If RemoveCaracter('/', '', tBoletos.FieldByName('Data_Abatimento').AsString) <> '' then lAbatimento.Caption := 'Conceder abatimento de R$'+ FormatFloat(',##0.00', tBoletos.FieldByName('Valor_Abatimento').AsCurrency) +' para pagamento até '+tBoletos.FieldByName('Data_Abatimento').AsString;
           If RemoveCaracter('/', '', tBoletos.FieldByName('Data_Juros').AsString)      <> '' then lJuros.Caption      := 'Cobrar juros de R$'       + FormatFloat(',##0.00', tBoletos.FieldByName('Valor_Juros').AsCurrency) +' por dia de antecipação para pagamento a partir de '+tBoletos.FieldByName('Data_Juros').AsString;

           If tBoletos.FieldByName('Valor_MultaVencimento').AsCurrency > 0 then begin
              lProtestar.Caption := 'Após o vencimento Multa de '+FormatFloat('R$ ,##0.00', tBoletos.FieldByName('Valor_MultaVencimento').AsCurrency);
           End;
           If tBoletos.FieldByName('Valor_JurosDia').AsCurrency > 0 then begin
              lProtestar.Caption := lProtestar.Caption + ' e Juros de '+FormatFloat('R$ ,##0.00', tBoletos.FieldByName('Valor_JurosDia').AsCurrency)+' ao dia.';
           End;

           lProtestar2.Caption  := lProtestar.Caption;
           lAbatimento2.Caption := lAbatimento.Caption;
           lJuros2.Caption      := lJuros.Caption;

           lEspecieDOC.Caption  := tBoletos.FieldByName('Especie_Documento').AsString;
           lEspecieDOC2.Caption := tBoletos.FieldByName('Especie_Documento').AsString;

           If tBoletos.FieldByName('Especie_Documento').AsString = 'Duplicata Mercantil' then begin
              lEspecieDOC.Caption  := 'DM';
              lEspecieDOC2.Caption := 'DM';
           End;
           If tBoletos.FieldByName('Especie_Documento').AsString = 'Nota Promissória' then begin
              lEspecieDOC.Caption  := 'NP';
              lEspecieDOC2.Caption := 'NP';
           End;

           lEnderecoContato1.Caption := Trim(Empresas.FieldByName('Rua').AsString) + ', nº '+Trim(Empresas.FieldByName('Rua_Numero').AsString)+', '+Empresas.FieldByName('Complemento').AsString+
                                        FormatMaskText('99999-999;0', Empresas.FieldByName('CEP').AsString) + '  '+#149+'  ' + Trim(Empresas.FieldByName('Bairro').AsString)+ '  '+#149+'  '+ Municipios.FieldByName('Nome').AsString+' - '+Empresas.FieldByName('Estado').AsString;
           lEnderecoContato2.Caption := EmpresasEMail.Text;
           If EmpresasSite.AsString <> '' then lEnderecoContato2.Caption := lEnderecoContato2.Caption +' / '+EmpresasSite.AsString;
           lEnderecoContato3.Caption := lEnderecoContato1.Caption;
           lEnderecoContato4.Caption := lEnderecoContato2.Caption;


           lEndereco1.Caption := Trim(tBoletos.FieldByName('Cliente_Rua').AsString) + ', nº '+Trim(tBoletos.FieldByName('Cliente_Numero').AsString)+', '+tBoletos.FieldByName('Cliente_Complemento').AsString;
           lEndereco2.Caption := FormatMaskText('99999-999;0', tBoletos.FieldByName('Cliente_CEP').AsString) + '  '+#149+'  ' + Trim(tBoletos.FieldByName('Cliente_Bairro').AsString)+ '  '+#149+'  '+ tBoletos.FieldByName('Cliente_Municipio').AsString+' - '+tBoletos.FieldByName('Cliente_Estado').AsString;
           lEndereco3.Caption := lEndereco1.Caption;
           lEndereco4.Caption := lEndereco2.Caption;
      End;
end;

procedure TFinanceiro_GerarBoletos.bPDFClick(Sender: TObject);
Var
   i: Integer;
   r: Integer;
begin
      r := MessageDlg('Deseja Abri o arquivo "PDF" gerado?', mtConfirmation, [mbYes, mbNo], 0);

      // Pegando a relação de itens selecionados no grid.
      pBoleto.DataSource := dstPDF;
      
      mPasta := Trim(Dados.ConfiguracaoPasta_Boleto.Value) + '\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mPasta := mPasta + '_Matriz\'
      else
         mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger)+'\';

      If not DirectoryExists(mPasta) then ForceDirectories(mPasta);

      rBoleto.AllowPrintToFile := True;
      rBoleto.DeviceType       := dtPDF;
      rBoleto.ShowPrintDialog  := False;
      rBoleto.ShowCancelDialog := False;

      tPDF.SQL.Clear;
      tPDF.SQL.Add('SELECT *,');
      tPDF.SQL.Add('       Beneficiario        = (SELECT Nome         FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Nome                = (SELECT Nome_Boleto  FROM Bancos   WHERE Codigo = Banco ),');
      tPDF.SQL.Add('       Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco ),');
      tPDF.SQL.Add('       Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_CNPJ        = (SELECT CNPJ         FROM Clientes WHERE Codigo = Sacado)');
      tPDF.SQL.Add('FROM   Boletos');
      tPDF.SQL.Add('WHERE  Registro = :pRegistro');

      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tBoletos.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo boletos...';
      Janela_Processamento.Show;

      For i := 0 to Grade2.SelectedRows.Count-1 do begin
          Grade2.DataSource.DataSet.GotoBookMark((Grade2.SelectedRows.Items[i]));

          tPDF.ParamByName('pRegistro').AsInteger := tBoletos.FieldByName('Registro').AsInteger;
          tPDF.Open;
          rBoleto.TextFileName := mPasta + 'BOLETO_'+tBoletos.FieldByName('Numero_Documento').AsString+'_'+RemoveCaracter('.', '', tBoletos.FieldByName('Beneficiario').AsString)+'.PDF';

          rBoleto.Print;
          rBoleto.FreeOnRelease;
          rBoleto.Reset;

          tPDF.Close;

          Try
              If r = 6 then ShellExecute(Handle, 'Open', PChar(rBoleto.TextFileName), '', '', SW_ShowNormal);
          Except

          End;    

          Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
          Application.ProcessMessages;
      End;

      bFiltraBoletosClick(Self);

      Janela_Processamento.Close;

      If r <> 6 then Showmessage('Boletos gerados com sucesso em '+mPasta);
end;

procedure TFinanceiro_GerarBoletos.Grade2KeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If (mSelecionou = true) and (Key = 16) and (Grade2.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal                 := Grade2.DataSource.DataSet.RecNo;
        Grade2.DataSource.DataSet.RecNo := mContador;
        Repeat
             Grade2.SelectedRows.CurrentRowSelected := true;
             Grade2.DataSource.DataSet.Next
        until
             (Grade2.DataSource.DataSet.RecNo = mContadorFinal) or (tBoletos.Eof);
     end;
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TFinanceiro_GerarBoletos.Grade2CellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := Grade2.DataSource.DataSet.RecNo;
      End;
end;

procedure TFinanceiro_GerarBoletos.PageControl1Change(Sender: TObject);
begin
      bGerar.Enabled    := PageControl1.ActivePageIndex = 0;
      bImprimir.Enabled := PageControl1.ActivePageIndex = 1;
      bPDF.Enabled      := PageControl1.ActivePageIndex = 1;
      bEmail.Enabled    := PageControl1.ActivePageIndex = 1;
      bCancelar.Enabled := PageControl1.ActivePageIndex = 1;
end;

procedure TFinanceiro_GerarBoletos.bEmailClick(Sender: TObject);
Var
     mEnviar  : boolean;
     i        : integer;
     mMensagem: WideString;
     mArqBol,
     mArqNF   : WideString;
begin
     If MessageDlg('Deseja enviar realmente todos os E-Mails selecionados para os clientes?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

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

          mPasta := Trim(Dados.ConfiguracaoPasta_Boleto.Value) + '\'+Trim(Dados.EmpresasRazao_Social.AsString);
          If Dados.EmpresasMatriz_Filial.AsBoolean = true then
             mPasta := mPasta + '_Matriz\'
          else
             mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger)+'\';

          If not DirectoryExists(mPasta) then ForceDirectories(mPasta);

          If mEnviar = true then begin
             Progresso.Max      := Grade2.SelectedRows.Count;
             Progresso.Position := 0;
             lProgresso.Caption := 'Enviando boletos por E-Mail...';

             // Configuração do SMTP.
             SMTP.Host     := EmpresasEmail_SMTP.AsString;
             SMTP.Port     := EmpresasEmail_Porta.AsInteger;
             SMTP.UserName := EmpresasEmail_ID.AsString;
             SMTP.Password := EmpresasEmail_Senha.AsString;

             // SSLOptions Method.
             If EmpresasEmail_Metodo.AsString = 'sslvSSLv2' then
                SSLSocket.SSLOptions.Method := sslvSSLv2;
             If EmpresasEmail_Metodo.AsString = 'sslvSSLv23' then
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

             // Tenta a conexão.
             Try
                SMTP.Connect;
                If EmpresasEmail_Autenticacao.AsBoolean then SMTP.Authenticate;
             Except
                 on E:Exception do begin
                    //ClipBoard.AsText := E.Message;
                    ShowMessage('ERROR!'+#13+'Não foi possivel conectar para enviar E-Mails, Verifique as configurações do E-Mail no <Cadastro da Empresa>.'+#13+E.Message);
                    Abort;
                 End;
             End;

             For i := 0 to Grade2.SelectedRows.Count-1 do begin
                 Grade2.DataSource.DataSet.GotoBookMark((Grade2.SelectedRows.Items[i]));
                 If Trim(tBoletos.FieldByName('Cliente_Email').AsString) <> '' then begin
                    cEmail.Text := tBoletos.FieldByName('Cliente_Email').AsString;

                    // Montando a Mensagem
                    EmailMSG.MessageParts.Clear;
                    EmailMSG.Clear;
                    EmailMSG.Body.Clear;

                    EmailMSG.From.Address              := EmpresasEmail.AsString;
                    EmailMSG.Recipients.EMailAddresses := cEmail.Text;
                    EmailMSG.ccList.EMailAddresses     := tBoletos.FieldByName('Cliente_Email').AsString+','+tBoletos.FieldByName('Cliente_EmailCopia').AsString;
                    EmailMSG.Subject                   := 'BOLETO MENSALIDADE SISTEMA CYBERSOFT ERP IMPORTA';

                    mMensagem                          := RemoveCaracter('<{Numero}>', tBoletos.FieldByName('Numero_Documento').AsString, EmpresasEmail_MsgBoleto.AsString);
                    mMensagem                          := RemoveCaracter('<{Data}>'  , tBoletos.FieldByName('Data_Documento').AsString, mMensagem);
                    mMensagem                          := RemoveCaracter('<{MES}>'   , Trim(NomeMes(MonthOf(tBoletos.FieldByName('Data_Documento').Value)))+'/'+InttoStr(YearOf(tBoletos.FieldByName('Data_Documento').Value)), mMensagem);
                    mMensagem                          := mMensagem +#13+ EmpresasRazao_Social.AsString+#13+'CNPJ:'+FormatMaskText('##.###.###/####-##;0', EmpresasCNPJ.AsString +#13+ 'Depto.Financeiro'+#13+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone1.Text)+' / '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone2.Text));
                    EmailMSG.Body.Text                 := mMensagem;

                    // Verifica se existe os arquivos para anexar.
                    mArqBol := mPasta+'BOLETO_'+tBoletos.FieldByName('Numero_Documento').AsString+'_'+RemoveCaracter('.', '', tBoletos.FieldByName('Beneficiario').AsString)+'.PDF';
                    mArqNF  := mPasta+'NF '+tBoletos.FieldByName('Numero_Documento').AsString+'.PDF';
                    If FileExists(mArqBol) then
                       TIdAttachmentFile.Create(EMailMSG.MessageParts, mArqBol);
                    If FileExists(mArqNF) then
                       TIdAttachmentFile.Create(EMailMSG.MessageParts, mArqNF);

                    // Enviar email
                    Try
                       SMTP.Send(EMailMSG);
                    Except
                        on E:Exception do begin
                           //ClipBoard.AsText := E.Message;
                           ShowMessage('ERROR!'+#13+'E-Mail não enviado, Verifique as configurações do E-Mail no <Cadastro da Empresa>.'+#13+E.Message);
                        End;
                    End;
                 End;

                 Progresso.Position := Progresso.Position + 1;
                 Application.ProcessMessages;
             End;
          End;
     End;

     If SMTP.Connected then SMTP.Disconnect;
     Menu_Principal.IdAntiFreeze1.Active := false;

     ShowMessage('Todos os E-mails foram enviados!');


     //GifEmail.Animate   := false;
     Progresso.Position := 0;
     lProgresso.Caption := '';
end;

procedure TFinanceiro_GerarBoletos.bCancelarClick(Sender: TObject);
Var
   i: Integer;
begin
      If Grade2.SelectedRows.Count = 0 then begin
         MessageDlg('Não existe nenhum boleto selecionado para o cancelamento!', mtInformation, [mbNo], 0);
         Abort;
      End;

      If MessageDlg('Deseja realmente cancelar todos os boletos selecionados?', mtConfirmation, [mbyes, mbNo], 0) = mrNo then
         Abort;

      With Dados do begin
           Boletos.SQL.Clear;
           Boletos.SQL.Add('SELECT  *');
           Boletos.SQL.Add('       ,Nome_Sacado = (SELECT Nome FROM Clientes WHERE Codigo = Sacado)');
           Boletos.SQL.Add('FROM   Boletos');
           Boletos.Open;

           For i := 0 to Grade2.SelectedRows.Count-1 do begin
               Grade2.DataSource.DataSet.GotoBookMark((Grade2.SelectedRows.Items[i]));

               Boletos.Locate('Registro', tBoletosRegistro.AsInteger, [loCaseInsensitive]);

               PagarReceber.SQL.Clear;
               PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
               PagarReceber.ParamByName('pNumero').AsInteger := Boletos.FieldByName('Financeiro_Numero').AsInteger;
               PagarReceber.Open;

               PagarReceber.Edit;
                            PagarReceberBoleto_Numero.Clear;
               PagarReceber.Post;

               Boletos.Edit;
                       BoletosCancelado.Value := true;
               Boletos.Post;
           End;
           tBoletos.Refresh;
           tTitulos.Refresh;
      End;
end;

procedure TFinanceiro_GerarBoletos.Grade2DrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do begin
           If Odd(tBoletos.RecNo) then
              Grade2.Canvas.Brush.Color:= $00EEEEEE
           else
              Grade2.Canvas.Brush.Color:= clWhite;

           If Grade2.SelectedRows.CurrentRowSelected then begin
              TDbGrid(Sender).Canvas.Brush.Color := $00FF8080;
              TDbGrid(Sender).Canvas.font.Color  := clBlack;
           end else begin
              TDbGrid(Sender).Canvas.font.Color := clBlack;
           End;

           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Color := clBlack;
           End;

           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).Columns[Datacol].Field, State);
           
           If (Column.FieldName = 'Cancelado') then begin
              With Grade2.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tBoletos.FieldByName('Cancelado').AsBoolean = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
end;

procedure TFinanceiro_GerarBoletos.tBoletosAfterScroll(DataSet: TDataSet);
begin
      bCancelar.Enabled := (not tBoletos.FieldByName('Cancelado').AsBoolean);
end;

end.


