unit frmImpressao_Cadastros_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, ppCtrls, ppVar, ppBands, ppMemo, ppPrnabl,
  ppReport, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls, RXCtrls, MaskUtils, Funcoes, ComObj, CheckLst, Grids, DBGrids, RXDBCtrl, Buttons, DB, DBAccess, MSAccess, system.UITypes,
  RxLookup, MemDS, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd, IniFiles;

type
  TImpressao_Cadastros_Produtos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    rProdutos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    pProdutos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    StaticText2: TStaticText;
    cTipo: TDBLookupComboBox;
    StaticText4: TStaticText;
    cUnidade: TDBLookupComboBox;
    StaticText20: TStaticText;
    cClasseIPI: TDBLookupComboBox;
    StaticText17: TStaticText;
    cTipoSPED: TDBLookupComboBox;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel10: TppLabel;
    pTipoItem: TppDBPipeline;
    lDescricao: TppMemo;
    lTitulo2: TppLabel;
    StaticText1: TStaticText;
    cNCM: TMaskEdit;
    StaticText3: TStaticText;
    cDescricao: TMaskEdit;
    cExcel: TCheckBox;
    StaticText5: TStaticText;
    cNumeros: TEdit;
    StaticText6: TStaticText;
    SpeedButton1: TSpeedButton;
    Grade: TRxDBGrid;
    bSelTodos: TSpeedButton;
    bDesTodos: TSpeedButton;
    StaticText7: TStaticText;
    cPesquisa: TEdit;
    tPesquisa: TMSQuery;
    bFiltrar: TSpeedButton;
    cSelecionados: TCheckBox;
    tProdutos: TMSQuery;
    dstProdutos: TDataSource;
    StaticText8: TStaticText;
    ppLabel11: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText4: TppDBText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    StaticText9: TStaticText;
    cCliente: TDBLookupComboBox;
    cExcelSimp: TCheckBox;
    cFornecedor: TDBLookupComboBox;
    cSit: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cTipoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cTipoSPEDKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cUnidadeKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cClasseIPIKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ExportaEXCEL;
    procedure SpeedButton1Click(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bSelTodosClick(Sender: TObject);
    procedure bDesTodosClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure FiltraProdutos;
    procedure bFiltrarClick(Sender: TObject);
    procedure cClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cFornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure ExportaEXCELSim;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Cadastros_Produtos: TImpressao_Cadastros_Produtos;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Cadastros_Produtos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Cadastros_Produtos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Cadastros_Produtos.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aIni: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'Cliente'     , cCliente.KeyValue);
      aINI.Writestring ('IMPRESSAO_PRODUTOS', 'Tipo'        , cTipo.KeyValue);
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'TipoSPED'    , cTipoSPED.KeyValue);
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'Unidade'     , cUnidade.KeyValue);
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'ClasseIPI'   , cClasseIPI.KeyValue);
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'NCM'         , cNCm.Text);
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'Fornecedor'  , cFornecedor.KeyValue);
      aINI.WriteString ('IMPRESSAO_PRODUTOS', 'Descricao'   , cDescricao.Text);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOS', 'Selecionados', cSelecionados.Checked );
      aINI.WriteBool   ('IMPRESSAO_PRODUTOS', 'Excel'       , cExcel.Checked );
      aINI.WriteBool   ('IMPRESSAO_PRODUTOS', 'Simples'     , cExcelSimp.Checked );
      aINI.WriteInteger('IMPRESSAO_PRODUTOS', 'Situacao'    , cSit.ItemIndex );
      aINI.Free;

      Impressao_Cadastros_Produtos.Release;
      Impressao_Cadastros_Produtos := nil;
end;

