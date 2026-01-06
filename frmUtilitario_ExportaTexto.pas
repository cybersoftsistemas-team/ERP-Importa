unit frmUtilitario_ExportaTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Vcl.ComCtrls, DBCtrls, Mask, DB, DBAccess, MSAccess,
  RXDBCtrl, Funcoes, DateUtils, MaskUtils, Grids, DBGrids, RxToolEdit, MemDS, ppDesignLayer, ppModule, raCodMod, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppParameter, ppComm, ppRelatv, ppProd, ppReport,
  comObj;

type
  TUtilitario_ExportaTexto = class(TForm)
    ProgressoAdicao: TProgressBar;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    cNome: TDBEdit;
    cDescricao: TDBMemo;
    cNomeArquivo: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    tLayout: TMSQuery;
    tLayoutLayout: TSmallintField;
    bLayout: TButton;
    bGerar: TButton;
    Grade: TDBGrid;
    tEntradas: TMSQuery;
    tSaidas: TMSQuery;
    tItens: TMSQuery;
    tContas: TMSQuery;
    tLC1: TMSQuery;
    tLC2: TMSQuery;
    StaticText7: TStaticText;
    cDataIni: TDateEdit;
    cDataFim: TDateEdit;
    StaticText6: TStaticText;
    tTerceiros: TMSQuery;
    StaticText39: TStaticText;
    cIncentivo: TDBLookupComboBox;
    cTodos: TCheckBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image3: TImage;
    tBaixas: TMSQuery;
    dstBaixas: TDataSource;
    tEmpresas: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure bLayoutClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure GerarPROSOFT_Notas;
    procedure GerarPROSOFT_Entradas;
    procedure GerarPROSOFT_EntradasItens;
    procedure GerarPROSOFT_Saidas;
    procedure GerarPROSOFT_SaidasItens;
    procedure GerarPROSOFT_Produtos;
    procedure GerarPROSOFT_Terceiros;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GerarPROSOFT_Contabilidade;
    procedure GerarPROSOFT_CTA;
    procedure cTodosClick(Sender: TObject);
    procedure GerarALTERDATA_Contabilidade;
    procedure GerarDOMINIO_Contabilidade;
  private
    procedure GerarUNICO_Lan;
    procedure ExportaEXCEL(Arq:string);
    { Private declarations }
  public
    { Public declarations }
    mNomeArq
   ,CompClass
   ,CompBancos 
   ,mMes        : String;
    mOutrasIPI  : Currency;
    LinhaAtual  : Integer;
    ColunaAtual : Integer;
    mLinha      : Integer;
  end;

var
  Utilitario_ExportaTexto: TUtilitario_ExportaTexto;

implementation

uses frmDados, frmUtilitario_ExportaTextoCampos, frmDMFiscal,frmMenu_Principal, frmJanela_Processamento,frmDMContab;

{$R *.dfm}

procedure TUtilitario_ExportaTexto.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitario_ExportaTexto.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           LayoutExportacao.SQL.Clear;
           LayoutExportacao.SQL.Add('SELECT * FROM LayoutExportacao where Tipo = ''TXT'' ORDER BY LayOut');
           LayoutExportacao.Open;

           Campos.SQL.Clear;
           Campos.SQL.Add('SELECT * FROM Campos ORDER BY Campo');
           Campos.Open;

           LayoutExportacaoItens.SQL.Clear;
           LayoutExportacaoItens.SQL.Add('SELECT * FROM LayoutExportacaoItens WHERE (Layout = :pLayOut)');
           LayoutExportacaoItens.ParamByName('pLayOut').AsInteger := LayoutExportacaoLayout.AsInteger;
           LayoutExportacaoItens.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           with Configuracao do begin
                Open;
                CompClass  := iif(not fieldbyname('Compartilhar_Classificacao').AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
                CompBancos := iif(not fieldbyname('Compartilhar_Bancos').AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TUtilitario_ExportaTexto.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (dsLayoutExportacao.State = dsInsert) and (Button = nbPost) then begin
              tLayout.Open;
              LayoutExportacaoLayout.Value := tLayoutLayout.Value + 1;
              tLayout.Close;
           End;
      End;     
end;

procedure TUtilitario_ExportaTexto.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.LayoutExportacao.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor  := crDefault;
      End;
end;

procedure TUtilitario_ExportaTexto.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitario_ExportaTexto.bLayoutClick(Sender: TObject);
begin
      Utilitario_ExportaTextoCampos := TUtilitario_ExportaTextoCampos.Create(Self);
      Utilitario_ExportaTextoCampos.ShowModal;
end;

procedure TUtilitario_ExportaTexto.bGerarClick(Sender: TObject);
begin
      With Dados do begin
           If LayoutExportacaoLayout.Value = 1 then
              GerarPROSOFT_Notas;
           If LayoutExportacaoLayout.Value = 2 then
              GerarPROSOFT_Contabilidade;
           If LayoutExportacaoLayout.Value = 3 then
              GerarALTERDATA_Contabilidade;
           If LayoutExportacaoLayout.Value = 5 then
              GerarDOMINIO_Contabilidade;
           If LayoutExportacaoLayout.Value = 6 then
              GerarUNICO_Lan;
      End;
end;

procedure TUtilitario_ExportaTexto.GerarPROSOFT_Notas;
begin
      mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'_'+InttoStr(YearOf(cDataIni.Date));

      With Dados, dmFiscal do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
           Clientes.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota ORDER BY Codigo');
           TipoNota.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           NCM.SQL.Clear;
           NCM.SQL.Add('SELECT * FROM NCM ORDER BY NCM');
           NCM.Open;

           Screen.Cursor := crSQLWait;

           GerarPROSOFT_Entradas;
           GerarPROSOFT_Saidas;
           GerarPROSOFT_EntradasItens;
           GerarPROSOFT_SaidasItens;
           GerarPROSOFT_Produtos;
           GerarPROSOFT_Terceiros;

           ShowMessage('Arquivo de exportação "'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt'+'"'+#13+#13+'Gerado em '+ mNomeArq);

           Screen.Cursor := crDefault;
      End;
end;

// Arquivo de Notas de Entrada.
procedure TUtilitario_ExportaTexto.GerarPROSOFT_Entradas;
Var
    Arquivo : TextFile;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asstring)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq + '\Exportação';
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);

      If Trim(cIncentivo.Text) <> '' then
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Entradas_'+Trim(mMes)+'_'+cIncentivo.Text+'.txt'
      else
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Entradas_'+Trim(mMes)+'_TODOS.txt';
      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;

      With Dados do begin
           tEntradas.SQL.Clear;
           tEntradas.SQL.Add('SELECT ''P'' AS Emitente,');
           tEntradas.SQL.Add('       Data_EntradaSaida,');
           tEntradas.SQL.Add('       Data_Emissao,');
           tEntradas.SQL.Add('       Numero AS Nota,');
           tEntradas.SQL.Add('       ''NF'' AS Especie,');
           tEntradas.SQL.Add('       ''00000000000000'' AS CNPJ,');
           tEntradas.SQL.Add('       Valor_TotalProdutos AS Total_Merc,');
           tEntradas.SQL.Add('       BCICMS,');
           tEntradas.SQL.Add('       Valor_ICMS,');
           tEntradas.SQL.Add('       0 AS Isentas_ICMS,');
           tEntradas.SQL.Add('       (Valor_TotalNota-BCICMS) AS Outras_ICMS,');
           tEntradas.SQL.Add('       Aliquota_ICMSOper,');
           tEntradas.SQL.Add('       Valor_TotalIPI,');
           tEntradas.SQL.Add('       Valor_TotalNota,');
           tEntradas.SQL.Add('       Valor_OutrasIPI,');
           tEntradas.SQL.Add('       NULL AS Observacao,');
           tEntradas.SQL.Add('       Fornecedor_Codigo AS Fornecedor,');
           tEntradas.SQL.Add('       Natureza_Codigo,');
           tEntradas.SQL.Add('       Cancelada,');
           tEntradas.SQL.Add('       Total_Frete,');
           tEntradas.SQL.Add('       Valor_Seguro,');
           tEntradas.SQL.Add('       Valor_OutrasDespesas,');
           tEntradas.SQL.Add('       BCIPI,');
           tEntradas.SQL.Add('       Serie = (SELECT NFEletronica_SerieEntrada FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = :pEmpresa))');
           tEntradas.SQL.Add('FROM   NotasFiscais');
           tEntradas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Saida_Entrada = 0)');
           If Trim(cIncentivo.Text) <> '' then begin
              tEntradas.SQL.Add('       AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo)) = :pIncentivo)');
           End;
           tEntradas.SQL.Add('UNION  ALL');
           tEntradas.SQL.Add('SELECT ''T'',');
           tEntradas.SQL.Add('       Data_Entrada,');
           tEntradas.SQL.Add('       Data_Emissao,');
           tEntradas.SQL.Add('       Nota,');
           tEntradas.SQL.Add('       Tipo, ');
           tEntradas.SQL.Add('       (SELECT CNPJ FROM Fornecedores WHERE(Fornecedores.Codigo = NotasTerceiros.Fornecedor)),');
           tEntradas.SQL.Add('       Valor_TotalProdutos,');
           tEntradas.SQL.Add('       Valor_BCICMSOper,');
           tEntradas.SQL.Add('       Valor_ICMSOper,');
           tEntradas.SQL.Add('       Valor_IsentasICMS,');
           tEntradas.SQL.Add('       Valor_OutrasICMS,');
           tEntradas.SQL.Add('       Aliquota_ICMSOper, ');
           tEntradas.SQL.Add('       Valor_TotalIPI,');
           tEntradas.SQL.Add('       Valor_TotalNota,');
           tEntradas.SQL.Add('       Valor_OutrasIPI,');
           tEntradas.SQL.Add('       Observacoes,');
           tEntradas.SQL.Add('       Fornecedor,');
           tEntradas.SQL.Add('       Natureza_Codigo,');
           tEntradas.SQL.Add('       0,');
           tEntradas.SQL.Add('       0,');
           tEntradas.SQL.Add('       0,');
           tEntradas.SQL.Add('       0,');
           tEntradas.SQL.Add('       Valor_TotalBCIPI,');
           tEntradas.SQL.Add('       Serie');
           tEntradas.SQL.Add('FROM   NotasTerceiros');
           tEntradas.SQL.Add('WHERE  (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
           If Trim(cIncentivo.Text) <> '' then begin
              //tEntradas.SQL.Add('       AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasTerceiros.Processo)) = :pIncentivo)');
              tEntradas.SQL.Add('       AND (Incentivo_Fiscal = :pIncentivo)');
           End;
           tEntradas.ParamByName('pDataIni').AsDate     := cDataIni.Date;
           tEntradas.ParamByName('pDataFim').AsDate     := cDataFim.Date;
           If Trim(cIncentivo.Text) <> '' then begin
              tEntradas.ParamByName('pIncentivo').AsString := cIncentivo.Text;
           End;
           //tEntradas.SQL.SaveToFile('c:\temp\Exportacao_Entradas.sql');
           tEntradas.Open;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tEntradas.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo das notas fiscais de entrada...';
           Janela_Processamento.Show;

           tEntradas.First;
           While not tEntradas.Eof do begin
                 mOutrasIPI := tEntradas.FieldByName('Valor_OutrasIPI').AsCurrency;
                 Fornecedores.Locate('Codigo', tEntradas.FieldByName('Fornecedor').AsInteger, [loCaseInsensitive]);
                 
                 Say( mLinha, 005, Arquivo, Trim(tEntradas.FieldByName('CNPJ').AsString) );
                 Say( mLinha, 019, Arquivo, PoeZero(2, DayOf(tEntradas.FieldByName('Data_EntradaSaida').AsDateTime))+PoeZero(2, MonthOf(tEntradas.FieldByName('Data_EntradaSaida').AsDateTime))+Copy(InttoStr(YearOf(tEntradas.FieldByName('Data_EntradaSaida').AsDateTime)), 3,2) );
                 Say( mLinha, 025, Arquivo, PoeZero(2, DayOf(tEntradas.FieldByName('Data_Emissao').AsDateTime))+     PoeZero(2, MonthOf(tEntradas.FieldByName('Data_Emissao').AsDateTime))+     Copy(InttoStr(YearOf(tEntradas.FieldByName('Data_Emissao').AsDateTime)), 3,2) );
                 //Say( mLinha, 031, Arquivo, PoeZero(6, tEntradas.FieldByName('Nota').AsInteger) );
                 Say( mLinha, 037, Arquivo, Trim(tEntradas.FieldByName('Especie').AsString) );
                 Say( mLinha, 040, Arquivo, Trim(tEntradas.FieldByName('Serie').AsString) );
                 Say( mLinha, 044, Arquivo, '00000' );                                                                                                                    // Codigo contabil (P.Contas).
                 Say( mLinha, 049, Arquivo, '000');
                 Say( mLinha, 052, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('Total_Merc').AsCurrency)), 14) );
                 Say( mLinha, 066, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('BCICMS').AsCurrency)), 14) );
                 Say( mLinha, 080, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('Valor_ICMS').AsCurrency)), 14) );
                 Say( mLinha, 094, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('Isentas_ICMS').AsCurrency)), 14) );
                 Say( mLinha, 108, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('Outras_ICMS').AsCurrency)), 14) );
                 Say( mLinha, 136, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00'         , tEntradas.FieldByName('AliquotA_ICMSOper').AsCurrency)), 5) );     // Aliquota ICMS Operacional.
                 Say( mLinha, 141, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('BCIPI').AsCurrency)), 14) );                // B.C.IPI.
                 Say( mLinha, 155, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('Valor_TotalIPI').AsCurrency)), 14) );       // Valor IPI.
                 Say( mLinha, 197, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', mOutrasIPI)), 14) );                                               // Outras IPI.
                 Say( mLinha, 211, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tEntradas.FieldByName('Valor_TotalNota').AsCurrency)), 14) );      // Total da Nota.
                 Say( mLinha, 225, Arquivo, '0' );                                                                                                                        // Condição Pagamento.
                 Say( mLinha, 226, Arquivo, '00' );                                                                                                                       // Classif.Contab.-Integração.
                 Say( mLinha, 228, Arquivo, '000' );                                                                                                                      // Sit.especial - código.
                 Say( mLinha, 279, Arquivo, Copy(tEntradas.FieldByName('Observacao').AsString, 1, 100) );                                                                 // Observação.
                 Say( mLinha, 499, Arquivo, Fornecedores.FieldByName('Inscricao_Estadual').AsString );                                                                    // Inscrição Estadual do Fornecedor.
                 Say( mLinha, 517, Arquivo, Fornecedores.FieldByName('Estado').AsString );                                                                                // UF Inscrição Estadual do Fornecedor.
                 Say( mLinha, 519, Arquivo, '1' );                                                                                                                        // Tipo de Frete (1=CIF, 2=FOB).
                 Say( mLinha, 624, Arquivo, tEntradas.FieldByName('Natureza_Codigo').AsString );                                                                          // CFOP Novo de 4 dígitos
                 Say( mLinha, 628, Arquivo, Fornecedores.FieldByName('Municipio_Codigo').AsString );                                                                      // Código Município-Fornecedor.
                 Say( mLinha, 809, Arquivo, tEntradas.FieldByName('Cancelada').AsString );                                                                                // Situação quanto ao cancelamento.
                 Say( mLinha, 869, Arquivo, PoeZero(10, tEntradas.FieldByName('Nota').AsInteger) );                                                                       // Número da nota fiscal.
                 Inc(mLinha);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 tEntradas.Next;
           End;
           Janela_Processamento.Close;
           CloseFile(Arquivo);
      End;
