unit frmImpressao_ControleNavios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ComObj, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, system.UITypes,
  Vcl.ExtCtrls, RxCtrls, RxLookup, Data.DB, MemDS, DBAccess, MSAccess, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppDesignLayer, ppParameter, ppComm, ppRelatv,
  ppProd, ppReport, ppCtrls, ppPrnabl, ppVar, Vcl.Mask, RxToolEdit, IniFIles;

type
  TImpressao_ControleNavios = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cNavio: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cStatus: TRadioGroup;
    tNavios: TMSQuery;
    dstNavios: TDataSource;
    tControle: TMSQuery;
    rControle: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pControle: TppDBPipeline;
    ppDBText1: TppDBText;
    dstControle: TDataSource;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    pEmpresas: TppDBPipeline;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    cSaida: TRadioGroup;
    cMovimento: TRadioGroup;
    tNaviosOrdem: TIntegerField;
    tNaviosNavio: TStringField;
    tNaviosStatus: TStringField;
    cDataIni: TDateEdit;
    lData: TStaticText;
    cDataFim: TDateEdit;
    ppGroup1: TppGroup;
    pCabGrpTot: TppGroupHeaderBand;
    pRodGrpTot: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    cTotal: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cNavioChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ControleNavios: TImpressao_ControleNavios;

implementation

{$R *.dfm}

uses frmDados, Funcoes, frmMenu_Principal;

