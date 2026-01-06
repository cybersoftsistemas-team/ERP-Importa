unit frmImpressao_FinanceirosOP_Cambio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, RxLookup, Mask,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppReport, ppDBPipe, DB, DBAccess, MSAccess, Math, INIFIles,
  RxToolEdit, ppDB, MemDS, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_Cambio = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cTipo: TRadioGroup;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    cProcesso: TRxDBLookupCombo;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    rFinanceiro_Cambio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel29: TppLabel;
    lPeriodo: TppLabel;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    lValorTaxaContrato: TppDBText;
    lValorContratoME: TppDBText;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    tCambio: TMSQuery;
    pEmpresas: TppDBPipeline;
    ppCambio: TppDBPipeline;
    dstCambio: TDataSource;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppShape3: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel13: TppLabel;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    Cabecalho_GrupoContrato: TppGroupHeaderBand;
    Rodape_GrupoContrato: TppGroupFooterBand;
    ppLabel4: TppLabel;
    lTotalVariacaoME: TppVariable;
    ppDBText1: TppDBText;
    ppDBText18: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText25: TppDBText;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    lTotalVariacaoReal: TppVariable;
    lTotalValorPGME: TppVariable;
    lTotalValorPGReal: TppVariable;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    lTotalVariacao: TppVariable;
    cSaltar: TCheckBox;
    lValorContratoReal: TppVariable;
    lTipoVariacao: TppLabel;
    ppLabel22: TppLabel;
    ppDBText3: TppDBText;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    ppLabel23: TppLabel;
    lCliente: TppLabel;
    ppLine4: TppLine;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lTotalVariacaoMECalc(Sender: TObject; var Value: Variant);
    procedure bImprimirClick(Sender: TObject);
    procedure Rodape_GrupoContratoAfterPrint(Sender: TObject);
    procedure lTotalVariacaoRealCalc(Sender: TObject; var Value: Variant);
    procedure lTotalValorPGMECalc(Sender: TObject; var Value: Variant);
    procedure lTotalValorPGRealCalc(Sender: TObject; var Value: Variant);
    procedure lTotalVariacaoCalc(Sender: TObject; var Value: Variant);
    procedure rFinanceiro_CambioBeforePrint(Sender: TObject);
    procedure lValorContratoRealCalc(Sender: TObject; var Value: Variant);
    procedure Rodape_GrupoContratoBeforePrint(Sender: TObject);
    procedure lAtrasoCalc(Sender: TObject; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    aINI : TIniFile;
  end;

var
  Impressao_FinanceirosOP_Cambio: TImpressao_FinanceirosOP_Cambio;

implementation

uses frmDados, FUNCOES, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_Cambio.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_Cambio.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_Cambio.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_CAMBIO', 'Tipo'       , cTipo.ItemIndex );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Saltar'     , cSaltar.Checked );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_CAMBIO', 'DataIni'    , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_CAMBIO', 'DataFim'    , cDataFim.Date );
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Processo'   , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'CentroCusto', cCentroCusto.Text);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Banco'      , cBanco.Text);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Fornecedor' , cFornecedor.Text);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Cliente'    , cCliente.Text);
      aINI.Free;

      Impressao_FinanceirosOP_Cambio.Release;
      Impressao_FinanceirosOP_Cambio := nil;
end;

procedure TImpressao_FinanceirosOP_Cambio.lTotalVariacaoMECalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + RoundTo(tCambio.FieldByName('Variacao_ME').AsCurrency, -2);
end;

