unit frmImpressao_FinanceirosOP_VendasRepresentantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppReport, DB, DBAccess, MSAccess, ppDBPipe, Vcl.StdCtrls, RxLookup, Vcl.ExtCtrls, Mask, system.UITypes,  RXCtrls, IniFiles, ppChrt, ppChrtDP,RxToolEdit, ppDB, ppDesignLayer, ppCache, ppProd,
  MemDS, ppComm, ppRelatv, ppStrtch, ppMemo, ppSubRpt, ppModule, raCodMod;

type
  TImpressao_FinanceirosOP_VendasRepresentantes = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText7: TStaticText;
    cRepresentante: TRxDBLookupCombo;
    pTitulos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    rVendasRepresentante: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel17: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    lPeriodo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    pDetalhe: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    Cabecalho_Representante: TppGroupHeaderBand;
    pRepresentante: TppLabel;
    pTotal1: TppLabel;
    pTotalRepNF: TppDBCalc;
    ppDBText3: TppDBText;
    pNomeRepresentante: TppDBText;
    gRodapeRepresentante: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppParameterList2: TppParameterList;
    pTotalRepComissao: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    gRodaPeCliente: TppGroupFooterBand;
    lTotalCliente: TppLabel;
    pTotalNFCliente: TppDBCalc;
    pTotalComissaoCliente: TppDBCalc;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    gRodaPeRegiao: TppGroupFooterBand;
    lTotalRegiao: TppLabel;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    GroupBox1: TGroupBox;
    cQuebraRep: TCheckBox;
    cResumido: TCheckBox;
    cTotalCliente: TCheckBox;
    cTotalRegiao: TCheckBox;
    cQuebraReg: TCheckBox;
    rGrafico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    ppLabel3: TppLabel;
    lPeriodo2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    Graf2: TppDPTeeChart;
    ppLine11: TppLine;
    cFormato: TRadioGroup;
    tRegiao: TMSQuery;
    dstRegiao: TDataSource;
    tRegiaoRegiao: TStringField;
    tRegiaoTotal: TCurrencyField;
    pRegiao: TppDBPipeline;
    iLogo: TppImage;
    iLogo2: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    rVendasRepresentante2: TppReport;
    ppParameterList3: TppParameterList;
    cTipo: TRadioGroup;
    tItens: TMSQuery;
    dstItens: TDataSource;
    cExcel: TCheckBox;
    pItens: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    lTitulo2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    lPeriodo3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel21: TppLabel;
    iLogo3: TppImage;
    ppLabel11: TppLabel;
    ppLabel18: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText21: TppDBText;
    ppDBText11: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppFooterBand3: TppFooterBand;
    ppLine12: TppLine;
    ppLabel31: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel32: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine15: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel9: TppLabel;
    ppDBText18: TppDBText;
    ppDBText24: TppDBText;
    ppLabel36: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine16: TppLine;
    ppDBCalc18: TppDBCalc;
    ppLabel33: TppLabel;
    ppLine17: TppLine;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText25: TppDBText;
    ppLine18: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc15: TppDBCalc;
    ppLine19: TppLine;
    ppLabel26: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    rPedExcel: TppReport;
    ppParameterList4: TppParameterList;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ppHeaderBand4: TppHeaderBand;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    lPeriodo4: TppLabel;
    ppLabel23: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel7: TppLabel;
    ppLabel22: TppLabel;
    iLogo4: TppImage;
    ppLabel15: TppLabel;
    ppLabel8: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel19: TppLabel;
    raCodeModule2: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDBText7: TppDBText;
    StaticText4: TStaticText;
    cCliente: TRxDBLookupCombo;
    tClientes: TMSQuery;
    tClientesCodigo: TIntegerField;
    tClientesCNPJ: TStringField;
    tClientesNome: TStringField;
    dstClientes: TDataSource;
    StaticText3: TStaticText;
    cProduto: TRxDBLookupCombo;
    tProdutos: TMSQuery;
    dstProdutos: TDataSource;
    tLinhas: TMSQuery;
    dstLinhas: TDataSource;
    tRepresent: TMSQuery;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    dstRepresent: TDataSource;
    StaticText5: TStaticText;
    cLinha: TRxDBLookupCombo;
    tProdutosCodigo: TIntegerField;
    tProdutosDescricao_Reduzida: TStringField;
    tProdutosCodigo_Fabricante: TStringField;
    tProdutosCodigo_SKU: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gRodaPeRegiaoBeforePrint(Sender: TObject);
    procedure cQuebraRegClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cDataIniExit(Sender: TObject);
    procedure cDataFimExit(Sender: TObject);
    procedure cLinhaChange(Sender: TObject);
  private
    procedure PorPedido;
    procedure PorItem;
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_VendasRepresentantes: TImpressao_FinanceirosOP_VendasRepresentantes;

