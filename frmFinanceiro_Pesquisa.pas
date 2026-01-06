unit frmFinanceiro_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Buttons, Vcl.StdCtrls,
  Mask, DBCtrls, DB, DBAccess, MSAccess, Funcoes, RxCurrEdit, RxToolEdit;

type
  TFinanceiro_Pesquisa = class(TForm)
    GroupBox1: TGroupBox;
    lValorDocumento: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    cNumero: TCurrencyEdit;
    cDataDOC: TDateEdit;
    cDataBaixa: TDateEdit;
    cValorDOC: TCurrencyEdit;
    cValorParcela: TCurrencyEdit;
    cValorOper: TCurrencyEdit;
    StaticText1: TStaticText;
    cNumeroDOC: TEdit;
    StaticText3: TStaticText;
    cObs: TMemo;
    bPesquisar: TSpeedButton;
    StaticText8: TStaticText;
    cDataVenc: TDateEdit;
    cValorBaixa: TCurrencyEdit;
    StaticText9: TStaticText;
    procedure bPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    mJanela : String;
    compClass
   ,compBancos:string;
  end;

var
  Financeiro_Pesquisa: TFinanceiro_Pesquisa;

implementation

uses frmFinanceiro_Lista, frmMenu_Principal, frmFinanceiro_BaixaLote, frmDados, frmFinanceiro_EstornoBaixa,frmFinanceiro_BoletosGerar;

{$R *.dfm}

