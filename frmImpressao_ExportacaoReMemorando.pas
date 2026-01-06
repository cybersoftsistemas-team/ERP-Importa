unit frmImpressao_ExportacaoReMemorando;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXDBCtrl, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, RXCtrls, Funcoes, MaskUtils, ppDBPipe, ppParameter, ppBands, ppReport, ppSubRpt, ppCtrls, ppPrnabl, ppClass, ppProd,
  ppVar, ppMemo, ppTypes, Grids, DBGrids, ppDesignLayer, ppModule, raCodMod, ppStrtch, ppCache, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_ExportacaoReMemorando = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Progresso: TProgressBar;
    Grade: TRxDBGrid;
    tMemorando: TMSQuery;
    dstMemorando: TDataSource;
    tItens: TMSQuery;
    dstItens: TDataSource;
    tEntradas: TMSQuery;
    dstEntradas: TDataSource;
    pEmpresas: TppDBPipeline;
    pEntradas: TppDBPipeline;
    pItens: TppDBPipeline;
    pMemo: TppDBPipeline;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    rMemorando: TppReport;
    ppParameterList2: TppParameterList;
    tSaidas: TMSQuery;
    dstSaidas: TDataSource;
    pSaidas: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape2: TppShape;
    ppDBText3: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    lEndereco: TppLabel;
    iLogo: TppImage;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText27: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppDBText47: TppDBText;
    ppLine2: TppLine;
    lVia: TppLabel;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    lEndereco2: TppLabel;
    ppLabel14: TppLabel;
    ppDBText48: TppDBText;
    ppLabel15: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel16: TppLabel;
    ppDBText51: TppDBText;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppShape5: TppShape;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppDBText53: TppDBText;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    ppLine9: TppLine;
    ppDBMemo1: TppDBMemo;
    ppLabel24: TppLabel;
    ppDBText52: TppDBText;
    ppLine15: TppLine;
    ppLabel25: TppLabel;
    ppLine16: TppLine;
    ppDBText57: TppDBText;
    ppShape7: TppShape;
    ppLabel26: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppShape11: TppShape;
    ppShape14: TppShape;
    ppLabel11: TppLabel;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine42: TppLine;
    ppLine44: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine46: TppLine;
    ppLabel27: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppDetailBand4: TppDetailBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppDBText58: TppDBText;
    ppLine20: TppLine;
    ppDBText59: TppDBText;
    ppLine21: TppLine;
    ppDBText60: TppDBText;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBMemo2: TppDBMemo;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppDBText61: TppDBText;
    ppLabel34: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel35: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel36: TppLabel;
    ppLine30: TppLine;
    ppDBText64: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppShape15: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine1: TppLine;
    ppLine14: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine31: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppLine47: TppLine;
    ppDBText11: TppDBText;
    ppLine48: TppLine;
    ppDBText12: TppDBText;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppLine51: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine41: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape13: TppShape;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLabel4: TppLabel;
    ppLabel32: TppLabel;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppLine40: TppLine;
    ppLine32: TppLine;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure rMemorandoBeforePrint(Sender: TObject);
    procedure ImprimirMemoGraf;
    procedure rMemorandoStartPage(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo    : TextFile;
    mNomeArq   : String;
    mPagina    : Integer;
    mValor     : String;
    mTipo      : String;
    mMascara   : String;
    mLinha     : Integer;
    mDescricao : String;
    mQtdeLinha : Integer;
    mPosDesc   : Integer;
    mMemoIni   : Integer;
  end;

var
  Impressao_ExportacaoReMemorando: TImpressao_ExportacaoReMemorando;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ExportacaoReMemorando.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ExportacaoReMemorando.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ExportacaoReMemorando.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Impressao_ExportacaoReMemorando.Release;
     Impressao_ExportacaoReMemorando := nil;
     FecharTabelas(Dados,nil,nil,nil);
end;

procedure TImpressao_ExportacaoReMemorando.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados do begin
          tProcessos.SQL.Clear;
          tProcessos.SQL.Add('SELECT Numero');
          tProcessos.SQL.Add('      ,Data_Emissao');
          tProcessos.SQL.Add('      ,Processo');
          tProcessos.SQL.Add('      ,DE_Numero');
          tProcessos.SQL.Add('      ,DE_Data');
          tProcessos.SQL.Add('      ,RE_Numero');
          tProcessos.SQL.Add('      ,RE_Data');
          tProcessos.SQL.Add('FROM  MemorandoExportacao');
          tProcessos.SQL.Add('ORDER BY Data_Emissao desc');
          tProcessos.Open;
     End;
     Screen.Cursor := crDefault;
end;

procedure TImpressao_ExportacaoReMemorando.bImprimirClick(Sender: TObject);
begin
      ImprimirMemoGraf;
end;

procedure TImpressao_ExportacaoReMemorando.ImprimirMemoGraf;
begin
      Screen.Cursor := crSQLWait;

      // Gerando o memorando de exportação selecionado.
      With Dados, dmFiscal do begin
           //Imprimindo o memorando.
           tMemorando.SQL.Clear;
           tMemorando.SQL.Add('SELECT * FROM MemorandoExportacao WHERE Numero = :pNumero');
           tMemorando.ParamByName('pNumero').AsInteger := tProcessos.FieldByName('Numero').AsInteger;
           tMemorando.Open;

           tSaidas.SQL.Clear;
           tSaidas.SQL.Add('SELECT Numero');
           tSaidas.SQL.Add('      ,Data_Emissao');
           tSaidas.SQL.Add('      ,NFE_cNF');
           tSaidas.SQL.Add('FROM   NotasFiscais');
           tSaidas.SQL.Add('WHERE  Processo = :pProcesso');
           tSaidas.SQL.Add('AND    (SELECT Movimenta_Estoque FROM TipoNota WHERE Codigo = Tipo_Nota) = 1');
           tSaidas.SQL.Add('AND    ISNULL(Cancelada, 0) = 0');
           tSaidas.SQL.Add('AND    ISNULL(NFe_Denegada, 0) = 0');
           tSaidas.ParamByName('pProcesso').AsString := tMemorando.FieldByName('Processo').AsString;
           //tSaidas.SQL.SaveToFile('c:\temp\Memorando_Expotacao_Saidas.sql');
           tSaidas.Open;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Quantidade,');
           tItens.SQL.Add('       NCM,');
           tItens.SQL.Add('       Descricao_Mercadoria,');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       CAST(Valor_Unitario AS DECIMAL (14,2)) AS Valor_Unitario,');
           tItens.SQL.Add('       CAST(ROUND(Valor_Unitario, 2) * Quantidade AS DECIMAL(14,4)) AS Valor_Total');
           tItens.SQL.Add('FROM   NotasItens');
           tItens.SQL.Add('WHERE  Processo = :pProcesso');
           tItens.SQL.Add('AND    Movimenta_Estoque = 1');
           tItens.SQL.Add('AND    ISNULL(Cancelada, 0) = 0');
           tItens.SQL.Add('AND    ISNULL(NFe_Denegada, 0) = 0');
           tItens.ParamByName('pProcesso').AsString := tMemorando.FieldByName('Processo').AsString;
           //tItens.SQL.SaveToFile('c:\temp\Memorando_Expotacao_Itens.sql');
           tItens.Open;

           tEntradas.SQL.Clear;
           tEntradas.SQL.Add('SELECT Nota');
           tEntradas.SQL.Add('      ,Modelo');
           tEntradas.SQL.Add('      ,Serie');
           tEntradas.SQL.Add('      ,Data_Emissao');
           tEntradas.SQL.Add('      ,Nfe_cNF');
           tEntradas.SQL.Add('FROM  NotasTerceiros');
           tEntradas.SQL.Add('WHERE Processo = :pProcesso AND (SELECT Movimenta_Estoque FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) = 1');
           tEntradas.SQL.Add('ORDER BY Nota');
           tEntradas.ParamByName('pProcesso').AsString := tProcessos.FieldByName('Processo').AsString;
           //tEntradas.SQL.SaveToFile('c:\temp\Memorando_Expotacao_Entradas.sql');
           tEntradas.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = '+EmpresasMunicipio_Codigo.AsString);
           Municipios.Open;

           if FileExists(Dados.EmpresasLogo.Value) then
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

           lEndereco.Caption  := Trim(Dados.Empresas.FieldByName('Rua').AsString)+', Nº '+EmpresasRua_Numero.AsString+' '+EmpresasComplemento.AsString + ' - '+EmpresasBairro.AsString + '   '+MunicipiosNome.AsString+'('+EmpresasEstado.AsString+')'+'  -  CEP: '+FormatMaskText('99999-999;0',EmpresasCEP.AsString);
           lEndereco2.Caption := lEndereco.Caption;

           Configuracao.Open;

           if not DirectoryExists(ConfiguracaoPasta_NFE.AsString+'\Memorandos Exportacao') then ForceDirectories(ConfiguracaoPasta_NFE.AsString+'\Memorandos Exportacao');

           // 1ª VIA - REMETENTE.
           rMemorando.AllowPrintToFile := True;
           rMemorando.DeviceType       := dtPDF;
           rMemorando.ShowPrintDialog  := False;
           rMemorando.TextFileName     := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_1ª Via.pdf';

           lVia.Caption := '1ª VIA - REMETENTE';
           rMemorando.Print;
           rMemorando.Reset;

           // 2ª VIA - ARQUIVO.
           rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_2ª Via.pdf';
           lVia.Caption            := '2ª VIA - ARQUIVO';
           rMemorando.Print;
           rMemorando.Reset;

           // 3ª VIA - FISCO.
           rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_3ª Via.pdf';
           lVia.Caption            := '3ª VIA - FISCO';
           rMemorando.Print;
           rMemorando.Reset;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ExportacaoReMemorando.rMemorandoBeforePrint(Sender: TObject);
begin
      with Dados do begin
           lEndereco.Caption  := EmpresasRua.AsString+ ' nº '+ EmpresasRua_Numero.AsString + ', '+EmpresasBairro.AsString + ' - ' + MunicipiosNome.AsString + '('+EmpresasEstado.AsString+')';
           lEndereco2.Caption := lEndereco.Caption;
      end;
end;

procedure TImpressao_ExportacaoReMemorando.rMemorandoStartPage(Sender: TObject);
begin
      ppHeaderBand2.PrintOnLastPage := true;
      if rMemorando.PageCount > 1 then ppHeaderBand2.PrintOnLastPage := false;
end;

end.
