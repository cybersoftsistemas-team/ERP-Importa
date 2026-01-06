unit frmImpressao_FaturamentoOP_EstoqueResumido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppCtrls, ppBands, ppMemo,
  ppClass, ppVar, ppReport, Vcl.StdCtrls, Mask, Buttons, Vcl.ExtCtrls, RxLookup, RXCtrls, IniFiles, Funcoes, system.UITypes, RxCurrEdit, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppStrtch, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd;

type
  TImpressao_FaturamentoOP_EstoqueResumido = class(TForm)
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TBitBtn;
    cData: TDateEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    cCodigoProduto: TCurrencyEdit;
    cANP: TCheckBox;
    cExcel: TCheckBox;
    cReciclavel: TCheckBox;
    rEstoqueResumido: TppReport;
    ppHeaderBand1: TppHeaderBand;
    lTitulo: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppGroup2: TppGroup;
    gCab_Produto: TppGroupHeaderBand;
    ppLabel10: TppLabel;
    ppDBText19: TppDBText;
    ppDBText10: TppDBText;
    gRodaPeProduto: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pEmpresas: TppDBPipeline;
    tNatureza: TMSQuery;
    dsNatureza: TDataSource;
    tDestinatario: TMSQuery;
    tDestinatarioFisica_Juridica: TStringField;
    tDestinatarioCNPJ_CPF: TStringField;
    tDestinatarioNome: TStringField;
    dstDestinatario: TDataSource;
    bPesquisaCEP: TSpeedButton;
    tPesquisa: TMSQuery;
    cSaldo: TCheckBox;
    ppDBText1: TppDBText;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    ppDBMemo1: TppDBMemo;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBText3: TppDBText;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cCodigoProdutoChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: WideString;
  end;

