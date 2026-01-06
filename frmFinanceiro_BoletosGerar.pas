unit frmFinanceiro_BoletosGerar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Grids, DBGrids, RXDBCtrl,
  Vcl.StdCtrls, Mask, RxLookup, RXCtrls, Vcl.ExtCtrls, DBCtrls, Buttons, Funcoes, Vcl.ComCtrls, ppParameter, ppCtrls, ppBarCod, ppPrnabl,  ppBands, ppProd, ppReport, ppDBPipe, MaskUtils,
  ppTypes, IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, IdTCPConnection, IdSMTP, IdAttachmentFile, DateUtils, ClipBrd, ShellApi, IdTCPClient, IdExplicitTLSClientServerBase,
  MemDS, RxToolEdit, IdMessageClient, IdSMTPBase, IdComponent, IdIOHandlerSocket, IdBaseComponent, ppDesignLayer, ppClass, ppCache, ppDB, ppComm, ppRelatv, System.UITypes, IdCoderMIME,
  IdText, IdGlobal, Vcl.Samples.Spin, Math, ppBarCode2D, ppStrtch, ppMemo;
  

type
  TFinanceiro_BoletosGerar = class(TForm)
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
    Grade: TDBGrid;
    Grade2: TDBGrid;
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
    cDataIni: TDateEdit;
    StaticText10: TStaticText;
    cNumeroDoc2: TEdit;
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
    pCNPJ1: TppDBText;
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
    pCNPJ2: TppDBText;
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
    bPDF: TButton;
    tPDF: TMSQuery;
    dstPDF: TDataSource;
    bFiltro: TSpeedButton;
    bLimpaFiltro: TSpeedButton;
    bPesquisar: TSpeedButton;
    bEmail: TButton;
    Panel2: TPanel;

    StaticText12: TStaticText;
    cEmail: TEdit;
    Progresso: TProgressBar;
    lProgresso: TLabel;
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
    Image2: TImage;
    lCNPJContato1: TppLabel;
    lCNPJContato2: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    tBoletosEspecie_Codigo: TStringField;
    tBoletosCodigo_Instrucao: TSmallintField;
    tBoletosNumero_Documento2: TStringField;
    cCancelados: TCheckBox;
    lCNPJContato3: TppLabel;
    lCNPJContato4: TppLabel;
    tTitulosSaldo: TCurrencyField;
    tBoletosSeleciona: TBooleanField;
    tBoletosOcorrencia: TStringField;
    tBoletosData_Multa: TDateTimeField;
    tBoletosPessoa: TStringField;
    tTemp: TMSQuery;
    tBoletosPedido: TStringField;
    cDias: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    StaticText5: TStaticText;
    cBanco: TRxDBLookupCombo;
    tBoletosValor_Multa: TCurrencyField;
    tBoletosNumero_Envio: TIntegerField;
    tBoletosEmail_Enviado: TBooleanField;
    cEnviados: TCheckBox;
    cSel: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    StaticText7: TStaticText;
    cClassificacao2: TRxDBLookupCombo;
    StaticText11: TStaticText;
    cBanco2: TRxDBLookupCombo;
    bFiltraBoletos: TSpeedButton;
    bLimpaBoletos: TSpeedButton;
    cDataFim: TDateEdit;
    Label3: TLabel;
    cTotal: TLabel;
    Bevel2: TBevel;
    ppDB2DBarCode1: TppDB2DBarCode;
    QR: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    pQRCode: Tpp2DBarCode;
    tBoletosChave_PIX: TStringField;
    pMemoQR: TppMemo;
    tBoletosQRCode: TMemoField;
    tBoletosSacado: TIntegerField;
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
    CompClass
   ,CompBanco:string;
  end;

var
  Financeiro_BoletosGerar: TFinanceiro_BoletosGerar;

implementation

uses frmDados, frmMenu_Principal, frmFinanceiro_Pesquisa, frmJanela_Processamento, frmFinanceiro_BoletoLote;

{$R *.dfm}

procedure TFinanceiro_BoletosGerar.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFinanceiro_BoletosGerar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil); 
     Financeiro_BoletosGerar.Release;
     Financeiro_BoletosGerar := nil;
end;

procedure TFinanceiro_BoletosGerar.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_BoletosGerar.FormShow(Sender: TObject);
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

          with ClassificacaoFinanceira do begin
               sql.Clear;
               sql.add('select * from ClassificacaoFinanceira where Tipo = ''R'' and Desativada <> 1 and Boleto = 1 order by Descricao');
               open;
          end;

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
          CompClass := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
          CompBanco := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Codigo = :pCodigo)');
          Municipios.ParamByName('pCodigo').AsInteger := EmpresasMunicipio_Codigo.Value;
          Municipios.Open;

          with Bancos do begin
               sql.Clear;
               sql.Add('Select * from Bancos where isnull(Desativado, 0) = 0 and isnull(Codigo_Cedente, '''') <> '''' order by Nome');
               open;
          end;

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