procedure TImpressao_Cadastros_Produtos.FormShow(Sender: TObject);
var
   aIni: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;

           Unidades.SQL.Clear;
           Unidades.SQL.Add('SELECT * FROM UnidadeMedida ORDER BY Descricao');
           Unidades.Open;

           ClasseIPI.SQL.Clear;
           ClasseIPI.SQL.Add('SELECT * FROM ClasseIPI');
           ClasseIPI.Open;

           TipoItem.SQL.Clear;
           TipoItem.SQL.Add('SELECT * FROM TipoItem ORDER BY Descricao');
           TipoItem.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT *');
           Fornecedores.SQL.Add('FROM   Fornecedores');
           Fornecedores.SQL.Add('WHERE  Codigo IN(SELECT DISTINCT Fornecedor FROM Produtos WHERE ISNULL(Fornecedor, 0) > 0 AND Desativado <> 1)');
           Fornecedores.SQL.Add('ORDER BY Nome');
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT *');
           Clientes.SQL.Add('FROM Clientes');
           Clientes.SQL.Add('WHERE  Codigo IN(SELECT DISTINCT Cliente FROM Produtos WHERE ISNULL(Cliente, 0) > 0 AND Desativado <> 1)');
           Clientes.SQL.Add('ORDER BY Nome');
           Clientes.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
     End;

     aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cCliente.KeyValue       := aINI.ReadInteger('IMPRESSAO_PRODUTOS', 'Cliente'      , 0);
     cTipo.KeyValue          := aINI.ReadString ('IMPRESSAO_PRODUTOS', 'Tipo'         , '');
     cTipoSPED.KeyValue      := aINI.ReadInteger('IMPRESSAO_PRODUTOS', 'TipoSPED'     , -1);
     cUnidade.KeyValue       := aINI.ReadString ('IMPRESSAO_PRODUTOS', 'Unidade'      , '');
     cClasseIPI.KeyValue     := aINI.ReadString ('IMPRESSAO_PRODUTOS', 'ClasseIPI'    , '');
     cNCM.Text               := aINI.ReadString ('IMPRESSAO_PRODUTOS', 'NCM'          , '');
     cFornecedor.KeyValue    := aINI.ReadInteger('IMPRESSAO_PRODUTOS', 'Fornecedor'   , 0);
     cDescricao.Text         := aINI.ReadString ('IMPRESSAO_PRODUTOS', 'Descricao'    , '');
     cSelecionados.Checked   := aINI.ReadBool   ('IMPRESSAO_PRODUTOS', 'Selecionados' ,false);
     cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_PRODUTOS', 'Excel'        ,false);
     cExcelSimp.Checked      := aINI.ReadBool   ('IMPRESSAO_PRODUTOS', 'Simples'      ,false);
     cSit.ItemIndex          := aINI.ReadInteger('IMPRESSAO_PRODUTOS', 'Situacao'     , 0);
     aINI.Free;

     FiltraProdutos;

     Screen.Cursor := crDefault;
end;