end;

// Arquivo de itens de Notas de Entrada.
procedure TUtilitario_ExportaTexto.GerarPROSOFT_EntradasItens;
Var
    Arquivo : TextFile;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asstring)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Exportação';
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);

      If Trim(cIncentivo.Text) <> '' then
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Entradas_Itens'+Trim(mMes)+'_'+cIncentivo.Text+'.txt'
      else
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Entradas_Itens'+Trim(mMes)+'_TODOS.txt';

      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;

      With Dados, dmFiscal do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Data, Nota, Unidade_Medida, (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST_ICMS, Quantidade, Valor_Unitario, ');
           tItens.SQL.Add('       (Valor_Unitario * Quantidade) AS Valor_Total, Aliquota_IPI, Valor_IPI, Valor_BCICMSOper, Valor_BCICMSSub, SUBSTRING(Descricao_Mercadoria,1,80) AS Descricao, ');
           tItens.SQL.Add('       NCM, Aliquota_ICMSOper, Aliquota_ICMSReducao, Aliquota_IPI,');
           tItens.SQL.Add('       CASE WHEN Codigo_Fabricante IS NULL THEN CAST(Codigo_Mercadoria AS VARCHAR(20)) ELSE Codigo_Fabricante END AS Codigo_Produto, Codigo_Mercadoria, ''P'' AS Emitente');
           tItens.SQL.Add('FROM    NotasItens' );
           tItens.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim) AND (Saida_Entrada = 0)');
           If Trim(cIncentivo.Text) <> '' then begin
              tItens.SQL.Add(' AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = :pIncentivo)');
           End;
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT Data_Entrada, Nota, Unidade_Medida, (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST_ICMS, Quantidade, Valor_Unitario,');
           tItens.SQL.Add('       Valor_Liquido, Aliquota_IPI, Valor_IPI, Valor_BCICMSOper, Valor_BCICMSSub, SUBSTRING(Descricao_Mercadoria,1,80),');
           tItens.SQL.Add('       NCM, Aliquota_ICMSOper, 0, Aliquota_IPI,');
           tItens.SQL.Add('       CAST(Codigo_Mercadoria AS VARCHAR(20)), Codigo_Mercadoria, ''T'' ');
           tItens.SQL.Add('FROM   NotasTerceirosItens');
           tItens.SQL.Add('WHERE  (Data_Entrada BETWEEN :pDataIni AND :pDataFim) ');
           If Trim(cIncentivo.Text) <> '' then begin
              tItens.SQL.Add(' AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasTerceirosItens.Processo)) = :pIncentivo)');
           End;

           tItens.SQL.Add('ORDER BY Data, Nota');
           tItens.ParamByName('pDataIni').AsDate     := cDataIni.Date;
           tItens.ParamByName('pDataFim').AsDate     := cDataFim.Date;
           If Trim(cIncentivo.Text) <> '' then begin
              tItens.ParamByName('pIncentivo').AsString := cIncentivo.Text;
           End;
           tItens.Open;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tItens.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo dos itens das notas fiscais de entrada...';
           Janela_Processamento.Show;

           tItens.First;
           While not tItens.Eof do begin
                 Produtos.Locate('Codigo', tItens.FieldByName('Codigo_Mercadoria').AsInteger, [loCaseInsensitive]);
                 
                 Say( mLinha, 000, Arquivo, Trim(EmpresasCNPJ.AsString) );
                 Say( mLinha, 014, Arquivo, PoeZero(4, YearOf(tItens.FieldByName('Data').AsDateTime))+PoeZero(2, MonthOf(tItens.FieldByName('Data').AsDateTime))+PoeZero(2, DayOf(tItens.FieldByName('Data').AsDateTime)) );
                 Say( mLinha, 022, Arquivo, PoeZero(6, tItens.FieldByName('Nota').AsInteger) );
                 Say( mLinha, 028, Arquivo, Trim(Empresas.FieldByName('NFEletronica_SerieEntrada').AsString) );
                 Say( mLinha, 034, Arquivo, Trim(tItens.FieldByName('Codigo_Produto').AsString) );
                 Say( mLinha, 058, Arquivo, Trim(tItens.FieldByName('Unidade_Medida').AsString) );
                 Say( mLinha, 061, Arquivo, Trim(tItens.FieldByName('CST_ICMS').AsString) );
                 Say( mLinha, 064, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#########0.000', tItens.FieldByName('Quantidade').AsCurrency)), 14) );
                 Say( mLinha, 078, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('########0.0000', tItens.FieldByName('Valor_Unitario').AsCurrency)), 14) );
                 Say( mLinha, 106, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_Total').AsCurrency)), 14) );
                 Say( mLinha, 120, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00'         , tItens.FieldByName('Aliquota_IPI').AsCurrency)), 5) );
                 Say( mLinha, 125, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_IPI').AsCurrency)), 14) );
                 Say( mLinha, 139, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency)), 14) );
                 Say( mLinha, 153, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency)), 14) );

                 // Cadastro dos produtos.
                 Say( mLinha, 167, Arquivo, UpperCase(tItens.FieldByName('Descricao').AsString) );
                 Say( mLinha, 250, Arquivo, Trim(tItens.FieldByName('NCM').AsString) );
                 Say( mLinha, 261, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat)), 5) );
                 Say( mLinha, 266, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', tItens.FieldByName('Aliquota_ICMSReducao').AsFloat)), 5) );
                 Say( mLinha, 285, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', tItens.FieldByName('Aliquota_IPI').AsFloat)), 5) );
                 Say( mLinha, 292, Arquivo, Trim(tItens.FieldByName('CST_ICMS').AsString) );
                 Say( mLinha, 896, Arquivo, PoeZero(2, Produtos.FieldByName('Tipo_Item').AsInteger) );
                 Say( mLinha, 898, Arquivo, Copy(NCM.FieldByName('Selo_IPI').AsString,1,6) );
                 Say( mLinha, 904, Arquivo, Copy(Produtos.FieldByName('ClasseEnquadra_IPI').AsString,1,5) );
                 Say( mLinha, 952, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', Produtos.FieldByName('Valor_IPI').AsCurrency)), 14) );
                 Say( mLinha, 966, Arquivo, NCM.FieldByName('Enquadramento_IPI').AsString );
                 Say( mLinha, 971, Arquivo, '0' );
                 Inc(mLinha);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 titens.Next;
           End;
           Janela_Processamento.Close;
           CloseFile(Arquivo);
      End;
end;

// Arquivo de Notas de Saída.
procedure TUtilitario_ExportaTexto.GerarPROSOFT_Saidas;
Var
    Arquivo: TextFile;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asstring)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Exportação';
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);

      If Trim(cIncentivo.Text) <> '' then
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Saidas_'+Trim(mMes)+'_'+cIncentivo.Text+'.txt'
      else
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Saidas_'+Trim(mMes)+'_TODOS.txt';

      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;

      With Dados do begin
           tSaidas.SQL.Clear;
           tSaidas.SQL.Add('SELECT Cliente_Codigo AS Cliente,');
           tSaidas.SQL.Add('       ''NF'' AS Especie,');
           tSaidas.SQL.Add('       Numero,');
           tSaidas.SQL.Add('       Data_Emissao,');
           tSaidas.SQL.Add('       Valor_TotalNota,');
           tSaidas.SQL.Add('       Valor_TotalProdutos,');
           tSaidas.SQL.Add('       CASE WHEN ICMS_Destacar = 0 THEN BCICMS            ELSE 0 END AS BCICMS,');
           tSaidas.SQL.Add('       CASE WHEN ICMS_Destacar = 0 THEN Valor_ICMS        ELSE 0 END AS Valor_ICMS,');
           tSaidas.SQL.Add('       CASE WHEN ICMS_Destacar = 0 THEN Aliquota_ICMSOper ELSE 0 END AS Aliquota_ICMSOper,');
           tSaidas.SQL.Add('       Nota_Referencia,');
           tSaidas.SQL.Add('       Valor_TotalIPI,');
           tSaidas.SQL.Add('       (Modalidade_Frete+1) AS Tipo_Frete,');
           tSaidas.SQL.Add('       Natureza_Codigo,');
           tSaidas.SQL.Add('       BCIPI,');
           tSaidas.SQL.Add('       Valor_IsentasIPI,');
           tSaidas.SQL.Add('       Valor_OutrasIPI,');
           tSaidas.SQL.Add('       Valor_OutrasICMS,');
           tSaidas.SQL.Add('       Valor_IsentasICMS');
           tSaidas.SQL.Add('FROM   NotasFiscais');
           tSaidas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Saida_Entrada = 1)');
           If Trim(cIncentivo.Text) <> '' then begin
              tSaidas.SQL.Add(' AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo)) = :pIncentivo)');
              tSaidas.ParamByName('pIncentivo').AsString := cIncentivo.Text;
           End;
           tSaidas.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tSaidas.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tSaidas.Open;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tSaidas.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo das notas fiscais de saída...';
           Janela_Processamento.Show;

           tSaidas.First;
           While not tSaidas.Eof do begin
                 Clientes.Locate('Codigo', tSaidas.FieldByName('Cliente').AsInteger, [loCaseInsensitive]);

                 Say( mLinha, 000, Arquivo, Trim(tSaidas.FieldByName('Especie').AsString) );
                 Say( mLinha, 003, Arquivo, Trim(Empresas.FieldByName('NFEletronica_Serie').AsString) );
                 Say( mLinha, 006, Arquivo, PoeZero(6, tSaidas.FieldByName('Numero').AsInteger) );
                 Say( mLinha, 012, Arquivo, PoeZero(6, tSaidas.FieldByName('Numero').AsInteger) );
                 Say( mLinha, 019, Arquivo, PoeZero(2, DayOf(tSaidas.FieldByName('Data_Emissao').AsDateTime))+PoeZero(2, MonthOf(tSaidas.FieldByName('Data_Emissao').AsDateTime))+Copy(InttoStr(YearOf(tSaidas.FieldByName('Data_Emissao').AsDateTime)), 3,2) );
                 Say( mLinha, 025, Arquivo, '00000' );                                                                                                                    // Codigo contabil (P.Contas).
                 Say( mLinha, 033, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_TotalNota').AsCurrency)), 14) );        // Total da Nota.
                 Say( mLinha, 047, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_TotalProdutos').AsCurrency)), 14) );    // Total das Mercadorias.
                 Say( mLinha, 061, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('BCICMS').AsCurrency)), 14) );                 // B.C. ICMS.
                 Say( mLinha, 075, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_ICMS').AsCurrency)), 14) );             // ICMS Debitado.
                 Say( mLinha, 089, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_IsentasICMS').AsCurrency)), 14) );      // Isentas de ICMS.
                 Say( mLinha, 103, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_OutrasICMS').AsCurrency)), 14) );       // Outras de ICMS.
                 Say( mLinha, 117, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('BCIPI').AsCurrency)), 14) );                  // B.C.IPI.
                 Say( mLinha, 131, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_TotalIPI').AsCurrency)), 14) );         // IPI Debitado.
                 Say( mLinha, 145, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_IsentasIPI').AsCurrency)), 14) );       // Isentas de IPI.
                 Say( mLinha, 159, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tSaidas.FieldByName('Valor_OutrasIPI').AsCurrency)), 14) );        // Outras de IPI.
                 Say( mLinha, 187, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00'         , tSaidas.FieldByName('Aliquota_ICMSOper').AsCurrency)), 5) );       // Aliquota ICMS Operacional.
                 Say( mLinha, 253, Arquivo, Trim(Clientes.FieldByName('CNPJ').AsString) );                                                                                // CNPJ do cliente.
                 Say( mLinha, 272, Arquivo, Clientes.FieldByName('Estado').AsString );                                                                                    // UF do cliente.
                 Say( mLinha, 274, Arquivo, Clientes.FieldByName('Municipio_Codigo').AsString );                                                                          // Código Município do cliente.
                 Say( mLinha, 531, Arquivo, Trim(tSaidas.FieldByName('Tipo_Frete').AsString) );                                                                           // Tipo Frete 1-CIF / 2-FOB.
                 Say( mLinha, 733, Arquivo, Trim(tSaidas.FieldByName('Natureza_Codigo').AsString) );                                                                      // CFOP Novo de 4 dígitos.
                 Inc(mLinha);
                 
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;

                 tSaidas.Next;
           End;
           CloseFile(Arquivo);
           Janela_Processamento.Close;
      End;
end;

// Arquivo de itens de Notas de Saída.
procedure TUtilitario_ExportaTexto.GerarPROSOFT_SaidasItens;
Var
    Arquivo : TextFile;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asstring)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Exportação';
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);

      If Trim(cIncentivo.Text) <> '' then
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Saidas_Itens'+Trim(mMes)+'_'+cIncentivo.Text+'.txt'
      else
         mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Notas_Saidas_Itens'+Trim(mMes)+'_TODOS.txt';

      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;

      With Dados, dmFiscal do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Data, Nota, Unidade_Medida, (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST_ICMS, Quantidade, Valor_Unitario, ');
           tItens.SQL.Add('       (Valor_Unitario * Quantidade) AS Valor_Total, Aliquota_IPI, Valor_IPI, Valor_BCICMSOper, Valor_BCICMSSub, SUBSTRING(Descricao_Mercadoria,1,80) AS Descricao, ');
           tItens.SQL.Add('       NCM, Aliquota_ICMSOper, Aliquota_ICMSReducao, Aliquota_IPI,');
           tItens.SQL.Add('       CASE WHEN Codigo_Fabricante IS NULL THEN CAST(Codigo_Mercadoria AS VARCHAR(20)) ELSE Codigo_Fabricante END AS Codigo_Produto, Codigo_Mercadoria');
           tItens.SQL.Add('FROM    NotasItens' );
           tItens.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim) AND (Saida_Entrada = 1)');

           If Trim(cIncentivo.Text) <> '' then begin
              tItens.SQL.Add(' AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = :pIncentivo)');
              tItens.ParamByName('pIncentivo').AsString := cIncentivo.Text;
           End;

           tItens.SQL.Add('ORDER BY Data, Nota');
           tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tItens.Open;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tItens.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo dos itens das notas fiscais de saída...';
           Janela_Processamento.Show;

           tItens.First;
           While not tItens.Eof do begin
                 Produtos.Locate('Codigo', tItens.FieldByName('Codigo_Mercadoria').AsInteger, [loCaseInsensitive]);
                 
                 Say( mLinha, 014, Arquivo, PoeZero(4, YearOf(tItens.FieldByName('Data').AsDateTime))+PoeZero(2, MonthOf(tItens.FieldByName('Data').AsDateTime))+PoeZero(4, DayOf(tItens.FieldByName('Data').AsDateTime)) );
                 Say( mLinha, 022, Arquivo, PoeZero(6, tItens.FieldByName('Nota').AsInteger) );
                 Say( mLinha, 028, Arquivo, Trim(Empresas.FieldByName('NFEletronica_Serie').AsString) );
                 Say( mLinha, 034, Arquivo, Trim(tItens.FieldByName('Codigo_Produto').AsString) );
                 Say( mLinha, 058, Arquivo, Trim(tItens.FieldByName('Unidade_Medida').AsString) );
                 Say( mLinha, 061, Arquivo, Trim(tItens.FieldByName('CST_ICMS').AsString) );
                 Say( mLinha, 064, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#########0.000', tItens.FieldByName('Quantidade').AsCurrency)), 14) );
                 Say( mLinha, 078, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('########0.0000', tItens.FieldByName('Valor_Unitario').AsCurrency)), 14) );
                 Say( mLinha, 106, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_Total').AsCurrency)), 14) );
                 Say( mLinha, 120, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00'         , tItens.FieldByName('Aliquota_IPI').AsCurrency)), 5) );
                 Say( mLinha, 125, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_IPI').AsCurrency)), 14) );
                 Say( mLinha, 139, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency)), 14) );
                 Say( mLinha, 153, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency)), 14) );

                 // Cadastro dos produtos.
                 Say( mLinha, 167, Arquivo, UpperCase(tItens.FieldByName('Descricao').AsString) );
                 Say( mLinha, 250, Arquivo, Trim(tItens.FieldByName('NCM').AsString) );
                 Say( mLinha, 261, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat)), 5) );
                 Say( mLinha, 266, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', tItens.FieldByName('Aliquota_ICMSReducao').AsFloat)), 5) );
                 Say( mLinha, 285, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', tItens.FieldByName('Aliquota_IPI').AsFloat)), 5) );
                 Say( mLinha, 292, Arquivo, Trim(tItens.FieldByName('CST_ICMS').AsString) );
                 Say( mLinha, 896, Arquivo, PoeZero(2, Produtos.FieldByName('Tipo_Item').AsInteger) );
                 Say( mLinha, 898, Arquivo, Copy(NCM.FieldByName('Selo_IPI').AsString,1,6) );
                 Say( mLinha, 904, Arquivo, Copy(Produtos.FieldByName('ClasseEnquadra_IPI').AsString,1,5) );
                 Say( mLinha, 952, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('##########0.00', Produtos.FieldByName('Valor_IPI').AsCurrency)), 14) );
                 Say( mLinha, 966, Arquivo, NCM.FieldByName('Enquadramento_IPI').AsString );
                 Say( mLinha, 971, Arquivo, '0' );
                 Inc(mLinha);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 titens.Next;
           End;
           Janela_Processamento.Close;
           CloseFile(Arquivo);
      End;
