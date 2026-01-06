unit frmImpressao_Faturamento_Analitico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, Vcl.Mask, RxToolEdit, RxCtrls,
  Data.DB, MemDS, DBAccess, MSAccess, RxCurrEdit, ComObj, IniFiles, MaskUtils, Vcl.OleServer, Excel2000, ExcelXP;

type
  TImpressao_Faturamento_Analitico = class(TForm)
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
    cNatureza: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cTipo: TRadioGroup;
    cCliente: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText8: TStaticText;
    cCanceladas: TCheckBox;
    tItens: TMSQuery;
    StaticText6: TStaticText;
    cProduto: TCurrencyEdit;
    StaticText4: TStaticText;
    cNCM: TCurrencyEdit;
    cEmissao: TRadioGroup;
    ExcelApplication1: TExcelApplication;
    tEmpresas: TMSQuery;
    cConsolidar: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
    var
    mEmpresa:string;
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_Analitico: TImpressao_Faturamento_Analitico;

implementation

{$R *.dfm}

uses frmDados, Funcoes, frmMenu_Principal, frmJanela_Processamento;

procedure TImpressao_Faturamento_Analitico.bImprimirClick(Sender: TObject);
var
  mSQLMatriz
 ,mSQLFilial: widestring;
begin
      Screen.Cursor := crSQLWait;
      with Dados, tItens do begin
           sql.Clear;
           if cEmissao.itemindex <> 1 then begin
              sql.Add('SELECT Nota');
              sql.Add('      ,Data');
              sql.Add('      ,Chave                  = (select NFe_cNF                    from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Empresa                = '+quotedstr(mEmpresa));
              sql.Add('      ,Serie                  = (select Serie                      from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Destinatario_Nome      = (select Destinatario_Nome          from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Destinatario_CNPJ      = (select Destinatario_CNPJ_CPF      from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Destinatario_Estado    = (select Destinatario_Estado        from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Destinatario_Municipio = (select Destinatario_MunicipioNome from NotasFiscais NF WHERE NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Valor_TotalNota        = (select Valor_TotalNota            from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada)');
              sql.Add('      ,Natureza_Desc          = (select Descricao_NF               from Cybersoft_Cadastros.dbo.Natureza where Codigo = NI.Natureza_Codigo)');
              sql.Add('      ,NI.Natureza_Codigo');
              sql.Add('      ,Codigo_Mercadoria');
              sql.Add('      ,Codigo_Fabricante');
              sql.Add('      ,SKU = (select Codigo_SKU from Produtos where Codigo = Codigo_Mercadoria)');
              sql.Add('      ,Descricao_Mercadoria = ltrim(rtrim(cast(NI.Descricao_Mercadoria as varchar(500))))');
              sql.Add('      ,NCM');
              sql.Add('      ,Unidade_Medida');
              sql.Add('      ,Quantidade = case when Finalidade_Mercadoria = 2 then Quantidade * -1 else Quantidade end');
              sql.Add('      ,Valor_Unitario');
              sql.Add('      ,Valor_Total');
              sql.Add('      ,Aliquota_ICMSOper');
              sql.Add('      ,Valor_ICMSOper');
              sql.Add('      ,Valor_ICMSSub');
              sql.Add('      ,Valor_BCIPI');
              sql.Add('      ,Aliquota_IPI');
              sql.Add('      ,Valor_IPI = (Valor_IPI * Quantidade)');
              sql.Add('      ,Aliquota_PIS');
              sql.Add('      ,Valor_PIS');
              sql.Add('      ,Aliquota_COFINS');
              sql.Add('      ,Valor_COFINS');
              sql.Add('      ,Desconto_Valor');
              sql.Add('      ,Royalty = Valor_Total - Valor_ICMSOper - Valor_PIS - Valor_COFINS');
              sql.Add('      ,Emissao = ''POPRIA'' ');
              sql.Add('      ,Cancelada');
              sql.Add('from  NotasItens NI');
              sql.Add('where Nota is not null');

              if cCanceladas.Checked then begin
                 tItens.SQL.Add('  and NI.Cancelada <> 1');
                 tItens.SQL.Add('  and NI.Nfe_Denegada <> 1');
              end;
              if (not DataLimpa(cDataIni.text)) and (not DataLimpa(cDataFim.text)) then begin
                 tItens.SQL.Add('  and NI.Data between :pDataIni AND :pDataFim');
                 tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
                 tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
              end;
              if Trim(cCliente.Text) <> '' then begin
                 sql.Add('  and (select Cliente_Codigo from NotasFiscais NF where NF.Numero = NI.Nota and NF.Data_Emissao = NI.Data and NF.Saida_Entrada = NI.Saida_Entrada) = :pCliente');
                 tItens.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
              end;
              if Trim(cFornecedor.Text) <> '' then begin
                 tItens.SQL.Add('  and (select Fornecedor_Codigo from NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data) = :pFornecedor)');
                 tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
              end;
              if cNatureza.Text <> '' then begin
                 tItens.SQL.Add('  and Natureza_Codigo = :pNatureza ');
                 tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
              End;
              if cProduto.Value > 0 then begin
                 tItens.SQL.Add('  and Codigo_Mercadoria = :pProduto');
                 tItens.ParamByName('pProduto').AsInteger := cProduto.AsInteger;
              end;
              if cTipo.ItemIndex < 2 then begin
                 tItens.SQL.Add('  and NI.Saida_Entrada = :pTipo');
                 tItens.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
              end;
              if cNCM.value > 0 then begin
                 tItens.SQL.Add('  and cast(NCM as int) = :pNCM');
                 tItens.ParamByName('pNCM').AsInteger := cNCM.AsInteger;
              end;
           end;
           if (cEmissao.itemindex <> 0) and (cTipo.ItemIndex <> 1) then begin
              if cEmissao.itemindex = 2 then begin
                 sql.Add('UNION ALL');
              end;
              sql.Add('select Nota');
              sql.Add('      ,Data = Data_Emissao');
              sql.Add('      ,Chave                  = (select NFe_cNF         from NotasTerceiros NF where NF.Nota = NTI.Nota and NF.Data_Emissao = NTI.Data_Emissao)');
              sql.Add('      ,Empresa                = '+quotedstr(mEmpresa));
              sql.Add('      ,Serie                  = (select Serie           from NotasTerceiros NF where NF.Nota = NTI.Nota and NF.Data_Emissao = NTI.Data_Emissao)');
              sql.Add('      ,Destinatario_Nome      = (select Nome            from Fornecedores where Codigo = NTI.Fornecedor)');
              sql.Add('      ,Destinatario_CNPJ      = (select CNPJ            from Fornecedores where Codigo = NTI.Fornecedor)');
              sql.Add('      ,Destinatario_Estado    = (select Estado          from Fornecedores where Codigo = NTI.Fornecedor)');
              sql.Add('      ,Destinatario_Municipio = (Select Municipio       from Fornecedores where Codigo = NTI.Fornecedor)');
              sql.Add('      ,Valor_TotalNota        = (select Valor_TotalNota from NotasTerceiros NF where NF.Nota = NTI.Nota and NF.Data_Emissao = NTI.Data_Emissao)');
              sql.Add('      ,Natureza_Desc          = (select Descricao_NF    from Cybersoft_Cadastros.dbo.Natureza where Codigo = NTI.Natureza_Codigo)');
              sql.Add('      ,NTI.Natureza_Codigo');
              sql.Add('      ,Codigo_Mercadoria');
              sql.Add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Codigo = Codigo_Mercadoria)');
              sql.Add('      ,SKU = (select Codigo_SKU from Produtos where Codigo = Codigo_Mercadoria)');
              sql.Add('      ,Descricao_Mercadoria = ltrim(rtrim(cast(NTI.Descricao_Mercadoria as varchar(500))))');
              sql.Add('      ,NCM');
              sql.Add('      ,Unidade_Medida');
              sql.Add('      ,Quantidade = case when (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = NTI.Referencia_Fiscal) = 2 then Quantidade * -1 else Quantidade end');
              sql.Add('      ,Valor_Unitario');
              sql.Add('      ,Valor_Liquido');
              sql.Add('      ,Aliquota_ICMSOper');
              sql.Add('      ,Valor_ICMSOper');
              sql.Add('      ,Valor_ICMSSub');
              sql.Add('      ,Valor_BCIPI');
              sql.Add('      ,Aliquota_IPI');
              sql.Add('      ,Valor_IPI = (Valor_IPI * Quantidade)');
              sql.Add('      ,Aliquota_PIS');
              sql.Add('      ,Valor_PIS');
              sql.Add('      ,Aliquota_COFINS');
              sql.Add('      ,Valor_COFINS');
              sql.Add('      ,Desconto_Valor = Valor_Desconto');
              sql.Add('      ,Royalty = Valor_Liquido - Valor_ICMSOper - Valor_PIS - Valor_COFINS');
              sql.Add('      ,Emissao = ''TERCEIROS'' ');
              sql.Add('      ,Cancelada = CAST(0 as bit)');
              sql.Add('from  NotasTerceirosItens NTI');
              sql.Add('where Nota is not null');

              if (not DataLimpa(cDataINi.text)) and (not DataLimpa(cDataFim.text)) then begin
                 tItens.SQL.Add('  and NTI.Data_Emissao between :pDataIni AND :pDataFim');
                 tItens.ParamByName('pDataIni').AsDate := cDataINI.Date;
                 tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
              end;
              if Trim(cFornecedor.Text) <> '' then begin
                 tItens.SQL.Add('  and (select Fornecedor_Codigo from NotasFiscais NF WHERE NF.Numero = NTI.Nota AND NF.Data_Emissao = NTI.Data) = :pFornecedor)');
                 tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
              end;
              if cNatureza.Text <> '' then begin
                 tItens.SQL.Add('and Natureza_Codigo = :pNatureza ');
                 tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
              End;
              if cProduto.Value > 0 then begin
                 tItens.SQL.Add('and Codigo_Mercadoria = :pProduto');
                 tItens.ParamByName('pProduto').AsInteger := cProduto.AsInteger;
              end;
              if cNCM.value > 0 then begin
                 tItens.SQL.Add('AND CAST(NCM AS INT) = :pNCM');
                 tItens.ParamByName('pNCM').AsInteger := cNCM.AsInteger;
              end;
           end;

           // Filiais.
           if cConsolidar.Checked then begin
              // Seleciona todas as filiais da empresa "MATRIZ" em uso.
              tEmpresas.SQL.Clear;
              tEmpresas.SQL.Add('select * from Empresas where Codigo <> :pEmpresa and substring(CNPJ, 1, 8) = :pCNPJ');
              tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
              tEmpresas.ParamByName('pCNPJ').AsString     := Copy(mEmpresa, 1, 8);
              tEmpresas.Open;

              mSQLMatriz := sql.Text;

              tEmpresas.First;
              while not tEmpresas.Eof do begin
                    mSQLFilial := RemoveCaracter('NotasFiscais'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'        , mSQLMatriz);
                    mSQLFilial := RemoveCaracter('NotasItens'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'          , mSQLFilial);
                    mSQLFilial := RemoveCaracter('TipoNota'            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'            , mSQLFilial);
                    mSQLFilial := RemoveCaracter('NotasTerceirosItens ', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens ', mSQLFilial);
                    mSQLFilial := RemoveCaracter('NotasTerceiros '     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros '     , mSQLFilial);
                    mSQLFilial := RemoveCaracter('ReferenciasFiscais'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais'  , mSQLFilial);
                    mSQLFilial := RemoveCaracter('Fornecedores'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Fornecedores'        , mSQLFilial);
                    mSQLFilial := RemoveCaracter('Produtos'            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Produtos'            , mSQLFilial);
                    mSQLFilial := RemoveCaracter('      ,Empresa                = '+quotedstr(mEmpresa), '      ,Empresa                = '+quotedstr(tEmpresas.FieldByName('CNPJ').asstring), mSQLFilial);

                    sql.Add('UNION ALL');
                    sql.Add(mSQLFilial);
                    tEmpresas.Next;
              end;
           end;

           //tItens.ParamByName('pEmp').Asstring := mEmpresa;
           tItens.SQL.Add('ORDER BY Empresa, Data, Nota, SKU');
           tItens.SQL.SavetoFile('c:\temp\Detalhamento_Analitico.sql');
           tItens.Open;

           ExportaEXCEL;
      end;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_Analitico.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_Faturamento_Analitico.cTipoClick(Sender: TObject);
begin
     cEmissao.ItemIndex := 0;
     cEmissao.Enabled   := cTipo.ItemIndex <> 1;
end;

procedure TImpressao_Faturamento_Analitico.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Tipo'      , cTipo.ItemIndex);
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'DataIni'   , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'DataFim'   , cDataFim.Date);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Cliente'   , iif(cCliente.KeyValue <> null, cCliente.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Fornecedor', iif(cFornecedor.KeyValue <> null, cFornecedor.KeyValue, 0));
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Natureza'  , iif(cNatureza.KeyValue <> null, cNatureza.KeyValue, ''));
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Produto'   , cProduto.AsInteger);
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'NCM'       , cNCM.Text);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Cancelada' , cCanceladas.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Consolida' , cConsolidar.Checked);
      aINI.Free;

      Impressao_Faturamento_Analitico.Release;
      Impressao_Faturamento_Analitico := nil;
end;

procedure TImpressao_Faturamento_Analitico.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      Screen.Cursor := crSQLWait;
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           mEmpresa := Empresas.FieldByName('CNPJ').asstring;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Codigo');
           Natureza.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;
      end;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date        := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'DataIni'   , 0);
      cDataFim.Date        := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'DataFim'   , 0);
      cTipo.ItemIndex      := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Tipo'      , 2);
      cCliente.KeyValue    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Cliente'   , 0);
      cFornecedor.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Fornecedor', 0);
      cNatureza.KeyValue   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Natureza'  , '');
      cProduto.Value       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Produto'   , 0);
      cCanceladas.Checked  := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Cancelada' , true);
      cNCM.Text            := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'NCM'       , '');
      cConsolidar.Checked  := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_ANALITICO', 'Consolida' , false);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_Analitico.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha
  ,LCID
  ,mNota: Integer;
  mDadosNF: boolean;
  mDescricao: widestring;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tItens.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');
      LCID                                  := GetUserDefaultLCID;  // Pega o usuário logado
      ExcelApplication1.DisplayAlerts[LCID] := false;               // Remove alertas do excel

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      mPlanilha.activewindow.displaygridlines := false;

      mPlanilha.Range['A1', 'A1'].font.Name := 'Arial Rounded MT Bold';

      mPlanilha.Cells[1,1]                 := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size := 20;
      mPlanilha.Range['A1','A1'].Font.Bold := true;
      mPlanilha.Cells[2,1]                 := 'Detalhamento dos Itens das Notas Fiscais';
      mPlanilha.Range['A2','A2'].Font.Size := 14;

      mPlanilha.Range['A1','AH1'].MergeCells          := true;
      mPlanilha.Range['A2','AH2'].MergeCells          := true;
      mPlanilha.Range['A1','AH3'].HorizontalAlignment := 3;
      mPlanilha.Range['A1','AH3'].VerticalAlignment   := 2;

      mPlanilha.Range['A3','AH3'].Interior.Color    := RGB(49, 134, 155);
      mPlanilha.Range['A3','AH3'].Interior.Pattern  := 1;
      mPlanilha.Range['A3','AH3'].Font.Bold         := true;
      mPlanilha.Range['A3','AH3'].Font.Color        := clBlack;
      mPlanilha.Range['A3','AH3'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A3','AH3'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A3','AH3'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[3,01] := 'ESTAB';
      mPlanilha.Cells[3,02] := 'EMISSÃO';
      mPlanilha.Cells[3,03] := 'CHAVE NFE';
      mPlanilha.Cells[3,04] := 'Nº NOTA';
      mPlanilha.Cells[3,05] := 'SÉRIE';
      mPlanilha.Cells[3,06] := 'DESTINATÁRIO CNPJ';
      mPlanilha.Cells[3,07] := 'DESTINATÁRIO';
      mPlanilha.Cells[3,08] := 'ESTADO';
      mPlanilha.Cells[3,09] := 'MUNICÍPIO';
      mPlanilha.Cells[3,10] := 'CFOP';
      mPlanilha.Cells[3,11] := 'CFOP DESCRIÇÃO';

      mPlanilha.Cells[3,12] := 'CÓDIGO SIS';
      mPlanilha.Cells[3,13] := 'CÓDIGO REF';
      mPlanilha.Cells[3,14] := 'CÓDIGO SKU';

      mPlanilha.Cells[3,15] := 'DESCRIÇÃO MERCADORIA';
      mPlanilha.Cells[3,16] := 'NCM';
      mPlanilha.Cells[3,17] := 'UNIDADE';
      mPlanilha.Cells[3,18] := 'QUANTIDADE';
      mPlanilha.Cells[3,19] := 'VLR UNITARIO';
      mPlanilha.Cells[3,20] := 'VLR TOTAL';
      mPlanilha.Cells[3,21] := '% ICMS';
      mPlanilha.Cells[3,22] := 'VLR ICMS';
      mPlanilha.Cells[3,23] := 'VLR ICMS ST';
      mPlanilha.Cells[3,24] := '% IPI';
      mPlanilha.Cells[3,25] := 'BC IPI';
      mPlanilha.Cells[3,26] := 'VLR IPI';
      mPlanilha.Cells[3,27] := '% PIS';
      mPlanilha.Cells[3,28] := 'VLR PIS';
      mPlanilha.Cells[3,29] := '% COFINS';
      mPlanilha.Cells[3,30] := 'VLR COFINS';
      mPlanilha.Cells[3,31] := 'DESCONTO';
      mPlanilha.Cells[3,32] := 'ROYALTY';
      mPlanilha.Cells[3,33] := 'EMISSÃO';
      mPlanilha.Cells[3,34] := 'SITUAÇÃO';

      mPlanilha.Range['A3','AH3'].Font.Size := 8;
      mPlanilha.Range['A3','AH3'].RowHeight := 20;

      mLinha := 4;
      mNota  := tItens.FieldByName('Nota').AsInteger;
      mDadosNF := true;

      While (not tItens.Eof) and (not Funcoes.Cancelado) do  Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'AG'+InttoStr(mLinha)].Font.Size := 8;
            mPlanilha.Range['A3','F'+inttostr(mLinha)].VerticalAlignment          := 2;

            if mDadosNF then begin
               mPlanilha.Range['A'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Font.Color := $000087AE;
               mPlanilha.Range['A'+inttostr(mLinha),'AH'+inttostr(mlinha)].Borders.LineStyle := 1;

               mPlanilha.Cells[mLinha,01] := FormatMaskText('##.###.###/####-##;0', tItens.FieldByName('Empresa').asstring);
               mPlanilha.Cells[mLinha,02] := tItens.FieldByName('Data').Value;
               mPlanilha.Cells[mLinha,03] := FormatMaskText('##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0', tItens.FieldByName('Chave').AsString);
               mPlanilha.Cells[mLinha,04] := tItens.FieldByName('Nota').Asstring;
               mPlanilha.Cells[mLinha,05] := tItens.FieldByName('Serie').AsString;
               mPlanilha.Cells[mLinha,06] := FormatMaskText('##.###.###/####-##;0', tItens.FieldByName('Destinatario_CNPJ').AsString);
               mPlanilha.Cells[mLinha,07] := tItens.FieldByName('Destinatario_Nome').AsString;
               mPlanilha.Cells[mLinha,08] := tItens.FieldByName('Destinatario_Estado').AsString;
               mPlanilha.Cells[mLinha,09] := tItens.FieldByName('Destinatario_Municipio').AsString;
               mPlanilha.Cells[mLinha,10] := tItens.FieldByName('Natureza_Codigo').asstring;
               mPlanilha.Cells[mLinha,11] := tItens.FieldByName('Natureza_Desc').asstring;
               mDadosNF := false;
            end else begin
               mPlanilha.Range['L'+inttostr(mLinha),'AH'+inttostr(mlinha)].Borders.LineStyle := 1;
               mPlanilha.Range['K'+InttoStr(mLinha),'AH'+InttoStr(mLinha)].Font.Color        := clBlack;
            end;

            mDescricao := StringReplace(tItens.FieldByName('Descricao_Mercadoria').asstring, #12, '', [rfReplaceAll,rfIgnoreCase]);
            mDescricao := StringReplace(mDescricao, #10, '', [rfReplaceAll,rfIgnoreCase]);
            mDescricao := StringReplace(mDescricao, #13, '', [rfReplaceAll,rfIgnoreCase]);

            mPlanilha.Cells[mLinha,12] := tItens.FieldByName('Codigo_Mercadoria').asstring;
            mPlanilha.Cells[mLinha,13] := tItens.FieldByName('Codigo_Fabricante').asstring;
            mPlanilha.Cells[mLinha,14] := tItens.FieldByName('sku').asstring;

            mPlanilha.Cells[mLinha,15] := mDescricao;
            mPlanilha.Cells[mLinha,16] := FormatMaskText('####.##.##;0', tItens.FieldByName('NCM').AsString);
            mPlanilha.Cells[mLinha,17] := tItens.FieldByName('Unidade_Medida').AsString;
            mPlanilha.Cells[mLinha,18] := tItens.FieldByName('Quantidade').Asfloat;
            mPlanilha.Cells[mLinha,19] := tItens.FieldByName('Valor_Unitario').Asfloat;
            mPlanilha.Cells[mLinha,20] := tItens.FieldByName('Valor_Total').Asfloat;
            mPlanilha.Cells[mLinha,21] := tItens.FieldByName('Aliquota_ICMSOper').Asfloat/100;
            mPlanilha.Cells[mLinha,22] := tItens.FieldByName('Valor_ICMSOper').Asfloat;
            mPlanilha.Cells[mLinha,23] := tItens.FieldByName('Valor_ICMSSub').Asfloat;
            mPlanilha.Cells[mLinha,24] := tItens.FieldByName('Aliquota_IPI').Asfloat/100;
            mPlanilha.Cells[mLinha,25] := tItens.FieldByName('Valor_BCIPI').Asfloat;
            mPlanilha.Cells[mLinha,26] := tItens.FieldByName('Valor_IPI').Asfloat;
            mPlanilha.Cells[mLinha,27] := tItens.FieldByName('Aliquota_PIS').Asfloat/100;
            mPlanilha.Cells[mLinha,28] := tItens.FieldByName('Valor_PIS').Asfloat;
            mPlanilha.Cells[mLinha,29] := tItens.FieldByName('Aliquota_COFINS').Asfloat/100;
            mPlanilha.Cells[mLinha,30] := tItens.FieldByName('Valor_COFINS').Asfloat;
            mPlanilha.Cells[mLinha,31] := tItens.FieldByName('Desconto_Valor').Asfloat;
            mPlanilha.Cells[mLinha,32] := tItens.FieldByName('Royalty').Asfloat;
            mPlanilha.Cells[mLinha,33] := tItens.FieldByName('Emissao').asstring;

            if tItens.FieldByName('Cancelada').asboolean then begin
               mPlanilha.Range['AH'+InttoStr(mLinha),'AH'+InttoStr(mLinha)].Font.Color          := clRed;
               mPlanilha.Range['AH'+InttoStr(mLinha),'AH'+InttoStr(mLinha)].Font.Bold           := true;
               mPlanilha.Range['AH'+InttoStr(mLinha),'AH'+InttoStr(mLinha)].Font.Size           := 8;
               mPlanilha.Range['AH'+InttoStr(mLinha),'AH'+InttoStr(mLinha)].HorizontalAlignment := 3;
               mPlanilha.Range['AH'+InttoStr(mLinha),'AH'+InttoStr(mLinha)].VerticalAlignment   := 2;
               mPlanilha.Cells[mLinha, 34] := '[ CANCELADA ]';
            end;

            mPlanilha.Cells[mLinha,04].NumberFormat := '000000000';
            mPlanilha.Cells[mLinha,10].NumberFormat := '#.###';

            mPlanilha.Cells[mLinha,14].NumberFormat := '#';
            mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,0000';
            mPlanilha.Cells[mLinha,20].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,21].NumberFormat := '##0,00%';
            mPlanilha.Cells[mLinha,22].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,23].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,24].NumberFormat := '##0,00%';
            mPlanilha.Cells[mLinha,25].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,26].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,27].NumberFormat := '##0,00%';
            mPlanilha.Cells[mLinha,28].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,29].NumberFormat := '##0,00%';
            mPlanilha.Cells[mLinha,30].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,31].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,32].NumberFormat := '#.##0,00';

            titens.Next;

            If (tItens.FieldByName('Nota').AsInteger <> mNota) or (tItens.Eof) then begin
               Inc(mLinha);
               mNota   := tItens.FieldByName('Nota').AsInteger;
               mDadosNF := true;
            End;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      mPlanilha.Range['A3','F'+inttostr(mLinha)].HorizontalAlignment := 3;
      mPlanilha.Range['H3','H'+inttostr(mLinha)].HorizontalAlignment := 3;
      mPlanilha.Range['J3','J'+inttostr(mLinha)].HorizontalAlignment := 3;
      mPlanilha.Range['N3','N'+inttostr(mLinha)].HorizontalAlignment := 3;
      mPlanilha.Range['P3','Q'+inttostr(mLinha)].HorizontalAlignment := 3;

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
         Abort;
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

      mPlanilha.Columns.Autofit;
      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;


end.
