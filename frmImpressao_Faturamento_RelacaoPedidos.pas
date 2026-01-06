unit frmImpressao_Faturamento_RelacaoPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands, ppClass, ppVar, ppCtrls,
  ppReport, ppSubRpt, ppPrnabl, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask, IniFiles, Funcoes,
  ppRichTx, DBGrids, Grids, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_RelacaoPedidos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    rRelacao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppParameterList1: TppParameterList;
    pPedidos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tRepresentantes: TMSQuery;
    dstRepresentantes: TDataSource;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText7: TStaticText;
    cRepresentante: TRxDBLookupCombo;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    StaticText3: TStaticText;
    cCliente: TRxDBLookupCombo;
    cTipo: TRadioGroup;
    StaticText4: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine6: TppLine;
    Button1: TButton;
    cSituacao: TRadioGroup;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine7: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    tItens: TMSQuery;
    dstItens: TDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    pitens: TppDBPipeline;
    ppDBRichText1: TppDBRichText;
    ppDBText14: TppDBText;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    ppLabel20: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel1: TppLabel;
    ppDBText21: TppDBText;
    ppLine9: TppLine;
    ppDBText22: TppDBText;
    ppLabel2: TppLabel;
    iLogo: TppImage;
    StaticText5: TStaticText;
    cProcesso: TRxDBLookupCombo;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    dstPedidos: TDataSource;
    ppLabel4: TppLabel;
    ppDBText23: TppDBText;
    tPedidos: TMSQuery;
    ppDBText24: TppDBText;
    ppLabel5: TppLabel;
    StaticText6: TStaticText;
    cPedido: TRxDBLookupCombo;
    tNumPed: TMSQuery;
    dstNumPed: TDataSource;
    tNumPedNumero: TIntegerField;
    tNumPedData_Emissao: TDateTimeField;
    tNumPedProcesso: TStringField;
    lFaturado: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cDataIniExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_RelacaoPedidos: TImpressao_Faturamento_RelacaoPedidos;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_RelacaoPedidos.bSairClick(Sender: TObject);
begin
      Close;
      LimpaMemoria;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.FormClose(Sender: TObject;var Action: TCloseAction);
var
    aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Tipo'    , cTipo.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Situacao', cSituacao.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'DataIni' , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'DataFim' , cDataFim.Date );
      If cRepresentante.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Representante', cRepresentante.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Representante', '');
         
      If cCliente.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Cliente', '');

      If cFornecedor.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Fornecedor', cFornecedor.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Fornecedor', '');
      aINI.Free;

      Impressao_Faturamento_RelacaoPedidos.Release;
      Impressao_Faturamento_RelacaoPedidos := nil;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_RelacaoPedidos.cTipoClick(Sender: TObject);
