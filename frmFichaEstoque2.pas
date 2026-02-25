unit frmFichaEstoque2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, Math, Grids, DBCtrls, system.UITypes, MemDS;

type
  TFichaEstoque2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bSair: TButton;
    Panel3: TPanel;
    lMensagem: TLabel;
    lPercentual: TLabel;
    lTotal: TLabel;
    Label2: TLabel;
    Progresso: TProgressBar;
    tSaldo: TMSQuery;
    tAltera: TMSQuery;
    Image2: TImage;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    cDescricao: TRadioGroup;
    bExecutar: TButton;
    mTempo: TLabel;
    Grade: TStringGrid;
    mSQL: TMemo;
    Label1: TLabel;
    cMetodo: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cSenhaChange(Sender: TObject);
    procedure Metodo1;
    procedure Metodo2;
    procedure bExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FichaEstoque2: TFichaEstoque2;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFichaEstoque2.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFichaEstoque2.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFichaEstoque2.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      FichaEstoque2.Release;
      FichaEstoque2 := nil;
end;


procedure TFichaEstoque2.cSenhaChange(Sender: TObject);
begin
      //bExecutar.Enabled := cSenha.Text <> '';
end;

procedure TFichaEstoque2.bExecutarClick(Sender: TObject);
begin
      with Dados do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

