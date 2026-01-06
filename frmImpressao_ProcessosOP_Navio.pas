unit frmImpressao_ProcessosOP_Navio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppVar, Data.DB, MemDS, DBAccess, MSAccess, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppStrtch, ppMemo, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls,
  Vcl.ExtCtrls, RxLookup, RxCtrls, Vcl.Buttons, MaskUtils;

type
  TImpressao_ProcessosOP_Navio = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    rP01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppLabel7: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    lEntrada: TppDBText;
    lSaida: TppDBText;
    ppDBText8: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    gCab_Processos: TppGroupHeaderBand;
    ppShape10: TppShape;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    gCab_Produto: TppGroupHeaderBand;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pEmpresas: TppDBPipeline;
    lSaldo: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    TotalGeral: TppVariable;
    TotalEnt: TppVariable;
    TotalSai: TppVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lSaldoIni: TppVariable;
    ppLabel12: TppLabel;
    tTmp: TMSQuery;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    lTotalNavioEnt: TppDBCalc;
    ppLine7: TppLine;
    lTotalNavioSai: TppDBCalc;
    ppLine9: TppLine;
    ppShape7: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    Panel2: TPanel;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cProduto: TDBLookupComboBox;
    cCodigo: TCurrencyEdit;
    StaticText6: TStaticText;
    cNavio: TDBLookupComboBox;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    ppShape14: TppShape;
    lTotalNavio: TppVariable;
    cExcel: TCheckBox;
    rP01Excel: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText5: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText18: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel25: TppLabel;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppGroup3: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppDBText19: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppVariable5: TppVariable;
    ppLabel27: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText23: TppDBText;
    ppLabel28: TppLabel;
    ppDBText24: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel29: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppVariable6: TppVariable;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    cArmazem: TRxDBLookupCombo;
    StaticText5: TStaticText;
    tArmazem: TMSQuery;
    tArmazemCodigo: TIntegerField;
    tArmazemCNPJ: TStringField;
    tArmazemNome: TStringField;
    dstArmazem: TDataSource;
    lPeriodo: TppLabel;
    ppLabel30: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure TotalEntCalc(Sender: TObject; var Value: Variant);
    procedure TotalSaiCalc(Sender: TObject; var Value: Variant);
    procedure gCab_ProdutoBeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforeGenerate(Sender: TObject);
    procedure lSaldoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalNavioCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Navio: TImpressao_ProcessosOP_Navio;

implementation

{$R *.dfm}

uses frmDados, frmDMFiscal, frmMenu_Principal, Funcoes;

