unit frmImpressao_ProdutosVendidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppMemo, ppPrnabl,
  ppReport, ppDBPipe, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, Funcoes, Buttons, INIFIles, ComObj, CheckLst,
  RxCurrEdit, RxToolEdit, ppDesignLayer, ppStrtch, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_ProdutosVendidos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    tItens: TMSQuery;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    rProdutosVendidos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText12: TppDBText;
    ppDBText21: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppParameterList1: TppParameterList;
    dstItens: TDataSource;
    cCodigoProduto: TCurrencyEdit;
    cANP: TCheckBox;
    cExcel: TCheckBox;
    cZebrado: TCheckBox;
    cReciclavel: TCheckBox;
    lFaixa: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape7: TppShape;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    StaticText3: TStaticText;
    cCliente: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cEstado: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppVariable1: TppVariable;
    ppDBCalc2: TppDBCalc;
    StaticText5: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    bPesquisaCEP: TSpeedButton;
    tPesquisa: TMSQuery;
    cTipo: TRadioGroup;
    StaticText7: TStaticText;
    cCFOP: TRxDBLookupCombo;
    StaticText8: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    cFinanceiro: TCheckBox;
    lPeriodo: TppMemo;
    cRamoAtividade: TCheckListBox;
    StaticText10: TStaticText;
    bSelecionar: TBitBtn;
    bDesmarcar: TBitBtn;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText9: TStaticText;
    cTipoProd: TRxDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cCodigoProdutoExit(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cTipoClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: WideString;
  end;

var
  Impressao_ProdutosVendidos: TImpressao_ProdutosVendidos;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProdutosVendidos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProdutosVendidos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProdutosVendidos.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PRODUTOSVENDIDOS', 'DataIni'    , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PRODUTOSVENDIDOS', 'DataFim'    , cDataFim.Date);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Produto'    , cCodigoProduto.AsInteger);

      If cCliente.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Cliente', cCliente.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Cliente', 0);
         
      If cFornecedor.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Fornecedor', cFornecedor.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Fornecedor', 0);

      If cTipoProd.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'TipoProduto', cTipoProd.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'TipoProduto', 0);

      aINI.WriteString ('IMPRESSAO_PRODUTOSVENDIDOS', 'Estado'     , cEstado.Text);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Zebrado'    , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Excel'      , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Reciclavel' , cReciclavel.Checked);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'ANP'        , cANP.Checked);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Tipo'       , cTipo.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Financeiro' , cFinanceiro.Checked);
      If cTipoNota.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'TipoNota', cTipoNota.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'TipoNota', 0);
      If cCFOP.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'CFOP', cCFOP.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'CFOP', 0);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProdutosVendidos.Release;
      Impressao_ProdutosVendidos := nil;
end;

procedure TImpressao_ProdutosVendidos.bImprimirClick(Sender: TObject);
Var
   i: Integer;
   cRamos: String;