procedure TImpressao_FinanceirosOP_Cambio.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      tCambio.SQL.Clear;
      tCambio.SQL.ADD('SELECT ContratoCambio.Numero,');
      tCambio.SQL.ADD('       ContratoCambio.Data,');
      tCambio.SQL.ADD('       ContratoCambio.Tipo,');
      tCambio.SQL.ADD('       (SELECT Nome FROM Bancos WHERE(Bancos.Codigo = ContratoCambio.Banco)) AS Banco,');
      tCambio.SQL.ADD('       ContratoCambio.Total_ME,');
      tCambio.SQL.ADD('       ContratoCambio.DI,');
      tCambio.SQL.ADD('       ContratoCambio.Processo,');
      tCambio.SQL.ADD('       (SELECT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = ContratoCambio.Exportador)) AS Exportador,');
      tCambio.SQL.ADD('       ContratoCambio.Moeda AS Codigo_Moeda,');
      tCambio.SQL.ADD('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Cybersoft_Cadastros.dbo.Moedas.Codigo = ContratoCambio.Moeda)) AS Nome_Moeda,');
      tCambio.SQL.ADD('       ContratoCambio.Taxa_Cambial AS Taxa_Contrato,');
      tCambio.SQL.ADD('       PagarReceberBaixas.Data AS Data_PG,');
      tCambio.SQL.ADD('       PagarReceberBaixas.Valor AS Valor_PG_Real,');
      tCambio.SQL.ADD('       CASE WHEN PagarReceberBaixas.Taxa_FechamentoCambio > 0 THEN (PagarReceberBaixas.Valor / PagarReceberBaixas.Taxa_FechamentoCambio) ELSE 0 END AS Valor_PG_ME ,');
      tCambio.SQL.ADD('       PagarReceberBaixas.Forma_Tipo AS Forma_PG,');
      tCambio.SQL.ADD('       PagarReceberBaixas.Taxa_Data AS Data_Fechamento,');
      tCambio.SQL.ADD('       PagarReceberBaixas.Taxa_FechamentoCambio AS Taxa_Fechamento,');
      tCambio.SQL.ADD('       PagarReceber.Valor_Documento,');
      tCambio.SQL.ADD('       (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceber.Numero_Documento = ContratoCambio.Numero AND PagarReceberBaixas.Numero = PagarReceber.Numero)) AS Total_Baixas,');
      tCambio.SQL.ADD('       CASE WHEN PagarReceberBaixas.Taxa_FechamentoCambio > 0 THEN PagarReceberBaixas.Valor-((PagarReceberBaixas.Valor / PagarReceberBaixas.Taxa_FechamentoCambio) * ContratoCambio.Taxa_Cambial) ELSE 0 END AS Variacao_Real,');
      tCambio.SQL.ADD('       CASE WHEN PagarReceberBaixas.Taxa_FechamentoCambio > 0 THEN');
      tCambio.SQL.ADD('                 (((PagarReceberBaixas.Valor / ContratoCambio.Taxa_Cambial) * PagarReceberBaixas.Taxa_FechamentoCambio)-PagarReceberBaixas.Valor)/PagarReceberBaixas.Taxa_FechamentoCambio ELSE 0 END AS Variacao_ME,');
      tCambio.SQL.ADD('       CASE WHEN');
      tCambio.SQL.ADD('            (SELECT (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(Numero = PagarReceber.Numero))+(SELECT SUM(Desconto) FROM PagarReceber WHERE(Numero = PagarReceberBaixas.Numero))-(SELECT SUM(Juros) ');
      tCambio.SQL.ADD('            FROM PagarReceber WHERE(Numero = PagarReceberBaixas.Numero))) >= PagarReceber.Valor_Documento THEN ''FECHADO'' ELSE ''ABERTO'' ');
      tCambio.SQL.ADD('       END AS Situacao,');
      tCambio.SQL.ADD('       PagarReceber.Data_Vencimento,');
      tCambio.SQL.ADD('       '''' AS Modalidade,');
      tCambio.SQL.ADD('       CASE WHEN (SELECT Vencimento_Cambio FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ContratoCambio.Processo)) = 0 THEN');
      tCambio.SQL.ADD('            ''A VISTA''');
      tCambio.SQL.ADD('       ELSE');
      tCambio.SQL.ADD('            CAST((SELECT Vencimento_Cambio FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ContratoCambio.Processo)) AS varchar(10))');
      tCambio.SQL.ADD('       END AS Cambio_Prazo,');
      tCambio.SQL.ADD('       (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ContratoCambio.Processo)) AS Data_DI,');
      tCambio.SQL.ADD('       (SELECT DATEDIFF(DAY, ContratoCambio.Data_Vencimento, PagarReceberBaixas.Data)) AS Atraso,');
      tCambio.SQL.ADD('       (SELECT Cliente FROM ProcessosDocumentos WHERE(Processo = ContratoCambio.Processo)) AS Cliente,');
      tCambio.SQL.ADD('       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(Processo = ContratoCambio.Processo))))');
      tCambio.SQL.ADD('FROM  ContratoCambio, PagarReceber, PagarReceberBaixas');
      tCambio.SQL.ADD('WHERE (ContratoCambio.Data BETWEEN :pDataIni AND :pDataFim) AND (PagarReceber.Nivel <= :pNivel)');
      tCambio.SQL.ADD('      AND (PagarReceber.Numero_Documento = ContratoCambio.Numero AND PagarReceber.Processo = ContratoCambio.Processo) AND (PagarReceberBaixas.Numero = PagarReceber.Numero)');

      // Abertos.
      If cTipo.ItemIndex = 0 then begin
         tCambio.SQL.ADD(' AND ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero_ContratoCambio = ContratoCambio.Numero)),0) < ROUND((ContratoCambio.Total_ME * ContratoCambio.Taxa_Cambial),2)');
      End;
      // Fechados.
      If cTipo.ItemIndex = 1 then begin
         tCambio.SQL.ADD(' AND ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero_ContratoCambio = ContratoCambio.Numero)),0) >= ROUND((ContratoCambio.Total_ME * ContratoCambio.Taxa_Cambial), 2)');
      End;
      // Processo.
      If Trim(cProcesso.Text) <> '' then begin
         tCambio.SQL.ADD(' AND (ContratoCambio.Processo = :pProcesso)');
         tCambio.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
      End;
      // Centro Custo.
      If Trim(cCentroCusto.Text) <> '' then begin
         tCambio.SQL.ADD(' AND (PagarReceber.Centro_Custo = :pCentroCusto)');
         tCambio.ParamByName('pCentroCusto').AsString := Trim(Dados.CentroCustoCodigo.AsString);
      End;
      // Banco.
      If Trim(cBanco.Text) <> '' then begin
         tCambio.SQL.ADD(' AND (PagarReceberBaixas.Banco = :pBanco)');
         tCambio.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
      End;
      // Fornecedor.
      If Trim(cFornecedor.Text) <> '' then begin
         tCambio.SQL.ADD(' AND (PagarReceber.Fornecedor = :pFornecedor)');
         tCambio.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
      End;
      // Cliente.
      lCliente.Caption := '* TODOS *';
      If Trim(cCliente.Text) <> '' then begin
         tCambio.SQL.ADD(' AND ((SELECT Cliente FROM ProcessosDocumentos WHERE(Processo = ContratoCambio.Processo)) = :pCliente)');
         tCambio.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         lCliente.Caption := Dados.ClientesNome.AsString;
      End;

      tCambio.SQL.ADD('ORDER BY Exportador, PagarReceber.Processo, DI, PagarReceberBaixas.Data');
      tCambio.ParamByName('pDataIni').AsDate  := cDataIni.Date;
      tCambio.ParamByName('pDataFim').AsDate  := cDataFim.Date;
      tCambio.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
      tCambio.Open;

      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+ cDataFim.Text;

      Screen.Cursor := crDefault;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rFinanceiro_Cambio.Print;
      rFinanceiro_Cambio.Reset;
