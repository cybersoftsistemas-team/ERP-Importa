unit frmImpressao_FinanceirosOP_ComissoesPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppParameter, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,ppReport, DB,
  DBAccess, MSAccess, ppDBPipe, Vcl.StdCtrls, RxLookup, Vcl.ExtCtrls, Mask, RXCtrls, IniFiles, Funcoes, myChkBox, system.UITypes, RxToolEdit, ppDesignLayer, ppCache, ppProd, MemDS, ppDB, ppComm, ppRelatv,
  ppStrtch, ppSubRpt, ppMemo;

type
  TImpressao_FinanceirosOP_ComissoesPagar = class(TForm)
    cDataIniVenc: TDateEdit;
    StaticText1: TStaticText;
    cDataFimVenc: TDateEdit;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText3: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    lBanco: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cRepresentante: TRxDBLookupCombo;
    cMovimento: TRadioGroup;
    StaticText8: TStaticText;
    cForma: TComboBox;
    pPagarReceber: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    rComissoesPagar: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    lPeriodo: TppLabel;
    pDetalhe: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    lDias: TppLabel;
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
    ppParameterList2: TppParameterList;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroup1: TppGroup;
    Cabecalho_Representante: TppGroupHeaderBand;
    Rodape_Representante: TppGroupFooterBand;
    pNomeRepresentante: TppDBText;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    pRepresentante: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    pTotalVendas: TppDBCalc;
    pComissaoTotal: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    cQuebra: TCheckBox;
    cResumido: TCheckBox;
    pValorProdutos1: TppDBCalc;
    ppLine5: TppLine;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pTotalRecebimentos: TppDBCalc;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppVariable1: TppVariable;
    pComissaoRecebida: TppDBCalc;
    ppVariable2: TppVariable;
    cDataIniEmi: TDateEdit;
    StaticText4: TStaticText;
    cDataFimEmi: TDateEdit;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    tItens: TMSQuery;
    pItens: TppDBPipeline;
    dstItens: TDataSource;
    cTipo: TRadioGroup;
    rComissoesPagar2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText7: TppDBText;
    lTitulo2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    lPeriodo2: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    iLogo2: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel31: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel32: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine10: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBText11: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText25: TppDBText;
    ppLine13: TppLine;
    ppDBText24: TppDBText;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppDBText28: TppDBText;
    ppLabel18: TppLabel;
    ppDBText29: TppDBText;
    ppLabel30: TppLabel;
    ppDBText30: TppDBText;
    ppDBCalc15: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc18: TppDBCalc;
    lTotalCli: TppLabel;
    lTotalRep: TppLabel;
    ppLine14: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText18: TppDBText;
    ppLabel36: TppLabel;
    cExcel: TCheckBox;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    rComExcel: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDBText31: TppDBText;
    ppLabel26: TppLabel;
    ppLabel33: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    lPeriodo3: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppImage1: TppImage;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppDBText77: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel51: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine18: TppLine;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel52: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine19: TppLine;
    ppDBCalc26: TppDBCalc;
    lTotalRep2: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppLine20: TppLine;
    ppDBCalc29: TppDBCalc;
    ppGroup9: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText47: TppDBText;
    ppLine21: TppLine;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    lTotalCli2: TppLabel;
    ppLine22: TppLine;
    ppDBCalc33: TppDBCalc;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure pDetalheBeforePrint(Sender: TObject);
    procedure cMovimentoClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand8BeforePrint(Sender: TObject);
  private
    procedure PorItem;
    procedure PorPedido;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_ComissoesPagar: TImpressao_FinanceirosOP_ComissoesPagar;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_ComissoesPagar.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      with Dados do begin
           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1)');
           Bancos.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao, Codigo');
           CentroCusto.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.SQL.Add('WHERE  Ativo = 1');
           Fornecedores.SQL.Add('  AND  (SELECT Comissionado FROM RamoAtividade WHERE Codigo = Ramo_Atividade) = 1');
           Fornecedores.SQL.Add('ORDER BY Nome');
           Fornecedores.Open;

           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
           ModalidadesPgto.Open;
      end;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cMovimento.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F05', 'Movimento'    , 3 );
      cTipo.ItemIndex         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F05', 'Tipo'         , 1 );
      cDataIniVenc.Date       := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataIniVenc'  , Date );
      cDataFimVenc.Date       := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataFimVenc'  , Date );
      cDataIniEmi.Date        := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataIniEmi'   , Date );
      cDataFimEmi.Date        := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataFimEmi'   , Date );
      cCentroCusto.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F05', 'CentroCusto'  , '' );
      cBanco.KeyValue         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F05', 'Banco'        , 0 );
      cRepresentante.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F05', 'Representante', '' );
      cForma.ItemIndex        := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F05', 'Forma'        , -1 );
      cQuebra.Checked         := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F05', 'Quebra'       , false );
      cResumido.Checked       := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F05', 'Resumido'     , false );
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F05', 'Excel'        , false );
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.FormClose(Sender: TObject; var Action: TCloseAction);
var
    aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F05', 'Movimento'  , cMovimento.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F05', 'Tipo'       , cTipo.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataIniVenc', cDataIniVenc.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataFimVenc', cDataFimVenc.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataIniEmi' , cDataIniEmi.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F05', 'DataFimEmi' , cDataFimEmi.Date );
      if cCentroCusto.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F05', 'CentroCusto', cCentroCusto.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F05', 'CentroCusto', '');

      if cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F05', 'Banco'        , cBanco.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FINANCEIROS_F05', 'Banco'        , '');

      if cRepresentante.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F05', 'Representante', cRepresentante.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FINANCEIROS_F05', 'Representante', '');

      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F05', 'Forma'        , cForma.ItemIndex );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F05', 'Quebra'       , cQuebra.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F05', 'Resumido'     , cResumido.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F05', 'Excel'        , cExcel.Checked);
      aINI.Free;

      Impressao_FinanceirosOP_ComissoesPagar.Release;
      Impressao_FinanceirosOP_ComissoesPagar := nil;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.bLimparClick(Sender: TObject);