procedure TImpressao_Cadastros_Produtos.bImprimirClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           //fFaixa.Visible := True;
           lTitulo2.Caption := cSit.Items[cSit.ItemIndex];

           tProdutos.SQL.Clear;
           tProdutos.SQL.Add('SELECT Produtos.*');
           tProdutos.SQL.Add('     , (SELECT Nome      FROM Fornecedores WHERE(Codigo = Produtos.Fornecedor)) AS Fornecedor_Nome');
           tProdutos.SQL.Add('     , (SELECT Nome      FROM Fornecedores WHERE(Codigo = Produtos.Fabricante)) AS Fabricante_Nome');
           tProdutos.SQL.Add('     , (SELECT Descricao FROM TiposProcesso WHERE Codigo = Produtos.Modalidade) AS Modalidade_Desc');
           tProdutos.SQL.Add('     , (SELECT Abrev     FROM Cybersoft_Cadastros.dbo.OrgaoAnuenteImp WHERE Codigo = Produtos.Orgao_AnuenteImp) AS Orgao_Nome');
           tProdutos.SQL.Add('FROM Produtos');
           tProdutos.SQL.Add('WHERE(Codigo IS NOT NULL)');
           If cSelecionados.Checked then begin
              tProdutos.SQL.Add('AND (Produtos.Selecionado = 1)');
           end;
           If trim(cTipo.text) <> '' then begin
              tProdutos.SQL.Add('AND (Tipo = :pTipo)');
              tProdutos.ParamByName('pTipo').AsInteger := TipoProduto.FieldByName('Codigo').AsInteger;
              lTitulo2.Caption := TipoProduto.FieldByName('Descricao').AsString;
           End;
           If trim(cTipoSPED.text) <> '' then begin
              tProdutos.SQL.Add('AND (Tipo_Item = :pTipoSPED)');
              tProdutos.ParamByName('pTipoSPED').AsInteger := TipoItem.FieldByName('Codigo').AsInteger;
              lTitulo2.Caption := lTitulo2.Caption + ' / '+TipoItem.FieldByName('Descricao').AsString;
           End;
           If trim(cUnidade.text) <> ''then begin
              tProdutos.SQL.Add('AND (Unidade = :pUnidade)');
              tProdutos.ParamByName('pUnidade').AsString := Unidades.FieldByName('Codigo').AsString;
              lTitulo2.Caption := lTitulo2.Caption + ' / '+Unidades.FieldByName('Descricao').AsString;
           End;
           If trim(cClasseIPI.text) <> '' then begin
              tProdutos.SQL.Add('AND (ClasseEnquadra_IPI = :pClasse)');
              tProdutos.ParamByName('pClasse').AsString := ClasseIPI.FieldByName('Classe').AsString;
              lTitulo2.Caption := lTitulo2.Caption + ' / '+'Classe de Enquadramento('+ClasseIPI.FieldByName('Classe').AsString+')';
           End;
           If Trim(cNCM.Text) <> '' then begin
              tProdutos.SQL.Add('AND (NCM = :pNCM)');
              tProdutos.ParamByName('pNCM').AsString := cNCM.Text;
              lTitulo2.Caption := lTitulo2.Caption + ' / '+'NCM:'+FormatMaskText('####.##.##;0; ', cNCM.Text);
           End;
           If Trim(cDescricao.Text) <> '' then begin
              tProdutos.SQL.Add('AND (Descricao LIKE '+QuotedStr('%'+cDescricao.Text+'%')+')' );
              lTitulo2.Caption := lTitulo2.Caption + ' / '+'Que Contenham:'+cDescricao.Text;
           End;
           If Trim(cFornecedor.Text) <> '' then begin
              tProdutos.SQL.Add('AND (Fornecedor = :pFornecedor)' );
              tProdutos.ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.AsInteger;
           End;
           If Trim(cCliente.Text) <> '' then begin
              tProdutos.SQL.Add('AND (Cliente = :pCliente)' );
              tProdutos.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           End;
           If cSit.ItemIndex = 1 then begin
              tProdutos.SQL.Add('AND isnull(Desativado, 0) = 0' );
           End;
           If cSit.ItemIndex = 2 then begin
              tProdutos.SQL.Add('AND isnull(Desativado, 0) = 1' );
           End;
           tProdutos.SQL.Add('ORDER BY Codigo');
           //tProdutos.SQL.SaveToFile('c:\temp\Cadastro_Produtos.sql');
           tProdutos.Open;
      End;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;

         rProdutos.Print;
         rProdutos.Reset;
      end else begin
         if not cExcelSimp.Checked then
            ExportaExcel
         else
            ExportaExcelSim;
      End;
end;

procedure TImpressao_Cadastros_Produtos.ppDetailBand1BeforePrint(Sender: TObject);
Var
    mDescricao: WideString;
begin
      if ppDetailBand1.Background1.Brush.Color = clWhite then
         ppDetailBand1.Background1.Brush.Color := $00FFECEC
      else
         ppDetailBand1.Background1.Brush.Color := clWhite;
         
      With Dados do begin
           lDescricao.Lines.Clear;
           mDescricao := '';
           mDescricao := Trim(tProdutos.FieldByName('Descricao').AsString);
           mDescricao := RemoveCaracter('<{'+tProdutos.FieldByName('Codigo').AsString+'}>', '', mDescricao);
           lDescricao.Lines.Add(Trim(mDescricao));
      End;
end;

procedure TImpressao_Cadastros_Produtos.cTipoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      If Key = VK_Delete then cTipo.KeyValue := -1;
end;

procedure TImpressao_Cadastros_Produtos.cTipoSPEDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If Key = VK_Delete then cTipoSPED.KeyValue := -1;
end;

procedure TImpressao_Cadastros_Produtos.cUnidadeKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      If Key = VK_Delete then cUnidade.KeyValue := '';
end;

