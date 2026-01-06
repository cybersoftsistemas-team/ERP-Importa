unit frmImpressao_ControleNaviosLaudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.UITypes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppCtrls, ppVar, ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, Data.DB, MemDS, DBAccess, MSAccess, Vcl.StdCtrls,
  Vcl.ExtCtrls, RxLookup, RxCtrls, ComObj, system.Maskutils;

type
  TImpressao_ControleNaviosLaudo = class(TForm)
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
    tNavios: TMSQuery;
    tNaviosOrdem: TIntegerField;
    tNaviosNavio: TStringField;
    tNaviosStatus: TStringField;
    dstNavios: TDataSource;
    tLaudo: TMSQuery;
    rLaudo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
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
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pBL: TppDBPipeline;
    dstLaudo: TDataSource;
    pEmpresas: TppDBPipeline;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ControleNaviosLaudo: TImpressao_ControleNaviosLaudo;

implementation

{$R *.dfm}

uses frmMenu_Principal, Funcoes;

procedure TImpressao_ControleNaviosLaudo.bImprimirClick(Sender: TObject);
begin
      screen.Cursor := crSQLWait;
      with tEmpresas do begin
           sql.clear;
           sql.add('select Numero_Filial, Razao_Social, Logo from Empresas where Codigo = :pCodigo');
           parambyname('pCodigo').asinteger := Menu_Principal.mEmpresa;
           open;
      end;
      with tLaudo do begin
           sql.clear;
           sql.add('select Navio = (select cn.Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnl.Navio)');
           sql.add('      ,cnb.BL');
           sql.add('      ,cnl.Laudo');
           sql.add('      ,Porto = cnb.Porto');
           sql.add('      ,Armazem = (select frn.Nome from Fornecedores frn where frn.Codigo = cnb.Armazem)');
           sql.add('      ,Nota = (select nin.Nota from NotasItensNavios nin where nin.Navio = cnl.Navio and nin.Saida_Entrada = 0 and nin.DI = cnb.DI)');
           sql.add('      ,DI = (select max(pd.Numero_Declaracao) from ProcessosDocumentos pd where pd.Navio_Ordem = cnl.Navio and pd.Numero_BL = cnb.BL)');
           sql.add('      ,cnl.Data_Atracacao');
           sql.add('      ,cnl.Data_Operacao');
           sql.add('      ,cnl.Quantidade_M320');
           sql.add('      ,cnl.Quantidade_LT20');
           sql.add('      ,cnl.Quantidade_RecebidaM320');
           sql.add('      ,cnl.Quantidade_RecebidaLT20');
           sql.add('      ,cnl.Variacao_DesLT');
           sql.add('      ,cnl.Variacao_DesPerc');
           sql.add('      ,Obs = cnl.Observacao');
           sql.add('      ,Status = (select cn.Status from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnl.Navio)');
           sql.add('from ControleNaviosLaudo cnl');
           sql.add('inner Join ControleNaviosBL cnb on cnb.Navio = cnl.Navio');
           sql.add('where cnl.Registro is not null');

           if cNavio.text <> '' then begin
              sql.add('and cnl.Navio = :pNavio');
              parambyname('pNavio').Asinteger := tNavios.FieldByName('Ordem').AsInteger;
           end;
           if cStatus.ItemIndex > 0 then begin
              sql.add('and (select Status from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnl.Navio) = :pStatus');
              parambyname('pStatus').AsString := cStatus.Items[cStatus.ItemIndex];
           end;
           sql.add('order by Navio, Laudo');
           //sql.SaveToFile('c:\temp\Impressao_Historico_Laudo.sql');
           open;

           screen.Cursor := crHourGlass;

           if RecordCount <> 0 then begin
              if FileExists(tEmpresas.fieldbyname('Logo').AsString) then begin
                 iLogo.Picture.LoadFromFile(tEmpresas.fieldbyname('Logo').AsString);
              end;
              if cSaida.ItemIndex = 0 then begin
                 with rLaudo do begin
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

procedure TImpressao_ControleNaviosLaudo.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TImpressao_ControleNaviosLaudo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Impressao_ControleNaviosLaudo.Release;
      Impressao_ControleNaviosLaudo := nil;
end;

procedure TImpressao_ControleNaviosLaudo.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ControleNaviosLaudo.FormShow(Sender: TObject);
begin
     with tNavios do begin
          sql.clear;
          sql.add('select Ordem, Navio, Status from ControleNavios order by Navio');
          open;
     end;
end;

// Envia informações para o excel.
procedure TImpressao_ControleNaviosLaudo.ExportaEXCEL;
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
       mPlanilha.Range['A1','P1'].Font.Size           := 20;
       mPlanilha.Range['A1','P1'].Font.Color          := clWhite;
       mPlanilha.Range['A1','P1'].Font.Bold           := true;
       mPlanilha.Range['A1','P1'].Mergecells          := True;
       mPlanilha.Cells[2, 1].cells                    := 'HISTÓRICO DE LAUDOS' + mFilial;;
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
       mPlanilha.Cells[mLin, mCol].cells       := 'LAUDO Nº';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'BL Nº';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 6;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'PORTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 20;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ARMAZÉM';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'NOTA FISCAL';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'Nº DI';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('DATA ATRACAÇÃO', 10);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('DATA OPERAÇÃO', 10);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE DECLARADA (M³)', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE DECLARADA (LT)', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE RECEBIDA (M³)', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('QTDE RECEBIDA (LT)', 14);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('VAR (LT)', 12);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 12;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := WrapText('VAR (%)', 8);
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 8;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'OBS';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;

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
       mCol := 1;

       with tLaudo do begin
            while not eof do begin
                  mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].Font.Size         := 8;
                  mPlanilha.Range['A'+inttostr(mLin),'P'+inttostr(mLin)].VerticalAlignment := 2;

                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Navio').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Laudo').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('BL').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Porto').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Armazem').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Nota').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := FormatMaskText('##/#######-#;0', fieldbyname('DI').asstring);
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Atracacao').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Operacao').asstring;
                  mPlanilha.Cells[mLin,mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Quantidade_M320').AsFloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Quantidade_LT20').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Quantidade_RecebidaM320').AsFloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Quantidade_RecebidaLT20').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Variacao_DesLT').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,000_);-#.##0,000)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Variacao_DesPerc').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00)';
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