procedure TFinanceiro_BoletosGerar.Filtra(Coluna:Integer; Ordem: Boolean);
begin
     Screen.Cursor := crSQLWait;
     with tTitulos do begin
           DisableControls;
           SQL.Clear;
           SQL.Add('SELECT DISTINCT');
           SQL.Add('       Numero,');
           SQL.Add('       Beneficiario = (SELECT Nome FROM Clientes WHERE Clientes.Codigo = Cliente),');
           if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
           end else begin
              SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
           end;
           SQL.Add('       Data_Vencimento,');
           SQL.Add('       Processo,');
           SQL.Add('       Valor_Documento,');
           SQL.Add('       Valor_Parcela,');
           SQL.Add('       Valor_Operacao,');
           SQL.Add('       Boleto_Numero,');
           SQL.Add('       Numero_Documento,');
           SQL.Add('       Data_Documento,');
           SQL.Add('       Saldo = ISNULL((Valor_Total - (SELECT ISNULL(SUM(Valor), 0) FROM PagarReceberBaixas WHERE Numero = PagarReceber.Numero)), 0)');
           SQL.Add('FROM PagarReceber');
           SQL.Add('WHERE (Data_Vencimento > :pDataFechamento) ');
           if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              SQL.Add('AND (SELECT Boleto FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1 ');
           end else begin
              SQL.Add('AND (SELECT Boleto FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = Classificacao) = 1 ');
           end;
           //SQL.Add('AND (select Gera_Boleto from Cybersoft_Cadastros.dbo.ModalidadesPagamento where codigo = Modalidade_Pgto) = 1 ');
           SQL.Add('AND (ISNULL((SELECT SUM(ROUND(PagarReceberBaixas.Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0)) < ROUND(ISNULL(Valor_Parcela,0)+ISNULL(Juros, 0)+ISNULL(Multa,0)-ISNULL(Desconto,0), 2)');
           SQL.Add('AND (Nivel <= :pNivel) ');
           SQL.Add('AND (ISNULL(Provisorio, 0) <> 1) ');
           SQL.Add('AND (ISNULL(Boleto_Numero, 0) = 0)');
           // Filtra pela Data.
           If Trim(RemoveCaracter('/', '',cData.Text)) <> '' then begin
              If Length(Trim(RemoveCaracter('/', '',cData.Text))) <> 7 then begin
                 SQL.Add('AND (Data_Vencimento = :pData)');
                 ParamByName('pData').AsDate := cData.Date;
              End;
           End;
           // Filtra pelo Processo.
           If Trim(cProcesso.Text) <> '' then begin
              SQL.Add('AND (Processo = :pProcesso)');
              ParamByName('pProcesso').AsString := cProcesso.Text;
           End;
           // Filtra pelo Classificacao Financeira.
           If Trim(cClassificacao.Text) <> '' then begin
              SQL.Add('AND (Classificacao = :pClassificacao)');
              ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.AsString;
           End;
           // Filtra pelo Beneficiario.
           If Trim(cBeneficiario.Text) <> '' then begin
              SQL.Add('AND (Cliente = :pBeneficiario)');
              ParamByName('pBeneficiario').AsString := tBeneficiarios.FieldByName('Beneficiario_Codigo').AsString;
           End;
           // Filtra pelo Banco.
           if Trim(cBanco.Text) <> '' then begin
              SQL.Add('AND (Banco = :pBanco)');
              ParamByName('pBanco').Asinteger := Dados.Bancos.FieldByName('Codigo').asinteger;
           End;
           // Filtra pelo Número do documento.
           If Trim(cNumDoc.Text) <> '' then begin
              SQL.Add('AND (Numero_Documento = :pNumeroDoc)');
              ParamByName('pNumeroDoc').AsString := cNumDoc.Text;
           End;
           If Ordem = True then begin
              If mUltimoClick <> Grade.Columns[Coluna].FieldName then begin
                 SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' ASC');
                 mUltimoClick := Grade.Columns[Coluna].FieldName;
              end else begin
                 SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
                 mUltimoClick := '';
              End;
           end else begin
              SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
           End;
           ParamByName('pDataFechamento').AsDate := Dados.EmpresasFechamento_Financeiro.AsDateTime;
           ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;
           //SQL.SaveToFile('c:\temp\Gera_Boletos_Titulos.sql');
           Open;
           cSel.Caption   := '0';
           cTotal.Caption := '0,00';

           bFiltraBoletos.Click;
           EnableControls;
     end;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_BoletosGerar.bLimpaFiltroClick(Sender: TObject);
begin
      cData.Clear;
      cClassificacao.KeyValue := -1;
      cProcesso.ItemIndex     := -1;
      cBeneficiario.KeyValue  := -1;
      cNumDoc.Clear;
      cBanco.KeyValue         := -1;
      cEnviados.checked       := false;
      Filtra(1, true);
end;

procedure TFinanceiro_BoletosGerar.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
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
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).Columns[Datacol].Field, State);
      End;
end;

procedure TFinanceiro_BoletosGerar.bSelecionarClick(Sender: TObject);
var
  vlLinha: Integer;
  vTotal:real;
begin
     Cursor := crSQLWait;
     tTitulos.DisableControls;
     tBoletos.DisableControls;
     vTotal := 0;
     if PageControl1.ActivePageIndex = 0 then begin
        with Grade.DataSource.DataSet do begin
             First;
             for vlLinha := 0 to RecordCount - 1 do begin
                 Grade.SelectedRows.CurrentRowSelected := True;
                 vTotal := vTotal + roundto(FieldByName('Valor_Operacao').asfloat, -2);
                 Next;
             end;
             First;
        end;
        Grade.SelectedRows.Refresh;
        cSel.Caption   := FormatFloat('0', Grade.SelectedRows.Count);
        cTotal.Caption := FormatFloat(',##0.00', vTotal);
     end else begin
        with Grade2.DataSource.DataSet do begin
             First;
             for vlLinha := 0 to RecordCount - 1 do begin
                 Grade2.SelectedRows.CurrentRowSelected := True;
                 vTotal := vTotal + roundto(FieldByName('Valor_Documento').asfloat, -2);
                 Next;
             end;
             First;
        end;
        Grade2.SelectedRows.Refresh;
        cSel.Caption := formatfloat('0', Grade2.SelectedRows.Count);
        cTotal.Caption := FormatFloat(',##0.00', vTotal);
     end;
     tTitulos.EnableControls;
     tBoletos.EnableControls;
     Cursor := crDefault;
end;