implementation

uses frmDados, frmMenu_Principal, FUNCOES;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_VendasRepresentantes.bLimparClick(Sender: TObject);
begin
     cDataini.Clear;
     cDataFim.Clear;
     cLinha.ClearValue;
     cProduto.ClearValue;
     cRepresentante.ClearValue;
     cCliente.ClearValue;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.FormClose(Sender: TObject; var Action: TCloseAction);
var
    aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F06', 'DataIni'      , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F06', 'DataFim'      , cDataFim.Date );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F06', 'Representante', iif(cRepresentante.KeyValue > 0, cRepresentante.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F06', 'Cliente'      , iif(cCliente.KeyValue > 0, cCliente.KeyValue, 0));
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F06', 'QuebraRep'    , cQuebraRep.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F06', 'QuebraReg'    , cQuebraReg.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F06', 'Resumido'     , cResumido.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F06', 'Excel'        , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F06', 'TotalCliente' , cTotalCliente.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F06', 'TotalRegiao'  , cTotalRegiao.Checked);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F06', 'Formato'      , cFormato.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F06', 'Tipo'         , cTipo.ItemIndex);
      aINI.Free;
      
      Impressao_FinanceirosOP_VendasRepresentantes.Release;
      Impressao_FinanceirosOP_VendasRepresentantes := nil;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.bImprimirClick(Sender: TObject);
begin
     if DataLimpa(cDataIni.text) or DataLimpa(cDataFim.text) then begin
        messagedlg('É necessário informar um periodo inicial e final para gerar o relatório!', mtInformation, [mbok], 0);
        abort;
     end;
     with Dados, Empresas do begin
          sql.Clear;
          sql.Add('select * from Empresas where Codigo = :pEmpresa');
          ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Open;
     end;
     if cTipo.ItemIndex = 0 then
        PorPedido
     else
        PorItem;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.PorPedido;
var
   i : Integer;
