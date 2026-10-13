unit frmFichaEstoque2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, Math, Grids, DBCtrls, system.UITypes, MemDS, Vcl.WinXCtrls;

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
    bDirSQL: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cSenhaChange(Sender: TObject);
    procedure Metodo1;
    procedure Metodo2;
    procedure Metodo3;
    procedure bExecutarClick(Sender: TObject);
    procedure bDirSQLClick(Sender: TObject);
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

procedure TFichaEstoque2.bDirSQLClick(Sender: TObject);
begin
    //
end;

procedure TFichaEstoque2.Metodo3;
var
  T, T2: TDateTime;
begin
   Screen.Cursor  := crSQLWait;
   mTempo.Caption := FormatDateTime('hh:mm:ss',T-Now);
   T              := Now;
   T2             := T;
   
   Application.ProcessMessages;
   
   try
      with Dados, FichaEstoque do begin
           sql.clear;
           sql.add('set nocount on;');
           sql.add('set xact_abort ON;');
           sql.add('begin transaction;');
           sql.add('if object_id(''tempdb..#TEMPDT'')    is not null drop table #tempdt;');
           sql.add('if object_id(''tempdb..#TEMP'')      is not null drop table #temp;');
           sql.add('if object_id(''tempdb..#TEMP2'')     is not null drop table #temp2;');
           sql.add('if object_id(''FichaEstoque'',''U'') is not null truncate table FichaEstoque;');
           sql.add('select min(Data_Emissao) as Data');
           sql.add('into #tempdt');
           sql.add('from NotasFiscais');
           sql.add('where isnull(Cancelada,0) = 0');
           sql.add('and isnull(Nfe_Denegada,0) = 0');
           sql.add('union all');
           sql.add('select min(Data_Entrada)');
           sql.add('from NotasTerceiros');
           sql.add('where isnull(Provisoria,0) <> 1');
           sql.add('union all');
           sql.add('select min(Data_Transferencia)');
           sql.add('from ProdutosTransferencia;');
           sql.add('delete from #tempdt where Data is null;');
           sql.add('declare @Menor_Data datetime;');
           sql.add('declare @Maior_Data datetime;');
           sql.add('select @Menor_Data = min(Data), @Maior_Data = getdate() from #tempdt;');
           sql.add('select Codigo = ni.Codigo_Mercadoria');
           sql.add('      ,Descricao = cast(ni.Descricao_Mercadoria as varchar(500))');
           sql.add('      ,UM = ni.Unidade_Medida');
           sql.add('      ,NCM = ni.NCM');
           sql.add('      ,CFOP = nf.Natureza_Codigo');
           sql.add('      ,Historico = cast(case ni.Finalidade_Mercadoria');
           sql.add('                             when 0 then ''REVENDA''');
           sql.add('                             when 1 then ''CONSUMO''');
           sql.add('                             when 2 then ''DEVOLUÇÃO''');
           sql.add('                             when 3 then ''EXPORTAÇÃO''');
           sql.add('                             when 4 then ''PRÓPRIAS EM PODER DE TERCEIROS''');
           sql.add('                             when 5 then ''TERCEIROS EM PODER DA EMPRESA''');
           sql.add('                             when 6 then ''IMOBILIZADO''');
           sql.add('                             when 9 then ''OUTRAS''');
           sql.add('                   end as varchar(80))');
           sql.add('      ,Estoque = cast(case ni.Finalidade_Mercadoria');
           sql.add('                           when 0 then ''0-EMPRESA''');
           sql.add('                           when 1 then ''0-EMPRESA''');
           sql.add('                           when 2 then ''0-EMPRESA''');
           sql.add('                           when 3 then ''0-EMPRESA''');
           sql.add('                           when 4 then ''1-ARMAZEM''');
           sql.add('                           when 5 then ''2-TERCEIROS''');
           sql.add('                           when 6 then ''0-EMPRESA''');
           sql.add('                           when 9 then ''0-EMPRESA''');
           sql.add('                 end as varchar(15))');
           sql.add('      ,Nota = ni.Nota');
           sql.add('      ,Data = ni.Data');
           sql.add('      ,Destinatario_Codigo = nf.Fornecedor_Codigo');
           sql.add('      ,Destinatario_Nome = nf.Destinatario_Nome');
           sql.add('      ,Destinatario_CNPJ = nf.Destinatario_CNPJ_CPF');
           sql.add('      ,Finalidade = ni.Finalidade_Mercadoria');
           sql.add('      ,ES = ''E''');
           sql.add('      ,Processo = ni.Processo');
           sql.add('      ,Tipo_Processo = pd.Modalidade_Importacao');
           sql.add('      ,Qtde_Entrada = case when isnull(nf.Complementar,0) = 0 then ni.Quantidade else 0 end');
           sql.add('      ,Unitario_Entrada = round(ni.Valor_Inventario,4)');
           sql.add('      ,Total_Entrada = round(ni.Valor_Inventario,2) * ni.Quantidade');
           sql.add('      ,Qtde_Saida = cast(0 as float)');
           sql.add('      ,Unitario_Saida = cast(0 as money)');
           sql.add('      ,Total_Saida = cast(0 as money)');
           sql.add('      ,Qtde_Saldo = cast(0 as float)');
           sql.add('      ,Unitario_Saldo = cast(0 as money)');
           sql.add('      ,Total_Saldo = cast(0 as money)');
           sql.add('      ,Emissor = ''P''');
           sql.add('      ,Origem = ''NFP''');
           sql.add('into #temp');
           sql.add('from NotasItens NI');
           sql.add('inner join NotasFiscais NF on nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data and nf.Saida_Entrada = ni.Saida_Entrada');
           sql.add('left join Produtos P ON P.Codigo = ni.Codigo_Mercadoria');
           sql.add('outer apply (select top 1 pd.Modalidade_Importacao');
           sql.add('             from ProcessosDocumentos PD');
           sql.add('             where pd.Processo = ni.Processo');
           sql.add('             and pd.Tipo = ''IMPORTAÇÃO'') pd');
           sql.add('where ni.Saida_Entrada = 0');
           sql.add('and ni.Valor_Unitario > 0');
           sql.add('and isnull(ni.Cancelada,0) <> 1');
           sql.add('and isnull(ni.Nfe_Denegada,0) <> 1');
           sql.add('and (isnull(ni.Movimenta_Estoque,0) = 1 OR isnull(nf.Complementar,0) = 1);');
           sql.add('insert into #temp');
           sql.add('select Codigo = ni.Codigo_Mercadoria');
           sql.add('      ,Descricao = cast(ni.Descricao_Mercadoria as varchar(500))');
           sql.add('      ,UM = ni.Unidade_Medida');
           sql.add('      ,NCM = ni.NCM');
           sql.add('      ,CFOP = nf.Natureza_Codigo');
           sql.add('      ,Historico = case ni.Finalidade_Mercadoria');
           sql.add('                        when 0 then ''REVENDA''');
           sql.add('                        when 1 then ''CONSUMO''');
           sql.add('                        when 2 then ''DEVOLUÇÃO''');
           sql.add('                        when 3 then ''EXPORTAÇÃO''');
           sql.add('                        when 4 then ''PRÓPRIAS EM PODER DE TERCEIROS''');
           sql.add('                        when 5 then ''TERCEIROS EM PODER DA EMPRESA''');
           sql.add('                        when 6 then ''IMOBILIZADO''');
           sql.add('                        when 9 then ''OUTRAS''');
           sql.add('                   end');
           sql.add('      ,Estoque = case ni.Finalidade_Mercadoria');
           sql.add('                      when 0 then ''0-EMPRESA''');
           sql.add('                      when 1 then ''0-EMPRESA''');
           sql.add('                      when 2 then ''0-EMPRESA''');
           sql.add('                      when 3 then ''0-EMPRESA''');
           sql.add('                      when 4 then ''1-ARMAZEM''');
           sql.add('                      when 5 then ''2-TERCEIROS''');
           sql.add('                      when 6 then ''0-EMPRESA''');
           sql.add('                      when 9 then ''0-EMPRESA''');
           sql.add('                 end');
           sql.add('      ,Nota = ni.Nota');
           sql.add('      ,Data = ni.Data');
           sql.add('      ,Destinatario_Codigo = nf.Cliente_Codigo');
           sql.add('      ,Destinatario_Nome = nf.Destinatario_Nome');
           sql.add('      ,Destinatario_CNPJ = nf.Destinatario_CNPJ_CPF');
           sql.add('      ,Finalidade = ni.Finalidade_Mercadoria');
           sql.add('      ,ES = ''S''');
           sql.add('      ,Processo = ni.Processo');
           sql.add('      ,Tipo_Processo = pd.Modalidade_Importacao');
           sql.add('      ,Qtde_Entrada = cast(0 as float)');
           sql.add('      ,Unitario_Entrada = cast(0 as money)');
           sql.add('      ,Total_Entrada = cast(0 as money)');
           sql.add('      ,Qtde_Saida = case when isnull(nf.Complementar,0) = 0 then ni.Quantidade else 0 end');
           sql.add('      ,Unitario_Saida = cast(0 as money)');
           sql.add('      ,Total_Saida = cast(0 as money)');
           sql.add('      ,Qtde_Saldo = cast(0 as float)');
           sql.add('      ,Unitario_Saldo = cast(0 as money)');
           sql.add('      ,Total_Saldo = cast(0 as money)');
           sql.add('      ,Emissor = ''P''');
           sql.add('      ,Origem = ''NFP''');
           sql.add('from NotasItens NI');
           sql.add('inner join NotasFiscais nf on nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data and nf.Saida_Entrada = ni.Saida_Entrada');
           sql.add('left join Produtos p on p.Codigo = ni.Codigo_Mercadoria');
           sql.add('outer apply (select top 1 pd.Modalidade_Importacao');
           sql.add('             from ProcessosDocumentos pd');
           sql.add('             where pd.Processo = ni.Processo');
           sql.add('             and pd.Tipo = ''IMPORTAÇÃO'') pd');
           sql.add('where ni.Saida_Entrada = 1');
           sql.add('and ni.Cancelada <> 1');
           sql.add('and ni.Nfe_Denegada <> 1');
           sql.add('and ni.Movimenta_Estoque = 1');
           sql.add('and ni.Valor_Unitario > 0');
           sql.add('and nf.Complementar <> 1;');
           sql.add('insert into #temp');
           sql.add('select Codigo = pt.Produto_Entrada');
           sql.add('      ,Descricao = cast(p.Descricao as varchar(500))');
           sql.add('      ,UM = p.Unidade');
           sql.add('      ,NCM = p.NCM');
           sql.add('      ,CFOP = null');
           sql.add('      ,Historico = case pt.Motivo');
           sql.add('                        when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *''');
           sql.add('                        when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *''');
           sql.add('                        when ''I''   then ''* ENTRADA (INDUSTRIALIZAÇÃO) *''');
           sql.add('                        when ''IND'' then ''* ENTRADA (INDUSTRIALIZAÇÃO) *''');
           sql.add('                   end');
           sql.add('      ,Estoque = ''0-EMPRESA''');
           sql.add('      ,Nota = IIF(isnull(PT.Nota,0) = 0,PT.Registro,PT.Nota)');
           sql.add('      ,Data = PT.Data_Transferencia');
           sql.add('      ,Destinatario_Codigo = :pCodEmpresa');
           sql.add('      ,Destinatario_Nome = :pNomeEmpresa');
           sql.add('      ,Destinatario_CNPJ = :pCNPJEmpresa');
           sql.add('      ,Finalidade = 0');
           sql.add('      ,ES = ''E''');
           sql.add('      ,Processo = PT.Processo_Entrada');
           sql.add('      ,Tipo_Processo = pd.Modalidade_Importacao');
           sql.add('      ,Qtde_Entrada = PT.Quantidade_Entrada');
           sql.add('      ,Unitario_Entrada = round(PT.Valor_Unitario,2)');
           sql.add('      ,Total_Entrada = round(PT.Valor_Unitario,2) * PT.Quantidade_Entrada');
           sql.add('      ,Qtde_Saida = cast(0 as float)');
           sql.add('      ,Unitario_Saida = cast(0 as money)');
           sql.add('      ,Total_Saida = cast(0 as money)');
           sql.add('      ,Qtde_Saldo = cast(0 as float)');
           sql.add('      ,Unitario_Saldo = cast(0 as money)');
           sql.add('      ,Total_Saldo = cast(0 as money)');
           sql.add('      ,Emissor = ''P''');
           sql.add('      ,Origem = PT.Motivo');
           sql.add('from ProdutosTransferencia pt');
           sql.add('left join Produtos P ON P.Codigo = PT.Produto_Entrada');
           sql.add('outer apply (select top 1 pd.Modalidade_Importacao');
           sql.add('             from ProcessosDocumentos pd');
           sql.add('             where pd.Processo = pt.Processo_Entrada');
           sql.add('             and pd.Tipo = ''IMPORTAÇÃO'') pd');
           sql.add('where pt.Estoque = 1;');
           sql.add('insert into #temp');
           sql.add('select Codigo = PT.Produto_Saida');
           sql.add('      ,Descricao = cast(P.Descricao as varchar(500))');
           sql.add('      ,UM = P.Unidade');
           sql.add('      ,NCM = P.NCM');
           sql.add('      ,CFOP = NULL');
           sql.add('      ,Historico = case PT.Motivo');
           sql.add('                        when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *''');
           sql.add('                        when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *''');
           sql.add('                        when ''I''   then ''* SAÍDA (INDUSTRIALIZAÇÃO) *''');
           sql.add('                        when ''IND'' then ''* SAÍDA (INDUSTRIALIZAÇÃO) *''');
           sql.add('                   end');
           sql.add('      ,Estoque = ''0-EMPRESA''');
           sql.add('      ,Nota = iif(isnull(pt.Nota,0) = 0, pt.Registro, pt.Nota)');
           sql.add('      ,Data = pt.Data_Transferencia');
           sql.add('      ,Destinatario_Codigo = :pCodEmpresa');
           sql.add('      ,Destinatario_Nome = :pNomeEmpresa');
           sql.add('      ,Destinatario_CNPJ = :pCNPJEmpresa');
           sql.add('      ,Finalidade = 0');
           sql.add('      ,ES = ''S''');
           sql.add('      ,Processo = pt.Processo_Saida');
           sql.add('      ,Tipo_Processo = pd.Modalidade_Importacao');
           sql.add('      ,Qtde_Entrada = cast(0 as float)');
           sql.add('      ,Unitario_Entrada = cast(0 as money)');
           sql.add('      ,Total_Entrada = cast(0 as money)');
           sql.add('      ,Qtde_Saida = PT.Quantidade');
           sql.add('      ,Unitario_Saida = cast(0 as money)');
           sql.add('      ,Total_Saida = cast(0 as money)');
           sql.add('      ,Qtde_Saldo = cast(0 as float)');
           sql.add('      ,Unitario_Saldo = cast(0 as money)');
           sql.add('      ,Total_Saldo = cast(0 as money)');
           sql.add('      ,Emissor = ''P''');
           sql.add('      ,Origem = PT.Motivo');
           sql.add('from ProdutosTransferencia pt');
           sql.add('left join Produtos P ON P.Codigo = PT.Produto_Saida');
           sql.add('outer apply (select top 1 pd.Modalidade_Importacao');
           sql.add('             from ProcessosDocumentos pd');
           sql.add('             where pd.Processo = PT.Processo_Saida');
           sql.add('             and pd.Tipo = ''IMPORTAÇÃO'') pd');
           sql.add('where pt.Motivo in (''TRF'',''IND'')');
           sql.add('and pt.Estoque = 1;');
           sql.add('insert into #temp');
           sql.add('select Codigo = NTI.Codigo_Mercadoria');
           sql.add('      ,Descricao = cast(NTI.Descricao_Mercadoria as varchar(500))');
           sql.add('      ,UM = NTI.Unidade_Medida');
           sql.add('      ,NCM = NTI.NCM');
           sql.add('      ,CFOP = NTI.Natureza_Codigo');
           sql.add('      ,Historico = case RF.Finalidade_Mercadoria');
           sql.add('                        when 0 then ''COMPRA - REVENDA''');
           sql.add('                        when 1 then ''COMPRA - CONSUMO''');
           sql.add('                        when 2 then ''DEVOLUÇÃO''');
           sql.add('                        when 3 then ''EXPORTAÇÃO''');
           sql.add('                        when 4 then ''PRÓPRIAS EM PODER DE TERCEIROS''');
           sql.add('                        when 5 then ''TERCEIROS EM PODER DA EMPRESA''');
           sql.add('                        when 6 then ''COMPRA - IMOBILIZADO''');
           sql.add('                        when 9 then ''OUTRAS''');
           sql.add('                   end');
           sql.add('      ,Estoque = case RF.Finalidade_Mercadoria');
           sql.add('                      when 0 then ''0-EMPRESA''');
           sql.add('                      when 1 then ''0-EMPRESA''');
           sql.add('                      when 2 then ''0-EMPRESA''');
           sql.add('                      when 3 then ''0-EMPRESA''');
           sql.add('                      when 4 then ''1-ARMAZEM''');
           sql.add('                      when 5 then ''2-TERCEIROS''');
           sql.add('                      when 6 then ''0-EMPRESA''');
           sql.add('                      when 9 then ''0-EMPRESA''');
           sql.add('                 end');
           sql.add('      ,Nota = nti.Nota');
           sql.add('      ,Data = nti.Data_Entrada');
           sql.add('      ,Destinatario_Codigo = nti.Fornecedor');
           sql.add('      ,Destinatario_Nome = F.Nome');
           sql.add('      ,Destinatario_CNPJ = F.CNPJ');
           sql.add('      ,Finalidade = RF.Finalidade_Mercadoria');
           sql.add('      ,ES = ''E''');
           sql.add('      ,Processo = nti.Processo');
           sql.add('      ,Tipo_Processo = pd.Modalidade_Importacao');
           sql.add('      ,Qtde_Entrada = nti.Quantidade');
           sql.add('      ,Unitario_Entrada = round(NTI.Valor_Inventario,2)');
           sql.add('      ,Total_Entrada = round(NTI.Valor_Inventario,2) * NTI.Quantidade');
           sql.add('      ,Qtde_Saida = cast(0 as float)');
           sql.add('      ,Unitario_Saida = cast(0 as money)');
           sql.add('      ,Total_Saida = cast(0 as money)');
           sql.add('      ,Qtde_Saldo = cast(0 as float)');
           sql.add('      ,Unitario_Saldo = cast(0 as money)');
           sql.add('      ,Total_Saldo = cast(0 as money)');
           sql.add('      ,Emissor = ''T''');
           sql.add('      ,Origem = ''NFT''');
           sql.add('from NotasTerceirosItens NTI');
           sql.add('left join Produtos P on P.Codigo = NTI.Codigo_Mercadoria');
           sql.add('left join Fornecedores F on F.Codigo = NTI.Fornecedor');
           sql.add('left join ReferenciasFiscais RF on RF.Codigo = NTI.Referencia_Fiscal');
           sql.add('outer apply (select top 1 pd.Modalidade_Importacao');
           sql.add('             from ProcessosDocumentos PD');
           sql.add('             where pd.Processo = NTI.Processo');
           sql.add('             and pd.Tipo = ''IMPORTAÇÃO'') pd');
           sql.add('where nti.Movimenta_Estoque = 1');
           sql.add('and exists (select 1 from NotasTerceiros nt where nt.Nota = nti.Nota and nt.Data_Emissao = nti.Data_Emissao and nt.Fornecedor = nti.Fornecedor and nt.Provisoria <> 1)');
           sql.add('create clustered index ix_temp_cod_data on #temp (Codigo, Data, ES, Nota);');
           sql.add('select Linha = row_number() over (order by Codigo, Data, ES, Nota)');
           sql.add('      ,Item  = row_number() over (partition by Codigo order by Data, ES, Nota)');
           sql.add('      ,*');
           sql.add('into #temp2');
           sql.add('from #temp;');
           sql.add('create clustered index ix_temp2_cod_item on #temp2 (Codigo, Item);');
           sql.add('with Estoque as (');
           sql.add('   select T.Linha');
           sql.add('         ,T.Item');
           sql.add('         ,T.Codigo');
           sql.add('         ,T.NCM');
           sql.add('         ,T.Descricao');
           sql.add('         ,T.UM');
           sql.add('         ,T.CFOP');
           sql.add('         ,T.Historico');
           sql.add('         ,T.Estoque');
           sql.add('         ,T.Emissor');
           sql.add('         ,T.Origem');
           sql.add('         ,T.Nota');
           sql.add('         ,T.Data');
           sql.add('         ,T.ES');
           sql.add('         ,T.Destinatario_Codigo');
           sql.add('         ,T.Destinatario_Nome');
           sql.add('         ,T.Destinatario_CNPJ');
           sql.add('         ,T.Finalidade');
           sql.add('         ,T.Processo');
           sql.add('         ,T.Tipo_Processo');
           sql.add('         ,T.Qtde_Entrada');
           sql.add('         ,T.Unitario_Entrada');
           sql.add('         ,T.Total_Entrada');
           sql.add('         ,Qtde_Saida = T.Qtde_Saida');
           sql.add('         ,Unitario_Saida = cast(0 as money)');
           sql.add('         ,Total_Saida = cast(0 as money)');
           sql.add('         ,Qtde_Saldo = cast(round(T.Qtde_Entrada - T.Qtde_Saida, 3) as decimal(18,3))');
           sql.add('         ,Total_Saldo = cast(T.Total_Entrada - T.Total_Saida as money)');
           sql.add('         ,Unitario_Saldo = cast(iif(T.Qtde_Entrada - T.Qtde_Saida > 0, (T.Total_Entrada - T.Total_Saida) / (T.Qtde_Entrada - T.Qtde_Saida), 0) as money)');
           sql.add('   from #TEMP2 T');
           sql.add('   where T.Item = 1');
           sql.add('   union all');
           sql.add('   select T.Linha');
           sql.add('         ,T.Item');
           sql.add('         ,T.Codigo');
           sql.add('         ,T.NCM');
           sql.add('         ,T.Descricao');
           sql.add('         ,T.UM');
           sql.add('         ,T.CFOP');
           sql.add('         ,T.Historico');
           sql.add('         ,T.Estoque');
           sql.add('         ,T.Emissor');
           sql.add('         ,T.Origem');
           sql.add('         ,T.Nota');
           sql.add('         ,T.Data');
           sql.add('         ,T.ES');
           sql.add('         ,T.Destinatario_Codigo');
           sql.add('         ,T.Destinatario_Nome');
           sql.add('         ,T.Destinatario_CNPJ');
           sql.add('         ,T.Finalidade');
           sql.add('         ,T.Processo');
           sql.add('         ,T.Tipo_Processo');
           sql.add('         ,T.Qtde_Entrada');
           sql.add('         ,T.Unitario_Entrada');
           sql.add('         ,T.Total_Entrada');
           sql.add('         ,Qtde_Saida = T.Qtde_Saida');
           sql.add('         ,Unitario_Saida = cast(E.Unitario_Saldo as money)');
           sql.add('         ,Total_Saida = cast(E.Unitario_Saldo * T.Qtde_Saida as money)');
           sql.add('         ,Qtde_Saldo = cast(round(E.Qtde_Saldo + T.Qtde_Entrada - T.Qtde_Saida, 3) as decimal(18,3))');
           sql.add('         ,Total_Saldo = cast(case when e.Qtde_Saldo + t.Qtde_Entrada - t.Qtde_Saida > 0 then');
           sql.add('                                  case when T.ES = ''E'' then');
           sql.add('                                       e.Total_Saldo + t.Total_Entrada');
           sql.add('                                  else');
           sql.add('                                       e.Total_Saldo - (E.Unitario_Saldo * T.Qtde_Saida)');
           sql.add('                                  end');
           sql.add('                             else');
           sql.add('                                  0');
           sql.add('                             end as money)');
           sql.add('         ,Unitario_Saldo = cast(case when e.Qtde_Saldo + t.Qtde_Entrada - t.Qtde_Saida > 0 then');
           sql.add('                                     case when t.ES = ''E'' then');
           sql.add('                                          (e.Total_Saldo + t.Total_Entrada) / (e.Qtde_Saldo + t.Qtde_Entrada)');
           sql.add('                                     else');
           sql.add('                                          (e.Total_Saldo - (e.Unitario_Saldo * t.Qtde_Saida)) / (e.Qtde_Saldo - t.Qtde_Saida)');
           sql.add('                                     end');
           sql.add('                                else');
           sql.add('                                     0');
           sql.add('                                end as money)');
           sql.add('   from Estoque e');
           sql.add('   inner join #temp2 t on t.Codigo = e.Codigo and t.Item = e.Item + 1)');
           sql.add('insert into FichaEstoque');
           sql.add('select Linha');
           sql.add('      ,Item');
           sql.add('      ,Codigo');
           sql.add('      ,NCM');
           sql.add('      ,Descricao');
           sql.add('      ,UM');
           sql.add('      ,CFOP');
           sql.add('      ,Historico');
           sql.add('      ,Estoque');
           sql.add('      ,Emissor');
           sql.add('      ,Origem');
           sql.add('      ,Nota');
           sql.add('      ,Data');
           sql.add('      ,ES');
           sql.add('      ,Destinatario_Codigo');
           sql.add('      ,LTRIM(RTRIM(Destinatario_Nome))');
           sql.add('      ,Destinatario_CNPJ');
           sql.add('      ,Finalidade');
           sql.add('      ,Processo');
           sql.add('      ,Tipo_Processo');
           sql.add('      ,Qtde_Entrada');
           sql.add('      ,Unitario_Entrada');
           sql.add('      ,Total_Entrada');
           sql.add('      ,Qtde_Saida');
           sql.add('      ,Unitario_Saida');
           sql.add('      ,Total_Saida');
           sql.add('      ,Qtde_Saldo');
           sql.add('      ,Unitario_Saldo');
           sql.add('      ,Total_Saldo');
           sql.add('from Estoque');
           sql.add('order by Codigo, Data, ES,Nota');
           sql.add('option (maxrecursion 0);');
           sql.add('drop table #temp2;');
           sql.add('drop table #temp;');
           sql.add('drop table #tempdt;');
           sql.add('commit transaction;');
           sql.add('select * from FichaEstoque order by Codigo, Item;');
           ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //sql.savetofile('c:\temp\FichaEstoque.sql');
           Open;
           lTotal.Caption := InttoStr(RecordCount);
           mTempo.Caption := FormatDateTime('hh:mm:ss',T2-Now);
           Application.ProcessMessages;
      end;
   finally
      Screen.Cursor := crDefault;
      Showmessage('Processamento terminado.');
   end;
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
      if cMetodo.Itemindex = 2 then begin
         Metodo3;
         abort;
      end;

      with Dados do begin
           Usuarios.SQL.Clear;
           Usuarios.sql.add('select * from Usuarios where Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           Empresas.SQL.Clear;
           Empresas.sql.add('select * from Empresas where Codigo = :pCodigo');
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
           FichaEstoque.sql.add('-- NOTAS DE ENTRADA PROPRIA -- ');
           FichaEstoque.sql.add('if (select count(*) from SYSOBJECTS where XTYPE = ''U'' and NAME  = ''FichaEstoque'') > 0');
           FichaEstoque.sql.add('   truncate table FichaEstoque');
           FichaEstoque.sql.add('select min(Data_Emissao) as Data');
           FichaEstoque.sql.add('into #tempdt');
           FichaEstoque.sql.add('from NotasFiscais where isnull(Cancelada, 0) = 0 and isnull(Nfe_Denegada, 0) = 0');
           FichaEstoque.sql.add('union all');
           FichaEstoque.sql.add('select min(Data_Entrada) as Data');
           FichaEstoque.sql.add('from NotasTerceiros');
           FichaEstoque.sql.add('where isnull(Provisoria, 0) <> 1');
           FichaEstoque.sql.add('union all');
           FichaEstoque.sql.add('select min(Data_Transferencia) as Data');
           FichaEstoque.sql.add('from ProdutosTransferencia');
           FichaEstoque.sql.add('delete from #TEMPDT where Data is null');
           FichaEstoque.sql.add('declare @Menor_Data datetime');
           FichaEstoque.sql.add('       ,@Maior_Data datetime');
           FichaEstoque.sql.add('SET @Menor_Data = (select min(Data) from #TEMPDT)');
           FichaEstoque.sql.add('SET @Maior_Data = GETDATE()');
           FichaEstoque.sql.add('select  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.sql.add('       ,Descricao           = substring(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaEstoque.sql.add('       ,Descricao           = (select substring(Descricao, 1, 500) from Produtos where Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.sql.add('       ,UM                  = Unidade_Medida ');
           FichaEstoque.sql.add('       ,NCM                 = NCM');
           FichaEstoque.sql.add('       ,CFOP                = (select DISTINCT Natureza_Codigo from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Historico           = case Finalidade_Mercadoria');
           FichaEstoque.sql.add('                                   when 0 then ''REVENDA'' ');
           FichaEstoque.sql.add('                                   when 1 then ''CONSUMO'' ');
           FichaEstoque.sql.add('                                   when 2 then ''DEVOLUÇÃO'' ');
           FichaEstoque.sql.add('                                   when 3 then ''EXPORTAÇÃO'' ');
           FichaEstoque.sql.add('                                   when 4 then ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaEstoque.sql.add('                                   when 5 then ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 6 then ''IMOBILIZADO'' ');
           FichaEstoque.sql.add('                                   when 9 then ''OUTRAS'' ');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Estoque             = case Finalidade_Mercadoria');
           FichaEstoque.sql.add('                                   when 0 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 1 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 2 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 3 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 4 then ''1-ARMAZEM'' ');
           FichaEstoque.sql.add('                                   when 5 then ''2-TERCEIROS'' ');
           FichaEstoque.sql.add('                                   when 6 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 9 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Nota ');
           FichaEstoque.sql.add('       ,Data');
           FichaEstoque.sql.add('       ,Destinatario_Codigo = (select DISTINCT Fornecedor_Codigo from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Destinatario_Nome   = (select DISTINCT Destinatario_Nome from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Destinatario_CNPJ   = (select DISTINCT Destinatario_CNPJ_CPF from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Finalidade          = Finalidade_Mercadoria');
           FichaEstoque.sql.add('       ,ES                  = ''E'' ');
           FichaEstoque.sql.add('       ,Processo');
           FichaEstoque.sql.add('       ,Tipo_Processo       = (select Modalidade_Importacao from ProcessosDocumentos PD where pd.Processo =  ni.Processo and Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.sql.add('       ,Qtde_Entrada        = case when isnull((select Complementar from NotasFiscais where Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           FichaEstoque.sql.add('                                   Quantidade');
           FichaEstoque.sql.add('                              ELSE');
           FichaEstoque.sql.add('                                   0');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Unitario_Entrada    = round(Valor_Inventario, 4) ');
           FichaEstoque.sql.add('       ,Total_Entrada       = round(Valor_Inventario, 2) * Quantidade ');
           FichaEstoque.sql.add('       ,Qtde_Saida          = cast(0 as float) ');
           FichaEstoque.sql.add('       ,Unitario_Saida      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saida         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Qtde_Saldo          = cast(0 as float) ');
           FichaEstoque.sql.add('       ,Unitario_Saldo      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saldo         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Emissor             = ''P'' '); 
           FichaEstoque.sql.add('       ,Origem              = ''NFP'' ');
           FichaEstoque.sql.add('into #TEMP ');
           FichaEstoque.sql.add('from NotasItens NI ');
           FichaEstoque.sql.add('where Saida_Entrada = 0 ');
           FichaEstoque.sql.add('  and Valor_Unitario > 0');
           FichaEstoque.sql.add('  and isnull(ni.Cancelada, 0)     <> 1 ');
           FichaEstoque.sql.add('  and isnull(ni.Nfe_Denegada, 0)  <> 1 ');
           FichaEstoque.sql.add('  and (isnull(Movimenta_Estoque, 0) = 1 OR (select DISTINCT Complementar from NotasFiscais NF where nf.Numero = Nota and nf.Data_Emissao = Data and nf.Saida_Entrada = Saida_Entrada and Valor_Unitario > 0) = 1)');
           FichaEstoque.sql.add('-- NOTAS DE SAÍDA -- ');
           FichaEstoque.sql.add('union all ');
           FichaEstoque.sql.add('select  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.sql.add('       ,Descricao           = substring(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaEstoque.sql.add('       ,Descricao           = (select substring(Descricao, 1, 500) from Produtos where Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.sql.add('       ,UM                  = Unidade_Medida ');
           FichaEstoque.sql.add('       ,NCM                 = NCM');
           FichaEstoque.sql.add('       ,CFOP                = (select DISTINCT Natureza_Codigo from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Historico           = case Finalidade_Mercadoria');
           FichaEstoque.sql.add('                                   when 0 then ''REVENDA'' ');
           FichaEstoque.sql.add('                                   when 1 then ''CONSUMO'' ');
           FichaEstoque.sql.add('                                   when 2 then ''DEVOLUÇÃO'' ');
           FichaEstoque.sql.add('                                   when 3 then ''EXPORTAÇÃO'' ');
           FichaEstoque.sql.add('                                   when 4 then ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaEstoque.sql.add('                                   when 5 then ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 6 then ''IMOBILIZADO'' ');
           FichaEstoque.sql.add('                                   when 9 then ''OUTRAS'' ');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Estoque             = case Finalidade_Mercadoria');
           FichaEstoque.sql.add('                                   when 0 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 1 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 2 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 3 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 4 then ''1-ARMAZEM'' ');
           FichaEstoque.sql.add('                                   when 5 then ''2-TERCEIROS'' ');
           FichaEstoque.sql.add('                                   when 6 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 9 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Nota');
           FichaEstoque.sql.add('       ,Data');
           FichaEstoque.sql.add('       ,Destinatario_Codigo = (select DISTINCT Cliente_Codigo    from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Destinatario_Nome   = (select DISTINCT Destinatario_Nome from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Destinatario_CNPJ   = (select DISTINCT Destinatario_CNPJ_CPF from NotasFiscais NF where Numero = Nota and Data_Emissao = Data and nf.Saida_Entrada = ni.Saida_Entrada) ');
           FichaEstoque.sql.add('       ,Finalidade          = Finalidade_Mercadoria');
           FichaEstoque.sql.add('       ,ES                  = ''S'' ');
           FichaEstoque.sql.add('       ,Processo');
           FichaEstoque.sql.add('       ,Tipo_Processo       = (select Modalidade_Importacao from ProcessosDocumentos PD where pd.Processo =  ni.Processo and Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.sql.add('       ,Qtde_Entrada        = cast(0 as float)');
           FichaEstoque.sql.add('       ,Unitario_Entrada    = cast(0 as money)');
           FichaEstoque.sql.add('       ,Total_Entrada       = cast(0 as money)');
           FichaEstoque.sql.add('       ,Qtde_Saida          = case when isnull((select Complementar from NotasFiscais where Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           FichaEstoque.sql.add('                                   Quantidade');
           FichaEstoque.sql.add('                              ELSE');
           FichaEstoque.sql.add('                                   0');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Unitario_Saida      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saida         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Qtde_Saldo          = cast(0 as float) ');
           FichaEstoque.sql.add('       ,Unitario_Saldo      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saldo         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Emissor             = ''P'' ');
           FichaEstoque.sql.add('       ,Origem              = ''NFP'' ');
           FichaEstoque.sql.add('from NotasItens NI ');
           FichaEstoque.sql.add('where Saida_Entrada = 1 ');
           FichaEstoque.sql.add('and isnull(ni.Cancelada, 0)     <> 1 ');
           FichaEstoque.sql.add('and isnull(ni.Nfe_Denegada, 0)  <> 1 ');
           FichaEstoque.sql.add('and isnull(Movimenta_Estoque, 0) = 1 ');
           FichaEstoque.sql.add('and Valor_Unitario > 0');
           FichaEstoque.sql.add('and (select DISTINCT Complementar from NotasFiscais NF where nf.Numero = Nota and nf.Data_Emissao = Data and nf.Saida_Entrada = Saida_Entrada) <> 1');
           FichaEstoque.sql.add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           FichaEstoque.sql.add('union all ');
           FichaEstoque.sql.add('select  Codigo              = Produto_Entrada ');
           FichaEstoque.sql.add('       ,Descricao           = cast((select substring(Descricao, 1, 500) from Produtos where Codigo = Produto_Entrada) as VARCHAR(250))');
           FichaEstoque.sql.add('       ,UM                  = (select Unidade from Produtos where Codigo = Produto_Entrada) ');
           FichaEstoque.sql.add('       ,NCM                 = (select NCM     from Produtos where Codigo = Produto_Entrada) ');
           FichaEstoque.sql.add('       ,CFOP                = null ');
           FichaEstoque.sql.add('       ,Historico           = case Motivo');
           FichaEstoque.sql.add('                                   when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *'' ');
           FichaEstoque.sql.add('                                   when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *'' ');
           FichaEstoque.sql.add('                                   when ''I''   then ''* ENTRADA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.sql.add('                                   when ''IND'' then ''* ENTRADA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.sql.add('                              end');
           FichaEstoque.sql.add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaEstoque.sql.add('       ,Nota                = iif(isnull(Nota, 0) = 0, Registro, Nota)');
           FichaEstoque.sql.add('       ,Data                = Data_Transferencia');
           FichaEstoque.sql.add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaEstoque.sql.add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaEstoque.sql.add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaEstoque.sql.add('       ,Finalidade          = 0 ');
           FichaEstoque.sql.add('       ,ES                  = ''E'' ');
           FichaEstoque.sql.add('       ,Processo_Entrada');
           FichaEstoque.sql.add('       ,Tipo_Processo       = (select Modalidade_Importacao from ProcessosDocumentos PD where pd.Processo =  PT.Processo_Entrada and Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.sql.add('       ,Qtde_Entrada        = Quantidade_Entrada');
           FichaEstoque.sql.add('       ,Unitario_Entrada    = round(Valor_Unitario, 2) ');
           FichaEstoque.sql.add('       ,Total_Entrada       = round(Valor_Unitario, 2) * Quantidade_Entrada');
           FichaEstoque.sql.add('       ,Qtde_Saida          = cast(0 as float)');
           FichaEstoque.sql.add('       ,Unitario_Saida      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saida         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Qtde_Saldo          = cast(0 as float) ');
           FichaEstoque.sql.add('       ,Unitario_Saldo      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saldo         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Emissor             = ''P'' ');
           FichaEstoque.sql.add('       ,Origem              = Motivo');
           FichaEstoque.sql.add('from ProdutosTransferencia PT');
           FichaEstoque.sql.add('where Estoque = 1 ');
           FichaEstoque.sql.add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           FichaEstoque.sql.add('union all ');
           FichaEstoque.sql.add('select  Codigo              = Produto_Saida');
           FichaEstoque.sql.add('       ,Descricao           = cast((select substring(Descricao, 1, 500) from Produtos where Codigo = Produto_Saida) as VARCHAR(250))');
           FichaEstoque.sql.add('       ,UM                  = (select Unidade from Produtos where Codigo = Produto_Saida)');
           FichaEstoque.sql.add('       ,NCM                 = (select NCM     from Produtos where Codigo = Produto_Saida) ');
           FichaEstoque.sql.add('       ,CFOP                = null');
           FichaEstoque.sql.add('       ,Historico           = case Motivo');
           FichaEstoque.sql.add('                                   when ''A''   then ''* SALDO DE ABERTURA DE ESTOQUE *'' ');
           FichaEstoque.sql.add('                                   when ''TRF'' then ''* TRANSFERÊNCIA SALDO DE ESTOQUE *'' ');
           FichaEstoque.sql.add('                                   when ''I''   then ''* SAÍDA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.sql.add('                                   when ''IND'' then ''* SAÍDA (INDUSTRIALIZAÇÃO) *'' ');
           FichaEstoque.sql.add('                              end');
           FichaEstoque.sql.add('       ,Estoque             = ''0-EMPRESA'' ');
           FichaEstoque.sql.add('       ,Nota                = iif(isnull(Nota, 0) = 0, Registro, Nota)');
           FichaEstoque.sql.add('       ,Data                = Data_Transferencia');
           FichaEstoque.sql.add('       ,Destinatario_Codigo = :pCodEmpresa');
           FichaEstoque.sql.add('       ,Destinatario_Nome   = :pNomeEmpresa');
           FichaEstoque.sql.add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           FichaEstoque.sql.add('       ,Finalidade          = 0');
           FichaEstoque.sql.add('       ,ES                  = ''S'' ');
           FichaEstoque.sql.add('       ,Processo_Saida');
           FichaEstoque.sql.add('       ,Tipo_Processo       = (select Modalidade_Importacao from ProcessosDocumentos PD where pd.Processo =  PT.Processo_Saida and Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.sql.add('       ,Qtde_Entrada        = cast(0 as float)');
           FichaEstoque.sql.add('       ,Unitario_Entrada    = cast(0 as money)');
           FichaEstoque.sql.add('       ,Total_Entrada       = cast(0 as money)');
           FichaEstoque.sql.add('       ,Qtde_Saida          = Quantidade');
           FichaEstoque.sql.add('       ,Unitario_Saida      = cast(0 as money)');
           FichaEstoque.sql.add('       ,Total_Saida         = cast(0 as money)');
           FichaEstoque.sql.add('       ,Qtde_Saldo          = cast(0 as float)');
           FichaEstoque.sql.add('       ,Unitario_Saldo      = cast(0 as money)');
           FichaEstoque.sql.add('       ,Total_Saldo         = cast(0 as money)');
           FichaEstoque.sql.add('       ,Emissor             = ''P'' ');
           FichaEstoque.sql.add('       ,Origem              = Motivo');
           FichaEstoque.sql.add('from ProdutosTransferencia PT');
           FichaEstoque.sql.add('where Motivo in(''TRF'', ''IND'') ');
           FichaEstoque.sql.add('and Estoque = 1');
           FichaEstoque.sql.add('-- NOTA DE ENTRADA DE TERCEIROS ');
           FichaEstoque.sql.add('union all ');
           FichaEstoque.sql.add('select  Codigo              = Codigo_Mercadoria ');
           if cDescricao.ItemIndex = 0 then begin
              FichaEstoque.sql.add('       ,Descricao           = substring(Descricao_Mercadoria, 1, 500)');
           end else begin
              FichaEstoque.sql.add('       ,Descricao           = (select substring(Descricao, 1, 500) from Produtos where Produtos.Codigo = Codigo_Mercadoria)');
           end;
           FichaEstoque.sql.add('       ,UM                  = Unidade_Medida');
           FichaEstoque.sql.add('       ,NCM                 = NCM');
           FichaEstoque.sql.add('       ,CFOP                = Natureza_Codigo ');
           FichaEstoque.sql.add('       ,Historico           = case (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
           FichaEstoque.sql.add('                                   when 0 then ''COMPRA - REVENDA'' ');
           FichaEstoque.sql.add('                                   when 1 then ''COMPRA - CONSUMO'' ');
           FichaEstoque.sql.add('                                   when 2 then ''DEVOLUÇÃO'' ');
           FichaEstoque.sql.add('                                   when 3 then ''EXPORTAÇÃO'' ');
           FichaEstoque.sql.add('                                   when 4 then ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           FichaEstoque.sql.add('                                   when 5 then ''TERCEIROS EM PODER DA EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 6 then ''COMPRA - IMOBILIZADO'' ');
           FichaEstoque.sql.add('                                   when 9 then ''OUTRAS'' ');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Estoque             = case (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
           FichaEstoque.sql.add('                                   when 0 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 1 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 2 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 3 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 4 then ''1-ARMAZEM'' ');
           FichaEstoque.sql.add('                                   when 5 then ''2-TERCEIROS'' ');
           FichaEstoque.sql.add('                                   when 6 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                                   when 9 then ''0-EMPRESA'' ');
           FichaEstoque.sql.add('                              END');
           FichaEstoque.sql.add('       ,Nota ');
           FichaEstoque.sql.add('       ,Data                = Data_Entrada');
           FichaEstoque.sql.add('       ,Destinatario_Codigo = Fornecedor ');
           FichaEstoque.sql.add('       ,Destinatario_Nome   = (select Nome from Fornecedores where Codigo = Fornecedor) ');
           FichaEstoque.sql.add('       ,Destinatario_CNPJ   = (select CNPJ from Fornecedores where Codigo = Fornecedor) ');
           FichaEstoque.sql.add('       ,Finalidade          = (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal) ');
           FichaEstoque.sql.add('       ,ES                  = ''E'' ');
           FichaEstoque.sql.add('       ,Processo');
           FichaEstoque.sql.add('       ,Tipo_Processo       = (select Modalidade_Importacao from ProcessosDocumentos PD where pd.Processo =  NTI.Processo and Tipo = ''IMPORTAÇÃO'')');
           FichaEstoque.sql.add('       ,Qtde_Entrada        = Quantidade ');
           FichaEstoque.sql.add('       ,Unitario_Entrada    = round(Valor_Inventario, 2) ');
           FichaEstoque.sql.add('       ,Total_Entrada       = round(Valor_Inventario, 2) * Quantidade ');
           FichaEstoque.sql.add('       ,Qtde_Saida          = cast(0 as float) ');
           FichaEstoque.sql.add('       ,Unitario_Saida      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saida         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Qtde_Saldo          = cast(0 as float) ');
           FichaEstoque.sql.add('       ,Unitario_Saldo      = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Total_Saldo         = cast(0 as money) ');
           FichaEstoque.sql.add('       ,Emissor             = ''T'' ');
           FichaEstoque.sql.add('       ,Origem              = ''NFT'' ');
           FichaEstoque.sql.add('from NotasTerceirosItens NTI');
           FichaEstoque.sql.add('where NTI.Movimenta_Estoque = 1 ');
           FichaEstoque.sql.add('and (select DISTINCT(Provisoria) from NotasTerceiros NT where NT.Nota = NTI.Nota and NT.Data_Emissao = NTI.Data_Emissao and NT.Fornecedor = NTI.Fornecedor) <> 1');
           FichaEstoque.sql.add('select  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           FichaEstoque.sql.add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           FichaEstoque.sql.add('       ,*');
           FichaEstoque.sql.add('into #TEMP2');
           FichaEstoque.sql.add('from #TEMP');
           FichaEstoque.sql.add('ORDER BY Codigo, Data , ES');
           FichaEstoque.sql.add('-- ATUALIZANDO as QUANTIDADE DOS SALDOS.');
           FichaEstoque.sql.add('UPDATE #TEMP2 SET Qtde_Saldo = cast(');
           FichaEstoque.sql.add('                               isnull((select SUM(Qtde_Entrada) from #TEMP2 T2 where T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''E''), 0)');
           FichaEstoque.sql.add('                               - isnull((select SUM(Qtde_Saida) from #TEMP2 T2 where T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''S''), 0)');
           FichaEstoque.sql.add('                               + Qtde_Entrada');
           FichaEstoque.sql.add('                               - Qtde_Saida');
           FichaEstoque.sql.add('                               as decimal(14,3))');
           FichaEstoque.sql.add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           FichaEstoque.sql.add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           FichaEstoque.sql.add('                 ,Unitario_Saldo = case when Qtde_Saldo > 0 then (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           FichaEstoque.sql.add('where Item = 1');
           FichaEstoque.sql.add('insert into FichaEstoque');
           FichaEstoque.sql.add('            select Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           FichaEstoque.sql.add('                  ,Item');
           FichaEstoque.sql.add('                  ,Codigo ');
           FichaEstoque.sql.add('                  ,NCM');
           FichaEstoque.sql.add('                  ,Descricao ');
           FichaEstoque.sql.add('                  ,UM ');
           FichaEstoque.sql.add('                  ,CFOP ');
           FichaEstoque.sql.add('                  ,Historico ');
           FichaEstoque.sql.add('                  ,Estoque ');
           FichaEstoque.sql.add('                  ,Emissor');
           FichaEstoque.sql.add('                  ,Origem');
           FichaEstoque.sql.add('                  ,Nota ');
           FichaEstoque.sql.add('                  ,Data ');
           FichaEstoque.sql.add('                  ,ES ');
           FichaEstoque.sql.add('                  ,Destinatario_Codigo ');
           FichaEstoque.sql.add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           FichaEstoque.sql.add('                  ,Destinatario_CNPJ ');
           FichaEstoque.sql.add('                  ,Finalidade ');
           FichaEstoque.sql.add('                  ,Processo ');
           FichaEstoque.sql.add('                  ,Tipo_Processo');
           FichaEstoque.sql.add('                  ,Qtde_Entrada ');
           FichaEstoque.sql.add('                  ,Unitario_Entrada ');
           FichaEstoque.sql.add('                  ,Total_Entrada ');
           FichaEstoque.sql.add('                  ,Qtde_Saida ');
           FichaEstoque.sql.add('                  ,Unitario_Saida ');
           FichaEstoque.sql.add('                  ,Total_Saida ');
           FichaEstoque.sql.add('                  ,Qtde_Saldo ');
           FichaEstoque.sql.add('                  ,Unitario_Saldo ');
           FichaEstoque.sql.add('                  ,Total_Saldo ');
           FichaEstoque.sql.add('            from  #TEMP2 ');
           FichaEstoque.sql.add('            ORDER BY Codigo, Data, ES, Nota ');
           FichaEstoque.sql.add('select * from FichaEstoque ORDER BY Codigo, Item');
           FichaEstoque.sql.add('DROP TABLE #TEMP, #TEMP2, #TEMPDT ');
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
                     if (FichaEstoque.Fields[i].FieldName = 'Codigo') and (FichaEstoque.Fields[i].isnull) then begin
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

                    Grade.Cells[26, i] := Floattostr(roundto(mQtdeSaldo + Strtofloat(Grade.Cells[20, i]) - Strtofloat(Grade.Cells[23, i]), -3));    // Quantidade Saldo.
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
           FichaEstoque.sql.add('TRUNCATE TABLE FichaEstoque');
           FichaEstoque.Execute;

           mSQL.Clear;
           mSQL.Lines.Add('insert into FichaEstoque ');
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
                  FichaEstoque.sql.add(mSQLCampos);
                  FichaEstoque.sql.add(mSQL.Text);
                  //FichaEstoque.SQL.SaveToFile('c:\temp\Processamento_Estoque.sql');
                  FichaEstoque.Execute;
                  mSQL.Lines.Clear;
                  Progresso.Position  := Progresso.Position + 1;
                  lPercentual.Caption := InttoStr(round((Progresso.Position / Progresso.Max) * 100 ))+'%';
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
           tSaldo.sql.add('select Unitario_Saldo = isnull(Unitario_Saldo, 0)');
           tSaldo.sql.add('      ,Total_Saldo    = isnull(Total_Saldo, 0)');
           tSaldo.sql.add('from  FichaEstoque where Codigo = :pCodigo and Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := FichaEstoque.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := FichaEstoque.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.DisableControls;

           tAltera.SQL.Clear;
           tAltera.sql.add('UPDATE FichaEstoque SET Total_Saldo    = :pTotalSaldo');
           tAltera.sql.add('                       ,Unitario_Saida = :pUniSaida');
           tAltera.sql.add('                       ,Total_Saida    = :pTotSaida');
           tAltera.sql.add('                       ,Unitario_Saldo = :pUniSaldo');
           tAltera.sql.add('where Registro = :pRegistro and Item > 1');

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
                 lPercentual.Caption := InttoStr(round((Progresso.Position / Progresso.Max) * 100 ))+'%';

                 Application.ProcessMessages;
           End;
           FichaEstoque.EnableControls;
           
           tAltera.SQL.Clear;
           tAltera.sql.add('UPDATE FichaEstoque SET Unitario_Saida = 0');
           tAltera.sql.add('                          ,Total_Saida    = 0');
           tAltera.sql.add('                          ,Qtde_Saida     = 0');
           tAltera.sql.add('where ES = ''E'' ');
           tAltera.Execute;

           lMensagem.Visible := false;
           Showmessage('Ficha de inventario reprocessada!');
           Close;
      End;

      Screen.Cursor := crDefault;
end;


end.