end;

// Arquivo de cadastro de produtos.
procedure TUtilitario_ExportaTexto.GerarPROSOFT_Produtos;
Var
    Arquivo   : TextFile;
    mDescricao: WideString;
    mCodigo   : String;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.AsString)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Exportação';
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Produtos'+Trim(mMes)+'.txt';
      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;

      With Dados, dmFiscal do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.SQL.Add('ORDER BY Codigo');
           Produtos.Open;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := Produtos.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo dos itens das notas fiscais de entrada...';
           Janela_Processamento.Show;

           Produtos.First;
           While not Produtos.Eof do begin
                 mCodigo := Trim(Produtos.FieldByName('Codigo_Fabricante').AsString);
                 If (mCodigo = '') then mCodigo := Produtos.FieldByName('Codigo').AsString;

                 // Limpando codigos de controle da descrição do item.
                 mDescricao := Trim(Produtos.FieldByName('Descricao').Value);
                 mDescricao := RemoveCaracter(#13, '', mDescricao);
                 mDescricao := RemoveCaracter(#12, '', mDescricao);
                 mDescricao := RemoveCaracter(#10, '', mDescricao);
                 mDescricao := RemoveCaracter('<{'+Trim(Produtos.FieldByName('Codigo').AsString)+'}>', '', mDescricao);
                 mDescricao := Copy(mDescricao, 1, 80);

                 Say( mLinha, 000, Arquivo, mCodigo );
                 Say( mLinha, 020, Arquivo, mDescricao );
                 Say( mLinha, 100, Arquivo, '00' );
                 Say( mLinha, 102, Arquivo, Produtos.FieldByName('Unidade').AsString );
                 Say( mLinha, 105, Arquivo, Produtos.FieldByName('NCM').AsString );
                 Say( mLinha, 195, Arquivo, 'N' );
                 Say( mLinha, 226, Arquivo, PadR(RemoveCaracter(',','.', FormatFloat('#0.00', Produtos.FieldByName('Aliquota_PIS').AsFloat)), 5) );
                 Inc(mLinha);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 Produtos.Next;
           End;
           Janela_Processamento.Close;
           CloseFile(Arquivo);
      End;
end;

// Arquivo de cadastro de terceiros.
procedure TUtilitario_ExportaTexto.GerarPROSOFT_Terceiros;
Var
    Arquivo: TextFile;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.AsString)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Exportação';
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_Terceiros_'+Trim(mMes)+'.txt';
      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;

      tTerceiros.SQL.Clear;
      tTerceiros.SQL.Add('SELECT DISTINCT');
      tTerceiros.SQL.Add('       Codigo, Nome,');
      tTerceiros.SQL.Add('       CASE WHEN ISNULL(LTRIM(RTRIM(CNPJ)), '''') = '''' THEN 1 ELSE 0 END AS Personalidade,');
      tTerceiros.SQL.Add('       CASE WHEN LTRIM(RTRIM(CNPJ)) <> '''' THEN CNPJ ELSE CPF END AS CNPJ,');
      tTerceiros.SQL.Add('       Nome, Nome_Fantasia AS Apelido, '''' AS Tipo_Logradouro, Rua, Rua_Numero, '''' AS Complemento, CEP, Bairro, Municipio,');
      tTerceiros.SQL.Add('       Fornecedores.Estado, SUBSTRING(Telefone1,1,2) AS DDD, SUBSTRING(Telefone1,3,10) AS Telefone, SUBSTRING(FAX,1,2) AS DDD_FAX, SUBSTRING(Fax,3,10) AS FAX,');
      tTerceiros.SQL.Add('       Inscricao_Estadual, Inscricao_Municipal, RG, Pais');
      tTerceiros.SQL.Add('FROM   Fornecedores, NotasItens, NotasFiscais');
      tTerceiros.SQL.Add('WHERE  (NotasItens.Data BETWEEN :pDataIni AND :pDataFim) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo) AND (NotasItens.Nota = NotasFiscais.Numero)');
      If Trim(cIncentivo.Text) <> '' then begin
         tTerceiros.SQL.Add('       AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = :pIncentivo)')
      End;
      tTerceiros.SQL.Add('UNION ALL');
      tTerceiros.SQL.Add('SELECT DISTINCT');
      tTerceiros.SQL.Add('       Codigo, Nome,');
      tTerceiros.SQL.Add('       CASE WHEN ISNULL(LTRIM(RTRIM(CNPJ)), '''')  = '''' THEN 1 ELSE 0 END,');
      tTerceiros.SQL.Add('       CASE WHEN LTRIM(RTRIM(CNPJ)) <> '''' THEN CNPJ ELSE CPF END AS CNPJ,');
      tTerceiros.SQL.Add('       Nome, '''', '''', Rua, Rua_Numero, Complemento, CEP, Bairro, Municipio,');
      tTerceiros.SQL.Add('       Fornecedores.Estado, SUBSTRING(Telefone1,1,2), SUBSTRING(Telefone1,3,10), SUBSTRING(FAX,1,2), SUBSTRING(Fax,3,10),');
      tTerceiros.SQL.Add('       Inscricao_Estadual, Inscricao_Municipal, RG, Pais');
      tTerceiros.SQL.Add('FROM   Fornecedores, NotasTerceirosItens, NotasTerceiros');
      tTerceiros.SQL.Add('WHERE  (NotasTerceirosItens.Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (Fornecedores.Codigo = NotasTerceiros.Fornecedor) AND (NotasTerceirosItens.Nota = NotasTerceiros.Nota)');
      If Trim(cIncentivo.Text) <> '' then begin
         tTerceiros.SQL.Add(' AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasTerceirosItens.Processo)) = :pIncentivo)');
      End;
      tTerceiros.SQL.Add('UNION ALL');
      tTerceiros.SQL.Add('SELECT DISTINCT');
      tTerceiros.SQL.Add('       Codigo, Nome,');
      tTerceiros.SQL.Add('       CASE WHEN ISNULL(LTRIM(RTRIM(CNPJ)), '''')  = '''' THEN 1 ELSE 0 END,');
      tTerceiros.SQL.Add('       CASE WHEN LTRIM(RTRIM(CNPJ)) <> '''' THEN CNPJ ELSE CPF END AS CNPJ,');
      tTerceiros.SQL.Add('       Nome, '''', '''', Rua, Rua_Numero, Complemento, CEP, Bairro, Municipio,');
      tTerceiros.SQL.Add('       Clientes.Estado, SUBSTRING(Telefone1,1,2), SUBSTRING(Telefone1,3,10), SUBSTRING(FAX,1,2), SUBSTRING(Fax,3,10),');
      tTerceiros.SQL.Add('       Inscricao_Estadual, Inscricao_Municipal, RG, Pais');
      tTerceiros.SQL.Add('FROM   Clientes, NotasItens, NotasFiscais');
      tTerceiros.SQL.Add('WHERE  (NotasItens.Data BETWEEN :pDataIni AND :pDataFim) AND (Clientes.Codigo = NotasFiscais.Cliente_Codigo) AND (NotasItens.Nota = NotasFiscais.Numero)');
      If Trim(cIncentivo.Text) <> '' then begin
         tTerceiros.SQL.Add('       AND ((SELECT DISTINCT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = :pIncentivo)')
      End;
      tTerceiros.ParamByName('pDataIni').AsDate := cDataIni.Date;
      tTerceiros.ParamByName('pDataFim').AsDate := cDataFim.Date;
      If Trim(cIncentivo.Text) <> '' then begin
         tTerceiros.ParamByName('pIncentivo').AsString := Trim(cIncentivo.Text);
      End;

      tTerceiros.Open;

      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tTerceiros.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo do cadastro de terceiros...';
      Janela_Processamento.Show;

      tTerceiros.First;
      While not tTerceiros.Eof do begin
            Say( mLinha, 000, Arquivo, 'TRC' );
            Say( mLinha, 010, Arquivo, tTerceiros.FieldByName('Personalidade').AsString );
            Say( mLinha, 011, Arquivo, Copy('00000000000000', 1, 14-Length(tTerceiros.FieldByName('CNPJ').AsString))+tTerceiros.FieldByName('CNPJ').AsString );
            Say( mLinha, 025, Arquivo, tTerceiros.FieldByName('Nome').AsString );
            Say( mLinha, 115, Arquivo, Copy(tTerceiros.FieldByName('Rua').AsString,1,60) );
            Say( mLinha, 175, Arquivo, Copy(tTerceiros.FieldByName('Rua_Numero').AsString,1,10) );
            Say( mLinha, 185, Arquivo, Copy(tTerceiros.FieldByName('Complemento').AsString,1,20) );
            Say( mLinha, 205, Arquivo, tTerceiros.FieldByName('CEP').AsString );
            Say( mLinha, 214, Arquivo, Copy(tTerceiros.FieldByName('Bairro').AsString,1,30) );
            Say( mLinha, 244, Arquivo, Copy(tTerceiros.FieldByName('Municipio').AsString,1,30) );
            Say( mLinha, 274, Arquivo, tTerceiros.FieldByName('Estado').AsString );
            Say( mLinha, 284, Arquivo, tTerceiros.FieldByName('DDD').AsString );
            Say( mLinha, 289, Arquivo, tTerceiros.FieldByName('Telefone').AsString );
            Say( mLinha, 299, Arquivo, tTerceiros.FieldByName('DDD_FAX').AsString );
            Say( mLinha, 304, Arquivo, tTerceiros.FieldByName('FAX').AsString );
            Say( mLinha, 424, Arquivo, tTerceiros.FieldByName('Inscricao_Estadual').AsString );
            Say( mLinha, 444, Arquivo, tTerceiros.FieldByName('Inscricao_Municipal').AsString );
            Say( mLinha, 508, Arquivo, tTerceiros.FieldByName('Pais').AsString );

            Inc(mLinha);

            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
            tTerceiros.Next;
      End;
      Janela_Processamento.Close;
      CloseFile(Arquivo);
end;

procedure TUtilitario_ExportaTexto.GerarPROSOFT_Contabilidade;
begin
      Screen.Cursor := crSQLWait;

      mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'_'+InttoStr(YearOf(cDataIni.Date));

      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tLC1.SQL.Clear;
           tLC1.SQL.Add('SELECT Lancamentos.*,');
           tLC1.SQL.Add('       ISNULL((SELECT Descricao FROM HistoricoPadrao WHERE(Codigo = Lancamentos.Historico_Codigo)), '''') + ');
           tLC1.SQL.Add('       ISNULL((SELECT CAST(Lancamentos.Historico_Complemento AS VARCHAR(100)) COLLATE SQL_Latin1_General_CP1_CI_AS FROM HistoricoPadrao WHERE(Codigo = Lancamentos.Historico_Codigo)), '''') AS Historico_Descricao');
           tLC1.SQL.Add('FROM   Lancamentos');
           tLC1.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim)');
           tLC1.SQL.Add('       AND (RTRIM(Lancamentos.Conta_Debito) <> '''' AND RTRIM(Lancamentos.Conta_Credito) <> '''')');
           tLC1.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLC1.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tLC1.SQL.SaveToFile('c:\Temp\Exportacao_LC1.SQL');
           tLC1.Open;

           tLC2.SQL.Clear;
           tLC2.SQL.Add('SELECT Lancamentos.*,');
           tLC2.SQL.Add('       ISNULL((SELECT Descricao FROM HistoricoPadrao WHERE(Codigo = Lancamentos.Historico_Codigo)), '''') + ');
           tLC2.SQL.Add('       ISNULL((SELECT CAST(Lancamentos.Historico_Complemento AS VARCHAR(100)) COLLATE SQL_Latin1_General_CP1_CI_AS FROM HistoricoPadrao WHERE(Codigo = Lancamentos.Historico_Codigo)), '''') AS Historico_Descricao');
           tLC2.SQL.Add('FROM   Lancamentos');
           tLC2.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim)');
           tLC2.SQL.Add('       AND (RTRIM(Lancamentos.Conta_Debito) = '''' OR RTRIM(Lancamentos.Conta_Credito) = '''')');
           tLC2.SQL.Add('ORDER BY Documento ASC, Valor DESC');
           tLC2.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLC2.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tLC2.SQL.SaveToFile('c:\Temp\Exportacao_LC2.SQL');
           tLC2.Open;

           tContas.SQL.Clear;
           tContas.SQL.Add('SELECT PlanoContas.*');
           tContas.SQL.Add('FROM   PlanoContas');
           tContas.SQL.Add('WHERE  (Data_Exportacao IS NULL) OR (Data_Exportacao BETWEEN :pDataIni AND :pDataFim) AND ');
           tContas.SQL.Add('       (Codigo IN(SELECT Conta_Debito  FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim)) OR ');
           tContas.SQL.Add('        Codigo IN(SELECT Conta_Credito FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim)) )');
           tContas.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tContas.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tContas.Open;

           GerarPROSOFT_CTA;

           ShowMessage('Arquivo de exportação "'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt'+'"'+#13+#13+'Gerado em '+ mNomeArq);
      End;
      Screen.Cursor := crDefault;
end;

// Registros do Contas (CTA).
procedure TUtilitario_ExportaTexto.GerarPROSOFT_CTA;
Var
    Arquivo   : TextFile;
    mOrdem    : Integer;
    mValor    : String;
    mNota     : String;
    mPartida  : Integer;
    mHistorico: WideString;
begin
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.AsString)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt';
      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Funcoes.LinhaAtual  := 0;
      Funcoes.ColunaAtual := 0;
      mLinha              := 0;
      mOrdem              := 1;

      With Dados, dmContab do begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tContas.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando os registros do PLANO DE CONTAS...';
           Janela_Processamento.Show;

           // Registro "CTA" - Plano de Contas.
           tContas.First;
           While not tContas.Eof do begin
                 Say( mLinha, 000, Arquivo, 'CTA');                                                    // Tipo do registro.
                 Say( mLinha, 003, Arquivo, PoeZero(5, mOrdem));                                       // Número de ordem.
                 Say( mLinha, 008, Arquivo, '' );                                                      // FILLER.
                 Say( mLinha, 011, Arquivo, Copy(tContas.FieldByName('Codigo').AsString,1,  5) );      // Codigo reduzido.
                 Say( mLinha, 016, Arquivo, Copy(tContas.FieldByName('Conta').AsString ,1, 15) );      // Número da conta.
                 Say( mLinha, 031, Arquivo, Copy(tContas.FieldByName('Descricao').AsString ,1, 30) );  // Nome da conta.
                 Say( mLinha, 061, Arquivo, '1' );                                                     // Terceiros "1=Não faz ref./2=Não Faz ref./3=Fax ref.Obrig".
                 Say( mLinha, 062, Arquivo, '0' );                                                     // Centro custo.
                 Say( mLinha, 163, Arquivo, '1' );                                                     // Objeto de conciliação.
                 Inc(mLinha);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;

                 If tContas.FieldByName('Data_Exportacao').AsDateTime = NULL then begin
                    tContas.Edit;
                            tContas.FieldByName('Data_Exportacao').AsDateTime := cDataFim.Date;
                    tContas.Post;
                 End;   
                 tContas.Next;
                 Inc(mOrdem);
           End;

           // Registro "LC1" - Lançamentos partida dobrada.
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tLC1.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando os registros dos LANÇAMENTOS LC1...';
           Janela_Processamento.Show;

           mOrdem := 1;
           tLC1.First;

           While not tLC1.Eof do begin
                 mValor := FormatFloat('0000000000000.00', tLC1.FieldByName('Valor').AsCurrency);
                 mValor := RemoveCaracter(',','.', mValor);

                 Say( mLinha, 000, Arquivo, 'LC1');                                                          // Tipo do registro.
                 Say( mLinha, 003, Arquivo, PoeZero(5, mOrdem));                                             // Número de ordem.
                 Say( mLinha, 008, Arquivo, '' );                                                            // FILLER.
                 Say( mLinha, 011, Arquivo, '1' );                                                           // Modo do lançamento "1=Simples/2=Detalhado".
                 Say( mLinha, 012, Arquivo, RemoveCaracter('/', '',tLC1.FieldByName('Data').AsString) );     // Data da escrituração.
                 Say( mLinha, 020, Arquivo, tLC1.FieldByName('Documento').AsString );                        // Número do documento.
                 Say( mLinha, 030, Arquivo, '00000' );                                                       // Número do lote.
                 Say( mLinha, 065, Arquivo, '000' );                                                         // Quantidade de contas.
                 Say( mLinha, 068, Arquivo, Copy(tLC1.FieldByName('Conta_Debito').AsString,1,5) );           // Conta Débito.
                 Say( mLinha, 092, Arquivo, Copy(tLC1.FieldByName('Conta_Credito').AsString,1,5) );          // Conta Crédito.
                 Say( mLinha, 116, Arquivo, mValor );

                 mHistorico := RemoveCaracter(#13, '', tLC1.FieldByName('Historico_Descricao').AsString);
                 mHistorico := RemoveCaracter(#12, '', mHistorico);
                 mHistorico := RemoveCaracter(#10, '', mHistorico);
                 mHistorico := RemoveCaracter( #9, '', mHistorico);
                 Say( mLinha, 132, Arquivo, mHistorico);                                                     // Histórico.

                 Inc(mLinha);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 tLC1.Next;
                 Inc(mOrdem);
           End;
          
           // Registro "LC2" - Lançamentos partida multipla.
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tLC2.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando os registros dos LANÇAMENTOS LC2...';
           Janela_Processamento.Show;

           mOrdem := 1;
           tLC2.First;
           While not tLC2.Eof do begin
                 // LC1 dados do lançamento.
                 Say( mLinha, 000, Arquivo, 'LC1');                                                          // Tipo do registro.
                 Say( mLinha, 003, Arquivo, PoeZero(5, mOrdem));                                             // Número de ordem.
                 Say( mLinha, 008, Arquivo, '' );                                                            // FILLER.
                 Say( mLinha, 011, Arquivo, '2' );                                                           // Modo do lançamento "1=Simples/2=Detalhado".
                 Say( mLinha, 012, Arquivo, RemoveCaracter('/', '',tLC1.FieldByName('Data').AsString) );     // Data da escrituração.
                 Say( mLinha, 020, Arquivo, tLC1.FieldByName('Documento').AsString );                        // Número do documento.
                 Say( mLinha, 030, Arquivo, '00000' );                                                       // Número do lote.

                 // Apura a quantidade de lançamentos da nota fiscal.
                 tContas.SQL.Clear;
                 tContas.SQL.Add('SELECT COUNT(*) AS QtdeContas FROM Lancamentos');
                 tContas.SQL.Add('WHERE  (Lancamentos.Data BETWEEN :pDataIni AND :pDataFim)');
                 tContas.SQL.Add('       AND (Lancamentos.Documento = :pNota)');
                 tContas.SQL.Add('       AND (RTRIM(Lancamentos.Conta_Debito) = '''' OR RTRIM(Lancamentos.Conta_Credito) = '''')');
                 tContas.ParamByName('pNota').AsString  := tLC2.FieldByName('Documento').AsString;
                 tContas.ParamByName('pDataIni').AsDate := cDataIni.Date;
                 tContas.ParamByName('pDataFim').AsDate := cDataFim.Date;
                 tContas.Open;

                 Say( mLinha, 065, Arquivo, PoeZero(3, tContas.FieldByName('QtdeContas').AsInteger) );      // Quantidade de contas.
                 Inc(mLinha);

                 mNota    := tLC2.FieldByName('Documento').AsString;
                 mPartida := 1;

                 While (tLC2.FieldByName('Documento').AsString = mNota) and (not tLC2.Eof) do begin
                       mValor := FormatFloat('0000000000000.00', tLC2.FieldByName('Valor').AsCurrency);
                       mValor := RemoveCaracter(',','.', mValor);

                       Say( mLinha, 000, Arquivo, 'LC2');                                                          // Tipo do registro.
                       Say( mLinha, 003, Arquivo, PoeZero(5, mOrdem) );                                            // Número de ordem.
                       Say( mLinha, 008, Arquivo, PoeZero(3, mPartida) );                                          // Contra partida número.
                       If Trim(tLC2.FieldByName('Conta_Debito').AsString) <> '' then begin
                          Say( mLinha, 011, Arquivo, 'D' );                                                        // Débito ou Crédito.
                          Say( mLinha, 012, Arquivo, Copy(tLC2.FieldByName('Conta_Debito').AsString,1,5) );        // Código de acesso.
                       end else begin
                          Say( mLinha, 011, Arquivo, 'C' );
                          Say( mLinha, 012, Arquivo, Copy(tLC2.FieldByName('Conta_Credito').AsString,1,5) );
                       End;
                       Say( mLinha, 036, Arquivo, mValor );                                                        // Valor.

                       mHistorico := RemoveCaracter(#13, '', tLC2.FieldByName('Historico_Descricao').AsString);
                       mHistorico := RemoveCaracter(#12, '', mHistorico);
                       mHistorico := RemoveCaracter(#10, '', mHistorico);
                       mHistorico := RemoveCaracter( #9, '', mHistorico);
                       Say( mLinha, 052, Arquivo, mHistorico);                                                     // Histórico.

                       Inc(mLinha);
                       Inc(mPartida);

                       Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                       Application.ProcessMessages;
                       tLC2.Next;
                 End;
                 Inc(mOrdem);
           End;

           Janela_Processamento.Close;
           CloseFile(Arquivo);
      End;
end;

procedure TUtilitario_ExportaTexto.GerarALTERDATA_Contabilidade;
Var
    Arquivo   : TextFile;
    mHistorico: WideString;
begin
      Screen.Cursor := crSQLWait;

      mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'_'+InttoStr(YearOf(cDataIni.Date));

      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tLC1.SQL.Clear;
           tLC1.SQL.Add('SELECT Data,');
           tLC1.SQL.Add('       Numero,');
           tLC1.SQL.Add('       Conta_Debito,');
           tLC1.SQL.Add('       Conta_Credito,');
           tLC1.SQL.Add('       Valor,');
           tLC1.SQL.Add('       ISNULL(LTRIM(RTRIM((SELECT Descricao FROM HistoricoPadrao WHERE(Codigo = Historico_Codigo)))), '''') + ISNULL(RTRIM(CAST(Lancamentos.Historico_Complemento AS varchar(100))), '''') AS Historico_Descricao,');
           tLC1.SQL.Add('       Class_Debito = (SELECT Conta FROM PlanoContas WHERE(Codigo = Conta_Debito)),');
           tLC1.SQL.Add('       Class_Credito= (SELECT Conta FROM PlanoContas WHERE(Codigo = Conta_Credito))');
           tLC1.SQL.Add('FROM   Lancamentos');
           tLC1.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim)');
           tLC1.SQL.Add('       AND (RTRIM(Lancamentos.Conta_Debito) <> '''' OR RTRIM(Lancamentos.Conta_Credito) <> '''')');
           tLC1.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLC1.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tLC1.SQL.SaveToFile('c:\Temp\Exportacao_Lancamentos.SQL');
           tLC1.Open;

           mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.AsString)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
           If Dados.EmpresasMatriz_Filial.AsBoolean = true then
              mNomeArq := mNomeArq + '_Matriz'
           else
              mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

           If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
           mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt';
           If FileExists(mNomeArq) then DeleteFile(mNomeArq);
           AssignFile(Arquivo, mNomeArq);
           ReWrite(Arquivo);

           Funcoes.LinhaAtual  := 0;
           Funcoes.ColunaAtual := 0;
           mLinha              := 0;

           // Lançamentos.
           With Dados, dmContab do begin
                Janela_Processamento := TJanela_Processamento.Create(Self);
                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := tLC1.RecordCount;
                Janela_Processamento.lProcesso.Caption  := 'Gerando os registros dos LANÇAMENTOS LC1...';
                Janela_Processamento.Show;

                tLC1.First;

                While not tLC1.Eof do begin
                      mHistorico := RemoveCaracter(#13, '', tLC1.FieldByName('Historico_Descricao').AsString);
                      mHistorico := RemoveCaracter(#12, '', mHistorico);
                      mHistorico := RemoveCaracter(#10, '', mHistorico);
                      mHistorico := RemoveCaracter( #9, '', mHistorico);

                      Say( mLinha, 000, Arquivo, PoeZero(4,YearOf(tLC1.FieldByName('Data').AsDateTime))+PoeZero(2,MonthOf(tLC1.FieldByName('Data').AsDateTime))+PoeZero(2,DayOf(tLC1.FieldByName('Data').AsDateTime)) );
                      If Trim(tLC1.FieldByName('Class_Debito').AsString) <> '' then
                         Say( mLinha, 013, Arquivo, FormatMaskText(Dados.EmpresasMascara_PlanoContas.AsString+';0; ', tLC1.FieldByName('Class_Debito').AsString) );

                      If Trim(tLC1.FieldByName('Class_Credito').AsString) <> '' then
                         Say( mLinha, 030, Arquivo, FormatMaskText(Dados.EmpresasMascara_PlanoContas.AsString+';0; ', tLC1.FieldByName('Class_Credito').AsString) );

                      Say( mLinha, 047, Arquivo, RemoveCaracter(',', '.', FormatFloat('00000000000.00', tLC1.FieldByName('Valor').AsCurrency)) );
                      Say( mLinha, 064, Arquivo, tLC1.FieldByName('Historico_Descricao').AsString );

                      Inc(mLinha);

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                      tLC1.Next;
                End;

                Janela_Processamento.Close;
                CloseFile(Arquivo);
           End;

           ShowMessage('Arquivo de exportação "'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt'+'"'+#13+#13+'Gerado em '+ mNomeArq);
      End;
      Screen.Cursor := crDefault;
end;
(*
procedure TUtilitario_ExportaTexto.GerarDOMINIO_Contabilidade;
Var
    Arquivo   : TextFile;
    mHistorico: WideString;
begin
      Screen.Cursor := crSQLWait;

      mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'_'+InttoStr(YearOf(cDataIni.Date));

      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tLC1.SQL.Clear;
           tLC1.SQL.Add('SELECT Data,');
           tLC1.SQL.Add('       Numero,');
           tLC1.SQL.Add('       Conta_Debito,');
           tLC1.SQL.Add('       Conta_Credito,');
           tLC1.SQL.Add('       Valor,');
           tLC1.SQL.Add('       Historico_Codigo,');
           tLC1.SQL.Add('       ISNULL(LTRIM(RTRIM((SELECT Descricao FROM HistoricoPadrao WHERE(Codigo = Historico_Codigo)))), '''') + ISNULL(RTRIM(CAST(Lancamentos.Historico_Complemento AS varchar(100))), '''') AS Historico_Descricao,');
           tLC1.SQL.Add('       Class_Debito = (SELECT Conta FROM PlanoContas WHERE(Codigo = Conta_Debito)),');
           tLC1.SQL.Add('       Class_Credito= (SELECT Conta FROM PlanoContas WHERE(Codigo = Conta_Credito))');
           tLC1.SQL.Add('FROM   Lancamentos');
           tLC1.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim)');
           tLC1.SQL.Add('       AND (RTRIM(Lancamentos.Conta_Debito) <> '''' OR RTRIM(Lancamentos.Conta_Credito) <> '''')');
           tLC1.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLC1.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tLC1.SQL.SaveToFile('c:\Temp\Exportacao_Lancamentos.SQL');
           tLC1.Open;

           mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asString)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
           If Dados.EmpresasMatriz_Filial.AsBoolean = true then
              mNomeArq := mNomeArq + '_Matriz'
           else
              mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

           If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
           mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt';
           If FileExists(mNomeArq) then DeleteFile(mNomeArq);
           AssignFile(Arquivo, mNomeArq);
           ReWrite(Arquivo);

           Funcoes.LinhaAtual  := 0;
           Funcoes.ColunaAtual := 0;
           mLinha              := 0;

           // Registro: 01 - Cabeçalho do Arquivo
           Say( mLinha, 000, Arquivo, '01' );
           Say( mLinha, 002, Arquivo, '0000000' );
           Say( mLinha, 009, Arquivo, Empresas.FieldByName('CNPJ').AsString );
           Say( mLinha, 023, Arquivo, cDataIni.Text );
           Say( mLinha, 033, Arquivo, cDataFim.Text );
           Say( mLinha, 043, Arquivo, 'N');
           Say( mLinha, 044, Arquivo, '01');
           Say( mLinha, 046, Arquivo, '00000');
           Say( mLinha, 051, Arquivo, '1');
           Say( mLinha, 052, Arquivo, '17');

           inc(mLinha);

           // Lançamentos.
           With Dados, dmContab do begin
                Janela_Processamento := TJanela_Processamento.Create(Self);
                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := tLC1.RecordCount;
                Janela_Processamento.lProcesso.Caption  := 'Gerando os registros dos LANÇAMENTOS LC1...';
                Janela_Processamento.Show;

                tLC1.First;

                While not tLC1.Eof do begin
                      {
                      // Registro: 02 - Dados do Lote
                      Say( mLinha, 000, Arquivo, '02' );
                      Say( mLinha, 002, Arquivo, '0000000' );
                      Say( mLinha, 009, Arquivo, 'X' );
                      Say( mLinha, 010, Arquivo, tLC1.FieldByName('Data').AsString );
                      }

                      // Registro: 03 - Partidas dos Lançamentos Contábeis
                      Say( mLinha, 000, Arquivo, '03' );
                      Say( mLinha, 002, Arquivo, PoeZero(7, tLC1.FieldByName('Numero').AsInteger) );
                      Say( mLinha, 009, Arquivo, tLC1.FieldByName('Conta_Debito').AsString );
                      Say( mLinha, 016, Arquivo, tLC1.FieldByName('Conta_Credito').AsString );
                      Say( mLinha, 023, Arquivo, RemoveCaracter(',', '', tLC1.FieldByName('Valor').AsString) );
                      Say( mLinha, 038, Arquivo, tLC1.FieldByName('Historico_Codigo').AsString );
                      Say( mLinha, 045, Arquivo, tLC1.FieldByName('Historico_Descricao').AsString );
                      Say( mLinha, 557, Arquivo, '0000000' );
                      Say( mLinha, 564, Arquivo, replicate(' ', 100) );

                      {
                      mHistorico := RemoveCaracter(#13, '', tLC1.FieldByName('Historico_Descricao').AsString);
                      mHistorico := RemoveCaracter(#12, '', mHistorico);
                      mHistorico := RemoveCaracter(#10, '', mHistorico);
                      mHistorico := RemoveCaracter(#9 , '', mHistorico);

                      Say( mLinha, 000, Arquivo, PoeZero(4,YearOf(tLC1.FieldByName('Data').AsDateTime))+PoeZero(2,MonthOf(tLC1.FieldByName('Data').AsDateTime))+PoeZero(2,DayOf(tLC1.FieldByName('Data').AsDateTime)) );
                      If Trim(tLC1.FieldByName('Class_Debito').AsString) <> '' then
                         Say( mLinha, 013, Arquivo, FormatMaskText(Dados.EmpresasMascara_PlanoContas.AsString+';0; ', tLC1.FieldByName('Class_Debito').AsString) );

                      If Trim(tLC1.FieldByName('Class_Credito').AsString) <> '' then
                         Say( mLinha, 030, Arquivo, FormatMaskText(Dados.EmpresasMascara_PlanoContas.AsString+';0; ', tLC1.FieldByName('Class_Credito').AsString) );

                      Say( mLinha, 047, Arquivo, RemoveCaracter(',', '.', FormatFloat('00000000000.00', tLC1.FieldByName('Valor').AsCurrency)) );
                      Say( mLinha, 064, Arquivo, tLC1.FieldByName('Historico_Descricao').AsString );
                      }
                      Inc(mLinha);

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                      tLC1.Next;
                End;

                Janela_Processamento.Close;
                CloseFile(Arquivo);
           End;
           ShowMessage('Arquivo de exportação "'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt'+'"'+#13+#13+'Gerado em '+ mNomeArq);
      End;
      Screen.Cursor := crDefault;
end;
*)

procedure TUtilitario_ExportaTexto.GerarDOMINIO_Contabilidade;
Var
    Arquivo: TextFile;
    mHistorico: WideString;
    mLote:integer;
    mData: TDate;
begin
      Screen.Cursor := crSQLWait;

      mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'_'+InttoStr(YearOf(cDataIni.Date));

      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tLC1.SQL.Clear;
           tLC1.SQL.Add('select Data');
           tLC1.SQL.Add('      ,Numero');
           tLC1.SQL.Add('      ,Conta_Debito');
           tLC1.SQL.Add('      ,Conta_Credito');
           tLC1.SQL.Add('      ,Valor');
           tLC1.SQL.Add('      ,Historico_Codigo');
           tLC1.SQL.Add('      ,isnull(ltrim(rtrim((select descricao from historicopadrao where(codigo = historico_codigo)))), '''') + isnull(rtrim(cast(lancamentos.historico_complemento as varchar(300))), '''') as historico_descricao');
           tLC1.SQL.Add('      ,Filial = (select Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas where CNPJ = Empresa)');
           tLC1.SQL.Add('      ,Lote');
           tLC1.SQL.Add('      ,Tipo = iif(rtrim(Lancamentos.Conta_Debito) = '''' or rtrim(Lancamentos.Conta_Credito) = '''', ''V'', ''X'' )');
           tLC1.SQL.Add('from   Lancamentos');
           tLC1.SQL.Add('where  (Data between :pDataIni and :pDataFim)');
           tLC1.SQL.Add('and   (rtrim(Lancamentos.Conta_Debito) <> '''' or rtrim(Lancamentos.Conta_Credito) <> '''')');
           tLC1.SQL.Add('order by Data, Lote, Numero');
           tLC1.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLC1.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tLC1.SQL.SaveToFile('c:\Temp\Exportacao_Lancamentos.SQL');
           tLC1.Open;

           mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asString)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
           If Dados.EmpresasMatriz_Filial.AsBoolean = true then
              mNomeArq := mNomeArq + '_Matriz'
           else
              mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

           If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
           mNomeArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt';
           If FileExists(mNomeArq) then DeleteFile(mNomeArq);
           AssignFile(Arquivo, mNomeArq);
           ReWrite(Arquivo);

           // Cabeçalho do Arquivo
           writeln(Arquivo, Concat('|0000|', Empresas.FieldByName('CNPJ').AsString), '|');

           // Lançamentos.
           With Dados, dmContab do begin
                Janela_Processamento := TJanela_Processamento.Create(Self);
                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := tLC1.RecordCount;
                Janela_Processamento.lProcesso.Caption  := 'Gerando os registros dos LANÇAMENTOS LC1...';
                Janela_Processamento.Show;

                tLC1.First;

                mLote := 0;
                mData := 0;

                While not tLC1.Eof do begin
                      // Lote.
                      if (tLC1.FieldByName('Lote').asinteger <> mLote) or (tLC1.FieldByName('Data').asdatetime <> mData )then begin
                         writeln(Arquivo, concat('|6000', '|', tLC1.FieldByName('Tipo').asstring, '|', '|', '|', '|'));
                         mLote := tLC1.FieldByName('Lote').asinteger;
                         mData := tLC1.FieldByName('Data').asDatetime;
                      end;

                      // Registro: 03 - Partidas dos Lançamentos Contábeis
                      writeln(Arquivo, concat('|'
                                             ,'6100','|'
                                             ,tLC1.FieldByName('Data').asstring,'|'
                                             ,tLC1.FieldByName('Conta_Debito').AsString, '|'
                                             ,tLC1.FieldByName('Conta_Credito').AsString, '|'
                                             ,formatfloat('##0.00', tLC1.FieldByName('Valor').Ascurrency), '|'
                                             ,'|'
                                             ,tLC1.FieldByName('Historico_Descricao').AsString, '|'
                                             ,'|'
                                             ,'0|'
                                             ,'0|'
                                            ));

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                      tLC1.Next;
                End;

                Janela_Processamento.Close;
                CloseFile(Arquivo);
           End;
           ShowMessage('Arquivo de exportação "'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.txt'+'"'+#13+#13+'Gerado em '+ mNomeArq);
      End;
      Screen.Cursor := crDefault;
end;

procedure TUtilitario_ExportaTexto.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Utilitario_ExportaTexto.Release;
     Utilitario_ExportaTexto := nil;
end;

procedure TUtilitario_ExportaTexto.cTodosClick(Sender: TObject);
begin
      cIncentivo.Enabled := not cTodos.Checked;
      If cTodos.Checked = true then cIncentivo.KeyValue := '';
end;

procedure TUtilitario_ExportaTexto.GerarUNICO_Lan;
Var
    Arquivo: TextFile;
    mHistorico, msql: WideString;
    mLote:integer;
    mData: TDate;
    mArq:string;
begin
      Screen.Cursor := crSQLWait;

      mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'_'+InttoStr(YearOf(cDataIni.Date));

      With Dados, dmContab do begin
           with Empresas do begin 
                SQL.Clear;
                SQL.Add('select * from Empresas where Codigo = :pEmpresa');
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;
           with tEmpresas do begin 
                SQL.Clear;
                SQL.Add('select * from Empresas where substring(CNPJ,1,8) = :pCNPJ and Codigo <> :pEmpresa');
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                ParamByName('pCNPJ').Asstring     := copy(Empresas.fieldbyName('CNPJ').asstring, 1, 8);
                Open;
           end;
           mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.asString)+'\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '',[rfReplaceAll]));
           If Dados.EmpresasMatriz_Filial.AsBoolean = true then
              mNomeArq := mNomeArq + '_Matriz'
           else
              mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
           If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
           
           with tBaixas do begin
                sql.Clear;
                sql.add('select Data');
                sql.add('      ,Valor');
                sql.add('      ,Historico = (select Descricao from Cybersoft_Contabilidade.dbo.HistoricoPadrao where Codigo = (select Pagamento_Historico from '+CompClass+' where Codigo = (select Classificacao from PagarReceber pr where pr.Numero = prb.numero)))');
                sql.add('      ,Historico_Complemento = Observacao');
                sql.add('      ,Documento = (select Numero_Documento from PagarReceber pr where pr.Numero = prb.Numero)');
                sql.add('      ,Beneficiario = case when Tipo = ''R'' then (select Nome from Clientes cl where cl.Codigo = (select Cliente from PagarReceber pr where pr.Numero = prb.Numero)) ');
                sql.add('                           when Tipo = ''P'' then ');
                sql.add('                                case when isnull((select Fornecedor from PagarReceber pr where pr.Numero = prb.Numero), 0) <> 0 then');
                sql.add('                                     (select Nome from Fornecedores pr where Codigo = (select Fornecedor from PagarReceber pr where pr.Numero = prb.Numero))');
                sql.add('                                else');
                sql.add('                                     (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos where Codigo = (select Orgao from PagarReceber pr where pr.Numero = prb.Numero)) ');
                sql.add('                                end');
                sql.add('                      end');
                sql.add('      ,CNPJ = case when Tipo = ''R'' then (select isnull(CNPJ, '''')+ISNULL(CPF,'''') from Clientes cl  where cl.Codigo = (select Cliente from PagarReceber pr where pr.Numero = prb.Numero)) ');
                sql.add('                   when Tipo = ''P'' then (select isnull(CNPJ, '''')+ISNULL(CPF,'''') from Fornecedores fr where fr.Codigo = (select Fornecedor from PagarReceber pr where pr.Numero = prb.Numero)) ');
                sql.add('              end');
                sql.add('      ,Juros = 0');
                sql.add('      ,Multa = 0');
                sql.add('      ,Desconto = 0');
                sql.add('      ,Liquido = Valor - isnull(Juros, 0) - isnull(Multa, 0) + isnull(Desconto, 0)');
                sql.add('      ,Banco = (select Nome from '+CompBancos+' where Codigo = Banco)');
                sql.add('from PagarReceberBaixas prb');
                sql.add('where Data Between :pDataINI and :pDataFim');
                sql.add('and Tipo = :pTipo');
                //sql.savetofile('c:\temp\Exporta_Texto_Unico.sql');

                // Consolidando as filias.
                msql := sql.Text;
                while not tEmpresas.eof do begin
                      sql.add('union all'); 
                      msql := stringreplace(msql, 'PagarReceberBaixas prb', tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.PagarReceberBaixas prb', [rfReplaceAll]);
                      msql := stringreplace(msql, 'PagarReceber pr'       , tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.PagarReceber pr'       , [rfReplaceAll]);
                      msql := stringreplace(msql, 'Clientes cl'           , tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes cl'           , [rfReplaceAll]);
                      sql.add(msql);
                      tEmpresas.next
                end;
                parambyname('pDataIni').value := cDataIni.Date; 
                parambyname('pDataFim').value := cDataFim.Date; 
                parambyname('pTipo').value    := 'R'; 
                //sql.savetofile('c:\temp\Exportacao_Lancamentos_Unico_Sistema.sql');
                sql.add('order by Data');
                open;
                
                mArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_'+Trim(mMes)+'_Recebimentos.xlsx';
                If FileExists(mArq) then DeleteFile(mArq);
                ExportaExcel(mArq);
                close;
                parambyname('pTipo').value := 'P'; 
                mArq := mNomeArq+'\'+Trim(cNomeArquivo.Text)+'_'+Trim(mMes)+'_Pagamentos.xlsx';
                If FileExists(mArq) then DeleteFile(mArq);
                open;
                ExportaExcel(mArq);
           end;


           ShowMessage('Arquivo de exportação "'+Trim(cNomeArquivo.Text)+PoeZero(4, Dados.EmpresasCodigo.Value)+'_'+Trim(mMes)+'.xlsx'+'"'+#13+#13+'Gerado em '+ mNomeArq);
      end;
      Screen.Cursor := crDefault;
end;

// Envia informações para o excel.
procedure TUtilitario_ExportaTexto.ExportaEXCEL(Arq: string);
var
   mPlanilha:Variant;
begin
       With Dados do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := tBaixas.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible := false;
            mPlanilha.Range['A1','L1'].Interior.Color    := RGB(255, 255, 140);
            mPlanilha.Range['A1','L1'].Interior.Pattern  := 1;
            mPlanilha.Range['A1','L1'].Font.Bold         := true;
            mPlanilha.Range['A1','L1'].Font.Color        := clBlack;
            mPlanilha.Range['A1','L1'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A1','L1'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A1','L1'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Cells[1,01] := 'DATA';
            mPlanilha.Cells[1,02] := 'VALOR';
            mPlanilha.Cells[1,03] := 'HISTÓRICO';
            mPlanilha.Cells[1,04] := 'COMLEMENTO';
            mPlanilha.Cells[1,05] := 'DOCUMENTO Nº';
            mPlanilha.Cells[1,06] := 'BENEFICIÁRIO';
            mPlanilha.Cells[1,07] := 'CNPJ';
            mPlanilha.Cells[1,08] := 'MULTA';
            mPlanilha.Cells[1,09] := 'JUROS';
            mPlanilha.Cells[1,10] := 'DESCONTO';
            mPlanilha.Cells[1,11] := 'LIQUIDO';
            mPlanilha.Cells[1,12] := 'BANCO';

            mPlanilha.Range['A1','L1'].HorizontalAlignment := 3;
            mPlanilha.Range['A1','L1'].VerticalAlignment   := 2;
            mPlanilha.Range['A1','L1'].Font.Size           := 10;

            mLinha := 2;

            While (not tBaixas.eof) and (not Funcoes.Cancelado) do  Begin
                  mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size := 10;
                  mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.name := 'Courrier new';

                  mPlanilha.Cells[mLinha,01] := tBaixas.FieldByName('Data').value;
                  mPlanilha.Cells[mLinha,02] := tBaixas.FieldByName('Valor').value;
                  mPlanilha.Cells[mLinha,03] := tBaixas.FieldByName('Historico').AsString;
                  mPlanilha.Cells[mLinha,04] := tBaixas.FieldByName('Historico_Complemento').AsString;
                  mPlanilha.Cells[mLinha,05] := ''''+trim(tBaixas.FieldByName('Documento').AsString);
                  mPlanilha.Cells[mLinha,06] := tBaixas.FieldByName('Beneficiario').asstring;
                  mPlanilha.Cells[mLinha,07] := ''''+tBaixas.FieldByName('CNPJ').asstring;
                  mPlanilha.Cells[mLinha,08] := tBaixas.FieldByName('Multa').value;
                  mPlanilha.Cells[mLinha,09] := tBaixas.FieldByName('Juros').value;
                  mPlanilha.Cells[mLinha,10] := tBaixas.FieldByName('Desconto').value;
                  mPlanilha.Cells[mLinha,11] := tBaixas.FieldByName('Liquido').value;
                  mPlanilha.Cells[mLinha,12] := tBaixas.FieldByName('Banco').asstring;

                  mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';                  
                  mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';                  
                  mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';                  
                  mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';                  
                  mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';                  
                  
                  tBaixas.Next;
                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            end;

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            end;

            mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;
            mPlanilha.ActiveWorkBook.SaveAs(Arq);
       end;
       Janela_Processamento.Close;
       mPlanilha.visible := False;
       mPlanilha.quit;
       mPlanilha := unassigned;       
end;



end.

