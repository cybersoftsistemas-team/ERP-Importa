unit frmImpressao_ControleNaviosBL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ComObj, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, system.UITypes,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppVar, ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, Data.DB,
  MemDS, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, RxCtrls;

type
  TImpressao_ControleNaviosBL = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cNavio: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cStatus: TRadioGroup;
    cSaida: TRadioGroup;
    cMovimento: TRadioGroup;
    tNavios: TMSQuery;
    tNaviosOrdem: TIntegerField;
    tNaviosNavio: TStringField;
    tNaviosStatus: TStringField;
    dstNavios: TDataSource;
    tBL: TMSQuery;
    rBL: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText17: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pBL: TppDBPipeline;
    dstBL: TDataSource;
    pEmpresas: TppDBPipeline;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    cSituacao: TRadioGroup;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ControleNaviosBL: TImpressao_ControleNaviosBL;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, Funcoes;

procedure TImpressao_ControleNaviosBL.bImprimirClick(Sender: TObject);
begin
      screen.Cursor := crSQLWait;
      with tEmpresas do begin
           sql.clear;
           sql.add('select Numero_Filial, Razao_Social, Logo from Empresas where Codigo = :pCodigo');
           parambyname('pCodigo').asinteger := Menu_Principal.mEmpresa;
           open;
      end;
      with tBL do begin
           sql.clear;
           sql.add('select BL');
           sql.add('      ,Navio              = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
           sql.add('      ,Armazem            = (select Nome from Fornecedores frn where frn.Codigo = cnb.Armazem)');
           sql.add('      ,Data_Bl            = format(Data_Emissao, ''d'', ''pt-br'')');
           sql.add('      ,Data_Carregamento  = format((select Data_Operacao from ControleNaviosLaudo cnl where cnl.Navio = cnb.Navio and cnl.Laudo = cnb.Laudo), ''d'', ''pr-br'')');
           sql.add('      ,Ton_Vac');
           sql.add('      ,Ton_Air');
           sql.add('      ,Qtde_M315          = Quantidade_M315');
           sql.add('      ,Qtde_M320          = Quantidade_M320');
           sql.add('      ,Quantidade_LT15');
           sql.add('      ,Quantidade_LT20');
           sql.add('      ,Obs                = Observacao');
           sql.add('      ,Status             = (select Status from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
           sql.add('from ControleNaviosBL cnb');
           sql.add('where Registro is not null');
           if cNavio.text <> '' then begin
              sql.add('and Navio = :pNavio');
              parambyname('pNavio').Asinteger := tNavios.FieldByName('Ordem').AsInteger;
           end;
           if cStatus.ItemIndex > 0 then begin
              sql.add('and (select Status from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio) = :pStatus');
              parambyname('pStatus').AsString := cStatus.Items[cStatus.ItemIndex];
           end;
           if cMovimento.ItemIndex = 1 then begin
              sql.add('and isnull(Laudo, 0) <> 0')
           end;
           if cMovimento.ItemIndex = 2 then begin
              sql.add('and isnull(Laudo, 0) = 0')
           end;
           if cSituacao.ItemIndex = 1 then begin
              sql.add('and isnull(Endossado, 0) = 1')
           end;
           if cSituacao.ItemIndex = 2 then begin
              sql.add('and isnull(Bloqueado, 0) = 1')
           end;
           sql.add('order by Navio, BL');
           //sql.SaveToFile('c:\temp\Impressao_Historico_BL.sql');
           open;

           screen.Cursor := crHourGlass;

           if RecordCount <> 0 then begin
              if FileExists(tEmpresas.fieldbyname('Logo').AsString) then begin
                 iLogo.Picture.LoadFromFile(tEmpresas.fieldbyname('Logo').AsString);
              end;
              if cSaida.ItemIndex = 0 then begin
                 with rBL do begin
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
      end;

      screen.Cursor := crDefault;
end;

procedure TImpressao_ControleNaviosBL.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ControleNaviosBL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Impressao_ControleNaviosBL.Release;
      Impressao_ControleNaviosBL := nil;
end;

procedure TImpressao_ControleNaviosBL.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ControleNaviosBL.FormShow(Sender: TObject);
begin
     with tNavios do begin
          sql.clear;
          sql.add('select Ordem, Navio, Status from ControleNavios order by Navio');
          open;
     end;
end;

// Envia informações para o excel.
procedure TImpressao_ControleNaviosBL.ExportaEXCEL;
var
   mPlanilha, img: Variant;
   mLin,
   mCol: Integer;
   mFilial:string;
begin
       Screen.Cursor := crSQLWait;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;

       // Titulo.
       mFilial := iif(tEmpresas.fieldbyname('Numero_Filial').AsInteger = 0, ' - (MATRIZ)', ' - (FILIAL'+tEmpresas.fieldbyname('Numero_Filial').asstring+')');
       mPlanilha.Cells[1, 1].cells                    := tEmpresas.fieldbyname('Razao_Social').asstring;
       mPlanilha.Range['A1','L1'].Font.Size           := 20;
       mPlanilha.Range['A1','L1'].Font.Color          := clWhite;
       mPlanilha.Range['A1','L1'].Font.Bold           := true;
       mPlanilha.Range['A1','L1'].Mergecells          := True;
       mPlanilha.Cells[2, 1].cells                    := 'HISTÓRICO DE BLs' + mFilial;;
       mPlanilha.Range['A2','L2'].Font.Size           := 16;
       mPlanilha.Range['A2','L2'].Font.Bold           := true;
       mPlanilha.Range['A2','L2'].Mergecells          := True;
       mPlanilha.Range['A1','L3'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','L3'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','L3'].RowHeight           := 30;
       mPlanilha.Range['A1','L3'].Interior.Color      := RGB(0, 140, 140);
       mPlanilha.Range['A1','L3'].Interior.Pattern    := 1;

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
       mPlanilha.Cells[mLin, mCol].cells       := 'BL Nº';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'DATA BL';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ARMAZÉM';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 45;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('DATA CARREGAMENTO', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'TON VAC';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'TON AIR';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE M³ (15°)', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE M³ (20°)', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE LT', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'STATUS';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'OBS';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;

       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Interior.Color    := RGB(0, 102, 102);
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Interior.Pattern  := 1;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Font.Bold         := true;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Font.Color        := clAqua;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Borders.Color     := clSilver;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Font.Size         := 8;
       mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Font.Bold         := true;

       inc(mLin);
       mCol := 1;

       with tBL do begin
            while not eof do begin
                  mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].Font.Size         := 8;
                  mPlanilha.Range['A'+inttostr(mLin),'L'+inttostr(mLin)].VerticalAlignment := 2;

                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Navio').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := ' '+fieldbyname('BL').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 2;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_BL').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Armazem').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Carregamento').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Ton_Vac').AsFloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Ton_Air').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Qtde_M315').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Qtde_M320').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Quantidade_LT20').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Status').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Obs').asstring;

                  inc(mLin);
                  mCol := 1;

                  next;
            end;
       end;

       mPlanilha.Visible := true;

       // Congela as linhas do cabeçalho (Obs: só funcionou depois do visible = true).
       mPlanilha.Rows[4].Select;
       mPlanilha.ActiveWindow.FreezePanes := True;

       Screen.Cursor := crDefault;
end;


end.
