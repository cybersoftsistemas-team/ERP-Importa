unit frmImpressao_Faturamento_DetalhamentoPISCOFINS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, Mask, RXCtrls, IniFiles, Funcoes,
  RxCurrEdit, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppModule, raCodMod, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_DetalhamentoPISCOFINS = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cNatureza: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cNota: TCurrencyEdit;
    StaticText6: TStaticText;
    cProduto: TCurrencyEdit;
    cTipo: TRadioGroup;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    cCliente: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText8: TStaticText;
    rDetalhamentoPIS: TppReport;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    tTotais: TMSQuery;
    StaticText9: TStaticText;
    cAliquotaPIS: TCurrencyEdit;
    StaticText10: TStaticText;
    cAliquotaCOFINS: TCurrencyEdit;
    ppHeaderBand1: TppHeaderBand;
    ppShape15: TppShape;
    ppShape4: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppLabel14: TppLabel;
    ppShape19: TppShape;
    ppLabel21: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppLabel4: TppLabel;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine3: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine2: TppLine;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText11: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_DetalhamentoPISCOFINS: TImpressao_Faturamento_DetalhamentoPISCOFINS;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Codigo');
           Natureza.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Tipo = ''IMPORTAÇÃO'') ORDER BY Processo');
           ProcessosDOC.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;
           
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'DataIni'       , 0);
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'DataFim'       , 0);
      cTipo.ItemIndex       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Tipo'          , 2);
      cCliente.KeyValue     := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Cliente'       , 0);
      cFornecedor.KeyValue  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Fornecedor'    , 0);
      cNatureza.KeyValue    := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Natureza'      , '');
      cProcesso.KeyValue    := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Processo'      , '');
      cNota.Value           := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Nota'          , 0);
      cProduto.Value        := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Produto'       , 0);
      cZebrado.Checked      := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Zebrado'       , false);
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Excel'         , false);
      cAliquotaPIS.Value    := aINI.ReadFloat  ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'AliquotaPIS'   , 0);
      cAliquotaCOFINS.Value := aINI.ReadFloat  ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'AliquotaCOFINS', 0);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.cTipoClick(
  Sender: TObject);
begin
     If cTipo.ItemIndex = 0 then begin
        cCliente.Enabled    := false;
        cFornecedor.Enabled := true;
        cCliente.ClearValue;
     End;
     If cTipo.ItemIndex = 1 then begin
        cCliente.Enabled    := true;
        cFornecedor.Enabled := false;
        cFornecedor.ClearValue;
     End;
     If cTipo.ItemIndex = 2 then begin
        cFornecedor.Enabled := false;
        cCliente.Enabled    := false;
        cFornecedor.ClearValue;
        cCliente.ClearValue;
     End;   
