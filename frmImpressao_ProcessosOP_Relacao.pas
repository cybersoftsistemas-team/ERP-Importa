unit frmImpressao_ProcessosOP_Relacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, IniFiles, ppDBPipe,
  ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, ppVar, DB, DBAccess, MSAccess, RxLookup, Funcoes,
  Mask, myChkBox, ComObj, Maskutils,
  RxToolEdit, MemDS, ppDB, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ProcessosOP_Relacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    rRelacaoProcesso: TppReport;
    pProcessos: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    rRelacaoProcessos: TppFooterBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape15: TppShape;
    ppLabel17: TppLabel;
    ppShape19: TppShape;
    ppLabel23: TppLabel;
    pEmpresas: TppDBPipeline;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText25: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    StaticText3: TStaticText;
    tOrigens: TMSQuery;
    StaticText4: TStaticText;
    tVia: TMSQuery;
    ppSummaryBand1: TppSummaryBand;
    ppVariable3: TppVariable;
    ppLabel6: TppLabel;
    ppVariable4: TppVariable;
    cLibera: TRadioGroup;
    cCanal: TRadioGroup;
    StaticText5: TStaticText;
    cSituacao: TRadioGroup;
    cModalidade: TRxDBLookupCombo;
    cIncentivo: TRxDBLookupCombo;
    cOrigem: TComboBox;
    StaticText6: TStaticText;
    cTipo: TComboBox;
    cCliente: TRxDBLookupCombo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    lTotalCliente_ME: TppVariable;
    ppLabel7: TppLabel;
    lTotalCliente_Real: TppVariable;
    lCliente: TppLabel;
    ppLine3: TppLine;
    ppShape6: TppShape;
    StaticText7: TStaticText;
    cResponsavel: TRxDBLookupCombo;
    cDataProcessoIni: TDateEdit;
    StaticText8: TStaticText;
    cDataDIIni: TDateEdit;
    StaticText9: TStaticText;
    cDataProcessoFim: TDateEdit;
    cDataDIFim: TDateEdit;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    cAtivacao: TRadioGroup;
    cDataRegistroIni: TDateEdit;
    StaticText12: TStaticText;
    cDataRegistroFim: TDateEdit;
    StaticText13: TStaticText;
    ppShape8: TppShape;
    ppLabel9: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppShape9: TppShape;
    ppLabel10: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    myDBCheckBox3: TmyDBCheckBox;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    tProc: TMSQuery;
    dstProcessos: TDataSource;
    ppShape13: TppShape;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    cDocumento: TRadioGroup;
    cExcel: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cVia: TRxDBLookupCombo;
    StaticText14: TStaticText;
    cUFDesemb: TRxDBLookupCombo;
    ppShape16: TppShape;
    ppLabel14: TppLabel;
    ppDBText7: TppDBText;
    StaticText15: TStaticText;
    cRefCliente: TEdit;
    StaticText16: TStaticText;
    cProcesso: TRxDBLookupCombo;
    tProcessos: TMSQuery;
    dstProc: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure bImprimirClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
    procedure lTotalCliente_MECalc(Sender: TObject; var Value: Variant);
    procedure lTotalCliente_RealCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Relacao: TImpressao_ProcessosOP_Relacao;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmDMDespacho, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Relacao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Relacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Impressao_ProcessosOP_Relacao.Release;
      Impressao_ProcessosOP_Relacao := nil;
end;

procedure TImpressao_ProcessosOP_Relacao.bSairClick(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Modalidade' , cModalidade.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Incentivo'  , cIncentivo.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Origem'     , cOrigem.Text);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P04', 'Via'        , iif(cVia.KeyValue >= 0, cVia.KeyValue, -1));
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Cliente'    , cCliente.Text);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P04', 'Libera'     , cLibera.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P04', 'Situacao'   , cSituacao.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P04', 'Canal'      , cCanal.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P04', 'Documento'  , cDocumento.ItemIndex);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Tipo'       , cTipo.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Responsavel', cResponsavel.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Desemb'     , cUFDesemb.Text);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P04', 'Excel'      , cExcel.Checked);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'RefCliente' , cRefCliente.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P04', 'Processo'   , cProcesso.Text);
      aINI.Free;
      Close;
end;