procedure TImpressao_Cadastros_Produtos.cClasseIPIKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      If Key = VK_Delete then cClasseIPI.KeyValue := '';
end;

procedure TImpressao_Cadastros_Produtos.cClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If Key = VK_Delete then cCliente.KeyValue := -1;
end;

procedure TImpressao_Cadastros_Produtos.cFornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If Key = VK_Delete then cFornecedor.KeyValue := -1
end;

// Envia informações para o excel.
procedure TImpressao_Cadastros_Produtos.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha
  ,mCol: Integer;
begin
     With Dados do begin
          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tProdutos.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
          Janela_Processamento.Show;

          mPlanilha := CreateOleObject('Excel.Application');

          mPlanilha.WorkBooks.add(1);
          mPlanilha.Visible := false;
          
          mPlanilha.Range['A3','AL3'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A3','AL3'].Interior.Pattern  := 1;
          mPlanilha.Range['A3','AL3'].Font.Bold         := true;
          mPlanilha.Range['A3','AL3'].Font.Color        := clBlack;
          mPlanilha.Range['A3','AL3'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A3','AL3'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A3','AL3'].Borders.Color     := RGB(0,0,0);

          mCol := 1;
          mPlanilha.Cells[3, mCol] := 'CÓDIGO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO FABRICA';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'FORNECEDOR CÓD.';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'FORNECEDOR NOME';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'DESCRIÇÃO PORTUGUÊS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'DESCRIÇÃO INGLÊS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'DETALHE ESPECÍFICO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'LINHA';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO GTIN';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO GTIN UNID.';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'TABELA';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'FABRICANTE';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'NCM';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'UNIDADE';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'QTDE UNID.';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'VLR.UNITÁRIO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'VLR.UNITÁRIO ME';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'IPI.';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'VLR.IPI';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'IMP.IMP (II)';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'PIS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'RED.PIS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'COFINS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'RED.COFINS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'RED.BC.ICMS';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'VLR.DUMPING';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'PESO LÍQUIDO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'PESO BRUTO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'VALOR VENDA';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'MODALIDADE';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'INC.FCP';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'DUMPING';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CAMEX';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'ENTRADA ST';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'MATÉRIA PRIMA';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'RECICLAVEL';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'REQUER LI';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'ORGÃO ANUENTE';

          mPlanilha.Range['A3','AL3'].HorizontalAlignment := 3;
          mPlanilha.Range['A3','AL3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','AL3'].Font.Size           := 8;

          mLinha := 4;

          While (not tProdutos.Eof) and (not Funcoes.Cancelado) do begin
                mPlanilha.Range['A'+InttoStr(mLinha),'C'+InttoStr(mLinha)].VerticalAlignment  := 1;
                mPlanilha.Range['D'+InttoStr(mLinha),'AK'+InttoStr(mLinha)].VerticalAlignment := 3;
                mPlanilha.Range['C'+InttoStr(mLinha),'C'+InttoStr(mLinha)].ColumnWidth        := 80;
                mPlanilha.Range['C'+InttoStr(mLinha),'C'+InttoStr(mLinha)].WrapText           := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'AK'+InttoStr(mLinha)].Font.Size         := 9;

                mCol := 1;
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Codigo').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Codigo_Fabricante').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Fornecedor').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Fornecedor_Nome').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := Trim(tProdutos.FieldByName('Descricao').AsString);
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := Trim(tProdutos.FieldByName('Descricao_Ingles').AsString);
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Detalhe_Especifico').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Linha').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := ''''+tProdutos.FieldByName('GTIN').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := ''''+tProdutos.FieldByName('GTIN_Unidade').AsString;
                mPlanilha.Range['I'+InttoStr(mLinha),'J'+InttoStr(mLinha)].HorizontalAlignment := 2;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Tabela').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Fabricante').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('NCM').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Unidade').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Quantidade_Unidade').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Valor_Entrada').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Valor_ME').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Aliquota_IPI').AsFloat;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Valor_IPI').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Aliquota_II').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Aliquota_PIS').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Reducao_PIS').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Aliquota_COFINS').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Reducao_COFINS').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Reducao_COFINS').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('ICMS_Reducao').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Peso_Liquido').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Peso_Bruto').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Valor_Venda').Value;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Modalidade_Desc').AsString;
                inc(mCol);

                if tProdutos.FieldByName('FCP').AsBoolean           then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                if tProdutos.FieldByName('Dumping').AsBoolean       then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                if tProdutos.FieldByName('CAMEX').AsBoolean         then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                if tProdutos.FieldByName('Entrada_ST').AsBoolean    then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                if tProdutos.FieldByName('Materia_Prima').AsBoolean then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                if tProdutos.FieldByName('Reciclavel').AsBoolean    then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                if tProdutos.FieldByName('Requer_LI').AsBoolean     then mPlanilha.Cells[mLinha,mCol] := 'S' else mPlanilha.Cells[mLinha,mCol] := 'N';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Orgao_Nome').AsString;

                mCol := 15;
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '#.##0,000_);(#.##0,000)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '#.##0,00_);(#.##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '#.##0,00_);(#.##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '##0,00_);(##0,00)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '#.##0,000_);(#.##0,000)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '#.##0,000_);(#.##0,000)';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol].NumberFormat := '#.##0,0000_);(#.##0,0000)';

                tProdutos.Next;
                Inc(mLinha);

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          mPlanilha.Columns.Autofit;
          mPlanilha.Rows.Autofit;

          //Fecha o Excel.
          If Funcoes.Cancelado = true then begin
             Abort;
             mPlanilha.Free;
             mPlanilha.Destroy;
          End;

          mPlanilha.Cells[1,01]                  := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
          mPlanilha.Range['A1','A1'].Font.Size   := 16;
          mPlanilha.Range['A1','A1'].Font.Bold   := true;