procedure TImpressao_ProcessosOP_Navio.bImprimirClick(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     lPeriodo.Caption := '';
     with Dados, dmFiscal do Begin
          with tItens do begin
               sql.clear;
               sql.add('select DI');
               sql.add('      ,Nota');
               sql.add('      ,Data = Data_Emissao');
               sql.add('      ,Quantidade');
               sql.add('      ,Saida_Entrada');
               sql.add('      ,Navio = isnull(Navio, 0)');
               sql.add('      ,Codigo_Mercadoria');
               sql.add('      ,Descricao  = case when charindex(''<{'', (select Descricao from Produtos where Codigo = nin.Codigo_Mercadoria)) <> 0 then');
               sql.add('                         cast((select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = nin.Codigo_Mercadoria) as varchar(2000))');
               sql.add('                    else');
               sql.add('                         cast((select substring(Descricao, 1, 2000) from Produtos where Codigo = nin.Codigo_Mercadoria) as varchar(2000))');
               sql.add('                    end');
               sql.add('      ,Unidade    = (select Unidade from Produtos where Codigo = nin.Codigo_Mercadoria)');
               sql.add('      ,Entradas   = iif(Saida_Entrada = 0, Quantidade, 0)');
               sql.add('      ,Saidas     = iif(Saida_Entrada = 0, 0, Quantidade)');
               sql.add('      ,Processo   = (select Processo from Cybersoft_Cadastros.dbo.ControleNavios Cn where cn.Ordem = nin.Navio)');
               sql.add('      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios Cn where cn.Ordem = nin.Navio)');
               sql.add('      ,Emissao    = iif(Emissor = ''P'', ''PROPRIA'', ''TERCEIROS'')');
               sql.add('from   NotasItensNavios nin');
               sql.Add('where isnull(Navio, 0) is not null');
               if not DataLimpa(cDataIni.text) then begin
                  sql.add('and Data_Emissao between :pDataIni and :pDataFim');
                  parambyname('pDataIni').Value := cDataIni.Date;
                  parambyname('pDataFim').Value := cDataFim.Date;
                  lPeriodo.Caption := lPeriodo.Caption + 'Período :'+cDataIni.Text+ ' á '+cDataFim.Text;
               end;
               if Trim(cProcesso.Text) <> '' then begin
                  sql.Add('and (select Processo from Cybersoft_Cadastros.dbo.ControleNavios Cn where cn.Ordem = nin.Navio) = :pProcesso');
                  ParamByName('pProcesso').AsString := cProcesso.Text;
                  lPeriodo.Caption := lPeriodo.Caption + ' | Processo: '+cProcesso.Text;
               end;
               if Trim(cProduto.Text) <> '' then begin
                  sql.Add('and Codigo_Mercadoria = :pProduto');
                  ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
               end;
               if cNavio.Text <> '' then begin
                  sql.Add(' and Navio = :pNavio ');
                  ParamByName('pNavio').Asinteger := cNavio.KeyValue;
                  lPeriodo.Caption := lPeriodo.Caption + ' | Navio: '+ControleNavios.fieldbyname('Navio').asstring;
               end;
               if cArmazem.Text <> '' then begin
                  sql.Add(' and Armazem = :pArm');
                  parambyname('pArm').Value := tArmazem.fieldbyname('Codigo').asinteger;
                  lPeriodo.Caption := lPeriodo.Caption + ' | Armazém: '+FormatMaskText('##.###.###/####-##;0; ', tArmazem.fieldbyname('CNPJ').AsString) + ' '+ tArmazem.fieldbyname('Nome').AsString;
           end;
               sql.add('order by Codigo_Mercadoria, Navio, Data, Saida_Entrada, Nota');
               //sql.SaveToFile('c:\temp\Impressao_Estoque_Navios.sql');
               open;

               if RecordCount <> 0 then begin
                  if FileExists(Dados.EmpresasLogo.AsString) then begin
                     iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.AsString);
                  end;
                  if cNavio.Text <> '' then lTitulo.Caption := lTitulo.caption + ' - (Navio: '+cNavio.Text+')';
                  if not DataLimpa(cDataIni.Text) then begin
                     lTitulo.Caption := lTitulo.caption + ' Período '+cDataini.text + ' á '+cDataFim.text;
                  end;

                  if not cExcel.Checked then begin
                     with rP01 do begin
                          Print;
                          FreeOnRelease;
                          Reset;
                     end;
                  end else begin
                     with rP01Excel do begin
                          OpenFile                  := true;
                          AllowPrintToArchive       := true;
                          AllowPrintToFile          := true;
                          PrinterSetup.PaperHeight  := 60;
                          ppDetailBand1.Height      := 0.17;
                          DeviceType                := 'XlsxReport';
                          XLSSettings.AppName       := 'Cybersoft - ERP Importa';
                          XLSSettings.Author        := 'Cybersoft';
                          XLSSettings.Title         := 'Controle de Estoque por Navio/DI';
                          XLSSettings.WorksheetName := 'Controle de Estoque por Navio/DI';
                          ArchiveFileName           := 'c:\faturamento\Prestação de contas do processo.xlsx';
                          TextFileName              := 'c:\faturamento\Prestação de contas do processo.xlsx';
                          ShowPrintDialog           := false;
                          Print;
                          Reset;
                          FreeOnRelease;
                     end;
                  end;

               end else begin
                  MessageDlg('Não há informações para o relatório solicitado!', mtInformation, [mbOk], 0);
               end;
          end;
     end;
     Screen.Cursor := crDefault;
end;