procedure TFinanceiro_BoletosGerar.bDesmarcarClick(Sender: TObject);
var
  vlLinha: Integer;
begin
     Cursor := crSQLWait;
     tTitulos.DisableControls;
     tBoletos.DisableControls;
     If PageControl1.ActivePageIndex = 0 then begin
        with Grade.DataSource.DataSet do begin
             First;
             for vlLinha := 0 to RecordCount - 1 do begin
                 Grade.SelectedRows.CurrentRowSelected := false;
                 Next;
             end;
             first;
        end;
        Grade.SelectedRows.Refresh;
     end else begin
        with Grade2.DataSource.DataSet do begin
             First;
             for vlLinha := 0 to RecordCount - 1 do begin
                 Grade2.SelectedRows.CurrentRowSelected := false;
                 Next;
             end;
             first;
        end;
        Grade2.SelectedRows.Refresh;
     end;
     cSel.Caption := '0';
     cTotal.Caption := FormatFloat(',##0.00', 0);
     tTitulos.EnableControls;
     tBoletos.EnableControls;
     Cursor := crDefault;
end;

procedure TFinanceiro_BoletosGerar.GradeTitleClick(Column: TColumn);
begin
     Filtra(Column.Index, True);
end;

procedure TFinanceiro_BoletosGerar.GradeKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
var
  vlLinha: Integer;
  vTotal:real;
