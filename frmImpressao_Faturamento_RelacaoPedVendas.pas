unit frmImpressao_Faturamento_RelacaoPedVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands, ppClass, ppVar, ppCtrls,
  ppReport, ppSubRpt, ppPrnabl, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask, IniFiles, Funcoes,
  ppRichTx, DBGrids, Grids, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_RelacaoPedVendas = class(TForm)
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
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    Button1: TButton;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
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
    ppLabel1: TppLabel;
    ppDBText21: TppDBText;
    ppLine9: TppLine;
    ppDBText22: TppDBText;
    ppLabel2: TppLabel;
    iLogo: TppImage;
    dstPedidos: TDataSource;
    ppLabel4: TppLabel;
    ppDBText23: TppDBText;
    tPedidos: TMSQuery;
    ppDBText24: TppDBText;
    ppLabel5: TppLabel;
    lSituacao: TppLabel;
    GroupBox1: TGroupBox;
    cLib: TCheckBox;
    cEmSep: TCheckBox;
    cSep: TCheckBox;
    cEmFat: TCheckBox;
    cFat: TCheckBox;
    cDesp: TCheckBox;
    cBai: TCheckBox;
    cCancel: TCheckBox;
    lPeriodo: TppLabel;
    cAguard: TCheckBox;
    ppLabel6: TppLabel;
    dstClientes: TDataSource;
    tRepresentantesCodigo: TIntegerField;
    tRepresentantesNome: TStringField;
    tRepresentantesCNPJ: TStringField;
    tClientes: TMSQuery;
    tClientesCodigo: TIntegerField;
    tClientesNome: TStringField;
    tClientesCNPJ: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cDataIniExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Const  mSituacao: array[0..7] of string = ('AGUARDANDO LIBERAÇÃO','LIBERADO P/SEPARAÇÃO','EM SEPARAÇÃO','SEPARADOS','EM FATURAMENTO','FATURADO', 'DESPACHADO','BAIXADO');
  end;

var
  Impressao_Faturamento_RelacaoPedVendas: TImpressao_Faturamento_RelacaoPedVendas;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_RelacaoPedVendas.bSairClick(Sender: TObject);
begin
      Close;
      LimpaMemoria;
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.FormClose(Sender: TObject;var Action: TCloseAction);
var
    aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'DataIni'      , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'DataFim'      , cDataFim.Date );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Representante', iif(cRepresentante.keyvalue <> null, cRepresentante.KeyValue, -1));
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Cliente'      , iif(cCliente.KeyValue <> null, cCliente.KeyValue, -1));
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Aguardando'   , cAguard.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Liberados'    , cLib.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'EmSeparacao'  , cEmSep.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Separados'    , cSep.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'EmFaturamento', cEmFat.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Faturados'    , cFat.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Despachados'  , cDesp.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Baixados'     , cBai.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Cancelados'   , cCancel.Checked);
      aINI.Free;

      Impressao_Faturamento_RelacaoPedVendas.Release;
      Impressao_Faturamento_RelacaoPedVendas := nil;
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'DataIni'      , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'DataFim'      , Date );
      cRepresentante.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Representante', 0 );
      cCliente.KeyValue       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Cliente'      , 0 );
      cAguard.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Aguardando'   , false);
      cLib.Checked            := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Liberados'    , false);
      cEmSep.Checked          := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'EmSeparacao'  , false);
      cSep.Checked            := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Separados'    , false);
      cEmFat.Checked          := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'EmFaturamento', false);
      cFat.Checked            := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Faturados'    , false);
      cDesp.Checked           := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Despachados'  , false);
      cBai.Checked            := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Baixados'     , false);
      cCancel.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RELACAO_PEDIDOSVEN', 'Cancelados'   , false);
      aINI.Free;

      with Dados do begin
           with tRepresentantes do begin
                sql.clear;
                sql.add('select Codigo');
                sql.add('      ,Nome');
                sql.Add('      ,CNPJ = case when isnull(CNPJ, '''') <> '''' then');
                sql.Add('                   substring(CNPJ, 1, 2)+''.''+substring(CNPJ, 3, 3)+''.''+substring(CNPJ, 6, 3)+''/''+substring(CNPJ, 9, 4)+''-''+substring(CNPJ, 13, 2)');
                sql.Add('              else');
                sql.Add('                   substring(CPF, 1, 3)+''.''+substring(CPF, 4, 3)+''.''+substring(CPF, 7, 3)+''-''+substring(CPF, 10, 2)');
                sql.Add('              end');
                sql.Add('from Fornecedores fr');
                sql.Add('where Codigo in(select distinct Representante from PedidosRepresentantes)');
                sql.add('order by Nome');
                open;
           end;
           with tClientes do begin
                sql.clear;
                sql.add('select Codigo');
                sql.Add('      ,Nome = ltrim(rtrim(Nome))');
                sql.Add('      ,CNPJ = case when isnull(CNPJ, '''') <> '''' then');
                sql.Add('                   substring(CNPJ, 1, 2)+''.''+substring(CNPJ, 3, 3)+''.''+substring(CNPJ, 6, 3)+''/''+substring(CNPJ, 9, 4)+''-''+substring(CNPJ, 13, 2)');
                sql.Add('              else');
                sql.Add('                   substring(CPF, 1, 3)+''.''+substring(CPF, 4, 3)+''.''+substring(CPF, 7, 3)+''-''+substring(CPF, 10, 2)');
                sql.Add('              end');
                sql.Add('from Clientes');
                sql.add('where Codigo in(select distinct Cliente from pedidosRepresentantes)');
                sql.add('order by Nome');
                //sql.SaveToFile('c:\temp\Relação_Vendas_Clientes.sql');
                open;
           end;
           with ModalidadesPgto do begin 
                sql.Clear;
                sql.Add('select * from ModalidadesPagamento order by Codigo');
                open;
           end;
      end;
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.bImprimirClick(Sender: TObject);
var
  mLocal: string;