begin
      if cFormato.ItemIndex = 0 then begin
         with tTitulos do begin
              SQL.Clear;
              SQL.Add('select Nota = Numero_Documento');
              SQL.Add('      ,Duplicata = Numero_Documento');
              SQL.Add('      ,Data_Documento = cast(Data_Documento as date)');
              SQL.Add('      ,Fornecedor');
              SQL.Add('      ,Representante_Nome = (select Nome from Fornecedores where Codigo = Fornecedor)');
              SQL.Add('      ,Regiao = (select Regiao from Fornecedores where Representante_Codigo = pr.Fiscal)');
              SQL.Add('      ,Cliente_Codigo = (select Cliente from PedidosRepresentantes ped where ped.Pedido = pr.fiscal)');
              SQL.Add('      ,Cliente_Nome = (select Nome from Clientes where Codigo = (select Cliente from PedidosRepresentantes ped where ped.Pedido = pr.fiscal))');
              SQL.Add('      ,Valor_Produtos = (select Total_Pedido from PedidosRepresentantes ped where ped.Pedido = pr.fiscal)');
              SQL.Add('      ,Representante_Comissao = cast(0 as float)');
              SQL.Add('      ,Valor_Comissao = Valor_Operacao');
              SQL.Add('from  PagarReceber pr');
              SQL.Add('where Data_Vencimento BETWEEN :pDataIni and :pDataFim');
              SQL.Add('and Classificacao in((select Classificacao_Pagamento from Configuracao),(select Classificacao_PagamentoPF from Configuracao))');
              if (Trim(cRepresentante.Text) <> '') then begin
                 SQL.Add(' and Fornecedor = :pRepresentante');
                 ParamByName('pRepresentante').AsInteger := Dados.FornecedoresCodigo.Value;
              end;
              if (Trim(cCliente.Text) <> '') then begin
                 SQL.Add('and (select Cliente from PedidosRepresentantes ped where ped.Pedido = pr.fiscal) = :pCliente');
                 ParamByName('pCliente').AsInteger := tClientes.FieldByName('Codigo').asinteger;
              end;
              SQL.Add('order by Regiao, Representante_Nome, Cliente_Nome, Nota');
              ParamByName('pDataIni').AsDate := cDataIni.Date;
              ParamByName('pDataFim').AsDate := cDataFim.Date;
              //SQL.SaveToFile('c:\temp\Vendas_Representantes_Por_Pedido.SQL');
              Open;
         end;

         if tTitulos.RecordCount = 0 then begin
            MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
         end else begin
            rVendasRepresentante.Groups[1].NewPage := cQuebraRep.Checked;
            rVendasRepresentante.Groups[0].NewPage := cQuebraReg.Checked;
            pDetalhe.Visible                       := not cResumido.Checked;

            rVendasRepresentante.GroupHeader[2].Visible := cTotalCliente.Checked;
            rVendasRepresentante.GroupFooter[2].Visible := cTotalCliente.Checked;

            rVendasRepresentante.GroupHeader[0].Visible := cTotalRegiao.Checked;
            rVendasRepresentante.GroupFooter[0].Visible := cTotalRegiao.Checked;

            gRodaPeCliente.Visible       := cTotalCliente.Checked;
            gRodaPeRepresentante.Visible := not cResumido.Checked;
            ppLine1.Visible              := not cResumido.Checked;

            pTotal1.Visible              := cResumido.Checked;
            pTotalRepNF.Visible          := cResumido.Checked;
            pTotalRepComissao.Visible    := cResumido.Checked;

            lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text;

            if FileExists(Dados.EmpresasLogo.Value) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            end;
            with rVendasRepresentante do begin
                 AllowPrintToArchive   := false;
                 AllowPrintToFile      := false;
                 DefaultFileDeviceType := 'PDF';
                 DeviceType            := 'Screen';
                 if cExcel.Checked then begin
                    OpenFile                  := true;
                    AllowPrintToArchive       := true;
                    AllowPrintToFile          := true;
                    DefaultFileDeviceType     := 'XlsxReport';
                    DeviceType                := 'XlsxReport';
                    XLSSettings.AppName       := 'Cybersoft - ERP Importa';
                    XLSSettings.Author        := 'Cybersoft';
                    XLSSettings.Title         := 'Vendas de Representantes (Pedido)';
                    XLSSettings.WorksheetName := 'Comissões';
                    ArchiveFileName           := '($MyDocuments)\Vendas_Representantes_Pedido.xlsx';
                    TextFileName              := '($MyDocuments)\Vendas_Representantes_Pedido.xlsx';
                    ShowPrintDialog           := false;
                    Cabecalho_Representante.Background.Brush.Style := bsClear;
                 end;
                 Print;
                 Reset;
                 FreeOnRelease;
            end;
         end;
      end else begin
         with tRegiao do begin
              SQL.Clear;
              SQL.Add('select Regiao_Cod = (select Regiao from Fornecedores frn where frn.Codigo = pr.Fornecedor)');
              SQL.Add('      ,Total = (select Total_Pedido from PedidosRepresentantes ped where ped.Pedido = pr.Fiscal)');
              SQL.Add('      ,Regiao = cast('''' AS varchar(12)) ');
              SQL.Add('into  #Temp');
              SQL.Add('from  PagarReceber pr');
              SQL.Add('where Data_Vencimento between :pDataIni and :pDataFim');
              SQL.Add('and   Classificacao in((select Classificacao_Pagamento from Configuracao),(select Classificacao_PagamentoPF from Configuracao))');
              SQL.Add('update #Temp set Regiao = case Regiao_Cod');
              SQL.Add('                               when ''CO'' then ''CENTRO OESTE'' ');
              SQL.Add('                               when ''N''  then ''NORTE'' ');
              SQL.Add('                               when ''NE'' then ''NORDESTE'' ');
              SQL.Add('                               when ''S''  then ''SUL'' ');
              SQL.Add('                               when ''SE'' then ''SUDESTE'' ');
              SQL.Add('                           else ');
              SQL.Add('                             ''INDEFINIDA'' ');
              SQL.Add('                           end');
              SQL.Add('select Regiao, sum(Total) as Total from #Temp group BY Regiao');
              SQL.Add('order by Regiao');
              SQL.Add('drop Table #Temp');
              ParamByName('pDataIni').AsDate := cDataIni.Date;
              ParamByName('pDataFim').AsDate := cDataFim.Date;
              //sql.SaveToFile('c:\temp\Vendas_Representantes_Regiao2.sql');
              Open;
              First;
         end;

         lPeriodo2.Caption := 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text;
         
         Graf2.Chart.Visible := false;
         Graf2.Chart.Series[0].Clear;
         Graf2.Chart.Series[0].DataSource := pRegiao;
         while not tRegiao.Eof do begin
               Graf2.Chart.Series[0].AddY(tRegiao.FieldByName('Total').AsCurrency, tRegiao.FieldByName('Regiao').AsString);
               tRegiao.Next;
         end;
         Graf2.DataPipeline := pRegiao;
         Graf2.DataField    := 'Regiao';

         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         Graf2.Chart.Visible := true;
         
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         with rGrafico do begin
              AllowPrintToArchive   := false;
              AllowPrintToFile      := false;
              DefaultFileDeviceType := 'PDF';
              DeviceType            := 'Screen';
              if cExcel.Checked then begin
                 OpenFile                  := true;
                 AllowPrintToArchive       := true;
                 AllowPrintToFile          := true;
                 DefaultFileDeviceType     := 'XlsxReport';
                 DeviceType                := 'XlsxReport';
                 XLSSettings.AppName       := 'Cybersoft - ERP Importa';
                 XLSSettings.Author        := 'Cybersoft';
                 XLSSettings.Title         := 'Vendas de Representantes (Pedido)';
                 XLSSettings.WorksheetName := 'Comissões';
                 ArchiveFileName           := '($MyDocuments)\Vendas_Representantes_Pedido.xlsx';
                 TextFileName              := '($MyDocuments)\Vendas_Representantes_Pedido.xlsx';
                 ShowPrintDialog           := false;
                 Cabecalho_Representante.Background.Brush.Style := bsClear;
              end;
              Print;
              Reset;
              FreeOnRelease;
         end;
      end;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.PorItem;
begin
     Screen.Cursor := crSQLWait;
     Dados.Configuracao.Open;
     with tItens do begin
          sql.clear;
          sql.add('select pri.Pedido');
          sql.add('      ,Data_Pedido = pri.Data');
          sql.add('      ,Item');
          sql.add('      ,Repr_Cod = pr.Representante');
          sql.add('      ,Repr_Nome = (select Nome From Fornecedores where Representante_Codigo = pr.Representante)');
          sql.add('      ,Data_Venc = (select max(Data_Vencimento) from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Tipo = ''R'')');
          sql.add('      ,Cliente = (select Nome from Clientes cli where cli.Codigo = pr.Cliente)');
          sql.add('      ,Prod_Cod = Codigo_Mercadoria');
          sql.add('      ,Produto = ltrim(rtrim(replace(replace((select Descricao from Produtos pd where pd.Codigo = pri.Codigo_Mercadoria), ''<{''+ltrim(rtrim(cast(Codigo_Mercadoria as varchar(10))))+''}>'', ''''), char(10), '''')))');
          sql.add('      ,Unidade = (select Unidade from Produtos pd where pd.Codigo = pri.Codigo_Mercadoria)');
          sql.add('      ,Quantidade');
          sql.add('      ,Unitario = Valor_Unitario');
          sql.add('      ,Total = Valor_Unitario * Quantidade');
          sql.add('      ,Perc_Comissao = (select Comissao from TabelaComissoes where Codigo = Tabela_Comissao)');
          sql.add('      ,Comissao = (Valor_Unitario * Quantidade) * ((select Comissao from TabelaComissoes tc where tc.Codigo = pri.Tabela_Comissao)/100)');
          sql.add('      ,Tabela = (select Descricao from TabelaComissoes where Codigo = pri.Tabela_Comissao)');
          sql.add('      ,Lucro = (Valor_Unitario - (select Valor_Entrada from Produtos pd where pd.Codigo = pri.Codigo_Mercadoria) - (Valor_Unitario * ((select Comissao from TabelaComissoes tc where tc.Codigo = pri.Tabela_Comissao)/100)))*Quantidade');
          sql.add('from PedidosRepresentantesItens pri, PedidosRepresentantes pr');
          sql.add('where pr.Pedido = pri.Pedido');
          if (not DataLimpa(cDataIni.Text)) and (not DataLimpa(cDataFim.Text)) then begin
             sql.Add('and pri.Data between :pDataIni and :pDataFim');
             ParamByName('pDataIni').AsDate := cDataIni.Date;
             ParamByName('pDataFim').AsDate := cDataFim.Date;
          end;
          if trim(cRepresentante.text) <> '' then begin
             sql.add('and pr.Representante = :pRepresentante');
             ParamByName('pRepresentante').value := tRepresent.fieldbyname('Codigo').asinteger;
          end;
          if Trim(cCliente.Text) <> '' then begin
             SQL.Add('and pr.Cliente = :pCliente');
             ParamByName('pCliente').AsInteger := tClientes.FieldByName('Codigo').asinteger;
          end;
          if Trim(cLinha.Text) <> '' then begin
             SQL.Add('and Codigo_Mercadoria in(select Codigo from Produtos where Linha = :pLinha)');
             ParamByName('pLinha').value := Dados.ProdutosLinhas.fieldbyname('Codigo').asinteger;
          end;
          if Trim(cProduto.Text) <> '' then begin
             SQL.Add('and pri.Codigo_Mercadoria = :pProd');
             ParamByName('pProd').asinteger := tProdutos.FieldByName('Codigo').asinteger;
          end;
          sql.add('and isnull(pr.Cancelado, 0) = 0');
          sql.add('order by Repr_Nome, Cliente, Data_Pedido, cast(substring(pri.Pedido, 2, 10) as int), Item');
          //sql.SaveToFile('c:\temp\Vendas_Representante_Item.sql');
          Open;

          Screen.Cursor := crDefault;

          if RecordCount = 0 then begin
             MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
          end else begin
             lPeriodo3.Caption := 'Período de ';
             if (not DataLimpa(cDataIni.Text)) and (not DataLimpa(cDataFim.Text)) then begin
                lPeriodo3.Caption := lPeriodo.Caption + ' (Vencimento: '+cDataIni.Text + ' a ' + cDataFim.Text + ')';
             end;
             if FileExists(Dados.EmpresasLogo.Value) then begin
                iLogo3.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
             end;
             if not cExcel.Checked then begin
                with rVendasRepresentante2 do begin
                     AllowPrintToArchive := false;
                     AllowPrintToFile    := false;
                     DeviceType          := 'Screen';
                     Print;
                     Reset;
                     FreeOnRelease;
                end;
             end else begin   
                with rPedExcel do begin
                     lPeriodo4.Caption := 'Período de ';
                     if (not DataLimpa(cDataIni.Text)) and (not DataLimpa(cDataFim.Text)) then begin
                        lPeriodo4.Caption := lPeriodo.Caption + ' (Vencimento: '+cDataIni.Text + ' a ' + cDataFim.Text + ')';
                     end;
                     if FileExists(Dados.EmpresasLogo.Value) then begin
                        iLogo4.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
                     end;
                     
                     AllowPrintToArchive       := true;
                     AllowPrintToFile          := true;
                     DeviceType                := 'XlsxReport';
                     XLSSettings.AppName       := 'Cybersoft - ERP Importa';
                     XLSSettings.Author        := 'Cybersoft';
                     XLSSettings.Title         := 'Vendas Representantes (Item)';
                     XLSSettings.WorksheetName := 'Vendas - Representantes';
                     ArchiveFileName           := '($MyDocuments)\Vendas_Representantes_Item.xlsx';
                     TextFileName              := '($MyDocuments)\Vendas_Representantes_Item.xlsx';
                     ShowPrintDialog           := false;
                     ppGroupHeaderBand3.Background.Brush.Style := bsClear;

                     Prepare;
                     Print;
                     Reset;
                     FreeOnRelease;
                end;
             end;
          end;
     end;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F06', 'DataIni'       , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F06', 'DataFim'       , Date );
      cRepresentante.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F06', 'Representante' , '' );
      cCliente.KeyValue       := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F06', 'Cliente'       , '' );
      cQuebraRep.Checked      := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F06', 'QuebraRep'     , false );
      cQuebraReg.Checked      := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F06', 'QuebraReg'     , false );
      cResumido.Checked       := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F06', 'Resumido'      , false );
      cTotalCliente.Checked   := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F06', 'TotalCliente'  , false );
      cTotalRegiao.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F06', 'TotalRegiao'   , false );
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F06', 'Excel'         , false );
      cFormato.ItemIndex      := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F06', 'Formato'       , 0);
      cTipo.ItemIndex         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F06', 'Tipo'          , 0);
      aINI.Free;

      Screen.Cursor := crSQLWait;
      
      Filtra;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.Filtra;
begin
      with tRepresent do begin
           sql.clear;
           sql.Add('select Codigo = cast(Representante_Codigo as int)');
           sql.add('      ,Nome');
           sql.Add('      ,CNPJ = case when isnull(CNPJ, '''') <> '''' then');
           sql.Add('                   substring(CNPJ, 1, 2)+''.''+substring(CNPJ, 3, 3)+''.''+substring(CNPJ, 6, 3)+''/''+substring(CNPJ, 9, 4)+''-''+substring(CNPJ, 13, 2)');
           sql.Add('              else');
           sql.Add('                   substring(CPF, 1, 3)+''.''+substring(CPF, 4, 3)+''.''+substring(CPF, 7, 3)+''-''+substring(CPF, 10, 2)');
           sql.Add('              end');
           sql.add('from Fornecedores');
           sql.add('where Representante_Codigo in(select distinct Representante from PedidosRepresentantes where Data between :pDataIni and :pDataFim)');
           sql.add('order by Nome');
           ParamByName('pDataIni').AsDate := cDataIni.Date;
           ParamByName('pDataFim').AsDate := cDataFim.Date;
           //sql.SaveToFile('c:\temp\Vendas_Representantes_Representante.sql');
           open;
      end;
      with tClientes do begin
           sql.clear;
           sql.Add('select Codigo');
           sql.add('      ,Nome');
           sql.Add('      ,CNPJ = case when isnull(CNPJ, '''') <> '''' then');
           sql.Add('                   substring(CNPJ, 1, 2)+''.''+substring(CNPJ, 3, 3)+''.''+substring(CNPJ, 6, 3)+''/''+substring(CNPJ, 9, 4)+''-''+substring(CNPJ, 13, 2)');
           sql.Add('              else');
           sql.Add('                   substring(CPF, 1, 3)+''.''+substring(CPF, 4, 3)+''.''+substring(CPF, 7, 3)+''-''+substring(CPF, 10, 2)');
           sql.Add('              end');
           sql.add('from Clientes');
           sql.add('where Codigo in(select distinct Cliente from PedidosRepresentantes where Data between :pDataIni and :pDataFim)');
           sql.add('order by Nome');
           ParamByName('pDataIni').AsDate := cDataIni.Date;
           ParamByName('pDataFim').AsDate := cDataFim.Date;
           open;
      end;
      with tProdutos do begin
           sql.Clear;
           sql.add('select Codigo');
           sql.add('      ,Codigo_Fabricante');
           sql.add('      ,Codigo_SKU');
           sql.add('      ,Descricao_Reduzida');
           sql.add('from Produtos');
           sql.add('Where Codigo in(select distinct Codigo_Mercadoria from PedidosRepresentantesItens where Data between :pDataIni and :pDataFim)');
           if trim(cLinha.Text) <> '' then begin
              sql.add('and Linha = :pLinha');
              ParamByName('pLinha').value := Dados.ProdutosLinhas.FieldByName('Codigo').AsInteger;
           end;
           sql.add('order by Descricao_Reduzida');
           ParamByName('pDataIni').AsDate := cDataIni.Date;
           ParamByName('pDataFim').AsDate := cDataFim.Date;
           open;
      end;
      with Dados, ProdutosLinhas do begin
           sql.Clear;
           sql.add('select *');
           sql.add('from ProdutosLinhas');
           sql.Add('where Codigo in(select distinct Linha from Produtos where Codigo in(select distinct Codigo_mercadoria from PedidosRepresentantesItens where Data between :pDataIni and :pDataFim))');
           sql.add('order by Descricao ');
           ParamByName('pDataIni').AsDate := cDataIni.Date;
           ParamByName('pDataFim').AsDate := cDataFim.Date;
           open;
      end;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.gRodaPeRegiaoBeforePrint(Sender: TObject);
begin
     If Trim(tTitulos.FieldByName('Regiao').AsString) = 'CO' then lTotalRegiao.Caption := 'TOTAL DA REGIÃO CENTRO OESTE (CO)';
     If Trim(tTitulos.FieldByName('Regiao').AsString) = 'N'  then lTotalRegiao.Caption := 'TOTAL DA REGIÃO NORTE (N)';
     If Trim(tTitulos.FieldByName('Regiao').AsString) = 'NE' then lTotalRegiao.Caption := 'TOTAL DA REGIÃO NORDESTE (NE)';
     If Trim(tTitulos.FieldByName('Regiao').AsString) = 'S'  then lTotalRegiao.Caption := 'TOTAL DA REGIÃO SUL (S)';
     If Trim(tTitulos.FieldByName('Regiao').AsString) = 'SE' then lTotalRegiao.Caption := 'TOTAL DA REGIÃO SUDESTE (SE)';
     If Trim(tTitulos.FieldByName('Regiao').AsString) = 'IN' then lTotalRegiao.Caption := 'TOTAL DA REGIÃO INDEFINIDA';
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.cDataFimExit(Sender: TObject);
begin
    Filtra;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.cDataIniExit(Sender: TObject);
begin
    Filtra;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.cLinhaChange(Sender: TObject);
begin
      with tProdutos do begin
           sql.Clear;
           sql.add('select Codigo');
           sql.add('      ,Codigo_Fabricante');
           sql.add('      ,Codigo_SKU');
           sql.add('      ,Descricao_Reduzida');
           sql.add('from Produtos');
           sql.add('Where Codigo in(select distinct Codigo_Mercadoria from PedidosRepresentantesItens where Data between :pDataIni and :pDataFim)');
           if trim(cLinha.Text) <> '' then begin
              sql.add('and Linha = :pLinha');
              ParamByName('pLinha').value := Dados.ProdutosLinhas.FieldByName('Codigo').AsInteger;
           end;
           sql.add('order by Descricao_Reduzida');
           ParamByName('pDataIni').AsDate := cDataIni.Date;
           ParamByName('pDataFim').AsDate := cDataFim.Date;
           open;
      end;
end;

procedure TImpressao_FinanceirosOP_VendasRepresentantes.cQuebraRegClick(Sender: TObject);
begin
      If cQuebraReg.Checked = true then cTotalRegiao.Checked := true;
      cTotalRegiao.Enabled := not cQuebraReg.Checked;
end;

end.