procedure TImpressao_ProcessosOP_Navio.bLimparClick(Sender: TObject);
begin
     cProcesso.KeyValue := null;
     cNavio.KeyValue    := null;
     cProduto.KeyValue  := null;
     cCodigo.clear;
     cDataIni.Clear;
     cDataFim.Clear;
end;

procedure TImpressao_ProcessosOP_Navio.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ProcessosOP_Navio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Impressao_ProcessosOP_Navio.Release;
     Impressao_ProcessosOP_Navio := nil;
end;

procedure TImpressao_ProcessosOP_Navio.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Navio.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     with Dados do begin
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pEmpresa');
               parambyname('pEmpresa').asinteger := Menu_Principal.mEmpresa;
               open;
          end;
          with ProcessosDOC do begin
               sql.Clear;
               sql.Add('select * from ProcessosDocumentos where Processo <> '''' order by Processo');
               open;
          end;
          with Produtos do begin
               sql.Clear;
               sql.Add('select * from Produtos order by Descricao_Reduzida');
               open;
          end;
          if cProduto.KeyValue > 0 then cCodigo.AsInteger := cProduto.KeyValue;
          with Usuarios do begin
               sql.Clear;
               sql.Add('select * from Usuarios order by Nome');
               open;
          end;
          with ControleNavios do begin
               SQL.Clear;
               SQL.Add('select * from ControleNavios order by Navio');
               Open;
          end;
          with tArmazem do begin
               sql.clear;
               sql.add('select Codigo');
               sql.Add('      ,Nome');
               sql.Add('      ,CNPJ');
               sql.Add('from Fornecedores');
               sql.add('where Ativo = 1');
               sql.add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
               sql.add('order by Nome');
               open;
          end;
     end;
     Screen.Cursor := crDefault;
end;

procedure TImpressao_ProcessosOP_Navio.gCab_ProdutoBeforePrint(Sender: TObject);
begin
     with tTmp do begin
          sql.Clear;
          sql.Add('select Saldo = sum(iif(Saida_Entrada = 0, Quantidade, Quantidade *-1))');
          sql.Add('from NotasItensNavios');
          sql.Add('where isnull(Codigo_Mercadoria, 0) = :pCod');
          sql.Add('and Data_Emissao < :pData');
          if trim(cNavio.Text) <> '' then begin
             sql.Add('and Navio = :pNavio');
             parambyname('pNavio').Value := tItens.FieldByName('Navio').AsInteger;
          end;

          parambyname('pCod').Value  := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
          parambyname('pData').Value := cDataIni.Date;
          open;
          lSaldoIni.Value := fieldbyname('Saldo').AsCurrency;
          lSaldo.value    := lSaldoIni.value + tItens.fieldbyname('Entradas').asfloat - tItens.fieldbyname('Saidas').asfloat;
     end;
end;

procedure TImpressao_ProcessosOP_Navio.lSaldoCalc(Sender: TObject; var Value: Variant);
begin
     value := value + tItens.fieldbyname('Entradas').asfloat - tItens.fieldbyname('Saidas').asfloat;
end;

procedure TImpressao_ProcessosOP_Navio.lTotalNavioCalc(Sender: TObject; var Value: Variant);
begin
     value := lTotalNavioEnt.value - lTotalNavioSai.value;
end;

procedure TImpressao_ProcessosOP_Navio.ppSummaryBand1BeforeGenerate(Sender: TObject);
begin
     TotalEnt.value   := TotalEnt.value  + iif(lSaldoIni.value > 0, lSaldoIni.value, 0);
     TotalSai.value   := TotalSai.value  + iif(lSaldoIni.value < 0, lSaldoIni.value, 0);
     TotalGeral.value := TotalEnt.Value - TotalSai.value;
end;

procedure TImpressao_ProcessosOP_Navio.TotalEntCalc(Sender: TObject; var Value: Variant);
begin
     value := value + tItens.fieldbyname('Entradas').asfloat;
end;

procedure TImpressao_ProcessosOP_Navio.TotalSaiCalc(Sender: TObject; var Value: Variant);
begin
     value := value + titens.fieldbyname('Saidas').asfloat;
end;



end.