procedure TFinanceiro_Pesquisa.bPesquisarClick(Sender: TObject);
begin
       Screen.Cursor := crSQLWait;
       with Dados do begin
            Configuracao.Open;
            CompClass  := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
            CompBancos := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
       end;

       // Filtros da tela de listagem do financeiro.
       If mJanela = 'Lista' then begin
          With Financeiro_Lista do begin
               cAgrupar.Checked := true;
               cAgrupar.Enabled := true;
               with tPagarReceber do begin
                    SQL.Clear;
                    SQL.Add('SELECT Numero');
                    SQL.Add('      ,Classificacao');
                    SQL.Add('      ,Centro_Custo');
                    SQL.Add('      ,Data_Previsao');
                    SQL.Add('      ,Data_Documento');
                    SQL.Add('      ,Data_Vencimento');
                    SQL.Add('      ,Valor_Documento');
                    SQL.Add('      ,Valor_Parcela');
                    SQL.Add('      ,Valor_Total');
                    SQL.Add('      ,Valor_Operacao');
                    SQL.Add('      ,ISNULL(Multa, 0)               AS Multa');
                    SQL.Add('      ,ISNULL(Juros, 0)               AS Juros');
                    SQL.Add('      ,ISNULL(Desconto, 0)            AS Desconto');
                    SQL.Add('      ,ISNULL(Desconto_Liquidacao, 0) AS Desconto_Liquidacao');
                    SQL.Add('      ,Numero_Documento');
                    SQL.Add('      ,Processo');
                    SQL.Add('      ,Parcela');
                    SQL.Add('      ,(SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) AS Valor_Baixado');
                    SQL.Add('      ,(SELECT MAX(Data)  FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero))  AS Data_Baixa');
                    SQL.Add('      ,Adiantamento_Numero');
                    SQL.Add('      ,Baixa_Numero');
                    SQL.Add('      ,Beneficiario =');
                    SQL.Add('       CASE WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = Fornecedor))');
                    SQL.Add('            WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes     WHERE(Clientes.Codigo = Cliente))');
                    SQL.Add('            WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE(Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao))');
                    SQL.Add('            WHEN Transferencia = 1  THEN (SELECT Nome FROM '+CompBancos+' WHERE Codigo = Banco) + ''  •  ''+ (SELECT Nome FROM '+CompBancos+' WHERE Codigo = Transferencia_Banco)');
                    SQL.Add('       END');
                    SQL.Add('      ,Classificacao_Descricao = (SELECT Descricao FROM '+CompClass+' CF WHERE(CF.Codigo = Classificacao))');
                    SQL.Add('      ,Banco_Nome = (SELECT Nome FROM '+CompBancos+' WHERE(Bancos.Codigo = Banco))');
                    SQL.Add('      ,Baixa = CASE WHEN (SELECT SUM(ROUND(Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) >= ISNULL(ROUND(Valor_Total,2), 0) THEN ''Total'' ');
                    SQL.Add('                     WHEN ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0) < ISNULL(ROUND(Valor_Total, 2), 0) AND ');
                    SQL.Add('                          ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0) > 0  THEN ''Parcial'' ');
                    SQL.Add('                END');
                    sql.add('      ,Liquidada = isnull((select Liquidar from EmprestimosDuplicatas where Duplicata= Numero_Documento), 0)');
                    SQL.Add('      ,Saldo = Valor_Operacao - (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero))');
                    SQL.Add('      ,CustoConta');
                    SQL.Add('      ,Custo_Seletivo');
                    sql.add('      ,Comissao = cast(iif(Classificacao in((select Classificacao_Pagamento from Configuracao), (select Classificacao_PagamentoPF from Configuracao)), 1, 0) as bit)');
                    sql.add('      ,Quitado  = cast(0 as bit)');
                    SQL.Add('      ,Custo_Entrada');
                    SQL.Add('      ,Custo_Outros');
                    SQL.Add('      ,Observacao');
                    SQL.Add('      ,Tipo');
                    SQL.Add('      ,Cliente');
                    SQL.Add('      ,Recuperavel');
                    SQL.Add('      ,Fiscal');
                    SQL.Add('      ,Vinculo');
                    sql.add('      ,Pedido_Rep = iif(PagarReceber.Tipo_Nota = ''SD'', (select distinct Pedido_Representante from NotasFiscais nf where PagarReceber.Tipo_Nota = ''SD'' and nf.Numero = PagarReceber.Fiscal), null)');
                    sql.add('into #temp');
                    SQL.Add('FROM PagarReceber');
                    SQL.Add('WHERE Numero IS NOT NULL');
                    SQL.Add('  AND Nivel <= :pNivel ');
                    ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;

                    If cNumero.AsInteger > 0 then begin
                       SQL.Add('AND (Numero = :pNumero) ');
                       ParamByName('pNumero').AsInteger := cNumero.AsInteger;
                    End;
                    If Trim(cNumeroDOC.Text) <> '' then begin
                       SQL.Add('AND Numero_Documento LIKE '+QuotedStr('%'+cNumeroDOC.Text+'%') );
                    End;
                    If Trim(RemoveCaracter('/', '', cDataDOC.Text)) <> '' then begin
                       SQL.Add('AND (Data_Documento = :pDataDOC) ');
                       ParamByName('pDataDOC').AsDate := cDataDOC.Date;
                    End;
                    If Trim(RemoveCaracter('/', '', cDataBaixa.Text)) <> '' then begin
                       SQL.Add('AND Numero IN(SELECT DISTINCT Numero FROM PagarReceberBaixas WHERE(Data = :pDataBaixa))');
                       ParamByName('pDataBaixa').AsDate := cDataBaixa.Date;
                    End;
                    If cValorDOC.Value > 0 then begin
                       SQL.Add('AND (Valor_Documento = :pValorDOC)');
                       ParamByName('pValorDOC').value := cValorDOC.Value;
                    End;
                    If cValorParcela.Value > 0 then begin
                       SQL.Add('AND (Valor_Parcela = :pValorParcela)');
                       ParamByName('pValorParcela').value:= cValorParcela.Value;
                    End;
                    If cValorOper.Value > 0 then begin
                       SQL.Add('AND (Valor_Operacao = :pValorOper)');
                       ParamByName('pValorOper').value := cValorOper.Value;
                    End;
                    If Trim(RemoveCaracter('/', '',cDataVenc.Text)) <> '' then begin
                       SQL.Add(' AND (Data_Vencimento = :pData)');
                       ParamByName('pData').AsDate := cDataVenc.Date;
                    End;
                    If Trim(cObs.Text) <> '' then begin
                       SQL.Add(' AND (Observacao LIKE '+QuotedStr('%'+Trim(cObs.Text)+'%')+')');
                    End;

                    sql.add('update #temp set Baixa = case when Valor_Baixado >= Valor_Total then ''Total'' ');
                    sql.add('                              when Valor_Baixado <  Valor_Total and Valor_Baixado > 0 then ''Parcial'' ');
                    sql.add('                         end,');
                    sql.add('                 Saldo = (Valor_Parcela + Multa + Juros - (Desconto+Desconto_Liquidacao)) - Valor_Baixado');
                    sql.add('update #temp set Quitado = iif((select sum(Valor) from PagarReceberBaixas prb where prb.Numero in(select Numero from PagarReceber pr where pr.Tipo = ''R'' and pr.Fiscal = #temp.Fiscal)) -');
                    sql.add('                               (select sum(Valor_Operacao) from PagarReceber pr where pr.Fiscal = #temp.Fiscal and Tipo = ''R'') >= 0, 1, 0)');
                    sql.add('where Comissao = 1');
                    sql.add('and   Tipo = ''P'' ');
                    SQL.Add('select * from #temp');
                    //SQL.SaveToFile('c:\temp\Financeiro_Lista_Consulta.sql');
                    Open;
               end;
          end;
       end;

       // Filtros da tela de baixa do financeiro.
       If mJanela = 'Baixa' then begin
          With Financeiro_BaixaLote do begin
               Grade.DisableScroll;
               Grade.UnselectAll;
               with tTitulos do begin
                    SQL.Clear;
                    SQL.Add('SELECT DISTINCT');
                    SQL.Add('       Numero,');
                    SQL.Add('       PagarReceber.Tipo,');
                    SQL.Add('       (SELECT Descricao FROM '+CompClass+' CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
                    SQL.Add('       (SELECT Cambio    FROM '+CompClass+' CF WHERE (CF.Codigo = Classificacao)) AS Cambio,');
                    SQL.Add('       Data_Vencimento,');
                    SQL.Add('       Processo,');
                    SQL.Add('       Valor_Documento,');
                    SQL.Add('       Valor_Parcela,');
                    SQL.Add('       Valor_Total,');
                    SQL.Add('       Multa,');
                    SQL.Add('       Juros,');
                    SQL.Add('       Desconto,');
                    SQL.Add('       Valor_Operacao,');
                    SQL.Add('       Valor_Baixado,');
                    SQL.Add('       Parcela,');
                    SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.TiposDocumentos WHERE(Codigo = PagarReceber.Documento)) AS Documento_Descricao,');
                    SQL.Add('       Numero_Documento,');
                    SQL.Add('       Data_Documento,');
                    SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT Nome FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
                    SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT Nome FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
                    SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
                    SQL.Add('       END AS Beneficiario,');
                    SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT isnull(CNPJ, '''')+isnull(CPF,'''') FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
                    SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT isnull(CNPJ, '''')+isnull(CPF,'''') FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
                    SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
                    SQL.Add('       END AS CNPJ_CPF,');
                    SQL.Add('       Solicitacao_Pgto,');
                    SQL.Add('       Banco,');
                    SQL.Add('       Forma_Tipo,');
                    SQL.Add('       Numero_FormaTipo,');
                    SQL.Add('       CAST(Observacao AS VARCHAR(500)) AS Obs_Titulo');
                    SQL.Add('FROM   PagarReceber');
                    SQL.Add('WHERE (ISNULL((SELECT SUM(ROUND(PagarReceberBaixas.Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0)) < ROUND(ISNULL(Valor_Parcela,0)+ISNULL(Juros,0)+ISNULL(Multa,0)-ISNULL(Desconto,0), 2)');
                    SQL.Add('      AND (Data_Vencimento > :pDataFechamento) ');
                    SQL.Add('      AND (Nivel <= :pNivel) ');
                    ParamByName('pDataFechamento').AsDate := Dados.EmpresasFechamento_Financeiro.AsDateTime;
                    ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;

                    If cNumero.AsInteger > 0 then begin
                       SQL.Add('AND (Numero = :pNumero) ');
                       ParamByName('pNumero').AsInteger := cNumero.AsInteger;
                    End;
                    If Trim(cNumeroDOC.Text) <> '' then begin
                       SQL.Add('AND (Numero_Documento LIKE '+QuotedStr('%'+cNumeroDOC.Text+'%')+')');
                    End;
                    If Trim(RemoveCaracter('/', '', cDataDOC.Text)) <> '' then begin
                       SQL.Add('AND (Data_Documento = :pDataDOC) ');
                       ParamByName('pDataDOC').AsDate := cDataDOC.Date;
                    End;
                    If Trim(RemoveCaracter('/', '', cDataBaixa.Text)) <> '' then begin
                       SQL.Add('AND Numero IN(SELECT DISTINCT Numero FROM PagarReceberBaixas WHERE(Data = :pDataBaixa))');
                       ParamByName('pDataBaixa').AsDate := cDataBaixa.Date;
                    End;
                    If cValorDOC.Value > 0 then begin
                       SQL.Add('AND (Valor_Documento = :pValorDOC)');
                       ParamByName('pValorDOC').AsCurrency := cValorDOC.Value;
                    End;
                    If cValorParcela.Value > 0 then begin
                       SQL.Add('AND (Valor_Parcela = :pValorParcela)');
                       ParamByName('pValorParcela').AsCurrency := cValorParcela.Value;
                    End;
                    If cValorOper.Value > 0 then begin
                       SQL.Add('AND (Valor_Operacao = :pValorOper)');
                       ParamByName('pValorOper').AsCurrency := cValorOper.Value;
                    End;
                    If Trim(RemoveCaracter('/', '',cDataVenc.Text)) <> '' then begin
                       SQL.Add(' AND (Data_Vencimento = :pData)');
                       ParamByName('pData').AsDate := cDataVenc.Date;
                       Financeiro_BaixaLote.cData.Date := cDataVenc.Date;
                    End;
                    If Trim(cObs.Text) <> '' then begin
                       SQL.Add(' AND (Observacao LIKE '+QuotedStr('%'+Trim(cObs.Text)+'%')+')');
                    End;
                    //tTitulos.SQL.SaveToFile('c:\temp\Financeiro_Pesquisa_Baixa.sql');
                    Open;
               end;
               If cSelecionar.Checked = True then Grade.SelectAll;

               Grade.EnableScroll;
          End;
       End;

       // Filtros da tela de baixa do financeiro.
       If mJanela = 'Estorno' then begin
          With Financeiro_EstornoBaixa do begin
               Grade.DisableScroll;
               with tTitulos do begin
                    SQL.Clear;
                    SQL.Add('SELECT PRB.Registro,');
                    SQL.Add('       PRB.Numero AS Num,');
                    SQL.Add('       PRB.Data,');
                    SQL.Add('       PRB.Multa,');
                    SQL.Add('       PRB.Origem_Multa,');
                    SQL.Add('       PRB.Juros,');
                    SQL.Add('       PRB.Origem_Juros,');
                    SQL.Add('       PRB.Desconto,');
                    SQL.Add('       PRB.Origem_Desconto,');
                    SQL.Add('       PRB.Valor,');
                    SQL.Add('       PR.Processo AS Processo, ');
                    SQL.Add('       Classificacao = (SELECT Descricao FROM '+CompClass+' WHERE(Codigo = PR.Classificacao)),');
                    SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT Nome FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
                    SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT Nome FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
                    SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
                    SQL.Add('       END AS Beneficiario,');
                    SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT isnull(CNPJ, '''')+isnull(CPF,'''') FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
                    SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT isnull(CNPJ, '''')+isnull(CPF,'''') FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
                    SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
                    SQL.Add('       END AS CNPJ_CPF,');
                    SQL.Add('       PR.Numero_Documento,');
                    SQL.Add('       PRB.Banco');
                    SQL.Add('FROM   PagarReceberBaixas AS PRB, PagarReceber AS PR');
                    SQL.Add('WHERE (PRB.Numero = PR.Numero)');
                    SQL.Add('  AND PRB.Data > :pDataFechamento ');
                    SQL.Add('  AND (PR.Nivel <= :pNivel) ');
                    SQL.Add('  AND PR.Numero NOT IN(SELECT ISNULL(Financeiro_Numero, 0) FROM EmprestimosFINIMP)');
                    ParamByName('pDataFechamento').AsDate := Dados.EmpresasFechamento_Financeiro.AsDateTime;
                    ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;

                    If cNumero.AsInteger > 0 then begin
                       SQL.Add('AND (PRB.Numero = :pNumero) ');
                       ParamByName('pNumero').AsInteger := cNumero.AsInteger;
                    End;
                    If Trim(cNumeroDOC.Text) <> '' then begin
                       SQL.Add('AND (PR.Numero_Documento LIKE '+QuotedStr('%'+cNumeroDOC.Text+'%')+')');
                    End;
                    If Trim(RemoveCaracter('/', '', cDataDOC.Text)) <> '' then begin
                       SQL.Add('AND (PRB.Data_Documento = :pDataDOC) ');
                       ParamByName('pDataDOC').AsDate := cDataDOC.Date;
                    End;
                    If Trim(RemoveCaracter('/', '', cDataBaixa.Text)) <> '' then begin
                       SQL.Add('AND PRB.Numero IN(SELECT DISTINCT Numero FROM PagarReceberBaixas WHERE(Data = :pDataBaixa))');
                       ParamByName('pDataBaixa').AsDate   := cDataBaixa.Date;
                       Financeiro_EstornoBaixa.cData.Date := cDataBaixa.Date;
                    End;
                    If cValorDOC.Value > 0 then begin
                       SQL.Add('AND (Valor_Documento = :pValorDOC)');
                       ParamByName('pValorDOC').AsCurrency := cValorDOC.Value;
                    End;
                    If cValorParcela.Value > 0 then begin
                       SQL.Add('AND (Valor_Parcela = :pValorParcela)');
                       ParamByName('pValorParcela').AsCurrency := cValorParcela.Value;
                    End;
                    If cValorOper.Value > 0 then begin
                       SQL.Add('AND (Valor_Operacao = :pValorOper)');
                       ParamByName('pValorOper').AsCurrency := cValorOper.Value;
                    End;
                    If Trim(RemoveCaracter('/', '',cDataVenc.Text)) <> '' then begin
                       SQL.Add(' AND (PR.Data_Vencimento = :pData)');
                       ParamByName('pData').AsDate := cDataVenc.Date;
                    End;
                    If Trim(cObs.Text) <> '' then begin
                       SQL.Add(' AND (PRB.Observacao LIKE '+QuotedStr('%'+Trim(cObs.Text)+'%')+')');
                    End;
                    //SQL.SaveToFile('c:\temp\Financeiro_Pesquisa_Estorno.sql');
                    Open;
               end;
               Grade.EnableScroll;
               Screen.Cursor := crDefault;
           End;
       End;

       // Filtros da tela de boletos bancarios.
       If mJanela = 'Boleto' then begin
          With Financeiro_BoletosGerar do begin
               with tTitulos do begin
                    SQL.Clear;
                    SQL.Add('SELECT DISTINCT');
                    SQL.Add('       Numero,');
                    SQL.Add('       Beneficiario = (SELECT Nome FROM Clientes WHERE Clientes.Codigo = Cliente),');
                    SQL.Add('       (SELECT Descricao FROM '+CompClass+' CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
                    SQL.Add('       Data_Vencimento,');
                    SQL.Add('       Processo,');
                    SQL.Add('       Valor_Documento,');
                    SQL.Add('       Valor_Parcela,');
                    SQL.Add('       Valor_Operacao,');
                    SQL.Add('       Boleto_Numero,');
                    SQL.Add('       Numero_Documento,');
                    SQL.Add('       Data_Documento,');
                    SQL.Add('       Saldo = CAST(0 AS money)');
                    SQL.Add('FROM   PagarReceber');
                    SQL.Add('WHERE  (SELECT Boleto FROM '+CompClass+' WHERE Codigo = Classificacao) = 1 ');
                    SQL.Add('       AND (ISNULL((SELECT SUM(ROUND(PagarReceberBaixas.Valor, 2)) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0)) < ROUND(ISNULL(Valor_Parcela,0)+ISNULL(Juros, 0)+ISNULL(Multa,0)-ISNULL(Desconto,0), 2)');
                    SQL.Add('       AND (Data_Vencimento > :pDataFechamento) ');
                    SQL.Add('       AND (Nivel <= :pNivel) ');
                    SQL.Add('       AND (ISNULL(Provisorio, 0) <> 1) ');
                    SQL.Add('       AND (ISNULL(Boleto_Numero, 0) = 0)');

                    If cNumero.AsInteger > 0 then begin
                       SQL.Add('AND (Numero = :pNumero) ');
                       ParamByName('pNumero').AsInteger := cNumero.AsInteger;
                    End;
                    If Trim(cNumeroDOC.Text) <> '' then begin
                       SQL.Add('AND (Numero_Documento LIKE '+QuotedStr('%'+cNumeroDOC.Text+'%')+')');
                    End;
                    If Trim(RemoveCaracter('/', '', cDataDOC.Text)) <> '' then begin
                       SQL.Add('AND (Data_Documento = :pDataDOC) ');
                       ParamByName('pDataDOC').AsDate := cDataDOC.Date;
                    End;
                    If Trim(RemoveCaracter('/', '', cDataBaixa.Text)) <> '' then begin
                       SQL.Add('AND Numero IN(SELECT DISTINCT Numero FROM PagarReceberBaixas WHERE(Data = :pDataBaixa))');
                       ParamByName('pDataBaixa').AsDate := cDataBaixa.Date;
                    End;
                    If cValorDOC.Value > 0 then begin
                       SQL.Add('AND (Valor_Documento = :pValorDOC)');
                       ParamByName('pValorDOC').AsCurrency := cValorDOC.Value;
                    End;
                    If cValorParcela.Value > 0 then begin
                       SQL.Add('AND (Valor_Parcela = :pValorParcela)');
                       ParamByName('pValorParcela').AsCurrency := cValorParcela.Value;
                    End;
                    If cValorOper.Value > 0 then begin
                       SQL.Add('AND (Valor_Operacao = :pValorOper)');
                       ParamByName('pValorOper').AsCurrency := cValorOper.Value;
                    End;
                    If Trim(RemoveCaracter('/', '',cDataVenc.Text)) <> '' then begin
                       SQL.Add(' AND (Data_Vencimento = :pData)');
                       ParamByName('pData').AsDate := cDataVenc.Date;
                       Financeiro_BaixaLote.cData.Date := cDataVenc.Date;
                    End;
                    If Trim(cObs.Text) <> '' then begin
                       SQL.Add(' AND (Observacao LIKE '+QuotedStr('%'+Trim(cObs.Text)+'%')+')');
                    End;
                    //SQL.SaveToFile('c:\temp\Financeiro_Pesquisa_Boleto.sql');
                    ParamByName('pDataFechamento').AsDate := Dados.EmpresasFechamento_Financeiro.AsDateTime;
                    ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;
                    Open;
                    EnableControls;
               end;
               Screen.Cursor := crDefault;
          End;
       End;

       Screen.Cursor := crDefault;
       Close;
end;

procedure TFinanceiro_Pesquisa.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_Pesquisa.Release;
     Financeiro_Pesquisa := nil;
end;

procedure TFinanceiro_Pesquisa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then bPesquisar.Click;
end;

procedure TFinanceiro_Pesquisa.FormShow(Sender: TObject);
begin
       cValorBaixa.Enabled := mJanela = 'Estorno';
       StaticText9.Enabled := mJanela = 'Estorno';
       cDataBaixa.Enabled  := mJanela = 'Estorno';
       StaticText6.Enabled := mJanela = 'Estorno';
end;

end.