var
  Impressao_FaturamentoOP_EstoqueResumido: TImpressao_FaturamentoOP_EstoqueResumido;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_FaturamentoOP_EstoqueResumido.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           tNatureza.SQL.Clear;
           tNatureza.SQL.Add('SELECT *');
           tNatureza.SQL.Add('FROM Cybersoft_Cadastros.dbo.Natureza');
           tNatureza.SQL.Add('WHERE (SELECT COUNT(*) FROM NotasFiscais WHERE(Natureza_Codigo = Codigo))+(SELECT COUNT(*) FROM NotasTerceiros WHERE(Natureza_Codigo = Codigo)) > 0');
           tNatureza.SQL.Add('ORDER BY Descricao_NF');
           tNatureza.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Codigo IN((SELECT DISTINCT Tipo_Nota FROM NotasFiscais))');
           TipoNota.Open;

           tDestinatario.SQL.Clear;
           tDestinatario.SQL.Add('SELECT CASE WHEN CNPJ <> '''' THEN ''J'' ELSE ''F'' END AS Fisica_Juridica,');
           tDestinatario.SQL.Add('       CASE WHEN CNPJ <> '''' THEN CAST(CNPJ AS VARCHAR(18)) ELSE CAST(CPF AS VARCHAR(18)) END AS CNPJ_CPF,');
           tDestinatario.SQL.Add('       Nome');
           tDestinatario.SQL.Add('INTO #Temp');
           tDestinatario.SQL.Add('FROM Fornecedores');
           tDestinatario.SQL.Add('UNION ALL');
           tDestinatario.SQL.Add('SELECT CASE WHEN CNPJ <> '''' THEN ''J'' ELSE ''F'' END AS Fisica_Juridica,');
           tDestinatario.SQL.Add('       CASE WHEN CNPJ <> '''' THEN CAST(CNPJ AS VARCHAR(18)) ELSE CAST(CPF AS VARCHAR(18)) END AS CNPJ_CPF,');
           tDestinatario.SQL.Add('       Nome');
           tDestinatario.SQL.Add('FROM Clientes WHERE(CNPJ NOT IN(SELECT CNPJ FROM Fornecedores))');
           tDestinatario.SQL.Add('UPDATE #Temp SET CNPJ_CPF = SUBSTRING(CNPJ_CPF,1,2) + ''.'' + SUBSTRING(CNPJ_CPF,3,3) + ''.'' + SUBSTRING(CNPJ_CPF,6,3) + ''/'' + SUBSTRING(CNPJ_CPF,9,4) + ''-'' +SUBSTRING(CNPJ_CPF,13,2)');
           tDestinatario.SQL.Add('WHERE Fisica_Juridica = ''J''');
           tDestinatario.SQL.Add('UPDATE #Temp SET CNPJ_CPF = SUBSTRING(CNPJ_CPF,1,3) + ''.'' + SUBSTRING(CNPJ_CPF,4,3) + ''.'' + SUBSTRING(CNPJ_CPF,7,3) + ''-'' + SUBSTRING(CNPJ_CPF,10,2)');
           tDestinatario.SQL.Add('WHERE Fisica_Juridica = ''F''');
           tDestinatario.SQL.Add('SELECT * FROM #Temp ORDER BY Nome');
           tDestinatario.SQL.Add('DROP TABLE #Temp');
           tDestinatario.Open;

           // Carregando as ultimas opções utilizadas no relatório como default.
           aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
           cData.Date             := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Data'        , Date);
           cCodigoProduto.Value   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Produto'     , 0);
           cProcesso.KeyValue     := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Processo'    , '');
           cExcel.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Excel'       , false);
           cReciclavel.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Reciclavel'  , false);
           cANP.Checked           := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'ANP'         , false);
           cSaldo.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Saldo'       , false);

           If Trim(RemoveCaracter('/', '', cData.Text)) = '' then cData.Date := Date;
      End;
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_FaturamentoOP_EstoqueResumido.bPesquisaCEPClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      mPesquisa := InputBox('Pesquisar Produto', 'Codigo/Descrição:', mPesquisa);
      If Dados.Produtos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         If Dados.Produtos.Locate('Codigo_Fabricante', mPesquisa, [loCaseInsensitive]) = False then begin
            If Dados.Produtos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]) = false then begin
               tPesquisa.SQL.Clear;
               tPesquisa.SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+mPesquisa+'%')+')');
               tPesquisa.Open;
               Dados.Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
            end;
         End;
      End;
      cCodigoProduto.Value := Dados.ProdutosCodigo.AsInteger;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FaturamentoOP_EstoqueResumido.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FaturamentoOP_EstoqueResumido.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FaturamentoOP_EstoqueResumido.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Data'     , cData.Date);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Produto'  , cCodigoProduto.AsInteger);
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Processo' , cProcesso.Text);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Excel'     , cExcel.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Reciclavel', cReciclavel.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'ANP'       , cANP.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE_RESUMIDO', 'Saldo'     , cSaldo.Checked);
      aINI.Free;

      tNatureza.Close;
      tItens.Close;
      tDestinatario.Close;
      
      FecharTabelas(Dados, nil, nil, nil);

      Impressao_FaturamentoOP_EstoqueResumido.Release;
      Impressao_FaturamentoOP_EstoqueResumido := nil;
end;

procedure TImpressao_FaturamentoOP_EstoqueResumido.cCodigoProdutoChange(Sender: TObject);
begin
      If Dados.Produtos.Locate('Codigo', cCodigoProduto.AsInteger, [loCaseInsensitive]) = true then
         cProduto.DisplayValue := Dados.ProdutosDescricao_Reduzida.AsString
      else
         cProduto.ClearValue;
end;