procedure TImpressao_ProcessosOP_Relacao.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal, dmDespacho do begin
           Empresas.SQL.Clear;
           Empresas.SQL.add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY NOME');
           IncentivosFiscais.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           tOrigens.SQL.Clear;
           tOrigens.SQL.Add('SELECT DISTINCT Origem FROM ProcessosDocumentos WHERE(Origem IS NOT NULL)');
           tOrigens.Open;
           While not tOrigens.Eof do begin
                 cOrigem.Items.Add(tOrigens.FieldByName('Origem').AsString);
                 tOrigens.Next;
           End;
          
           ViaTransporte.SQL.Clear;
           ViaTransporte.SQL.Add('SELECT * FROM ViaTransporte ORDER BY Descricao');
           ViaTransporte.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(Cliente IS NOT NULL)))');
           Clientes.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE(Ativo = 1)');
           Usuarios.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados where Codigo in(SELECT DISTINCT UF_Desembaraco FROM '+Dados.EmpresasBanco_Dados.AsString+'.dbo.ProcessosDocumentos)');
           //Estados.SQL.SavetoFile('c:\temp\Estados.sql');
           Estados.Open;

           with tProc do begin
                sql.Clear;
                sql.add('select Processo, Processo_mestre from ProcessosDocumentos where isnull(Processo, '''') <> '''' order by Processo');
                open;
           end;
      End;
      Screen.Cursor := crDefault;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                     := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cModalidade.DisplayValue := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Modalidade' , '');
      cIncentivo.DisplayValue  := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Incentivo'  , '');
      cOrigem.Text             := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Origem'     , '');
      cVia.KeyValue            := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P04', 'Via'        , -1);
      cCliente.DisplayValue    := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Cliente'    , '');
      cLibera.ItemIndex        := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P04', 'Libera'     , 2);
      cSituacao.ItemIndex      := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P04', 'Situacao'   , 2);
      cCanal.ItemIndex         := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P04', 'Canal'      , 4);
      cDocumento.ItemIndex     := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P04', 'Documento'  , 2);
      cTipo.Text               := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Tipo'       , '');
      cResponsavel.DisplayValue:= aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Responsavel', '');
      cUFDesemb.DisplayValue   := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Responsavel', '');
      cExcel.Checked           := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P04', 'Excel'      , false);
      cRefCliente.text         := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'RefCliente', '');
      cProcesso.keyvalue       := aINI.ReadString ('IMPRESSAO_PROCESSOS_P04', 'Processo', '');
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_Relacao.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
      With Dados do begin
           Value := tProcessos.FieldByName('Fob').AsCurrency + tProcessos.FieldByName('Frete').AsCurrency + tProcessos.FieldByName('Seguro').AsCurrency;
      End;
end;

procedure TImpressao_ProcessosOP_Relacao.ppVariable2Calc(Sender: TObject;var Value: Variant);
begin
      With Dados do begin
           Value := tProcessos.FieldByName('Fob_ME').AsCurrency + tProcessos.FieldByName('Frete_ME').AsCurrency + tProcessos.FieldByName('Seguro_ME').AsCurrency;
      End;
end;