begin
       lPeriodo.Lines.Clear;

       tItens.SQL.Clear;
       tItens.SQL.Add('SELECT NI.Codigo_Mercadoria,');
       tItens.SQL.Add('       Descricao = CASE WHEN CHARINDEX(''<{'', NI.Descricao_Mercadoria) > 0 THEN');
       tItens.SQL.Add('                        CAST(SUBSTRING(NI.Descricao_Mercadoria, 1, CHARINDEX(''<{'', NI.Descricao_Mercadoria)-1 ) AS VARCHAR(5000))');
       tItens.SQL.Add('                   ELSE');
       tItens.SQL.Add('                        CAST(NI.Descricao_Mercadoria AS VARCHAR(5000))');
       tItens.SQL.Add('                   END,');
       tItens.SQL.Add('       Cliente = NF.Destinatario_Nome,');
       tItens.SQL.Add('       Estado  = NF.Destinatario_Estado,');
       tItens.SQL.Add('       NI.Quantidade,');
       tItens.SQL.Add('       NI.Processo,');
       tItens.SQL.Add('       NI.Nota,');
       tItens.SQL.Add('       NI.Data,');
       tItens.SQL.Add('       NI.Lucro,');
       tItens.SQL.Add('       NI.Valor_Total,');
       tItens.SQL.Add('       Ramo = (SELECT Ramo_Atividade FROM Clientes WHERE(Clientes.Codigo = NF.Cliente_Codigo))');
       tItens.SQL.Add('INTO   #Temp');
       tItens.SQL.Add('FROM   NotasItens NI, NotasFiscais NF, Produtos PD');
       tItens.SQL.Add('WHERE  (NI.Saida_Entrada = 1) AND (NF.Cancelada <> 1) AND (ISNULL(NI.NFe_Denegada, 0) = 0) AND (NF.Numero = NI.Nota) AND (NF.Data_Emissao = NI.Data)');
       tItens.SQL.Add('AND    (PD.Codigo = NI.Codigo_Mercadoria)');

       If cFinanceiro.Checked then begin
          tItens.SQL.Add(' AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 1');
       End;   
       If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
          tItens.SQL.Add('     AND (NI.Data BETWEEN :pDataIni AND :pDataFim)');
          tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
          tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
          lPeriodo.Lines.Text := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text+ '  ';
       End;
       If cCodigoProduto.Value > 0 then begin
          tItens.SQL.Add('     AND (NI.Codigo_Mercadoria = :pCodigo)');
          tItens.ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
       End;
       If Trim(cCliente.Text) <> '' then begin
          tItens.SQL.Add('     AND (NF.Cliente_Codigo = :pCliente)');
          tItens.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
       End;
       If Trim(cFornecedor.Text) <> '' then begin
          tItens.SQL.Add('     AND ((SELECT Fornecedor FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) = :pFornecedor)');
          tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
          lPeriodo.Lines.Text := lPeriodo.Lines.Text + 'Produtos do Fornecedor '+cFornecedor.Text;
       End;
       If Trim(cEstado.Text) <> '' then begin
          tItens.SQL.Add('     AND (NF.Destinatario_Estado = :pEstado)');
          tItens.ParamByName('pEstado').AsString := Dados.EstadosCodigo.AsString;
          lPeriodo.Lines.Text := lPeriodo.Lines.Text + 'Estado '+cEstado.Text;
       End;
       If cANP.Checked = true then begin
          tItens.SQL.Add('     AND ((SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = NotasItens.Codigo_Mercadoria)) <> '''')');
          lPeriodo.Lines.Text:= lPeriodo.Lines.Text+ '/ Com Código da ANP  ';
       End;
       If cReciclavel.Checked = true then begin
          tItens.SQL.Add('     AND ((SELECT Reciclavel FROM Produtos WHERE(Codigo = NotasItens.Codigo_Mercadoria)) = 1)');
          lPeriodo.Lines.Text:= lPeriodo.Lines.Text+ '/ Apenas Recicláveis  ';
       End;
       If cTipo.ItemIndex = 0 then begin
          tItens.SQL.Add('     AND (NF.Destinatario_Juridica <> 1)');
          lPeriodo.Lines.Text := lPeriodo.Lines.Text+ ' - Pessoa Física'+cFornecedor.Text;
       End;
       If cTipo.ItemIndex = 1 then begin
          tItens.SQL.Add('     AND (NF.Destinatario_Juridica = 1)');
          lPeriodo.Lines.Text := lPeriodo.Lines.Text + ' - Pessoa Jurídica'+cFornecedor.Text;
       End;
       If (Trim(cTipoNota.Text) <> '') then begin
          tItens.SQL.Add('     AND (NI.Tipo_Nota = :pTipoNota)');
          tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
          lPeriodo.Lines.Text := lPeriodo.Lines.Text + ' Tipo Nota: '+cTipoNota.Text;
       End;
       If (Trim(cCFOP.Text) <> '') then begin
          tItens.SQL.Add('     AND (NF.Natureza_Codigo = :pNatureza)');
          tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
          lPeriodo.Lines.Text := lPeriodo.Lines.Text + ' CFOP: '+cCFOP.Text;
       End;
       If Trim(cTipoProd.Text) <> '' then begin
          tItens.SQL.Add('  AND PD.Tipo = '+Dados.TipoProdutoCodigo.AsString);
          lPeriodo.Lines.Text := lPeriodo.Lines.Text+ ' Tipo de Produto: '+Dados.TipoProdutoDescricao.AsString;
       end;

       cRamos := '';
       For i := 0 to cRamoAtividade.Items.Count-1 do begin
           If cRamoAtividade.Checked[i] then begin
              Dados.RamoAtividade.Locate('Descricao', cRamoAtividade.Items[i], [loCaseInsensitive]);
              cRamos := cRamos + Dados.RamoAtividadeCodigo.AsString + ',';
           End;
       End;
       If (Trim(cRamos) <> '') then begin
          cRamos := '('+Copy(cRamos, 1, Length(cRamos)-1)+')';
          tItens.SQL.Add('     AND (SELECT Ramo_Atividade FROM Clientes WHERE(Codigo = NF.Cliente_Codigo)) IN'+cRamos);
       End;

       tItens.SQL.Add('SELECT Codigo_Mercadoria,');
       tItens.SQL.Add('       Descricao,');
       tItens.SQL.Add('       Cliente = (SELECT Destinatario_Nome   FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)),');
       tItens.SQL.Add('       Estado  = (SELECT Destinatario_Estado FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)),');
       tItens.SQL.Add('       SUM(Quantidade) AS Quantidade,');
       tItens.SQL.Add('       Processo,');
       tItens.SQL.Add('       Nota,');
       tItens.SQL.Add('       Data,');
       tItens.SQL.Add('       Lucro,');
       tItens.SQL.Add('       Valor_Total');
       tItens.SQL.Add('FROM  #Temp');
       tItens.SQL.Add('GROUP BY Codigo_Mercadoria, Descricao, Cliente, Estado, Processo, Nota, Data, Lucro, Valor_Total');
       tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Estado, Cliente, Data, Nota');
       tItens.SQL.Add('DROP TABLE #Temp');
       //tItens.SQl.SaveToFile('c:\temp\Produtos_Vendidos.SQL');
       tItens.Open;

       lFaixa.Visible := cZebrado.Checked;

       With Dados do begin
            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
            Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;
       End;

       If tItens.RecordCount > 0 then begin
          If cExcel.Checked = false then begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              rProdutosVendidos.Print;
              rProdutosVendidos.Reset;
          end else begin
              ExportaExcel;
          End;
       end else begin
          ShowMessage('Não há dados para o relatório solicitado!');
       End;
end;

procedure TImpressao_ProdutosVendidos.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then begin
         lFaixa.Visible := not lFaixa.Visible;
      End;   
end;

procedure TImpressao_ProdutosVendidos.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_PRODUTOSVENDIDOS', 'DataIni'    , Date);
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_PRODUTOSVENDIDOS', 'DataFim'    , Date);
      cProduto.KeyValue     := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Produto'    , 0);
      cCliente.KeyValue     := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Cliente'    , 0);
      cFornecedor.KeyValue  := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Fornecedor' , 0);
      cEstado.KeyValue      := aINI.ReadString ('IMPRESSAO_PRODUTOSVENDIDOS', 'Estado'     , '');
      cZebrado.Checked      := aINI.ReadBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Zebrado'    , false);
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Excel'      , false);
      cReciclavel.Checked   := aINI.ReadBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Reciclavel' , false);
      cANP.Checked          := aINI.ReadBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'ANP'        , false);
      cTipo.ItemIndex       := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'Tipo'       , 2);
      cFinanceiro.Checked   := aINI.ReadBool   ('IMPRESSAO_PRODUTOSVENDIDOS', 'Financeiro' , true);
      cTipoNota.KeyValue    := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'TipoNota'   , 0);
      cCFOP.KeyValue        := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'CFOP'       , 0);
      cTipoProd.KeyValue    := aINI.ReadInteger('IMPRESSAO_PRODUTOSVENDIDOS', 'TipoProduto', 0);
      aINI.Free;

      With Dados do begin
           Configuracao.Open;
           
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Ativo = 1) ORDER BY Nome');
           Fornecedores.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Saida_Entrada = 1 AND Ativo = 1');
           TipoNota.Open;

           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE Ativo = 1 AND Codigo BETWEEN :pIni AND :pFim');
           Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.AsString;
           Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.AsString;
           Natureza.Open;

           RamoAtividade.First;
           While not RamoAtividade.Eof do begin
                 cRamoAtividade.Items.Add(RamoAtividadeDescricao.AsString);
                 RamoAtividade.Next;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProdutosVendidos.cCodigoProdutoExit(Sender: TObject);
begin
      With Dados do begin
           If Produtos.Locate('Codigo', cCodigoProduto.AsInteger, [loCaseInsensitive]) = true then
              cProduto.KeyValue := ProdutosCodigo.Value
           else
              cProduto.KeyValue := 0;
      End;
end;

procedure TImpressao_ProdutosVendidos.cProdutoChange(Sender: TObject);
begin
     If Trim(cProduto.Text) <> '' then cCodigoProduto.Value := Dados.ProdutosCodigo.AsInteger;
end;

procedure TImpressao_ProdutosVendidos.BitBtn1Click(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProduto.ClearValue;
      cCliente.ClearValue;
      cFornecedor.ClearValue;
      cEstado.ClearValue;
      cExcel.Checked   := false;
      cZebrado.Checked := true;
      cTipoProd.ClearValue;
end;

procedure TImpressao_ProdutosVendidos.ppVariable1Calc(Sender: TObject;var Value: Variant);
begin
     Value := tItens.FieldByName('Valor_Total').AsCurrency / tItens.FieldByName('Quantidade').AsFloat;
end;

procedure TImpressao_ProdutosVendidos.bPesquisaCEPClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      mPesquisa := InputBox('Pesquisar Produto', 'Codigo/Descrição:', mPesquisa);
      If Dados.Produtos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         If Dados.Produtos.Locate('Codigo_Fabricante', mPesquisa, [loCaseInsensitive]) = False then begin
            If Dados.Produtos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]) = false then begin
               tPesquisa.SQL.Clear;
               tPesquisa.SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+mPesquisa+'%')+')');
               tPesquisa.Open;
               Dados.Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
            end;
         End;
      End;
      cProduto.DisplayValue := Dados.ProdutosDescricao_Reduzida.AsString;
      cCodigoProduto.Value  := Dados.ProdutosCodigo.AsInteger;
      Screen.Cursor := crDefault;
end;


// Envia informações para o excel.
procedure TImpressao_ProdutosVendidos.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mTotal    : Real;
   mZebra    : Boolean;
   mProduto  : Integer;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tItens.RecordCount;
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

       mPlanilha.Cells[3,01] := 'CLIENTE';
       mPlanilha.Cells[3,02] := 'UF';
       mPlanilha.Cells[3,03] := 'QDTE';
       mPlanilha.Cells[3,04] := 'PROCESSO';
       mPlanilha.Cells[3,05] := 'Nº NOTA';
       mPlanilha.Cells[3,06] := 'EMISSÃO';
       mPlanilha.Cells[3,07] := '% LUCRO';
       mPlanilha.Cells[3,08] := 'UNITÁRIO';
       mPlanilha.Cells[3,09] := 'TOTAL';

       mPlanilha.Range['A3','I3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','I3'].VerticalAlignment   := 2;

       mTotal   := 0;
       mLinha   := 4;
       mZebra   := false;
       mProduto := 0;

       While (not titens.Eof) and (not Funcoes.Cancelado) do  Begin
             If tItens.FieldByName('Codigo_Mercadoria').AsInteger <> mProduto then begin
                mProduto := titens.FieldByName('Codigo_Mercadoria').AsInteger;

                mPlanilha.Cells[mLinha,01] := tItens.FieldByName('Codigo_Mercadoria').AsString+' - '+Trim(tItens.FieldByName('Descricao').AsString);
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Mergecells        := True;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color    := RGB(250, 192, 144);
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Pattern  := 1;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Font.Color        := clBlack;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].WrapText          := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].VerticalAlignment := 1;

                Inc(mLinha);
             End;

             mPlanilha.Cells[mLinha,01] := tItens.FieldByName('Cliente').AsString;
             mPlanilha.Cells[mLinha,02] := tItens.FieldByName('Estado').AsString;
             mPlanilha.Cells[mLinha,03] := tItens.FieldByName('Quantidade').AsFloat;
             mPlanilha.Cells[mLinha,04] := tItens.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,05] := tItens.FieldByName('Nota').AsInteger;
             mPlanilha.Cells[mLinha,06] := tItens.FieldByName('Data').Value;
             mPlanilha.Cells[mLinha,07] := tItens.FieldByName('Lucro').AsFloat;
             mPlanilha.Cells[mLinha,08] := (tItens.FieldByName('Valor_Total').AsCurrency / titens.FieldByName('Quantidade').AsFloat);
             mPlanilha.Cells[mLinha,09] := tItens.FieldByName('Valor_Total').AsCurrency;

             mTotal := mTotal + tItens.FieldByName('Valor_Total').AsCurrency;

             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             titens.Next;
             Inc(mLinha);
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

       mPlanilha.Cells[mLinha,06] := 'TOTAIS';
       mPlanilha.Cells[mLinha,06].HorizontalAlignment := 3;
       mPlanilha.Range['G3','P3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,09] := mTotal;

       mPlanilha.Range['F'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['F'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['F'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['F'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['F'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Weight    := 2;
       mPlanilha.Range['F'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       mPlanilha.Range['A1','A1'].Font.Size           := 14;
       mPlanilha.Range['A1','A1'].Font.Bold           := true;
       mPlanilha.Range['A1','I1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','I1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','I1'].Mergecells          := True;
       mPlanilha.Range['A2','I2'].Mergecells          := True;
       mPlanilha.Range['A2','I2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','I2'].VerticalAlignment   := 2;

       mPlanilha.Cells[2,01]                := lPeriodo.Caption;
       mPlanilha.Range['A2','A2'].Font.Size := 10;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;

end;


procedure TImpressao_ProdutosVendidos.cTipoClick(Sender: TObject);
begin
      With Dados do begin
           Clientes.SQL.Clear;
           If cTipo.ItemIndex = 0 then
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) AND (LTRIM(RTRIM(CNPJ)) = '''') ORDER BY Nome');
           If cTipo.ItemIndex = 1 then
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) AND (LTRIM(RTRIM(CNPJ)) <> '''') ORDER BY Nome');
           If cTipo.ItemIndex = 2 then
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) ORDER BY Nome');
           Clientes.Open;
      End;
end;

procedure TImpressao_ProdutosVendidos.bSelecionarClick(Sender: TObject);
Var
    i: integer;
begin
      For i := 0 to cRamoAtividade.Items.Count-1 do begin
          cRamoAtividade.Checked[i] := true;
      End;
end;

procedure TImpressao_ProdutosVendidos.bDesmarcarClick(Sender: TObject);
Var
    i: integer;
begin
      For i := 0 to cRamoAtividade.Items.Count-1 do begin
          cRamoAtividade.Checked[i] := false;
      End;
end;

end.