procedure TImpressao_FaturamentoOP_EstoqueResumido.bImprimirClick(Sender: TObject);
begin
      If Trim(RemoveCaracter('/', '', cData.Text)) = '' then begin
         Showmessage('Data invalida!'+#13+#13+'É necessário Informar uma para o relatório.');
         Abort;
      End;

      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT NI.Codigo_Mercadoria AS Codigo,');
      tItens.SQL.Add('       NI.Processo');
      tItens.SQL.Add('INTO   #Temp');
      tItens.SQL.Add('FROM   NotasItens NI');
      tItens.SQL.Add('WHERE  (NI.Cancelada <> 1) AND (NI.Movimenta_Estoque = 1) AND (ISNULL(NI.Nfe_Denegada,0) = 0)');

      If Trim(RemoveCaracter('/', '', cData.Text)) <> '' then begin
         tItens.SQL.Add('       AND (NI.Data <= :pData)');
         tItens.ParamByName('pData').AsDate := cData.Date;
      End;
      If cCodigoProduto.Value > 0 then begin
         tItens.SQL.Add('       AND (NI.Codigo_Mercadoria = :pProduto)');
         tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
      End;
      If Trim(cProcesso.Value) <> '' then begin
         tItens.SQL.Add('       AND (NI.Processo = :pProcesso)');
         tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
      End;
      If cANP.Checked = true then begin
         tItens.SQL.Add('       AND (SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) <> '''' ');
      End;
      If cReciclavel.Checked = true then begin
         tItens.SQL.Add('       AND (SELECT Reciclavel FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) = 1 ');
      End;

      tItens.SQL.Add('GROUP BY Codigo_Mercadoria, Processo');
      tItens.SQL.Add('SELECT Codigo,');
      tItens.SQL.Add('       Codigo_Fabricante = (SELECT Codigo_Fabricante FROM Produtos WHERE(Produtos.Codigo = #Temp.Codigo)),');
      tItens.SQL.Add('       Processo,');
      tItens.SQL.Add('       Descricao       = (SELECT Descricao FROM Produtos WHERE(Produtos.Codigo = #Temp.Codigo)),');
      tItens.SQL.Add('       NCM             = (SELECT NCM FROM Produtos WHERE(Produtos.Codigo = #Temp.Codigo)),');
      tItens.SQL.Add('       Unidade_Volumes = (SELECT Quantidade_Volumes FROM Produtos WHERE(Produtos.Codigo = #Temp.Codigo)),');
      tItens.SQL.Add('       Unidade_Medida  = (SELECT Unidade_Origem FROM Produtos WHERE(Produtos.Codigo = #Temp.Codigo)),');
      tItens.SQL.Add('       Quantidade_Volumes = (SELECT Quantidade_Volumes FROM Produtos WHERE(Produtos.Codigo = #Temp.Codigo)),');
      tItens.SQL.Add('       Saldo           = ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE(NI.Codigo_Mercadoria = #Temp.Codigo) AND (NI.Saida_Entrada = 0) AND (NI.Processo = #Temp.Processo) AND (NI.Cancelada <> 1) AND (ISNULL(NI.Nfe_Denegada, 0) = 0)');
      tItens.SQL.Add('                                 AND (NI.Movimenta_Estoque = 1) AND (Finalidade_Mercadoria IN(0,2)))-');
      tItens.SQL.Add('                         (SELECT SUM(Quantidade) FROM NotasItens NI WHERE(NI.Codigo_Mercadoria = #Temp.Codigo) AND (NI.Saida_Entrada = 1) AND (NI.Processo = #Temp.Processo) AND (NI.Cancelada <> 1) AND (ISNULL(NI.Nfe_Denegada,0) = 0)');
      tItens.SQL.Add('                                 AND (NI.Movimenta_Estoque = 1) AND (Finalidade_Mercadoria IN(0,2))),0),');
      tItens.SQL.Add('       Volumes         = 0');
      tItens.SQL.Add('INTO #Temp2');
      tItens.SQL.Add('FROM #Temp');
      tItens.SQL.Add('UPDATE #Temp2 SET Volumes = Saldo / Unidade_Volumes');

      If cSaldo.Checked = true then
         tItens.SQL.Add('SELECT * FROM #Temp2 WHERE Saldo > 0')
      else
         tItens.SQL.Add('SELECT * FROM #Temp2');

      tItens.SQL.Add('ORDER BY Codigo,Processo');
      tItens.SQL.Add('DROP TABLE #Temp, #Temp2');
      tItens.SQL.SavetoFile('c:\temp\Posicao_EstoqueResumido.SQL');
      titens.Open;

      lTitulo.Caption := 'Posição de estoque em '+cData.Text;

      If tItens.RecordCount <> 0 then begin
         If cExcel.Checked = false then begin
            if FileExists(Dados.EmpresasLogo.Value) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            end;
            //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            rEstoqueResumido.Print;
            rEstoqueResumido.FreeOnRelease;
            rEstoqueResumido.Reset;
         end else begin
            //ExportaEXCEL;
         End;
      end else begin
         MessageDlg('Não há informações para o relatório solicitado!', mtInformation, [mbOk], 0);
      End;
end;

end.