procedure TImpressao_ProcessosOP_Relacao.bImprimirClick(Sender: TObject);
begin
       With Dados do begin
            Empresas.Open;
            
            tProcessos.SQL.Clear;
            tProcessos.SQL.Add('SELECT Processo_Mestre,');
            tProcessos.SQL.Add('       Processo,');
            tProcessos.SQL.Add('       Cliente,');
            tProcessos.SQL.Add('       Cliente_Nome = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
            tProcessos.SQL.Add('       Processo_Abertura,');
            tProcessos.SQL.Add('       Numero_Declaracao,');
            tProcessos.SQL.Add('       DA,');
            tProcessos.SQL.Add('       CASE WHEN DA = 1 THEN ''X'' ELSE '''' END AS DA_SIMNAO,');
            tProcessos.SQL.Add('       Entreposto,');
            tProcessos.SQL.Add('       CASE WHEN Entreposto = 1 THEN ''X'' ELSE '''' END AS EA_SIMNAO,');
            tProcessos.SQL.Add('       Courrier,');
            tProcessos.SQL.Add('       CASE WHEN Courrier = 1 THEN ''X'' ELSE '''' END AS Courrier_SIMNAO,');
            tProcessos.SQL.Add('       Exportador = (SELECT Nome FROM Fornecedores WHERE(Codigo = ProcessosDocumentos.Fornecedor)),');
            tProcessos.SQL.Add('       Data_RegistroDeclaracao,');
            tProcessos.SQL.Add('       Data_DesembaracoDeclaracao,');
            tProcessos.SQL.Add('       Origem,');
            tProcessos.SQL.Add('       FOB,');
            tProcessos.SQL.Add('       Frete,');
            tProcessos.SQL.Add('       Seguro,');
            tProcessos.SQL.Add('       FOB_ME,');
            tProcessos.SQL.Add('       Frete_ME,');
            tProcessos.SQL.Add('       Seguro_ME,');
            tProcessos.SQL.Add('       CIF_ME = (FOB_ME + Frete_ME + Seguro_ME),');
            tProcessos.SQL.Add('       Taxa_FOB,');
            tProcessos.SQL.Add('       CIF_Real = FOB + Frete + Seguro,');
            tProcessos.SQL.Add('       Via_Transporte = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ViaTransporte WHERE Codigo = Via_Transporte),');
            tProcessos.SQL.Add('       Numero_Fatura,');
            tProcessos.SQL.Add('       Numero_BL,');
            tProcessos.SQL.Add('       Numero_HouseBL,');
            tProcessos.SQL.Add('       Canal = CASE');
            tProcessos.SQL.Add('                  WHEN Canal_SISCOMEX = ''VD'' THEN ''VERDE'' ');
            tProcessos.SQL.Add('                  WHEN Canal_SISCOMEX = ''AM'' THEN ''AMARELO'' ');
            tProcessos.SQL.Add('                  WHEN Canal_SISCOMEX = ''VM'' THEN ''VERMELHO'' ');
            tProcessos.SQL.Add('                  WHEN Canal_SISCOMEX = ''CZ'' THEN ''CINZA'' ');
            tProcessos.SQL.Add('               END,');
            tProcessos.SQL.Add('       Observacao');
            tProcessos.SQL.Add('FROM   ProcessosDocumentos');
            if trim(cProcesso.Text) = '' then begin
               tProcessos.SQL.Add('WHERE Processo IS NOT NULL');
            end else begin
               tProcessos.SQL.Add('WHERE Processo = '+quotedstr(cProcesso.Text));
            end;
            
            If Trim(RemoveCaracter('/', '', cDataProcessoIni.Text)) <> '' then begin
               tProcessos.SQL.Add('AND (Processo_Abertura BETWEEN :pDataIni AND :pDataFim)');
               tProcessos.ParamByName('pDataIni').AsDate := cDataProcessoIni.Date;
               tProcessos.ParamByName('pDataFim').AsDate := cDataProcessoFim.Date;
            end else begin
               If Trim(RemoveCaracter('/', '', cDataDIIni.Text)) <> '' then begin
                  tProcessos.SQL.Add('AND (Data_DesembaracoDeclaracao BETWEEN :pDataIni AND :pDataFim)');
                  tProcessos.ParamByName('pDataIni').AsDate := cDataDIIni.Date;
                  tProcessos.ParamByName('pDataFim').AsDate := cDataDIFim.Date;
               end else begin
                  If Trim(RemoveCaracter('/', '', cDataRegistroIni.Text)) <> '' then begin
                     tProcessos.SQL.Add('AND (Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim)');
                     tProcessos.ParamByName('pDataIni').AsDate := cDataRegistroIni.Date;
                     tProcessos.ParamByName('pDataFim').AsDate := cDataRegistroFim.Date;
                  End;
               End;   
            End;
            If cModalidade.KeyValue > 0 then begin
               tProcessos.SQL.Add('AND (Modalidade_Importacao = :pModalidade)');
               tProcessos.ParamByName('pModalidade').AsInteger := TiposProcesso.FieldByName('Codigo').AsInteger;
            End;
            If cIncentivo.KeyValue > 0 then begin
               tProcessos.SQL.Add('AND (Incentivo_Fiscal = :pIncentivo)');
               tProcessos.ParamByName('pIncentivo').AsString := IncentivosFiscais.FieldByName('Nome').AsString;
            End;
            If Trim(cOrigem.Text) <> '' then begin
               tProcessos.SQL.Add('AND (Origem = :pOrigem)');
               tProcessos.ParamByName('pOrigem').AsString := cOrigem.Text;
            End;
            If Trim(cVia.Text) <> '' then begin
               tProcessos.SQL.Add('AND (Via_Transporte = :pVia)');
               tProcessos.ParamByName('pVia').AsInteger := cVia.KeyValue;
            End;
            If cCliente.KeyValue > 0 then begin
               tProcessos.SQL.Add('AND (Cliente = :pCliente)');
               tProcessos.ParamByName('pCliente').AsInteger := Clientes.FieldByName('Codigo').AsInteger;
            End;
            If cLibera.ItemIndex = 0 then begin
               tProcessos.SQL.Add('AND (Data_DesembaracoDeclaracao IS NOT NULL)');
            End;
            If cLibera.ItemIndex = 1 then begin
               tProcessos.SQL.Add('AND (Data_DesembaracoDeclaracao IS NULL)');
            End;
            If cSituacao.ItemIndex = 0 then begin
               tProcessos.SQL.Add('AND (Processo_Fechamento IS NULL)');
            End;
            If cSituacao.ItemIndex = 1 then begin
               tProcessos.SQL.Add('AND (Processo_Fechamento IS NOT NULL)');
            End;
            If cAtivacao.ItemIndex = 0 then begin
               tProcessos.SQL.Add('AND (Desativado <> 1)');
            End;
            If cAtivacao.ItemIndex = 1 then begin
               tProcessos.SQL.Add('AND (Desativado = 1)');
            End;
            If Trim(cTipo.Text) <> '' then begin
               tProcessos.SQL.Add('AND (Tipo = :pTipo)');
               tProcessos.ParamByName('pTipo').AsString := cTipo.Text;
            End;
            If Trim(cResponsavel.Text) <> '' then begin
               tProcessos.SQL.Add('AND (Responsavel = :pResponsavel)');
               tProcessos.ParamByName('pResponsavel').AsString := Usuarios.FieldByName('Matricula').AsString;
            End;
            If Trim(cUFDesemb.Text) <> '' then begin
               tProcessos.SQL.Add('AND (UF_Desembaraco = :pUFDesemb)');
               tProcessos.ParamByName('pUFDesemb').AsString := Estados.FieldByName('Codigo').AsString;
            End;
            If cDocumento.ItemIndex = 0 then tProcessos.SQL.Add('AND (DA <> 1)');
            If cDocumento.ItemIndex = 1 then tProcessos.SQL.Add('AND (DA = 1)');
            If cDocumento.ItemIndex = 2 then tProcessos.SQL.Add('AND (Courrier = 1)');
            If cCanal.ItemIndex < 4 then begin
               tProcessos.SQL.Add('AND (Canal_SISCOMEX = :pCanal)');
               If cCanal.ItemIndex = 0 then tProcessos.ParamByName('pCanal').AsString := 'VD';
               If cCanal.ItemIndex = 1 then tProcessos.ParamByName('pCanal').AsString := 'AM';
               If cCanal.ItemIndex = 2 then tProcessos.ParamByName('pCanal').AsString := 'VM';
               If cCanal.ItemIndex = 3 then tProcessos.ParamByName('pCanal').AsString := 'CZ';
            End;
            If Trim(cRefCliente.Text) <> '' then begin
               tProcessos.SQL.Add('AND (Referencia_Cliente = :pRef)');
               tProcessos.ParamByName('pRef').AsString := cRefCliente.Text;
            End;
            tProcessos.SQL.Add('ORDER BY Cliente, Processo_Abertura, Processo');
            //tprocessos.SQL.SaveToFile('c:\temp\Relacao_Processos.sql');
            tProcessos.Open;
       End;

       lTitulo.Caption := '';
       If Trim(cModalidade.Text) <> '' then
          lTitulo.Caption := 'Relação de Processos ('+Trim(cModalidade.Text)+')';
       If Trim(cUFDesemb.Text) <> '' then
          lTitulo.Caption := lTitulo.Caption + ' - Desembaraço em '+Trim(Dados.Estados.FieldByName('Nome').AsString)+'('+Trim(Dados.Estados.FieldByName('Codigo').AsString)+')';

       If cExcel.Checked = false then begin
          if Fileexists(Dados.EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
          rRelacaoProcesso.Print;
          rRelacaoProcesso.FreeOnRelease;
          rRelacaoProcesso.Reset;
       end else begin
          ExportaExcel;
       End;
end;

procedure TImpressao_ProcessosOP_Relacao.bLimparClick(Sender: TObject);
begin
        cModalidade.KeyValue  := 0;
        cIncentivo.KeyValue   := 0;
        cOrigem.Text          := '';
        cVia.KeyValue         := -1;
        cCliente.KeyValue     := 0;
        cSituacao.ItemIndex   := 2;
        cLibera.ItemIndex     := 2;
        cCanal.ItemIndex      := 4;
        cTipo.Text            := '';
        cResponsavel.KeyValue := 0;
end;

procedure TImpressao_ProcessosOP_Relacao.ppVariable3Calc(Sender: TObject;var Value: Variant);
begin
      With Dados do begin
           Value := Value + (tProcessos.FieldByName('Fob_ME').AsCurrency + tProcessos.FieldByName('Frete_ME').AsCurrency + tProcessos.FieldByName('Seguro_ME').AsCurrency);
      End;
end;

procedure TImpressao_ProcessosOP_Relacao.ppVariable4Calc(Sender: TObject;var Value: Variant);
begin
      With Dados do begin
           Value := Value + tProcessos.FieldByName('Fob').AsCurrency + tProcessos.FieldByName('Frete').AsCurrency + tProcessos.FieldByName('Seguro').AsCurrency;
      End;
end;

procedure TImpressao_ProcessosOP_Relacao.lTotalCliente_MECalc(Sender: TObject;var Value: Variant);
begin
      With Dados do begin
           Value := Value + (tProcessos.FieldByName('Fob_ME').AsCurrency + tProcessos.FieldByName('Frete_ME').AsCurrency + tProcessos.FieldByName('Seguro_ME').AsCurrency);
      End;
end;

procedure TImpressao_ProcessosOP_Relacao.lTotalCliente_RealCalc(Sender: TObject;var Value: Variant);
begin
      With Dados do begin
           Value := Value + tProcessos.FieldByName('Fob').AsCurrency + tProcessos.FieldByName('Frete').AsCurrency + tProcessos.FieldByName('Seguro').AsCurrency;
      End;
end;

procedure TImpressao_ProcessosOP_Relacao.ppGroupFooterBand1AfterPrint( Sender: TObject);
begin
      lTotalCliente_ME.Value   := 0;
      lTotalCliente_Real.Value := 0;
end;

procedure TImpressao_ProcessosOP_Relacao.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
      lCliente.Text := '';
      If Dados.Clientes.Locate('Codigo', tProcessos.FieldByName('Cliente').AsInteger, [loCaseInsensitive]) = true then begin
         lCliente.Text := Dados.ClientesNome.AsString;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_Relacao.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mValorME,
   mValorReal:Real;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tProcessos.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      mPlanilha.Range['A3','U3'].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['A3','U3'].Interior.Pattern  := 1;
      mPlanilha.Range['A3','U3'].Font.Bold         := true;
      mPlanilha.Range['A3','U3'].Font.Color        := clBlack;
      mPlanilha.Range['A3','U3'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A3','U3'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A3','U3'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[3,01] := 'PROCESSO MESTRE';
      mPlanilha.Cells[3,02] := 'PROCESSO FILHO';
      mPlanilha.Cells[3,03] := 'ABERTURA';
      mPlanilha.Cells[3,04] := 'CLIENTE';
      mPlanilha.Cells[3,05] := 'DI';
      mPlanilha.Cells[3,06] := 'DA';
      mPlanilha.Cells[3,07] := 'EA';
      mPlanilha.Cells[3,08] := 'COURIER';
      mPlanilha.Cells[3,09] := 'EXPORTADOR';
      mPlanilha.Cells[3,10] := 'REGISTRO';
      mPlanilha.Cells[3,11] := 'DESEMBARAÇO';
      mPlanilha.Cells[3,12] := 'ORIGEM';
      mPlanilha.Cells[3,13] := 'VALOR CIF (ME)';
      mPlanilha.Cells[3,14] := 'TAXA';
      mPlanilha.Cells[3,15] := 'VALOR CIF (R$)';
      mPlanilha.Cells[3,16] := 'VIA TRANSPORTE';
      mPlanilha.Cells[3,17] := 'CANAL';
      mPlanilha.Cells[3,18] := 'Nº FATURA (INVOICE)';
      mPlanilha.Cells[3,19] := 'Nº BL (MASTER)';
      mPlanilha.Cells[3,20] := 'Nº BL (HOUSE)';
      mPlanilha.Cells[3,21] := 'OBSERVAÇÕES';

      mPlanilha.Range['A3','U3'].HorizontalAlignment := 3;
      mPlanilha.Range['A3','U3'].VerticalAlignment   := 2;
      mPlanilha.Range['A3','U3'].Font.Size           := 8;

      mLinha     := 3;
      mValorME   := 0;
      mValorReal := 0;

      Inc(mLinha);

      while (not tProcessos.Eof) and (not Funcoes.Cancelado) do Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Font.Size := 8;

            mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Processo_Mestre').AsString;
            mPlanilha.Cells[mLinha,02] := tProcessos.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,03] := tProcessos.FieldByName('Processo_Abertura').Value;
            mPlanilha.Cells[mLinha,04] := tProcessos.FieldByName('Cliente_Nome').AsString;
            mPlanilha.Cells[mLinha,05] := FormatMaskText('##/#######-#;0', tProcessos.FieldByName('Numero_Declaracao').AsString);
            mPlanilha.Cells[mLinha,06] := tProcessos.FieldByName('DA_SIMNAO').AsString;
            mPlanilha.Cells[mLinha,07] := tProcessos.FieldByName('EA_SIMNAO').AsString;
            mPlanilha.Cells[mLinha,08] := tProcessos.FieldByName('Courrier_SIMNAO').AsString;
            mPlanilha.Cells[mLinha,09] := tProcessos.FieldByName('Exportador').AsString;
            mPlanilha.Cells[mLinha,10] := tProcessos.FieldByName('Data_RegistroDeclaracao').Value;
            mPlanilha.Cells[mLinha,11] := tProcessos.FieldByName('Data_DesembaracoDeclaracao').Value;
            mPlanilha.Cells[mLinha,12] := tProcessos.FieldByName('Origem').AsString;
            mPlanilha.Cells[mLinha,13] := tProcessos.FieldByName('CIF_ME').AsCurrency;
            mPlanilha.Cells[mLinha,14] := tProcessos.FieldByName('Taxa_FOB').AsFloat;
            mPlanilha.Cells[mLinha,15] := tProcessos.FieldByName('CIF_Real').AsCurrency;
            mPlanilha.Cells[mLinha,16] := tProcessos.FieldByName('Via_Transporte').AsString;
            mPlanilha.Cells[mLinha,17] := tProcessos.FieldByName('Canal').AsString;
            mPlanilha.Cells[mLinha,18] := tProcessos.FieldByName('Numero_Fatura').asstring;
            mPlanilha.Cells[mLinha,19] := tProcessos.FieldByName('Numero_BL').AsString;
            mPlanilha.Cells[mLinha,20] := tProcessos.FieldByName('Numero_HouseBL').AsString;
            mPlanilha.Cells[mLinha,21] := tProcessos.FieldByName('Observacao').AsString;

            mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,0000_);(#.##0,0000)';
            mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';

            mValorME   := mValorME   + tProcessos.FieldByName('CIF_ME').AsCurrency;
            mValorReal := mValorReal + tProcessos.FieldByName('CIF_Real').AsCurrency;

            tProcessos.Next;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      mPlanilha.Range['A'+InttoStr(mLinha),'T'+InttoStr(mLinha)].Font.Size := 8;
      mPlanilha.Cells[mLinha,13] := mValorME;
      mPlanilha.Cells[mLinha,15] := mValorReal;

      mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';

      //Fecha o Excel.
      if Funcoes.Cancelado = true then begin
         mPlanilha.Free;
         mPlanilha.Destroy;
      end;

      mPlanilha.Rows.Autofit;
      mPlanilha.Columns.Autofit;

      mPlanilha.Cells[mLinha,02] := 'T.GERAL';
      mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
      mPlanilha.Range['C3','L3'].VerticalAlignment   := 2;
      mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size         := 8;
      mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;
      mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Mergecells        := True;

      mPlanilha.Range['B'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
      mPlanilha.Range['B'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Bold         := true;
      mPlanilha.Range['B'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.LineStyle := 1;
      mPlanilha.Range['B'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Weight    := 2;
      mPlanilha.Range['B'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size  := 20;
      mPlanilha.Range['A1','A1'].Font.Bold  := true;
      mPlanilha.Range['A1','U1'].Mergecells := True;
      mPlanilha.Range['A1','U1'].HorizontalAlignment := 3;

      mPlanilha.Cells[2,01] := 'Relação de Processos';
      mPlanilha.Range['A2','A2'].Font.Size  := 14;
      mPlanilha.Range['A2','U2'].Mergecells := True;
      mPlanilha.Range['A2','U2'].HorizontalAlignment := 3;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;




end.