//           if UsuariosChave.Value <> cSenha.Text then begin
//              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
//              Abort;
//           end;

           if cMetodo.ItemIndex = 0 then begin
              if MessageDlg('Atenção!'+#13+#13+'Esta rotinas irá reprocessar todos os saldo da ficha de inventario.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
           if cMetodo.ItemIndex = 1 then begin
              if MessageDlg('Atenção!'+#13+#13+
                            'Esta rotina irá reprocessar todos os saldos da ficha de inventario.'+#13+
                            'O Método escolhido para processar é mais demorado que o metodo 1,'+#13+
                            'untilize este metodo apenas quando o metodo 1 não estiver sendo possivel.'+#13+#13+
                            'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;

           //----------------------------------------------------------( MONTAGEM DA FICHA DE ESTOQUE )-------------------------------------------------------\\
           Screen.Cursor := crSQLWait;

           FichaEstoque.SQL.Clear;
           FichaEstoque.SQL.Add('-- NOTAS DE ENTRADA PROPRIA -- ');
           FichaEstoque.SQL.Add('If (SELECT COUNT(*) FROM SYSOBJECTS WHERE XTYPE = ''U'' AND NAME  = ''FichaEstoque'') > 0');
           FichaEstoque.SQL.Add('   TRUNCATE TABLE FichaEstoque');
           FichaEstoque.SQL.Add('SELECT MIN(Data_Emissao) AS Data');
           FichaEstoque.SQL.Add('INTO #TEMPDT');
           FichaEstoque.SQL.Add('FROM NotasFiscais WHERE ISNULL(Cancelada, 0) = 0 AND ISNULL(Nfe_Denegada, 0) = 0');
           FichaEstoque.SQL.Add('UNION ALL');
           FichaEstoque.SQL.Add('SELECT MIN(Data_Entrada) AS Data');
           FichaEstoque.SQL.Add('FROM NotasTerceiros');
           FichaEstoque.SQL.Add('WHERE ISNULL(Provisoria, 0) <> 1');
           FichaEstoque.SQL.Add('UNION ALL');
           FichaEstoque.SQL.Add('SELECT MIN(Data_Transferencia) AS Data');
           FichaEstoque.SQL.Add('FROM ProdutosTransferencia');
           FichaEstoque.SQL.Add('DELETE FROM #TEMPDT WHERE Data IS NULL');
           FichaEstoque.SQL.Add('DECLARE @Menor_Data datetime');
           FichaEstoque.SQL.Add('       ,@Maior_Data datetime');
           FichaEstoque.SQL.Add('SET @Menor_Data = (SELECT MIN(Data) FROM #TEMPDT)');
           FichaEstoque.SQL.Add('SET @Maior_Data = GETDATE()');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaEstoque.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.SQL.Add('       ,UM                  = Unidade_Medida ');
           FichaEstoque.SQL.Add('       ,NCM                 = NCM');
           FichaEstoque.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           FichaEstoque.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaEstoque.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Estoque             = CASE Finalidade_Mercadoria');
           FichaEstoque.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           FichaEstoque.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           FichaEstoque.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Nota ');
           FichaEstoque.SQL.Add('       ,Data');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Fornecedor_Codigo FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           FichaEstoque.SQL.Add('       ,ES                  = ''E'' ');
           FichaEstoque.SQL.Add('       ,Processo');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo AND Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.SQL.Add('       ,Qtde_Entrada        = CASE WHEN ISNULL((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data), 0) = 0 THEN');
           FichaEstoque.SQL.Add('                                   Quantidade');
           FichaEstoque.SQL.Add('                              ELSE');
           FichaEstoque.SQL.Add('                                   0');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 4) ');
           FichaEstoque.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           FichaEstoque.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           FichaEstoque.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaEstoque.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Emissor             = ''P'' '); 
           FichaEstoque.SQL.Add('       ,Origem              = ''NFP'' ');
           FichaEstoque.SQL.Add('INTO #TEMP ');
           FichaEstoque.SQL.Add('FROM NotasItens NI ');
           FichaEstoque.SQL.Add('WHERE Saida_Entrada = 0 ');
           FichaEstoque.SQL.Add('  AND Valor_Unitario > 0');
           FichaEstoque.SQL.Add('  AND ISNULL(NI.Cancelada, 0)     <> 1 ');
           FichaEstoque.SQL.Add('  AND ISNULL(NI.Nfe_Denegada, 0)  <> 1 ');
           FichaEstoque.SQL.Add('  AND (ISNULL(Movimenta_Estoque, 0) = 1 OR (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = Saida_Entrada AND Valor_Unitario > 0) = 1)');
           FichaEstoque.SQL.Add('-- NOTAS DE SAÍDA -- ');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaEstoque.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.SQL.Add('       ,UM                  = Unidade_Medida ');
           FichaEstoque.SQL.Add('       ,NCM                 = NCM');
           FichaEstoque.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           FichaEstoque.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaEstoque.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Estoque             = CASE Finalidade_Mercadoria');
           FichaEstoque.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           FichaEstoque.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           FichaEstoque.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Nota');
           FichaEstoque.SQL.Add('       ,Data');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Cliente_Codigo    FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaEstoque.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           FichaEstoque.SQL.Add('       ,ES                  = ''S'' ');
           FichaEstoque.SQL.Add('       ,Processo');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo AND Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           FichaEstoque.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Qtde_Saida          = CASE WHEN ISNULL((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data), 0) = 0 THEN');
           FichaEstoque.SQL.Add('                                   Quantidade');
           FichaEstoque.SQL.Add('                              ELSE');
           FichaEstoque.SQL.Add('                                   0');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaEstoque.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Emissor             = ''P'' ');
           FichaEstoque.SQL.Add('       ,Origem              = ''NFP'' ');
           FichaEstoque.SQL.Add('FROM NotasItens NI ');
           FichaEstoque.SQL.Add('WHERE Saida_Entrada = 1 ');
           FichaEstoque.SQL.Add('AND ISNULL(NI.Cancelada, 0)     <> 1 ');
           FichaEstoque.SQL.Add('AND ISNULL(NI.Nfe_Denegada, 0)  <> 1 ');
           FichaEstoque.SQL.Add('AND ISNULL(Movimenta_Estoque, 0) = 1 ');
           FichaEstoque.SQL.Add('AND Valor_Unitario > 0');
           FichaEstoque.SQL.Add('AND (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = Saida_Entrada) <> 1');
           FichaEstoque.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           FichaEstoque.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           FichaEstoque.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           FichaEstoque.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Entrada) ');
           FichaEstoque.SQL.Add('       ,CFOP                = null ');
           FichaEstoque.SQL.Add('       ,Historico           = case Motivo');
           FichaEstoque.SQL.Add('                                   when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *'' ');
           FichaEstoque.SQL.Add('                                   when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *'' ');
           FichaEstoque.SQL.Add('                                   when ''I''   then ''* ENTRADA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.SQL.Add('                                   when ''IND'' then ''* ENTRADA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.SQL.Add('                              end');
           FichaEstoque.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('       ,Nota                = iif(isnull(Nota, 0) = 0, Registro, Nota)');
           FichaEstoque.SQL.Add('       ,Data                = Data_Transferencia');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaEstoque.SQL.Add('       ,Finalidade          = 0 ');
           FichaEstoque.SQL.Add('       ,ES                  = ''E'' ');
           FichaEstoque.SQL.Add('       ,Processo_Entrada');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada AND Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.SQL.Add('       ,Qtde_Entrada        = Quantidade_Entrada');
           FichaEstoque.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Unitario, 2) ');
           FichaEstoque.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Unitario, 2) * Quantidade_Entrada');
           FichaEstoque.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float)');
           FichaEstoque.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaEstoque.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Emissor             = ''P'' ');
           FichaEstoque.SQL.Add('       ,Origem              = Motivo');
           FichaEstoque.SQL.Add('FROM ProdutosTransferencia PT');
           FichaEstoque.SQL.Add('WHERE Estoque = 1 ');
           FichaEstoque.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Produto_Saida');
           FichaEstoque.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           FichaEstoque.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           FichaEstoque.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Saida) ');
           FichaEstoque.SQL.Add('       ,CFOP                = null');
           FichaEstoque.SQL.Add('       ,Historico           = case Motivo');
           FichaEstoque.SQL.Add('                                   when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *'' ');
           FichaEstoque.SQL.Add('                                   when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *'' ');
           FichaEstoque.SQL.Add('                                   when ''I''   then ''* SAÍDA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.SQL.Add('                                   when ''IND'' then ''* SAÍDA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.SQL.Add('                              end');
           FichaEstoque.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('       ,Nota                = iif(isnull(Nota, 0) = 0, Registro, Nota)');
           FichaEstoque.SQL.Add('       ,Data                = Data_Transferencia');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaEstoque.SQL.Add('       ,Finalidade          = 0');
           FichaEstoque.SQL.Add('       ,ES                  = ''S'' ');
           FichaEstoque.SQL.Add('       ,Processo_Saida');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida AND Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           FichaEstoque.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Qtde_Saida          = Quantidade');
           FichaEstoque.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Total_Saida         = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float)');
           FichaEstoque.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Total_Saldo         = CAST(0 AS money)');
           FichaEstoque.SQL.Add('       ,Emissor             = ''P'' ');
           FichaEstoque.SQL.Add('       ,Origem              = Motivo');
           FichaEstoque.SQL.Add('FROM ProdutosTransferencia PT');
           FichaEstoque.SQL.Add('WHERE Motivo in(''TRF'', ''IND'') ');
           FichaEstoque.SQL.Add('AND Estoque = 1');
           FichaEstoque.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaEstoque.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.SQL.Add('       ,UM                  = Unidade_Medida');
           FichaEstoque.SQL.Add('       ,NCM                 = NCM');
           FichaEstoque.SQL.Add('       ,CFOP                = Natureza_Codigo ');
           FichaEstoque.SQL.Add('       ,Historico           = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           FichaEstoque.SQL.Add('                                   WHEN 0 THEN ''COMPRA - REVENDA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 1 THEN ''COMPRA - CONSUMO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaEstoque.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 6 THEN ''COMPRA - IMOBILIZADO'' ');
           FichaEstoque.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Estoque             = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           FichaEstoque.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           FichaEstoque.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           FichaEstoque.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Nota ');
           FichaEstoque.SQL.Add('       ,Data                = Data_Entrada');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = Fornecedor ');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = (SELECT Nome FROM Fornecedores WHERE Codigo = Fornecedor) ');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor) ');
           FichaEstoque.SQL.Add('       ,Finalidade          = (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) ');
           FichaEstoque.SQL.Add('       ,ES                  = ''E'' ');
           FichaEstoque.SQL.Add('       ,Processo');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo AND Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.SQL.Add('       ,Qtde_Entrada        = Quantidade ');
           FichaEstoque.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 2) ');
           FichaEstoque.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           FichaEstoque.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           FichaEstoque.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaEstoque.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaEstoque.SQL.Add('       ,Emissor             = ''T'' ');
           FichaEstoque.SQL.Add('       ,Origem              = ''NFT'' ');
           FichaEstoque.SQL.Add('FROM NotasTerceirosItens NTI');
           FichaEstoque.SQL.Add('WHERE NTI.Movimenta_Estoque = 1 ');
           FichaEstoque.SQL.Add('AND (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1');
           FichaEstoque.SQL.Add('SELECT  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           FichaEstoque.SQL.Add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           FichaEstoque.SQL.Add('       ,*');
           FichaEstoque.SQL.Add('INTO #TEMP2');
           FichaEstoque.SQL.Add('FROM #TEMP');
           FichaEstoque.SQL.Add('ORDER BY Codigo, Data , ES');
           FichaEstoque.SQL.Add('-- ATUALIZANDO AS QUANTIDADE DOS SALDOS.');
           FichaEstoque.SQL.Add('UPDATE #TEMP2 SET Qtde_Saldo = CAST(');
           FichaEstoque.SQL.Add('                               ISNULL((SELECT SUM(Qtde_Entrada) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo AND T2.Linha < #TEMP2.Linha AND ES = ''E''), 0)');
           FichaEstoque.SQL.Add('                               - ISNULL((SELECT SUM(Qtde_Saida) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo AND T2.Linha < #TEMP2.Linha AND ES = ''S''), 0)');
           FichaEstoque.SQL.Add('                               + Qtde_Entrada');
           FichaEstoque.SQL.Add('                               - Qtde_Saida');
           FichaEstoque.SQL.Add('                               AS DECIMAL(14,3))');
           FichaEstoque.SQL.Add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           FichaEstoque.SQL.Add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           FichaEstoque.SQL.Add('                 ,Unitario_Saldo = CASE WHEN Qtde_Saldo > 0 THEN (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           FichaEstoque.SQL.Add('WHERE Item = 1');
           FichaEstoque.SQL.Add('INSERT INTO FichaEstoque');
           FichaEstoque.SQL.Add('            SELECT Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           FichaEstoque.SQL.Add('                  ,Item');
           FichaEstoque.SQL.Add('                  ,Codigo ');
           FichaEstoque.SQL.Add('                  ,NCM');
           FichaEstoque.SQL.Add('                  ,Descricao ');
           FichaEstoque.SQL.Add('                  ,UM ');
           FichaEstoque.SQL.Add('                  ,CFOP ');
           FichaEstoque.SQL.Add('                  ,Historico ');
           FichaEstoque.SQL.Add('                  ,Estoque ');
           FichaEstoque.SQL.Add('                  ,Emissor');
           FichaEstoque.SQL.Add('                  ,Origem');
           FichaEstoque.SQL.Add('                  ,Nota ');
           FichaEstoque.SQL.Add('                  ,Data ');
           FichaEstoque.SQL.Add('                  ,ES ');
           FichaEstoque.SQL.Add('                  ,Destinatario_Codigo ');
           FichaEstoque.SQL.Add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           FichaEstoque.SQL.Add('                  ,Destinatario_CNPJ ');
           FichaEstoque.SQL.Add('                  ,Finalidade ');
           FichaEstoque.SQL.Add('                  ,Processo ');
           FichaEstoque.SQL.Add('                  ,Tipo_Processo');
           FichaEstoque.SQL.Add('                  ,Qtde_Entrada ');
           FichaEstoque.SQL.Add('                  ,Unitario_Entrada ');
           FichaEstoque.SQL.Add('                  ,Total_Entrada ');
           FichaEstoque.SQL.Add('                  ,Qtde_Saida ');
           FichaEstoque.SQL.Add('                  ,Unitario_Saida ');
           FichaEstoque.SQL.Add('                  ,Total_Saida ');
           FichaEstoque.SQL.Add('                  ,Qtde_Saldo ');
           FichaEstoque.SQL.Add('                  ,Unitario_Saldo ');
           FichaEstoque.SQL.Add('                  ,Total_Saldo ');
           FichaEstoque.SQL.Add('            FROM  #TEMP2 ');
           FichaEstoque.SQL.Add('            ORDER BY Codigo, Data, ES, Nota ');
           FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque ORDER BY Codigo, Item');
           FichaEstoque.SQL.Add('DROP TABLE #TEMP, #TEMP2, #TEMPDT ');
           FichaEstoque.ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           FichaEstoque.ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           FichaEstoque.ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //FichaEstoque.SQL.SaveToFile('c:\temp\Ficha_Estoque_Nova.sql');
           FichaEstoque.Open;
           FichaEstoque.First;
           {
           if Fichainventario.RecordCount = 0 then begin
              screen.Cursor := crDefault;
              Messagedlg('Nenhum item encontrado para processamento!', mtinformation, [mbok], 0);
              abort;
           end;
           }
      end;

      if cMetodo.Itemindex = 0 then begin
         Metodo1;
      end;
      if cMetodo.Itemindex = 1 then begin
         Metodo2;
      end;
end;

// Metodo de processamento em memoria.
procedure TFichaEstoque2.Metodo1;
Var
   mQtdeSaldo,
   mUnitarioSaldo,
   mValorSaldo: Real;

   mCodigo
  ,mLin
  ,i
  ,c
  ,mGO: integer;

  T, T2: TDateTime;
  
  mSQLCampos,
  mValues: Widestring;
begin
      T             := Now;
      T2            := T;
      Screen.Cursor := crSQLWait;

      With Dados do begin
           for i := 0 to FichaEstoque.FieldCount -1 do begin
               Grade.Cells[i, 0] := FieldTypeNames[FichaEstoque.Fields.Fields[i].DataType];
               Grade.Cells[i, 1] := RemoveCaracter('FichaEstoque', '', FichaEstoque.Fields[i].Name);
           end;
           
           mTempo.Caption     := FormatDateTime('hh:mm:ss',T-Now);
           T                  := Now;
           Progresso.Position := 0;
           Progresso.Max      := FichaEstoque.RecordCount;
           mQtdeSaldo         := 0;
           mValorSaldo        := 0;
           mUnitarioSaldo     := 0;
           lTotal.Caption     := InttoStr(FichaEstoque.RecordCount);
           mLin               := 2;
           mCodigo            := 0;
           Application.ProcessMessages;

           FichaEstoque.DisableControls;
           FichaEstoque.First;
           while not FichaEstoque.eof do begin
                 for i := 0 to FichaEstoque.FieldCount -1 do begin
                     Grade.Cells[i, mLin] := RemoveCaracter(#13, '', FichaEstoque.Fields[i].AsString);
                     Grade.Cells[i, mLin] := RemoveCaracter(#12, '', Grade.Cells[i, mLin]);
                     if (FichaEstoque.Fields[i].DataType = ftSmallint) or (FichaEstoque.Fields[i].DataType = ftInteger) or (FichaEstoque.Fields[i].DataType = ftCurrency) or (FichaEstoque.Fields[i].DataType = ftFloat) then begin
                        if Trim(Grade.Cells[i, mLin]) = '' then begin
                           Grade.Cells[i, mLin] := '0';
                        end;   
                     end;
                     if (FichaEstoque.Fields[i].FieldName = 'Codigo') and (FichaEstoque.Fields[i].IsNull) then begin
                        Grade.Cells[i, mLin] := '0';
                     end;
                 end;

                 //===============================================================[ CALCULANDO SALDOS ]===========================================================//
                 i := mLin;
                 if Grade.cells[0,i] <> '' then begin
                    if StrtoInt(Grade.Cells[2, i]) <> mCodigo then begin
                       mCodigo        := StrtoInt(Grade.Cells[2, i]);
                       mQtdeSaldo     := 0;
                       mValorSaldo    := 0;
                       mUnitarioSaldo := 0;
                    end;

                    Grade.Cells[26, i] := Floattostr(Roundto(mQtdeSaldo + Strtofloat(Grade.Cells[20, i]) - Strtofloat(Grade.Cells[23, i]), -3));    // Quantidade Saldo.
                    mQtdeSaldo         := mQtdeSaldo + Strtofloat(Grade.Cells[20, i]) - Strtofloat(Grade.Cells[23, i]);

                    if Grade.Cells[13, i] = 'E' then begin
                       Grade.Cells[28, i] := FloattoStr( mValorSaldo + Strtofloat(Grade.Cells[22, i]) );                                 // Total Saldo.
                       mValorSaldo        := Strtofloat(Grade.Cells[28, i]);
                       if StrtoFloat(Grade.Cells[26, i]) > 0 then
                          mUnitarioSaldo := StrtoFloat(Grade.Cells[28, i]) / StrtoFloat(Grade.Cells[26, i]);
                    end;
                    if Grade.Cells[13, i] = 'S' then begin
                       Grade.Cells[24, i] := FloattoStr( mUnitarioSaldo );                                                               // Unitario Saida.
                       Grade.Cells[25, i] := FloattoStr( mUnitarioSaldo * Strtofloat(Grade.Cells[23, i]) );                              // Total Saida.
                       if StrtoFloat(Grade.Cells[26, i]) > 0 then begin
                          Grade.Cells[28, i] := FloattoStr( mValorSaldo - StrtoFloat(Grade.Cells[25, i]) );                              // Total Saldo.
                       end;
                       mValorSaldo := Strtofloat(Grade.Cells[28, i]);
                    end;
                    if StrtoFloat(Grade.Cells[26, i]) > 0 then begin
                       Grade.Cells[27, i] := FloattoStr( Strtofloat(Grade.Cells[28, i]) / StrtoFloat(Grade.Cells[26, i]) );              // Unitario Saldo.
                    end;
                 end;
                 //===============================================================================================================================================//

                 FichaEstoque.Next;

                 inc(mLin);
                 Grade.RowCount := mLin;
           end;

           mTempo.Caption     := FormatDateTime('hh:mm:ss',T-Now);
           T                  := Now;
           Progresso.Position := 0;
           Progresso.Max      := (Grade.RowCount-1) DIV 50;
           FichaEstoque.SQL.Clear;
           FichaEstoque.SQL.Add('TRUNCATE TABLE FichaEstoque');
           FichaEstoque.Execute;

           mSQL.Clear;
           mSQL.Lines.Add('INSERT INTO FichaEstoque ');
           mSQL.Lines.Add('(');

           // Campos da tabela.
           for i := 0 to Grade.ColCount -1 do begin
               if Trim(Grade.Cells[i, 1]) <> '' then begin
                  if i = 0 then
                     mSQL.Lines.Add(Grade.Cells[i, 1])
                  else
                     mSQL.Lines.Add(','+Grade.Cells[i, 1]);
               end;      
           end;
           mSQL.Lines.Add(' )');
           mSQL.Lines.Add('VALUES');

           mSQLCampos := mSQL.Text;
           mSQL.Clear;

           // Values para o script.
           mGO := 0;
           for i := 2 to Grade.RowCount -1 do begin
               mValues := '';
               for c := 0 to Grade.Colcount-1 do begin
                   if Pos('String', Grade.Cells[c, 0]) = 0 then
                      if (Pos('Float', Grade.Cells[c, 0]) = 0) and (Pos('Currency', Grade.Cells[c, 0]) = 0) and (Pos('Smallint', Grade.Cells[c, 0]) = 0) then
                         if Pos('DateTime', Grade.Cells[c, 0]) = 0 then
                            mValues := mValues + Grade.Cells[c, i]
                          else
                            mValues := mValues + QuotedStr(FormatDateTime('yyyy/mm/dd' ,StrtoDate(Grade.Cells[c, i])))
                      else
                         mValues := mValues + RemoveCaracter(',','.', Grade.Cells[c, i])
                   else
                      mValues := mValues + QuotedStr(Grade.Cells[c, i]);

                   if c < Grade.ColCount-1 then mValues := mValues + ',';
               end;

               inc(mGO);

               mValues := '('+mValues+')';
               if (mGO < 50) and (i < Grade.RowCount-1) then mValues := mValues + ',';
               mSQL.Lines.Add(mValues);

               // Envia script de 50 em 50 registro para a tabela do banco de dados. Obs: 50 foi número que obteve a melhor performance.
               if (mGO = 50) or (i = Grade.RowCount-1) then begin
                  mGO := 0;
                  FichaEstoque.SQL.Clear;
                  FichaEstoque.SQL.Add(mSQLCampos);
                  FichaEstoque.SQL.Add(mSQL.Text);
                  //FichaEstoque.SQL.SaveToFile('c:\temp\Processamento_Estoque.sql');
                  FichaEstoque.Execute;
                  mSQL.Lines.Clear;
                  Progresso.Position  := Progresso.Position + 1;
                  lPercentual.Caption := InttoStr(Round((Progresso.Position / Progresso.Max) * 100 ))+'%';
                  Application.ProcessMessages;
               end;
           end;

           FichaEstoque.EnableControls;
           AutoAjusteCol(Grade);
           mTempo.Caption := FormatDateTime('hh:mm:ss',T2-Now);
           Application.ProcessMessages;
      end;

      Screen.Cursor := crDefault;
      Showmessage('Processamento terminado.');
end;

procedure TFichaEstoque2.Metodo2;
Var
   mSalAnt: Real;
   mTotAnt: Real;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Progresso.Position := 0;
           Progresso.Max      := FichaEstoque.RecordCount;
           //mReg               := 0;
           lTotal.Caption     := InttoStr(FichaEstoque.RecordCount);

           FichaEstoque.DisableControls;
           tAltera.DisableControls;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
           tSaldo.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
           tSaldo.SQL.Add('FROM  FichaEstoque WHERE Codigo = :pCodigo AND Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := FichaEstoque.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := FichaEstoque.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.DisableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaEstoque SET Total_Saldo    = :pTotalSaldo');
           tAltera.SQL.Add('                       ,Unitario_Saida = :pUniSaida');
           tAltera.SQL.Add('                       ,Total_Saida    = :pTotSaida');
           tAltera.SQL.Add('                       ,Unitario_Saldo = :pUniSaldo');
           tAltera.SQL.Add('WHERE Registro = :pRegistro AND Item > 1');

           While not FichaEstoque.Eof do begin
                 tAltera.ParamByName('pUniSaida').AsFloat   := mSalAnt;
                 tAltera.ParamByName('pTotSaida').AsFloat   := mSalAnt * FichaEstoqueQtde_Saida.AsFloat;
                 tAltera.ParamByName('pTotalSaldo').AsFloat := mTotAnt + FichaEstoqueTotal_Entrada.AsFloat - (mSalAnt * FichaEstoqueQtde_Saida.AsFloat);
                 If FichaEstoqueQtde_Saldo.AsFloat > 0 then
                    tAltera.ParamByName('pUniSaldo').AsFloat := (mTotAnt + FichaEstoqueTotal_Entrada.AsFloat - (mSalAnt * FichaEstoqueQtde_Saida.AsFloat)) / FichaEstoqueQtde_Saldo.AsFloat
                 else
                    tAltera.ParamByName('pUniSaldo').AsFloat := 0;
                 tAltera.ParamByName('pRegistro').AsInteger  := FichaEstoqueRegistro.AsInteger;
                 tAltera.Execute;
                 
                 FichaEstoque.RefreshRecord;
                 
                 mSalAnt := FichaEstoque.FieldByName('Unitario_Saldo').AsFloat;
                 mTotAnt := FichaEstoque.FieldByName('Total_Saldo').AsFloat;

                 FichaEstoque.Next;

                 Progresso.Position  := Progresso.Position + 1;
                 lPercentual.Caption := InttoStr(Round((Progresso.Position / Progresso.Max) * 100 ))+'%';

                 Application.ProcessMessages;
           End;
           FichaEstoque.EnableControls;
           
           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaEstoque SET Unitario_Saida = 0');
           tAltera.SQL.Add('                          ,Total_Saida    = 0');
           tAltera.SQL.Add('                          ,Qtde_Saida     = 0');
           tAltera.SQL.Add('WHERE ES = ''E'' ');
           tAltera.Execute;

           lMensagem.Visible := false;
           Showmessage('Ficha de inventario reprocessada!');
           Close;
      End;

      Screen.Cursor := crDefault;
end;


end.
