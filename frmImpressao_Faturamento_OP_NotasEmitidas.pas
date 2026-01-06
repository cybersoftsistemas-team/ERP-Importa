unit frmImpressao_Faturamento_OP_NotasEmitidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppReport, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, RxLookup, INIFiles, Buttons, system.UITypes,
  ComObj, Funcoes, CheckLst, RxToolEdit, MemDS, ppDB, ppDesignLayer, raCodMod, ppModule, ppCache, ppComm, ppRelatv, ppProd, maskutils;

type
  TImpressao_Faturamento_OP_NotasEmitidas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    rNotas: TppReport;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pNotas: TppDBPipeline;
    cCancelada: TCheckBox;
    cTipo: TRadioGroup;
    cNatureza: TRxDBLookupCombo;
    StaticText3: TStaticText;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    cOrigem: TRadioGroup;
    cZebrado: TCheckBox;
    cServico: TCheckBox;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cCliFor: TRxDBLookupCombo;
    lCliFor: TStaticText;
    cExcel: TCheckBox;
    StaticText5: TStaticText;
    cEstado: TRxDBLookupCombo;
    cOrigemNota: TRadioGroup;
    StaticText6: TStaticText;
    tTransportador: TMSQuery;
    dstTransportador: TDataSource;
    cTransportador: TRxDBLookupCombo;
    tTransportadorCodigo: TIntegerField;
    tTransportadorNome: TStringField;
    tTransportadorCNPJ: TStringField;
    tRateio: TMSQuery;
    cApenasCancelada: TCheckBox;
    cIncentivos: TCheckListBox;
    StaticText8: TStaticText;
    bSelecionar: TBitBtn;
    bDesmarcar: TBitBtn;
    cFinanceiro: TCheckBox;
    cConsolidado: TCheckBox;
    tEmpresas: TMSQuery;
    cTipoCliente: TRadioGroup;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    cOrigemDados: TRadioGroup;
    StaticText7: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText9: TStaticText;
    cRefFiscal: TRxDBLookupCombo;
    cProvisorias: TCheckBox;
    StaticText10: TStaticText;
    cNCM: TMaskEdit;
    GroupBox1: TGroupBox;
    cSimples: TCheckBox;
    cMEI: TCheckBox;
    cConsumidor: TCheckBox;
    cZona: TCheckBox;
    cInscricao: TCheckBox;
    cMicro: TCheckBox;
    cImportador: TCheckBox;
    cTerminal: TCheckBox;
    cComprador: TCheckBox;
    cBloqueado: TCheckBox;
    cAtivo: TCheckBox;
    cAtacadista: TCheckBox;
    cVarejista: TCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    lPeriodo: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    sCancelada: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText4: TppDBText;
    ppDBText18: TppDBText;
    lCancelada: TppLabel;
    lPISImp: TppVariable;
    ppDBText11: TppDBText;
    lCofinsImp: TppVariable;
    lDenegada: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape19: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ltEntradas_Nota: TppVariable;
    ltSaidas_Nota: TppVariable;
    ltTerceiros_Nota: TppVariable;
    ltEntradas_Desconto: TppVariable;
    ltSaidas_Desconto: TppVariable;
    ltTerceiros_Desconto: TppVariable;
    ltEntradas_Liquido: TppVariable;
    ltSaidas_Liquido: TppVariable;
    ltTerceiros_Liquido: TppVariable;
    ltEntradas_BCICMS: TppVariable;
    ltSaidas_BCICMS: TppVariable;
    ltTerceiros_BCICMS: TppVariable;
    ltEntradas_VLICMS: TppVariable;
    ltSaidas_VLICMS: TppVariable;
    ltTerceiros_VLICMS: TppVariable;
    ltEntradas_ICMSSub: TppVariable;
    ltSaidas_ICMSSub: TppVariable;
    ltTerceiros_ICMSSub: TppVariable;
    ltEntradas_IPI: TppVariable;
    ltSaidas_IPI: TppVariable;
    ltTerceiros_IPI: TppVariable;
    ltEntradas_II: TppVariable;
    ltSaidas_II: TppVariable;
    ltTerceiros_II: TppVariable;
    ltEntradas_PIS: TppVariable;
    ltSaidas_PIS: TppVariable;
    ltTerceiros_PIS: TppVariable;
    ltEntradas_COFINS: TppVariable;
    ltSaidas_COFINS: TppVariable;
    ltTerceiros_COFINS: TppVariable;
    ppLabel4: TppLabel;
    ltSoma_NotaE: TppVariable;
    ltSoma_DescontoE: TppVariable;
    ltSoma_LiquidoE: TppVariable;
    ltSoma_BCICMSE: TppVariable;
    ltSOMA_VlICMSE: TppVariable;
    ltSoma_ICMSSubE: TppVariable;
    ltSoma_IPIE: TppVariable;
    ltSoma_IIE: TppVariable;
    ltSoma_PISE: TppVariable;
    ltSoma_COFINSE: TppVariable;
    ppLine1: TppLine;
    ltEntradas_COFINSImp: TppVariable;
    ltTerceiros_COFINSImp: TppVariable;
    ltSoma_COFINSEImp: TppVariable;
    ltSaidas_COFINSImp: TppVariable;
    ltEntradas_PISImp: TppVariable;
    ltTerceiros_PISImp: TppVariable;
    ltSoma_PISEImp: TppVariable;
    ltSaidas_PISImp: TppVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape18: TppShape;
    ppLabel22: TppLabel;
    lEmpresa: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ltEntradas_Nota2: TppVariable;
    ltSaidas_Nota2: TppVariable;
    ltTerceiros_Nota2: TppVariable;
    ltEntradas_Desconto2: TppVariable;
    ltSaidas_Desconto2: TppVariable;
    ltTerceiros_Desconto2: TppVariable;
    ltEntradas_Liquido2: TppVariable;
    ltSaidas_Liquido2: TppVariable;
    ltTerceiros_Liquido2: TppVariable;
    ltEntradas_BCICMS2: TppVariable;
    ltSaidas_BCICMS2: TppVariable;
    ltTerceiros_BCICMS2: TppVariable;
    ltEntradas_VLICMS2: TppVariable;
    ltSaidas_VLICMS2: TppVariable;
    ltTerceiros_VLICMS2: TppVariable;
    ltEntradas_ICMSSub2: TppVariable;
    ltSaidas_ICMSSub2: TppVariable;
    ltTerceiros_ICMSSub2: TppVariable;
    ltEntradas_IPI2: TppVariable;
    ltSaidas_IPI2: TppVariable;
    ltTerceiros_IPI2: TppVariable;
    ltEntradas_II2: TppVariable;
    ltSaidas_II2: TppVariable;
    ltTerceiros_II2: TppVariable;
    ltEntradas_PIS2: TppVariable;
    ltSaidas_PIS2: TppVariable;
    ltTerceiros_PIS2: TppVariable;
    ltEntradas_COFINS2: TppVariable;
    ltSaidas_COFINS2: TppVariable;
    ltTerceiros_COFINS2: TppVariable;
    ppLabel26: TppLabel;
    ltSoma_NotaE2: TppVariable;
    ltSoma_DescontoE2: TppVariable;
    ltSoma_LiquidoE2: TppVariable;
    ltSoma_BCICMSE2: TppVariable;
    ltSOMA_VlICMSE2: TppVariable;
    ltSoma_ICMSSubE2: TppVariable;
    ltSoma_IPIE2: TppVariable;
    ltSoma_IIE2: TppVariable;
    ltSoma_PISE2: TppVariable;
    ltSoma_COFINSE2: TppVariable;
    ppLine4: TppLine;
    ltEntradas_COFINSImp2: TppVariable;
    ltTerceiros_COFINSImp2: TppVariable;
    ltSoma_COFINSEImp2: TppVariable;
    ltSaidas_COFINSImp2: TppVariable;
    ltEntradas_PISImp2: TppVariable;
    ltTerceiros_PISImp2: TppVariable;
    ltSoma_PISEImp2: TppVariable;
    ltSaidas_PISImp2: TppVariable;
    ppLine3: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    raProgramInfo1: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppGroupHeaderBand1AfterPrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure cNaturezaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cProcessoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ExportaEXCEL;
    procedure cOrigemNotaClick(Sender: TObject);
    procedure lPISImpCalc(Sender: TObject; var Value: Variant);
    procedure lCofinsImpCalc(Sender: TObject; var Value: Variant);
    procedure cCanceladaClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ltSaidas_Nota2Calc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand2AfterPrint(Sender: TObject);
    procedure cOrigemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_OP_NotasEmitidas: TImpressao_Faturamento_OP_NotasEmitidas;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_OP_NotasEmitidas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_NOTAS', 'DataIni'      , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_NOTAS', 'DataFim'      , cDataFim.Date );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'Tipo'         , cTipo.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'Origem'       , cOrigem.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'OrigemNota'   , cOrigemNota.ItemIndex );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Natureza'     , cNatureza.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Processo'     , cProcesso.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'CliFor'       , cCliFor.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'TipoNota'     , cTipoNota.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'RefFiscal'    , cRefFiscal.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Estado'       , cEstado.Text );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Cancelada'    , cCancelada.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'ApenasCancel' , cApenasCancelada.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Servico'      , cServico.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Zebrado'      , cZebrado.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Excel'        , cExcel.Checked );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Transportador', cTransportador.Text );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Financeiro'   , cFinanceiro.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Consolidado'  , cConsolidado.Checked );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'OrigemDados'  , cOrigemDados.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Provisorias'  , cProvisorias.Checked );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTAS', 'NCM'          , cNCM.Text );
      aINI.Free;

      //Fecha o Excel
//      If cExcel.Checked = true then KillTask('Excel.exe');

      Impressao_Faturamento_OP_NotasEmitidas.Release;
      Impressao_Faturamento_OP_NotasEmitidas := nil;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.ppDetailBand1BeforePrint(Sender: TObject);
