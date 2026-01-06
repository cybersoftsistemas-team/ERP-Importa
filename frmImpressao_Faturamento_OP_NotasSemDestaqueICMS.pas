unit frmImpressao_Faturamento_OP_NotasSemDestaqueICMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppReport, Vcl.StdCtrls, RxLookup, Vcl.ExtCtrls, Mask, RXCtrls, INIFiles, Funcoes, Buttons,
  RxToolEdit, MemDS, ppDB, ppDesignLayer, ppModule, raCodMod, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_OP_NotasSemDestaqueICMS = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cTipo: TRadioGroup;
    cModalidade: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cZebrado: TCheckBox;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cCliFor: TRxDBLookupCombo;
    lCliFor: TStaticText;
    cExcel: TCheckBox;
    rNotas: TppReport;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pNotas: TppDBPipeline;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppShape13: TppShape;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    lPeriodo: TppLabel;
    ppLabel13: TppLabel;
    ppLabel5: TppLabel;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppShape12: TppShape;
    ppLabel12: TppLabel;
    ppShape16: TppShape;
    ppLabel16: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText12: TppDBText;
    ppDBText6: TppDBText;
    ppDBText18: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape5: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    bLimpar: TBitBtn;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_OP_NotasSemDestaqueICMS: TImpressao_Faturamento_OP_NotasSemDestaqueICMS;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      With Dados do begin
           Configuracao.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Tipo, Processo');
           ProcessosDOC.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Descricao');
           TiposProcesso.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                     := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date            := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'DataIni'      , Date );
      cDataFim.Date            := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'DataFim'      , Date );
      cTipo.ItemIndex          := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Tipo'         , 0 );
      cModalidade.DisplayValue := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Modalidade'   , '' );
      cProcesso.DisplayValue   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Processo'     , '' );
      cCliFor.DisplayValue     := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'CliFor'       , '' );
      cZebrado.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Zebrado'      , True  );
      cExcel.Checked           := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Excel'        , True  );
      aINI.Free;

      lCliFor.Enabled     := cTipo.ItemIndex <> 0;
      cCliFor.Enabled     := cTipo.ItemIndex <> 0;

      If cTipo.ItemIndex = 1 then begin
         cCliFor.LookupSource := Dados.dsFornecedores;
         lCliFor.Caption      := 'Fornecedor';
      End;
      If cTipo.ItemIndex = 2 then begin
         cCliFor.LookupSource := Dados.dsClientes;
         lCliFor.Caption      := 'Cliente';
      End;
      lCliFor.Enabled            := cTipo.ItemIndex > 0;
      cCliFor.Enabled            := cTipo.ItemIndex > 0;
      cCliFor.LookupField        := 'Nome';
      cCliFor.LookupDisplay      := 'Codigo;CNPJ;Nome';
      cCliFor.LookupDisplayIndex := 2;
      cCliFor.LookupField        := 'Codigo';
end;

procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'DataIni' , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'DataFim' , cDataFim.Date );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Tipo'    , cTipo.ItemIndex );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Modalidade', cModalidade.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Processo', cProcesso.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'CliFor'  , cCliFor.Text );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Zebrado' , cZebrado.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTASSEMDESTAQUE', 'Excel'   , cExcel.Checked );
      aINI.Free;

      Impressao_Faturamento_OP_NotasSemDestaqueICMS.Release;
      Impressao_Faturamento_OP_NotasSemDestaqueICMS:= nil;
end;

procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.bImprimirClick(Sender: TObject);
begin
      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT Modalidade = (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE(PD.Processo = NF.Processo)))),');
      tNotas.SQL.Add('       Destinatario_Nome,');
      tNotas.SQL.Add('       Data_Emissao,');
      tNotas.SQL.Add('       Numero,');
      tNotas.SQL.Add('       Processo,');
      tNotas.SQL.Add('       Valor_TotalNota,');
      tNotas.SQL.Add('       Aliquota = CASE WHEN ISNULL((SELECT Imp_ContribuinteCheia FROM ICMS WHERE(UF = Destinatario_Estado)),0) > 0 THEN');
      tNotas.SQL.Add('                       (SELECT Imp_ContribuinteCheia FROM ICMS WHERE(UF = Destinatario_Estado))');
      tNotas.SQL.Add('                   ELSE');
      tNotas.SQL.Add('                       (SELECT Imp_Contribuinte      FROM ICMS WHERE(UF = Destinatario_Estado))');
      tNotas.SQL.Add('                   END,');
      tNotas.SQL.Add('       BCICMS = Valor_TotalProdutos,');
      tNotas.SQL.Add('       Valor_ICMS = CAST(0 AS money)');
      tNotas.SQL.Add('INTO   #Temp');
      tNotas.SQL.Add('FROM   NotasFiscais NF');
      tNotas.SQL.Add('WHERE ((SELECT Relatorio_DestaqueICMS FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1)');

      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text;

      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then  begin
         tNotas.SQL.Add('      AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
         tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If cTipo.ItemIndex = 1 then begin
         tNotas.SQL.Add('      AND (Saida_Entrada = 0)');
         If cCliFor.KeyValue <> null then tNotas.SQL.Add(' AND (Fornecedor_Codigo = '+ Trim(Dados.FornecedoresCodigo.AsString)+' )' );
         lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text;
      End;
      If cTipo.ItemIndex = 2 then begin
         tNotas.SQL.Add('      AND (Saida_Entrada = 1)');
         If cCliFor.KeyValue <> null then tNotas.SQL.Add(' AND (Cliente_Codigo = '+ Trim(Dados.ClientesCodigo.AsString)+' )' );
      End;
      If Trim(cProcesso.Text) <> ''   then tNotas.SQL.Add('      AND (Processo = '+QuotedStr(cProcesso.Text)+')' );
      If Trim(cModalidade.Text) <> '' then begin
         tNotas.SQL.Add('      AND( (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE(PD.Processo = NF.Processo)) = :pModalidade)');
         tNotas.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
         lPeriodo.Caption :=  lPeriodo.Caption + ' ('+Dados.TiposProcessoDescricao.AsString+') ';
      End;
      
      tNotas.SQL.Add('UPDATE #Temp SET Valor_ICMS = (BCICMS * (Aliquota/100))');
      tNotas.SQL.Add('SELECT * FROM #Temp');
      tNotas.SQL.Add('ORDER BY Modalidade, Processo, Destinatario_Nome');
      //tNotas.SQL.SaveToFile('c:\temp\NF_Sem_Destaque_ICMS.SQL');
      tNotas.Open;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
//      iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rNotas.Print;
      rNotas.Reset
end;


procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.cTipoClick(Sender: TObject);
begin
      If cTipo.ItemIndex = 1 then begin
         cCliFor.LookupSource := Dados.dsFornecedores;
         lCliFor.Caption      := 'Fornecedor';
      End;
      If cTipo.ItemIndex = 2 then begin
         cCliFor.LookupSource := Dados.dsClientes;
         lCliFor.Caption      := 'Cliente';
      End;
      lCliFor.Enabled            := cTipo.ItemIndex > 0;
      cCliFor.Enabled            := cTipo.ItemIndex > 0;
      cCliFor.LookupField        := 'Nome';
      cCliFor.LookupDisplay      := 'Codigo;CNPJ;Nome';
      cCliFor.LookupDisplayIndex := 2;
      cCliFor.LookupField        := 'Codigo';
end;

procedure TImpressao_Faturamento_OP_NotasSemDestaqueICMS.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cTipo.ItemIndex := 0;
      cModalidade.ClearValue;
      cProcesso.ClearValue;
      cCliFor.ClearValue;
end;

end.