//          mPlanilha.Range['A1','AL1'].Mergecells := True;
          mPlanilha.Range['A1','AL1'].HorizontalAlignment := 1;

          mPlanilha.Cells[2,01] := 'Cadastro de Produtos (Cliente '+cCliente.Text+')';
          mPlanilha.Range['A2','A2'].Font.Size            := 12;
//          mPlanilha.Range['A2','AL2'].Mergecells          := True;
          mPlanilha.Range['A2','AL2'].HorizontalAlignment := 1;

          Janela_Processamento.Close;
          mPlanilha.Visible := true;
     End;
end;

// Gera Planilha simplificada para despacho.
procedure TImpressao_Cadastros_Produtos.ExportaEXCELSim;
var
   mPlanilha: Variant;
   mLinha
  ,mCol: Integer;
begin
     With Dados do begin
          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tProdutos.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
          Janela_Processamento.Show;

          mPlanilha := CreateOleObject('Excel.Application');

          mPlanilha.WorkBooks.add(1);
          mPlanilha.Visible := false;

          mPlanilha.Range['A3','L3'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A3','L3'].Interior.Pattern  := 1;
          mPlanilha.Range['A3','L3'].Font.Bold         := true;
          mPlanilha.Range['A3','L3'].Font.Color        := clBlack;
          mPlanilha.Range['A3','L3'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A3','L3'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A3','L3'].Borders.Color     := RGB(0,0,0);

          mCol := 1;
          mPlanilha.Cells[3, mCol] := 'CÓDIGO INTERNO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO FABRICA';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'DESCRIÇÃO';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'NCM';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'UNIDADE';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'QUANTIDADE';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'FOB TOTAL';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'PESO TOTAL';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'FABRICANTE';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO DE BARRAS (CAIXA)';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO DE BARRAS (UNIDADE)';
          inc(mCol);
          mPlanilha.Cells[3, mCol] := 'CÓDIGO SKU';
          inc(mCol);

          mPlanilha.Range['A3','L3'].HorizontalAlignment := 3;
          mPlanilha.Range['A3','L3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','L3'].Font.Size           := 8;

          mLinha := 4;

          While (not tProdutos.Eof) and (not Funcoes.Cancelado) do begin
                mCol := 1;
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Codigo').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Codigo_Fabricante').AsString;
                inc(mCol);
                mPlanilha.cells[mLinha, mCol] := WrapText(Trim(EliminaEspaco(tProdutos.FieldByName('Descricao').AsString)), 110);
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('NCM').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Unidade').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := '';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := '';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := '';
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := tProdutos.FieldByName('Fabricante_Nome').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := ''''+tProdutos.FieldByName('GTIN').asstring;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := ''''+tProdutos.FieldByName('GTIN_Unidade').AsString;
                inc(mCol);
                mPlanilha.Cells[mLinha,mCol] := ''''+tProdutos.FieldByName('Codigo_SKU').AsString;
                inc(mCol);

                tProdutos.Next;
                Inc(mLinha);

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          mPlanilha.Columns.Autofit;
          mPlanilha.Rows.Autofit;

          mPlanilha.Cells[1, 3].ColumnWidth := 100;

          //Fecha o Excel.
          If Funcoes.Cancelado = true then begin
             Abort;
             mPlanilha.Free;
             mPlanilha.Destroy;
          End;

          mPlanilha.Cells[1,01]                  := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
          mPlanilha.Range['A1','A1'].Font.Size   := 16;
          mPlanilha.Range['A1','A1'].Font.Bold   := true;
          mPlanilha.Range['A1','L1'].Mergecells  := True;
          mPlanilha.Range['A1','L1'].HorizontalAlignment := 3;

          mPlanilha.Cells[2,01] := 'Cadastro de Produtos (Cliente '+cCliente.Text+')';
          mPlanilha.Range['A2','A2'].Font.Size           := 12;
          mPlanilha.Range['A2','L2'].Mergecells          := True;
          mPlanilha.Range['A2','L2'].HorizontalAlignment := 3;

          Janela_Processamento.Close;
          mPlanilha.Visible := true;
     End;
end;

procedure TImpressao_Cadastros_Produtos.SpeedButton1Click(Sender: TObject);
var
    mCodigo : WideString;
    mNumeros: WideString;
begin
     mNumeros := Trim(cNumeros.Text)+',';
     With Dados do begin
          While Trim(mNumeros) <> '' do begin
                mCodigo  := Copy(mNumeros, 1, Pos(',', mNumeros));
                mNumeros := Trim(RemoveCaracter(mCodigo, '', mNumeros));
                mCodigo  := Trim(RemoveCaracter(',', '', mCodigo));

                If mCodigo <> '' then begin
                   Produtos.Locate('Codigo', StrtoInt(mCodigo), [loCaseInsensitive]);
                   Produtos.Edit;
                            ProdutosSelecionado.Value := not ProdutosSelecionado.Value;
                   Produtos.Post;
                End;
          End;
     End;
end;

procedure TImpressao_Cadastros_Produtos.GradeCellClick(Column: TColumn);
begin
      With Dados do begin
           Produtos.Edit;
                    ProdutosSelecionado.Value := not ProdutosSelecionado.Value;
           Produtos.Post;
      End;
end;

procedure TImpressao_Cadastros_Produtos.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do begin
          If (Column.FieldName = 'Selecionado') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  if (Produtos.FieldByName('Selecionado').Value = True) then
                     ImageList1.GetBitmap(11, Icon)
                  else
                     ImageList1.GetBitmap(10, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
      End;
end;

procedure TImpressao_Cadastros_Produtos.bSelTodosClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('UPDATE Produtos SET Selecionado = 1');
           Produtos.SQL.Add('WHERE(Codigo IS NOT NULL)');
           if trim(cTipo.Text) <> '' then begin
              Produtos.SQL.Add('AND (Tipo = :pTipo)');
              Produtos.ParamByName('pTipo').AsInteger := TipoProduto.FieldByName('Codigo').AsInteger;
           End;
           If trim(cTipoSPED.text) <> '' then begin
              Produtos.SQL.Add('AND (Tipo_Item = :pTipoSPED)');
              Produtos.ParamByName('pTipoSPED').AsInteger := TipoItem.FieldByName('Codigo').AsInteger;
           End;
           If trim(cUnidade.text) <> '' then begin
              Produtos.SQL.Add('AND (Unidade = :pUnidade)');
              Produtos.ParamByName('pUnidade').AsString := Unidades.FieldByName('Codigo').AsString;
           End;
           If trim(cClasseIPI.text) <> '' then begin
              Produtos.SQL.Add('AND (ClasseEnquadra_IPI = :pClasse)');
              Produtos.ParamByName('pClasse').AsString := ClasseIPI.FieldByName('Classe').AsString;
           End;
           If Trim(cNCM.Text) <> '' then begin
              Produtos.SQL.Add('AND (NCM = :pNCM)');
              Produtos.ParamByName('pNCM').AsString := cNCM.Text;
           End;
           If Trim(cDescricao.Text) <> '' then begin
              Produtos.SQL.Add('AND (Descricao LIKE '+QuotedStr('%'+cDescricao.Text+'%')+')' );
           End;
           If Trim(cFornecedor.Text) <> '' then begin
              Produtos.SQL.Add('AND (Fornecedor = :pFornecedor)' );
              Produtos.ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.AsInteger;
           End;
           If Trim(cCliente.Text) <> '' then begin
              Produtos.SQL.Add('AND (Cliente = :pCliente)' );
              Produtos.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           End;
           Produtos.Execute;
           FiltraProdutos;
      End;
end;

procedure TImpressao_Cadastros_Produtos.bDesTodosClick(Sender: TObject);
begin
      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('UPDATE Produtos SET Selecionado = 0');
           Produtos.Execute;
           FiltraProdutos;
      End;
end;

procedure TImpressao_Cadastros_Produtos.cPesquisaChange(Sender: TObject);
begin
      If Dados.Produtos.Locate('Codigo', cPesquisa.Text, [loCaseInsensitive]) = False then begin
         If Dados.Produtos.Locate('Codigo_Fabricante', cPesquisa.Text, [loCaseInsensitive]) = False then begin
            If Dados.Produtos.Locate('Descricao', cPesquisa.Text, [loCaseInsensitive, loPartialKey]) = false then begin
               tPesquisa.SQL.Clear;
               tPesquisa.SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
               tPesquisa.Open;
               Dados.Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
            end;
         End;
      End;
end;

procedure TImpressao_Cadastros_Produtos.FiltraProdutos;
begin
      With Dados, dmFiscal do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo IS NOT NULL)');
           If cTipo.Text <> '' then begin
              Produtos.SQL.Add('AND (Tipo = :pTipo)');
              Produtos.ParamByName('pTipo').AsInteger := TipoProduto.FieldByName('Codigo').AsInteger;
           End;
           If cTipoSPED.text <> '' then begin
              Produtos.SQL.Add('AND (Tipo_Item = :pTipoSPED)');
              Produtos.ParamByName('pTipoSPED').AsInteger := TipoItem.FieldByName('Codigo').AsInteger;
           End;
           If cUnidade.KeyValue <> '' then begin
              Produtos.SQL.Add('AND (Unidade = :pUnidade)');
              Produtos.ParamByName('pUnidade').AsString := Unidades.FieldByName('Codigo').AsString;
           End;
           If cClasseIPI.KeyValue <> '' then begin
              Produtos.SQL.Add('AND (ClasseEnquadra_IPI = :pClasse)');
              Produtos.ParamByName('pClasse').AsString := ClasseIPI.FieldByName('Classe').AsString;
           End;
           If Trim(cNCM.Text) <> '' then begin
              Produtos.SQL.Add('AND (NCM = :pNCM)');
              Produtos.ParamByName('pNCM').AsString := cNCM.Text;
           End;
           If Trim(cDescricao.Text) <> '' then begin
              Produtos.SQL.Add('AND (Descricao LIKE '+QuotedStr('%'+cDescricao.Text+'%')+')' );
           End;
           If Trim(cFornecedor.Text) <> '' then begin
              Produtos.SQL.Add('AND (Fornecedor = :pFornecedor)' );
              Produtos.ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.AsInteger;
           End;
           If Trim(cCliente.Text) <> '' then begin
              Produtos.SQL.Add('AND (Cliente = :pCliente)' );
              Produtos.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           End;
           Produtos.SQL.Add('ORDER BY Codigo');
           Produtos.Open;
      End;
end;

procedure TImpressao_Cadastros_Produtos.bFiltrarClick(Sender: TObject);
begin
     FiltraProdutos;
end;

end.
