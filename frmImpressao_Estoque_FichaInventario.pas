unit frmImpressao_Estoque_FichaInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, ppDBPipe, ppParameter, ppBands, ppClass, ppVar, ppCtrls,
  ppReport, DB, DBAccess, MSAccess, RxLookup, Mask, Vcl.StdCtrls, Buttons, IniFiles,
   ComObj, Funcoes, RxCurrEdit, RxToolEdit, ppDB, ppDesignLayer, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_Estoque_FichaInventario = class(TForm)
    bLimparForma: TSpeedButton;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    tSaldo: TMSQuery;
    rFicha: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    pQtde_Entrada: TppDBText;
    ppLine9: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppParameterList1: TppParameterList;
    Ded_Pagina: TppParameter;
    pEmpresas: TppDBPipeline;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppLine7: TppLine;
    pTotal_Entrada: TppDBText;
    ppLabel5: TppLabel;
    ppLine8: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel8: TppLabel;
    ppLine13: TppLine;
    ppLabel9: TppLabel;
    ppLine10: TppLine;
    ppLine16: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    pQtde_Saida: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel14: TppLabel;
    pQtde_Inicial: TppVariable;
    pTotal_Inicial: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppLine23: TppLine;
    iLogo: TppImage;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel15: TppLabel;
    ppLine27: TppLine;
    ppLine6: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    CabecalhoGProduto: TppGroupHeaderBand;
    RodapeGProduto: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppDBText2: TppDBText;
    ppLine33: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel17: TppLabel;
    ppDBText5: TppDBText;
    ppLine37: TppLine;
    ppDBText6: TppDBText;
    ppLabel18: TppLabel;
    ppLine38: TppLine;
    ppLabel19: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppShape2: TppShape;
    ppDBText9: TppDBText;
    ppShape3: TppShape;
    pUnitario_Inicial: TppVariable;
    lPeriodo: TppLabel;
    pUnitario_Saldo: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    cCodigo: TCurrencyEdit;
    pEstoque: TppDBPipeline;
    cExcel: TCheckBox;
    ppSystemVariable6: TppSystemVariable;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLimparFormaClick(Sender: TObject);
    procedure CabecalhoGProdutoBeforePrint(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure ExportaEXCEL;
    procedure SaldoInicial;
  private
    { Private declarations }
  public
    { Public declarations }
    mUnitarioSaldo : Double;
    mUnitarioSaida : Double;
  end;

var
  Impressao_Estoque_FichaInventario: TImpressao_Estoque_FichaInventario;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_Estoque_FichaInventario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Estoque_FichaInventario.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ( 'IMPRESSAO_Ficha_Inventario','DataIni', cDataIni.Date);
      aINI.WriteDate   ( 'IMPRESSAO_Ficha_Inventario','DataFim', cDataFim.Date);
      aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Codigo' , cCodigo.AsInteger);
      If cProduto.KeyValue <> null then
         aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Produto', cProduto.KeyValue)
      else
         aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Produto', 0);
      aINI.Free;

      Impressao_Estoque_FichaInventario.Release;
      Impressao_Estoque_FichaInventario := nil;
end;

procedure TImpressao_Estoque_FichaInventario.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Estoque_FichaInventario.bImprimirClick(Sender: TObject);
begin
      with Dados do begin
           Screen.Cursor := crSQLWait;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           FichaInventario.SQL.Clear;
           FichaInventario.SQL.Add('select *');
           FichaInventario.SQL.Add('from   FichaInventario');
           FichaInventario.SQL.Add('where  Data between :pDataIni and :pDataFim');
           if cProduto.DisplayValue <> '' then begin
              FichaInventario.SQL.Add('and    Codigo = :pCodigo');
              FichaInventario.ParamByName('pCodigo').AsInteger := cCodigo.AsInteger;
           end;
           FichaInventario.SQL.Add('order by Codigo, Data, Registro');
           FichaInventario.ParamByName('pDataIni').AsDate := cDataIni.Date;
           FichaInventario.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //FichaInventario.SQL.SaveToFile('c:\temp\Ficha_Inventario.SQL');
           FichaInventario.Open;
      end;

      Screen.Cursor := crDefault;

      lPeriodo.Caption := 'Período '+cDataIni.Text + ' a '+cDataFim.Text;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;

      //Try
      //   iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      //Except
      //   iLogo.Clear;
      //End;
      
      if cExcel.Checked = false then begin
         rFicha.Print;
         rFicha.Reset;
      end else begin
         ExportaEXCEL;
      end;
end;

procedure TImpressao_Estoque_FichaInventario.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date     := aINI.ReadDate   ('IMPRESSAO_Ficha_Inventario','DataIni', Date);
      cDataFim.Date     := aINI.ReadDate   ('IMPRESSAO_Ficha_Inventario','DataFim', Date);
      cProduto.KeyValue := aINI.ReadString ('IMPRESSAO_Ficha_Inventario','Produto', '');
      cCodigo.Value     := aINI.ReadInteger('IMPRESSAO_Ficha_Inventario','Codigo' , 0);
      aINI.Free;

      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQl.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0 ORDER BY Descricao_Reduzida');
           Produtos.Open;
      End;
      
      Screen.Cursor := crDefault;
end;

procedure TImpressao_Estoque_FichaInventario.bLimparFormaClick(Sender: TObject);
begin
      cProduto.ClearValue;
end;

procedure TImpressao_Estoque_FichaInventario.CabecalhoGProdutoBeforePrint(Sender: TObject);
begin
     SaldoInicial;
end;

procedure TImpressao_Estoque_FichaInventario.cCodigoExit(Sender: TObject);
begin
      If Trim(cCodigo.Text) <> '' then begin
         Try
            If Dados.Produtos.Locate('Codigo', StrtoInt(cCodigo.Text), [loCaseInsensitive]) = true then
               cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger
            else
               cProduto.KeyValue := 0;
         Except
            ShowMessage('Código do produto inválido !');
         End;
      end else begin
         cProduto.ClearValue;
      End;
end;

procedure TImpressao_Estoque_FichaInventario.cProdutoChange(Sender: TObject);
begin
     cCodigo.Clear;
     If cProduto.DisplayValue <> '' then cCodigo.Text := Dados.ProdutosCodigo.AsString;
end;

// Envia informações para o excel.
procedure TImpressao_Estoque_FichaInventario.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha,mCodigo: Integer;
begin
       With dmFiscal, Dados do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := FichaInventario.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible := false;

            mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
            mPlanilha.Range['A1','A1'].Font.Size  := 14;
            mPlanilha.Range['A1','A1'].Font.Bold  := true;
            mPlanilha.Range['A1','N1'].Mergecells := True;
            mPlanilha.Range['A1','N1'].HorizontalAlignment := 3;

            mPlanilha.Cells[2,01] := 'Ficha de Inventario - Período de '+cDataIni.Text + ' a '+cDataFim.Text;
            //mPlanilha.Range['A2','A2'].Font.Size  := 10;
            mPlanilha.Range['A2','N2'].Mergecells := True;
            mPlanilha.Range['A2','N2'].HorizontalAlignment := 4;

            mPlanilha.Range['A3','N4'].Interior.Color    := RGB(255, 255, 140);
            mPlanilha.Range['A3','N4'].Interior.Pattern  := 1;
            mPlanilha.Range['A3','N4'].Font.Bold         := true;
            mPlanilha.Range['A3','N4'].Font.Color        := clBlack;
            mPlanilha.Range['A3','N4'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A3','N4'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A3','N4'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Cells[3,01] := 'DATA';
            mPlanilha.Cells[3,02] := 'NOTA';
            mPlanilha.Cells[3,03] := 'CFOP';
            mPlanilha.Cells[3,04] := 'HISTÓRICO';
            mPlanilha.Cells[3,05] := 'DESTINATÁRIO';
            mPlanilha.Cells[3,06] := 'ENTRADAS';
            mPlanilha.Cells[3,09] := 'SAÍDAS';
            mPlanilha.Cells[3,12] := 'SALDO';
            mPlanilha.Cells[4,06] := 'QTDE';
            mPlanilha.Cells[4,07] := 'UNITÁRIO';
            mPlanilha.Cells[4,08] := 'TOTAL';
            mPlanilha.Cells[4,09] := 'QTDE';
            mPlanilha.Cells[4,10] := 'UNITÁRIO';
            mPlanilha.Cells[4,11] := 'TOTAL';
            mPlanilha.Cells[4,12] := 'QTDE';
            mPlanilha.Cells[4,13] := 'UNITÁRIO';
            mPlanilha.Cells[4,14] := 'TOTAL';

            mPlanilha.Range['A3','A4'].Mergecells          := True;
            mPlanilha.Range['B3','B4'].Mergecells          := True;
            mPlanilha.Range['C3','C4'].Mergecells          := True;
            mPlanilha.Range['D3','D4'].Mergecells          := True;
            mPlanilha.Range['E3','E4'].Mergecells          := True;
            mPlanilha.Range['F3','H3'].Mergecells          := True;
            mPlanilha.Range['I3','K3'].Mergecells          := True;
            mPlanilha.Range['L3','N3'].Mergecells          := True;
            mPlanilha.Range['A3','N4'].HorizontalAlignment := 3;
            mPlanilha.Range['A3','N4'].VerticalAlignment   := 2;
            mPlanilha.Range['A3','N4'].Font.Size           := 10;

            mPlanilha.Range['A3','N4'].Font.Size           := 10;

            mLinha  := 5;
            mCodigo := 0;

            While (not FichaInventario.Eof) and (not Funcoes.Cancelado) do  Begin
                  // Quebra do item.
                  if FichaInventarioCodigo.AsInteger <> mCodigo then begin
                     If mCodigo > 0 then Inc(mLinha);
                     mCodigo := FichaInventarioCodigo.AsInteger;

                     // Descrição da mercadoria.
                     mPlanilha.Cells[mLinha,01] := 'PRODUTO: '+ FichaInventario.FieldByName('Codigo').AsString+' - '+FichaInventario.FieldByName('Descricao').AsString;
                     mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Mergecells     := True;
                     mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := clMoneyGreen;
                     mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].WrapText       := true;
                     mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Bold      := true;

                     Inc(mLinha);

                     // Saldo inicial.
                     SaldoInicial;
                     mPlanilha.Cells[mLinha,06]              := 'SALDO INICIAL';
                     mPlanilha.Range['F'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Mergecells := True;
                     mPlanilha.Cells[mLinha,12]              := tSaldo.FieldByName('Qtde_Saldo').AsFloat;
                     mPlanilha.Cells[mLinha,13]              := tSaldo.FieldByName('Unitario_Saldo').AsCurrency;
                     mPlanilha.Cells[mLinha,14]              := tSaldo.FieldByName('Total_Saldo').AsCurrency;
                     mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,000';
                     mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';
                     mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00';
                     mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Bold  := true;
                     Inc(mLinha);
                  end;

                  mPlanilha.Cells[mLinha,01] := FichaInventario.FieldByName('Data').AsDateTime;
                  mPlanilha.Cells[mLinha,02] := FichaInventario.FieldByName('Nota').AsInteger;
                  mPlanilha.Cells[mLinha,03] := FichaInventario.FieldByName('CFOP').AsString;
                  mPlanilha.Cells[mLinha,04] := FichaInventario.FieldByName('Historico').AsString;
                  mPlanilha.Cells[mLinha,05] := FichaInventario.FieldByName('Destinatario_Nome').AsString;
                  mPlanilha.Cells[mLinha,06] := FichaInventario.FieldByName('Qtde_Entrada').AsFloat;
                  mPlanilha.Cells[mLinha,07] := FichaInventario.FieldByName('Unitario_Entrada').AsCurrency;
                  mPlanilha.Cells[mLinha,08] := FichaInventario.FieldByName('Total_Entrada').AsCurrency;
                  mPlanilha.Cells[mLinha,09] := FichaInventario.FieldByName('Qtde_Saida').AsFloat;
                  mPlanilha.Cells[mLinha,10] := FichaInventario.FieldByName('Unitario_Saida').AsCurrency;
                  mPlanilha.Cells[mLinha,11] := FichaInventario.FieldByName('Total_Saida').AsCurrency;
                  mPlanilha.Cells[mLinha,12] := FichaInventario.FieldByName('Qtde_Saldo').AsFloat;
                  mPlanilha.Cells[mLinha,13] := FichaInventario.FieldByName('Unitario_Saldo').AsCurrency;
                  mPlanilha.Cells[mLinha,14] := FichaInventario.FieldByName('Total_Saldo').AsCurrency;

                  mPlanilha.Cells[mLinha,02].NumberFormat := '000000000';
                  mPlanilha.Cells[mLinha,03].NumberFormat := '#.###';
                  mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,000';
                  mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,000';
                  mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,000';
                  mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00';

                  mPlanilha.Range['A'+InttoStr(mLinha),'C'+InttoStr(mLinha)].HorizontalAlignment := 3;

                  mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.LineStyle := 2; //xlContinuous;
                  mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                  mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                  FichaInventario.Next;

                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            End;

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
//               KillTask('Excel.exe');    // Microsoft Excel
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            End;
            mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;
       End;
       Janela_Processamento.Close;
       mPlanilha.Visible := true;

       mPlanilha.Range['A4','N'+InttoStr(mLinha)].Font.Size := 10;
end;

procedure TImpressao_Estoque_FichaInventario.SaldoInicial;
begin
      // Pegando o saldo inicial.
      With Dados do begin
           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT  Qtde_Saldo');
           tSaldo.SQL.Add('       ,Unitario_Saldo');
           tSaldo.SQL.Add('       ,Total_Saldo');
           tSaldo.SQL.Add('FROM   FichaInventario');
           tSaldo.SQL.Add('WHERE  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo AND Data < :pData)');
           tSaldo.ParamByName('pCodigo').AsInteger := FichaInventario.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pData').AsDate      := cDataIni.Date;
           tSaldo.Open;

           pQtde_Inicial.Value     := tSaldo.FieldByName('Qtde_Saldo').Value;
           pUnitario_Inicial.Value := tSaldo.FieldByName('Unitario_Saldo').Value;
           pTotal_Inicial.Value    := tSaldo.FieldByName('Total_Saldo').Value;
      End;
end;

end.