begin
      if (tNotas.FieldByName('Nota_Pedido').Value = 'N') then begin
         ppDetailBand1.Background1.Brush.Color := clWhite;
         ppDetailBand1.Background2.Brush.Color := clWhite;

         If (tNotas.FieldByName('Cancelada').Value = 0) and (tNotas.FieldByName('Nfe_Denegada').Value = 0) then begin
            sCancelada.Visible := False;
            lCancelada.Visible := False;
            lDenegada.Visible  := False;
         end else begin
            sCancelada.Visible := True;
            If (tNotas.FieldByName('Cancelada').Value <> 0) then begin
               lCancelada.Visible := True;
               lDenegada.Visible  := false;
            end else
               lDenegada.Visible := true;
         End;

         If cZebrado.Checked = True then
            lFaixa.Visible := not lFaixa.Visible
         else
            lFaixa.Visible := False;

         If lFaixa.Visible = True then
            lCancelada.Color := lFaixa.Brush.Color
         else
            lCancelada.Color := clWhite;
      end else begin
          ppDetailBand1.Background1.Brush.Color := $00EEEEEE;
          ppDetailBand1.Background2.Brush.Color := $00EEEEEE;
      end;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.bImprimirClick(Sender: TObject);
Var
   mIncentivos: WideString;
   i          : Integer;
   mSQLMatriz : WideString;
   mSQLFilial : WideString;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           For i := 0 to cIncentivos.Count -1 do begin
               If cIncentivos.Checked[i] = true then begin
                  If cIncentivos.Items[i] <> 'SEM INCENTIVO' then
                     mIncentivos := mIncentivos + QuotedStr(cIncentivos.Items[i])+','
                  else
                     mIncentivos := mIncentivos + QuotedStr('')+',';
               End;
           End;
           mIncentivos := Copy(mIncentivos, 1, Length(mIncentivos)-1);

           tNotas.SQL.Clear;
           // Notas de saida.
           If (cTipo.ItemIndex <> 1) then begin
              tNotas.SQL.Add('SELECT Data_Emissao,');
              tNotas.SQL.Add('       DAY(Data_Emissao) AS Dia,');
              tNotas.SQL.Add('       Numero,');
              tNotas.SQL.Add('       Natureza_Codigo,');
              tNotas.SQL.Add('       Processo = COALESCE( (SELECT DISTINCT(Processo) + '' '' FROM NotasItens WHERE Nota = Numero AND Data = Data_Emissao AND Saida_Entrada = 1');
              tNotas.SQL.Add('                             FOR XML PATH(''''), TYPE).value(''.[1]'', ''VARCHAR(MAX)''), ''''),');
              tNotas.SQL.Add('       Valor_TotalNota,');
              tNotas.SQL.Add('       Total_Descontos,');
              tNotas.SQL.Add('       (Valor_TotalNota-Total_Descontos) AS Valor_Liquido,');
              tNotas.SQL.Add('       BCICMS,');
              tNotas.SQL.Add('       Valor_ICMS,');
              tNotas.SQL.Add('       ValorICMS_Substitutivo,');
              tNotas.SQL.Add('       Valor_TotalIPI,');
              tNotas.SQL.Add('       Valor_TotalII = iif(Saida_Entrada = 0, Valor_TotalII, 0),');
              tNotas.SQL.Add('       Valor_BCPIS,');
              tNotas.SQL.Add('       Valor_PIS,');
              tNotas.SQL.Add('       Valor_COFINS,');
              tNotas.SQL.Add('       Destinatario_Nome AS Beneficiario,');
              tNotas.SQL.Add('       Saida_Entrada,');
              tNotas.SQL.Add('       Cancelada,');
              tNotas.SQL.Add('       Nfe_Denegada,');
              tNotas.SQL.Add('       ''N'' AS Nota_Pedido,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TipoNota      WHERE(Codigo = NotasFiscais.Tipo_Nota)) AS Descricao_Tipo,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT MAX(Modalidade_Importacao) FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo))) ) AS Tipo_Processo,');
              tNotas.SQL.Add('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa,');
              tNotas.SQL.Add('       Valor_TotalProdutos,');
              tNotas.SQL.Add('       Valor_OutrasDespesas AS Valor_Despesas,');
              tNotas.SQL.Add('       Valor_OutrasIPI,');
              tNotas.SQL.Add('       Valor_IsentasIPI,');
              tNotas.SQL.Add('       Valor_OutrasICMS,');
              tNotas.SQL.Add('       Valor_IsentasICMS');
              tNotas.SQL.Add('FROM   NotasFiscais');
              tNotas.SQL.Add('WHERE (Saida_Entrada = 1) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) ');

              If cOrigem.ItemIndex = 1 then tNotas.SQL.Add(' AND (LEN(RTRIM(DI)) <> 0)');
              If cOrigem.ItemIndex = 2 then tNotas.SQL.Add(' AND (LEN(RTRIM(DI)) =  0 OR DI IS NULL)');
              If cApenasCancelada.Checked = false then begin
                 If cCancelada.Checked = False then begin
                    tNotas.SQL.Add(' AND (ISNULL(Cancelada, 0) <> 1)');
                    tNotas.SQL.Add(' AND (ISNULL(Nfe_Denegada, 0) <> 1)');
                 End;
              end else begin
                 If cCancelada.Checked = true then begin
                    tNotas.SQL.Add(' AND (ISNULL(Cancelada, 0) = 1 OR ISNULL(Nfe_Denegada, 0) = 1)');
                 End;
              End;
              If cNatureza.Text          <> ''   then tNotas.SQL.Add(' AND (Natureza_Codigo = ' + QuotedStr(NaturezaCodigo.AsString)+')' );
              If cProcesso.KeyValue      <> null then tNotas.SQL.Add(' AND (Processo = ' + QuotedStr(ProcessosDOCProcesso.AsString)+')' );
              If cCliFor.KeyValue        <> null then tNotas.SQL.Add(' AND (Cliente_Codigo = ' + ClientesCodigo.AsString+' )' );
              If cTransportador.KeyValue <> null then tNotas.SQL.Add(' AND (Transportador_Codigo = '+ tTransportadorCodigo.AsString+' )' );
              If cEstado.KeyValue        <> null then tNotas.SQL.Add(' AND (NotasFiscais.Estado = ' + QuotedStr(EstadosCodigo.AsString)+')' );
              If Trim(mIncentivos)       <> ''   then tNotas.SQL.Add(' AND (NotasFiscais.Incentivo_Fiscal IN('+ mIncentivos + '))');

              If cFinanceiro.Checked = true then begin
                 tNotas.SQL.Add(' AND ((SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = NotasFiscais.Tipo_Nota)) = 1)');
              End;
              If cTipoCliente.ItemIndex = 1 then begin
                 tNotas.SQL.Add(' AND ((SELECT ISNULL(Isento, 0) FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) = 0)');
              End;
              If cTipoCliente.ItemIndex = 2 then begin
                 tNotas.SQL.Add(' AND ((SELECT ISNULL(Isento, 0) FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) = 1)');
              End;
              If cTipoNota.KeyValue <> null then  begin
                 tNotas.SQL.Add(' AND (Tipo_Nota = ' + TipoNotaCodigo.AsString+' )' );
              end;
              If cNCM.Text <> '' then begin
                 tNotas.SQL.Add('AND Numero IN(SELECT DISTINCT Nota FROM NotasItens WHERE NCM = '+quotedstr(cNCM.Text)+')')
              End;
              if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples_Nacional from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI              from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa    from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca      from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cInscricao.Checked  then tNotas.SQL.Add(' and (select InscricaoST      from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cComprador.Checked  then tNotas.SQL.Add(' and (select Comprador        from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cImportador.Checked then tNotas.SQL.Add(' and (select Importador       from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cTerminal.Checked   then tNotas.SQL.Add(' and (select Terminal         from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cComprador.Checked  then tNotas.SQL.Add(' and (select Comprador        from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cBloqueado.Checked  then tNotas.SQL.Add(' and (select Bloqueado        from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo            from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cVarejista.Checked  then tNotas.SQL.Add(' and (select Varejista        from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
              if cAtacadista.Checked then tNotas.SQL.Add(' and (select Atacadista       from Clientes where Codigo = NotasFiscais.Cliente_Codigo) = 1');
           End;

           // Notas de entrada.
           If (cTipo.ItemIndex <> 2) then begin
              If cTipo.ItemIndex = 0 then tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT Data_Emissao,');
              tNotas.SQL.Add('       DAY(Data_Emissao) AS Dia,');
              tNotas.SQL.Add('       Numero,');
              tNotas.SQL.Add('       Natureza_Codigo,');
              tNotas.SQL.Add('       Processo = COALESCE( (SELECT DISTINCT(Processo) + '' '' FROM NotasItens WHERE Nota = Numero AND Data = Data_Emissao AND Saida_Entrada = 0');
              tNotas.SQL.Add('                             FOR XML PATH(''''), TYPE).value(''.[1]'', ''VARCHAR(MAX)''), ''''),');
              tNotas.SQL.Add('       Valor_TotalNota,');
              tNotas.SQL.Add('       Total_Descontos,');
              tNotas.SQL.Add('       (Valor_TotalNota-Total_Descontos) AS Valor_Liquido,');
              tNotas.SQL.Add('       BCICMS,');
              tNotas.SQL.Add('       Valor_ICMS,');
              tNotas.SQL.Add('       ValorICMS_Substitutivo,');
              tNotas.SQL.Add('       Valor_TotalIPI,');
              tNotas.SQL.Add('       Valor_TotalII,');
              tNotas.SQL.Add('       Valor_BCPIS,');
              tNotas.SQL.Add('       Valor_PIS,');
              tNotas.SQL.Add('       Valor_COFINS,');
              tNotas.SQL.Add('       Destinatario_Nome AS Beneficiario,');
              tNotas.SQL.Add('       Saida_Entrada,');
              tNotas.SQL.Add('       Cancelada,');
              tNotas.SQL.Add('       Nfe_Denegada,');
              tNotas.SQL.Add('       ''N'' AS Nota_Pedido,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TipoNota WHERE(Codigo = NotasFiscais.Tipo_Nota)) AS Descricao_Tipo,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT MAX(Modalidade_Importacao) FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo))) ) AS Tipo_Processo,');
              tNotas.SQL.Add('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa,');
              tNotas.SQL.Add('       Valor_TotalProdutos,');
              tNotas.SQL.Add('       Valor_OutrasDespesas AS Valor_Despesas,');
              tNotas.SQL.Add('       Valor_OutrasIPI,');
              tNotas.SQL.Add('       Valor_IsentasIPI,');
              tNotas.SQL.Add('       Valor_OutrasICMS,');
              tNotas.SQL.Add('       Valor_IsentasICMS');
              tNotas.SQL.Add('FROM   NotasFiscais');
              tNotas.SQL.Add('WHERE  (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) ');

              If cOrigem.ItemIndex = 2 then tNotas.SQL.Add(' AND (LEN(RTRIM(DI)) = 0 OR DI IS NULL)');
              If cApenasCancelada.Checked = false then begin
                 If cCancelada.Checked = False then begin
                    tNotas.SQL.Add(' AND (ISNULL(Cancelada, 0) <> 1)');
                    tNotas.SQL.Add(' AND (ISNULL(Nfe_Denegada, 0) <> 1)');
                 End;
              end else begin
                 If cCancelada.Checked = true then begin
                    tNotas.SQL.Add(' AND (ISNULL(Cancelada, 0) = 1 OR ISNULL(Nfe_Denegada, 0) = 1)');
                 End;
              End;
              If cNatureza.Text <> '' then tNotas.SQL.Add(' AND (Natureza_Codigo = ' + QuotedStr(NaturezaCodigo.AsString)+')' );
              If cProcesso.KeyValue      <> null then tNotas.SQL.Add(' AND (Processo = '+ QuotedStr(ProcessosDOCProcesso.AsString)+')' );
              If cCliFor.KeyValue        <> null then tNotas.SQL.Add(' AND (Fornecedor_Codigo = '+ Trim(FornecedoresCodigo.AsString)+' )' );
              If cTransportador.KeyValue <> null then tNotas.SQL.Add(' AND (Transportador_Codigo = '+ tTransportadorCodigo.AsString+' )' );
              If Trim(mIncentivos)       <> ''   then tNotas.SQL.Add(' AND (NotasFiscais.Incentivo_Fiscal IN('+ mIncentivos + '))');
              If cTipoNota.KeyValue      <> null then tNotas.SQL.Add(' AND (Tipo_Nota = ' + TipoNotaCodigo.AsString+' )' );
              If cNCM.Text <> '' then begin
                 tNotas.SQL.Add('AND Numero IN(SELECT DISTINCT Nota FROM NotasItens WHERE NCM = '+quotedstr(cNCM.Text)+')')
              End;
              if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo         from Fornecedores where Codigo = NotasFiscais.Fornecedor_Codigo) = 1');
              if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca   from Fornecedores where Codigo = NotasFiscais.Fornecedor_Codigo) = 1');
              if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples       from Fornecedores where Codigo = NotasFiscais.Fornecedor_Codigo) = 1');
              if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI           from Fornecedores where Codigo = NotasFiscais.Fornecedor_Codigo) = 1');
              if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa from Fornecedores where Codigo = NotasFiscais.Fornecedor_Codigo) = 1');

              If cApenasCancelada.Checked = false then begin
                 If (cOrigem.ItemIndex <> 1) and (cOrigemNota.ItemIndex <> 1) then begin
                    tNotas.SQL.Add('UNION ALL');
                    tNotas.SQL.Add('SELECT Data_Entrada,');
                    tNotas.SQL.Add('       DAY(Data_Entrada),');
                    tNotas.SQL.Add('       Nota,');
                    tNotas.SQL.Add('       Natureza_Codigo,');
                    tNotas.SQL.Add('       Processo = COALESCE( (SELECT DISTINCT(Processo) + '' '' FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao');
                    tNotas.SQL.Add('                             FOR XML PATH(''''), TYPE).value(''.[1]'', ''VARCHAR(MAX)''), ''''),');
                    tNotas.SQL.Add('       Valor_TotalNota,');
                    tNotas.SQL.Add('       Valor_TotalDescontos,');
                    tNotas.SQL.Add('       (Valor_TotalNota-Valor_TotalDescontos),');
                    tNotas.SQL.Add('       Valor_BCICMSOper AS BCICMS,');
                    tNotas.SQL.Add('       Valor_ICMSOper AS Valor_ICMS,');
                    tNotas.SQL.Add('       Valor_ICMSSub,');
                    tNotas.SQL.Add('       Valor_TotalIPI,');
                    tNotas.SQL.Add('       0,');
                    tNotas.SQL.Add('       Valor_BCPIS = (SELECT SUM(Valor_BCPIS) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Entrada = NotasTerceiros.Data_Entrada),');
                    tNotas.SQL.Add('       Valor_PIS,');
                    tNotas.SQL.Add('       Valor_COFINS,');
                    tNotas.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE(Codigo = NotasTerceiros.Fornecedor)) AS Beneficiario,');
                    tNotas.SQL.Add('       2,');
                    tNotas.SQL.Add('       CAST(0 AS bit) AS Cancelada,');
                    tNotas.SQL.Add('       CAST(0 AS bit) AS Nfe_Denegada,');
                    tNotas.SQL.Add('       ''N'' AS Nota_Pedido,');
                    tNotas.SQL.Add('       (SELECT Descricao FROM ReferenciasFiscais WHERE(Codigo = NotasTerceiros.Referencia_Fiscal)) AS Descricao_Tipo,');
                    tNotas.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT MAX(Modalidade_Importacao) FROM ProcessosDocumentos WHERE(Processo = NotasTerceiros.Processo))) ) AS Tipo_Processo,');
                    tNotas.SQL.Add('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa,');
                    tNotas.SQL.Add('       Valor_TotalProdutos,');
                    tNotas.SQL.Add('       0 AS Valor_Despesas,');
                    tNotas.SQL.Add('       Valor_OutrasIPI,');
                    tNotas.SQL.Add('       Valor_IsentasIPI,');
                    tNotas.SQL.Add('       Valor_OutrasICMS,');
                    tNotas.SQL.Add('       Valor_IsentasICMS');
                    tNotas.SQL.Add('FROM   NotasTerceiros ');
                    tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) ');
                    If cServico.Checked         = False then tNotas.SQL.Add(' AND (Servico IS NULL OR LEN(RTRIM(SERVICO)) = 0)');
                    If cNatureza.Text          <> ''    then tNotas.SQL.Add(' AND (Natureza_Codigo = ' + QuotedStr(NaturezaCodigo.AsString)+')' );
                    If cProcesso.KeyValue      <> null  then tNotas.SQL.Add(' AND (Processo = '+ QuotedStr(ProcessosDOCProcesso.AsString)+')' );
                    If cCliFor.KeyValue        <> null  then tNotas.SQL.Add(' AND (Fornecedor = '+ Trim(FornecedoresCodigo.AsString)+' )' );
                    If cTransportador.KeyValue <> null  then tNotas.SQL.Add(' AND (Transportador_Codigo = ' + tTransportadorCodigo.AsString+' )' );
                    If cRefFiscal.KeyValue     <> null  then tNotas.SQL.Add(' AND (Referencia_Fiscal = ' + ReferenciasFiscaisCodigo.AsString+' )' );
                    If cProvisorias.Checked             then tNotas.SQL.Add(' AND (ISNULL(Provisoria, 0) <> 1)' );
                    If cNCM.Text <> '' then begin
                       tNotas.SQL.Add('AND Nota IN(SELECT DISTINCT Nota FROM NotasTerceirosItens WHERE NCM = '+quotedstr(cNCM.Text)+')')
                    End;
                    if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo         from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca   from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples       from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI           from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                 End;
                 If (cOrigem.ItemIndex <> 1) and (cOrigemNota.ItemIndex = 2) then begin
                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('SELECT Data_Entrada AS Data_Emissao,');
                    tNotas.SQL.Add('       DAY(Data_Entrada) AS Dia,');
                    tNotas.SQL.Add('       Nota AS Numero,');
                    tNotas.SQL.Add('       Natureza_Codigo,');
                    tNotas.SQL.Add('       Processo = (SELECT MAX(Processo) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao),');
                    tNotas.SQL.Add('       Valor_TotalNota,');
                    tNotas.SQL.Add('       Valor_TotalDescontos AS Total_Descontos,');
                    tNotas.SQL.Add('       (Valor_TotalNota-Valor_TotalDescontos) AS Valor_Liquido,');
                    tNotas.SQL.Add('       Valor_BCICMSOper AS BCICMS,');
                    tNotas.SQL.Add('       Valor_ICMSOper AS Valor_ICMS,');
                    tNotas.SQL.Add('       Valor_ICMSSub AS ValorICMS_Substitutivo,');
                    tNotas.SQL.Add('       Valor_TotalIPI,');
                    tNotas.SQL.Add('       0 AS Valor_TotalII,');
                    tNotas.SQL.Add('       Valor_BCPIS = (SELECT SUM(Valor_BCPIS) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Entrada = NotasTerceiros.Data_Entrada),');
                    tNotas.SQL.Add('       Valor_PIS,');
                    tNotas.SQL.Add('       Valor_COFINS,');
                    tNotas.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE(Codigo = NotasTerceiros.Fornecedor)) AS Beneficiario,');
                    tNotas.SQL.Add('       2 AS Saida_Entrada,');
                    tNotas.SQL.Add('       CAST(0 AS bit) AS Cancelada,');
                    tNotas.SQL.Add('       CAST(0 AS bit) AS Nfe_Denegada,');
                    tNotas.SQL.Add('       ''N'' AS Nota_Pedido,');
                    tNotas.SQL.Add('       (SELECT Descricao FROM ReferenciasFiscais WHERE(Codigo = NotasTerceiros.Referencia_Fiscal)) AS Descricao_Tipo,');
                    tNotas.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT MAX(Modalidade_Importacao) FROM ProcessosDocumentos WHERE(Processo = NotasTerceiros.Processo))) ) AS Tipo_Processo,');
                    tNotas.SQL.Add('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa,');
                    tNotas.SQL.Add('       Valor_TotalProdutos,');
                    tNotas.SQL.Add('       0 AS Valor_Despesas,');
                    tNotas.SQL.Add('       Valor_OutrasIPI,');
                    tNotas.SQL.Add('       Valor_IsentasIPI,');
                    tNotas.SQL.Add('       Valor_OutrasICMS,');
                    tNotas.SQL.Add('       Valor_IsentasICMS');
                    tNotas.SQL.Add('FROM   NotasTerceiros ');
                    tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) ');
                    If cServico.Checked         = False then tNotas.SQL.Add(' AND (Servico IS NULL OR LEN(RTRIM(SERVICO)) = 0)');
                    If cNatureza.Text          <> ''    then tNotas.SQL.Add(' AND (Natureza_Codigo = ' + QuotedStr(NaturezaCodigo.AsString)+')' );
                    If cProcesso.KeyValue      <> null  then tNotas.SQL.Add(' AND (Processo = '+ QuotedStr(ProcessosDOCProcesso.AsString)+')' );
                    If cCliFor.KeyValue        <> null  then tNotas.SQL.Add(' AND (Fornecedor = '+ Trim(FornecedoresCodigo.AsString)+' )' );
                    If Trim(mIncentivos)       <> ''    then tNotas.SQL.Add(' AND (NotasTerceiros.Incentivo_Fiscal IN('+ mIncentivos + '))');
                    If cTransportador.KeyValue <> null  then tNotas.SQL.Add(' AND (Transportador_Codigo = '+ tTransportadorCodigo.AsString+' )' );
                    If cRefFiscal.KeyValue     <> null  then tNotas.SQL.Add(' AND (Referencia_Fiscal = ' + ReferenciasFiscaisCodigo.AsString+' )' );
                    If cProvisorias.Checked             then tNotas.SQL.Add(' AND (ISNULL(Provisoria, 0) <> 1)' );
                    If cNCM.Text <> '' then begin
                       tNotas.SQL.Add('AND Nota IN(SELECT DISTINCT Nota FROM NotasTerceirosItens WHERE NCM = '+quotedstr(cNCM.Text)+')')
                    End;
                    if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo         from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca   from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples       from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI           from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                    if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa from Fornecedores where Codigo = NotasTerceiros.Fornecedor) = 1');
                 End;
              End;
           End;

           // Notas fiscais de Serviço.
           If cServico.Checked and (cTipo.ItemIndex <> 1) then begin
              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT Data_Emissao,');
              tNotas.SQL.Add('       DAY(Data_Emissao) AS Dia,');
              tNotas.SQL.Add('       Numero,');
              tNotas.SQL.Add('       Natureza_Operacao AS Natureza_Codigo,');
              tNotas.SQL.Add('       Processo,');
              tNotas.SQL.Add('       Total_Nota,');
              tNotas.SQL.Add('       Desconto_Valor AS Total_Descontos,');
              tNotas.SQL.Add('       (Total_Nota-Desconto_Valor) AS Valor_Liquido,');
              tNotas.SQL.Add('       0 AS BCICMS,');
              tNotas.SQL.Add('       0 AS Valor_ICMS,');
              tNotas.SQL.Add('       0 AS ValorICMS_Substitutivo,');
              tNotas.SQL.Add('       0 AS Valor_TotalIPI,');
              tNotas.SQL.Add('       0 AS Valor_TotalII,');
              tNotas.SQL.Add('       0,');
              tNotas.SQL.Add('       0,');
              tNotas.SQL.Add('       0,');
              tNotas.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = NotasServico.Cliente)) AS Beneficiario,');
              tNotas.SQL.Add('       1 AS Saida_Entrada,');
              tNotas.SQL.Add('       CAST(0 AS bit) AS Cancelada,');
              tNotas.SQL.Add('       CAST(0 AS bit) AS Nfe_Denegada,');
              tNotas.SQL.Add('       ''N'' AS Nota_Pedido,');
              tNotas.SQL.Add('       ''SERVICO PRESTADO'' AS Descricao_Tipo,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT MAX(Modalidade_Importacao) FROM ProcessosDocumentos WHERE(Processo = NotasServico.Processo))) ) AS Tipo_Processo,');
              tNotas.SQL.Add('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa,');
              tNotas.SQL.Add('       Valor_Servico AS Valor_TotalProdutos,');
              tNotas.SQL.Add('       0 AS Valor_Despesas,');
              tNotas.SQL.Add('       0 AS Valor_OutrasIPI,');
              tNotas.SQL.Add('       0 AS Valor_IsentasIPI,');
              tNotas.SQL.Add('       0 AS Valor_OutrasICMS,');
              tNotas.SQL.Add('       0 AS Valor_IsentasICMS');
              tNotas.SQL.Add('FROM   NotasServico');
              tNotas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataIni AND :pDataFim) ');
              If cNatureza.Text <> '' then tNotas.SQL.Add(' AND (Natureza_Operacao = '+ QuotedStr(NaturezaCodigo.AsString)+')' );
              If cProcesso.KeyValue <> null then tNotas.SQL.Add(' AND (Processo = '+ QuotedStr(ProcessosDOCProcesso.AsString)+')' );
              If cCliFor.KeyValue   <> null then tNotas.SQL.Add(' AND (Cliente = '+ Trim(ClientesCodigo.AsString)+' )' );
              
              if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples_Nacional from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI              from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa    from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca      from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cInscricao.Checked  then tNotas.SQL.Add(' and (select InscricaoST      from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cComprador.Checked  then tNotas.SQL.Add(' and (select Comprador        from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cImportador.Checked then tNotas.SQL.Add(' and (select Importador       from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cTerminal.Checked   then tNotas.SQL.Add(' and (select Terminal         from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cComprador.Checked  then tNotas.SQL.Add(' and (select Comprador        from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cBloqueado.Checked  then tNotas.SQL.Add(' and (select Bloqueado        from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo            from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cVarejista.Checked  then tNotas.SQL.Add(' and (select Varejista        from Clientes where Codigo = NotasServico.Cliente) = 1');
              if cAtacadista.Checked then tNotas.SQL.Add(' and (select Atacadista       from Clientes where Codigo = NotasServico.Cliente) = 1');
           End;

           // Pedidos de Saída.
           if (cOrigemDados.ItemIndex > 0) then begin
              if cOrigemDados.ItemIndex = 2 then
                 tNotas.SQL.Add('UNION ALL')
              else
                 tNotas.SQL.Clear;

              tNotas.SQL.Add('SELECT Data_Emissao,');
              tNotas.SQL.Add('       DAY(Data_Emissao) AS Dia,');
              tNotas.SQL.Add('       Numero,');
              tNotas.SQL.Add('       Natureza_Codigo,');
              tNotas.SQL.Add('       Processo,');
              tNotas.SQL.Add('       Valor_TotalNota,');
              tNotas.SQL.Add('       Total_Descontos,');
              tNotas.SQL.Add('       (Valor_TotalNota-Total_Descontos) AS Valor_Liquido,');
              tNotas.SQL.Add('       BCICMS,');
              tNotas.SQL.Add('       Valor_ICMS,');
              tNotas.SQL.Add('       ValorICMS_Substitutivo,');
              tNotas.SQL.Add('       Valor_TotalIPI,');
              tNotas.SQL.Add('       Valor_TotalII,');
              tNotas.SQL.Add('       Valor_BCPIS,');
              tNotas.SQL.Add('       Valor_PIS,');
              tNotas.SQL.Add('       Valor_COFINS,');
              tNotas.SQL.Add('       Destinatario_Nome AS Beneficiario,');
              tNotas.SQL.Add('       Saida_Entrada,');
              tNotas.SQL.Add('       CAST(0 AS bit) AS Cancelada,');
              tNotas.SQL.Add('       CAST(0 AS bit) AS Nfe_Denegada,');
              tNotas.SQL.Add('       ''P'' AS Nota_Pedido,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TipoNota      WHERE(Codigo = Pedidos.Tipo_Nota)) AS Descricao_Tipo,');
              tNotas.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT MAX(Modalidade_Importacao) FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo))) ) AS Tipo_Processo,');
              tNotas.SQL.Add('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa,');
              tNotas.SQL.Add('       Valor_TotalProdutos,');
              tNotas.SQL.Add('       Valor_OutrasDespesas AS Valor_Despesas,');
              tNotas.SQL.Add('       Valor_OutrasIPI,');
              tNotas.SQL.Add('       Valor_IsentasIPI,');
              tNotas.SQL.Add('       Valor_OutrasICMS,');
              tNotas.SQL.Add('       Valor_IsentasICMS');
              tNotas.SQL.Add('FROM   Pedidos ');
              tNotas.SQL.Add('WHERE (Saida_Entrada = 1) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) ');

              If cOrigem.ItemIndex        = 1    then tNotas.SQL.Add(' AND (LEN(RTRIM(DI)) <> 0)');
              If cOrigem.ItemIndex        = 2    then tNotas.SQL.Add(' AND (LEN(RTRIM(DI)) =  0 OR DI IS NULL)');
              If cNatureza.Text          <> ''   then tNotas.SQL.Add(' AND (Natureza_Codigo = ' + QuotedStr(NaturezaCodigo.AsString)+')' );
              If cProcesso.KeyValue      <> null then tNotas.SQL.Add(' AND (Processo = ' + QuotedStr(ProcessosDOCProcesso.AsString)+')' );
              If cCliFor.KeyValue        <> null then tNotas.SQL.Add(' AND (Cliente_Codigo = ' + ClientesCodigo.AsString+' )' );
              If cTransportador.KeyValue <> null then tNotas.SQL.Add(' AND (Transportador_Codigo = '+ tTransportadorCodigo.AsString+' )' );
              If cEstado.KeyValue        <> null then tNotas.SQL.Add(' AND (Pedidos.Estado = ' + QuotedStr(EstadosCodigo.AsString)+')' );
              If Trim(mIncentivos)       <> ''   then tNotas.SQL.Add(' AND (Pedidos.Incentivo_Fiscal IN('+ mIncentivos + '))');

              If cFinanceiro.Checked = true then begin
                 tNotas.SQL.Add(' AND ((SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Pedidos.Tipo_Nota)) = 1)');
              End;
              If cTipoCliente.ItemIndex = 1 then begin
                 tNotas.SQL.Add(' AND ((SELECT ISNULL(Isento, 0) FROM Clientes WHERE(Codigo = Pedidos.Cliente_Codigo)) = 0)');
              End;
              If cTipoCliente.ItemIndex = 2 then begin
                 tNotas.SQL.Add(' AND ((SELECT ISNULL(Isento, 0) FROM Clientes WHERE(Codigo = Pedidos.Cliente_Codigo)) = 1)');
              End;
              If cTipoNota.KeyValue <> null then tNotas.SQL.Add(' AND (Tipo_Nota = ' + TipoNotaCodigo.AsString+' )' );
              If cNCM.Text <> '' then begin
                 tNotas.SQL.Add('AND Numero IN(SELECT DISTINCT Pedido FROM PedidosItens WHERE NCM = '+quotedstr(cNCM.Text)+')')
              End;
              if cTipo.ItemIndex in[0,2] then begin
                 if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples_Nacional from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI              from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa    from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca      from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cInscricao.Checked  then tNotas.SQL.Add(' and (select InscricaoST      from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cComprador.Checked  then tNotas.SQL.Add(' and (select Comprador        from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cImportador.Checked then tNotas.SQL.Add(' and (select Importador       from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cTerminal.Checked   then tNotas.SQL.Add(' and (select Terminal         from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cComprador.Checked  then tNotas.SQL.Add(' and (select Comprador        from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cBloqueado.Checked  then tNotas.SQL.Add(' and (select Bloqueado        from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo            from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cVarejista.Checked  then tNotas.SQL.Add(' and (select Varejista        from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
                 if cAtacadista.Checked then tNotas.SQL.Add(' and (select Atacadista       from Clientes where Codigo = Pedidos.Cliente_Codigo) = 1');
              end;
              if cTipo.ItemIndex in[0,1] then begin
                 if cAtivo.Checked      then tNotas.SQL.Add(' and (select Ativo         from Fornecedores where Codigo = Pedidos.Fornecedor_Codigo) = 1');
                 if cZona.Checked       then tNotas.SQL.Add(' and (select Zona_Franca   from Fornecedores where Codigo = Pedidos.Fornecedor_Codigo) = 1');
                 if cSimples.Checked    then tNotas.SQL.Add(' and (select Simples       from Fornecedores where Codigo = Pedidos.Fornecedor_Codigo) = 1');
                 if cMEI.Checked        then tNotas.SQL.Add(' and (select MEI           from Fornecedores where Codigo = Pedidos.Fornecedor_Codigo) = 1');
                 if cMicro.Checked      then tNotas.SQL.Add(' and (select Micro_Empresa from Fornecedores where Codigo = Pedidos.Fornecedor_Codigo) = 1');
              end;
           End;

           // Filiais.
           If cConsolidado.Checked = true then begin
              mSQLMatriz := tNotas.SQL.Text;

              tEmpresas.First;
              While not tEmpresas.Eof do begin
                    mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
                    mSQLFilial := RemoveCaracter('NotasItens'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'         , mSQLFilial);
                    mSQLFilial := RemoveCaracter('NotasServico'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'       , mSQLFilial);
                    mSQLFilial := RemoveCaracter('TipoNota'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
                    mSQLFilial := RemoveCaracter('NotasTerceirosItens', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens', mSQLFilial);
                    mSQLFilial := RemoveCaracter('NotasTerceiros '     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros '   , mSQLFilial);
                    mSQLFilial := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais' , mSQLFilial);
                    mSQLFilial := RemoveCaracter('TiposProcesso'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TiposProcesso'      , mSQLFilial);
                    mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
                    mSQLFilial := RemoveCaracter('Clientes'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes'           , mSQLFilial);
                    mSQLFilial := RemoveCaracter('Fornecedores'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Fornecedores'       , mSQLFilial);
                    mSQLFilial := RemoveCaracter('PedidosItens'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PedidosItens'       , mSQLFilial);
                    mSQLFilial := RemoveCaracter('Pedidos '            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Pedidos'           , mSQLFilial);
                    mSQLFilial := RemoveCaracter('       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ EmpresasCodigo.AsString +')) AS Empresa', '       (SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+ tEmpresas.FieldByName('Codigo').AsString +')) AS Empresa', mSQLFilial);
                    tNotas.SQL.Add('UNION ALL');
                    tNotas.SQL.Add(mSQLFilial);
                    tEmpresas.Next;
              End;
           End;

           tNotas.SQL.Add('ORDER BY Empresa, Data_Emissao, Numero');
           tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tNotas.SQL.SaveToFile('c:\temp\Relacao_Notas_Emitidas.SQL');
           tNotas.Open;

           lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text;
           If Trim(cEstado.Text) <> '' then begin
              lPeriodo.Caption := lPeriodo.Caption + '  -  Apenas Estado '+EstadosDe_Do.AsString + ' '+EstadosNome.AsString;
           End;
           If cTransportador.KeyValue <> null then lPeriodo.Caption := lPeriodo.Caption + ' - Transportador: ' + cTransportador.Text;
           If trim(cNCM.Text) <> '' then lPeriodo.Caption := lPeriodo.Caption + ' - NCM: ' + FormatMaskText('####.##.##;0; ', cNCM.Text);

           If not cConsolidado.Checked then begin
              If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                 lTitulo.Caption := 'Relação de notas fiscais - '+'MATRIZ ('+ EmpresasEstado.AsString+')'
              else
                 lTitulo.Caption := 'Relação de notas fiscais - '+'FILIAL ' + EmpresasNumero_Filial.AsString+' ('+EmpresasEstado.AsString+')';
           end else begin
              lTitulo.Caption := 'Relação de notas fiscais (Consolidado)';
           End;
      End;

      Screen.Cursor := crDefault;

      If cExcel.Checked = false then begin
         ltSaidas_Nota.Value       := 0;
         ltSaidas_Desconto.Value   := 0;
         ltSaidas_Liquido.Value    := 0;
         ltSaidas_BCICMS.Value     := 0;
         ltSaidas_VLICMS.Value     := 0;
         ltSaidas_ICMSSub.Value    := 0;
         ltSaidas_IPI.Value        := 0;
         ltSaidas_II.Value         := 0;
         ltSaidas_PIS.Value        := 0;
         ltSaidas_COFINS.Value     := 0;
         ltSaidas_PISImp.Value     := 0;
         ltSaidas_COFINSImp.Value  := 0;
         ltSaidas_Nota2.Value      := 0;
         ltSaidas_Desconto2.Value  := 0;
         ltSaidas_Liquido2.Value   := 0;
         ltSaidas_BCICMS2.Value    := 0;
         ltSaidas_VLICMS2.Value    := 0;
         ltSaidas_ICMSSub2.Value   := 0;
         ltSaidas_IPI2.Value       := 0;
         ltSaidas_II2.Value        := 0;
         ltSaidas_PIS2.Value       := 0;
         ltSaidas_COFINS2.Value    := 0;
         ltSaidas_PISImp2.Value    := 0;
         ltSaidas_COFINSImp2.Value := 0;

         ppGroupFooterBand2.Visible := not cApenasCancelada.Checked;
         ppSummaryBand1.Visible     := not cApenasCancelada.Checked;

         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rNotas.Print;
         rNotas.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.ppGroupHeaderBand1AfterPrint(Sender: TObject);
begin
      lFaixa.Visible := False;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      With Dados do begin
           Configuracao.Open;

           Empresas.Open;
           Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

           // Seleciona todas as filiais da empresa "MATRIZ" em uso.
           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo <> :pEmpresa) AND (Consolidar = 1) AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
           tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           tEmpresas.ParamByName('pCNPJ').AsString     := Copy(EmpresasCNPJ.AsString, 1, 8);
           tEmpresas.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Tipo, Processo');
           ProcessosDOC.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           tTransportador.SQL.Clear;
           tTransportador.SQL.Add('SELECT  Codigo');
           tTransportador.SQL.Add('       ,Nome');
           tTransportador.SQL.Add('       ,CNPJ');
           tTransportador.SQL.Add('FROM   Fornecedores');
           tTransportador.SQL.Add('WHERE  (SELECT Descricao FROM RamoAtividade WHERE Codigo =  Ramo_Atividade) LIKE ''%TRANSP%'' ');
           tTransportador.SQL.Add('  AND  (SELECT Modulo_NotaFiscalTerceiros FROM RamoAtividade WHERE Codigo =  Ramo_Atividade) = 1');
           tTransportador.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota ORDER BY Descricao');
           TipoNota.Open;

           ReferenciasFiscais.SQL.Clear;
           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais ORDER BY Descricao');
           ReferenciasFiscais.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;
           cIncentivos.Items.Clear;

           While not IncentivosFiscais.Eof do begin
                 cIncentivos.Items.Add(IncentivosFiscaisNome.AsString);
                 IncentivosFiscais.Next;
           End;
           cIncentivos.Items.Add('SEM INCENTIVO');
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                        := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date               := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_NOTAS', 'DataIni'      , Date );
      cDataFim.Date               := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_NOTAS', 'DataFim'      , Date );
      cTipo.ItemIndex             := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'Tipo'         , 0 );
      cOrigem.ItemIndex           := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'Origem'       , 0 );
      cOrigemNota.ItemIndex       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'OrigemNota'   , 0 );
      cNatureza.DisplayValue      := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Natureza'     , '' );
      cProcesso.DisplayValue      := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Processo'     , '' );
      cCliFor.DisplayValue        := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'CliFor'       , '' );
      cTipoNota.DisplayValue      := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'TipoNota'     , '' );
      cRefFiscal.DisplayValue     := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'RefFiscal'    , '' );
      cEstado.DisplayValue        := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Estado'       , '' );
      cCancelada.Checked          := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Cancelada'    , False );
      cApenasCancelada.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'ApenasCancel' , False );
      cServico.Checked            := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Servico'      , False );
      cZebrado.Checked            := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Zebrado'      , True  );
      cExcel.Checked              := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Excel'        , True  );
      cTransportador.DisplayValue := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'Transportaodr', '' );
      cFinanceiro.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Financeiro'   , false );
      cConsolidado.Checked        := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Consolidado'  , false );
      cOrigemDados.ItemIndex      := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_NOTAS', 'OrigemDados'  , 0 );
      cProvisorias.Checked        := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_NOTAS', 'Provisorias'  , False );
      cNCm.text                   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_NOTAS', 'NCM'          , '' );
      aINI.Free;

      cNatureza.Enabled := cTipo.ItemIndex <> 0;
      lCliFor.Enabled   := cTipo.ItemIndex <> 0;
      cCliFor.Enabled   := cTipo.ItemIndex <> 0;

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

procedure TImpressao_Faturamento_OP_NotasEmitidas.cTipoClick(Sender: TObject);
begin
      cNatureza.Enabled := cTipo.ItemIndex <> 0;
      If cTipo.ItemIndex <> 0 then begin
         With Dados do begin
              Natureza.SQL.Clear;
              Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim) ORDER BY Codigo');
              If cTipo.ItemIndex = 1 then begin
                 Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
                 Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
              End;
              If cTipo.ItemIndex = 2 then begin
                 Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.Value;
                 Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.Value;
              End;
              Natureza.Open;
         End;
      end else begin
          cNatureza.KeyValue := -1;
      End;

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
      
      If (cOrigemNota.ItemIndex = 2) and (cTipo.ItemIndex = 2) then cTipo.ItemIndex := 1;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.cNaturezaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.cProcessoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_OP_NotasEmitidas.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mTotal07  : Real;
   mTotal08  : Real;
   mTotal09  : Real;
   mTotal10  : Real;
   mTotal11  : Real;
   mTotal12  : Real;
   mTotal13  : Real;
   mTotal14  : Real;
   mTotal15  : Real;
   mTotal16  : Real;
   mTotal17  : Real;
   mTotal18  : Real;
   mTotal19  : Real;
   mTotal20  : Real;
   mTotal21  : Real;
   mTotal22  : Real;
   mTotal23  : Real;
   mTotal24  : Real;
   mTotal25  : Real;
   mZebra    : Boolean;
   mPisImp   : Real;
   mCOFINSImp: Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','AB3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','AB3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','AB3'].Font.Bold         := true;
       mPlanilha.Range['A3','AB3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','AB3'].Borders.LineStyle := 1; // xlContinuous.
       mPlanilha.Range['A3','AB3'].Borders.Weight    := 2; // xlThin.
       mPlanilha.Range['A3','AB3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'Nº NF';
       mPlanilha.Cells[3,03] := 'EMISSÃO';
       mPlanilha.Cells[3,04] := 'CFOP';
       mPlanilha.Cells[3,05] := 'TIPO DE PROCESSO';
       mPlanilha.Cells[3,06] := 'FORNECEDOR/CLIENTE';

       mPlanilha.Cells[3,07] := 'VL.II';
       mPlanilha.Cells[3,08] := 'B.C.ICMS OP';
       mPlanilha.Cells[3,09] := 'VL.ICMS OP';
       mPlanilha.Cells[3,10] := 'VL.ICMS ST';
       mPlanilha.Cells[3,11] := 'VL.IPI';
       mPlanilha.Cells[3,12] := 'VL.BC PIS/COFINS';
       mPlanilha.Cells[3,13] := 'VL.PIS';
       mPlanilha.Cells[3,14] := 'VL.PIS IMP';
       mPlanilha.Cells[3,15] := 'VL.COFINS';
       mPlanilha.Cells[3,16] := 'VL.COFINS IMP';
       mPlanilha.Cells[3,17] := 'DESPESAS';
       mPlanilha.Cells[3,18] := 'OUTRAS IPI';
       mPlanilha.Cells[3,19] := 'ISENTAS IPI';
       mPlanilha.Cells[3,20] := 'OUTRAS ICMS';
       mPlanilha.Cells[3,21] := 'ISENTAS ICMS';
       mPlanilha.Cells[3,22] := 'PRODUTOS';
       mPlanilha.Cells[3,23] := 'DESCONTO';
       mPlanilha.Cells[3,24] := 'TOTAL LIQ.';
       mPlanilha.Cells[3,25] := 'TOTAL NF';

       mPlanilha.Cells[3,26] := 'CANCELADA';
       mPlanilha.Cells[3,27] := 'DENEGADA';
       mPlanilha.Cells[3,28] := 'TIPO DE FATURAMENTO';

       mPlanilha.Range['A3','AB3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','AB3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','AB3'].Font.Size           := 8;

       mTotal07   := 0;
       mTotal08   := 0;
       mTotal09   := 0;
       mTotal10   := 0;
       mTotal11   := 0;
       mTotal12   := 0;
       mTotal13   := 0;
       mTotal14   := 0;
       mTotal15   := 0;
       mTotal16   := 0;
       mTotal17   := 0;
       mTotal18   := 0;
       mTotal19   := 0;
       mTotal20   := 0;
       mTotal21   := 0;
       mTotal22   := 0;
       mTotal23   := 0;
       mTotal24   := 0;
       mTotal25   := 0;

       mPISImp    := 0;
       mCOFINSImp := 0;
       mLinha     := 4;
       mZebra     := false;
       While (not tNotas.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'AB'+InttoStr(mLinha)].Font.Size := 8;

             If tNotas.FieldByName('Saida_Entrada').AsInteger = 1 then begin
                tRateio.SQL.Clear;
                tRateio.SQL.Add('SELECT SUM(Valor_TotalNota) AS Total FROM NotasFiscais WHERE(Processo = :pProcesso) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1)');
                tRateio.ParamByName('pProcesso').AsString := tNotas.FieldByName('Processo').AsString;
                tRateio.Open;
                If tRateio.FieldByName('Total').Value > 0 then begin
                   mPISImp    := ((tNotas.FieldByName('Valor_PIS').Value / tRateio.FieldByName('Total').Value) * tNotas.FieldByName('Valor_TotalNota').Value);
                   mCOFINSImp := ((tNotas.FieldByName('Valor_COFINS').Value / tRateio.FieldByName('Total').Value) * tNotas.FieldByName('Valor_TotalNota').Value);
                End;
             end else begin
                mPISImp    := 0;
                mCOFINSImp := 0;
             End;

             mPlanilha.Cells[mLinha,01] := tNotas.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := tNotas.FieldByName('Numero').AsInteger;
             mPlanilha.Cells[mLinha,03] := tNotas.FieldByName('Data_Emissao').AsDateTime;
             mPlanilha.Cells[mLinha,04] := tNotas.FieldByName('Natureza_Codigo').AsString;
             mPlanilha.Cells[mLinha,05] := tNotas.FieldByName('Tipo_Processo').AsString;
             mPlanilha.Cells[mLinha,06] := tNotas.FieldByName('Beneficiario').AsString;

             mPlanilha.Cells[mLinha,07] := tNotas.FieldByName('Valor_TotalII').AsFloat;
             mPlanilha.Cells[mLinha,08] := tNotas.FieldByName('BCICMS').AsFloat;
             mPlanilha.Cells[mLinha,09] := tNotas.FieldByName('Valor_ICMS').AsFloat;
             mPlanilha.Cells[mLinha,10] := tNotas.FieldByName('ValorICMS_Substitutivo').AsFloat;
             mPlanilha.Cells[mLinha,11] := tNotas.FieldByName('Valor_TotalIPI').AsFloat;
             mPlanilha.Cells[mLinha,12] := tNotas.FieldByName('Valor_BCPIS').AsFloat;
             mPlanilha.Cells[mLinha,13] := tNotas.FieldByName('Valor_PIS').AsFloat;
             mPlanilha.Cells[mLinha,15] := tNotas.FieldByName('Valor_COFINS').AsFloat;
             mPlanilha.Cells[mLinha,17] := tNotas.FieldByName('Valor_Despesas').AsFloat;
             mPlanilha.Cells[mLinha,18] := tNotas.FieldByName('Valor_OutrasIPI').AsFloat;
             mPlanilha.Cells[mLinha,19] := tNotas.FieldByName('Valor_IsentasIPI').AsFloat;
             mPlanilha.Cells[mLinha,20] := tNotas.FieldByName('Valor_OutrasICMS').AsFloat;
             mPlanilha.Cells[mLinha,21] := tNotas.FieldByName('Valor_IsentasICMS').AsFloat;
             mPlanilha.Cells[mLinha,22] := tNotas.FieldByName('Valor_TotalProdutos').AsFloat;
             mPlanilha.Cells[mLinha,23] := tNotas.FieldByName('Total_Descontos').AsFloat;
             mPlanilha.Cells[mLinha,24] := tNotas.FieldByName('Valor_Liquido').AsFloat;
             mPlanilha.Cells[mLinha,25] := tNotas.FieldByName('Valor_TotalNota').AsFloat;

             mPlanilha.Cells[mLinha,02].NumberFormat := '000000000';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,20].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,21].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,22].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,23].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,24].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,25].NumberFormat := '#.##0,00_);(#.##0,00)';

             If (not tNotas.FieldByName('Cancelada').AsBoolean) and (not tNotas.FieldByName('Nfe_Denegada').AsBoolean) then begin
                mTotal07 := mTotal07 + tNotas.FieldByName('Valor_TotalII').AsFloat;
                mTotal08 := mTotal08 + tNotas.FieldByName('BCICMS').AsFloat;
                mTotal09 := mTotal09 + tNotas.FieldByName('Valor_ICMS').AsFloat;
                mTotal10 := mTotal10 + tNotas.FieldByName('ValorICMS_Substitutivo').AsFloat;
                mTotal11 := mTotal11 + tNotas.FieldByName('Valor_TotalIPI').AsFloat;
                mTotal12 := mTotal12 + tNotas.FieldByName('Valor_BCPIS').AsFloat;
                mTotal13 := mTotal13 + tNotas.FieldByName('Valor_PIS').AsFloat;
                mTotal15 := mTotal15 + tNotas.FieldByName('Valor_COFINS').AsFloat;
                mTotal17 := mTotal17 + tNotas.FieldByName('Valor_Despesas').AsFloat;
                mTotal18 := mTotal18 + tNotas.FieldByName('Valor_OutrasIPI').AsFloat;
                mTotal19 := mTotal19 + tNotas.FieldByName('Valor_IsentasIPI').AsFloat;
                mTotal20 := mTotal20 + tNotas.FieldByName('Valor_OutrasICMS').AsFloat;
                mTotal21 := mTotal21 + tNotas.FieldByName('Valor_IsentasICMS').AsFloat;
                mTotal22 := mTotal22 + tNotas.FieldByName('Valor_TotalProdutos').AsFloat;
                mTotal23 := mTotal23 + tNotas.FieldByName('Total_Descontos').AsFloat;
                mTotal24 := mTotal24 + tNotas.FieldByName('Valor_Liquido').AsFloat;
                mTotal25 := mTotal25 + tNotas.FieldByName('Valor_TotalNota').AsFloat;
             end else begin
                If tNotas.FieldByName('Cancelada').AsBoolean then
                   mPlanilha.Cells[mLinha,26]  := '* CANCELADA *';
                If tNotas.FieldByName('Nfe_Denegada').AsBoolean then
                   mPlanilha.Cells[mLinha,27]  := '* DENEGADA *';

                mPlanilha.Range['A'+InttoStr(mLinha),'R'+InttoStr(mLinha)].Font.Color   := clGray;
                mPlanilha.Range['S'+InttoStr(mLinha),'S'+InttoStr(mLinha)].Font.Color   := clRed;
                mPlanilha.Range['AB'+InttoStr(mLinha),'AB'+InttoStr(mLinha)].Font.Color := clGray;
             End;

             mPlanilha.Cells[mLinha,28] := tNotas.FieldByName('Descricao_Tipo').AsString;

             mPlanilha.Cells[mLinha,03].HorizontalAlignment := 3;
             mPlanilha.Cells[mLinha,04].HorizontalAlignment := 3;
             mPlanilha.Cells[mLinha,18].HorizontalAlignment := 3;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'AB'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'AB'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tNotas.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.Autofit;
       
       mPlanilha.Cells[mLinha,06] := 'TOTAIS';
       mPlanilha.Cells[mLinha,06].HorizontalAlignment := 3;
       mPlanilha.Range['G3','Q3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'AB'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'AB'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,07] := mTotal07;
       mPlanilha.Cells[mLinha,08] := mTotal08;
       mPlanilha.Cells[mLinha,09] := mTotal09;
       mPlanilha.Cells[mLinha,10] := mTotal10;
       mPlanilha.Cells[mLinha,11] := mTotal11;
       mPlanilha.Cells[mLinha,12] := mTotal12;
       mPlanilha.Cells[mLinha,13] := mTotal13;
       mPlanilha.Cells[mLinha,14] := mTotal14;
       mPlanilha.Cells[mLinha,15] := mTotal15;
       mPlanilha.Cells[mLinha,16] := mTotal16;
       mPlanilha.Cells[mLinha,17] := mTotal17;
       mPlanilha.Cells[mLinha,18] := mTotal18;
       mPlanilha.Cells[mLinha,19] := mTotal19;
       mPlanilha.Cells[mLinha,20] := mTotal20;
       mPlanilha.Cells[mLinha,21] := mTotal21;
       mPlanilha.Cells[mLinha,22] := mTotal22;
       mPlanilha.Cells[mLinha,23] := mTotal23;
       mPlanilha.Cells[mLinha,24] := mTotal24;
       mPlanilha.Cells[mLinha,25] := mTotal25;

       mPlanilha.Range['F'+InttoStr(mLinha),'Y'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['F'+InttoStr(mLinha),'Y'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['F'+InttoStr(mLinha),'Y'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['F'+InttoStr(mLinha),'Y'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['F'+InttoStr(mLinha),'Y'+InttoStr(mLinha)].Borders.Weight    := 2;
       mPlanilha.Range['F'+InttoStr(mLinha),'Y'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,20].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,21].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,22].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,23].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,24].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,25].NumberFormat := '#.##0,00_);(#.##0,00)';

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       mPlanilha.Range['A1','A1'].Font.Size            := 14;
       mPlanilha.Range['A1','A1'].Font.Bold            := true;
       mPlanilha.Range['A1','AB1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','AB1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','AB1'].Mergecells          := True;
       mPlanilha.Range['A2','AB2'].Mergecells          := True;
       mPlanilha.Range['A2','AB2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','AB2'].VerticalAlignment   := 2;

       mPlanilha.Cells[2,01]                := lPeriodo.Caption;
       mPlanilha.Range['A2','A2'].Font.Size := 10;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.cOrigemNotaClick(Sender: TObject);
begin
      If cOrigemNota.ItemIndex = 2 then cTipo.ItemIndex := 1;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.lPISImpCalc(Sender: TObject; var Value: Variant);
begin
      {
      If tNotas.FieldByName('Saida_Entrada').AsInteger = 1 then begin
         tRateio.SQL.Clear;
         tRateio.SQL.Add('SELECT SUM(Valor_TotalNota) AS Total FROM NotasFiscais WHERE(Processo = :pProcesso) AND (Cancelada <> 1) AND (Saida_Entrada = 1)');
         tRateio.ParamByName('pProcesso').AsString := tNotas.FieldByName('Processo').AsString;
         tRateio.Open;

         If tRateio.FieldByName('Total').Value > 0 then Value := ((tNotas.FieldByName('Valor_PIS').Value / tRateio.FieldByName('Total').Value) * tNotas.FieldByName('Valor_TotalNota').Value);
      end else begin
          Value := 0;
      End;
      }
      Value := 0;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.lCofinsImpCalc(Sender: TObject; var Value: Variant);
begin
      {
      If tNotas.FieldByName('Saida_Entrada').AsInteger = 1 then begin
         If tRateio.FieldByName('Total').Value > 0 then Value := ((tNotas.FieldByName('Valor_COFINS').Value / tRateio.FieldByName('Total').Value) * tNotas.FieldByName('Valor_TotalNota').Value);
      end else begin
         Value := 0;
      End;
      }
      Value := 0;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.cCanceladaClick(Sender: TObject);
begin
      If cCancelada.Checked = false then begin
         cApenasCancelada.Enabled := false;
         cApenasCancelada.Checked := false;
      end else begin
         cApenasCancelada.Enabled := true;
      End;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.bSelecionarClick(Sender: TObject);
Var
    i : integer;
begin
      For i := 0 to cIncentivos.Items.Count-1 do begin
          cIncentivos.Checked[i] := true;
      End;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.bDesmarcarClick(Sender: TObject);
Var
    i : integer;
begin
      For i := 0 to cIncentivos.Items.Count-1 do begin
          cIncentivos.Checked[i] := false;
      End;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
      If tNotas.FieldByName('Empresa').AsInteger = 0 then
         lEmpresa.Caption := 'MATRIZ'
      else
         lEmpresa.Caption := 'FILIAL '+ tNotas.FieldByName('Empresa').AsString;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.ltSaidas_Nota2Calc(Sender: TObject; var Value: Variant);
begin
      If (not tNotas.FieldByName('Cancelada').AsBoolean) and (not tNotas.FieldByName('Nfe_Denegada').AsBoolean) then begin
         If tNotas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
            ltEntradas_Nota.Value     := ltEntradas_Nota.Value      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
            ltEntradas_Desconto.Value := ltEntradas_Desconto.Value  + tNotas.FieldByName('Total_Descontos').AsCurrency;
            ltEntradas_Liquido.Value  := ltEntradas_Liquido.Value   + tNotas.FieldByName('Valor_Liquido').AsCurrency;
            ltEntradas_BCICMS.Value   := ltEntradas_BCICMS.Value    + tNotas.FieldByName('BCICMS').AsCurrency;
            ltEntradas_VLICMS.Value   := ltEntradas_VLICMS.Value    + tNotas.FieldByName('Valor_ICMS').AsCurrency;
            ltEntradas_ICMSSub.Value  := ltEntradas_ICMSSub.Value   + tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
            ltEntradas_IPI.Value      := ltEntradas_IPI.Value       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
            ltEntradas_II.Value       := ltEntradas_II.Value        + tNotas.FieldByName('Valor_TotalII').AsCurrency;
            ltEntradas_PIS.Value      := ltEntradas_PIS.Value       + tNotas.FieldByName('Valor_PIS').AsCurrency;
            ltEntradas_COFINS.Value   := ltEntradas_COFINS.Value    + tNotas.FieldByName('Valor_COFINS').AsCurrency;

            ltEntradas_Nota2.Value     := ltEntradas_Nota2.Value      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
            ltEntradas_Desconto2.Value := ltEntradas_Desconto2.Value  + tNotas.FieldByName('Total_Descontos').AsCurrency;
            ltEntradas_Liquido2.Value  := ltEntradas_Liquido2.Value   + tNotas.FieldByName('Valor_Liquido').AsCurrency;
            ltEntradas_BCICMS2.Value   := ltEntradas_BCICMS2.Value    + tNotas.FieldByName('BCICMS').AsCurrency;
            ltEntradas_VLICMS2.Value   := ltEntradas_VLICMS2.Value    + tNotas.FieldByName('Valor_ICMS').AsCurrency;
            ltEntradas_ICMSSub2.Value  := ltEntradas_ICMSSub2.Value   + tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
            ltEntradas_IPI2.Value      := ltEntradas_IPI2.Value       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
            ltEntradas_II2.Value       := ltEntradas_II2.Value        + tNotas.FieldByName('Valor_TotalII').AsCurrency;
            ltEntradas_PIS2.Value      := ltEntradas_PIS2.Value       + tNotas.FieldByName('Valor_PIS').AsCurrency;
            ltEntradas_COFINS2.Value   := ltEntradas_COFINS2.Value    + tNotas.FieldByName('Valor_COFINS').AsCurrency;
         End;
         If tNotas.FieldByName('Saida_Entrada').AsInteger = 1 then begin
            ltSaidas_Nota.Value      := ltSaidas_Nota.Value      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
            ltSaidas_Desconto.Value  := ltSaidas_Desconto.Value  + tNotas.FieldByName('Total_Descontos').AsCurrency;
            ltSaidas_Liquido.Value   := ltSaidas_Liquido.Value   + tNotas.FieldByName('Valor_Liquido').AsCurrency;
            ltSaidas_BCICMS.Value    := ltSaidas_BCICMS.Value    + tNotas.FieldByName('BCICMS').AsCurrency;
            ltSaidas_VLICMS.Value    := ltSaidas_VLICMS.Value    + tNotas.FieldByName('Valor_ICMS').AsCurrency;
            ltSaidas_ICMSSub.Value   := ltSaidas_ICMSSub.Value   + tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
            ltSaidas_IPI.Value       := ltSaidas_IPI.Value       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
            ltSaidas_II.Value        := ltSaidas_II.Value        + tNotas.FieldByName('Valor_TotalII').AsCurrency;
            ltSaidas_PIS.Value       := ltSaidas_PIS.Value       + tNotas.FieldByName('Valor_PIS').AsCurrency;
            ltSaidas_COFINS.Value    := ltSaidas_COFINS.Value    + tNotas.FieldByName('Valor_COFINS').AsCurrency;
            ltSaidas_PISImp.Value    := ltSaidas_PISImp.Value    + lPISImp.Value;
            ltSaidas_COFINSImp.Value := ltSaidas_COFINSImp.Value + lCOFINSImp.Value;

            ltSaidas_Nota2.Value      := ltSaidas_Nota2.Value      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
            ltSaidas_Desconto2.Value  := ltSaidas_Desconto2.Value  + tNotas.FieldByName('Total_Descontos').AsCurrency;
            ltSaidas_Liquido2.Value   := ltSaidas_Liquido2.Value   + tNotas.FieldByName('Valor_Liquido').AsCurrency;
            ltSaidas_BCICMS2.Value    := ltSaidas_BCICMS2.Value    + tNotas.FieldByName('BCICMS').AsCurrency;
            ltSaidas_VLICMS2.Value    := ltSaidas_VLICMS2.Value    + tNotas.FieldByName('Valor_ICMS').AsCurrency;
            ltSaidas_ICMSSub2.Value   := ltSaidas_ICMSSub2.Value   + tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
            ltSaidas_IPI2.Value       := ltSaidas_IPI2.Value       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
            ltSaidas_II2.Value        := ltSaidas_II2.Value        + tNotas.FieldByName('Valor_TotalII').AsCurrency;
            ltSaidas_PIS2.Value       := ltSaidas_PIS2.Value       + tNotas.FieldByName('Valor_PIS').AsCurrency;
            ltSaidas_COFINS2.Value    := ltSaidas_COFINS2.Value    + tNotas.FieldByName('Valor_COFINS').AsCurrency;
            ltSaidas_PISImp2.Value    := ltSaidas_PISImp2.Value    + lPISImp.Value;
            ltSaidas_COFINSImp2.Value := ltSaidas_COFINSImp2.Value + lCOFINSImp.Value;
         End;
         If tNotas.FieldByName('Saida_Entrada').AsInteger = 2 then begin
            ltTerceiros_Nota.Value     := ltTerceiros_Nota.Value      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
            ltTerceiros_Desconto.Value := ltTerceiros_Desconto.Value  + tNotas.FieldByName('Total_Descontos').AsCurrency;
            ltTerceiros_Liquido.Value  := ltTerceiros_Liquido.Value   + tNotas.FieldByName('Valor_Liquido').AsCurrency;
            ltTerceiros_BCICMS.Value   := ltTerceiros_BCICMS.Value    + tNotas.FieldByName('BCICMS').AsCurrency;
            ltTerceiros_VLICMS.Value   := ltTerceiros_VLICMS.Value    + tNotas.FieldByName('Valor_ICMS').AsCurrency;
            ltTerceiros_ICMSSub.Value  := ltTerceiros_ICMSSub.Value   + tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
            ltTerceiros_IPI.Value      := ltTerceiros_IPI.Value       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
            ltTerceiros_II.Value       := ltTerceiros_II.Value        + tNotas.FieldByName('Valor_TotalII').AsCurrency;
            ltTerceiros_PIS.Value      := ltTerceiros_PIS.Value       + tNotas.FieldByName('Valor_PIS').AsCurrency;
            ltTerceiros_COFINS.Value   := ltTerceiros_COFINS.Value    + tNotas.FieldByName('Valor_COFINS').AsCurrency;

            ltTerceiros_Nota2.Value     := ltTerceiros_Nota2.Value      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
            ltTerceiros_Desconto2.Value := ltTerceiros_Desconto2.Value  + tNotas.FieldByName('Total_Descontos').AsCurrency;
            ltTerceiros_Liquido2.Value  := ltTerceiros_Liquido2.Value   + tNotas.FieldByName('Valor_Liquido').AsCurrency;
            ltTerceiros_BCICMS2.Value   := ltTerceiros_BCICMS2.Value    + tNotas.FieldByName('BCICMS').AsCurrency;
            ltTerceiros_VLICMS2.Value   := ltTerceiros_VLICMS2.Value    + tNotas.FieldByName('Valor_ICMS').AsCurrency;
            ltTerceiros_ICMSSub2.Value  := ltTerceiros_ICMSSub2.Value   + tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
            ltTerceiros_IPI2.Value      := ltTerceiros_IPI2.Value       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
            ltTerceiros_II2.Value       := ltTerceiros_II2.Value        + tNotas.FieldByName('Valor_TotalII').AsCurrency;
            ltTerceiros_PIS2.Value      := ltTerceiros_PIS2.Value       + tNotas.FieldByName('Valor_PIS').AsCurrency;
            ltTerceiros_COFINS2.Value   := ltTerceiros_COFINS2.Value    + tNotas.FieldByName('Valor_COFINS').AsCurrency;
         End;

         ltSoma_NotaE.Value      := ltTerceiros_Nota.Value      + ltEntradas_Nota.Value;
         ltSoma_DescontoE.Value  := ltTerceiros_Desconto.Value  + ltEntradas_Desconto.Value;
         ltSoma_LiquidoE.Value   := ltTerceiros_Liquido.Value   + ltEntradas_Liquido.Value;
         ltSoma_BCICMSE.Value    := ltTerceiros_BCICMS.Value    + ltEntradas_BCICMS.Value;
         ltSoma_VLICMSE.Value    := ltTerceiros_VLICMS.Value    + ltEntradas_VLICMS.Value;
         ltSoma_ICMSSubE.Value   := ltTerceiros_ICMSSub.Value   + ltEntradas_ICMSSub.Value;
         ltSoma_IPIE.Value       := ltTerceiros_IPI.Value       + ltEntradas_IPI.Value;
         ltSoma_IIE.Value        := ltTerceiros_II.Value        + ltEntradas_II.Value;
         ltSoma_PISE.Value       := ltTerceiros_PIS.Value       + ltEntradas_PIS.Value;
         ltSoma_COFINSE.Value    := ltTerceiros_COFINS.Value    + ltEntradas_COFINS.Value;
         ltSoma_PISEImp.Value    := ltTerceiros_PISImp.Value    + ltEntradas_PISImp.Value;
         ltSoma_COFINSEImp.Value := ltTerceiros_COFINSImp.Value + ltEntradas_COFINSImp.Value;
      End;

end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.ppGroupFooterBand2AfterPrint(Sender: TObject);
begin
     ltEntradas_Nota2.Value     := 0;
     ltEntradas_Desconto2.Value := 0;
     ltEntradas_Liquido2.Value  := 0;
     ltEntradas_BCICMS2.Value   := 0;
     ltEntradas_VLICMS2.Value   := 0;
     ltEntradas_ICMSSub2.Value  := 0;
     ltEntradas_IPI2.Value      := 0;
     ltEntradas_II2.Value       := 0;
     ltEntradas_PIS2.Value      := 0;
     ltEntradas_COFINS2.Value   := 0;

     ltSaidas_Nota2.Value      := 0;
     ltSaidas_Desconto2.Value  := 0;
     ltSaidas_Liquido2.Value   := 0;
     ltSaidas_BCICMS2.Value    := 0;
     ltSaidas_VLICMS2.Value    := 0;
     ltSaidas_ICMSSub2.Value   := 0;
     ltSaidas_IPI2.Value       := 0;
     ltSaidas_II2.Value        := 0;
     ltSaidas_PIS2.Value       := 0;
     ltSaidas_COFINS2.Value    := 0;
     ltSaidas_PISImp2.Value    := 0;
     ltSaidas_COFINSImp2.Value := 0;

     ltTerceiros_Nota2.Value     := 0;
     ltTerceiros_Desconto2.Value := 0;
     ltTerceiros_Liquido2.Value  := 0;
     ltTerceiros_BCICMS2.Value   := 0;
     ltTerceiros_VLICMS2.Value   := 0;
     ltTerceiros_ICMSSub2.Value  := 0;
     ltTerceiros_IPI2.Value      := 0;
     ltTerceiros_II2.Value       := 0;
     ltTerceiros_PIS2.Value      := 0;
     ltTerceiros_COFINS2.Value   := 0;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidas.cOrigemClick(
  Sender: TObject);
begin
      If (cOrigem.ItemIndex = 2) then cOrigemNota.ItemIndex := 2;
end;

end.
