unit frmImpressao_Estoque_Lote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDB, ppDBPipe, ppParameter, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, RxLookup, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, Buttons, DB, MemDS, DBAccess, MSAccess, ppStrtch, ppMemo, Funcoes, IniFIles, RxCurrEdit, RxToolEdit;

type
  TImpressao_Estoque_Lote = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    iJatoTinta: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cDataValIni: TDateEdit;
    rLote: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppLine7: TppLine;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine38: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppLine27: TppLine;
    ppDBText5: TppDBText;
    ppLine40: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine23: TppLine;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine24: TppLine;
    ppParameterList1: TppParameterList;
    Ded_Pagina: TppParameter;
    pEmpresas: TppDBPipeline;
    pLotes: TppDBPipeline;
    tLotes: TMSQuery;
    dstLotes: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppLine26: TppLine;
    ppLine2: TppLine;
    ppLine22: TppLine;
    ppLine31: TppLine;
    ppLabel18: TppLabel;
    ppDBText4: TppDBText;
    ppLine32: TppLine;
    ppLabel19: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppLine8: TppLine;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine9: TppLine;
    ppDBText11: TppDBText;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppLine12: TppLine;
    ppDBMemo1: TppDBMemo;
    pTotalEntra: TppDBCalc;
    pTotalSai: TppDBCalc;
    ppDBText8: TppDBText;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine16: TppLine;
    ppLabel9: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    pSaldo: TppVariable;
    pSaldoTotal: TppVariable;
    StaticText4: TStaticText;
    cDataValFim: TDateEdit;
    StaticText5: TStaticText;
    cDataNFEntIni: TDateEdit;
    StaticText7: TStaticText;
    cDataNFEntFim: TDateEdit;
    StaticText8: TStaticText;
    cLote: TRxDBLookupCombo;
    cValidade: TRadioGroup;
    cExcel: TCheckBox;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    bLimpar: TButton;
    cDias: TCurrencyEdit;
    ppDBText3: TppDBText;
    cCodigo: TCurrencyEdit;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    pTotalEntraLote: TppDBCalc;
    pTotalSaiLote: TppDBCalc;
    ppLine25: TppLine;
    ppLine28: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    pSaldoLote: TppVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    lPeriodo: TppLabel;
    cSaldo: TCheckBox;
    StaticText2: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText3: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pSaldoCalc(Sender: TObject; var Value: Variant);
    procedure pSaldoTotalCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cValidadeClick(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure pSaldoLoteCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand2AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Estoque_Lote: TImpressao_Estoque_Lote;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Estoque_Lote.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
     With Dados do begin
          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao');
          Produtos.Open;

          ProdutosDetalhe.SQL.Clear;
          ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE ISNULL(Lote,'''') <> '''' ');
          ProdutosDetalhe.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Codigo IN(SELECT DISTINCT Fornecedor FROM Produtos WHERE Fornecedor IS NOT NULL)');
          Fornecedores.Open;

          Fabricantes.SQL.Clear;
          Fabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE Codigo IN(SELECT DISTINCT Fabricante FROM Produtos WHERE Fabricante IS NOT NULL)');
          Fabricantes.Open;
     End;
     
     // Carregando as ultimas opções utilizadas no relatório como default.
     aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cDataValIni.Date     := aINI.ReadDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataValidadeIni'  , 0);
     cDataValFim.Date     := aINI.ReadDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataValidadeFim'  , 0);
     cDataNFEntIni.Date   := aINI.ReadDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataEntradaIni'   , 0);
     cDataNFEntFim.Date   := aINI.ReadDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataEntradaFim'   , 0);
     cValidade.ItemIndex  := aINI.ReadInteger('IMPRESSAO_ESTOQUE_LOTE', 'Validade'         , 2);
     cLote.KeyValue       := aINI.ReadString ('IMPRESSAO_ESTOQUE_LOTE', 'Lote'             , '');
     cProduto.Value       := aINI.ReadString ('IMPRESSAO_ESTOQUE_LOTE', 'Produto'          , '');
     cCodigo.Value        := aINI.ReadInteger('IMPRESSAO_ESTOQUE_LOTE', 'Codigo'           , 0);
     cExcel.Checked       := aINI.ReadBool   ('IMPRESSAO_ESTOQUE_LOTE', 'Excel'            , false);
     cSaldo.Checked       := aINI.ReadBool   ('IMPRESSAO_ESTOQUE_LOTE', 'Saldo'            , false);
     aINI.Free;
end;

procedure TImpressao_Estoque_Lote.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If ppDetailBand1.Count mod 2 = 0 then
         ppDetailBand1.Background1.Brush.Color := clWhite
      else
         ppDetailBand1.Background1.Brush.Color := clSilver;
end;

procedure TImpressao_Estoque_Lote.bImprimirClick(Sender: TObject);
begin
     With Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          tLotes.SQL.Clear;
          tLotes.SQL.Add('-- ENTRADAS.');
          tLotes.SQL.Add('SELECT Produto      = Produto_Codigo');
          tLotes.SQL.Add('      ,Codigo_Fab   = (SELECT Codigo_Fabricante FROM Produtos WHERE Codigo = Produto_Codigo)');
          tLotes.SQL.Add('      ,Produto_Desc = CAST((SELECT REPLACE(Descricao, ''<{''+CAST(Produto_Codigo AS VARCHAR(15))+''}>'', '''') FROM Produtos WHERE Codigo = Produto_Codigo) AS VARCHAR(250))');
          tLotes.SQL.Add('      ,Lote         = LTRIM(RTRIM(Lote))');
          tLotes.SQL.Add('      ,Destinatario = CASE WHEN (SELECT Destinatario_Nome FROM NotasFiscais WHERE Numero = Nota_Entrada AND Data_Emissao = Data_Entrada) <> '''' THEN');
          tLotes.SQL.Add('                          (SELECT Destinatario_Nome FROM NotasFiscais WHERE Numero = Nota_Entrada AND Data_Emissao = Data_Entrada)');
          tLotes.SQL.Add('                      ELSE');
          tLotes.SQL.Add('                          (SELECT DISTINCT Nome FROM Fornecedores WHERE Codigo = (SELECT DISTINCT Fornecedor FROM NotasTerceiros WHERE Nota = Nota_Entrada AND Data_Entrada = Data_Entrada AND ISNULL(Servico, '''') = ''''))');
          tLotes.SQL.Add('                      END');
          tLotes.SQL.Add('      ,Nota_Entra   = Nota_Entrada');
          tLotes.SQL.Add('      ,Data_Entra   = CONVERT(VARCHAR(12), Data_Entrada,103)');
          tLotes.SQL.Add('      ,Qtde_Entra   = Quantidade_Entrada');
          tLotes.SQL.Add('      ,Nota_Saida   = null');
          tLotes.SQL.Add('      ,Data_Saida   = null');
          tLotes.SQL.Add('      ,Qtde_Saida   = 0');
          tLotes.SQL.Add('      ,Data_Val     = CONVERT(VARCHAR(12), Data_Validade,103)');
          tLotes.SQL.Add('      ,Processo');
          tLotes.SQL.Add('      ,Saida_Entrada= 0');
          tLotes.SQL.Add('FROM  ProdutosDetalhe');
          tLotes.SQL.Add('WHERE Registro IS NOT NULL');

          If Trim(cProduto.DisplayValue) <> '' then begin
             tLotes.SQL.Add('  AND Produto_Codigo = '+ProdutosCodigo.AsString);
          End;
          If Trim(cLote.DisplayValue) <> '' then begin
             tLotes.SQL.Add('  AND Lote = '+QuotedStr(ProdutosDetalheLote.Text));
          End;
          If (not DataLimpa(cDataValIni.Text)) and (not DataLimpa(cDataValFim.Text)) then begin
             tLotes.SQL.Add('  AND Data_Validade   BETWEEN :pDataValIni   AND :pDataValFim');
             tLotes.ParamByName('pDataValIni').AsDate := cDataValIni.Date;
             tLotes.ParamByName('pDataValFim').AsDate := cDataValFim.Date;
          End;
          If (not DataLimpa(cDataNFEntIni.Text)) and (not DataLimpa(cDataNFEntFim.Text)) then begin
             tLotes.SQL.Add('  AND Data_Entrada    BETWEEN :pDataNFEntIni AND :pDataNFEntFim');
             tLotes.ParamByName('pDataNFEntIni').AsDate := cDataNFEntIni.Date;
             tLotes.ParamByName('pDataNFEntFim').AsDate := cDataNFEntFim.Date;
          End;
          If cValidade.ItemIndex = 1 then begin
             tLotes.SQL.Add('  AND Data_Validade >= GETDATE()');
          End;
          If cValidade.ItemIndex = 2 then begin
             tLotes.SQL.Add('  AND Data_Validade < GETDATE()');
          End;
          If (cValidade.ItemIndex = 3) and (cDias.AsInteger > 0) then begin
             tLotes.SQL.Add('  AND DATEDIFF(DayOfYear, GETDATE(), Data_Validade) = '+cDias.Text);
          End;

          if cSaldo.Checked then begin
             tLotes.SQL.Add('  AND (ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosDetalhe PD2 WHERE PD2.Produto_Codigo = ProdutosDetalhe.Produto_Codigo), 0) -');
             tLotes.SQL.Add('      ISNULL((SELECT SUM(Quantidade) FROM  NotasItensDetalhe NID WHERE NID.Produto_Codigo = ProdutosDetalhe.Produto_Codigo AND  Saida_Entrada = 1), 0)) > 0');
          end;

          tLotes.SQL.Add('--SAÍDAS.');
          tLotes.SQL.Add('UNION ALL');
          tLotes.SQL.Add('SELECT Produto      = Produto_Codigo');
          tLotes.SQL.Add('      ,Codigo_Fab   = (SELECT Codigo_Fabricante FROM Produtos WHERE Codigo = Produto_Codigo)');
          tLotes.SQL.Add('      ,Produto_Desc = CAST((SELECT REPLACE(Descricao, ''<{''+CAST(Produto_Codigo AS VARCHAR(15))+''}>'', '''') FROM Produtos WHERE Codigo = Produto_Codigo) AS VARCHAR(250))');
          tLotes.SQL.Add('      ,Lote         = LTRIM(RTRIM(Lote))');
          tLotes.SQL.Add('      ,Destinatario = (SELECT Destinatario_Nome FROM NotasFiscais WHERE Numero = Nota AND NID.Data_Emissao = NID.Data_Emissao)');
          tLotes.SQL.Add('      ,Nota_Entra   = null');
          tLotes.SQL.Add('      ,Data_Entra   = null');
          tLotes.SQL.Add('      ,Qtde_Entra   = 0');
          tLotes.SQL.Add('      ,Nota_Saida   = Nota');
          tLotes.SQL.Add('      ,Data_Saida   = CONVERT(VARCHAR(12), Data_Emissao, 103)');
          tLotes.SQL.Add('      ,Qtde_Saida   = Quantidade');
          tLotes.SQL.Add('      ,Data_Val     = null');
          tLotes.SQL.Add('      ,Processo     = (SELECT DISTINCT Processo FROM NotasItens NI WHERE NI.Nota = NID.Nota AND NI.Codigo_Mercadoria = NID.Produto_Codigo)');
          tLotes.SQL.Add('      ,Saida_Entrada');
          tLotes.SQL.Add('FROM  NotasItensDetalhe NID');
          tLotes.SQL.Add('WHERE Saida_Entrada = 1');
          tLotes.SQL.Add('  AND ISNULL(Cancelada, 0) <> 1');
          tLotes.SQL.Add('  AND ISNULL(Denegada, 0)  <> 1');
          If Trim(cProduto.DisplayValue) <> '' then begin
             tLotes.SQL.Add('  AND Produto_Codigo = '+ProdutosCodigo.AsString);
          End;
          If Trim(cLote.DisplayValue) <> '' then begin
             tLotes.SQL.Add('  AND Lote = '+QuotedStr(ProdutosDetalheLote.Text));
          End;
          If (not DataLimpa(cDataValIni.Text)) and (not DataLimpa(cDataValFim.Text)) then begin
             tLotes.SQL.Add('  AND (SELECT DISTINCT Data_Validade FROM ProdutosDetalhe WHERE Lote = :pLote AND ISNULL(Data_Validade, '''') <> '''') BETWEEN :pDataValIni AND :pDataValFim');
             tLotes.ParamByName('pDataValIni').AsDate := cDataValIni.Date;
             tLotes.ParamByName('pDataValFim').AsDate := cDataValFim.Date;
          End;
          If (not DataLimpa(cDataNFEntIni.Text)) and (not DataLimpa(cDataNFEntFim.Text)) then begin
             tLotes.SQL.Add('  AND Data_Emissao >= :pDataNFSaiIni');
             tLotes.ParamByName('pDataNFSaiIni').AsDate := cDataNFEntIni.Date;
          End;
          If cValidade.ItemIndex = 1 then begin
             tLotes.SQL.Add('  AND (SELECT DISTINCT Data_Validade FROM ProdutosDetalhe PD WHERE PD.Lote = NID.Lote AND PD.Produto_Codigo = NID.Produto_Codigo) >= GETDATE()');
          End;
          If cValidade.ItemIndex = 2 then begin
             tLotes.SQL.Add('  AND (SELECT DISTINCT Data_Validade FROM ProdutosDetalhe PD WHERE PD.Lote = NID.Lote AND PD.Produto_Codigo = NID.Produto_Codigo) < GETDATE()');
          End;
          If (cValidade.ItemIndex = 3) and (cDias.AsInteger > 0) then begin
             tLotes.SQL.Add('  AND DATEDIFF(DayOfYear, GETDATE(), (SELECT DISTINCT Data_Validade FROM ProdutosDetalhe PD WHERE PD.Lote = NID.Lote AND PD.Produto_Codigo = NID.Produto_Codigo)) = '+cDias.Text);
          End;
          if cSaldo.Checked then begin
             tLotes.SQL.Add('  AND (ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosDetalhe PD2 WHERE PD2.Produto_Codigo = NID.Produto_Codigo), 0) -');
             tLotes.SQL.Add('      ISNULL((SELECT SUM(Quantidade) FROM  NotasItensDetalhe NI2 WHERE NI2.Produto_Codigo = NID.Produto_Codigo AND Saida_Entrada = 1), 0)) > 0');
          end;
          tLotes.SQL.Add('ORDER BY Produto,Lote, Saida_Entrada');
          //tLotes.SQL.SaveToFile('c:\temp\Controle_Lotes.sql');
          tLotes.Open;
     End;

     iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

     lPeriodo.Clear;
     lPeriodo.Caption := 'Validade ('+cValidade.Items[cValidade.ItemIndex];
     If cValidade.ItemIndex = 3 then begin
        lPeriodo.Caption := lPeriodo.Caption + ' ' +cDias.Text + ' dias.';
     end;   
     lPeriodo.Caption := lPeriodo.Caption + ')';
     if not DataLimpa(cDataValIni.Text) then begin
        lPeriodo.Caption := lPeriodo.Caption + ' / Com Data Val. '+cDataValIni.Text + ' á ' + cDataValFim.Text;
     end;
     if not DataLimpa(cDataNFEntIni.Text) then begin
        lPeriodo.Caption := lPeriodo.Caption + ' / Com Data NF Ent. em '+cDataNFEntIni.Text + ' á ' + cDataNFEntFim.Text;
     end;

     rLote.Reset;
     rLote.Print;
     rLote.FreeOnRelease;
end;

procedure TImpressao_Estoque_Lote.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Estoque_Lote.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_LOTE', 'Validade'       , cValidade.ItemIndex);
      aINI.WriteDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataValidadeIni', cDataValIni.Date);
      aINI.WriteDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataValidadeFim', cDataValFim.Date);
      aINI.WriteDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataEntradaIni' , cDataNFEntIni.Date);
      aINI.WriteDate   ('IMPRESSAO_ESTOQUE_LOTE', 'DataEntradaFim' , cDataNFEntFim.Date);
      aINI.WriteBool   ('IMPRESSAO_ESTOQUE_LOTE', 'Excel'          , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_ESTOQUE_LOTE', 'Saldo'          , cSaldo.Checked);
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_LOTE', 'Codigo'         , cCodigo.AsInteger);

      If Trim(cProduto.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_ESTOQUE_LOTE', 'Produto'   , cProduto.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_ESTOQUE_LOTE', 'Produto'   , 0);

      If Trim(cLote.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_ESTOQUE_LOTE', 'Lote', cLote.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_ESTOQUE_LOTE', 'Lote', 0);

      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      LimpaMemoria;

      Impressao_Estoque_Lote.Release;
      Impressao_Estoque_Lote := nil;
end;

procedure TImpressao_Estoque_Lote.pSaldoCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + tLotes.FieldByName('Qtde_Entra').Value - tLotes.FieldByName('Qtde_Saida').Value;
end;

procedure TImpressao_Estoque_Lote.pSaldoTotalCalc(Sender: TObject;var Value: Variant);
begin
     pSaldoTotal.Value := pTotalEntra.Value - pTotalSai.Value;
end;

procedure TImpressao_Estoque_Lote.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Estoque_Lote.bLimparClick(Sender: TObject);
begin
      cDataValIni.Clear;
      cDataValFim.Clear;
      cDataNFEntIni.Clear;
      cDataNFEntFim.Clear;
      cValidade.ItemIndex := 0;
      cProduto.KeyValue   := '';
      cLote.KeyValue      := '';
end;


procedure TImpressao_Estoque_Lote.cValidadeClick(Sender: TObject);
begin
      cDias.Enabled := cValidade.ItemIndex = 3;
end;

procedure TImpressao_Estoque_Lote.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
      pSaldo.Value     := 0;
      pSaldoLote.Value := 0;
end;

procedure TImpressao_Estoque_Lote.cCodigoChange(Sender: TObject);
begin
      if Dados.Produtos.Active then begin
         Dados.Produtos.Locate('Codigo', cCodigo.AsInteger, [loCaseInsensitive]);
         cProduto.KeyValue := cCodigo.AsInteger;
      end;
end;

procedure TImpressao_Estoque_Lote.pSaldoLoteCalc(Sender: TObject;var Value: Variant);
begin
     pSaldoLote.Value := pTotalEntraLote.Value - pTotalSaiLote.Value;
end;

procedure TImpressao_Estoque_Lote.ppGroupFooterBand2AfterPrint(Sender: TObject);
begin
     pSaldo.Value     := 0;
     pSaldoLote.Value := 0;
end;

end.



















