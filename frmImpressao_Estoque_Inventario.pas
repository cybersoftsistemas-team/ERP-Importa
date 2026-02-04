Unit frmImpressao_Estoque_Inventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Mask,
  Vcl.ExtCtrls, RXCtrls, Buttons, INIFiles, Funcoes, DBCtrls, ppCtrls, ppPrnabl, ppBands,
  ppReport, ppDBPipe, ppMemo, ppVar, ComObj,
  RxToolEdit, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_Estoque_Inventario = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cData: TDateEdit;
    StaticText2: TStaticText;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    StaticText6: TStaticText;
    tNotasItens: TMSQuery;
    tNotasTerceirosItens: TMSQuery;
    rInventario: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppLabel32: TppLabel;
    pEmpresa: TppDBPipeline;
    pNCM: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    pInventario: TppDBPipeline;
    pUM: TppDBText;
    pQTDE: TppDBText;
    lDescricao: TppMemo;
    ppLine34: TppLine;
    ppLabel36: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLine17: TppLine;
    ppLabel11: TppLabel;
    ppLine18: TppLine;
    pCodigo: TppDBText;
    tTotais: TMSQuery;
    cProduto: TRxDBLookupCombo;
    cCodigo: TMaskEdit;
    cExcel: TCheckBox;
    cNegativo: TCheckBox;
    cOrdem: TRadioGroup;
    tProcessos: TMSQuery;
    cDataSaida: TDateEdit;
    StaticText1: TStaticText;
    cPositivo: TCheckBox;
    ppDBText1: TppDBText;
    lTitulo: TppLabel;
    ppLine2: TppLine;
    ppLine16: TppLine;
    ppLine1: TppLine;
    lPeriodo: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBCalc2: TppDBCalc;
    ppSystemVariable1: TppSystemVariable;
    ppLine15: TppLine;
    cPedidos: TCheckBox;
    cZebrado: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    cIPI: TRadioGroup;
    StaticText3: TStaticText;
    cProcesso: TRxDBLookupCombo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cNegativoClick(Sender: TObject);
    procedure cPositivoClick(Sender: TObject);
    procedure cDataExit(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha    : Integer;
    mPagina   : Integer;
    Arquivo   : TextFile;
    mNomeArq  : String;
  end;

var
  Impressao_Estoque_Inventario: TImpressao_Estoque_Inventario;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento,frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Estoque_Inventario.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Estoque_Inventario.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           with Produtos do begin
                SQL.Clear;
                SQL.Add('select * from Produtos where Codigo in(select distinct Codigo from FichaInventario) order by Descricao_Reduzida');
                Open;
           end;
           with ProcessosDOC do begin
                SQL.Clear;
//                SQL.Add('select * from ProcessosDocumentos where Processo in(select distinct Processo from FichaInventario where isnull(Processo, '''') <> '''') order by Processo');
                SQL.Add('select * from ProcessosDocumentos order by Processo');
                Open;
           end;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cData.Date        := aINI.ReadDate   ('IMPRESSAO_InventarioGerencial','Data'     , Date);
      cDataSaida.Date   := aINI.ReadDate   ('IMPRESSAO_InventarioGerencial','DataSaida', Date);
      cNCM.Text         := aINI.ReadString ('IMPRESSAO_InventarioGerencial','NCM'      , '');
      cOrdem.ItemIndex  := aINI.ReadInteger('IMPRESSAO_InventarioGerencial','Ordem'    , 0 );
      cIPI.ItemIndex    := aINI.ReadInteger('IMPRESSAO_InventarioGerencial','IPI'      , 2 );
      cExcel.Checked    := aINI.ReadBool   ('IMPRESSAO_InventarioGerencial','Excel'    , false );
      cNegativo.Checked := aINI.ReadBool   ('IMPRESSAO_InventarioGerencial','Negativo' , false );
      cPositivo.Checked := aINI.ReadBool   ('IMPRESSAO_InventarioGerencial','Positivo' , false );
      cPedidos.Checked  := aINI.ReadBool   ('IMPRESSAO_InventarioGerencial','Pedidos'  , false );
      cZebrado.Checked  := aINI.ReadBool   ('IMPRESSAO_InventarioGerencial','Zebrado'  , false );
      cCodigo.Text      := aINI.ReadString ('IMPRESSAO_InventarioGerencial','Codigo'   , '' );
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Estoque_Inventario.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ( 'IMPRESSAO_InventarioGerencial','Data'     , cData.Date );
      aINI.WriteDate   ( 'IMPRESSAO_InventarioGerencial','DataSaida', cDataSaida.Date );
      aINI.WriteString ( 'IMPRESSAO_InventarioGerencial','NCM'      , cNCM.Text );
      aINI.WriteInteger( 'IMPRESSAO_InventarioGerencial','Ordem'    , cOrdem.ItemIndex );
      aINI.WriteInteger( 'IMPRESSAO_InventarioGerencial','IPI'      , cIPI.ItemIndex );
      aINI.WriteBool   ( 'IMPRESSAO_InventarioGerencial','Excel'    , cExcel.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_InventarioGerencial','Negativo' , cNegativo.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_InventarioGerencial','Positivo' , cPositivo.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_InventarioGerencial','Pedidos'  , cPedidos.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_InventarioGerencial','Zebrado'  , cZebrado.Checked);
      aINI.WriteString ( 'IMPRESSAO_InventarioGerencial','Codigo'   , cCodigo.Text);
      aINI.Free;

      Impressao_Estoque_Inventario.Release;
      Impressao_Estoque_Inventario := nil;
end;

procedure TImpressao_Estoque_Inventario.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      if DataLimpa(cDataSaida.Text) then cDataSaida.Date := cData.Date;

      with dmFiscal, Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           Inventario.SQL.Clear;
           Inventario.SQL.Add('SELECT  Codigo');
           Inventario.SQL.Add('       ,null AS Codigo_Fabricante');
           Inventario.SQL.Add('       ,NCM');
           Inventario.SQL.Add('       ,LTRIM(RTRIM(Descricao)) AS Descricao');
           Inventario.SQL.Add('       ,Unidade = UM');
           if not cPedidos.Checked then begin
              Inventario.SQL.Add('       ,Quantidade     = Qtde_Saldo');
           end else begin
              Inventario.SQL.Add('       ,Quantidade     = Qtde_Saldo - ISNULL((SELECT SUM(Quantidade) FROM PedidosItens WHERE Codigo_Mercadoria = FI.Codigo), 0)');
           end;
           Inventario.SQL.Add('       ,Valor_Unitario = Unitario_Saldo');
           Inventario.SQL.Add('       ,Valor_Total    = Total_Saldo');
           Inventario.SQL.Add('       ,null AS Tipo_Item');
           Inventario.SQL.Add('       ,null AS Inventario');
           Inventario.SQL.Add('       ,null AS Participante');
           Inventario.SQL.Add('       ,null AS Tipo');
           Inventario.SQL.Add('       ,null AS CNPJ');
           Inventario.SQL.Add('       ,null AS IE');
           Inventario.SQL.Add('       ,null AS Estado');
           Inventario.SQL.add('       ,Aliquota_IPI = (select max(Aliquota_IPI) from NotasItens ni where ni.Nota = FI.Nota and ni.Data = fi.Data and ni.Codigo_Mercadoria = FI.Codigo)');
           Inventario.SQL.Add('INTO  #Temp');
           Inventario.SQL.Add('FROM  FichaInventario FI');
           Inventario.SQL.Add('WHERE Codigo IS NOT NULL');
           Inventario.SQL.Add('  AND Qtde_Saldo > 0');
           if (Trim(cCodigo.Text) <> '') and (Trim(cCodigo.Text) <> '0') then begin
              Inventario.SQL.Add('  AND Codigo = :pCodigo');
              Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
           end;
           if Trim(cNCM.Text) <> '' then begin
              Inventario.SQL.Add('  AND NCM = :pNCM ');
              Inventario.ParamByName('pNCM').AsString := cNCM.Text;
           end;
           if cIPI.ItemIndex = 0 then begin
              Inventario.SQL.Add('  AND ISNULL((SELECT Aliquota_IPI FROM Produtos WHERE Codigo = FI.Codigo), 0) > 0');
           end;
           if cIPI.ItemIndex = 1 then begin
              Inventario.SQL.Add('  AND ISNULL((SELECT Aliquota_IPI FROM Produtos WHERE Codigo = FI.Codigo), 0) = 0');
           end;
           if Trim(cProcesso.Text) <> '' then begin
              Inventario.SQL.Add('AND Processo = :pProc');
              Inventario.SQL.Add('AND Item = (SELECT MAX(Item) FROM FichaInventario FI2 WHERE FI.Codigo = FI2.Codigo and fi2.Processo = :pProc)');
              Inventario.ParamByName('pProc').AsString := cProcesso.Text;
           end else begin
              Inventario.SQL.Add('AND Item = (SELECT MAX(Item) FROM FichaInventario FI2 WHERE FI.Codigo = FI2.Codigo)');
           end;
           Inventario.SQL.Add('TRUNCATE TABLE Inventario');
           Inventario.SQL.Add('INSERT INTO Inventario SELECT * FROM #Temp WHERE Quantidade <> 0');
           Inventario.SQL.Add('SELECT * FROM Inventario');
           if cOrdem.ItemIndex = 0 then
              Inventario.SQL.Add('ORDER BY NCM, CAST(Descricao AS varchar(300)), Codigo');
           if cOrdem.ItemIndex = 1 then
              Inventario.SQL.Add('ORDER BY Codigo');
           if cOrdem.ItemIndex = 2 then
              Inventario.SQL.Add('ORDER BY CAST(Descricao AS varchar(300)), Codigo');
           Inventario.SQL.Add('DROP TABLE #TEMP');
           //Inventario.SQL.SaveToFile('c:\temp\Inventario_Gerencial.sql');
           Inventario.Open;

           Screen.Cursor := crDefault;
      end;

      lPeriodo.Caption := '';
      if not cExcel.Checked then begin
         if not DataLimpa(cDataSaida.Text) then 
            lPeriodo.Caption := '| Até '+cDataSaida.Text +' | '
         else    
            lPeriodo.Caption := '| Até '+datetostr(date)+' | ';
            
         if trim(cNCM.Text) <> '' then lPeriodo.Caption := lPeriodo.Caption + 'NCM: '+ cNCM.Text+ ' | ';
         if trim(cProcesso.Text) <> '' then lPeriodo.Caption := lPeriodo.Caption + 'Processo: '+ cProcesso.Text+ ' | ';

         Screen.Cursor := crDefault;
         If FileExists(Dados.EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         if cIPI.ItemIndex = 0 then lTitulo.Caption := 'Inventario Gerencial (Produtos c/IPI)';
         if cIPI.ItemIndex = 1 then lTitulo.Caption := 'Inventario Gerencial (Produtos s/IPI)';
         if cIPI.ItemIndex = 2 then lTitulo.Caption := 'Inventario Gerencial (Todos)';
         rInventario.Print;
         rInventario.Reset;
      end else begin
         ExportaEXCEL;
      end;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Estoque_Inventario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Estoque_Inventario.ppDetailBand1BeforePrint(Sender: TObject);
begin
     lDescricao.Text        := RemoveCaracter('<{'+Trim(dmFiscal.Inventario.FieldByName('Codigo').AsString)+'}>', '', dmFiscal.Inventario.FieldByName('Descricao').AsString);
     If cZebrado.Checked then begin
        pCodigo.Transparent    := not pCodigo.Transparent;
        lDescricao.Transparent := pCodigo.Transparent;
        pNCM.Transparent       := pCodigo.Transparent;
        pQTDE.Transparent      := pCodigo.Transparent;
        pUM.Transparent        := pCodigo.Transparent;
     End;   
end;

procedure TImpressao_Estoque_Inventario.cCodigoChange(Sender: TObject);
begin
end;

// Envia informações para o excel.
procedure TImpressao_Estoque_Inventario.ExportaEXCEL;
var
   mPlanilha      : Variant;
   mLinha         : Integer;
   mTotalQtdePro  : Real;
   mTotalPro      : Currency;
   mDescricao     : WideString;
   mTipo          : String;
   mProcessos     : WideString;
begin
       With dmFiscal do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := Inventario.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible := false;
            mPlanilha.Range['A3','I3'].Interior.Color    := RGB(255, 255, 140);
            mPlanilha.Range['A3','I3'].Interior.Pattern  := 1;
            mPlanilha.Range['A3','I3'].Font.Bold         := true;
            mPlanilha.Range['A3','I3'].Font.Color        := clBlack;
            mPlanilha.Range['A3','I3'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A3','I3'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A3','I3'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Cells[3,01] := 'NCM';
            mPlanilha.Cells[3,02] := 'DESCRIÇÃO';
            mPlanilha.Cells[3,03] := 'CÓDIGO';
            mPlanilha.Cells[3,04] := 'UNIDADE';
            mPlanilha.Cells[3,05] := 'QUANTIDADE';
            mPlanilha.Cells[3,06] := 'VLR.UNITÁRIO';
            mPlanilha.Cells[3,07] := 'VLR.TOTAL';
            mPlanilha.Cells[3,08] := 'PROCESSO(S)';
            mPlanilha.Cells[3,09] := 'IPI';

            mPlanilha.Range['A3','I3'].HorizontalAlignment := 3;
            mPlanilha.Range['A3','I3'].VerticalAlignment   := 2;
            mPlanilha.Range['A3','I3'].Font.Size           := 10;

            mTotalPro     := 0;
            mTotalQtdePro := 0;
            mLinha        := 4;
            mTipo         := Inventario.FieldByName('Inventario').AsString;

            While (not Inventario.Eof) and (not Funcoes.Cancelado) do  Begin
                  mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].ColumnWidth         := 80;
                  mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].WrapText            := true;
                  mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].VerticalAlignment   := 1;
                  mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 3;
                  mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size           := 10;

                  mDescricao := Trim(InventarioDescricao.AsString);
                  mDescricao := RemoveCaracter(#13, '', mDescricao);
                  mDescricao := RemoveCaracter(#12, '', mDescricao);
                  mDescricao := RemoveCaracter(#10, '', mDescricao);
                  mDescricao := RemoveCaracter('<{'+InventarioCodigo.AsString+'}>', '', mDescricao);

                  tProcessos.SQL.Clear;
                  tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasItens WHERE (Codigo_Mercadoria = :pCodigo)');
                  tProcessos.SQL.Add('UNION');
                  tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasTerceirosItens WHERE (Codigo_Mercadoria = :pCodigo)');
                  tProcessos.ParamByName('pCodigo').AsInteger := Inventario.FieldByName('Codigo').AsInteger;
                  tProcessos.Open;

                  mProcessos := '';
                  While not tProcessos.Eof do begin
                        mProcessos := mProcessos + trim(tProcessos.FieldByName('Processo').AsString)+', ';
                        tProcessos.Next;
                  End;
                  mProcessos := Copy(mProcessos, 1, Length(mProcessos)-2);

                  mPlanilha.Cells[mLinha,01] := Inventario.FieldByName('NCM').AsString;
                  mPlanilha.Cells[mLinha,02] := mDescricao;
                  mPlanilha.Cells[mLinha,03] := Inventario.FieldByName('Codigo').AsString;
                  mPlanilha.Cells[mLinha,04] := Inventario.FieldByName('Unidade').AsString;
                  mPlanilha.Cells[mLinha,05] := Inventario.FieldByName('Quantidade').AsFloat;
                  mPlanilha.Cells[mLinha,06] := Inventario.FieldByName('Valor_Unitario').AsCurrency;
                  mPlanilha.Cells[mLinha,07] := Inventario.FieldByName('Valor_Total').AsCurrency;
                  mPlanilha.Cells[mLinha,08] := trim(mProcessos);
                  mPlanilha.Cells[mLinha,09] := Inventario.FieldByName('Aliquota_IPI').asfloat;

                  mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
                  mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,09].NumberFormat := '##0,00';

                  mTotalQtdePro := mTotalQtdePro + Inventario.FieldByName('Quantidade').AsFloat;
                  mTotalPro     := mTotalPro     + Inventario.FieldByName('Valor_Total').AsCurrency;

                  Inventario.Next;

                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            End;

            //Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL GERAL';
            mPlanilha.Cells[mLinha,05] := mTotalQtdePro;
            mPlanilha.Cells[mLinha,07] := mTotalPro;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            mPlanilha.Range['C3','G3'].VerticalAlignment   := 2;
            mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
//               KillTask('Excel.exe');    // Microsoft Excel
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            End;

            mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;

            mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
            mPlanilha.Range['A1','A1'].Font.Size  := 14;
            mPlanilha.Range['A1','A1'].Font.Bold  := true;
            mPlanilha.Range['A1','I1'].Mergecells := True;
            mPlanilha.Range['A1','I1'].HorizontalAlignment := 3;

            if cIPI.ItemIndex = 0 then mPlanilha.Cells[2,01] := 'Inventario Gerencial - Período de '+cData.Text+' (Produtos c/IPI)';
            if cIPI.ItemIndex = 1 then mPlanilha.Cells[2,01] := 'Inventario Gerencial - Período de '+cData.Text+' (Produtos s/IPI)';
            if cIPI.ItemIndex = 2 then mPlanilha.Cells[2,01] := 'Inventario Gerencial - Período de '+cData.Text+' (Todos)';
            mPlanilha.Range['A2','A2'].Font.Size  := 10;
            mPlanilha.Range['A2','I2'].Mergecells := True;
            mPlanilha.Range['A2','I2'].HorizontalAlignment := 3;
       End;
       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_Estoque_Inventario.cNegativoClick(Sender: TObject);
begin
      If cNegativo.Checked = true then cPositivo.Checked := false;
end;

procedure TImpressao_Estoque_Inventario.cPositivoClick(Sender: TObject);
begin
      If cPositivo.Checked = true then cNegativo.Checked := false;
end;

procedure TImpressao_Estoque_Inventario.cDataExit(Sender: TObject);
begin
      If DataLimpa(cDataSaida.Text) then cDataSaida.Date := cData.Date;
end;

procedure TImpressao_Estoque_Inventario.cProdutoChange(Sender: TObject);
begin
     cCodigo.Clear;
     If cProduto.DisplayValue <> '' then cCodigo.Text := Dados.ProdutosCodigo.AsString;
end;

procedure TImpressao_Estoque_Inventario.cCodigoExit(Sender: TObject);
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

end.
