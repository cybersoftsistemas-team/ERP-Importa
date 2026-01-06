unit frmImpressao_Estoque_Seriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, ppParameter, ppVar, ppBands, ppCtrls, ppClass,
  ppReport, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Buttons, DB, DBAccess, MSAccess, ppMemo, Funcoes, IniFIles, ComObj,
  Mask, RxCurrEdit, MemDS, ppDB, ppDesignLayer, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, RxToolEdit;

type
  TImpressao_Estoque_Seriais = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    rSeriais: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLine5: TppLine;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppLabel15: TppLabel;
    ppLine38: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppLine40: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine23: TppLine;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine24: TppLine;
    ppParameterList1: TppParameterList;
    Ded_Pagina: TppParameter;
    pEmpresas: TppDBPipeline;
    pSeriais: TppDBPipeline;
    tSeriais: TMSQuery;
    dstLotes: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppDBText4: TppDBText;
    ppLine32: TppLine;
    ppLabel19: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppLine8: TppLine;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine9: TppLine;
    ppDBText11: TppDBText;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine16: TppLine;
    ppLabel9: TppLabel;
    pSaldo: TppVariable;
    pSaldoTotal: TppVariable;
    bLimpar: TButton;
    ppDBText3: TppDBText;
    cCodigo: TCurrencyEdit;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    lPeriodo: TppLabel;
    ppLine20: TppLine;
    ppDBText1: TppDBText;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppLine27: TppLine;
    ppDBText13: TppDBText;
    ppLine26: TppLine;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLine12: TppLine;
    ppLine29: TppLine;
    ppLabel10: TppLabel;
    ppLine31: TppLine;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    ppLine30: TppLine;
    ppLine6: TppLine;
    ppLabel12: TppLabel;
    ppLine11: TppLine;
    ppDBText10: TppDBText;
    ppLine10: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppLine17: TppLine;
    tEntradas: TppVariable;
    tSaidas: TppVariable;
    ppLine19: TppLine;
    ppShape2: TppShape;
    tSaldo: TppVariable;
    cSaldo: TCheckBox;
    pEntradaTotal: TppVariable;
    pSaidaTotal: TppVariable;
    ppShape3: TppShape;
    cSerial: TEdit;
    StaticText1: TStaticText;
    cExcel: TCheckBox;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pSaldoCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure ppGroupFooterBand2AfterPrint(Sender: TObject);
    procedure tSaldoCalc(Sender: TObject; var Value: Variant);
    procedure pEntradaTotalCalc(Sender: TObject; var Value: Variant);
    procedure pSaidaTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Estoque_Seriais: TImpressao_Estoque_Seriais;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_Estoque_Seriais.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
     With Dados do begin
          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao');
          Produtos.Open;
     End;
     // Carregando as ultimas opções utilizadas no relatório como default.
     aINI           := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cProduto.Value := aINI.ReadString ('IMPRESSAO_ESTOQUE_SERIAIS', 'Produto', '');
     cCodigo.Value  := aINI.ReadInteger('IMPRESSAO_ESTOQUE_SERIAIS', 'Codigo' , 0);
     cSaldo.Checked := aINI.ReadBool   ('IMPRESSAO_ESTOQUE_SERIAIS', 'Saldo'  , true);
     cExcel.Checked := aINI.ReadBool   ('IMPRESSAO_ESTOQUE_SERIAIS', 'Excel'  , true);
     aINI.Free;
end;

procedure TImpressao_Estoque_Seriais.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If ppDetailBand1.Count mod 2 = 0 then
         ppDetailBand1.Background1.Brush.Color := clWhite
      else
         ppDetailBand1.Background1.Brush.Color := clSilver;
end;