begin
     vTotal := 0;
     If (mSelecionou = true) and (Key = 16) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal                 := Grade.DataSource.DataSet.RecNo;
        Grade.DataSource.DataSet.RecNo := mContador;
        vTotal := vTotal + roundto(Grade.DataSource.DataSet.FieldByName('Valor_Operacao').asfloat, -2);
        Repeat
             Grade.SelectedRows.CurrentRowSelected := true;
             inc(vlLinha);
             vTotal := vTotal + roundto(Grade.DataSource.DataSet.FieldByName('Valor_Operacao').asfloat, -2);
             Grade.DataSource.DataSet.Next
        until
             (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (tTitulos.Eof);
     End;
     cSel.Caption   := FormatFloat('0', Grade.SelectedRows.Count);
     cTotal.Caption := FormatFloat(',##0.00', vTotal);
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TFinanceiro_BoletosGerar.GradeCellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := Grade.DataSource.DataSet.RecNo;
      End;
end;

procedure TFinanceiro_BoletosGerar.bPesquisarClick(Sender: TObject);
begin
      Financeiro_Pesquisa := TFinanceiro_Pesquisa.Create(Self);
      Financeiro_Pesquisa.Caption := Caption;
      Financeiro_Pesquisa.mJanela := 'Boleto';
      Financeiro_Pesquisa.ShowModal;
end;

procedure TFinanceiro_BoletosGerar.bGerarClick(Sender: TObject);
begin
      PageControl1.ActivePageIndex := 0;
      
      Financeiro_BoletoLote := TFinanceiro_BoletoLote.Create(Self);
      Financeiro_BoletoLote.Caption := Caption;
      Financeiro_BoletoLote.ShowModal;
      
      screen.Cursor := crsqlwait;
      tBoletos.Refresh;
      tTitulos.Refresh;
      screen.Cursor := crdefault;
end;

procedure TFinanceiro_BoletosGerar.bFiltroClick(Sender: TObject);
begin
     Filtra(1, false);
end;

procedure TFinanceiro_BoletosGerar.bLimpaBoletosClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cBeneficiario2.KeyValue  := -1;
      cClassificacao2.KeyValue := -1;
      cBanco2.KeyValue         := -1;
      cNumeroDoc2.Clear;
      bFiltraBoletos.Click;
      cDias.Value := 0;
end;

procedure TFinanceiro_BoletosGerar.bImprimirClick(Sender: TObject);
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

      If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then
         tBoletos.SQL.Add('       ,Imagem              = (SELECT Numero_Banco FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = Banco)')
      else
         tBoletos.SQL.Add('       ,Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco)');

      tBoletos.SQL.Add('       ,Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.sql.Add('       ,Cliente_CNPJ        = (SELECT isnull(CNPJ,'''')+isnull(CPF,'''') FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_Email       = (SELECT Email        FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Cliente_EmailCopia  = (SELECT CAST(Email_Copia AS VARCHAR(500)) FROM Clientes WHERE Codigo = Sacado)');
      tBoletos.SQL.Add('       ,Pessoa              = iif((select isnull(CNPJ,'''') FROM Clientes WHERE Codigo = Sacado) <> '''', ''J'', ''F'') ');
      tBoletos.SQL.Add('       ,Chave_PIX           = (SELECT Chave_PIX FROM Bancos WHERE Codigo = Banco)');
      tBoletos.SQL.Add('FROM   Boletos');
      tBoletos.SQL.Add('WHERE  Financeiro_Numero IN'+s);
      //tBoletos.SQL.SaveToFile('c:\temp\Boletos.sql');
      tBoletos.Open;

      rBoleto.FreeOnRelease;
      rBoleto.Print;
      rBoleto.Reset;

      bFiltraBoletosClick(Self);
end;

procedure TFinanceiro_BoletosGerar.bFiltraBoletosClick(Sender: TObject);
begin
     with tBoletos do begin
          sql.Clear;
          sql.Add('SELECT *');
          sql.Add('       ,Beneficiario        = (SELECT Nome         FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Nome                = (SELECT Nome_Boleto  FROM Bancos   WHERE Codigo = Banco) ');
     
          if Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then
             SQL.Add('       ,Imagem              = (SELECT Numero_Banco FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = Banco)')
          else
             SQL.Add('       ,Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco)');

          sql.Add('       ,Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_CNPJ        = (SELECT isnull(CNPJ,'''')+isnull(CPF,'''') FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_Email       = (SELECT Email        FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Cliente_EmailCopia  = (SELECT CAST(Email_Copia AS VARCHAR(500)) FROM Clientes WHERE Codigo = Sacado)');
          sql.Add('       ,Pessoa              = iif((select isnull(CNPJ,'''') FROM Clientes WHERE Codigo = Sacado) <> '''', ''J'', ''F'') ');
          sql.Add('       ,Chave_PIX           = (SELECT Chave_PIX FROM Bancos WHERE Codigo = Banco)');
          sql.Add('FROM   Boletos');
          sql.Add('WHERE  Registro IS NOT NULL');

          // Filtra pela Data.
          if not DataLimpa(cDataIni.Text)then begin
             SQL.Add('and Data_Vencimento between :pDataIni and :pDataFim');
             ParamByName('pDataIni').AsDate := cDataIni.Date;
             if not DataLimpa(cDataFim.Text) then begin
                ParamByName('pDataFim').AsDatetime := cDataFim.Date;
             end else begin
                ParamByName('pDataFim').AsDatetime := date;
             end;
          end;
          // Filtra pelo Classificacao Financeira.
          If Trim(cClassificacao2.Text) <> '' then begin
             SQL.Add('and (select Classificacao from PagarReceber where Numero = Financeiro_Numero) = :pClassificacao');
             ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.AsString;
          End;
          // Filtra pelo Banco.
          if Trim(cBanco2.Text) <> '' then begin
             SQL.Add('AND (Banco = :pBanco)');
             ParamByName('pBanco').Asinteger := Dados.Bancos.FieldByName('Codigo').asinteger;
          End;
          // Filtra pelo Beneficiario.
          if Trim(cBeneficiario2.Text) <> '' then begin
             SQL.Add(' AND (Sacado = :pBeneficiario)');
             ParamByName('pBeneficiario').AsString := tBeneficiarios.FieldByName('Beneficiario_Codigo').AsString;
          end;
          // Filtra pelo Número do documento.
          if Trim(cNumeroDoc2.Text) <> '' then begin
             SQL.Add(' AND (Numero_Documento = :pNumeroDoc)');
             ParamByName('pNumeroDoc').AsString := cNumeroDoc2.Text;
          end;
          // Filtra cancelados.
          if not cCancelados.Checked then begin
             SQL.Add(' AND ISNULL(Cancelado, 0) <> 1');
          end;
          if cDias.Value > 0 then begin
             sql.Add('and  datediff(day, getdate(), Data_Vencimento) = :pDias');
             sql.Add('and isnull(Data_Baixa, '''') = '''' ');
             ParamByName('pDias').Asinteger := cDias.value;
          end;
          // Filtra não enviados.
          if cEnviados.Checked then begin
             SQL.Add('and isnull(Email_Enviado, 0) = 0');
          end;
          if DataLimpa(cDataIni.Text) then begin          
             sql.Add('order by Registro desc');
          end else begin
             sql.Add('order by Data_Vencimento, Registro');
          end;
          //tBoletos.SQL.SaveToFile('c:\temp\Gera_Boletos_Boletos.sql');
          open;
     end;
end;

procedure TFinanceiro_BoletosGerar.rBoletoBeforePrint(Sender: TObject);
Var
    mBMP: String;
    mJPG: String;
begin
     mBMP := ExtractFilePath(Application.ExeName)+'Imagens\Bancos\'+tBoletos.FieldByName('Imagem').AsString+'.BMP';
     mJPG := ExtractFilePath(Application.ExeName)+'Imagens\Bancos\'+tBoletos.FieldByName('Imagem').AsString+'.JPG';
     
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
          lCNPJContato1.Visible     := lContato1.Visible;
          lCNPJContato2.Visible     := lContato1.Visible;
     End;
end;

procedure TFinanceiro_BoletosGerar.ppDetailBand1BeforePrint(Sender: TObject);
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

           lCNPJContato1.Caption := 'CNPJ: '+ FormatMaskText('##.###.###/####-##;0', EmpresasCNPJ.AsString);
           lCNPJContato2.Caption := lCNPJContato1.Caption;
           lCNPJContato3.Caption := lCNPJContato1.Caption;
           lCNPJContato4.Caption := lCNPJContato1.Caption;
           lEndereco1.Caption    := Trim(tBoletos.FieldByName('Cliente_Rua').AsString) + ', nº '+Trim(tBoletos.FieldByName('Cliente_Numero').AsString)+', '+tBoletos.FieldByName('Cliente_Complemento').AsString;
           lEndereco2.Caption    := FormatMaskText('99999-999;0', tBoletos.FieldByName('Cliente_CEP').AsString) + '  '+#149+'  ' + Trim(tBoletos.FieldByName('Cliente_Bairro').AsString)+ '  '+#149+'  '+ tBoletos.FieldByName('Cliente_Municipio').AsString+' - '+tBoletos.FieldByName('Cliente_Estado').AsString;
           lEndereco3.Caption    := lEndereco1.Caption;
           lEndereco4.Caption    := lEndereco2.Caption;
           if tBoletos.FieldByName('Pessoa').AsString = 'J' then begin
              pCNPJ1.DisplayFormat := '99.999.999/9999-99;0';
              pCNPJ2.DisplayFormat := '99.999.999/9999-99;0';
           end else begin
              pCNPJ1.DisplayFormat := '999.999.999-99;0';
              pCNPJ2.DisplayFormat := '999.999.999-99;0';
           end;
      End;
end;

procedure TFinanceiro_BoletosGerar.bPDFClick(Sender: TObject);
Var
   i, r: Integer;
   mBenef, mArq: string;
begin
      r := MessageDlg('Deseja Abrir o arquivo "PDF" gerado?', mtConfirmation, [mbYes, mbNo], 0);

      // Pegando a relação de itens selecionados no grid.
      pBoleto.DataSource := dstPDF;
      {
      mPasta := Trim(Dados.ConfiguracaoPasta_Boleto.asString) + '\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mPasta := mPasta + '_Matriz\'
      else
         mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger)+'\';
      If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
      }
      rBoleto.AllowPrintToFile := True;
      rBoleto.DeviceType       := dtPDF;
      rBoleto.ShowPrintDialog  := False;
      rBoleto.ShowCancelDialog := False;

      tPDF.SQL.Clear;
      tPDF.SQL.Add('SELECT *,');
      tPDF.SQL.Add('       Beneficiario        = (SELECT Nome         FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Nome                = (SELECT Nome_Boleto  FROM Bancos   WHERE Codigo = Banco ),');
      
      If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then
         tPDF.SQL.Add('       Imagem              = (SELECT Numero_Banco FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = Banco),')
      else
         tPDF.SQL.Add('       Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco),');

      tPDF.SQL.Add('       Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado),');
      tPDF.sql.Add('       Cliente_CNPJ        = (SELECT isnull(CNPJ,'''')+isnull(CPF,'''') FROM Clientes WHERE Codigo = Sacado),');
      tPDF.SQL.Add('       Pessoa              = iif((select isnull(CNPJ,'''') FROM Clientes WHERE Codigo = Sacado) <> '''', ''J'', ''F''),');
      tPDF.sql.Add('       Chave_PIX           = (SELECT Chave_PIX FROM Bancos WHERE Codigo = Banco)');
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

          with Dados do begin
               with Bancos do begin
                    sql.clear;
                    sql.add('select * from Bancos where Codigo = :pBanco');
                    parambyname('pBanco').asinteger := tPDF.FieldByName('Banco').AsInteger;
                    Open;
               end;
               with Empresas do begin 
                    sql.Clear;
                    sql.Add('select * from Empresas where Codigo = :pEmpresa');
                    ParamByName('pEmpresa').AsInteger := Bancos.fieldbyname('Empresa').asinteger;
                    open;
               end;

               mPasta := Trim(ConfiguracaoPasta_Boleto.AsString) + '\'+Trim(Trim(RemoveCaracter('.', '', EmpresasRazao_Social.AsString))) + iif(EmpresasMatriz_Filial.AsBoolean, '_Matriz', '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger));
               mPasta := RemoveCaracter('/', '', mPasta);
               mPasta := mPasta + iif(ConfiguracaoSeparar_BoletoBanco.AsBoolean, '\'+BancosNome.AsString, '');
               mPasta := mPasta + iif(ConfiguracaoSeparar_BoletoData.AsBoolean, '\'+ RemoveCaracter('/', '-', DateToStr(tPDF.FieldByName('Data_Emissao').AsDateTime)), '');
          end;
      
          If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
          
          mBenef               := RemoveCaracter('.', '', tPDF.FieldByName('Beneficiario').AsString);
          mBenef               := RemoveCaracter('/', '', mBenef);
          mBenef               := RemoveCaracter('\', '', mBenef);
          mArq                 := mBenef + '_Boleto '+ApenasNumeros(tPDF.FieldByName('Numero_Documento').AsString)+'_Titulo '+tPDF.fieldbyname('Financeiro_Numero').AsString+'.pdf';
          rBoleto.TextFileName := mPasta + '\' + mArq;

          rBoleto.Print;
          rBoleto.FreeOnRelease;
          rBoleto.Reset;

          tPDF.Close;

          Try
              If r = 6 then ShellExecute(Handle, 'Open', PChar(rBoleto.TextFileName), '', '', SW_ShowNormal);
          Except
              Showmessage('Falha na abertura do arquivo PDF.');
          End;    

          Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
          Application.ProcessMessages;
      End;

      bFiltraBoletosClick(Self);

      Janela_Processamento.Close;

      If r <> 6 then Showmessage('Boletos gerados com sucesso em '+mPasta);
end;

procedure TFinanceiro_BoletosGerar.Grade2KeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
var
  vlLinha: Integer;
  vTotal:real;
begin
     vTotal := 0;
     If (mSelecionou = true) and (Key = 16) and (Grade2.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal                  := Grade2.DataSource.DataSet.RecNo;
        Grade2.DataSource.DataSet.RecNo := mContador;
        vTotal := vTotal + roundto(Grade2.DataSource.DataSet.FieldByName('Valor_Documento').asfloat, -2);
        Repeat
             Grade2.SelectedRows.CurrentRowSelected := true;
             inc(vlLinha);
             vTotal := vTotal + roundto(Grade2.DataSource.DataSet.FieldByName('Valor_Documento').asfloat, -2);
             Grade2.DataSource.DataSet.Next
        until
             (Grade2.DataSource.DataSet.RecNo = mContadorFinal) or (tBoletos.Eof);
     End;
     cSel.Caption   := FormatFloat('0', Grade2.SelectedRows.Count);
     cTotal.Caption := FormatFloat(',##0.00', vTotal);
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TFinanceiro_BoletosGerar.Grade2CellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := Grade2.DataSource.DataSet.RecNo;
      End;
end;

procedure TFinanceiro_BoletosGerar.PageControl1Change(Sender: TObject);
begin
      bGerar.Enabled    := PageControl1.ActivePageIndex = 0;
      bImprimir.Enabled := PageControl1.ActivePageIndex = 1;
      bPDF.Enabled      := PageControl1.ActivePageIndex = 1;
      bEmail.Enabled    := PageControl1.ActivePageIndex = 1;
      bCancelar.Enabled := PageControl1.ActivePageIndex = 1;
      cSel.Caption := '0';
      cTotal.Caption := FormatFloat(',##0.00', 0);
end;

procedure TFinanceiro_BoletosGerar.bEmailClick(Sender: TObject);
Var
   mEnviar  : boolean;
   i        : integer;
   mMensagem
  ,mArqBol
  ,mNomeEmp: WideString;
   IdSMTP1 : TIdSMTP;
   EmailMSG: TIdMessage;
   TextoMsg: TidText;
   IdSSL   : TIdSSLIOHandlerSocketOpenSSL;
   img:TMemo;
   Stream1, Stream2 : TStream;
   s,f, doc, peds:widestring;
   Pan:TPanel;
begin
     idSMTP1 := nil;
     // Pegando a relação de itens selecionados no grid.
     if Grade2.SelectedRows.Count <= 0 then begin
        MessageDlg('Nenhum boleto selecionado para impressão.', mtInformation, [mbok], 0);
        Abort;
     end;
     if MessageDlg('Deseja enviar realmente todos os E-Mails selecionados para os clientes?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin 
        Abort;
     end;
     
     bEmail.Enabled := false;
     Cursor         := crHourGlass;
     pan            := TPanel.Create(self);
     with pan do begin
          Align         := alClient;
          Caption       := 'Enviando E-Mails...Aguarde';
          Font.Size     := 14;
          Font.Name     := 'Calibri';
          Font.color    := clwhite;
          Parent        := TabSheet2; 
          BorderStyle   := bsNone;
          styleElements := [seBorder];
          color         := $008A5E00;
          Visible       := true;
     end;
     
     s := '';
     for i := 0 to Grade2.SelectedRows.Count-1 do begin
         Grade2.DataSource.DataSet.GotoBookMark((Grade2.SelectedRows.Items[i]));
         s := s + tBoletos.FieldByName('Financeiro_Numero').AsString + ',';
     end;
     s := '('+Copy(s, 1, Length(s)-1)+')';
     f := s;

     with tBoletos do begin 
          sql.clear;
          sql.add('select *');
          sql.add('       ,Beneficiario        = (select Nome         from Clientes where Codigo = Sacado)');
          sql.add('       ,Nome                = (select Nome_Boleto  from Bancos   where Codigo = Banco)');
          if dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then
             sqL.Add('       ,Imagem              = (select Numero_Banco from Cybersoft_Cadastros.dbo.Bancos where Codigo = Banco)')
          else
             sqL.Add('       ,Imagem              = (select Numero_Banco from Bancos where Codigo = Banco)');
          sql.add('       ,cliente_Rua         = (select Rua          from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_Numero      = (select Rua_Numero   from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_Complemento = (select Complemento  from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_Bairro      = (select Bairro       from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_Municipio   = (select Municipio    from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_CEP         = (select CEP          from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_Estado      = (select Estado       from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_CNPJ        = (select isnull(CNPJ,'''')+isnull(CPF,'''') from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_Email       = (select Email        from Clientes where Codigo = Sacado)');
          sql.add('       ,Cliente_EmailCopia  = (select CAST(Email_Copia as varchar(500)) from Clientes where Codigo = Sacado)');
          sql.add('       ,Pessoa              = iif((select isnull(CNPJ,'''') from Clientes where Codigo = Sacado) <> '''', ''J'', ''F'') ');
          sql.Add('       ,Chave_PIX           = (SELECT Chave_PIX FROM Bancos WHERE Codigo = Banco)');
          sql.add('from   Boletos');
          sql.add('where  Financeiro_Numero in'+s);
          sql.add('order  by Pedido');
          //sql.SaveToFile('c:\temp\Boletos_Email.sql');
          open;
     end;
     Menu_Principal.IdAntiFreeze1.Active := true;
     mEnviar := true;

     With Dados do begin
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = '+InttoStr(Menu_Principal.mEmpresa));
               open;
               if (EmpresasEmail_Porta.AsInteger <= 0) then begin
                  Showmessage('E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
                  mEnviar := false;
               end;
               if (Trim(EmpresasEmail_SMTP.AsString) = '') then begin
                  Showmessage('E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
                  mEnviar := false;
               end;
               if (Trim(EmpresasEmail_ID.AsString) = '') then begin
                  Showmessage('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
                  mEnviar := false;
               end;
               if (Trim(EmpresasEmail_Senha.AsString) = '') then begin
                  Showmessage('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
                  mEnviar := false;
               end;
          end;

          mPasta := Trim(Dados.ConfiguracaoPasta_Boleto.AsString) + '\'+Trim(stringReplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
          If Dados.EmpresasMatriz_Filial.AsBoolean = true then
             mPasta := mPasta + '_Matriz\'
          else
             mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger)+'\';

          if not DirectoryExists(mPasta) then ForceDirectories(mPasta);
          
          if mEnviar = true then begin
             Progresso.Max      := Grade2.SelectedRows.Count;
             Progresso.Position := 0;
             lProgresso.Caption := 'Enviando boletos por E-Mail...';
             lProgresso.Visible := not lProgresso.Visible;
             Progresso.Visible  := not Progresso.Visible;
             with idSMTP1 do begin
                  IdSSL          := nil;
                  IdSMTP1        := TIdSMTP.create(nil);
                  ConnectTimeout := 10000;
                  ReadTimeout    := 10000;
                  Host           := Trim(EmpresasEmail_SMTP.AsString);
                  Username       := Trim(EmpresasEmail_ID.AsString);
                  Password       := Trim(EmpresasEmail_Senha.AsString);
             end;
             with EmailMSG do begin
                  EmailMSG     := TIdMessage.create(nil);
                  Clear;
                  CharSet      := 'iso-8859-1';
                  Encoding     := MeMIME;
                  ContentType  := 'multipart/related' ;
                  subject      := 'Boleto bancario';
                  from.address := idSMTP1.Username;
             end;
             
             // Converte a imagem do logo da empresa para base64 para adicionar corpo do email (Assinatura).
             img         := TMemo.Create(nil);
             img.Visible := False;
             img.Parent  := Financeiro_BoletosGerar;

             if fileexists(EmpresasLogo.AsString) then begin
                Stream1 := TIdReadFileExclusiveStream.Create(EmpresasLogo.AsString);
                try
                    Stream2 := TIdFileCreateStream.Create(ExtractFilePath(Application.ExeName)+'img.html');
                    try
                        TIdEncoderMIME.EncodeStream(Stream1, Stream2);
                    finally
                        Stream2.Free;
                    end;
                finally
                    Stream1.Free;
                end;
                img.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'img.html');
             end;
             
             // SSLOptions method.
             if Assigned(IdSSL) then begin
                if EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then IdSSL.SSLOptions.Method := sslvSSLv2;
                if EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then IdSSL.SSLOptions.Method := sslvSSLv23;
                if EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then IdSSL.SSLOptions.Method := sslvSSLv3;
                if EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then IdSSL.SSLOptions.Method := sslvTLSv1;
                if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then IdSSL.SSLOptions.Method := sslvTLSv1_1;
                if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then IdSSL.SSLOptions.Method := sslvTLSv1_2;

                IdSSL.SSLOptions.Mode := sslmClient;
             end;
             try
                idSMTP1.port      := EmpresasEmail_Porta.AsInteger;
                IdSSL             := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
                IdSMTP1.IOHandler := IdSSL;
                if EmpresasEmail_Criptografia.AsString = 'utNoTLSSupport'   then idSMTP1.UseTLS := utNoTLSSupport; 
                if EmpresasEmail_Criptografia.AsString = 'utUseExplicitTLS' then idSMTP1.UseTLS := utUseExplicitTLS; 
                if EmpresasEmail_Criptografia.AsString = 'utUseImplicitTLS' then idSMTP1.UseTLS := utUseImplicitTLS; 
                if EmpresasEmail_Criptografia.AsString = 'utUseRequireTLS'  then idSMTP1.UseTLS := utUseRequireTLS; 
             except on E: Exception do begin
                       idSMTP1.IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
                       idSMTP1.UseTLS    := utNoTLSSupport;
                    end;
             end;

             idSMTP1.AuthType := satNone;
             if EmpresasEmail_Autenticacao.AsBoolean then idSMTP1.AuthType := satDefault;
             idSMTP1.Connect;
             if not idSMTP1.Connected then begin
                cursor := crDefault;
                Showmessage('Falha na conexão, E-Mail não será enviado!'+#13+#13+'Verifique as configurações de E-Mail no cadastro da Empresa.');
                bEmail.Enabled := true;
                Abort;
             end;
             
             // Gerando E-Mails.
             tBoletos.First;
             while not tBoletos.eof do begin
                   if Trim(tBoletos.FieldByName('Cliente_Email').AsString) <> '' then begin
                      Pan.Caption := 'Aguarde, enviando E-Mails...'+ tBoletos.FieldByName('Beneficiario').asstring;
                      pan.Refresh;
                      with tTemp do begin
                           sql.clear;
                           sql.add('Select Nome, Email, Email_Copia from Clientes where Codigo = :pCod');
                           parambyname('pCod').value := tBoletos.FieldByName('Sacado').AsInteger;
                           open;
                           EmailMsg.recipients.emailaddresses := trim(FieldByName('Email').AsString);
                           EmailMsg.ccList.EMailAddresses     := trim(FieldByName('Email_Copia').AsString)+';'+trim(EmpresasEmail_Copia.AsString);

                           { Para testar envio sem usar email real }
                           //EmailMsg.recipie nts.emailaddresses := 'edervix@bol.com.br';
                           //EmailMsg.ccList.EMailAddresses      := 'eder@cybersoftsistemas.com.br;elismar@cybersoftsistemas.com.br';
                      end;
                      if trim(EmailMsg.Recipients.EMailAddresses) <> '' then begin
                         with TextoMsg do begin
                              EmailMSG.MessageParts.Clear;
                              textomsg := TIdText.Create(EmailMSG.MessageParts);
                              Body.Clear;

                              // Verifica se existe os arquivos para anexar.
                              with Bancos do begin
                                   sql.Clear;
                                   SQL.Add('select * from Bancos where Codigo = :pBanco');
                                   ParamByName('pBanco').AsInteger := tBoletos.FieldByName('Banco').AsInteger;
                                   Open;
                              end;
                              with tTemp do begin
                                   sql.clear;
                                   sql.Add('select Razao_Social, Matriz_Filial, Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pEmpresa');
                                   ParamByName('pEmpresa').AsInteger := Bancos.fieldbyname('Empresa').asinteger;
                                   open;
                              end;
                              // Anexa todos os boletos do mesmo pedido ao E-Mail.
                              s    := tBoletos.FieldByName('Pedido').AsString;
                              doc  := '';
                              peds := '';
                              EmailMSG.subject := 'Boleto bancario ref.ao pedido '+s;
                              while (tBoletos.FieldByName('Pedido').AsString = s) and (not tBoletos.eof) do begin
                                    mArqBol  := '';
                                    mNomeEmp := Trim(RemoveCaracter('.', '', tTemp.Fieldbyname('Razao_Social').AsString));
                                    mNomeEmp := RemoveCaracter('/', '', mNomeEmp);
                                    mArqBol  := Trim(ConfiguracaoPasta_Boleto.AsString) + '\'+mNomeEmp+iif(tTemp.fieldbyname('Matriz_Filial').AsBoolean, '_Matriz', '_Filial'+PoeZero(2, tTemp.fieldbyname('Numero_Filial').AsInteger));
                                    mArqBol  := mArqBol + iif(ConfiguracaoSeparar_BoletoBanco.AsBoolean, '\'+BancosNome.AsString, '');
                                    mArqBol  := mArqBol + iif(ConfiguracaoSeparar_BoletoData.AsBoolean, '\'+ RemoveCaracter('/', '-', DateToStr(tBoletos.FieldByName('Data_Emissao').value))+'\', '');
                                    mArqBol  := mArqBol + RemoveCaracter('.', '', tBoletos.FieldByName('Beneficiario').AsString)+ '_Boleto '+tBoletos.FieldByName('Numero_Documento').AsString+'_Titulo '+tBoletos.FieldByName('Financeiro_Numero').AsString+'.pdf';
                                    if FileExists(mArqBol) then begin
                                       TIdAttachmentFile.Create(EMailMSG.MessageParts, mArqBol);
                                    end;
                                    doc  := doc  + tBoletos.FieldByName('Numero_Documento2').AsString+' / ';
                                    peds := peds + concat('PEDIDO: ',tBoletos.FieldByName('Pedido').AsString, '<br>  VENCIMENTO: ', tBoletos.FieldByName('Data_Vencimento').AsString , '<br>  VALOR: ', formatfloat('#,##0.00', tBoletos.FieldByName('Valor_Documento').Ascurrency), '<br>');
                                    tBoletos.next;
                              end;
                            
                              ContentType := 'text/html';
                              Body.Add('<html><body>');
                              if cDias.Value = 0 then begin
                                 Body.Add('Segue boletos nº ' + doc);
                              end else begin
                                 Body.Add('Prezado cliente, Segue lembrete para pagamento de boleto nº ' + doc + '<br>');
                                 Body.Add('<br>');
                                 Body.Add(peds);
                              end;
                              Body.Add('<br>');
                              Body.Add('<br>');
                              Body.Add('<br>');
                              Body.Add('<br>');
                              Body.Add(Empresas.fieldbyname('Email_MsgBoleto').AsString + '<br>');
                              Body.Add('<br>');
                              Body.Add('<br>');
                              Body.Add('<H3>Depto.Financeiro</H3>');
                              Body.Add('Responsavel: '+EmpresasResponsavel.AsString+'<br>');
                              Body.Add('Função: '+EmpresasResponsavel_Funcao.AsString+'<br>');
                              Body.Add('Fone: '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone1.Text)+' / '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone2.Text)+'<br>');
                              Body.Add('E-mail: '+EmpresasEmail.asstring+'<br>');
                              Body.Add('Site: '+EmpresasSite.asstring+'<br>');
                              Body.Add('</body></html>');
                         end;

                         // Enviando o email.
                         idSMTP1.send(EmailMSG);
                         sleep(ConfiguracaoBoleto_IntervaloEmail.AsInteger * 1000);
                      end else begin
                         tBoletos.next;
                      end;
                   end;
                   Progresso.Position := Progresso.Position + 1;
                   Application.ProcessMessages;
             end;

             idSMTP1.Disconnect;
             EmailMSG.Free;
             IdSMTP1.Free;
             pan.Free;
             bEmail.Enabled := true;
          end;
     end;

     if idSMTP1.Connected then idSMTP1.Disconnect;
     Menu_Principal.IdAntiFreeze1.Active := false;

     with tTemp do begin
          sql.clear;
          sql.add('update Boletos set Email_Enviado = 1 where Financeiro_Numero in'+f);
          execute;
     end;
     
     ShowMessage('Todos os E-mails foram enviados!');
     lProgresso.Visible := not lProgresso.Visible;
     Progresso.Visible  := not Progresso.Visible;
     
     Filtra(0, true);

     Progresso.Position := 0;
     lProgresso.Caption := '';
     Cursor := crDefault;
end;

procedure TFinanceiro_BoletosGerar.bCancelarClick(Sender: TObject);
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

           for i := 0 to Grade2.SelectedRows.Count-1 do begin
               Grade2.DataSource.DataSet.GotoBookMark((Grade2.SelectedRows.Items[i]));

               Boletos.Locate('Registro', tBoletosRegistro.AsInteger, [loCaseInsensitive]);

               PagarReceber.SQL.Clear;
               PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
               PagarReceber.ParamByName('pNumero').AsInteger := Boletos.FieldByName('Financeiro_Numero').AsInteger;
               PagarReceber.Open;

               if PagarReceber.RecordCount > 0 then begin
                  PagarReceber.Edit;
                               PagarReceberBoleto_Numero.Clear;
                  PagarReceber.Post;
               end;   

               Boletos.Edit;
                       BoletosCancelado.Value := true;
               Boletos.Post;
           end;
           tBoletos.Refresh;
           tTitulos.Refresh;
      End;
end;

procedure TFinanceiro_BoletosGerar.Grade2DrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
{
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

           //TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).Columns[Datacol].Field, State);
           Grade2.DefaultDrawDataCell(Rect, TDbGrid(Sender).Columns[Datacol].Field, State);
           
           If (Column.FieldName = 'Cancelado') then begin
              With Grade2.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tBoletos.FieldByName('Cancelado').AsBoolean = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           
      End;
}
      With Dados do begin
           If Odd(tTitulos.RecNo) then
              Grade2.Canvas.Brush.Color := $00EEEEEE
           else
              Grade2.Canvas.Brush.Color := clWhite;

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
      End;
end;

procedure TFinanceiro_BoletosGerar.tBoletosAfterScroll(DataSet: TDataSet);
begin
      bCancelar.Enabled := (not tBoletos.FieldByName('Cancelado').AsBoolean);
end;



end.