begin
      if cTipo.ItemIndex = 0 then begin
         cCliente.KeyValue       := 0;
         cRepresentante.KeyValue := 0;
      end;
      If cTipo.ItemIndex = 1 then begin
         cFornecedor.KeyValue := 0;
      End;
      If cTipo.ItemIndex = 2 then begin
         cCliente.KeyValue       := 0;
         cRepresentante.KeyValue := 0;
         cFornecedor.KeyValue    := 0;
      End;
      cCliente.Enabled       := cTipo.ItemIndex <> 0;
      cRepresentante.Enabled := cTipo.ItemIndex <> 0;
      cFornecedor.Enabled    := cTipo.ItemIndex = 0;
      with tNumPed do begin
           sql.Clear;
           sql.Add('select Numero, Data_Emissao, Processo');
           sql.add('from   Pedidos');
           if cTipo.ItemIndex < 2 then begin
              sql.add('where  Saida_Entrada = :pES');
              parambyname('pES').AsInteger := cTipo.ItemIndex;
           end;
           sql.Add('order by Data_Emissao, Processo, Numero');
           open;
      end;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cTipo.ItemIndex         := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Tipo'         , 2 );
      cSituacao.ItemIndex     := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Situacao'     , 2 );
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'DataIni'      , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'DataFim'      , Date );
      cRepresentante.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Representante', 0 );
      cCliente.KeyValue       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Cliente'      , 0 );
      cFornecedor.KeyValue    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOS', 'Fornecedor'   , 0 );
      aINI.Free;

      With Dados do begin
           tRepresentantes.SQL.Clear;
           tRepresentantes.SQL.Add('SELECT * FROM Fornecedores FR WHERE ISNULL(Ativo, 0) = 1 AND ISNULL((SELECT Comissionado FROM RamoAtividade RA WHERE RA.Codigo = FR.Ramo_Atividade), 0) = 1');
           tRepresentantes.SQL.Add('ORDER  BY Nome');
           tRepresentantes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.SQL.Add('WHERE  Ativo = 1');
           Fornecedores.SQL.Add('ORDER BY Nome');
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.SQL.Add('WHERE  Ativo = 1');
           Clientes.SQL.Add('ORDER BY Nome');
           Clientes.Open;

           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
           ModalidadesPgto.Open;

           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT DISTINCT Processo INTO #TEMP FROM NotasItens WHERE ISNULL(Processo, '''') <> '''' ');
           tProcessos.SQL.Add('UNION ALL');
           tProcessos.SQL.Add('SELECT DISTINCT Processo FROM PedidosItens WHERE ISNULL(Processo, '''') <> '''' ');
           tProcessos.SQL.Add('SELECT DISTINCT Processo FROM #TEMP ORDER BY Processo');
           tProcessos.SQL.Add('DROP TABLE #TEMP');
           tProcessos.Open;

           with tNumPed do begin
                sql.Clear;
                sql.Add('select Numero, Data_Emissao, Processo');
                sql.add('from   Pedidos');
                sql.Add('order by Data_Emissao, Processo, Numero');
                open;
           end;
      End;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pCodigo');
                parambyname('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
           with tPedidos do begin 
                SQL.Clear;
                SQL.Add('SELECT pd.Numero');
                SQL.Add('      ,pd.Numero AS Pedido_Nota');
                SQL.Add('      ,pd.Pedido_Representante');
                SQL.Add('      ,pd.Data_Emissao');
                SQL.Add('      ,CASE WHEN pd.Saida_Entrada = 0 THEN ''ENTRADA'' ELSE ''SAÍDA'' END AS Saida_Entrada');
                SQL.Add('      ,CASE WHEN pd.Saida_Entrada = 0 THEN');
                SQL.Add('            (SELECT Nome FROM Fornecedores WHERE(Codigo = PD.Fornecedor_Codigo))');
                SQL.Add('       ELSE');
                SQL.Add('            (SELECT Nome FROM Clientes     WHERE(Codigo = PD.Cliente_Codigo))');
                SQL.Add('       END AS Destinatario');
                SQL.Add('      ,Representante_Nome = ISNULL((SELECT Nome FROM Fornecedores WHERE(Codigo = PD.Representante)), '''')');
                SQL.Add('      ,pd.Valor_TotalNota');
                SQL.Add('      ,pd.Valor_TotalProdutos');
                SQL.Add('      ,(SELECT Origem_Pedido FROM PedidosRepresentantes WHERE(Pedido = PD.Pedido_Representante)) AS Origem_Pedido');
                SQL.Add('      ,Matriz_Filial = iif((select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = 22) = 0, ''MATRIZ'', cast((select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = 22) as varchar(6)))');
                SQL.Add('      ,Nota             = 0');
                SQL.Add('      ,Data_Nota        = NULL');
                SQL.Add('      ,Endereco_Entrega = (SELECT Rua_Entrega+'' nº ''+Rua_EntregaNumero+'', ''+Bairro_Entrega+'' - CEP:''+Cep_Entrega+'' - ''+');
                SQL.Add('                          (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = Municipio_Entrega)+'' (''+Estado_Entrega+'')'' FROM Clientes WHERE Codigo = PD.Cliente_Codigo) ');
                SQL.Add('      ,Condicao_Pgto    = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento WHERE Codigo = (SELECT Modalidade_Pagamento FROM PedidosRepresentantes WHERE Pedido = PD.Pedido_Representante))');
                SQL.Add('      ,Condicao_Frete   = CASE WHEN Modalidade_Frete = 0 THEN ''Por conta do emitente'' ');
                SQL.Add('                               WHEN Modalidade_Frete = 1 THEN ''Por conta do destinatário/remetente'' ');
                SQL.Add('                               WHEN Modalidade_Frete = 2 THEN ''Por conta de terceiros'' ');
                SQL.Add('                               WHEN Modalidade_Frete = 9 THEN ''Sem cobrança de frete'' ');
                SQL.Add('                          END');
                SQL.Add('      ,Itens = pd.Numero');
                SQL.Add('      ,pd.Processo');
                SQL.Add('INTO #TMP');
                SQL.Add('FROM Pedidos PD');
                SQL.Add('WHERE pd.Valor_TotalNota > 0');
                If trim(cPedido.Text) <> '' then begin
                   SQL.Add('AND pd.Numero = :pNum');
                   parambyname('pNum').AsInteger := cPedido.KeyValue;
                End;
                If cTipo.ItemIndex = 0 then begin
                   SQL.Add('AND pd.Saida_Entrada = 0');
                End;
                If cTipo.ItemIndex = 1 then begin
                   SQL.Add('AND pd.Saida_Entrada = 1');
                End;
                If not DataLimpa(cDataIni.Text) then begin
                   SQL.Add('AND pd.Data_Emissao BETWEEN :pDataIni AND :pDataFim');
                End;
                If Trim(cRepresentante.DisplayValue) <> '' then begin
                   SQL.Add('AND pd.Representante = :pRepresentante');
                   ParamByName('pRepresentante').AsInteger := tRepresentantes.FieldByName('Codigo').AsInteger;
                End;
                If Trim(cCliente.DisplayValue) <> '' then begin
                   SQL.Add('AND pd.Cliente_Codigo = :pCliente');
                   ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
                End;
                If Trim(cFornecedor.DisplayValue) <> '' then begin
                   SQL.Add('AND pd.Fornecedor_Codigo = :pFornecedor');
                   ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.AsInteger;
                End;
                If Trim(cProcesso.DisplayValue) <> '' then begin
                   SQL.Add('AND pd.Processo = :pProc');
                   ParamByName('pProc').Asstring := cProcesso.Text;
                End;

                If cSituacao.ItemIndex <> 1 then begin
                   SQL.Add('UNION ALL');
                   SQL.Add('SELECT nf.Numero');
                   SQL.Add('      ,nf.Pedido_Nota');
                   SQL.Add('      ,nf.Pedido_Representante');
                   SQL.Add('      ,nf.Data_Emissao');
                   SQL.Add('      ,CASE WHEN nf.Saida_Entrada = 0 THEN ''ENTRADA'' ELSE ''SAÍDA'' END AS Saida_Entrada');
                   SQL.Add('      ,CASE WHEN nf.Saida_Entrada = 0 THEN');
                   SQL.Add('            (SELECT Nome FROM Fornecedores WHERE(Codigo = NF.Fornecedor_Codigo))');
                   SQL.Add('       ELSE');
                   SQL.Add('            (SELECT Nome FROM Clientes     WHERE(Codigo = NF.Cliente_Codigo))');
                   SQL.Add('       END AS Destinatario');
                   SQL.Add('      ,Representante_Nome = ISNULL((SELECT Nome FROM Fornecedores WHERE(Codigo = NF.Representante)), '''')');
                   SQL.Add('      ,nf.Valor_TotalNota');
                   SQL.Add('      ,nf.Valor_TotalProdutos');
                   SQL.Add('      ,Origem_Pedido = CASE WHEN ISNULL(NF.Pedido_Representante, '''') <> '''' AND Representante > 0 THEN (SELECT Origem_Pedido FROM PedidosRepresentantes WHERE Pedido = NF.Pedido_Representante) END');
                   SQL.Add('      ,Matriz_Filial = iif((select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = 22) = 0, ''MATRIZ'', cast((select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = 22) as varchar(6)))');
                   SQL.Add('      ,Nota             = nf.Numero');
                   SQL.Add('      ,Data_Nota        = nf.Data_Emissao');
                   SQL.Add('      ,Endereco_Entrega = (SELECT Rua_Entrega+'' nº ''+Rua_EntregaNumero+'', ''+Bairro_Entrega+'' - CEP:''+Cep_Entrega+'' - ''+');
                   SQL.Add('                          (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = Municipio_Entrega)+'' (''+Estado_Entrega+'')'' FROM Clientes WHERE Codigo = NF.Cliente_Codigo) ');
                   SQL.Add('      ,Condicao_Pgto    = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento WHERE Codigo = (SELECT Modalidade_Pagamento FROM PedidosRepresentantes WHERE Pedido = NF.Pedido_Representante AND NF.Representante > 0))');
                   SQL.Add('      ,Condicao_Frete   = CASE WHEN Modalidade_Frete = 0 THEN ''Por conta do emitente'' ');
                   SQL.Add('                               WHEN Modalidade_Frete = 1 THEN ''Por conta do destinatário/remetente'' ');
                   SQL.Add('                               WHEN Modalidade_Frete = 2 THEN ''Por conta de terceiros'' ');
                   SQL.Add('                               WHEN Modalidade_Frete = 9 THEN ''Sem cobrança de frete'' ');
                   SQL.Add('                          END');
                   SQL.Add('      ,Itens = nf.Numero');
                   SQL.Add('      ,nf.Processo');
                   SQL.Add('FROM NotasFiscais NF');
                   SQL.Add('WHERE ISNULL(nf.Cancelada, 0) = 0');
                   If cTipo.ItemIndex = 0 then begin
                      SQL.Add('AND nf.Saida_Entrada = 0');
                   End;
                   If cTipo.ItemIndex = 1 then begin
                      SQL.Add('AND nf.Saida_Entrada = 1');
                   End;
                   If not DataLimpa(cDataIni.Text) then begin
                      SQL.Add('AND nf.Data_Emissao BETWEEN :pDataIni AND :pDataFim');
                   End;
                   If Trim(cRepresentante.DisplayValue) <> '' then begin
                      SQL.Add('AND nf.Representante = :pRepresentante');
                      ParamByName('pRepresentante').AsInteger := tRepresentantes.FieldByName('Codigo').AsInteger;
                   End;
                   If Trim(cCliente.DisplayValue) <> '' then begin
                      SQL.Add('AND nf.Cliente_Codigo = :pCliente');
                      ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
                   End;
                   If Trim(cFornecedor.DisplayValue) <> '' then begin
                      SQL.Add('AND nf.Fornecedor_Codigo = :pFornecedor');
                      ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.AsInteger;
                   End;
                   If Trim(cProcesso.DisplayValue) <> '' then begin
                      SQL.Add('AND nf.Processo = :pProc');
                      ParamByName('pProc').Asstring := cProcesso.Text;
                   End;
                End;

                SQL.Add('select * from #TMP');
                If cSituacao.ItemIndex = 0 then begin
                   SQL.Add('where isnull(#TMP.Nota, 0) > 0');
                End;
                If cSituacao.ItemIndex = 1 then begin
                   SQL.Add('where isnull(#TMP.Nota, 0) = 0');
                End;
                SQL.Add('order by Representante_Nome, Data_Emissao, Saida_Entrada, Numero');
                SQL.Add('drop table #TMP');
                if not DataLimpa(cDataIni.Text) then begin
                   ParamByName('pDataIni').AsDate := cDataIni.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                end;
                
                //SQL.SaveToFile('C:\Temp\Relacao_Pedidos.sql');
                Open;
           end;
      End;

      Screen.Cursor := crDefault;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      rRelacao.Reset;
      rRelacao.Print;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.cDataIniExit(Sender: TObject);
begin
      If DataLimpa(cDataFim.Text) then cDataFim.Date := cDataIni.Date;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.Button1Click(Sender: TObject);       
begin
      cTipo.ItemIndex := 2;
      cDataIni.Clear;
      cDataFim.Clear;
      cRepresentante.KeyValue := 0;
      cFornecedor.KeyValue    := 0;
      cCliente.KeyValue       := 0;
end;

procedure TImpressao_Faturamento_RelacaoPedidos.ppDetailBand1BeforePrint(Sender: TObject);
begin
      //tItens.Close;
      tItens.SQL.Clear;
      If tPedidos.FieldByName('Nota').AsInteger = 0 then begin
         tItens.SQL.Add('SELECT  Pedido = Pedido');
         tItens.SQL.Add('       ,Codigo_Mercadoria');
         tItens.SQL.Add('       ,Descricao_Mercadoria');
         tItens.SQL.Add('       ,Quantidade');
         tItens.SQL.Add('       ,Valor_Unitario = round(valor_Unitario, 4)');
         tItens.SQL.Add('       ,Valor_Liquido  = round(Valor_Unitario, 4) * iif(Quantidade=0, 1, Quantidade)');
         tItens.SQL.Add('       ,Valor_Impostos = round(Valor_Unitario, 4) + ISNULL(round(Valor_IPI, 4), 0) + ISNULL(round(Valor_ICMSSub/iif(Quantidade=0, 1, Quantidade), 4), 0) + ISNULL(round(Valor_PIS/iif(Quantidade=0, 1, Quantidade), 4), 0) +');
         titens.SQL.Add('                         ISNULL(round(Valor_COFINS/iif(Quantidade=0, 1, Quantidade), 4), 0)');
         tItens.SQL.Add('       ,Valor_Total    = (round(Valor_Unitario, 4)*iif(Quantidade=0, 1, Quantidade)) + ISNULL(round(Valor_IPI, 4)*iif(Quantidade=0, 1, Quantidade), 0) + ISNULL(round(Valor_ICMSSub, 2), 0) - isnull(Round(Desconto_Valor, 4),0)');
         tItens.SQL.Add('       ,Valor_Desconto = ISNULL(round(Desconto_Valor, 4), 0)');
         tItens.SQL.Add('       ,Perc_Desconto  = ISNULL(Desconto, 0)');
         tItens.SQL.Add('       ,Peso_Liquido');
         tItens.SQL.Add('       ,Peso_Bruto');
         tItens.SQL.Add('FROM   PedidosItens');
         tItens.SQL.Add('WHERE  Pedido = :pPedido');
         tItens.ParamByName('pPedido').AsInteger := tPedidos.FieldByName('Numero').AsInteger;
      end else begin
         tItens.SQL.Add('SELECT  Pedido = Nota');
         tItens.SQL.Add('       ,Codigo_Mercadoria');
         tItens.SQL.Add('       ,Descricao_Mercadoria');
         tItens.SQL.Add('       ,Quantidade');
         tItens.SQL.Add('       ,Valor_Unitario = round(valor_Unitario, 4)');
         tItens.SQL.Add('       ,Valor_Liquido  = round(Valor_Unitario, 4) * iif(Quantidade=0, 1, Quantidade)');
         tItens.SQL.Add('       ,Valor_Impostos = round(Valor_Unitario, 4) + ISNULL(round(Valor_IPI, 4), 0) + ISNULL(round(Valor_ICMSSub/iif(Quantidade=0, 1, Quantidade), 4), 0)');
         tItens.SQL.Add('       ,Valor_Total    = (round(Valor_Unitario, 4)*iif(Quantidade=0, 1, Quantidade)) + ISNULL(round(Valor_IPI, 4)*iif(Quantidade=0, 1, Quantidade), 0) + ISNULL(round(Valor_ICMSSub, 2), 0) - isnull(Round(Desconto_Valor, 4),0)');
         tItens.SQL.Add('       ,Valor_Desconto = ISNULL(round(Desconto_Valor, 4), 0)');
         tItens.SQL.Add('       ,Perc_Desconto  = ISNULL(Desconto, 0)');
         tItens.SQL.Add('       ,Peso_Liquido');
         tItens.SQL.Add('       ,Peso_Bruto');
         tItens.SQL.Add('FROM   NotasItens');
         tItens.SQL.Add('WHERE  Nota = :pNota AND Data = :pData');
         tItens.ParamByName('pNota').AsInteger := tPedidos.FieldByName('Itens').AsInteger;
         tItens.ParamByName('pData').AsDate    := tPedidos.FieldByName('Data_Nota').AsDateTime;
      End;
      //tItens.SQL.SaveToFile('c:\temp\Itens.sql');
      tItens.Open;

      lFaturado.Visible := tPedidos.FieldByName('Nota').AsInteger > 0;
end;



end.