begin
      cDataIniVenc.Clear;
      cDataFimVenc.Clear;
      cDataIniEmi.Clear;
      cDataFimEmi.Clear;
      cCentroCusto.KeyValue   := 0;
      cBanco.KeyValue         := 0;
      cRepresentante.KeyValue := 0;
      cForma.ItemIndex        := -1;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.bImprimirClick(Sender: TObject);
begin
     if cTipo.ItemIndex = 0 then 
        PorPedido
     else
        PorItem;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.PorPedido;
begin
      Screen.Cursor := crSQLWait;
      Dados.Configuracao.Open;
      with tTitulos do begin
           SQL.Clear;
           SQL.Add('select PR.Numero');
           SQL.Add('      ,Nota           = PR.Fiscal');
           SQL.Add('      ,Tipo_Nota');
           SQL.Add('      ,Duplicata      = PR.Numero_Documento');
           SQL.Add('      ,Data_Emissao   = PR.Data_Documento');
           SQL.Add('      ,Representante  = PR.Fornecedor');
           SQL.Add('      ,Valor_Comissao = PR.Valor_Total');
           SQL.Add('      ,Valor_Produtos = isnull((pr.Valor_Total/((select Representante_Comissao from NotasFiscais where(Numero = PR.Fiscal) and (Data_Emissao = PR.Data_Documento) and (Representante = PR.Fornecedor))/100)), 0)');
           SQL.Add('      ,Valor_Total = case when Tipo_Nota = ''NF'' then');
           SQL.Add('                          isnull((PR.Valor_Total/((select Representante_Comissao from NotasFiscais where(Numero = PR.Fiscal) and (Data_Emissao = PR.Data_Documento) and (Representante = PR.Fornecedor))/100)), 0)');
           SQL.Add('                     else');
           SQL.Add('                          (select Total_Pedido from PedidosRepresentantes ped where ped.Pedido = pr.fiscal)');
           SQL.Add('                     end');
           SQL.Add('      ,PR.Data_Vencimento');
           SQL.Add('      ,PR.Centro_Custo');
           SQL.Add('      ,PR.Observacao');
           SQL.Add('      ,Valor_Recebido = case when (select count(*) from PagarReceberBaixas prb where prb.Numero = pr.Numero) = 0 then');
           SQL.Add('                             cast(0 AS money)');
           SQL.Add('                        else');
           SQL.Add('                             cast((Valor_Total / ( (select Representante_Comissao from NotasFiscais nf where(NF.Numero = PR.Fiscal) and (NF.Data_Emissao = PR.Data_Documento) and (NF.Representante = PR.Fornecedor)) /100 )) as decimal(18,2))');
           SQL.Add('                        end');
           SQL.Add('      ,Recebido = case when (select count(*) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero) > 0 then');
           SQL.Add('                       cast(1 as bit)');
           SQL.Add('                  else');
           SQL.Add('                       cast(0 as bit)');
           SQL.Add('                  end');
           SQL.Add('      ,Quitado = cast(0 as bit)');
           SQL.Add('      ,Fiscal');
           SQL.Add('into  #Temp');
           SQL.Add('from  PagarReceber pr');
           SQL.Add('where pr.Numero is not null');
           SQL.add('  and pr.Classificacao in(:pClassPgto, :pClassPgtoPF)');
           If (not DataLimpa(cDataIniVenc.Text)) and (not DataLimpa(cDataFimVenc.Text)) then begin
              SQL.Add('  and  (PR.Data_Vencimento between :pDataIniVenc and :pDataFimVenc)');
              ParamByName('pDataIniVenc').AsDate := cDataIniVenc.Date;
              ParamByName('pDataFimVenc').AsDate := cDataFimVenc.Date;
           End;
           If (not DataLimpa(cDataIniEmi.Text)) and (not DataLimpa(cDataFimEmi.Text)) then begin
              SQL.Add('  AND  (PR.Data_Documento BETWEEN :pDataIniEmi AND :pDataFimEmi)');
              ParamByName('pDataIniEmi').AsDate := cDataIniEmi.Date;
              ParamByName('pDataFimEmi').AsDate := cDataFimEmi.Date;
           End;
           If (Trim(cCentroCusto.Text) <> '') then begin
              SQL.Add(' AND (PR.Centro_Custo = :pCentroCusto) ');
              ParamByName('pCentroCusto').AsString := cCentroCusto.KeyValue;
           End;
           If (Trim(cBanco.Text) <> '') then begin
              SQL.Add(' AND (PR.Banco = :pBanco) ');
              ParamByName('pBanco').AsInteger := Dados.BancosCodigo.Value;
           End;
           If (Trim(cRepresentante.Text) <> '') then begin
              SQL.Add(' AND (PR.Fornecedor = :pRepresentante) ');
              ParamByName('pRepresentante').AsInteger := Dados.FornecedoresCodigo.Value;
           End;
           //Liquidadas pelo cliente "Quitadas".
           if cMovimento.ItemIndex = 2 then begin
              sql.add('update #temp set Quitado = iif((select sum(Valor) from PagarReceberBaixas prb where prb.Numero in(select Numero from PagarReceber pr where pr.Tipo = ''R'' and pr.Fiscal = #temp.Fiscal)) -');
              sql.Add('                               (select sum(round(Valor_Total, 2)) from PagarReceber pr where pr.Fiscal = #temp.Fiscal and Tipo = ''R'') = 0, 1, 0)');
           end;
           
           SQL.Add('select *');
           SQL.Add('       ,Representante_Comissao = (select Representante_Comissao from NotasFiscais where(Numero = #Temp.Nota) AND (Data_Emissao = #Temp.Data_Emissao) AND (Representante = #Temp.Representante))');
           SQL.Add('       ,Representante_Nome = (SELECT Nome FROM Fornecedores WHERE(Codigo = Representante))');
           SQL.Add('       ,Data_Baixa = (SELECT MAX(Data) FROM PagarReceberBaixas PRB WHERE(PRB.Numero = #Temp.Numero))');
           SQL.Add('       ,Saldo = (Valor_Comissao - ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE(PRB.Numero = #Temp.Numero)),0))');
           SQL.Add('       ,Pagas = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE(PRB.Numero = #Temp.Numero)),0)');
           SQL.Add('       ,Cliente_Nome = case when #Temp.Tipo_Nota in(''NF'', ''SD'') then');
           SQL.Add('                           (select Nome from Clientes where(Codigo = (select Cliente_Codigo from NotasFiscais where(Numero = #Temp.Nota) and (Data_Emissao = #Temp.Data_Emissao) and (Representante = #Temp.Representante))))');
           SQL.Add('                       else');
           SQL.Add('                           (select Cliente_Nome from PedidosRepresentantes pr where pr.Pedido = #temp.Nota)');
           SQL.Add('                       end');
           SQL.Add('       ,Comissao_Pagar = case when (SELECT COUNT(*) FROM PagarReceberBaixas PRB WHERE Numero = (SELECT MAX(Numero) FROM PagarReceber PR2 WHERE PR2.Numero_Documento = #Temp.Nota AND PR2.Cliente <> 0 AND PR2.Fiscal = #Temp.Nota)) = 0 THEN');
           SQL.Add('                              cast(0 AS money)');
           SQL.Add('                         else');
           SQL.Add('                              isnull(Valor_Comissao, 0)');
           SQL.Add('                         end');
           SQL.Add('       ,Valor_Recebido = case when (select COUNT(*) from PagarReceberBaixas PRB where PRB.Numero = #Temp.Numero) = 0 then');
           SQL.Add('                              CAST(0 AS money)');
           SQL.Add('                         else');
           SQL.Add('                              cast((Valor_Comissao / ( (select Representante_Comissao from NotasFiscais NF where(NF.Numero = #Temp.Nota) and (NF.Data_Emissao = #Temp.Data_Emissao) and (NF.Representante = #Temp.Representante)) /100 )) as decimal(18,2))');
           SQL.Add('                         end');
           SQL.Add('       ,Recebido = case when (select count(*) from PagarReceberBaixas prb where prb.Numero = #Temp.Numero) > 0 then');
           SQL.Add('                        cast(1 as bit)');
           SQL.Add('                   else');
           SQL.Add('                        cast(0 as bit)');
           SQL.Add('                   end');
           SQL.Add('from   #Temp');
           SQL.Add('where  Numero IS NOT null');
           ParamByName('pClassPgto').AsString   := Dados.ConfiguracaoClassificacao_Pagamento.AsString;
           ParamByName('pClassPgtoPF').AsString := Dados.ConfiguracaoClassificacao_PagamentoPF.AsString;
           
           // Previstas.
           If cMovimento.ItemIndex = 0 then begin
              SQL.Add('  AND Recebido <> 1');
           end;   
           // Realizadas.
           If cMovimento.ItemIndex = 1 then begin
              tTitulos.SQL.Add('  AND Recebido = 1');
           End;
           // Quitadas.
           if cMovimento.ItemIndex = 2 then begin
              sql.add('and Quitado = 1');
           end;
           
           tTitulos.SQL.Add('ORDER  BY Representante_Nome, Data_Vencimento, Cliente_Nome, Nota');
           tTitulos.SQL.Add('DROP   TABLE #Temp');
           //tTitulos.SQL.SaveToFile('c:\temp\Comissoes_Representante.sql');
           tTitulos.Open;
      end;

      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
      Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      Screen.Cursor := crDefault;

      if tTitulos.RecordCount = 0 then begin
         MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
      end else begin
         rComissoesPagar.Groups[0].NewPage := cQuebra.Checked;
         pDetalhe.Visible                  := not cResumido.Checked;
         pValorProdutos1.Visible           := cResumido.Checked;

         if cMovimento.ItemIndex = 0 then lTitulo.Caption := 'Comissões a pagar a representantes.';
         if cMovimento.ItemIndex = 1 then lTitulo.Caption := 'Comissões pagas a representantes.';
         if cMovimento.ItemIndex = 2 then lTitulo.Caption := 'Comissões a representantes [Quitadas Pelo Cliente]';
         if cMovimento.ItemIndex = 3 then lTitulo.Caption := 'Comissões a representantes (Todas).';

         lPeriodo.Caption := 'Período de ';
         If (not DataLimpa(cDataIniVenc.Text)) and (not DataLimpa(cDataFimVenc.Text)) then begin
            lPeriodo.Caption := lPeriodo.Caption + ' (Vencimento: '+cDataIniVenc.Text + ' a ' + cDataFimVenc.Text + ')';
         End;
         If (not DataLimpa(cDataIniEmi.Text)) and (not DataLimpa(cDataFimEmi.Text)) then begin
            lPeriodo.Caption := lPeriodo.Caption + ' (Emissão : '+cDataIniEmi.Text + ' a ' + cDataFimEmi.Text + ')';
         End;   

         If (Trim(cBanco.Text) <> '') then begin
            lPeriodo.Caption := lPeriodo.Caption + ' - ('+cBanco.Text+') ';
         End;

         pRepresentante.Visible := not cResumido.Checked;
         ppLabel4.Visible       := not cResumido.Checked = true;
         ppLabel17.Visible      := not cResumido.Checked = true;
         ppLabel19.Visible      := not cResumido.Checked = true;
         ppLabel22.Visible      := not cResumido.Checked = true;
         ppLabel23.Visible      := not cResumido.Checked = true;
         ppLabel1.Visible       := not cResumido.Checked = true;
         ppLabel29.Visible      := not cResumido.Checked = true;

         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;

         with rComissoesPagar do begin
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
                 XLSSettings.Title         := 'Comissões Representantes (Analítico)';
                 XLSSettings.WorksheetName := 'Comissões';
                 ArchiveFileName           := '($MyDocuments)\Comissoes_Representantes_Pedido.xlsx';
                 TextFileName              := '($MyDocuments)\Comissoes_Representantes_Pedido.xlsx';
                 ShowPrintDialog           := false;
              end;
              Print;
              Reset;
              FreeOnRelease;
         end;
      End;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.PorItem;