procedure TImpressao_Estoque_Seriais.bImprimirClick(Sender: TObject);
begin
     With Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;
          
          tSeriais.SQL.Clear;
          tSeriais.SQL.Add('SELECT Produto      = PRD.Produto_Codigo');
          tSeriais.SQL.Add('      ,Codigo_Fab   = (SELECT Codigo_Fabricante FROM Produtos WHERE Codigo = PRD.Produto_Codigo)');
          tSeriais.SQL.Add('      ,Produto_Desc = CAST((SELECT REPLACE(Descricao, ''<{''+CAST(PRD.Produto_Codigo AS VARCHAR(15))+''}>'', '''') FROM Produtos WHERE Codigo = PRD.Produto_Codigo) AS VARCHAR(250))');
          tSeriais.SQL.Add('      ,Destinatario = CASE WHEN (PSN.Emissor = ''P'') THEN');
          tSeriais.SQL.Add('                           (SELECT Destinatario_Nome FROM NotasFiscais NF WHERE NF.Numero = PSN.Nota AND PSN.Data = NF.Data_Emissao)');
          tSeriais.SQL.Add('                      ELSE');
          tSeriais.SQL.Add('                           (SELECT DISTINCT Nome FROM Fornecedores WHERE Codigo = (SELECT DISTINCT Fornecedor FROM NotasTerceiros NT WHERE NT .Nota = PSN.Nota AND NT.Data_Emissao = PSN.Data))');
          tSeriais.SQL.Add('                      END');
          tSeriais.SQL.Add('      ,Cor');
          tSeriais.SQL.Add('      ,Chassi       = CASE WHEN Tipo  = ''CHASSI'' THEN PRD.Numero');
          tSeriais.SQL.Add('                           WHEN Tipo2 = ''CHASSI'' THEN PRD.Numero2');
          tSeriais.SQL.Add('                           WHEN Tipo3 = ''CHASSI'' THEN PRD.Numero3');
          tSeriais.SQL.Add('                    END');
          tSeriais.SQL.Add('     ,Serial       = CASE WHEN Tipo  = ''SERIAL'' THEN PRD.Numero');
          tSeriais.SQL.Add('                          WHEN Tipo2 = ''SERIAL'' THEN PRD.Numero2');
          tSeriais.SQL.Add('                          WHEN Tipo3 = ''SERIAL'' THEN PRD.Numero3');
          tSeriais.SQL.Add('                    END');
          tSeriais.SQL.Add('     ,Motor        = CASE WHEN Tipo  = ''MOTOR'' THEN PRD.Numero');
          tSeriais.SQL.Add('                          WHEN Tipo2 = ''MOTOR'' THEN PRD.Numero2');
          tSeriais.SQL.Add('                          WHEN Tipo3 = ''MOTOR'' THEN PRD.Numero3');
          tSeriais.SQL.Add('                    END');
          tSeriais.SQL.Add('     ,Ano_Modelo');
          tSeriais.SQL.Add('     ,PRD.Numero');
          tSeriais.SQL.Add('     ,Ano_Fabricacao');
          tSeriais.SQL.Add('     ,Cor_DENATRAN');
          tSeriais.SQL.Add('     ,Processo');
          tSeriais.SQL.Add('     ,Nota = PSN.Nota');
          tSeriais.SQL.Add('     ,Data = PSN.Data');
          tSeriais.SQL.Add('     ,Nota_Entra = CASE WHEN PSN.Saida_Entrada = 0 THEN PSN.Nota END');
          tSeriais.SQL.Add('     ,Data_Entra = CASE WHEN PSN.Saida_Entrada = 0 THEN PSN.Data END');
          tSeriais.SQL.Add('     ,Nota_Saida = CASE WHEN PSN.Saida_Entrada = 1 THEN PSN.Nota END');
          tSeriais.SQL.Add('     ,Data_Saida = CASE WHEN PSN.Saida_Entrada = 1 THEN PSN.Data END');
          tSeriais.SQL.Add('     ,PSN.Saida_Entrada');
          tSeriais.SQL.Add('     ,PSN.Emissor');
          tSeriais.SQL.Add('INTO #TEMP');
          tSeriais.SQL.Add('FROM  ProdutosSeriais AS PRD');
          tSeriais.SQL.Add('JOIN  ProdutosSeriaisNotas AS PSN ON PRD.Produto_Codigo = PSN.Produto_Codigo AND PRD.Numero = PSN.Numero');
          tSeriais.SQL.Add('WHERE PRD.Registro IS NOT NULL');
          If cCodigo.Value > 0 then begin
             tSeriais.SQL.Add('  AND PRD.Produto_Codigo = '+cCodigo.Text);
          End;
          If cSerial.Text <> '' then begin
             tSeriais.SQL.Add('  AND PRD.Numero = '+QuotedStr(cSerial.Text));
          End;
          if cSaldo.Checked then begin
             tSeriais.SQL.Add('   AND ((SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN2 WHERE PSN2.Produto_Codigo = PRD.Produto_Codigo AND PSN2.Numero = PRD.Numero AND Saida_Entrada = 0) -');
             tSeriais.SQL.Add('        (SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN2 WHERE PSN2.Produto_Codigo = PRD.Produto_Codigo AND PSN2.Numero = PRD.Numero AND Saida_Entrada = 1)) > 0');
          end;
          tSeriais.SQL.Add('SELECT DISTINCT * FROM #TEMP');
          tSeriais.SQL.Add('WHERE ISNULL(SERIAL, '''') <> '''' ');
          tSeriais.SQL.Add('ORDER BY Produto, Chassi, Serial, Data, Saida_Entrada, Nota');
          tSeriais.SQL.Add('DROP TABLE #TEMP');
          //tSeriais.SQL.SaveToFile('c:\temp\Controle_Seriais.sql');
          tSeriais.Open;
     End;

     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

     if not cExcel.Checked then begin
        lPeriodo.Clear;
        rSeriais.Reset;
        rSeriais.Print;
        rSeriais.FreeOnRelease;
     end else begin
        ExportaExcel;
     end;
end;

procedure TImpressao_Estoque_Seriais.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Estoque_Seriais.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_SERIAIS', 'Codigo', cCodigo.AsInteger);
      If Trim(cProduto.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_ESTOQUE_SERIAIS', 'Produto', cProduto.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_ESTOQUE_SERIAIS', 'Produto', 0);
      aINI.WriteBool('IMPRESSAO_ESTOQUE_SERIAIS', 'Saldo', cSaldo.Checked);
      aINI.WriteBool('IMPRESSAO_ESTOQUE_SERIAIS', 'Excel', cExcel.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
      Impressao_Estoque_Seriais.Release;
      Impressao_Estoque_Seriais := nil;
end;

procedure TImpressao_Estoque_Seriais.pSaldoCalc(Sender: TObject;var Value: Variant);
begin
      If (tSeriais.FieldByName('Saida_Entrada').Value = 0) and (tSeriais.FieldByName('Serial').Value <> '') then
         Value := Value + 1
      else
         Value := Value - 1;
end;

procedure TImpressao_Estoque_Seriais.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Estoque_Seriais.bLimparClick(Sender: TObject);
begin
      cProduto.KeyValue := '';
end;

procedure TImpressao_Estoque_Seriais.cCodigoChange(Sender: TObject);
begin
      if Dados.Produtos.Active then begin
         Dados.Produtos.Locate('Codigo', cCodigo.AsInteger, [loCaseInsensitive]);
         cProduto.KeyValue := cCodigo.AsInteger;
      end;
end;

procedure TImpressao_Estoque_Seriais.ppDetailBand1AfterPrint(Sender: TObject);
begin
      If tSeriais.FieldByName('Saida_Entrada').Value = 0 then
         tEntradas.Value := tEntradas.Value + 1
      else
         tSaidas.Value := tSaidas.Value + 1;
end;

procedure TImpressao_Estoque_Seriais.ppGroupFooterBand2AfterPrint(Sender: TObject);
begin
      tEntradas.Value := 0;
      tSaidas.Value   := 0;
      tSaldo.Value    := 0;
      pSaldo.Value    := 0;
end;

procedure TImpressao_Estoque_Seriais.tSaldoCalc(Sender: TObject;var Value: Variant);
begin
      If tSeriais.FieldByName('Saida_Entrada').Value = 0 then
         Value := Value + 1
      else
         Value := Value - 1;
end;

procedure TImpressao_Estoque_Seriais.pEntradaTotalCalc(Sender: TObject;var Value: Variant);
begin
      If tSeriais.FieldByName('Saida_Entrada').Value = 0 then Value := Value + 1;
end;

procedure TImpressao_Estoque_Seriais.pSaidaTotalCalc(Sender: TObject;var Value: Variant);
begin
      If tSeriais.FieldByName('Saida_Entrada').Value = 1 then Value := Value + 1;
end;

procedure TImpressao_Estoque_Seriais.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
      pSaldoTotal.Value := pEntradaTotal.Value - pSaidaTotal.Value;
end;

procedure TImpressao_Estoque_Seriais.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
      pEntradaTotal.Value := 0;
      pSaidaTotal.Value   := 0;
      pSaldoTotal.Value   := 0;
      tEntradas.Value     := 0;
      tSaidas.Value       := 0;
      tSaldo.Value        := 0;
end;

// Envia informações para o excel.
procedure TImpressao_Estoque_Seriais.ExportaEXCEL;
var
   mPlanilha:Variant;
   
   mTotSerEnt,
   mTotSerSai,
   mTotProEnt,
   mTotProSai,
   mTotGerEnt,
   mTotGerSai,
   mLinha,
   mProduto,
   mSaldo: integer;

   mSerial:string;
begin
       Janela_Processamento                    := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tSeriais.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible                              := false;
       mPlanilha.Range['A3','L3'].Interior.Color      := RGB(255, 255, 140);
       mPlanilha.Range['A3','L3'].Interior.Pattern    := 1;
       mPlanilha.Range['A3','L3'].Font.Bold           := true;
       mPlanilha.Range['A3','L3'].Font.Color          := clBlack;
       mPlanilha.Range['A3','L3'].Borders.LineStyle   := 1; // xlContinuous.
       mPlanilha.Range['A3','L3'].Borders.Weight      := 2; // xlThin.
       mPlanilha.Range['A3','L3'].Borders.Color       := RGB(0,0,0);
       mPlanilha.Range['A3','L3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','L3'].VerticalAlignment   := 2;

       mPlanilha.Cells[3,01] := 'FORNECEDOR/CLIENTE';
       mPlanilha.Cells[3,02] := 'PROCESSO';
       mPlanilha.Cells[3,03] := 'COR';
       mPlanilha.Cells[3,04] := 'Nº CHASSI';
       mPlanilha.Cells[3,05] := 'Nº MOTOR';
       mPlanilha.Cells[3,06] := 'Nº SÉRIE';
       mPlanilha.Cells[3,07] := 'ANO/MODELO';
       mPlanilha.Cells[3,08] := 'NF ENT';
       mPlanilha.Cells[3,09] := 'DATA NF ENT';
       mPlanilha.Cells[3,10] := 'NF SAÍDA';
       mPlanilha.Cells[3,11] := 'DATA NF SAI';
       mPlanilha.Cells[3,12] := 'SALDO';

       mTotSerEnt := 0;
       mTotSerSai := 0;
       mTotProEnt := 0;
       mTotProSai := 0;
       mTotGerEnt := 0;
       mTotGerSai := 0;
       mSaldo     := 0;
       mLinha     := 4;
       mProduto   := 0;
       mSerial    := tSeriais.FieldByName('Numero').AsString;

       while (not tSeriais.Eof) and (not Funcoes.Cancelado) do begin
             if tSeriais.FieldByName('Produto').AsInteger <> mProduto then begin
                mSaldo   := 0;
                mProduto := tSeriais.FieldByName('Produto').AsInteger;

                mPlanilha.Cells[mLinha,01]                                                     := tSeriais.FieldByName('Produto').AsString+' - '+Trim(tSeriais.FieldByName('Produto_Desc').AsString);
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Mergecells          := True;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color      := clNavy;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Pattern    := 1;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold           := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Color          := clWhite;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight      := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color       := RGB(0,0,0);
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].WrapText            := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].RowHeight           := 30;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment   := 2;
                Inc(mLinha);
             end;

             mPlanilha.Cells[mLinha,01] := tSeriais.FieldByName('Destinatario').AsString;
             mPlanilha.Cells[mLinha,02] := tSeriais.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,03] := tSeriais.FieldByName('Cor').AsString;
             mPlanilha.Cells[mLinha,04] := tSeriais.FieldByName('Chassi').AsString;
             mPlanilha.Cells[mLinha,05] := tSeriais.FieldByName('Motor').AsString;
             mPlanilha.Cells[mLinha,06] := tSeriais.FieldByName('Serial').AsString;
             mPlanilha.Cells[mLinha,07] := tSeriais.FieldByName('Ano_Modelo').AsString;

             if tSeriais.FieldByName('Nota_Entra').AsInteger > 0 then begin
                mPlanilha.Cells[mLinha,08] := tSeriais.FieldByName('Nota_Entra').AsInteger;
                mPlanilha.Cells[mLinha,09] := tSeriais.FieldByName('Data_Entra').AsDateTime;
                inc(mSaldo);
                inc(mTotSerEnt);
                inc(mTotProEnt);
                inc(mTotGerEnt);
             end;
             if tSeriais.FieldByName('Nota_Saida').AsInteger > 0 then begin
                mPlanilha.Cells[mLinha,10] := tSeriais.FieldByName('Nota_Saida').AsInteger;
                mPlanilha.Cells[mLinha,11] := tSeriais.FieldByName('Data_Saida').AsDateTime;
                Dec(mSaldo);
                inc(mTotSerSai);
                inc(mTotProSai);
                inc(mTotGerSai);
             end;
             mPlanilha.Cells[mLinha,12] := mSaldo;

             tSeriais.Next;
             Inc(mLinha);

             if tSeriais.FieldByName('Numero').AsString <> mSerial then begin
                mPlanilha.Cells[mLinha,06] := 'TOTAL DO SERIAL:';
                mPlanilha.Cells[mLinha,08] := mTotSerEnt;
                mPlanilha.Cells[mLinha,10] := mTotSerSai;
                mPlanilha.Cells[mLinha,12] := mTotSerEnt - mTotSerSai;
                mSerial                    := tSeriais.FieldByName('Numero').AsString;
                mSaldo                     := 0;
                mTotSerEnt                 := 0;
                mTotSerSai                 := 0;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].RowHeight         := 16;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;
                Inc(mLinha);
             end;
             if tSeriais.FieldByName('Produto').AsInteger <> mProduto then begin
                mPlanilha.Cells[mLinha,06] := 'TOTAL DO PRODUTO:';
                mPlanilha.Cells[mLinha,08] := mTotProEnt;
                mPlanilha.Cells[mLinha,10] := mTotProSai;
                mPlanilha.Cells[mLinha,12] := mTotProEnt - mTotProSai;
                mTotProEnt                 := 0;
                mTotProSai                 := 0;

                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := clNavy;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Color        := clWhite;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].RowHeight         := 16;
                mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;
                Inc(mLinha,2);
             end;

             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.Autofit;

       mPlanilha.Cells[mLinha,06] := 'TOTAL GERAL';
       mPlanilha.Cells[mLinha,08] := mTotGerEnt;
       mPlanilha.Cells[mLinha,10] := mTotGerSai;
       mPlanilha.Cells[mLinha,12] := mTotGerEnt - mTotGerSai;
       //mPlanilha.Cells[mLinha,06].HorizontalAlignment := 3;
       
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2;
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].RowHeight         := 16;
       mPlanilha.Range['F'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       mPlanilha.Range['A1','A1'].Font.Size           := 14;
       mPlanilha.Range['A1','A1'].Font.Bold           := true;
       mPlanilha.Range['A1','L1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','L1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','L1'].Mergecells          := True;
       mPlanilha.Range['A2','L2'].Mergecells          := True;
       mPlanilha.Range['A2','L2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','L2'].VerticalAlignment   := 2;

       mPlanilha.Cells[2,01]                := 'ESTOQUE - Controle de Seriais';
       mPlanilha.Range['A2','A2'].Font.Size := 10;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.






