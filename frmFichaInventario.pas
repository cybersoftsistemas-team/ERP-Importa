unit frmFichaInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, system.UITypes, RXCtrls, Funcoes, Math, Grids, DBCtrls, MemDS;

type
  TFichaInventario = class(TForm)
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
  FichaInventario: TFichaInventario;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFichaInventario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFichaInventario.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFichaInventario.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      FichaInventario.Release;
      FichaInventario := nil;
end;


procedure TFichaInventario.cSenhaChange(Sender: TObject);
begin
//      bExecutar.Enabled := cSenha.Text <> '';
end;

procedure TFichaInventario.bExecutarClick(Sender: TObject);
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

           //----------------------------------------------------------( MONTAGEM DA FICHA DE INVENTARIO )-------------------------------------------------------
           Screen.Cursor := crSQLWait;

           FichaInventario.SQL.Clear;
           FichaInventario.SQL.Add('-- NOTAS DE ENTRADA PROPRIA -- ');
           FichaInventario.SQL.Add('If (SELECT COUNT(*) FROM SYSOBJECTS WHERE XTYPE = ''U'' AND NAME  = ''FichaInventario'') > 0');
           FichaInventario.SQL.Add('   TRUNCATE TABLE FichaInventario');
           FichaInventario.SQL.Add('SELECT MIN(Data_Emissao) AS Data');
           FichaInventario.SQL.Add('INTO #TEMPDT');
           FichaInventario.SQL.Add('FROM NotasFiscais WHERE ISNULL(Cancelada, 0) = 0 AND ISNULL(Nfe_Denegada, 0) = 0');
           FichaInventario.SQL.Add('UNION ALL');
           FichaInventario.SQL.Add('SELECT MIN(Data_Entrada) AS Data');
           FichaInventario.SQL.Add('FROM NotasTerceiros');
           FichaInventario.SQL.Add('WHERE ISNULL(Provisoria, 0) <> 1');
           FichaInventario.SQL.Add('UNION ALL');
           FichaInventario.SQL.Add('SELECT MIN(Data_Transferencia) AS Data');
           FichaInventario.SQL.Add('FROM ProdutosTransferencia');
           FichaInventario.SQL.Add('DELETE FROM #TEMPDT WHERE Data IS NULL');
           FichaInventario.SQL.Add('DECLARE  @Menor_Data datetime');
           FichaInventario.SQL.Add('        ,@Maior_Data datetime');
           FichaInventario.SQL.Add('SET @Menor_Data = (SELECT MIN(Data) FROM #TEMPDT)');
           FichaInventario.SQL.Add('SET @Maior_Data = GETDATE()');
           FichaInventario.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaInventario.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaInventario.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaInventario.SQL.Add('       ,UM                  = Unidade_Medida ');
           FichaInventario.SQL.Add('       ,NCM                 = NCM');
           FichaInventario.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           FichaInventario.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           FichaInventario.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           FichaInventario.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           FichaInventario.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           FichaInventario.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaInventario.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           FichaInventario.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Estoque             = CASE ISNULL(Finalidade_Mercadoria, 0)');
           FichaInventario.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           FichaInventario.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           FichaInventario.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Nota ');
           FichaInventario.SQL.Add('       ,Data');
           FichaInventario.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Fornecedor_Codigo FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           FichaInventario.SQL.Add('       ,ES                  = ''E'' ');
           FichaInventario.SQL.Add('       ,Processo');
           FichaInventario.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo AND Tipo = ''IMPORTAÇÃO'')');
           FichaInventario.SQL.Add('       ,Qtde_Entrada        = CASE WHEN ISNULL((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data), 0) = 0 THEN');
           FichaInventario.SQL.Add('                                   Quantidade');
           FichaInventario.SQL.Add('                              ELSE');
           FichaInventario.SQL.Add('                                   0');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 4) ');
           FichaInventario.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           FichaInventario.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           FichaInventario.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaInventario.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Emissor             = ''P'' '); 
           FichaInventario.SQL.Add('       ,Origem              = ''NFP'' ');
           FichaInventario.SQL.Add('INTO   #TEMP ');
           FichaInventario.SQL.Add('FROM   NotasItens NI ');
           FichaInventario.SQL.Add('WHERE Saida_Entrada = 0 ');
           FichaInventario.SQL.Add('  AND Valor_Unitario > 0');
           FichaInventario.SQL.Add('  AND ISNULL(NI.Cancelada, 0)     <> 1 ');
           FichaInventario.SQL.Add('  AND ISNULL(NI.Nfe_Denegada, 0)  <> 1 ');
           FichaInventario.SQL.Add('  AND (ISNULL(Movimenta_Inventario, 0) = 1 OR ISNULL((SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = Saida_Entrada AND Valor_Unitario > 0), 0) = 1)');
           FichaInventario.SQL.Add('-- NOTAS DE SAÍDA -- ');
           FichaInventario.SQL.Add('UNION ALL ');
           FichaInventario.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaInventario.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaInventario.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaInventario.SQL.Add('       ,UM                  = Unidade_Medida ');
           FichaInventario.SQL.Add('       ,NCM                 = NCM');
           FichaInventario.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           FichaInventario.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           FichaInventario.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           FichaInventario.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           FichaInventario.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           FichaInventario.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaInventario.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           FichaInventario.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Estoque             = CASE ISNULL(Finalidade_Mercadoria, 0)');
           FichaInventario.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           FichaInventario.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           FichaInventario.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Nota');
           FichaInventario.SQL.Add('       ,Data');
           FichaInventario.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Cliente_Codigo    FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota AND Data_Emissao = Data AND NF.Saida_Entrada = NI.Saida_Entrada) ');
           FichaInventario.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           FichaInventario.SQL.Add('       ,ES                  = ''S'' ');
           FichaInventario.SQL.Add('       ,Processo');
           FichaInventario.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo AND Tipo = ''IMPORTAÇÃO'')');
           FichaInventario.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           FichaInventario.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Qtde_Saida          = CASE WHEN ISNULL((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data), 0) = 0 THEN');
           FichaInventario.SQL.Add('                                   Quantidade');
           FichaInventario.SQL.Add('                              ELSE');
           FichaInventario.SQL.Add('                                   0');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaInventario.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Emissor             = ''P'' ');
           FichaInventario.SQL.Add('       ,Origem              = ''NFP'' ');
           FichaInventario.SQL.Add('FROM   NotasItens NI ');
           FichaInventario.SQL.Add('WHERE Saida_Entrada = 1 ');
           FichaInventario.SQL.Add('  AND ISNULL(NI.Cancelada, 0)     <> 1 ');
           FichaInventario.SQL.Add('  AND ISNULL(NI.Nfe_Denegada, 0)  <> 1 ');
           FichaInventario.SQL.Add('  AND ISNULL(Movimenta_Inventario, 0) = 1 ');
           FichaInventario.SQL.Add('  AND Valor_Unitario > 0');
           FichaInventario.SQL.Add('  AND (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = Saida_Entrada) <> 1');
           FichaInventario.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           FichaInventario.SQL.Add('UNION ALL ');
           FichaInventario.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           FichaInventario.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           FichaInventario.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           FichaInventario.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Entrada) ');
           FichaInventario.SQL.Add('       ,CFOP                = null ');
           FichaInventario.SQL.Add('       ,Historico           = case Motivo');
           FichaInventario.SQL.Add('                                   when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *'' ');
           FichaInventario.SQL.Add('                                   when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *'' ');
           FichaInventario.SQL.Add('                                   when ''I''   then ''* ENTRADA (INDUSTRIALIZAÇÃO) *'' ');
           FichaInventario.SQL.Add('                                   when ''IND'' then ''* ENTRADA (INDUSTRIALIZAÇÃO) *'' ');
           FichaInventario.SQL.Add('                              end');
           FichaInventario.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('       ,Nota                = iif(isnull(Nota, 0) = 0, Registro, Nota)');
           FichaInventario.SQL.Add('       ,Data                = Data_Transferencia');
           FichaInventario.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaInventario.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaInventario.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaInventario.SQL.Add('       ,Finalidade          = 0 ');
           FichaInventario.SQL.Add('       ,ES                  = ''E'' ');
           FichaInventario.SQL.Add('       ,Processo_Entrada');
           FichaInventario.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada AND Tipo = ''IMPORTAÇÃO'')');
           FichaInventario.SQL.Add('       ,Qtde_Entrada        = Quantidade_Entrada ');
           FichaInventario.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Unitario, 2) ');
           FichaInventario.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Unitario, 2) * Quantidade_Entrada ');
           FichaInventario.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float)');
           FichaInventario.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaInventario.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Emissor             = ''P'' ');
           FichaInventario.SQL.Add('       ,Origem              = Motivo');
           FichaInventario.SQL.Add('FROM   ProdutosTransferencia PT');
           FichaInventario.SQL.Add('WHERE Inventario = 1 ');
           FichaInventario.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           FichaInventario.SQL.Add('UNION ALL ');
           FichaInventario.SQL.Add('SELECT  Codigo              = Produto_Saida');
           FichaInventario.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           FichaInventario.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           FichaInventario.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Saida) ');
           FichaInventario.SQL.Add('       ,CFOP                = null');
           FichaInventario.SQL.Add('       ,Historico           = case Motivo');
           FichaInventario.SQL.Add('                                   when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *'' ');
           FichaInventario.SQL.Add('                                   when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *'' ');
           FichaInventario.SQL.Add('                                   when ''I''   then ''* SAÍDA (INDUSTRIALIZAÇÃO) *'' ');
           FichaInventario.SQL.Add('                                   when ''IND'' then ''* SAÍDA (INDUSTRIALIZAÇÃO) *'' ');
           FichaInventario.SQL.Add('                              end');
           FichaInventario.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('       ,Nota                = iif(isnull(Nota, 0) = 0, Registro, Nota)');
           FichaInventario.SQL.Add('       ,Data                = Data_Transferencia');
           FichaInventario.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaInventario.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaInventario.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaInventario.SQL.Add('       ,Finalidade          = 0');
           FichaInventario.SQL.Add('       ,ES                  = ''S'' ');
           FichaInventario.SQL.Add('       ,Processo_Saida');
           FichaInventario.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida AND Tipo = ''IMPORTAÇÃO'')');
           FichaInventario.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           FichaInventario.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Qtde_Saida          = Quantidade');
           FichaInventario.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Total_Saida         = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float)');
           FichaInventario.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Total_Saldo         = CAST(0 AS money)');
           FichaInventario.SQL.Add('       ,Emissor             = ''P'' ');
           FichaInventario.SQL.Add('       ,Origem              = Motivo');
           FichaInventario.SQL.Add('FROM   ProdutosTransferencia PT');
           FichaInventario.SQL.Add('WHERE Inventario = 1');
           FichaInventario.SQL.Add('  AND Motivo  in(''TRF'', ''IND'')');
           FichaInventario.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           FichaInventario.SQL.Add('UNION ALL ');
           FichaInventario.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaInventario.SQL.Add('       ,Descricao           = SUBSTRING(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaInventario.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 500) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaInventario.SQL.Add('       ,UM                  = Unidade_Medida');
           FichaInventario.SQL.Add('       ,NCM                 = NCM');
           FichaInventario.SQL.Add('       ,CFOP                = Natureza_Codigo ');
           FichaInventario.SQL.Add('       ,Historico           = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           FichaInventario.SQL.Add('                                   WHEN 0 THEN ''COMPRA - REVENDA'' ');
           FichaInventario.SQL.Add('                                   WHEN 1 THEN ''COMPRA - CONSUMO'' ');
           FichaInventario.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           FichaInventario.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           FichaInventario.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaInventario.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 6 THEN ''COMPRA - IMOBILIZADO'' ');
           FichaInventario.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Estoque             = CASE ISNULL((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal), 0)');
           FichaInventario.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           FichaInventario.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           FichaInventario.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           FichaInventario.SQL.Add('                              END');
           FichaInventario.SQL.Add('       ,Nota ');
           FichaInventario.SQL.Add('       ,Data                = Data_Entrada');
           FichaInventario.SQL.Add('       ,Destinatario_Codigo = Fornecedor ');
           FichaInventario.SQL.Add('       ,Destinatario_Nome   = (SELECT Nome FROM Fornecedores WHERE Codigo = Fornecedor) ');
           FichaInventario.SQL.Add('       ,Destinatario_CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor) ');
           FichaInventario.SQL.Add('       ,Finalidade          = (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) ');
           FichaInventario.SQL.Add('       ,ES                  = ''E'' ');
           FichaInventario.SQL.Add('       ,Processo');
           FichaInventario.SQL.Add('       ,Tipo_Processos      = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo AND Tipo = ''IMPORTAÇÃO'')');
           FichaInventario.SQL.Add('       ,Qtde_Entrada        = Quantidade ');
           FichaInventario.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 2) ');
           FichaInventario.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           FichaInventario.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           FichaInventario.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           FichaInventario.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           FichaInventario.SQL.Add('       ,Emissor             = ''T'' ');
           FichaInventario.SQL.Add('       ,Origem              = ''NFT'' ');
           FichaInventario.SQL.Add('FROM   NotasTerceirosItens NTI');
           FichaInventario.SQL.Add('WHERE  Nota IS NOT NULL');
           FichaInventario.SQL.Add('  AND  NTI.Movimenta_Inventario = 1 ');
           FichaInventario.SQL.Add('  AND  (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1');
           FichaInventario.SQL.Add('SELECT  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           FichaInventario.SQL.Add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           FichaInventario.SQL.Add('       ,*');
           FichaInventario.SQL.Add('INTO #TEMP2');
           FichaInventario.SQL.Add('FROM #TEMP');
           FichaInventario.SQL.Add('ORDER BY Codigo, Data , ES');
           FichaInventario.SQL.Add('-- ATUALIZANDO AS QUANTIDADE DOS SALDOS.');
           FichaInventario.SQL.Add('UPDATE #TEMP2 SET Qtde_Saldo = CAST(');
           FichaInventario.SQL.Add('                               ISNULL((SELECT SUM(Qtde_Entrada) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo AND T2.Linha < #TEMP2.Linha AND ES = ''E''), 0)');
           FichaInventario.SQL.Add('                               - ISNULL((SELECT SUM(Qtde_Saida) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo AND T2.Linha < #TEMP2.Linha AND ES = ''S''), 0)');
           FichaInventario.SQL.Add('                               + Qtde_Entrada');
           FichaInventario.SQL.Add('                               - Qtde_Saida');
           FichaInventario.SQL.Add('                               AS DECIMAL(14,3))');
           FichaInventario.SQL.Add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           FichaInventario.SQL.Add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           FichaInventario.SQL.Add('                 ,Unitario_Saldo = CASE WHEN Qtde_Saldo > 0 THEN (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           FichaInventario.SQL.Add('WHERE Item = 1');
           FichaInventario.SQL.Add('INSERT INTO FichaInventario');
           FichaInventario.SQL.Add('            SELECT Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           FichaInventario.SQL.Add('                  ,Item');
           FichaInventario.SQL.Add('                  ,Codigo ');
           FichaInventario.SQL.Add('                  ,NCM');
           FichaInventario.SQL.Add('                  ,Descricao ');
           FichaInventario.SQL.Add('                  ,UM ');
           FichaInventario.SQL.Add('                  ,CFOP ');
           FichaInventario.SQL.Add('                  ,Historico ');
           FichaInventario.SQL.Add('                  ,Estoque ');
           FichaInventario.SQL.Add('                  ,Emissor');
           FichaInventario.SQL.Add('                  ,Origem');
           FichaInventario.SQL.Add('                  ,Nota ');
           FichaInventario.SQL.Add('                  ,Data ');
           FichaInventario.SQL.Add('                  ,ES ');
           FichaInventario.SQL.Add('                  ,Destinatario_Codigo ');
           FichaInventario.SQL.Add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           FichaInventario.SQL.Add('                  ,Destinatario_CNPJ ');
           FichaInventario.SQL.Add('                  ,Finalidade ');
           FichaInventario.SQL.Add('                  ,Processo ');
           FichaInventario.SQL.Add('                  ,Tipo_Processo');
           FichaInventario.SQL.Add('                  ,Qtde_Entrada ');
           FichaInventario.SQL.Add('                  ,Unitario_Entrada ');
           FichaInventario.SQL.Add('                  ,Total_Entrada ');
           FichaInventario.SQL.Add('                  ,Qtde_Saida ');
           FichaInventario.SQL.Add('                  ,Unitario_Saida ');
           FichaInventario.SQL.Add('                  ,Total_Saida ');
           FichaInventario.SQL.Add('                  ,Qtde_Saldo ');
           FichaInventario.SQL.Add('                  ,Unitario_Saldo ');
           FichaInventario.SQL.Add('                  ,Total_Saldo ');
           FichaInventario.SQL.Add('            FROM  #TEMP2 ');
           FichaInventario.SQL.Add('            ORDER BY Codigo, Data, ES, Nota ');
           FichaInventario.SQL.Add('SELECT * FROM FichaInventario ORDER BY Codigo, Item');
           FichaInventario.SQL.Add('DROP TABLE #TEMP, #TEMP2, #TEMPDT ');
           FichaInventario.ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           FichaInventario.ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           FichaInventario.ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //FichaInventario.SQL.SaveToFile('c:\temp\Ficha_Inventario.sql');
           FichaInventario.Open;
           FichaInventario.First;
           {
           if Fichainventario.RecordCount = 0 then begin
              screen.Cursor := crDefault;
              Messagedlg('Nenhum item encontrado para processamento!', mtinformation, [mbok], 0);
              abort;
           end;
           }
      end;
      Screen.Cursor := crDefault;

      if cMetodo.Itemindex = 0 then begin
         Metodo1;
      end;
      if cMetodo.Itemindex = 1 then begin
         Metodo2;
      end;
end;

// Metodo de processamento em memoria.
procedure TFichaInventario.Metodo1;
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
           for i := 0 to FichaInventario.FieldCount -1 do begin
               Grade.Cells[i, 0] := FieldTypeNames[FichaInventario.Fields.Fields[i].DataType];
               Grade.Cells[i, 1] := RemoveCaracter('FichaInventario', '', FichaInventario.Fields[i].Name);
           end;
           
           mTempo.Caption     := FormatDateTime('hh:mm:ss',T-Now);
           Progresso.Position := 0;
           Progresso.Max      := FichaInventario.RecordCount;
           mQtdeSaldo         := 0;
           mValorSaldo        := 0;
           mUnitarioSaldo     := 0;
           lTotal.Caption     := InttoStr(FichaInventario.RecordCount);
           mLin               := 2;
           mCodigo            := 0;
           Application.ProcessMessages;

           FichaInventario.DisableControls;
           FichaInventario.First;
           while not FichaInventario.eof do begin
                 for i := 0 to FichaInventario.FieldCount -1 do begin
                     Grade.Cells[i, mLin] := RemoveCaracter(#13, '', FichaInventario.Fields[i].AsString);
                     Grade.Cells[i, mLin] := RemoveCaracter(#12, '', Grade.Cells[i, mLin]);
                     if (FichaInventario.Fields[i].DataType = ftSmallint) or (FichaInventario.Fields[i].DataType = ftInteger) or (FichaInventario.Fields[i].DataType = ftCurrency) or (FichaInventario.Fields[i].DataType = ftFloat) then begin
                        if Trim(Grade.Cells[i, mLin]) = '' then begin
                           Grade.Cells[i, mLin] := '0';
                        end;   
                     end;
                     if (FichaInventario.Fields[i].FieldName = 'Codigo') and (FichaInventario.Fields[i].IsNull) then begin
                        Grade.Cells[i, mLin] := '0';
                     end;
                 end;

                 //===============================================================[ CALCULANDO SALDOS ]=================================================================//
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
                 //=====================================================================================================================================================//

                 FichaInventario.Next;

                 inc(mLin);
                 Grade.RowCount := mLin;
           end;

           mTempo.Caption     := FormatDateTime('hh:mm:ss',T-Now);
           T                  := Now;
           Progresso.Position := 0;
           Progresso.Max      := (Grade.RowCount-1) DIV 50;
           FichaInventario.SQL.Clear;
           FichaInventario.SQL.Add('TRUNCATE TABLE FichaInventario');
           FichaInventario.Execute;

           mSQL.Clear;
           mSQL.Lines.Add('INSERT INTO FichaInventario (');

           // Campos da tabela.
           for i := 0 to Grade.ColCount -1 do begin
               if i = 0 then
                  mSQL.Lines.Add(''+Grade.Cells[i, 1])
               else
                  mSQL.Lines.Add(','+Grade.Cells[i, 1]);
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
                  FichaInventario.SQL.Clear;
                  FichaInventario.SQL.Add(mSQLCampos);
                  FichaInventario.SQL.Add(mSQL.Text);
                  //FichaInventario.SQL.SaveToFile('c:\temp\Processamento_Inventario.sql');
                  FichaInventario.Execute;
                  mSQL.Lines.Clear;
                  Progresso.Position  := Progresso.Position + 1;
                  lPercentual.Caption := InttoStr(Round((Progresso.Position / Progresso.Max) * 100 ))+'%';
                  Application.ProcessMessages;
               end;
           end;

           FichaInventario.EnableControls;
           AutoAjusteCol(Grade);
           mTempo.Caption := FormatDateTime('hh:mm:ss',T2-Now);
           Application.ProcessMessages;
      end;

      Screen.Cursor := crDefault;
      Showmessage('Processamento terminado.');
end;

procedure TFichaInventario.Metodo2;
Var
   mSalAnt: Real;
   mTotAnt: Real;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Progresso.Position := 0;
           Progresso.Max      := FichaInventario.RecordCount;
           //mReg               := 0;
           lTotal.Caption     := InttoStr(FichaInventario.RecordCount);

           FichaInventario.DisableControls;
           tAltera.DisableControls;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
           tSaldo.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
           tSaldo.SQL.Add('FROM  FichaInventario WHERE Codigo = :pCodigo AND Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := FichaInventario.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := FichaInventario.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.DisableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaInventario SET Total_Saldo    = :pTotalSaldo');
           tAltera.SQL.Add('                          ,Unitario_Saida = :pUniSaida');
           tAltera.SQL.Add('                          ,Total_Saida    = :pTotSaida');
           tAltera.SQL.Add('                          ,Unitario_Saldo = :pUniSaldo');
           tAltera.SQL.Add('WHERE Registro = :pRegistro AND Item > 1');

           While not FichaInventario.Eof do begin
                 tAltera.ParamByName('pUniSaida').AsFloat   := mSalAnt;
                 tAltera.ParamByName('pTotSaida').AsFloat   := mSalAnt * FichaInventarioQtde_Saida.AsFloat;
                 tAltera.ParamByName('pTotalSaldo').AsFloat := mTotAnt + FichaInventarioTotal_Entrada.AsFloat - (mSalAnt * FichaInventarioQtde_Saida.AsFloat);
                 If FichaInventarioQtde_Saldo.AsFloat > 0 then
                    tAltera.ParamByName('pUniSaldo').AsFloat := (mTotAnt + FichaInventarioTotal_Entrada.AsFloat - (mSalAnt * FichaInventarioQtde_Saida.AsFloat)) / FichaInventarioQtde_Saldo.AsFloat
                 else
                    tAltera.ParamByName('pUniSaldo').AsFloat := 0;
                 tAltera.ParamByName('pRegistro').AsInteger  := FichaInventarioRegistro.AsInteger;
                 tAltera.Execute;
                 
                 FichaInventario.RefreshRecord;
                 
                 mSalAnt := FichaInventario.FieldByName('Unitario_Saldo').AsFloat;
                 mTotAnt := FichaInventario.FieldByName('Total_Saldo').AsFloat;

                 FichaInventario.Next;

                 Progresso.Position  := Progresso.Position + 1;
                 lPercentual.Caption := InttoStr(Round((Progresso.Position / Progresso.Max)* 100 ))+'%';
                 //Inc(mReg);
                 //lRegistros.Caption  := InttoStr(mReg);

                 Application.ProcessMessages;
           End;
           FichaInventario.EnableControls;
           
           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaInventario SET Unitario_Saida = 0');
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