end;

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Nota,');
      tItens.SQL.Add('       Data,');
      tItens.SQL.Add('       (SELECT Natureza_Codigo FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) AS Natureza,');
      tItens.SQL.Add('       Valor_Total,');
      tItens.SQL.Add('       Valor_BCICMSOper,');
      tItens.SQL.Add('       Valor_ICMSOPer,');
      tItens.SQL.Add('       Aliquota_IPI,');
      tItens.SQL.Add('       Total_IPI,');
      tItens.SQL.Add('       Aliquota_PIS,');
      tItens.SQL.Add('       Valor_PIS,');
      tItens.SQL.Add('       Aliquota_COFINS,');
      tItens.SQL.Add('       Valor_COFINS,');
      tItens.SQL.Add('       Processo,');
      tItens.SQL.Add('       (SELECT Destinatario_Nome FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) AS Destinatario');
      tItens.SQL.Add('FROM   NotasItens');
      tItens.SQL.Add('WHERE  (Nota IS NOT NULL) AND (Cancelada <> 1) AND (NFE_Denegada <> 1) AND (Aliquota_PIS > 0)');

      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tItens.SQL.Add('  AND (Data BETWEEN :pDataIni AND :pDataFim)');
         tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
         lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text ;
      End;
      If cNatureza.Text <> '' then begin
         tItens.SQL.Add('AND ((SELECT Natureza_Codigo FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) = :pNatureza) ');
         tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
         lPeriodo.Caption := lPeriodo.Caption + '  Natureza: '+Dados.NaturezaCodigo.AsString;
      End;
      If cProcesso.Text <> '' then begin
         tItens.SQL.Add('AND (NotasItens.Processo = :pProcesso)');
         tItens.ParamByName('pProcesso').AsString := Dados.ProcessosDOCProcesso.AsString;
         lPeriodo.Caption := lPeriodo.Caption + '  Processo: '+Dados.ProcessosDOCProcesso.AsString;
      End;
      If cNota.Value > 0 then begin
         tItens.SQL.Add('AND (Nota = :pNota)');
         tItens.ParamByName('pNota').AsInteger := cNota.AsInteger;
         lPeriodo.Caption := lPeriodo.Caption + '  Nota: '+cNota.Text;
      End;
      If cProduto.Value > 0 then begin
         tItens.SQL.Add('AND (Codigo_Mercadoria = :pProduto)');
         tItens.ParamByName('pProduto').AsInteger :=cProduto.AsInteger;
         lPeriodo.Caption := lPeriodo.Caption + '  Produto: '+cProduto.Text;
      End;
      If Trim(cCliente.Text) <> '' then begin
         tItens.SQL.Add('AND ((SELECT Cliente_Codigo FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) = :pCliente) ');
         tItens.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         lPeriodo.Caption := lPeriodo.Caption + '  Cliente: '+Dados.ClientesNome.Text;
      End;
      If Trim(cFornecedor.Text) <> '' then begin
         tItens.SQL.Add('AND ((SELECT Fornecedor_Codigo FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) = :pFornecedor) ');
         tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
         lPeriodo.Caption := lPeriodo.Caption + '  Fornecedor: '+Dados.FornecedoresNome.Text;
      End;
      If cAliquotaPIS.Value > 0 then begin
         tItens.SQL.Add('AND (Aliquota_PIS = :pAliquotaPIS)');
         tItens.ParamByName('pAliquotaPIS').AsFloat := cAliquotaPIS.Value;
         lPeriodo.Caption := lPeriodo.Caption + '  Alíquota PIS: '+cAliquotaPIS.Text;
      End;
      If cAliquotaCOFINS.Value > 0 then begin
         tItens.SQL.Add('AND (Aliquota_COFINS = :pAliquotaCOFINS)');
         tItens.ParamByName('pAliquotaCOFINS').AsFloat := cAliquotaCOFINS.Value;
         lPeriodo.Caption := lPeriodo.Caption + '  Alíquota COFINS: '+cAliquotaCOFINS.Text;
      End;
      If cTipo.ItemIndex < 2 then begin
         tItens.SQL.Add('AND (NotasItens.Saida_Entrada = :pTipo)');
         tItens.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
         If cTipo.ItemIndex = 0 then
            lPeriodo.Caption := lPeriodo.Caption + '  (Entradas)'
         else
            lPeriodo.Caption := lPeriodo.Caption + '  (Saídas)';
      End;

      if cTipo.ItemIndex <> 1 then begin
         tItens.SQL.Add('UNION ALL');
         tItens.SQL.Add('SELECT Nota,');
         tItens.SQL.Add('       Data_Entrada,');
         tItens.SQL.Add('       Natureza_Codigo,');
         tItens.SQL.Add('       Valor_Liquido,');
         tItens.SQL.Add('       Valor_BCICMSOper,');
         tItens.SQL.Add('       Valor_ICMSOPer,');
         tItens.SQL.Add('       Aliquota_IPI,');
         tItens.SQL.Add('       Valor_IPI,');
         tItens.SQL.Add('       Aliquota_PIS,');
         tItens.SQL.Add('       Valor_PIS,');
         tItens.SQL.Add('       Aliquota_COFINS,');
         tItens.SQL.Add('       Valor_COFINS,');
         tItens.SQL.Add('       Processo,');
         tItens.SQL.Add('       (SELECT Nome FROM Fornecedores FRN WHERE Codigo = Fornecedor) AS Destinatario');
         tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
         tItens.SQL.Add('WHERE  (Nota IS NOT NULL) AND (Aliquota_PIS > 0)');

         If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
            tItens.SQL.Add('  AND (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
            tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
            tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
         End;
         If cNatureza.Text <> '' then begin
            tItens.SQL.Add('AND Natureza_Codigo = :pNatureza) ');
            tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
         End;
         If cProcesso.Text <> '' then begin
            tItens.SQL.Add('AND (NotasItens.Processo = :pProcesso)');
            tItens.ParamByName('pProcesso').AsString := Dados.ProcessosDOCProcesso.AsString;
         End;
         If cNota.Value > 0 then begin
            tItens.SQL.Add('AND (Nota = :pNota)');
            tItens.ParamByName('pNota').AsInteger := cNota.AsInteger;
         End;
         If cProduto.Value > 0 then begin
            tItens.SQL.Add('AND (Codigo_Mercadoria = :pProduto)');
            tItens.ParamByName('pProduto').AsInteger :=cProduto.AsInteger;
         End;
         If Trim(cFornecedor.Text) <> '' then begin
            tItens.SQL.Add('AND Fornecedor = :pFornecedor) ');
            tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
         End;
         If cAliquotaPIS.Value > 0 then begin
            tItens.SQL.Add('AND (Aliquota_PIS = :pAliquotaPIS)');
            tItens.ParamByName('pAliquotaPIS').AsFloat := cAliquotaPIS.Value;
         End;
         If cAliquotaCOFINS.Value > 0 then begin
            tItens.SQL.Add('AND (Aliquota_COFINS = :pAliquotaCOFINS)');
            tItens.ParamByName('pAliquotaCOFINS').AsFloat := cAliquotaCOFINS.Value;
         End;
      end;
      tItens.SQL.Add('ORDER BY Aliquota_PIS, Nota');
      //tItens.SQL.SaveToFile('c:\temp\Relacao_Itens_PIS_COFINS.sql');
      tItens.Open;

      if Dados.EmpresasMatriz_Filial.AsBoolean then
         lPeriodo.Caption := lPeriodo.Caption + ' - (MATRIZ). '
      else
         lPeriodo.Caption := lPeriodo.Caption + ' - (FILIAL '+Dados.EmpresasNumero_Filial.AsString+')';

      Screen.Cursor := crDefault;

      lFaixa.Visible := cZebrado.Checked;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rDetalhamentoPIS.Print;
         rDetalhamentoPIS.FreeOnRelease;
         rDetalhamentoPIS.Reset;
      end else begin
         //ExportaEXCEL;
      End;
end;

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Tipo'   , cTipo.ItemIndex);
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'DataIni', cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'DataFim', cDataFim.Date);

      If Trim(cCliente.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Cliente', cCliente.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Cliente', 0);

      If Trim(cFornecedor.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Fornecedor', cFornecedor.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Fornecedor', 0);

      If Trim(cNatureza.Text)   <> '' then
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Natureza'  , cNatureza.KeyValue)
      else
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Natureza'  , '');

      If Trim(cProcesso.Text)   <> '' then
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Processo'  , cProcesso.KeyValue)
      else
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Processo'  , '');

      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Nota'          , cNota.AsInteger);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Produto'       , cProduto.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Zebrado'       , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'Excel'         , cExcel.Checked);
      aINI.WriteFloat  ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'AliquotaPIS'   , cAliquotaPIS.Value);
      aINI.WriteFloat  ('IMPRESSAO_FATURAMENTO_DETALHE_PIS', 'AliquotaCOFINS', cAliquotaCOFINS.Value);
      aINI.Free;

      Impressao_Faturamento_DetalhamentoPISCOFINS.Release;
      Impressao_Faturamento_DetalhamentoPISCOFINS := nil;
end;

procedure TImpressao_Faturamento_DetalhamentoPISCOFINS.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = true then lFaixa.Visible := not lFaixa.Visible;
end;

end.
