unit frmImpressao_Faturamento_HistoricoPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, MemDS,
  DBAccess, MSAccess, ppDB, ppDBPipe, ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppDesignLayer, ppRichTx, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, RxLookup, Vcl.Mask, RxToolEdit, Vcl.ExtCtrls, RxCtrls, Funcoes, Inifiles;

type
  TImpressao_Faturamento_HistoricoPedidos = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    Button1: TButton;
    bSair: TButton;
    bImprimir: TButton;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText7: TStaticText;
    cRepresentante: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cCliente: TRxDBLookupCombo;
    StaticText6: TStaticText;
    pPedidos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tRepresentantes: TMSQuery;
    dstRepresentantes: TDataSource;
    StaticText8: TStaticText;
    cSituacao: TComboBox;
    cPedido: TEdit;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    rHistorico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    iLogo: TppImage;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    lPeriodo: TppLabel;
    ppLabel38: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel44: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppSubReport2: TppSubReport;
    gPai: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDetailBand4: TppDetailBand;
    tFilho: TMSQuery;
    dstFilho: TDataSource;
    pFilho: TppDBPipeline;
    tFilho2: TMSQuery;
    dstFilho2: TDataSource;
    pFilho2: TppDBPipeline;
    ppDBText60: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel25: TppLabel;
    lTotalPai: TppVariable;
    lValorPai: TppVariable;
    ppDBText63: TppDBText;
    ppDBText25: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText61: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText24: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText62: TppDBText;
    ppLabel26: TppLabel;
    lTotalPai2: TppVariable;
    lValorPai2: TppVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    lTotalSaldoPai: TppVariable;
    lValorSaldoPai: TppVariable;
    ppLabel2: TppLabel;
    lTotalSaldoPai2: TppVariable;
    lValorSaldoPai2: TppVariable;
    rExcel: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppImage1: TppImage;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    lPeriodo2: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel18: TppLabel;
    lTotalPaiEx: TppVariable;
    lValorPaiEx: TppVariable;
    ppLabel19: TppLabel;
    lTotalSaldoPaiEx: TppVariable;
    lValorSaldoPaiEx: TppVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText73: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand6: TppDetailBand;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel20: TppLabel;
    lTotalEx2: TppVariable;
    lValorEx2: TppVariable;
    ppLabel22: TppLabel;
    lTotalSaldoEx2: TppVariable;
    lValorSaldoEx2: TppVariable;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDBText86: TppDBText;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList1: TppParameterList;
    cExcel: TCheckBox;
    StaticText4: TStaticText;
    cRaizCNPJ: TEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppDetailBand4AfterPrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand5AfterPrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand6AfterPrint(Sender: TObject);
    procedure ppDetailBand2AfterPrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
  private
    { Private declarations }
    mTotalPai
   ,mValPai
   ,mTotalSaldoPai
   ,mValorSaldoPai
   ,mTotalPai2
   ,mValPai2
   ,mTotalSaldoPai2
   ,mValorSaldoPai2: real;
    procedure Filtra;
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_HistoricoPedidos: TImpressao_Faturamento_HistoricoPedidos;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TImpressao_Faturamento_HistoricoPedidos.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor  := crSQLWait;
      lPeriodo.Text  := '| ';
      lPeriodo2.Text := '| ';
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           with tPedidos do begin
                sql.clear;
                sql.add('select Pedido');
                sql.add('      ,Pedido_Pai');
                sql.add('      ,Pedido_Pai2');
                sql.add('      ,Data');
                sql.add('      ,Situacao_Ped = case Local');
                sql.add('                           when 0 then ''AGUARDANDO'' ');
                sql.add('                           when 1 then ''LIBERADO'' ');
                sql.add('                           when 2 then ''EM SEPARAÇÃO'' ');
                sql.add('                           when 3 then ''SEPARADO'' ');
                sql.add('                           when 4 then ''EM FATURAMENTO'' ');
                sql.add('                           when 5 then ''FATURADO'' ');
                sql.add('                           when 6 then ''DESPACHADO'' ');
                sql.add('                           when 7 then ''BAIXADO'' ');
                sql.add('                      end');
                sql.add('      ,Vencimento = Data');
                sql.add('      ,Qtde_M3 = (select sum(Quantidade/1000) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
                sql.add('      ,Qtde_M3Orig = (select sum(Quantidade_Original/1000) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
                sql.add('      ,Total_PedidoOriginal');
                sql.add('      ,Total_Pedido = (select sum(Quantidade * Valor_Unitario) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
                sql.add('      ,Saldo = Total_PedidoOriginal - Total_Pedido');
                sql.add('      ,Transp_Cod = (select max(Transportador_Codigo) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
                sql.add('      ,Nota   = (select max(Numero) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
                sql.add('      ,DataNF = (select max(Data_Emissao) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
                sql.add('      ,Cliente_Nome');
                sql.add('      ,Cliente_CNPJ');
                sql.add('into #temp');
                sql.add('from PedidosRepresentantes pr');
                sql.add('where (isnull(Pedido_Pai, '''') = '''' and isnull(Pedido_Pai2, '''') = '''')');
                if not DataLimpa(cDataini.Text) then begin
                   sql.add('and cast(Data as date) between :pDataIni and :pDataFim ');
                   parambyname('pDataIni').Value := cDataIni.Date;
                   parambyname('pDataFim').Value := iif(not DataLimpa(cDataFim.text), cDataFim.Date, date);
                   lPeriodo.Text  := concat(lPeriodo.Text,'Período: ',cDataini.Text, ' a ', cDatafim.Text, ' | ');
                   lPeriodo2.Text := lPeriodo.Text;
                end;
                if trim(cRepresentante.Text) <>'' then begin
                   sql.add('and Representante = :pRep');
                   parambyname('pRep').Value := cRepresentante.KeyValue;
                   lPeriodo.Text  := concat(lPeriodo.Text, 'Representante: ', cRepresentante.text, ' | ');
                   lPeriodo2.Text := lPeriodo.Text;
                end;
                if trim(cCliente.Text) <>'' then begin
                   sql.add('and Cliente = :pCli');
                   parambyname('pCli').Value := cCliente.KeyValue;
                   lPeriodo.Text  := concat(lPeriodo.Text, 'Cliente: ', cCliente.text, ' | ');
                   lPeriodo2.Text := lPeriodo.Text;
                end;
                if trim(cPedido.Text) <>'' then begin
                   sql.add('and (Pedido = :pPed or Pedido_Pai = :pPed or Pedido_Pai2 = :pPed)');
                   parambyname('pPed').Value := cPedido.text;
                end;
                if cSituacao.itemindex = 0 then begin
                   sql.add('and (Autorizado = 0 and Local = 0)');
                end;
                if cSituacao.itemindex = 1 then begin
                   sql.add('and (Autorizado = 1 and Local = 0)');
                end;
                if cSituacao.itemindex > 1 then begin
                   sql.add('and Local = '+inttostr(cSituacao.ItemIndex-1));
                end;
                if cSituacao.ItemIndex >= 0 then begin
                   lPeriodo.Text  := concat(lPeriodo.Text, 'Situação: ', cSituacao.Items[cSituacao.ItemIndex]);
                   lPeriodo2.Text := lPeriodo.Text;
                end;
                if Trim(cRaizCNPJ.text) <> '' then begin
                   sql.Add('and substring(Cliente_CNPJ, 1, 8) = :pRaiz');
                   ParamByName('pRaiz').Asstring := cRaizCNPJ.Text;
                   lPeriodo.Text  := concat(lPeriodo.Text, 'CNPJ: ', cRaizCNPJ.text, ' | ');
                   lPeriodo2.Text := lPeriodo.Text;
                end;
                lPeriodo.Text  := concat(lPeriodo.Text, ' |');
                lPeriodo2.Text := lPeriodo.Text;
                sql.add('select *');
                sql.add('      ,Situacao_NF    = (select iif(Cancelada = 1, ''CANCELADA'', ''NORMAL'') from NotasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.DataNF)');
                sql.add('      ,Transportador  = (select Nome from Fornecedores where Codigo = Transp_Cod)');
                sql.add('      ,Valor_Unitario = isnull((select max(Valor_Unitario) from NotasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.DataNF), 0)');
                sql.add('from #temp');
                sql.add('order by cast(substring(Pedido, 2, 15) as int)');
                sql.add('drop table #temp');
                //sql.SaveToFile('c:\temp\Impressao_Historico_Pedidos.sql');
                open;
           end;

           Screen.Cursor := crDefault;
           if not cExcel.Checked then begin
              with rHistorico do begin
                    if FileExists(Dados.EmpresasLogo.Value) then begin
                       iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
                    end;
                    Reset;
                    Print;
              end;
           end else begin
              with rExcel do begin
                   OpenFile                  := true;
                   AllowPrintToArchive       := true;
                   AllowPrintToFile          := true;
                   PrinterSetup.PaperHeight  := 60;
                   ppDetailBand1.Height      := 0.17;
                   DeviceType                := 'XlsxReport';
                   XLSSettings.AppName       := 'ERP Importa';
                   XLSSettings.Author        := 'Cybersoft';
                   XLSSettings.Title         := 'Histórico de Pedidos';
                   XLSSettings.WorksheetName := 'Histórico de Pedidos';
                   ArchiveFileName           := 'c:\faturamento\Historico_Pedidos.xlsx';
                   TextFileName              := 'c:\faturamento\Historico_Pedidos.xlsx';
                   ShowPrintDialog           := false;
                   Print;
                   Reset;
                   FreeOnRelease;
              end;
           end;
      end;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.Button1Click(Sender: TObject);
begin
     cDataini.Clear;
     cDatafim.Clear;
     cRepresentante.ClearValue;
     cCliente.ClearValue;
     cPedido.Clear;
     cSituacao.ItemIndex := -1;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
var
    aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'DataIni'      , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'DataFim'      , cDataFim.Date );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Representante', iif(cRepresentante.KeyValue <> null, cRepresentante.KeyValue, -1));
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Cliente'      , iif(cCliente.KeyValue <> null, cCliente.KeyValue, -1));
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'CNPJ'         , cRaizCNPJ.Text);
      aINI.Writestring ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Pedido'       , cPedido.text);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Situacao'     , cSituacao.ItemIndex );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Excel'        , cExcel.Checked);
      aINI.Free;

      LimpaMemoria;
      Impressao_Faturamento_HistoricoPedidos.Release;
      Impressao_Faturamento_HistoricoPedidos := nil;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_HistoricoPedidos.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'DataIni'      , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'DataFim'      , Date );
      cSituacao.ItemIndex     := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Situacao'     , -1 );
      cRepresentante.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Representante', 0 );
      cCliente.KeyValue       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Cliente'      , 0 );
      cRaizCNPJ.text          := aINI.ReadString ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'CNPJ'         , '' );
      cPedido.text            := aINI.Readstring ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Pedido'       , '' );
      cExcel.Checked          := aINI.Readbool   ('IMPRESSAO_FATURAMENTO_HISTORICO_PEDIDOS', 'Excel'        , false);
      aINI.Free;
      with Dados do begin
           with tRepresentantes do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from Fornecedores fr where');
                sql.Add('isnull(Ativo, 0) = 1');
                //sql.Add('and isnull((select Comissionado from RamoAtividade ra where ra.Codigo = fr.Ramo_Atividade), 0) = 1');
                sql.Add('order by Nome');
                Open;
           end;
           with Clientes do begin
                sql.clear;
                sql.add('select * from Clientes');
                sql.add('where  Ativo = 1');
                sql.add('order by Nome');
                open;
           end;
      end;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand1BeforePrint(Sender: TObject);
begin
     Filtra;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand2AfterPrint(Sender: TObject);
begin
     mTotalPai  := mTotalPai + tFilho.fieldbyname('Qtde_M3').AsCurrency;
     mValPai    := mValPai + tFilho.fieldbyname('Total_Pedido').AsCurrency;
     mTotalPai2 := mTotalPai;
     mValPai2   := mValPai;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand2BeforePrint(Sender: TObject);
begin
     mTotalPai  := mTotalPai + tFilho.fieldbyname('Qtde_M3').AsCurrency;
     mValPai    := mValPai + tFilho.fieldbyname('Total_Pedido').AsCurrency;
     mTotalPai2 := mTotalPai;
     mValPai2   := mValPai;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand3BeforePrint(Sender: TObject);
begin
     Filtra;
end;
procedure TImpressao_Faturamento_HistoricoPedidos.Filtra;
begin
      mTotalPai       := tPedidos.fieldbyname('Qtde_M3').asfloat;
      mValPai         := tPedidos.fieldbyname('Total_Pedido').AsCurrency;
      mTotalSaldoPai  := tPedidos.fieldbyname('Qtde_M3Orig').asfloat;
      mValorSaldoPai  := tPedidos.fieldbyname('Total_PedidoOriginal').AsCurrency;
      mTotalPai2      := tFilho.fieldbyname('Qtde_M3').asfloat;
      mValPai2        := tFilho.fieldbyname('Total_Pedido').AsCurrency;
      mTotalSaldoPai2 := tFilho.fieldbyname('Qtde_M3').asfloat;
      mValorSaldoPai2 := tFilho.fieldbyname('Total_Pedido').AsCurrency;

      with tFilho do begin
           sql.clear;
           sql.add('select Pedido');
           sql.add('      ,Pedido_Pai');
           sql.add('      ,Pedido_Pai2');
           sql.add('      ,Data');
           sql.add('      ,Situacao_Ped = case Local');
           sql.add('                           when 0 then ''AGUARDANDO'' ');
           sql.add('                           when 1 then ''LIBERADO'' ');
           sql.add('                           when 2 then ''EM SEPARAÇÃO'' ');
           sql.add('                           when 3 then ''SEPARADO'' ');
           sql.add('                           when 4 then ''EM FATURAMENTO'' ');
           sql.add('                           when 5 then ''FATURADO'' ');
           sql.add('                           when 6 then ''DESPACHADO'' ');
           sql.add('                           when 7 then ''BAIXADO'' ');
           sql.add('                      end');
           sql.add('      ,Vencimento = Data');
           sql.add('      ,Qtde_M3 = (select sum(Quantidade/1000) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
           sql.add('      ,Qtde_M3Orig = (select sum(Quantidade_Original/1000) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
           sql.add('      ,Total_PedidoOriginal');
           sql.add('      ,Total_Pedido');
           sql.add('      ,Saldo = Total_PedidoOriginal - Total_Pedido');
           sql.add('      ,Transp_Cod = (select max(Transportador_Codigo) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
           sql.add('      ,Nota   = (select max(Numero) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
           sql.add('      ,DataNF = (select max(Data_Emissao) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
           sql.add('      ,Cliente_Nome');
           sql.add('      ,Cliente_CNPJ');
           sql.add('into #temp');
           sql.add('from PedidosRepresentantes pr');
           sql.Add('where Pedido_Pai = :pPed and isnull(Pedido_Pai2, '''') = '''' ');
           sql.Add('or isnull(Pedido_Pai , '''') = '''' and Pedido_Pai2 = :pPed ');
           sql.add('select *');
           sql.add('      ,Situacao_NF    = (select iif(Cancelada = 1, ''CANCELADA'', ''NORMAL'') from NotasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.DataNF)');
           sql.add('      ,Transportador  = (select Nome from Fornecedores where Codigo = Transp_Cod)');
           sql.add('      ,Valor_Unitario = isnull((select max(Valor_Unitario) from NotasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.DataNF), 0)');
           sql.add('from #temp');
           sql.add('order by cast(substring(Pedido, 2, 15) as int)');
           sql.add('drop table #temp');
           //sql.SaveToFile('c:\temp\Impressao_Historico_Pedidos_Pai.sql');
           parambyname('pPed').AsString := tPedidos.FieldByName('Pedido').AsString;
           open;
      end;
      with tFilho2 do begin
           sql.clear;
           sql.add('select Pedido');
           sql.add('      ,Pedido_Pai');
           sql.add('      ,Pedido_Pai2');
           sql.add('      ,Data');
           sql.add('      ,Situacao_Ped = case Local');
           sql.add('                           when 0 then ''AGUARDANDO'' ');
           sql.add('                           when 1 then ''LIBERADO'' ');
           sql.add('                           when 2 then ''EM SEPARAÇÃO'' ');
           sql.add('                           when 3 then ''SEPARADO'' ');
           sql.add('                           when 4 then ''EM FATURAMENTO'' ');
           sql.add('                           when 5 then ''FATURADO'' ');
           sql.add('                           when 6 then ''DESPACHADO'' ');
           sql.add('                           when 7 then ''BAIXADO'' ');
           sql.add('                      end');
           sql.add('      ,Vencimento = Data');
           sql.add('      ,Qtde_M3 = (select sum(Quantidade/1000) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
           sql.add('      ,Qtde_M3Orig = (select sum(Quantidade_Original/1000) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)');
           sql.add('      ,Total_PedidoOriginal');
           sql.add('      ,Total_Pedido');
           sql.add('      ,Saldo = Total_PedidoOriginal - Total_Pedido');
           sql.add('      ,Transp_Cod = (select max(Transportador_Codigo) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
           sql.add('      ,Nota   = (select max(Numero) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
           sql.add('      ,DataNF = (select max(Data_Emissao) from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '''') <> '''')');
           sql.add('      ,Cliente_Nome');
           sql.add('      ,Cliente_CNPJ');
           sql.add('into #temp');
           sql.add('from PedidosRepresentantes pr');
           sql.Add('where Pedido_Pai2 = :pPed');
           sql.add('select *');
           sql.add('      ,Situacao_NF = (select iif(Cancelada = 1, ''CANCELADA'', ''NORMAL'') from NotasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.DataNF)');
           sql.add('      ,Transportador = (select Nome from Fornecedores where Codigo = Transp_Cod)');
           sql.add('      ,Valor_Unitario = isnull((select max(Valor_Unitario) from NotasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.DataNF), 0)');
           sql.add('from #temp');
           sql.add('order by cast(substring(Pedido, 2, 15) as int)');
           sql.add('drop table #temp');
           //sql.SaveToFile('c:\temp\Impressao_Historico_Pedidos_Pai.sql');
           parambyname('pPed').AsString := tFilho.FieldByName('Pedido').AsString;
           open;
      end;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand4AfterPrint(Sender: TObject);
begin
     mTotalPai  := mTotalPai + tFilho.fieldbyname('Qtde_M3').AsCurrency;
     mValPai    := mValPai + tFilho.fieldbyname('Total_Pedido').AsCurrency;
     mTotalPai2 := mTotalPai;
     mValPai2   := mValPai;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand5AfterPrint(Sender: TObject);
begin
     mTotalPai2 := mTotalPai2 + tFilho2.fieldbyname('Qtde_M3').AsCurrency;
     mValPai2   := mValPai2 + tFilho2.fieldbyname('Total_Pedido').AsCurrency;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppDetailBand6AfterPrint(Sender: TObject);
begin
     mTotalPai2 := mTotalPai2 + tFilho2.fieldbyname('Qtde_M3').AsCurrency;
     mValPai2   := mValPai2 + tFilho2.fieldbyname('Total_Pedido').AsCurrency;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppSummaryBand1BeforePrint(Sender: TObject);
begin
     lTotalPai.Value      := mTotalPai;
     lValorPai.value      := mValPai;
     lTotalSaldoPai.value := mTotalSaldoPai - lTotalPai.Value;
     lValorSaldoPai.value := mValorSaldoPai - lValorPai.Value;
     mTotalPai            := 0;
     mValPai              := 0;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppSummaryBand2BeforePrint(Sender: TObject);
begin
     lTotalPai2.Value := mTotalPai2;
     lValorPai2.value := mValPai2;
     mTotalPai2       := 0;
     mValPai2         := 0;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppSummaryBand3BeforePrint(Sender: TObject);
begin
     lTotalPaiEx.Value      := mTotalPai;
     lValorPaiEx.value      := mValPai;
     lTotalSaldoPaiEx.value := mTotalSaldoPai - lTotalPaiEx.Value;
     lValorSaldoPaiEx.value := mValorSaldoPai - lValorPaiEx.Value;
     mTotalPai              := 0;
     mValPai                := 0;
end;

procedure TImpressao_Faturamento_HistoricoPedidos.ppSummaryBand4BeforePrint(Sender: TObject);
begin
     lTotalPai2.Value := mTotalPai2;
     lValorPai2.value := mValPai2;
     mTotalPai2       := 0;
     mValPai2         := 0;
end;



end.