begin
      Screen.Cursor := crSQLWait;
      Dados.Configuracao.Open;
      with tItens do begin
           sql.Clear;
           sql.add('select Pedido');
           sql.add('      ,Data_Pedido   = Data');
           sql.add('      ,Item');
           sql.add('      ,Repr_Cod      = (select Representante from PedidosRepresentantes pr where pr.Pedido = pri.Pedido)');
           sql.add('      ,Repr_Nome     = (select Nome From Fornecedores where Representante_Codigo = (select Representante from PedidosRepresentantes pr where pr.Pedido = pri.Pedido))');
           sql.add('      ,Data_Venc     = (select Data_Vencimento from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in(:pClassPgto, :pClassPgtoPF))');
           sql.add('      ,Data_Baixa    = (select Data from PagarReceberBaixas where Numero = (select Numero from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF)))');
           sql.add('      ,Cliente       = (select Nome from Clientes cli where cli.Codigo = (select Cliente from PedidosRepresentantes pr where pr.Pedido = pri.Pedido))');
           sql.add('      ,Produto       = ltrim(rtrim(replace(replace((select Descricao from Produtos pd where pd.Codigo = pri.Codigo_Mercadoria), ''<{''+ltrim(rtrim(cast(Codigo_Mercadoria as varchar(10))))+''}>'', ''''), char(10), '''')))');
           sql.add('      ,Unidade       = (select Unidade from Produtos pd where pd.Codigo = pri.Codigo_Mercadoria)');
           sql.add('      ,Quantidade');
           sql.add('      ,Unitario      = Valor_Unitario');
           sql.add('      ,Total         = Valor_Unitario * Quantidade');
           sql.add('      ,Perc_Comissao = (select Comissao from TabelaComissoes where Codigo = Tabela_Comissao)');
           sql.add('      ,Comissao      = (Valor_Unitario * Quantidade) * ((select Comissao from TabelaComissoes tc where tc.Codigo = pri.Tabela_Comissao)/100)');
           sql.add('      ,Tabela        = pri.Tabela_Comissao');
           sql.add('      ,Atraso        = 0');
           sql.add('      ,Pago          = isnull((select sum(Valor) from PagarReceberBaixas prb where prb.Numero = (select Numero from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))), 0)');
           sql.add('      ,Saldo         = cast(0 as float)');
           sql.add('      ,Quitado       = cast(0 as bit)');
           sql.add('into #temp');
           sql.add('from PedidosRepresentantesItens pri');
           sql.add('where isnull(Pedido, '''') <> '''' ');
           sql.add('and  (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
           
           if (not DataLimpa(cDataIniVenc.Text)) and (not DataLimpa(cDataFimVenc.Text)) then begin
              sql.Add('and  (select Data_Vencimento from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in(:pClassPgto, :pClassPgtoPF)) between :pDataIniVenc and :pDataFimVenc');
              ParamByName('pDataIniVenc').AsDate := cDataIniVenc.Date;
              ParamByName('pDataFimVenc').AsDate := cDataFimVenc.Date;
           end;
           if (not DataLimpa(cDataIniEmi.Text)) and (not DataLimpa(cDataFimEmi.Text)) then begin
              sql.Add('and  pri.Data between :pDataIniEmi and :pDataFimEmi');
              ParamByName('pDataIniEmi').AsDate := cDataIniEmi.Date;
              ParamByName('pDataFimEmi').AsDate := cDataFimEmi.Date;
           end;
           if Trim(cCentroCusto.Text) <> '' then begin
              sql.add('and  (select Centro_Custo from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in(:pClassPgto, :pClassPgtoPF)) = :pCentroCusto');
              ParamByName('pCentroCusto').AsString := cCentroCusto.KeyValue;
           end;
           if Trim(cBanco.Text) <> '' then begin
              sql.Add('(select Banco from PagarReceberBaixas where Numero = (select Numero from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))) = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.BancosCodigo.Value;
           end;
           if Trim(cRepresentante.Text) <> '' then begin
              sql.add('and (select Representante from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = :pRepresentante');
              ParamByName('pRepresentante').Asstring := Dados.FornecedoresRepresentante_Codigo.Value;
           end;
           if Trim(cForma.Text) <> '' then begin
              sql.add('and (select Forma_Tipo from PagarReceberBaixas prb where prb.Numero = (select Numero from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))) = :pForma');
              ParamByName('pForma').Asstring := cForma.Text;
           end;
           //Comissões a pagar.
           if cMovimento.ItemIndex = 0 then begin
              sql.add('and (select isnull(sum(Valor), 0) from PagarReceberBaixas prb where prb.Numero = (select Numero from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))) < ');
              sql.add('(select Valor_Parcela from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))');
           end;
           //Comissões Pagas.
           if cMovimento.ItemIndex = 1 then begin
              sql.add('And (select isnull(sum(Valor), 0) from PagarReceberBaixas prb where prb.Numero = (select Numero from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))) = ');
              sql.Add('(select Valor_Parcela from PagarReceber pgr where pgr.Fiscal = pri.Pedido and pgr.Classificacao in (:pClassPgto, :pClassPgtoPF))');
           end;
           //Liquidadas pelo cliente "Quitadas".
           if cMovimento.ItemIndex = 2 then begin
              sql.add('update #temp set Quitado = iif((select sum(Valor) from PagarReceberBaixas prb where prb.Numero in(select Numero from PagarReceber pr where pr.Tipo = ''R'' and pr.Fiscal = #temp.Pedido)) -');
//              sql.Add('                               (select sum(Valor_Parcela) from PagarReceber pr where pr.Fiscal = #temp.Pedido and Tipo = ''R'') = 0, 1, 0)');
              sql.Add('                               (select sum(Valor_Operacao) from PagarReceber pr where pr.Fiscal = #temp.Pedido and Tipo = ''R'') >= 0, 1, 0)');
           end;
           sql.add('update #temp set Atraso = iif(datediff(day, Data_Venc, getdate()) >= 0, datediff(day, Data_Venc, getdate()), 0)');
           sql.add('                ,Saldo  = Comissao - Pago');

           sql.add('select * ');
           sql.add('from #temp ');
           if cMovimento.ItemIndex = 2 then begin
              sql.add('where Quitado = 1');
           end;
           sql.add('order by Repr_Nome, Data_Venc, Cliente, Produto, Data_Pedido,  cast(substring(Pedido, 2, 10) as int), Item');
           sql.add('drop table #temp');
           ParamByName('pClassPgto').AsString   := Dados.ConfiguracaoClassificacao_Pagamento.AsString;
           ParamByName('pClassPgtoPF').AsString := Dados.ConfiguracaoClassificacao_PagamentoPF.AsString;
           //sql.SaveToFile('c:\temp\Comissoes_Representante_Item.sql');
           Open;
           
           with Dados, Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pEmpresa');
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;

           Screen.Cursor := crDefault;
           
           if RecordCount = 0 then begin
              MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
           end else begin
              if cMovimento.ItemIndex = 0 then lTitulo.Caption := 'Comissões representantes [A pagar]';
              if cMovimento.ItemIndex = 1 then lTitulo.Caption := 'Comissões representantes [Realizadas]';
              if cMovimento.ItemIndex = 2 then lTitulo.Caption := 'Comissões representantes [Quitadas Pelo Cliente]';
              if cMovimento.ItemIndex = 3 then lTitulo.Caption := 'Comissões representantes [Todas].';
              lPeriodo2.Caption := 'Período de ';
              if (not DataLimpa(cDataIniVenc.Text)) and (not DataLimpa(cDataFimVenc.Text)) then begin
                 lPeriodo2.Caption := lPeriodo.Caption + ' (Vencimento: '+cDataIniVenc.Text + ' a ' + cDataFimVenc.Text + ')';
              end;
              if (not DataLimpa(cDataIniEmi.Text)) and (not DataLimpa(cDataFimEmi.Text)) then begin
                 lPeriodo2.Caption := lPeriodo.Caption + ' (Emissão : '+cDataIniEmi.Text + ' a ' + cDataFimEmi.Text + ')';
              end;   
              If (Trim(cBanco.Text) <> '') then begin
                 lPeriodo2.Caption := lPeriodo.Caption + ' - ('+cBanco.Text+') ';
              End;
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              if not cExcel.Checked then begin
                 with rComissoesPagar2 do begin
                      AllowPrintToArchive   := false;
                      AllowPrintToFile      := false;
                      DefaultFileDeviceType := 'PDF';
                      DeviceType            := 'Screen';
                      Print;
                      Reset;
                      FreeOnRelease;
                 end;
              end else begin   
                 with rComExcel do begin
                      OpenFile                  := true;
                      AllowPrintToArchive       := true;
                      AllowPrintToFile          := true;
                      DefaultFileDeviceType     := 'XlsxReport';
                      DeviceType                := 'XlsxReport';
                      XLSSettings.AppName       := 'Cybersoft - ERP Importa';
                      XLSSettings.Author        := 'Cybersoft';
                      XLSSettings.Title         := 'Comissões Representantes (Item)';
                      XLSSettings.WorksheetName := 'Comissões';
                      ArchiveFileName           := '($MyDocuments)\Comissoes_Representantes_Item.xlsx';
                      TextFileName              := '($MyDocuments)\Comissoes_Representantes_Item.xlsx';
                      ShowPrintDialog           := false;
                      ppGroupHeaderBand1.Background.Brush.Style := bsClear;
                      Print;
                      Reset;
                      FreeOnRelease;
                 end;
              end;
           end;
      end;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.pDetalheBeforePrint(Sender: TObject);
begin
     With Dados do begin
          // Calcula a quantidade de dias em atraso.
          lDias.Caption := '';
          If (tTitulos.FieldByName('Data_Baixa').Value > tTitulos.FieldByName('Data_Vencimento').Value) then
             lDias.Caption := DifDias( tTitulos.FieldByName('Data_Vencimento').Value, tTitulos.FieldByName('Data_Baixa').Value);
     End;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.cMovimentoClick(Sender: TObject);
begin
     cBanco.Enabled := cMovimento.ItemIndex = 1;
     lBanco.Enabled := cBanco.Enabled;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
     lTotalRep.Caption :=  'TOTAL DO REPRESENTANTE: '+titens.FieldByName('Repr_Nome').AsString;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
     lTotalCli.Caption :=  'TOTAL DO CLIENTE: '+titens.FieldByName('Cliente').AsString;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
     lTotalRep2.Caption :=  'TOTAL DO REPRESENTANTE: '+titens.FieldByName('Repr_Nome').AsString;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.ppGroupFooterBand8BeforePrint(Sender: TObject);
begin
     lTotalCli2.Caption :=  'TOTAL DO CLIENTE: '+titens.FieldByName('Cliente').AsString;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
     Value := pTotalVendas.Value - pTotalRecebimentos.Value;
end;

procedure TImpressao_FinanceirosOP_ComissoesPagar.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
     Value := pComissaoTotal.Value - pComissaoRecebida.Value;
end;



end.