begin
      mLocal := '(';
      if cAguard.Checked then mLocal := mLocal + '0,';
      if cLib.Checked    then mLocal := mLocal + '1,';
      if cEmSep.Checked  then mLocal := mLocal + '2,';
      if cSep.Checked    then mLocal := mLocal + '3,';
      if cEmFat.Checked  then mLocal := mLocal + '4,';
      if cFat.Checked    then mLocal := mLocal + '5,';
      if cDesp.Checked   then mLocal := mLocal + '6,';
      if cBai.Checked    then mLocal := mLocal + '7,';
      if mLocal = '(' then begin
         messagedlg('Ao menos uma "situação do Pedido" deve ser selecionada para imprimir', mtInformation, [mbok], 0);
         abort;
      end;
      mLocal := copy(mLocal, 1, length(mLocal)-1) + ')';
      
      Screen.Cursor := crSQLWait;
      with Dados do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pCodigo');
                parambyname('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
           with tPedidos do begin
                sql.Clear;
                sql.add('select Pedido');
                sql.add('      ,Pedido_Pai');
                sql.add('      ,Pedido_Pai2');
                sql.add('      ,Data');
                sql.add('      ,Saida_Entrada = ''SAÍDA'' ');
                sql.add('      ,Cliente_Nome');
                sql.add('      ,Representante_Nome = (select Nome from Fornecedores where Codigo = Representante)');
                sql.add('      ,Total_Pedido');
                sql.add('      ,Origem_Pedido');
                sql.add('      ,Local');
                sql.add('      ,Cancelado');
                sql.add('      ,Matriz_Filial = iif((select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = 22) = 0, ''MATRIZ'', cast((select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = 22) as varchar(6)))');
                sql.add('      ,Nota = (select Numero from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1)');
                sql.add('      ,Data_Nota = (select Data_Emissao from NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denegada <> 1)');
                sql.add('      ,Condicao_Pgto = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)');
                sql.add('      ,Condicao_Frete = case when Modalidade_Frete = 0 then ''Por conta do emitente'' ');
                sql.add('                             when Modalidade_Frete = 1 then ''Por conta do destinatário/remetente'' ');
                sql.add('                             when Modalidade_Frete = 2 then ''Por conta de terceiros'' ');
                sql.add('                             when Modalidade_Frete = 9 then ''Sem cobrança de frete'' ');
                sql.add('                        end');
                sql.add('from PedidosRepresentantes pr');
                sql.Add('where isnull(Local, 0) in'+mLocal);
                if not cCancel.Checked then begin
                   sql.Add('and pr.Cancelado <> 1');
                end;

                if not DataLimpa(cDataIni.Text) then begin
                   sql.Add('and pr.Data between :pDataIni AND :pDataFim');
                end;
                if trim(cRepresentante.DisplayValue) <> '' then begin
                   sql.Add('and pr.Representante = :pRepresentante');
                   ParamByName('pRepresentante').AsInteger := tRepresentantes.FieldByName('Codigo').AsInteger;
                end;
                if Trim(cCliente.DisplayValue) <> '' then begin
                   sql.Add('and pr.Cliente = :pCliente');
                   ParamByName('pCliente').AsInteger := tClientes.fieldbyname('Codigo').AsInteger;
                end;
                sql.Add('order by Representante_Nome, Data, Pedido');
                if not DataLimpa(cDataIni.Text) then begin
                   ParamByName('pDataIni').AsDate := cDataIni.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                end;
                //sql.SaveToFile('C:\Temp\Relacao_PedidosVendas.sql');
                Open;
                if RecordCount = 0 then begin
                   Screen.Cursor := crDefault;
                   messagedlg('Sem dados com os filtros informados!', mtinformation, [mbok], 0);
                   abort;
                end;
           end;
      end;
      
      Screen.Cursor := crDefault;
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      lPeriodo.Caption := 'DATA: '+cDataini.Text + ' á '+cDataFim.Text;
      rRelacao.Reset;
      rRelacao.Print;
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.cDataIniExit(Sender: TObject);
begin
      If DataLimpa(cDataFim.Text) then cDataFim.Date := cDataIni.Date;
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.Button1Click(Sender: TObject);       
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cRepresentante.KeyValue := 0;
      cCliente.KeyValue       := 0;
      cAguard.Checked         := false;
      cLib.Checked            := false;
      cEmSep.Checked          := false;
      cSep.Checked            := false;
      cEmFat.Checked          := false;
      cFat.Checked            := false;
      cDesp.Checked           := false;
      cBai.Checked            := false;
      cCancel.Checked         := false;
end;

procedure TImpressao_Faturamento_RelacaoPedVendas.ppDetailBand1BeforePrint(Sender: TObject);
begin
      with tItens do begin
           sql.clear;
           sql.add('select Pedido');
           sql.add('      ,Codigo_Mercadoria');
           sql.add('      ,Descricao_Mercadoria = (select Descricao from Produtos where Codigo = Codigo_Mercadoria)');
           sql.add('      ,Quantidade');
           sql.add('      ,Valor_Unitario = round(valor_Unitario, 4)');
           sql.add('      ,Valor_Liquido  = round(Valor_Unitario, 4) * iif(Quantidade=0, 1, Quantidade)');
           sql.add('      ,Valor_Impostos = round(Valor_Unitario, 4) + ISNULL(round(Valor_IPI, 4), 0) + ISNULL(round(Valor_ICMSST, 4), 0)');
           sql.add('      ,Valor_Total    = (round(Valor_Unitario, 4)*iif(Quantidade=0, 1, Quantidade)) + ISNULL(round(Valor_IPI, 4)*iif(Quantidade=0, 1, Quantidade), 0) + ISNULL(round(Valor_ICMSST, 2), 0) - isnull(Round(Valor_Desconto, 4),0)');
           sql.add('      ,Valor_Desconto = ISNULL(round(Valor_Desconto, 4), 0)');
           sql.add('      ,Perc_Desconto  = ISNULL(Desconto, 0)');
           sql.add('      ,Peso_Liquido = Peso_Unitario');
           sql.add('      ,Peso_Bruto = 0');
           sql.add('from PedidosRepresentantesItens');
           sql.add('where Pedido = :pPedido');
           parambyName('pPedido').value := tPedidos.FieldByName('Pedido').value;
           //sql.saveToFile('c:\temp\Itens.sql');
           open;
      end;
      if not tPedidos.FieldByName('Cancelado').AsBoolean then      
         lSituacao.Caption := mSituacao[tPedidos.FieldByName('Local').AsInteger]
      else   
         lSituacao.Caption := 'CANCELADO';
end;



end.