end;

procedure TImpressao_FinanceirosOP_Cambio.Rodape_GrupoContratoAfterPrint(Sender: TObject);
begin
      lTotalVariacaoME.Value   := 0;
      lTotalVariacaoReal.Value := 0;
      lTotalVariacaoReal.Value := 0;
      lTotalValorPGME.Value    := 0;
      lTotalValorPGReal.Value  := 0;
end;

procedure TImpressao_FinanceirosOP_Cambio.lTotalVariacaoRealCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + RoundTo(tCambio.FieldByName('Variacao_Real').AsCurrency, -2);
end;

procedure TImpressao_FinanceirosOP_Cambio.lTotalValorPGMECalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + RoundTo(tCambio.FieldByName('Valor_PG_ME').AsCurrency, -2);
end;

procedure TImpressao_FinanceirosOP_Cambio.lTotalValorPGRealCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + RoundTo(tCambio.FieldByName('Valor_PG_Real').AsCurrency, -2);
end;

procedure TImpressao_FinanceirosOP_Cambio.lTotalVariacaoCalc(Sender: TObject; var Value: Variant);
begin
      Value := lTotalValorPGReal.Value - lValorContratoReal.Value;
end;

procedure TImpressao_FinanceirosOP_Cambio.rFinanceiro_CambioBeforePrint(Sender: TObject);
begin
      rFinanceiro_Cambio.Groups[0].NewPage :=  cSaltar.Checked;
