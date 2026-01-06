unit frmFichaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, DB, DBAccess, MSAccess, RXCtrls,
  Funcoes, System.UITypes, MemDS;

type
  TFichaEstoque = class(TForm)
    Panel1: TPanel;
    StaticText3: TStaticText;
    cSenha: TEdit;
    Panel2: TPanel;
    bExecutar: TButton;
    Sair: TButton;
    Panel3: TPanel;
    Progresso: TProgressBar;
    tSaldo: TMSQuery;
    lMensagem: TLabel;
    lPercentual: TLabel;
    lRegistros: TLabel;
    lTotal: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    tAltera: TMSQuery;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    Label4: TLabel;
    cDescricao: TRadioGroup;
    procedure bExecutarClick(Sender: TObject);
    procedure cSenhaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FichaEstoque: TFichaEstoque;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFichaEstoque.bExecutarClick(Sender: TObject);
Var
   mReg   : Integer;
   mSalAnt: Real;
   mTotAnt: Real;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;
           
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           If UsuariosChave.AsString <> cSenha.Text then begin
              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
              Abort;
           End;

           If MessageDlg('Atenção!'+#13+#13+'Esta rotinas irá reprocessar todos os saldo da ficha de estoque.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
             Abort;
           End;

           Panel3.Visible := true;
           Application.ProcessMessages;

           //----------------------------------------------------------( MONTAGEM DA FICHA DE ESTOQUE )-------------------------------------------------------
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
              FichaEstoque.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 250)');
           end else begin
              FichaEstoque.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.SQL.Add('       ,UM                  = Unidade_Medida ');
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
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
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
           FichaEstoque.SQL.Add('INTO   #TEMP ');
           FichaEstoque.SQL.Add('FROM   NotasItens NI ');
           FichaEstoque.SQL.Add('WHERE Saida_Entrada = 0 ');
           FichaEstoque.SQL.Add('  AND Valor_Unitario > 0');
           FichaEstoque.SQL.Add('  AND ISNULL(NI.Cancelada, 0)     <> 1 ');
           FichaEstoque.SQL.Add('  AND ISNULL(NI.Nfe_Denegada, 0)  <> 1 ');
           FichaEstoque.SQL.Add('  AND (ISNULL(Movimenta_Estoque, 0) = 1 OR (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = Saida_Entrada AND Valor_Unitario > 0) = 1)');
           FichaEstoque.SQL.Add('-- NOTAS DE SAÍDA -- ');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 250)');
           end else begin
              FichaEstoque.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.SQL.Add('       ,UM                  = Unidade_Medida ');
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
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
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
           FichaEstoque.SQL.Add('FROM   NotasItens NI ');
           FichaEstoque.SQL.Add('WHERE Saida_Entrada = 1 ');
           FichaEstoque.SQL.Add('  AND ISNULL(NI.Cancelada, 0)     <> 1 ');
           FichaEstoque.SQL.Add('  AND ISNULL(NI.Nfe_Denegada, 0)  <> 1 ');
           FichaEstoque.SQL.Add('  AND ISNULL(Movimenta_Estoque, 0) = 1 ');
           FichaEstoque.SQL.Add('  AND Valor_Unitario > 0');
           FichaEstoque.SQL.Add('  AND (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = Saida_Entrada) <> 1');
           FichaEstoque.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           FichaEstoque.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           FichaEstoque.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           FichaEstoque.SQL.Add('       ,CFOP                = null ');
           FichaEstoque.SQL.Add('       ,Historico           = CASE WHEN Motivo = ''A'' THEN');
           FichaEstoque.SQL.Add('                                   ''* SALDO DE ABERTURA DE ESTOQUE *''');
           FichaEstoque.SQL.Add('                              ELSE');
           FichaEstoque.SQL.Add('                                   ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *''');
           FichaEstoque.SQL.Add('                              END');
           FichaEstoque.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('       ,Nota                = Registro');
           FichaEstoque.SQL.Add('       ,Data                = Data_Transferencia');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaEstoque.SQL.Add('       ,Finalidade          = 0 ');
           FichaEstoque.SQL.Add('       ,ES                  = ''E'' ');
           FichaEstoque.SQL.Add('       ,Processo_Entrada');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada)');
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
           FichaEstoque.SQL.Add('       ,Origem              = ''TRF'' ');
           FichaEstoque.SQL.Add('FROM   ProdutosTransferencia PT');
           FichaEstoque.SQL.Add('WHERE Estoque = 1 ');
           FichaEstoque.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Produto_Saida');
           FichaEstoque.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           FichaEstoque.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           FichaEstoque.SQL.Add('       ,CFOP                = null');
           FichaEstoque.SQL.Add('       ,Historico           = ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *'' ');
           FichaEstoque.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaEstoque.SQL.Add('       ,Nota                = Registro');
           FichaEstoque.SQL.Add('       ,Data                = Data_Transferencia');
           FichaEstoque.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaEstoque.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaEstoque.SQL.Add('       ,Finalidade          = 0');
           FichaEstoque.SQL.Add('       ,ES                  = ''S'' ');
           FichaEstoque.SQL.Add('       ,Processo_Saida');
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida)');
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
           FichaEstoque.SQL.Add('       ,Origem              = ''TRF'' ');
           FichaEstoque.SQL.Add('FROM   ProdutosTransferencia PT');
           FichaEstoque.SQL.Add('WHERE Motivo  = ''T'' ');
           FichaEstoque.SQL.Add('  AND Estoque = 1');
           FichaEstoque.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           FichaEstoque.SQL.Add('UNION ALL ');
           FichaEstoque.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 250)');
           end else begin
              FichaEstoque.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.SQL.Add('       ,UM                  = Unidade_Medida');
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
           FichaEstoque.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo)');
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
           FichaEstoque.SQL.Add('FROM   NotasTerceirosItens NTI');
           FichaEstoque.SQL.Add('WHERE  NTI.Movimenta_Estoque = 1 ');
           FichaEstoque.SQL.Add('  AND  (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1');
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

           Progresso.Position := 0;
           Progresso.Max      := FichaEstoque.RecordCount;
           mReg               := 0;
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
                 lPercentual.Caption := InttoStr(Round((Progresso.Position / Progresso.Max)* 100 ))+'%';
                 Inc(mReg);
                 lRegistros.Caption  := InttoStr(mReg);

                 Application.ProcessMessages;
           End;
           FichaEstoque.EnableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaEstoque SET Unitario_Saida = 0');
           tAltera.SQL.Add('                       ,Total_Saida    = 0');
           tAltera.SQL.Add('                       ,Qtde_Saida     = 0');
           tAltera.SQL.Add('WHERE ES = ''E'' ');
           tAltera.Execute;

           lMensagem.Visible := false;
           Showmessage('Ficha de estoque reprocessada!');
           Close;
      End;

      Screen.Cursor := crDefault;
end;

procedure TFichaEstoque.cSenhaChange(Sender: TObject);
begin
      bExecutar.Enabled := cSenha.Text <> '';
end;

procedure TFichaEstoque.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      FichaEstoque.Release;
      FichaEstoque := nil;
end;

procedure TFichaEstoque.SairClick(Sender: TObject);
begin
     Close;
end;

procedure TFichaEstoque.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;



end.
