procedure TImpressao_ControleNavios.bImprimirClick(Sender: TObject);
begin
      screen.Cursor := crSQLWait;
      with tEmpresas do begin
           sql.clear;
           sql.add('select Numero_Filial, Razao_Social, Logo from Empresas where Codigo = :pCodigo');
           parambyname('pCodigo').asinteger := Menu_Principal.mEmpresa;
           open;
      end;
      with tControle do begin
           sql.clear;
           if cMovimento.ItemIndex in[0, 1] then begin
              sql.add('select distinct');
              sql.add('       Status = (select Status from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
              sql.add('      ,Ordem = cnb.Navio');
              sql.add('      ,Navio = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
              sql.add('      ,Porto');
              sql.add('      ,Armazem_Cod = cnb.Armazem');
              sql.add('      ,Armazem = (select Nome from Fornecedores frn where frn.Codigo = cnb.Armazem)');
              sql.add('      ,Data_Chegada = (select Data_Chegada   from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
              sql.add('      ,Data_Atracacao = (select Data_Atracacao from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
              sql.add('      ,Data_Descarga = (select Data_Descarga  from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
              sql.add('      ,Carga_Total = sum(Quantidade_LT20)');
              sql.add('      ,Descarregado = 0');
              sql.add('      ,Falta_Descarregar = 0');
              sql.add('      ,Quantidade_LT20 = sum(Quantidade_LT20)');
              sql.add('      ,VariacaoLT = isnull((select sum(cnl.Variacao_DesLT) from ControleNaviosLaudo cnl where cnl.Navio = cnb.Navio and cnl.Laudo = cnb.Laudo), 0)');
              sql.add('      ,VariacaoPerc = isnull((select sum(cnl.Variacao_DesPerc) from ControleNaviosLaudo cnl where cnl.Navio = cnb.Navio and cnl.Laudo = cnb.Laudo), 0)');
              sql.add('      ,Bloqueado = sum(iif(cnb.Bloqueado = 1, Quantidade_LT20, 0))');
              sql.add('      ,Endossado = sum(iif(cnb.Endossado = 1, Quantidade_LT20, 0))');
              sql.add('      ,Nacionalizado = 0');
              sql.add('      ,Falta_Nacionalizar = 0');
              sql.add('      ,Laudo');
              sql.add('into #temp');
              sql.add('from ControleNaviosBL cnb');
              sql.add('where Registro is not null');
              if not DataLimpa(cDataIni.text) then begin
                 sql.add('and  ((select Data_Chegada   from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio) between :pDataIni and :pDataFim');
                 sql.add('or    (select Data_Atracacao from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio) between :pDataIni and :pDataFim');
                 sql.add('or    (select Data_Descarga  from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio) between :pDataIni and :pDataFim)');
                 parambyname('pDataIni').value := cDataIni.Date;
                 parambyname('pDataFim').value := cDataFim.Date;
              end;
              if cNavio.text <> '' then begin
                 sql.add('and Navio = :pNavio');
                 parambyname('pNavio').Asinteger := tNavios.FieldByName('Ordem').AsInteger;
              end;
              if cStatus.ItemIndex > 0 then begin
                 sql.add('and (select Status from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio) = :pStatus');
                 parambyname('pStatus').AsString := cStatus.Items[cStatus.ItemIndex];
              end;
              sql.add('group by Navio, Porto, Armazem, Laudo');
           end;
           if cMovimento.ItemIndex = 0 then begin
              sql.add('union all')
           end;
           if cMovimento.ItemIndex in[0, 2] then begin
              sql.add('select Status');
              sql.add('      ,Ordem');
              sql.add('      ,Navio');
              sql.add('      ,Porto = '''' ');
              sql.add('      ,Armazem_Cod = 0');
              sql.add('      ,Armazem = '''' ');
              sql.add('      ,Data_Chegada');
              sql.add('      ,Data_Atracacao');
              sql.add('      ,Data_Descarga');
              sql.add('      ,Carga_Total        = 0');
              sql.add('      ,Descarregado       = 0');
              sql.add('      ,Falta_Descarregar  = 0');
              sql.add('      ,Quantidade_LT20    = 0');
              sql.add('      ,VariacaoLT         = 0');
              sql.add('      ,VariacaoPerc       = 0');
              sql.add('      ,Bloqueado          = 0');
              sql.add('      ,Endossado          = 0');
              sql.add('      ,Nacionalizado      = 0');
              sql.add('      ,Falta_Nacionalizar = 0');
              sql.add('      ,Laudo = '''' ');
              if cMovimento.ItemIndex = 2 then begin
                 sql.add('into #temp');
              end;
              sql.add('from Cybersoft_Cadastros.dbo.ControleNavios cn');
              sql.add('where Ordem not in(select distinct Navio from ControleNaviosBL)');
              if not DataLimpa(cDataIni.text) then begin
                 sql.add('and  (Data_Chegada  between :pDataIni and :pDataFim');
                 sql.add('or   Data_Atracacao between :pDataIni and :pDataFim');
                 sql.add('or   Data_Descarga  between :pDataIni and :pDataFim)');
              end;
              if cNavio.text <> '' then begin
                 sql.add('and Ordem = :pNavio');
                 parambyname('pNavio').Asinteger := tNavios.FieldByName('Ordem').AsInteger;
              end;
              if cStatus.ItemIndex > 0 then begin
                 sql.add('and cn.Status = :pStatus');
                 parambyname('pStatus').AsString := cStatus.Items[cStatus.ItemIndex];
              end;
           end;
           sql.add('update #temp set Descarregado = (select isnull(sum(Quantidade_RecebidaLT20), 0) from ControleNaviosLaudo cnl where cnl.Navio = #temp.Ordem and cnl.Laudo = #temp.Laudo)');
           sql.add('');
           sql.add('update #temp set Falta_Descarregar = Quantidade_LT20 -');
           sql.add('                                    (select isnull(sum(isnull(Quantidade_RecebidaLT20, 0)-isnull(Variacao_DesLT, 0)), 0) from ControleNaviosLaudo cnl where cnl.Navio = #temp.Ordem and cnl.Laudo = #temp.Laudo)');
           sql.add('');
           sql.add('update #Temp set Nacionalizado = isnull((select sum(Quantidade)');
           sql.add('                                        from NotasItensNavios nin');
           sql.add('                                        where nin.Saida_Entrada = 0');
           sql.add('                                        and nin.Navio = #temp.Ordem), 0)');
           sql.add('update #Temp set Falta_Nacionalizar = isnull(Carga_Total, 0) - isnull(Nacionalizado, 0) - isnull(Endossado, 0)');
           sql.add('select Status');
           sql.add('     ,Ordem');
           sql.add('     ,Navio');
           sql.add('     ,Porto');
           sql.add('     ,Armazem');
           sql.add('     ,Data_Chegada');
           sql.add('     ,Data_Atracacao');
           sql.add('     ,Data_Descarga');
           sql.add('     ,Carga_Total = sum(Carga_Total)');
           sql.add('     ,Descarregado = sum(Descarregado)');
           sql.add('     ,Falta_Descarregar = sum(Falta_Descarregar)');
           sql.add('     ,VariacaoLT = sum(VariacaoLT)');
           sql.add('     ,VariacaoPerc = sum(VariacaoPerc)');
           sql.add('     ,Bloqueado = sum(Bloqueado)');
           sql.add('     ,Endossado = sum(Endossado)');
           sql.add('     ,Nacionalizado = sum(Nacionalizado)');
           sql.add('     ,Falta_Nacionalizar = sum(Falta_Nacionalizar)');
           sql.add('from #temp');
           sql.add('group by Status, Ordem, Navio, Porto, Armazem, Data_Chegada, Data_Atracacao, Data_Descarga');
           sql.add('order by Status, Navio, Porto, Armazem');
           sql.add('drop table #temp');
           //sql.savetofile('c:\temp\Impressao_Controle_Navios2.sql');
           open;

           screen.Cursor := crHourGlass;

           if RecordCount <> 0 then begin
              if FileExists(tEmpresas.fieldbyname('Logo').AsString) then begin
                 iLogo.Picture.LoadFromFile(tEmpresas.fieldbyname('Logo').AsString);
              end;
              pRodGrpTot.Visible := cTotal.Checked;
              pCabGrpTot.Visible := cTotal.Checked;
              if cSaida.ItemIndex = 0 then begin
                 with rControle do begin
                      Print;
                      FreeOnRelease;
                      Reset;
                 end;
              end else begin
                   ExportaEXCEL;
              end;
           end else begin
              MessageDlg('Não há informações para o relatório solicitado!', mtInformation, [mbOk], 0);
           end;
          screen.Cursor := crDefault;
      end;
end;

// Envia informações para o excel.
procedure TImpressao_ControleNavios.ExportaEXCEL;
var
   mPlanilha, img: Variant;
   mLin,
   mCol: Integer;
   mFilial:string;
   mNavio: integer;
   mTotalCarga
  ,mTotalDesc
  ,mTotalFaltaDes
  ,mTotalVarLT
  ,mTotalVarPerc
  ,mTotalBlq
  ,mTotalEnd
  ,mTotalNac
  ,mTotalFaltaNac: real;
begin
       Screen.Cursor := crSQLWait;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;

       // Titulo.
       mFilial := iif(tEmpresas.fieldbyname('Numero_Filial').AsInteger = 0, ' - (MATRIZ)', ' - (FILIAL'+tEmpresas.fieldbyname('Numero_Filial').asstring+')');
       mPlanilha.Cells[1, 1].cells                    := tEmpresas.fieldbyname('Razao_Social').asstring;
       mPlanilha.Range['A1','P1'].Font.Size           := 20;
       mPlanilha.Range['A1','P1'].Font.Color          := clWhite;
       mPlanilha.Range['A1','P1'].Font.Bold           := true;
       mPlanilha.Range['A1','P1'].Mergecells          := True;
       mPlanilha.Cells[2, 1].cells                    := 'CONTROLE DE NAVIOS' + mFilial;;
       mPlanilha.Range['A2','P2'].Font.Size           := 16;
       mPlanilha.Range['A2','P2'].Font.Bold           := true;
       mPlanilha.Range['A2','P2'].Mergecells          := True;
       mPlanilha.Range['A1','P3'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','P3'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','P3'].RowHeight           := 30;
       mPlanilha.Range['A1','P3'].Interior.Color      := RGB(0, 140, 140);
       mPlanilha.Range['A1','P3'].Interior.Pattern    := 1;

       // Logo
       if FileExists(tEmpresas.FieldByName('Logo').AsString) then begin
          Img                            := mPlanilha.Worksheets[1].Pictures.Insert(tEmpresas.FieldByName('Logo').AsString);
          Img.ShapeRange.LockAspectRatio := false;
          Img.Left                       := 4;     // Posição horizontal da imagem
          Img.Top                        := 4;     // Posição vertical da imagem
          Img.Width                      := 100;   // Largura da imagem
          Img.Height                     := 54;    // Altura da imagem
       end;

       // Nomes dos campos
       mCol := 1;
       mLin := 3;
       mPlanilha.Cells[mLin, mCol].cells       := 'NAVIO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 25;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'PORTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 20;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ARMAZÉM';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ETA';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ETB';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ETS';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'CARGA TOTAL';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'DESCARREGADO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('FALTA DESCARREGAR', 10);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'VARIAÇÃO (LT)';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('VARIAÇÃO (%)', 10);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'BLOQUEADO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ENDOSSADO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'NACIONALIZADO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('FALTA NACIONALIZAR', 10);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'STATUS';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;

       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Interior.Color    := RGB(0, 102, 102);
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Interior.Pattern  := 1;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Font.Bold         := true;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Font.Color        := clAqua;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Borders.Color     := clSilver;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Font.Size         := 8;
       mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Font.Bold         := true;

       inc(mLin);

       with tControle do begin
            mCol   := 1;
            mNavio := fieldbyname('Ordem').asinteger;
            while not eof do begin
                  mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Font.Size         := 8;
                  mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].VerticalAlignment := 2;

                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Navio').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Porto').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Armazem').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Chegada').value;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Atracacao').value;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Descarga').value;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Carga_Total').AsFloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Descarregado').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Falta_Descarregar').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('VariacaoLT').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat   := '#.##0,000_);-#.##0,000)';
                  mPlanilha.Cells[mLin, mCol].Interior.Color := iif(fieldbyname('VariacaoLT').asfloat >= 0, clWhite, clRed);
                  mPlanilha.Cells[mLin, mCol].Font.Color     := iif(fieldbyname('VariacaoLT').asfloat >= 0, clBlack, clwhite);
                  mPlanilha.Range['J'+inttostr(mLin),'K'+inttostr(mLin)].Borders.Color := clSilver;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('VariacaoPerc').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat   := '#.##0,00_);-#.##0,00)';
                  mPlanilha.Cells[mLin, mCol].Interior.Color := iif(fieldbyname('VariacaoLT').asfloat >= 0, clWhite, clRed);
                  mPlanilha.Cells[mLin, mCol].Font.Color     := iif(fieldbyname('VariacaoLT').asfloat >= 0, clBlack, clwhite);
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Bloqueado').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Endossado').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Nacionalizado').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Falta_Nacionalizar').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Status').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;

                  inc(mLin);
                  mCol           := 1;
                  mTotalCarga    := mTotalCarga    + fieldbyname('Carga_Total').asfloat;
                  mTotalDesc     := mTotalDesc     + fieldbyname('Descarregado').asfloat;
                  mTotalFaltaDes := mTotalFaltaDes + fieldbyname('Falta_Descarregar').asfloat;
                  mTotalVarLT    := mTotalVarLT    + fieldbyname('VariacaoLT').asfloat;
                  mTotalVarPerc  := mTotalVarPerc  + fieldbyname('VariacaoPerc').asfloat;
                  mTotalBlq      := mTotalBlq      + fieldbyname('Bloqueado').asfloat;
                  mTotalEnd      := mTotalEnd      + fieldbyname('Endossado').asfloat;
                  mTotalNac      := mTotalNac      + fieldbyname('Nacionalizado').asfloat;
                  mTotalFaltaNac := mTotalFaltaNac + fieldbyname('Falta_Nacionalizar').asfloat;

                  next;

                  if (fieldbyname('Ordem'). asinteger <> mNavio) or (eof) then begin
                     if cTotal.Checked then begin
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Font.Size         := 8;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].VerticalAlignment := 2;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Interior.Color    := RGB(226,231, 236);
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Font.Bold         := true;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Font.Color        := clblack;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Interior.Pattern  := 1;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].VerticalAlignment := 2;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].RowHeight         := 17;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Borders.LineStyle := 1; //xlContinuous;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Borders.Weight    := 2; //xlThin;
                        mPlanilha.Range['E'+inttostr(mLin),'P'+inttostr(mLin)].Borders.Color     := clSilver;

                        mCol := 5;
                        mPlanilha.Cells[mLin, mCol].cells := 'TOTAL DO NAVIO';
                        mPlanilha.Range['E'+inttostr(mLin),'F'+inttostr(mLin)].Mergecells          := true;
                        mPlanilha.Range['E'+inttostr(mLin),'F'+inttostr(mLin)].HorizontalAlignment := 3;

                        mCol := 7;
                        mPlanilha.Cells[mLin, mCol].cells := mTotalCarga;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalDesc;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalFaltaDes;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalVarLT;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalVarPerc;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalBlq;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalEnd;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalNac;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                        inc(mCol);
                        mPlanilha.Cells[mLin, mCol].cells := mTotalFaltaNac;
                        mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';

                        inc(mLin);
                        mCol           := 1;
                        mNavio         := fieldbyname('Ordem').asinteger;
                        mTotalCarga    := 0;
                        mTotalDesc     := 0;
                        mTotalFaltaDes := 0;
                        mTotalVarLT    := 0;
                        mTotalVarPerc  := 0;
                        mTotalBlq      := 0;
                        mTotalEnd      := 0;
                        mTotalNac      := 0;
                        mTotalFaltaNac := 0;
                     end;
                  end;
            end;
       end;

       mPlanilha.Visible := true;

       // Congela as linhas do cabeçalho (Obs: só funcionou depois do visible = true).
       mPlanilha.Rows[4].Select;
       mPlanilha.ActiveWindow.FreezePanes := True;
       Screen.Cursor := crDefault;
end;

procedure TImpressao_ControleNavios.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TImpressao_ControleNavios.cNavioChange(Sender: TObject);
begin
    cStatus.Enabled := cNavio.Text = '';
end;

procedure TImpressao_ControleNavios.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Navio'    , iif(cNavio.KeyValue > 0, cNavio.KeyValue, -1));
      aINI.WriteString ('IMPRESSAO_CONTROLE_NAVIOS', 'DataIni'  , cDataIni.text);
      aINI.WriteString ('IMPRESSAO_CONTROLE_NAVIOS', 'DataFim'  , cDataFim.text);
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Status'   , cStatus.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Movimento', cMovimento.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Saida'    , cSaida.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_CONTROLE_NAVIOS', 'Total'    , cTotal.checked);
      aINI.Free;

      Impressao_ControleNavios.Release;
      Impressao_ControleNavios := nil;
end;

procedure TImpressao_ControleNavios.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ControleNavios.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
     with tNavios do begin
          sql.clear;
          sql.add('select Ordem, Navio, Status from ControleNavios order by Navio');
          open;
     end;

     // Carregando as ultimas opções utilizadas no relatório como default.
     aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cNavio.KeyValue      := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Navio', -1);
     cDataIni.Text        := aINI.ReadString ('IMPRESSAO_CONTROLE_NAVIOS', 'DataIni', '');
     cDataFim.Text        := aINI.ReadString ('IMPRESSAO_CONTROLE_NAVIOS', 'DataFim', '');
     cStatus.ItemIndex    := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Status', 0);
     cMovimento.ItemIndex := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Movimento', 0);
     cSaida.ItemIndex     := aINI.ReadInteger('IMPRESSAO_CONTROLE_NAVIOS', 'Saida', 0);
     cTotal.checked       := aINI.ReadBool   ('IMPRESSAO_CONTROLE_NAVIOS', 'Total', true);
     aINI.Free;
end;


end.