end;

procedure TImpressao_FinanceirosOP_Cambio.lValorContratoRealCalc(Sender: TObject; var Value: Variant);
begin
      Value := tCambio.FieldByName('Total_ME').AsCurrency * tCambio.FieldByName('Taxa_Contrato').AsFloat; 
end;

procedure TImpressao_FinanceirosOP_Cambio.Rodape_GrupoContratoBeforePrint(Sender: TObject);
begin
      If lTotalVariacao.Value > 0 then lTipoVariacao.Caption := '(PASSIVA)';
      If lTotalVariacao.Value < 0 then lTipoVariacao.Caption := '(ATIVA)';
      lTipoVariacao.Visible := lTotalVariacao.Value <> 0;
end;

procedure TImpressao_FinanceirosOP_Cambio.lAtrasoCalc(Sender: TObject;var Value: Variant);
begin
     Value := DifDias(tCambio.FieldByName('Data_DI').AsDateTime, tCambio.FieldByName('Atraso').AsDateTime);
end;

procedure TImpressao_FinanceirosOP_Cambio.FormShow(Sender: TObject);

begin
       // Carregando as ultimas opções utilizadas no relatório como default.
       aINI                      := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
       cTipo.ItemIndex           := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_CAMBIO', 'Tipo'       , 2 );
       cSaltar.Checked           := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Saltar'     , false );
       cDataIni.Date             := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_CAMBIO', 'DataIni'    , Date );
       cDataFim.Date             := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_CAMBIO', 'DataFim'    , Date );
       cProcesso.DisplayValue    := aINI.ReadString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Processo'   , '' );
       cCentroCusto.DisplayValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'CentroCusto', '' );
       cBanco.DisplayValue       := aINI.ReadString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Banco'      , '' );
       cFornecedor.DisplayValue  := aINI.ReadString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Fornecedor' , '' );
       cCliente.DisplayValue     := aINI.ReadString ('IMPRESSAO_FINANCEIROS_CAMBIO', 'Cliente'    , '' );
       aINI.Free;

       With Dados do begin
            ProcessosDOC.SQL.Clear;
            ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
            ProcessosDOC.Open;

            CentroCusto.SQL.Clear;
            CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
            CentroCusto.Open;

            Bancos.SQL.Clear;
            Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
            Bancos.Open;

            Fornecedores.SQL.Clear;
            Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
            Fornecedores.Open;

            Clientes.SQL.Clear;
            Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
            Clientes.Open;
       End;
end;

procedure TImpressao_FinanceirosOP_Cambio.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.ClearValue;
      cFornecedor.ClearValue;
      cCentroCusto.ClearValue;
      cBanco.ClearValue;
      cCliente.ClearValue;
end;

end.
