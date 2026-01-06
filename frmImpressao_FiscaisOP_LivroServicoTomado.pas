unit frmImpressao_FiscaisOP_LivroServicoTomado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppReport, Vcl.StdCtrls, RxLookup, Mask, Inifiles,
  Vcl.ExtCtrls, RXCtrls, ppSubRpt, RxToolEdit, MemDS, ppDB, ppModule, raCodMod, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FiscaisOP_LivroServicoTomado = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cForn: TRxDBLookupCombo;
    lCliFor: TStaticText;
    cExcel: TCheckBox;
    rServicos: TppReport;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pNotas: TppDBPipeline;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    tTotais: TMSQuery;
    pTotais: TppDBPipeline;
    dstTotais: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLine4: TppLine;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    ppLine6: TppLine;
    ppLabel14: TppLabel;
    ppLine7: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine11: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine12: TppLine;
    ppLabel7: TppLabel;
    ppLine13: TppLine;
    ppLabel12: TppLabel;
    ppLine14: TppLine;
    ppLabel13: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel16: TppLabel;
    ppLine18: TppLine;
    ppLabel19: TppLabel;
    ppLine19: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine20: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDBText11: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine36: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppDBText15: TppDBText;
    ppLine47: TppLine;
    ppDBText14: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    cRetencao: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FiscaisOP_LivroServicoTomado: TImpressao_FiscaisOP_LivroServicoTomado;

implementation

uses frmDados, frmMenu_Principal, Funcoes;

{$R *.dfm}

procedure TImpressao_FiscaisOP_LivroServicoTomado.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_LivroServicoTomado.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FiscaisOP_LivroServicoTomado.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_NOTAS_SERVICO_TOM', 'Data_Inicial', cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_NOTAS_SERVICO_TOM', 'Data_Final'  , cDataFim.Date);
      aINI.WriteInteger('IMPRESSAO_NOTAS_SERVICO_TOM', 'Fornecedor'  , iif(cForn.KeyValue = null, -1, cForn.KeyValue));
      aINI.WriteInteger('IMPRESSAO_NOTAS_SERVICO_TOM', 'Retencao'    , cRetencao.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_NOTAS_SERVICO_TOM', 'Excel'       , cExcel.Checked);
      aINI.Free;

      Impressao_FiscaisOP_LivroServicoTomado.Release;
      Impressao_FiscaisOP_LivroServicoTomado := nil;
end;

procedure TImpressao_FiscaisOP_LivroServicoTomado.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           with Empresas do begin 
                sql.clear;
                sql.add('select * from Empresas where Codigo = :pEmpresa');
                parambyname('pEmpresa').asinteger := Menu_Principal.mEmpresa;
                open;
           end;
           with tNotas do begin 
                sql.clear;
                sql.add('select Nota');
                sql.add('      ,Data_Entrada');
                sql.add('      ,Fornecedor = (select Nome from Fornecedores where Codigo = Fornecedor)');
                sql.add('      ,Serie');
                sql.add('      ,Dia = day(Data_Entrada)');
                sql.add('      ,Estado');
                sql.add('      ,Valor_TotalNota');
                sql.add('      ,Natureza_Codigo');
                sql.add('      ,Valor_BCISS = case when :pRegime = 3 then Valor_TotalNota else 0 end');
                sql.add('      ,Aliquota_ISS');
                sql.add('      ,Valor_ISS');
                sql.add('      ,Valor_IsentasISS = 0');
                sql.add('      ,Valor_OutrasISS = case when :pRegime = 1 then Valor_TotalNota else 0 end');
                sql.add('      ,Observacoes');
                sql.add('      ,Codigo_ISS = case when :pRegime = 1 then ''3'' else ''1'' end');
                sql.add('from NotasTerceiros');
                sql.add('where Servico is not null');
                sql.add('and Data_Entrada between :pDataIni and :pDataFim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                   paramByName('pForn').AsInteger := FornecedoresCodigo.AsInteger;
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('order by Data_Entrada, Nota');
                parambyName('pDataIni').AsDate  := cDataIni.Date;
                parambyName('pDataFim').AsDate  := cDataFim.Date;
                parambyName('pRegime').AsInteger:= EmpresasRegime_Apuracao.AsInteger;
                //sql.SaveToFile('c:\Temp\Servicos_Tomados_Notas.SQL');
                open;
           end;
           with tTotais do begin
                sql.clear;
                sql.add('select Codigo = Codigo_Adicional01');
                sql.add('      ,valor = sum(Valor_Adicional01)');
                sql.add('into  #temp');
                sql.add('from  NotasTerceiros');
                sql.add('where Servico is not null and Valor_Adicional01 is not null and Codigo_Adicional01 is not null');
                sql.add('and   data_entrada between :pdataini and :pdatafim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('group by Codigo_Adicional01');
                sql.add('union all');
                sql.add('select codigo = Codigo_Adicional02');
                sql.add('      ,valor = sum(valor_adicional02)');
                sql.add('from   NotasTerceiros');
                sql.add('where  servico is not null and valor_adicional02 is not null and Codigo_Adicional02 is not null');
                sql.add('and   data_entrada between :pdataini and :pdatafim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('group by Codigo_Adicional02');
                sql.add('union all');
                sql.add('select codigo = Codigo_Adicional03');
                sql.add('      ,valor = sum(valor_adicional03)');
                sql.add('from   NotasTerceiros');
                sql.add('where  servico is not null and valor_adicional03 is not null and Codigo_Adicional03 is not null');
                sql.add('and   data_entrada between :pdataini and :pdatafim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('group by Codigo_Adicional03');
                sql.add('union all');
                sql.add('select codigo = Codigo_Adicional04');
                sql.add('      ,valor = sum(valor_adicional04)');
                sql.add('from   NotasTerceiros');
                sql.add('where  servico is not null and valor_adicional04 is not null and Codigo_Adicional04 is not null');
                sql.add('and   data_entrada between :pdataini and :pdatafim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('group by Codigo_Adicional04');
                sql.add('union all');
                sql.add('select codigo = Codigo_Adicional05');
                sql.add('      ,valor = sum(valor_adicional05)');
                sql.add('from   NotasTerceiros');
                sql.add('where  servico is not null and valor_adicional05 is not null and Codigo_Adicional05 is not null');
                sql.add('and   data_entrada between :pdataini and :pdatafim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('group by Codigo_Adicional05');
                sql.add('union all');
                sql.add('select codigo = Codigo_Adicional06');
                sql.add('      ,valor = sum(valor_adicional06)');
                sql.add('from   NotasTerceiros');
                sql.add('where  servico is not null and valor_adicional06 is not null and Codigo_Adicional06 is not null');
                sql.add('and   data_entrada between :pdataini and :pdatafim');
                if trim(cForn.DisplayValue) <> '' then begin
                   sql.Add('and Fornecedor = :pForn');
                end;
                if cRetencao.ItemIndex = 1 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 1');
                end;
                if cRetencao.ItemIndex = 2 then begin
                   sql.Add('and isnull(Retencao_ISS, 0) = 0');
                end;
                sql.add('group by Codigo_Adicional06');
                sql.add('select codigo');
                sql.add('      ,descricao = (select descricao from cybersoft_cadastros.dbo.impostos imp where imp.codigo = #temp.codigo)');
                sql.add('      ,valor = sum(valor)');
                sql.add('from  #temp');
                sql.add('group by codigo');
                sql.add('order by codigo');
                sql.add('drop table #temp');
                parambyName('pDataIni').AsDate := cDataIni.Date;
                parambyName('pDataFim').AsDate := cDataFim.Date;
                if trim(cForn.DisplayValue) <> '' then begin
                   paramByName('pForn').AsInteger := FornecedoresCodigo.AsInteger;
                end;
                //sql.saveToFile('c:\Temp\Servicos_Tomados_Totais.SQL');
                open;
           end;

           lPeriodo.Caption := '| Período '+cDataIni.Text + ' a '+cDataFim.Text;
           if cRetencao.ItemIndex = 1 then lPeriodo.Caption := lPeriodo.Caption + ' | '+'Com retenção do ISS';
           if cRetencao.ItemIndex = 2 then lPeriodo.Caption := lPeriodo.Caption + ' | '+'Sem retenção do ISS';
           if cForn.KeyValue <> null then lPeriodo.Caption := lPeriodo.Caption + ' | '+ cForn.DisplayValue;
           lPeriodo.Caption := lPeriodo.Caption + ' | ';
           
           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;

           rServicos.Print;
           rServicos.Reset;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_LivroServicoTomado.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date       := aINI.ReadDate   ('IMPRESSAO_NOTAS_SERVICO_TOM', 'Data_Inicial', Date);
      cDataFim.Date       := aINI.ReadDate   ('IMPRESSAO_NOTAS_SERVICO_TOM', 'Data_Final'  , Date);
      cForn.keyvalue      := aINI.ReadInteger('IMPRESSAO_NOTAS_SERVICO_TOM', 'Fornecedor'  , -1);
      cRetencao.ItemIndex := aINI.ReadInteger('IMPRESSAO_NOTAS_SERVICO_TOM', 'Retencao'    , 0);
      cExcel.Checked      := aINI.ReadBool   ('IMPRESSAO_NOTAS_SERVICO_TOM', 'Excel'       , false);
      aINI.Free;

      with Dados do begin
           with Fornecedores do begin 
                sql.Clear;
                sql.Add('select * from Fornecedores where Codigo in(select Fornecedor from NotasTerceiros where Servico is not null) order by Nome');
                open;
           end;
      end;
end;



end.

