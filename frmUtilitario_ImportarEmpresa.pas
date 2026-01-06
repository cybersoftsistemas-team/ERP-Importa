unit frmUtilitario_ImportarEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, RxLookup, Mask,
  DB, DBAccess, MSAccess, Vcl.ComCtrls, RXDBCtrl, Funcoes, RxToolEdit, system.UITypes, MemDS;

type
  TUtilitario_ImportarEmpresa = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tNumero: TMSQuery;
    lEmpresa: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    tCodigo: TMSQuery;
    dstNumero: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText3: TStaticText;
    cLancamentos: TRadioGroup;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    cCentroCusto: TRxDBLookupCombo;
    cProcesso: TRxDBLookupCombo;
    StaticText8: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    cTipoImportacao: TRadioGroup;
    bImportarFinanceiro: TButton;
    cMsg: TMemo;
    bImportarClientes: TButton;
    cSituacaoCliente: TRadioGroup;
    cSubstituirCliFor: TCheckBox;
    cCadastro: TRadioGroup;
    TabSheet3: TTabSheet;
    cSituacaoProdutos: TRadioGroup;
    bImportarProdutos: TButton;
    cSubstituirProd: TCheckBox;
    StaticText2: TStaticText;
    cNCM: TMaskEdit;
    cCodigoFabricante: TMaskEdit;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cCodigoGTIN: TMaskEdit;
    StaticText11: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText12: TStaticText;
    cCodigoInterno: TMaskEdit;
    lProcesso: TLabel;
    Progresso: TProgressBar;
    bCancelar: TButton;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    Label1: TLabel;
    tOrigemPR: TMSQuery;
    tDestinoPR: TMSQuery;
    tTmp: TMSQuery;
    tDestinoPRB: TMSQuery;
    tOrigemPRB: TMSQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cEmpresaChange(Sender: TObject);
    procedure bImportarFinanceiroClick(Sender: TObject);
    procedure bImportarClientesClick(Sender: TObject);
    procedure bImportarProdutosClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    procedure ImportaFinanceiro;
    { Private declarations }
  public
    { Public declarations }
    mCodigoCliente     : Integer;
    mCodigoFornecedor  : Integer;
    mCodigoOrgao       : String;
    mClientesNovosI    : Integer;
    mFornecedoresNovosI: Integer;
    mOrgaosNovosI      : Integer;
    mProcessosNovosI   : Integer;
    mClassifNovasI     : Integer;
    mClassifNovasA     : Integer;
    mTitulosNovosI     : Integer;
    mClientesNovosA    : Integer;
    mFornecedoresNovosA: Integer;
    mProcessosNovosA   : Integer;
    mTitulosNovosA     : Integer;
    mTitulosNovosE     : Integer;
  end;

var
  Utilitario_ImportarEmpresa: TUtilitario_ImportarEmpresa;

implementation

uses frmDados, frmMenu_Principal, frmDMImporta, frmJanela_Processamento;

{$R *.dfm}

procedure TUtilitario_ImportarEmpresa.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitario_ImportarEmpresa.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Utilitario_ImportarEmpresa.Release;
      Utilitario_ImportarEmpresa := nil;
end;

procedure TUtilitario_ImportarEmpresa.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitario_ImportarEmpresa.FormShow(Sender: TObject);
begin
      PageControl1.Enabled := false;
      With Dados, dmImporta do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo <> :pCodigo) ORDER BY Razao_Social');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;
      End;
end;

procedure TUtilitario_ImportarEmpresa.cEmpresaChange(Sender: TObject);
var
   i: Integer;
begin
      PageControl1.Enabled := cEmpresa.Text <> '';
      {
      For i := 0 to ComponentCount-1 do begin
          If (Components[i] is TStaticText) or (Components[i] is TRxDBLookUpCombo) or (Components[i] is TRadioGroup) or (Components[i] is TDateEdit)then begin
             TStaticText(Components[i]).Enabled      := Trim(cEmpresa.Text) <> '';
             TRxDBLookUpCombo(Components[i]).Enabled := Trim(cEmpresa.Text) <> '';
             TRadioGroup(Components[i]).Enabled      := Trim(cEmpresa.Text) <> '';
          End;
          lEmpresa.Enabled := true;
          cEmpresa.Enabled := true;
      End;
      }
      if Trim(cEmpresa.Text) <> '' then begin
         try
             with dmImporta do begin
                  Banco_Origem.Connected := false;
                  Banco_Origem.Server    := Trim(Dados.Banco_Empresas.Server);
                  Banco_Origem.Database  := Trim(Dados.EmpresasBanco_Dados.AsString);
                  Banco_Origem.Username  := Menu_Principal.mBancoUsuario;
                  Banco_Origem.Password  := Menu_Principal.mBancoSenha;
                  Banco_Origem.Connected := true;
             end;
         except
             MessageDlg('Erro de Abertura!'+#13+#13+'Banco de dados da empresa selecionada não pode ser aberto!'+#13+#13+'Entre em contato com o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         end;
      end;
      with dmImporta do begin
           with iProcessos do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
               Open;
           end;
           with iBeneficiario do begin
                sql.clear;
                sql.add('SELECT ''C-''+CAST(Codigo AS VARCHAR(10)) AS Codigo, Nome, CNPJ, ''C'' AS Tipo FROM Clientes');
                sql.add('UNION ALL');
                sql.add('SELECT ''F-''+CAST(Codigo AS VARCHAR(10)), Nome, CNPJ, ''F'' FROM Fornecedores');
                sql.add('UNION ALL');
                sql.add('SELECT ''O-''+RTRIM(Codigo), Nome, '''', ''O'' FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
                sql.add('UNION ALL');
                sql.add('SELECT ''B-''+CAST(Codigo AS VARCHAR(10)), Nome, '''', ''B'' FROM Bancos');
                sql.add('ORDER BY Nome');
                open;
           end;
           with iCentroCusto do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
                Open;
           end;
           with iClassificacao do begin
                if Dados.ConfiguracaoCompartilhar_Classificacao.asboolean then begin
                   dmImporta.iClassificacao.Connection := Dados.Banco;
                end;
                sql.Clear;
                sql.Add('select * from ClassificacaoFinanceira order by Descricao, Codigo');
                Open;
           end;
           with iClientes do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
                Open;
           end;
           with iOrgaos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
                Open;
           end;
           with iFornecedores do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
                Open;
           end;
      end;
end;

procedure TUtilitario_ImportarEmpresa.bImportarFinanceiroClick(Sender: TObject);
begin
      mClientesNovosI     := 0;
      mFornecedoresNovosI := 0;
      mOrgaosNovosI       := 0;
      mProcessosNovosI    := 0;
      mClassifNovasI      := 0;
      mClientesNovosA     := 0;
      mFornecedoresNovosA := 0;
      mProcessosNovosA    := 0;
      mTitulosNovosI      := 0;
      mTitulosNovosA      := 0;
      mTitulosNovosE      := 0;
      lProcesso.Visible   := true;
      Progresso.Visible   := true;
      bCancelar.Visible   := true;
      bCancelar.Tag       := 0;

      Screen.Cursor := crSQLWait;
      With dmImporta, Dados do begin
           PagarReceber.DisableControls;
           iPagarReceber.DisableControls;

           iPagarReceber.SQL.Clear;
           iPagarReceber.SQL.Add('SELECT * FROM PagarReceber');
           iPagarReceber.SQL.Add('WHERE(Valor_Total > 0) ');

           If (Trim(RemoveCaracter('/', '', cDataini.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
              iPagarReceber.SQL.Add('AND (Data_Documento BETWEEN :pDataIni AND :pDataFim)');
              iPagarReceber.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
              iPagarReceber.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
           end;
           If (Trim(RemoveCaracter('/', '', cDataini.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) = '') then begin
              iPagarReceber.SQL.Add('AND (Data_Documento = :pDataIni)');
              iPagarReceber.ParamByName('pDataIni').AsDate := cDataIni.Date;
           end;
           If (Trim(RemoveCaracter('/', '', cDataini.Text)) = '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
              iPagarReceber.SQL.Add('AND (Data_Documento = :pDataFim)');
              iPagarReceber.ParamByName('pDataFim').AsDate := cDataFim.Date;
           end;

           If cLancamentos.ItemIndex = 0 then iPagarReceber.SQL.Add('AND (Tipo = ''P'')');
           If cLancamentos.ItemIndex = 1 then iPagarReceber.SQL.Add('AND (Tipo = ''R'')');

           If Trim(cProcesso.Text) <> '' then begin
              iPagarReceber.SQL.Add('AND (Processo = :pProcesso)');
              iPagarReceber.ParamByName('pProcesso').AsString:= cProcesso.Text;
           End;
           
           If Trim(cCentroCusto.Text) <> '' then begin
              iPagarReceber.SQL.Add('AND (Centro_Custo = :pCentroCusto)');
              iPagarReceber.ParamByName('pCentroCusto').AsString:= cCentroCusto.Text;
           end;

           If Trim(cClassificacao.Text) <> '' then begin
              iPagarReceber.SQL.Add('AND (Classificacao = :pClassificacao)');
              iPagarReceber.ParamByName('pClassificacao').AsString:= iClassificacao.FieldByName('Codigo').AsString;
           end;

           If (Trim(cBeneficiario.Text) <> '') then begin
              If iBeneficiario.FieldByName('Tipo').Value = 'C' then iPagarReceber.SQL.Add('AND (Cliente = :pBeneficiario) ');
              If iBeneficiario.FieldByName('Tipo').Value = 'F' then iPagarReceber.SQL.Add('AND (Fornecedor = :pBeneficiario) ');
              If iBeneficiario.FieldByName('Tipo').Value = 'O' then iPagarReceber.SQL.Add('AND (Orgao = :pBeneficiario) ');
              iPagarReceber.ParamByName('pBeneficiario').AsString := Trim(Copy(iBeneficiario.FieldByName('Codigo').Value,3,7));
           End;
           iPagarReceber.SQL.Add('ORDER BY Numero');
           iPagarReceber.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber');
           PagarReceber.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos');
           Orgaos.Open;

           iProcessosDOC.SQL.Clear;
           iProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           iProcessosDOC.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT ISNULL(MAX(Numero), 0) AS Numero FROM PagarReceber');

           // Importando os dados da empresa origem.
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := iPagarReceber.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Importando lançamentos selecionados...';
           Janela_Processamento.Show;

           //Importação dos processos
           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM ProcessosDocumentos');
           tNumero.Open;
           mProcessosNovosI := tNumero.FieldByName('Qtde').AsInteger;
           tNumero.Close;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('INTO #Temp');
           ProcessosDOC.SQL.Add('FROM '+Trim(EmpresasBanco_Dados.AsString)+'.dbo.ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  (Processo IN( (SELECT Processo FROM '+Trim(EmpresasBanco_Dados.AsString)+'.dbo.PagarReceber WHERE(Data_Documento BETWEEN :pDataIni AND :pDataFim))) )');
           ProcessosDOC.SQL.Add('UPDATE #Temp SET Processo = Processo + ''*'', CNPJ_Importado = :pCNPJ');
           ProcessosDOC.SQL.Add('INSERT INTO ProcessosDocumentos SELECT * FROM #Temp WHERE(Processo NOT IN((SELECT Processo FROM ProcessosDocumentos)) )');
           ProcessosDOC.SQL.Add('SELECT * FROM #Temp');
           ProcessosDOC.ParamByName('pDataIni').AsDate := cDataIni.Date;
           ProcessosDOC.ParamByName('pDataFim').AsDate := cDataFim.Date;
           ProcessosDOC.ParamByName('pCNPj').AsString  := EmpresasCNPJ.AsString;
           ProcessosDOC.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM ProcessosDocumentos');
           tNumero.Open;
           mProcessosNovosI := tNumero.FieldByName('Qtde').AsInteger - mProcessosNovosI;
           If mProcessosNovosI = 0 then mProcessosNovosA := ProcessosDOC.RecordCount;

           ProcessosDOC.SQL.Clear;

           //Importação das classificações financeiras.
           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM ClassificacaoFinanceira');
           tNumero.Open;
           mClassifNovasI := tNumero.FieldByName('Qtde').AsInteger;
           tNumero.Close;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT *');
           ClassificacaoFinanceira.SQL.Add('INTO #Temp');
           ClassificacaoFinanceira.SQL.Add('FROM '+Trim(EmpresasBanco_Dados.AsString)+'.dbo.ClassificacaoFinanceira');
           ClassificacaoFinanceira.SQL.Add('WHERE  (Codigo IN( (SELECT Classificacao FROM '+Trim(EmpresasBanco_Dados.AsString)+'.dbo.PagarReceber WHERE(Data_Documento BETWEEN :pDataIni AND :pDataFim))) )');
           ClassificacaoFinanceira.SQL.Add('INSERT INTO ClassificacaoFinanceira SELECT * FROM #Temp WHERE(Codigo NOT IN((SELECT Codigo FROM ClassificacaoFinanceira)) )');
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM #Temp');
           ClassificacaoFinanceira.ParamByName('pDataIni').AsDate := cDataIni.Date;
           ClassificacaoFinanceira.ParamByName('pDataFim').AsDate := cDataFim.Date;
           ClassificacaoFinanceira.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM ClassificacaoFinanceira');
           tNumero.Open;
           mClassifNovasI := tNumero.FieldByName('Qtde').AsInteger - mClassifNovasI;
           If mClassifNovasI = 0 then mClassifNovasA := ClassificacaoFinanceira.RecordCount;

           //Importação dos clientes.
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT MAX(Codigo) AS Novo FROM Clientes');
           tCodigo.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT Codigo_Novo = identity(int,1,1), *');
           tNumero.SQL.Add('INTO   #Temp');
           tNumero.SQL.Add('FROM   '+Trim(EmpresasBanco_Dados.AsString)+'.dbo.Clientes');
           tNumero.SQL.Add('WHERE  Codigo IN(SELECT Cliente FROM '+Trim(EmpresasBanco_Dados.AsString)+'.dbo.PagarReceber WHERE(Data_Documento BETWEEN :pDataIni AND :pDataFim))');
           tNumero.SQL.Add('UPDATE #Temp SET Codigo = Codigo_Novo + :pNovo');
           tNumero.SQL.Add('SELECT * INTO #Temp2 FROM #Temp');
           tNumero.SQL.Add('ALTER TABLE #Temp2 DROP COLUMN Codigo_Novo');
           tNumero.SQL.Add('SELECT * FROM #Temp2');
           tNumero.SQL.Add('INSERT INTO Clientes SELECT * FROM #Temp2 WHERE(CNPJ NOT IN(SELECT CNPJ FROM Clientes))');
           tNumero.SQL.Add('SELECT * FROM #Temp2');
           tNumero.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tNumero.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tNumero.ParamByName('pNovo').AsInteger := tCodigo.FieldByName('Novo').AsInteger;
           tNumero.Open;
           tCodigo.Close;
      end;

      ImportaFinanceiro;
           {
           iPagarReceber.First;
           While (not iPagarReceber.Eof) and (bCancelar.Tag = 0) do begin
                 If cTipoImportacao.ItemIndex < 2 then begin
                    // Importa a capa do processo.
                    If Trim(iPagarReceber.FieldByName('Processo').AsString) <> '' then begin
                       iProcessosDOC.Locate('Processo', iPagarReceber.FieldByName('Processo').AsString, [loCaseInsensitive]);
                       If ProcessosDOC.Locate('Processo', Trim(iPagarReceber.FieldByName('Processo').AsString)+'*', [loCaseInsensitive]) = false then begin
                          ProcessosDOC.Append;
                                       ProcessosDOC.FieldByName('Ad_Valorem').Value                 := iProcessosDOC.FieldByName('Ad_Valorem').Value;
                                       ProcessosDOC.FieldByName('Agencia_Maritima').Value           := iProcessosDOC.FieldByName('Agencia_Maritima').Value;
                                       ProcessosDOC.FieldByName('Aliquota_ICMS').Value              := iProcessosDOC.FieldByName('Aliquota_ICMS').Value;
                                       ProcessosDOC.FieldByName('Bloqueado').Value                  := iProcessosDOC.FieldByName('Bloqueado').Value;
                                       ProcessosDOC.FieldByName('Canal_SISCOMEX').Value             := iProcessosDOC.FieldByName('Canal_SISCOMEX').Value;
                                       ProcessosDOC.FieldByName('Cliente').Value                    := iProcessosDOC.FieldByName('Cliente').Value;
                                       ProcessosDOC.FieldByName('CNPJ_Importado').Value             := Empresas.FieldByName('CNPJ').Value;
                                       ProcessosDOC.FieldByName('Condicao_Pgto').Value              := iProcessosDOC.FieldByName('Condicao_Pgto').Value;
                                       ProcessosDOC.FieldByName('Conta_Adiantamento').Value         := iProcessosDOC.FieldByName('Conta_Adiantamento').Value;
                                       ProcessosDOC.FieldByName('Conta_Despesas').Value             := iProcessosDOC.FieldByName('Conta_Despesas').Value;
                                       ProcessosDOC.FieldByName('Conta_Impostos').Value             := iProcessosDOC.FieldByName('Conta_Impostos').Value;
                                       ProcessosDOC.FieldByName('Container_Numero').Value           := iProcessosDOC.FieldByName('Container_Numero').Value;
                                       ProcessosDOC.FieldByName('Courrier').Value                   := iProcessosDOC.FieldByName('Courrier').Value;
                                       ProcessosDOC.FieldByName('Data_DesembaracoDeclaracao').Value := iProcessosDOC.FieldByName('Data_DesembaracoDeclaracao').Value;
                                       ProcessosDOC.FieldByName('Data_DOC').Value                   := iProcessosDOC.FieldByName('Data_DOC').Value;
                                       ProcessosDOC.FieldByName('Data_Fatura').Value                := iProcessosDOC.FieldByName('Data_Fatura').Value;
                                       ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value    := iProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                       ProcessosDOC.FieldByName('Despachante').Value                := iProcessosDOC.FieldByName('Despachante').Value;
                                       ProcessosDOC.FieldByName('Documento_Carga').Value            := iProcessosDOC.FieldByName('Documento_Carga').Value;
                                       ProcessosDOC.FieldByName('Entreposto').Value                 := iProcessosDOC.FieldByName('Entreposto').Value;
                                       ProcessosDOC.FieldByName('Especie').Value                    := iProcessosDOC.FieldByName('Especie').Value;
                                       ProcessosDOC.FieldByName('FOB').Value                        := iProcessosDOC.FieldByName('FOB').Value;
                                       ProcessosDOC.FieldByName('FOB_ME').Value                     := iProcessosDOC.FieldByName('FOB_ME').Value;
                                       ProcessosDOC.FieldByName('Fornecedor').Value                 := iProcessosDOC.FieldByName('Fornecedor').Value;
                                       ProcessosDOC.FieldByName('Frete').Value                      := iProcessosDOC.FieldByName('Frete').Value;
                                       ProcessosDOC.FieldByName('Frete_ME').Value                   := iProcessosDOC.FieldByName('Frete_ME').Value;
                                       ProcessosDOC.FieldByName('ICMS_DIferido').Value              := iProcessosDOC.FieldByName('ICMS_DIferido').Value;
                                       ProcessosDOC.FieldByName('II').Value                         := iProcessosDOC.FieldByName('II').Value;
                                       ProcessosDOC.FieldByName('Incentivo_Fiscal').Value           := iProcessosDOC.FieldByName('Incentivo_Fiscal').Value;
                                       ProcessosDOC.FieldByName('Incoterms').Value                  := iProcessosDOC.FieldByName('Incoterms').Value;
                                       ProcessosDOC.FieldByName('Local_DesembaracoCodigo').Value    := iProcessosDOC.FieldByName('Local_DesembaracoCodigo').Value;
                                       ProcessosDOC.FieldByName('Local_Desembarque').Value          := iProcessosDOC.FieldByName('Local_Desembarque').Value;
                                       ProcessosDOC.FieldByName('Local_Embarque').Value             := iProcessosDOC.FieldByName('Local_Embarque').Value;
                                       ProcessosDOC.FieldByName('Modalidade').Value                 := iProcessosDOC.FieldByName('Modalidade').Value;
                                       ProcessosDOC.FieldByName('Modalidade_Importacao').Value      := iProcessosDOC.FieldByName('Modalidade_Importacao').Value;
                                       ProcessosDOC.FieldByName('Moeda_FOB').Value                  := iProcessosDOC.FieldByName('Moeda_FOB').Value;
                                       ProcessosDOC.FieldByName('Moeda_Frete').Value                := iProcessosDOC.FieldByName('Moeda_Frete').Value;
                                       ProcessosDOC.FieldByName('Moeda_Seguro').Value               := iProcessosDOC.FieldByName('Moeda_Seguro').Value;
                                       ProcessosDOC.FieldByName('Natureza_Exportacao').Value        := iProcessosDOC.FieldByName('Natureza_Exportacao').Value;
                                       ProcessosDOC.FieldByName('Navio_DataChegada').Value          := iProcessosDOC.FieldByName('Navio_DataChegada').Value;
                                       ProcessosDOC.FieldByName('Navio_DataPrevista').Value         := iProcessosDOC.FieldByName('Navio_DataPrevista').Value;
                                       ProcessosDOC.FieldByName('Nome_Transporte').Value            := iProcessosDOC.FieldByName('Nome_Transporte').Value;
                                       ProcessosDOC.FieldByName('Numero_Declaracao').Value          := iProcessosDOC.FieldByName('Numero_Declaracao').Value;
                                       ProcessosDOC.FieldByName('Numero_DOC').Value                 := iProcessosDOC.FieldByName('Numero_DOC').Value;
                                       ProcessosDOC.FieldByName('Numero_Fatura').Value              := iProcessosDOC.FieldByName('Numero_Fatura').Value;
                                       ProcessosDOC.FieldByName('Origem').Value                     := iProcessosDOC.FieldByName('Origem').Value;
                                       ProcessosDOC.FieldByName('Pais').Value                       := iProcessosDOC.FieldByName('Pais').Value;
                                       ProcessosDOC.FieldByName('Peso_Bruto').Value                 := iProcessosDOC.FieldByName('Peso_Bruto').Value;
                                       ProcessosDOC.FieldByName('Peso_Liquido').Value               := iProcessosDOC.FieldByName('Peso_Liquido').Value;
                                       ProcessosDOC.FieldByName('Processo').Value                   := Trim(iProcessosDOC.FieldByName('Processo').AsString) + '*';
                                       ProcessosDOC.FieldByName('Processo_Abertura').Value          := iProcessosDOC.FieldByName('Processo_Abertura').Value;
                                       ProcessosDOC.FieldByName('Processo_Fechamento').Value        := iProcessosDOC.FieldByName('Processo_Fechamento').Value;
                                       ProcessosDOC.FieldByName('Processo_Mestre').Value            := iProcessosDOC.FieldByName('Processo_Mestre').Value;
                                       ProcessosDOC.FieldByName('Quantidade').Value                 := iProcessosDOC.FieldByName('Quantidade').Value;
                                       ProcessosDOC.FieldByName('Quantidade_Digitada').Value        := iProcessosDOC.FieldByName('Quantidade_Digitada').Value;
                                       ProcessosDOC.FieldByName('Quantidade_Liberada').Value        := iProcessosDOC.FieldByName('Quantidade_Liberada').Value;
                                       ProcessosDOC.FieldByName('RE_DataAverbacao').Value           := iProcessosDOC.FieldByName('RE_DataAverbacao').Value;
                                       ProcessosDOC.FieldByName('RE_Numero').Value                  := iProcessosDOC.FieldByName('RE_Numero').Value;
                                       ProcessosDOC.FieldByName('Recinto_Alfandegario').Value       := iProcessosDOC.FieldByName('Recinto_Alfandegario').Value;
                                       ProcessosDOC.FieldByName('Responsavel').Value                := iProcessosDOC.FieldByName('Responsavel').Value;
                                       ProcessosDOC.FieldByName('Seguro').Value                     := iProcessosDOC.FieldByName('Seguro').Value;
                                       ProcessosDOC.FieldByName('Seguro_ME').Value                  := iProcessosDOC.FieldByName('Seguro_ME').Value;
                                       ProcessosDOC.FieldByName('Taxa_FOB').Value                   := iProcessosDOC.FieldByName('Taxa_FOB').Value;
                                       ProcessosDOC.FieldByName('Taxa_Frete').Value                 := iProcessosDOC.FieldByName('Taxa_Frete').Value;
                                       ProcessosDOC.FieldByName('Taxa_Seguro').Value                := iProcessosDOC.FieldByName('Taxa_Seguro').Value;
                                       ProcessosDOC.FieldByName('Texto').Value                      := iProcessosDOC.FieldByName('Texto').Value;
                                       ProcessosDOC.FieldByName('Tipo').Value                       := iProcessosDOC.FieldByName('Tipo').Value;
                                       ProcessosDOC.FieldByName('Tipo_Conhecimento').Value          := iProcessosDOC.FieldByName('Tipo_Conhecimento').Value;
                                       ProcessosDOC.FieldByName('Tipo_Declaracao').Value            := iProcessosDOC.FieldByName('Tipo_Declaracao').Value;
                                       ProcessosDOC.FieldByName('Tipo_Mercadoria').Value            := iProcessosDOC.FieldByName('Tipo_Mercadoria').Value;
                                       ProcessosDOC.FieldByName('UF_Desembaraco').Value             := iProcessosDOC.FieldByName('UF_Desembaraco').Value;
                                       ProcessosDOC.FieldByName('Valor_COFINS').Value               := iProcessosDOC.FieldByName('Valor_COFINS').Value;
                                       ProcessosDOC.FieldByName('Valor_ICMS').Value                 := iProcessosDOC.FieldByName('Valor_ICMS').Value;
                                       ProcessosDOC.FieldByName('Valor_IPI').Value                  := iProcessosDOC.FieldByName('Valor_IPI').Value;
                                       ProcessosDOC.FieldByName('Valor_PIS').Value                  := iProcessosDOC.FieldByName('Valor_PIS').Value;
                                       ProcessosDOC.FieldByName('Vencimento_Cambio').Value          := iProcessosDOC.FieldByName('Vencimento_Cambio').Value;
                                       ProcessosDOC.FieldByName('Via_Transporte').Value             := iProcessosDOC.FieldByName('Via_Transporte').Value;
                                       ProcessosDOC.FieldByName('Volumes').Value                    := iProcessosDOC.FieldByName('Volumes').Value;
                          ProcessosDOC.Post;
                          ProcessosDOC.Refresh;
                          cMsg.Lines.Add('Processo adicionado : '+ProcessosDOC.FieldByName('Processo').AsString);
                       End;
                    End;

                    // Importa a classificação financeira.
                    If Trim(iPagarReceber.FieldByName('Classificacao').AsString) <> '' then begin
                       iClassificacao.Locate('Codigo', iPagarReceber.FieldByName('Classificacao').AsString, [loCaseInsensitive]);
                       If ClassificacaoFinanceira.Locate('Codigo', iPagarReceber.FieldByName('Classificacao').AsString, [loCaseInsensitive]) = false then begin
                          ClassificacaoFinanceira.Append;
                                                  ClassificacaoFinanceira.FieldByName('Adiantamento').Value        := iClassificacao.FieldByName('Adiantamento').Value;
                                                  ClassificacaoFinanceira.FieldByName('Cambio').Value              := iClassificacao.FieldByName('Cambio').Value;
                                                  ClassificacaoFinanceira.FieldByName('Codigo').Value              := iClassificacao.FieldByName('Codigo').Value;
                                                  ClassificacaoFinanceira.FieldByName('Custo').Value               := iClassificacao.FieldByName('Custo').Value;
                                                  ClassificacaoFinanceira.FieldByName('Descricao').Value           := iClassificacao.FieldByName('Descricao').Value;
                                                  ClassificacaoFinanceira.FieldByName('Devolucao').Value           := iClassificacao.FieldByName('Devolucao').Value;
                                                  ClassificacaoFinanceira.FieldByName('Pagamento_Conta').Value     := iClassificacao.FieldByName('Pagamento_Conta').Value;
                                                  ClassificacaoFinanceira.FieldByName('Pagamento_Historico').Value := iClassificacao.FieldByName('Pagamento_Historico').Value;
                                                  ClassificacaoFinanceira.FieldByName('Provisao_ContaC').Value     := iClassificacao.FieldByName('Provisao_ContaC').Value;
                                                  ClassificacaoFinanceira.FieldByName('Provisao_ContaD').Value     := iClassificacao.FieldByName('Provisao_ContaD').Value;
                                                  ClassificacaoFinanceira.FieldByName('Provisao_Historico').Value  := iClassificacao.FieldByName('Provisao_Historico').Value;
                                                  ClassificacaoFinanceira.FieldByName('Relatorio').Value           := iClassificacao.FieldByName('Relatorio').Value;
                                                  ClassificacaoFinanceira.FieldByName('Somente_Faturamento').Value := iClassificacao.FieldByName('Somente_Faturamento').Value;
                                                  ClassificacaoFinanceira.FieldByName('Tipo').Value                := iClassificacao.FieldByName('Tipo').Value;
                                                  ClassificacaoFinanceira.FieldByName('Tipo_Lancamento').Value     := iClassificacao.FieldByName('Tipo_Lancamento').Value;
                          ClassificacaoFinanceira.Post;
                          cMsg.Lines.Add('Classif. adicionada : '+(ClassificacaoFinanceira.FieldByName('Codigo').AsString)+' - '+(ClassificacaoFinanceira.FieldByName('Descricao').AsString));
                          Inc(mClassifNovasI);
                       End;
                    End;
                    
                    // Importa o beneficário Cliente.
                    mCodigoCliente := 0;
                    If iPagarReceber.FieldByName('Cliente').AsInteger <> 0 then begin
                       iClientes.Locate('Codigo', iPagarReceber.FieldByName('Cliente').AsInteger, [loCaseInsensitive]);
                       If Trim(iClientes.FieldByName('CNPJ').AsString) <> '' then begin
                          If Clientes.Locate('CNPJ', iClientes.FieldByName('CNPJ').AsString, [loCaseInsensitive]) = false then begin
                             Clientes.Append;
                             Inc(mClientesNovosI);
                          end else begin
                             mCodigoCliente := Clientes.FieldByName('Codigo').AsInteger;
                             Inc(mClientesNovosA);
                          End;
                       end else begin
                          If Clientes.Locate('CPF', iClientes.FieldByName('CPF').AsString, [loCaseInsensitive]) = false then begin
                             Clientes.Append;
                             Inc(mClientesNovosI);
                          end else begin
                             mCodigoCliente := Clientes.FieldByName('Codigo').AsInteger;
                             Inc(mClientesNovosA);
                          End;
                       End;

                       If Clientes.State = dsInsert then begin
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');
                          tCodigo.Open;
                          Clientes.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                          tCodigo.Close;

                          Clientes.FieldByName('Alterado').Value              := iClientes.FieldByName('Alterado').Value;
                          Clientes.FieldByName('Ativo').Value                 := iClientes.FieldByName('Ativo').Value;
                          Clientes.FieldByName('Bairro').Value                := iClientes.FieldByName('Bairro').Value;
                          Clientes.FieldByName('Bairro_Entrega').Value        := iClientes.FieldByName('Bairro_Entrega').Value;
                          Clientes.FieldByName('CEP').Value                   := iClientes.FieldByName('CEP').Value;
                          Clientes.FieldByName('CEP_Entrega').Value           := iClientes.FieldByName('CEP_Entrega').Value;
                          Clientes.FieldByName('CNPJ').Value                  := iClientes.FieldByName('CNPJ').Value;
                          Clientes.FieldByName('CNPJ_Entrega').Value          := iClientes.FieldByName('CNPJ_Entrega').Value;
                          Clientes.FieldByName('Complemento').Value           := iClientes.FieldByName('Complemento').Value;
                          Clientes.FieldByName('Conta_Adiantamento').Value    := iClientes.FieldByName('Conta_Adiantamento').Value;
                          Clientes.FieldByName('Conta_Ativo').Value           := iClientes.FieldByName('Conta_Ativo').Value;
                          Clientes.FieldByName('Conta_Devolucao').Value       := iClientes.FieldByName('Conta_Devolucao').Value;
                          Clientes.FieldByName('Contato').Value               := iClientes.FieldByName('Contato').Value;
                          Clientes.FieldByName('CPF').Value                   := iClientes.FieldByName('CPF').Value;
                          Clientes.FieldByName('Data_Cadastro').Value         := iClientes.FieldByName('Data_Cadastro').Value;
                          Clientes.FieldByName('Desconto_Dupl_Campo').Value   := iClientes.FieldByName('Desconto_Dupl_Campo').Value;
                          Clientes.FieldByName('Desconto_Dupl_Dias').Value    := iClientes.FieldByName('Desconto_Dupl_Dias').Value;
                          Clientes.FieldByName('Desconto_Dupl_Tipo').Value    := iClientes.FieldByName('Desconto_Dupl_Tipo').Value;
                          Clientes.FieldByName('Desconto_Dupl_Valor').Value   := iClientes.FieldByName('Desconto_Dupl_Valor').Value;
                          Clientes.FieldByName('Desoneracao').Value           := iClientes.FieldByName('Desoneracao').Value;
                          Clientes.FieldByName('Email').Value                 := iClientes.FieldByName('Email').Value;
                          Clientes.FieldByName('Enviar_Email').Value          := iClientes.FieldByName('Enviar_Email').Value;
                          Clientes.FieldByName('Estado').Value                := iClientes.FieldByName('Estado').Value;
                          Clientes.FieldByName('Estado_Entrega').Value        := iClientes.FieldByName('Estado_Entrega').Value;
                          Clientes.FieldByName('FAX').Value                   := iClientes.FieldByName('FAX').Value;
                          Clientes.FieldByName('IE_Entrega').Value            := iClientes.FieldByName('IE_Entrega').Value;
                          Clientes.FieldByName('Inscricao_Estadual').Value    := iClientes.FieldByName('Inscricao_Estadual').Value;
                          Clientes.FieldByName('Inscricao_Municipal').Value   := iClientes.FieldByName('Inscricao_Municipal').Value;
                          Clientes.FieldByName('Isento').Value                := iClientes.FieldByName('Isento').Value;
                          Clientes.FieldByName('Mascara_Processo').Value      := iClientes.FieldByName('Mascara_Processo').Value;
                          Clientes.FieldByName('Matriz').Value                := iClientes.FieldByName('Matriz').Value;
                          Clientes.FieldByName('Modalidade_Importacao').Value := iClientes.FieldByName('Modalidade_Importacao').Value;
                          Clientes.FieldByName('Municipio').Value             := iClientes.FieldByName('Municipio').Value;
                          Clientes.FieldByName('Municipio_Codigo').Value      := iClientes.FieldByName('Municipio_Codigo').Value;
                          Clientes.FieldByName('Municipio_Entrega').Value     := iClientes.FieldByName('Municipio_Entrega').Value;
                          Clientes.FieldByName('Nome').Value                  := iClientes.FieldByName('Nome').Value;
                          Clientes.FieldByName('Observacao').Value            := iClientes.FieldByName('Observacao').Value;
                          Clientes.FieldByName('Pais').Value                  := iClientes.FieldByName('Pais').Value;
                          Clientes.FieldByName('Praca_Pagamento').Value       := iClientes.FieldByName('Praca_Pagamento').Value;
                          //Clientes.FieldByName('Ramo_Atividade').Value        := iClientes.FieldByName('Ramo_Atividade').Value;
                          Clientes.FieldByName('RG').Value                    := iClientes.FieldByName('RG').Value;
                          Clientes.FieldByName('Rua').Value                   := iClientes.FieldByName('Rua').Value;
                          Clientes.FieldByName('Rua_Entrega').Value           := iClientes.FieldByName('Rua_Entrega').Value;
                          Clientes.FieldByName('Rua_EntregaNumero').Value     := iClientes.FieldByName('Rua_EntregaNumero').Value;
                          Clientes.FieldByName('Rua_Numero').Value            := iClientes.FieldByName('Rua_Numero').Value;
                          Clientes.FieldByName('Simples_Nacional').Value      := iClientes.FieldByName('Simples_Nacional').Value;
                          Clientes.FieldByName('Site').Value                  := iClientes.FieldByName('Site').Value;
                          Clientes.FieldByName('SUFRAMA').Value               := iClientes.FieldByName('SUFRAMA').Value;
                          Clientes.FieldByName('Telefone1').Value             := iClientes.FieldByName('Telefone1').Value;
                          Clientes.FieldByName('Telefone2').Value             := iClientes.FieldByName('Telefone2').Value;
                          Clientes.FieldByName('Tipo_Comissao').Value         := iClientes.FieldByName('Tipo_Comissao').Value;
                          Clientes.FieldByName('Trader').Value                := iClientes.FieldByName('Trader').Value;
                          Clientes.FieldByName('Trader_Comissao').Value       := iClientes.FieldByName('Trader_Comissao').Value;
                          Clientes.FieldByName('Transportador').Value         := iClientes.FieldByName('Transportador').Value;
                          Clientes.Post;
                          mCodigoCliente := Clientes.FieldByName('Codigo').AsInteger;
                          cMsg.Lines.Add('Cliente adicionado : '+(Clientes.FieldByName('Codigo').AsString)+' - '+(Clientes.FieldByName('Nome').AsString));
                       End;
                    End;

                    // Importa o beneficário Fornecedor.
                    mCodigoFornecedor := 0;
                    If iPagarReceber.FieldByName('Fornecedor').AsInteger <> 0 then begin
                       iFornecedores.Locate('Codigo', iPagarReceber.FieldByName('Fornecedor').AsInteger, [loCaseInsensitive]);
                       If (Trim(iFornecedores.FieldByName('CNPJ').AsString) <> '') or (Trim(iFornecedores.FieldByName('CPF').AsString) <> '') then begin
                           If Trim(iFornecedores.FieldByName('CNPJ').AsString) <> '' then begin
                              If Fornecedores.Locate('CNPJ', iFornecedores.FieldByName('CNPJ').AsString, [loCaseInsensitive]) = false then begin
                                 Fornecedores.Append;
                                 Inc(mFornecedoresNovosI);
                              end else begin
                                 mCodigoFornecedor := Fornecedores.FieldByName('Codigo').AsInteger;
                                 Inc(mFornecedoresNovosA);
                              End;
                           end else begin
                              If Fornecedores.Locate('CPF', iFornecedores.FieldByName('CPF').AsString, [loCaseInsensitive]) = false then begin
                                 Fornecedores.Append;
                                 Inc(mFornecedoresNovosI);
                              end else begin
                                 mCodigoFornecedor := Fornecedores.FieldByName('Codigo').AsInteger;
                                 Inc(mFornecedoresNovosA);
                              End;
                           End;
                       end else begin
                           If Fornecedores.Locate('Nome', iFornecedores.FieldByName('Nome').AsString, [loCaseInsensitive]) = false then begin
                              Fornecedores.Append;
                              Inc(mFornecedoresNovosI);
                           end else begin
                              mCodigoFornecedor := Fornecedores.FieldByName('Codigo').AsInteger;
                              Inc(mFornecedoresNovosA);
                           End;  

                       End;

                       If Fornecedores.State = dsInsert then begin
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Fornecedores');
                          tCodigo.Open;
                          Fornecedores.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                          tCodigo.Close;

                          Fornecedores.FieldByName('Alterado').Value              := iFornecedores.FieldByName('Alterado').Value;
                          Fornecedores.FieldByName('Bairro').Value                := iFornecedores.FieldByName('Bairro').Value;
                          Fornecedores.FieldByName('Banco_Agencia').Value         := iFornecedores.FieldByName('Banco_Agencia').Value;
                          Fornecedores.FieldByName('Banco_Conta').Value           := iFornecedores.FieldByName('Banco_Conta').Value;
                          Fornecedores.FieldByName('Banco_Nome').Value            := iFornecedores.FieldByName('Banco_Nome').Value;
                          Fornecedores.FieldByName('CEP').Value                   := iFornecedores.FieldByName('CEP').Value;
                          Fornecedores.FieldByName('CNPJ').Value                  := iFornecedores.FieldByName('CNPJ').Value;
                          Fornecedores.FieldByName('Comissao').Value              := iFornecedores.FieldByName('Comissao').Value;
                          Fornecedores.FieldByName('Complemento').Value           := iFornecedores.FieldByName('Complemento').Value;
                          Fornecedores.FieldByName('Conta').Value                 := iFornecedores.FieldByName('Conta').Value;
                          Fornecedores.FieldByName('Conta_Adiantamento').Value    := iFornecedores.FieldByName('Conta_Adiantamento').Value;
                          Fornecedores.FieldByName('Conta_Devolucao').Value       := iFornecedores.FieldByName('Conta_Devolucao').Value;
                          Fornecedores.FieldByName('CPF').Value                   := iFornecedores.FieldByName('CPF').Value;
                          Fornecedores.FieldByName('Email').Value                 := iFornecedores.FieldByName('Email').Value;
                          Fornecedores.FieldByName('Estado').Value                := iFornecedores.FieldByName('Estado').Value;
                          Fornecedores.FieldByName('FAX').Value                   := iFornecedores.FieldByName('FAX').Value;
                          Fornecedores.FieldByName('Inscricao_Estadual').Value    := iFornecedores.FieldByName('Inscricao_Estadual').Value;
                          Fornecedores.FieldByName('Inscricao_Municipal').Value   := iFornecedores.FieldByName('Inscricao_Municipal').Value;
                          Fornecedores.FieldByName('Isento').Value                := iFornecedores.FieldByName('Isento').Value;
                          Fornecedores.FieldByName('Matriz').Value                := iFornecedores.FieldByName('Matriz').Value;
                          Fornecedores.FieldByName('Modalidade_Importacao').Value := iFornecedores.FieldByName('Modalidade_Importacao').Value;
                          Fornecedores.FieldByName('Municipio').Value             := iFornecedores.FieldByName('Municipio').Value;
                          Fornecedores.FieldByName('Municipio_Codigo').Value      := iFornecedores.FieldByName('Municipio_Codigo').Value;
                          Fornecedores.FieldByName('Nome').Value                  := iFornecedores.FieldByName('Nome').Value;
                          Fornecedores.FieldByName('Nome_Fantasia').Value         := iFornecedores.FieldByName('Nome_Fantasia').Value;
                          Fornecedores.FieldByName('Pais').Value                  := iFornecedores.FieldByName('Pais').Value;
                          Fornecedores.FieldByName('Ramo_Atividade').Value        := iFornecedores.FieldByName('Ramo_Atividade').Value;
                          Fornecedores.FieldByName('Registro_Alfandega').Value    := iFornecedores.FieldByName('Registro_Alfandega').Value;
                          Fornecedores.FieldByName('RG').Value                    := iFornecedores.FieldByName('RG').Value;
                          Fornecedores.FieldByName('Rua').Value                   := iFornecedores.FieldByName('Rua').Value;
                          Fornecedores.FieldByName('Rua_Numero').Value            := iFornecedores.FieldByName('Rua_Numero').Value;
                          Fornecedores.FieldByName('Site').Value                  := iFornecedores.FieldByName('Site').Value;
                          Fornecedores.FieldByName('SUFRAMA').Value               := iFornecedores.FieldByName('SUFRAMA').Value;
                          Fornecedores.FieldByName('Telefone1').Value             := iFornecedores.FieldByName('Telefone1').Value;
                          Fornecedores.FieldByName('Telefone2').Value             := iFornecedores.FieldByName('Telefone2').Value;
                          Fornecedores.FieldByName('Tipo_Produto').Value          := iFornecedores.FieldByName('Tipo_Produto').Value;
                          Fornecedores.FieldByName('Tipo_Servico').Value          := iFornecedores.FieldByName('Tipo_Servico').Value;
                          Fornecedores.Post;
                          mCodigoFornecedor := Fornecedores.FieldByName('Codigo').AsInteger;
                          cMsg.Lines.Add('Fornecedor adicionado : '+(Fornecedores.FieldByName('Codigo').AsString)+' - '+(Fornecedores.FieldByName('Nome').AsString));
                       End;
                    End;

                    // Importa o beneficário Orgão Público.
                    mCodigoOrgao := '';
                    If Trim(iPagarReceber.FieldByName('Orgao').AsString) <> '' then begin
                       iOrgaos.Locate('Codigo', iPagarReceber.FieldByName('Orgao').AsString, [loCaseInsensitive]);
                       If Orgaos.Locate('Codigo', iOrgaos.FieldByName('Codigo').AsString, [loCaseInsensitive]) = false then
                          Orgaos.Append
                       else
                          mCodigoOrgao := Orgaos.FieldByName('Codigo').AsString;

                       If Orgaos.State = dsInsert then begin
                          Orgaos.FieldByName('Ambito').Value           := iOrgaos.FieldByName('Ambito').Value;
                          Orgaos.FieldByName('Codigo').Value           := iOrgaos.FieldByName('Codigo').Value;
                          Orgaos.FieldByName('Conta').Value            := iOrgaos.FieldByName('Conta').Value;
                          Orgaos.FieldByName('Estado_Municipio').Value := iOrgaos.FieldByName('Estado_Municipio').Value;
                          Orgaos.FieldByName('Historico').Value        := iOrgaos.FieldByName('Historico').Value;
                          Orgaos.FieldByName('Nome').Value             := iOrgaos.FieldByName('Nome').Value;
                          Orgaos.Post;

                          mCodigoOrgao := Orgaos.FieldByName('Codigo').AsString;
                          cMsg.Lines.Add('Orgãos Públicos adicionados : '+(Fornecedores.FieldByName('Codigo').AsString)+' - '+(Fornecedores.FieldByName('Nome').AsString));
                          Inc(mOrgaosNovosI);
                       End;
                    End;

                    // Inclusão ou alteração dos títulos
                    If cTipoImportacao.ItemIndex = 0 then begin
                       PagarReceber.Append;
                       tNumero.Open;
                       PagarReceber.FieldByName('Numero').AsInteger := tNumero.FieldByName('Numero').AsInteger + 1;
                       Inc(mTitulosNovosI);
                    End;

                    If cTipoImportacao.ItemIndex = 1 then begin
                       If PagarReceber.Locate('Numero_Importado', iPagarReceber.FieldByName('Numero').AsInteger, [loCaseInsensitive]) = true then begin
                          PagarReceber.Edit;
                          Inc(mTitulosNovosA);
                       End;
                    End;

                    If (PagarReceber.State = dsInsert) or (PagarReceber.State = dsEdit) then begin
                       PagarReceber.FieldByName('Adiantamento_Numero').Value   := iPagarReceber.FieldByName('Adiantamento_Numero').Value;
                       PagarReceber.FieldByName('Baixa_Numero').Value          := iPagarReceber.FieldByName('Baixa_Numero').Value;
                       PagarReceber.FieldByName('Banco').Value                 := iPagarReceber.FieldByName('Banco').Value;
                       PagarReceber.FieldByName('Bordero').Value               := iPagarReceber.FieldByName('Bordero').Value;
                       PagarReceber.FieldByName('Bordero_Data').Value          := iPagarReceber.FieldByName('Bordero_Data').Value;
                       PagarReceber.FieldByName('Centro_Custo').Value          := iPagarReceber.FieldByName('Centro_Custo').Value;
                       PagarReceber.FieldByName('Cheque_Assinado').Value       := iPagarReceber.FieldByName('Cheque_Assinado').Value;
                       PagarReceber.FieldByName('Cheque_Assinado2').Value      := iPagarReceber.FieldByName('Cheque_Assinado2').Value;
                       PagarReceber.FieldByName('Cheque_Cruzado').Value        := iPagarReceber.FieldByName('Cheque_Cruzado').Value;
                       PagarReceber.FieldByName('Cheque_Nominal').Value        := iPagarReceber.FieldByName('Cheque_Nominal').Value;
                       PagarReceber.FieldByName('Cheque_Visado').Value         := iPagarReceber.FieldByName('Cheque_Visado').Value;
                       PagarReceber.FieldByName('Classificacao').Value         := iPagarReceber.FieldByName('Classificacao').Value;
                       PagarReceber.FieldByName('Cliente').Value               := mCodigoCliente;
                       PagarReceber.FieldByName('CustoConta').Value            := iPagarReceber.FieldByName('CustoConta').Value;
                       PagarReceber.FieldByName('Custo_Seletivo').Value        := iPagarReceber.FieldByName('Custo_Seletivo').Value;
                       PagarReceber.FieldByName('Custo_Entrada').Value         := iPagarReceber.FieldByName('Custo_Entrada').Value;
                       PagarReceber.FieldByName('Data_Documento').Value        := iPagarReceber.FieldByName('Data_Documento').Value;
                       PagarReceber.FieldByName('Data_Previsao').Value         := iPagarReceber.FieldByName('Data_Previsao').Value;
                       PagarReceber.FieldByName('Data_Vencimento').Value       := iPagarReceber.FieldByName('Data_Vencimento').Value;
                       PagarReceber.FieldByName('Desconto').Value              := iPagarReceber.FieldByName('Desconto').Value;
                       PagarReceber.FieldByName('Documento').Value             := iPagarReceber.FieldByName('Documento').Value;
                       PagarReceber.FieldByName('Fiscal').Value                := iPagarReceber.FieldByName('Fiscal').Value;
                       PagarReceber.FieldByName('Forma_Tipo').Value            := iPagarReceber.FieldByName('Forma_Tipo').Value;
                       PagarReceber.FieldByName('Fornecedor').Value            := mCodigoFornecedor;
                       PagarReceber.FieldByName('Fornecedor_Agencia').Value    := iPagarReceber.FieldByName('Fornecedor_Agencia').Value;
                       PagarReceber.FieldByName('Fornecedor_Banco').Value      := iPagarReceber.FieldByName('Fornecedor_Banco').Value;
                       PagarReceber.FieldByName('Fornecedor_Conta').Value      := iPagarReceber.FieldByName('Fornecedor_Conta').Value;
                       PagarReceber.FieldByName('Juros').Value                 := iPagarReceber.FieldByName('Juros').Value;
                       PagarReceber.FieldByName('Modalidade_Pgto').Value       := iPagarReceber.FieldByName('Modalidade_Pgto').Value;
                       PagarReceber.FieldByName('Multa').Value                 := iPagarReceber.FieldByName('Multa').Value;
                       PagarReceber.FieldByName('Numero_Documento').Value      := iPagarReceber.FieldByName('Numero_Documento').Value;
                       PagarReceber.FieldByName('Numero_FormaTipo').Value      := iPagarReceber.FieldByName('Numero_FormaTipo').Value;
                       PagarReceber.FieldByName('Numero_Importado').Value      := iPagarReceber.FieldByName('Numero').Value;
                       PagarReceber.FieldByName('Observacao').Value            := iPagarReceber.FieldByName('Observacao').Value;
                       PagarReceber.FieldByName('Orgao').Value                 := iPagarReceber.FieldByName('Orgao').Value;
                       PagarReceber.FieldByName('Parcela').Value               := iPagarReceber.FieldByName('Parcela').Value;

                       If Trim(iPagarReceber.FieldByName('Processo').AsString) <> '' then PagarReceber.FieldByName('Processo').Value              := Trim(iPagarReceber.FieldByName('Processo').AsString)+'*';

                       PagarReceber.FieldByName('Solicitacao_Numerario').Value := iPagarReceber.FieldByName('Solicitacao_Numerario').Value;
                       PagarReceber.FieldByName('Solicitacao_Pgto').Value      := iPagarReceber.FieldByName('Solicitacao_Pgto').Value;
                       PagarReceber.FieldByName('Tipo').Value                  := iPagarReceber.FieldByName('Tipo').Value;
                       PagarReceber.FieldByName('Tipo_Nota').Value             := iPagarReceber.FieldByName('Tipo_Nota').Value;
                       PagarReceber.FieldByName('Transferencia').Value         := iPagarReceber.FieldByName('Transferencia').Value;
                       PagarReceber.FieldByName('Transferencia_Banco').Value   := iPagarReceber.FieldByName('Transferencia_Banco').Value;
                       PagarReceber.FieldByName('Transferencia_Numero').Value  := iPagarReceber.FieldByName('Transferencia_Numero').Value;
                       PagarReceber.FieldByName('Valor_Baixado').Value         := 0;
                       PagarReceber.FieldByName('Valor_Documento').Value       := iPagarReceber.FieldByName('Valor_Documento').Value;
                       PagarReceber.FieldByName('Valor_Operacao').Value        := iPagarReceber.FieldByName('Valor_Operacao').Value;
                       PagarReceber.FieldByName('Valor_Parcela').Value         := iPagarReceber.FieldByName('Valor_Parcela').Value;
                       PagarReceber.FieldByName('Valor_Total').Value           := iPagarReceber.FieldByName('Valor_Total').Value;
                       PagarReceber.FieldByName('Nivel').Value                 := iPagarReceber.FieldByName('Nivel').Value;
                       PagarReceber.Post;
                       tNumero.Close;
                    End;
                 End;

                 // Exclusão dos títulos.
                 If cTipoImportacao.ItemIndex = 2 then begin
                    tNumero.SQL.Clear;
                    tNumero.SQL.Add('DELETE FROM PagarReceber WHERE(Numero_Importado = :pNumero)');
                    tNumero.ParamByName('pNumero').AsInteger := iPagarReceber.FieldByName('Numero').AsInteger;
                    tNumero.Execute;
                    Inc(mTitulosNovosE);
                 End;

                 iPagarReceber.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
           
           cMsg.Lines.Clear;
           cMsg.Lines.Add('                                NOVOS  ENCONTRADOS  EXCLUÍDOS');
           cMsg.Lines.Add('Titulos.....................:' + PadR(InttoStr(mTitulosNovosI), 8)      + '     ' + PadR(InttoStr(mTitulosNovosA), 8) + '   '+ PadR(InttoStr(mTitulosNovosE), 8));
           cMsg.Lines.Add('Processos...................:' + PadR(InttoStr(mProcessosNovosI), 8)    + '     ' + PadR(InttoStr(mProcessosNovosA), 8) );
           cMsg.Lines.Add('Classificações Financeiras..:' + PadR(InttoStr(mClassifNovasI), 8)      + '     ' + PadR(InttoStr(mClassifNovasA), 8) );
           cMsg.Lines.Add('Clientes....................:' + PadR(InttoStr(mClientesNovosI), 8)     + '     ' + PadR(InttoStr(mClientesNovosA), 8) );
           cMsg.Lines.Add('Fornecedores................:' + PadR(InttoStr(mFornecedoresNovosI), 8) + '     ' + PadR(InttoStr(mFornecedoresNovosA), 8) );
           cMsg.Lines.Add('Orgãos Públicos.............:' + PadR(InttoStr(mOrgaosNovosI), 8)       + '     ' );

           Janela_Processamento.Close;
           PagarReceber.EnableControls;
           iPagarReceber.EnableControls;
      End;
      lProcesso.Visible   := false;
      Progresso.Visible   := false;
      bCancelar.Visible   := false;
      }
      Screen.Cursor := crDefault;
end;

procedure TUtilitario_ImportarEmpresa.bImportarClientesClick(Sender: TObject);
Var
   mCampo     : Integer;
   mNomeCampo : String;
   mAchou     : Boolean;
   mInclusos  : Integer;
   mAlterados : Integer;
   mDuplicados: Integer;
begin
      mInclusos   := 0;
      mAlterados  := 0;
      mDuplicados := 0;
      cMsg.Lines.Clear;
      lProcesso.Visible := true;
      Progresso.Visible := true;
      bCancelar.Visible := true;
      bCancelar.Tag     := 0;

      With Dados, dmImporta do begin
           // Cadastro de Clientes.
           If cCadastro.ItemIndex < 2 then begin
              iClientes.SQL.Clear;
              iClientes.SQL.Add('SELECT * FROM Clientes');
              If cSituacaoCliente.ItemIndex = 1 then iClientes.SQL.Add('WHERE Ativo  = 1');
              If cSituacaoCliente.ItemIndex = 2 then iClientes.SQL.Add('WHERE Ativo <> 1');
              iClientes.SQL.Add('ORDER BY Codigo');
              iClientes.Open;

              Clientes.SQL.Clear;
              Clientes.SQL.Add('SELECT * FROM Clientes');
              Clientes.Open;

              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');

              Progresso.Position := 0;
              Progresso.Max      := iClientes.RecordCount;
              lProcesso.Caption  := 'Importando Clientes...';
              Application.ProcessMessages;

              iClientes.First;
              While (not iClientes.Eof) and (bcancelar.Tag = 0) do begin
                    mAchou := false;
                    If (Trim(iClientes.FieldByName('CNPJ').AsString) <> '') and (iClientes.FieldByName('CNPJ').AsString <> '00000000000000') then begin
                       mAchou := Clientes.Locate('CNPJ', iClientes.FieldByName('CNPJ').AsString, [loCaseInsensitive]);
                    End;
                    If Trim(iClientes.FieldByName('CPF').AsString) <> '' then begin
                       mAchou := Clientes.Locate('CPF', iClientes.FieldByName('CNPJ').AsString, [loCaseInsensitive]);
                    End;

                    If mAchou then begin
                       If cSubstituirCliFor.Checked = true then begin
                          Clientes.Edit;
                          Inc(mAlterados);
                       end else begin
                          Inc(mDuplicados);
                       End;
                    end else begin
                       tCodigo.Open;
                       Clientes.Append;
                       Clientes.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger+1;
                       tCodigo.Close;
                       Inc(mInclusos);
                    End;

                    If (Clientes.State = dsInsert) or (Clientes.State = dsEdit) then begin
                       For mCampo := 0 to iClientes.FieldCount-1 do begin
                          If iClientes.Fields.Fields[mCampo].FieldName <> 'Codigo' then begin
                             mNomeCampo := iClientes.Fields.Fields[mCampo].FieldName;
                             Clientes.FieldByName(mNomeCampo).Value := iClientes.Fields.Fields[mCampo].Value;
                          End;
                       End;
                       Clientes.Post;
                    End;

                    iClientes.Next;
                    Progresso.Position := Progresso.Position + 1;
              End;
              Progresso.Position := 0;
              cMsg.Lines.Add('---------------------[Clientes]----------------------- ');
              cMsg.Lines.Add('Total......: '+InttoStr(iClientes.RecordCount) );
              cMsg.Lines.Add('Importados.: '+InttoStr(mInclusos+mAlterados) );
              cMsg.Lines.Add('Duplicados.: '+InttoStr(mDuplicados) );
              cMsg.Lines.Add('Inclusos...: '+InttoStr(mInclusos) );
              cMsg.Lines.Add('Alterados..: '+InttoStr(mAlterados) );
           End;

           // Cadastro de Forncedores.
           mInclusos   := 0;
           mAlterados  := 0;
           mDuplicados := 0;

           If cCadastro.ItemIndex <> 1 then begin
              iFornecedores.SQL.Clear;
              iFornecedores.SQL.Add('SELECT * FROM Fornecedores');
              If cSituacaoCliente.ItemIndex = 1 then iFornecedores.SQL.Add('WHERE Ativo  = 1');
              If cSituacaoCliente.ItemIndex = 2 then iFornecedores.SQL.Add('WHERE Ativo <> 1');
              iFornecedores.SQL.Add('ORDER BY Codigo');
              iFornecedores.Open;

              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
              Fornecedores.Open;

              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Fornecedores');

              Progresso.Position := 0;
              Progresso.Max      := iFornecedores.RecordCount;
              lProcesso.Caption  := 'Importando Fornecedores...';
              Application.ProcessMessages;

              iFornecedores.First;
              While (not iFornecedores.Eof) and (bcancelar.Tag = 0) do begin
                    mAchou := false;
                    If (Trim(iFornecedores.FieldByName('CNPJ').AsString) <> '') and (iFornecedores.FieldByName('CNPJ').AsString <> '00000000000000') then begin
                       mAchou := Fornecedores.Locate('CNPJ', iFornecedores.FieldByName('CNPJ').AsString, [loCaseInsensitive]);
                    End;
                    If Trim(iFornecedores.FieldByName('CPF').AsString) <> '' then begin
                       mAchou := Fornecedores.Locate('CPF', iFornecedores.FieldByName('CNPJ').AsString, [loCaseInsensitive]);
                    End;

                    If mAchou then begin
                       If cSubstituirCliFor.Checked = true then begin
                          Fornecedores.Edit;
                          Inc(mAlterados);
                       end else begin
                          Inc(mDuplicados);
                       End;
                    end else begin
                       tCodigo.Open;
                       Fornecedores.Append;
                       Fornecedores.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger+1;
                       tCodigo.Close;
                       Inc(mInclusos);
                    End;

                    If (Fornecedores.State = dsInsert) or (Fornecedores.State = dsEdit) then begin
                       For mCampo := 0 to iFornecedores.FieldCount-1 do begin
                          If iFornecedores.Fields.Fields[mCampo].FieldName <> 'Codigo' then begin
                             mNomeCampo := iFornecedores.Fields.Fields[mCampo].FieldName;
                             Fornecedores.FieldByName(mNomeCampo).Value := iFornecedores.Fields.Fields[mCampo].Value;
                          End;
                       End;
                       Fornecedores.Post;
                    End;

                    iFornecedores.Next;
                    Progresso.Position := Progresso.Position + 1;
              End;
              Progresso.Position := 0;
              cMsg.Lines.Add('-------------------[Fornecedores]--------------------- ');
              cMsg.Lines.Add('Total......: '+InttoStr(iFornecedores.RecordCount) );
              cMsg.Lines.Add('Importados.: '+InttoStr(mInclusos+mAlterados) );
              cMsg.Lines.Add('Duplicados.: '+InttoStr(mDuplicados) );
              cMsg.Lines.Add('Inclusos...: '+InttoStr(mInclusos) );
              cMsg.Lines.Add('Alterados..: '+InttoStr(mAlterados) );
           End;

      End;
      lProcesso.Caption  := '...';
      If cCadastro.ItemIndex = 0 then MessageDlg('Importação de Clientes e Fornecedores terminada!', mtInformation, [mbOK], 0);
      If cCadastro.ItemIndex = 1 then MessageDlg('Importação de Clientes terminada!', mtInformation, [mbOK], 0);
      If cCadastro.ItemIndex = 2 then MessageDlg('Importação de Fornecedores terminada!', mtInformation, [mbOK], 0);
      
      lProcesso.Visible   := false;
      Progresso.Visible   := false;
      bCancelar.Visible   := false;
end;

procedure TUtilitario_ImportarEmpresa.bImportarProdutosClick(Sender: TObject);
Var
   mCampo     : Integer;
   mNomeCampo : String;
   mAchou     : Boolean;
   mInclusos  : Integer;
   mAlterados : Integer;
   mDuplicados: Integer;
begin
      mInclusos   := 0;
      mAlterados  := 0;
      mDuplicados := 0;
      cMsg.Lines.Clear;
      lProcesso.Visible := true;
      Progresso.Visible := true;
      bCancelar.Visible := true;
      bCancelar.Tag     := 0;

      With Dados, dmImporta do begin
           // Cadastro de Produtos.
           iProdutos.SQL.Clear;
           iProdutos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo IS NOT NULL)');
           If cSituacaoProdutos.ItemIndex   =  1 then iProdutos.SQL.Add('AND (Desativado <> 1)');
           If cSituacaoProdutos.ItemIndex   =  2 then iProdutos.SQL.Add('AND (Desativado  = 1)');
           If Trim(cFornecedor.Text)       <> '' then iProdutos.SQL.Add('AND (Fornecedor = '+InttoStr(cFornecedor.KeyValue)+')');
           If Trim(cNCM.Text)              <> '' then iProdutos.SQL.Add('AND (NCM = '+cNCM.Text+')');
           If Trim(cCodigoFabricante.Text) <> '' then iProdutos.SQL.Add('AND (Codigo_Fabricante = '+QuotedStr(cCodigoFabricante.Text)+')');
           If Trim(cCodigoGTIN.Text)       <> '' then iProdutos.SQL.Add('AND (GTIN_Unidade = '+QuotedStr(cCodigoFabricante.Text)+')');
           If Trim(cCodigoInterno.Text)    <> '' then iProdutos.SQL.Add('AND (Codigo = '+cCodigoFabricante.Text+')');
           iProdutos.SQL.Add('ORDER BY Codigo');
           //iProdutos.SQL.SavetoFile('c:\Temp\Importa_Produtos.SQL');
           iProdutos.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.Open;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Produtos');

           Progresso.Position := 0;
           Progresso.Max      := iProdutos.RecordCount;
           lProcesso.Caption  := 'Importando Produtos...';
           Application.ProcessMessages;
           
           iProdutos.First;
           While (not iProdutos.Eof) and (bcancelar.Tag = 0) do begin
                 mAchou := Produtos.Locate('GTIN_Unidade', iProdutos.FieldByName('GTIN_Unidade').AsString, [loCaseInsensitive]);
                 If (not mAchou) and (ProdutosFornecedor.Value > 0) and (ProdutosCodigo_Fabricante.Value <> '') then begin
                    mAchou := Produtos.Locate('Fornecedor;Codigo_Fabricante', VarArrayOf([iProdutos.FieldByName('Codigo_Fabricante').AsString, iProdutos.FieldByName('Codigo_Fabricante').AsString]), [loCaseInsensitive]);
                 End;

                 If mAchou then begin
                    If cSubstituirProd.Checked = true then begin
                       Produtos.Edit;
                       Inc(mAlterados);
                    end else begin
                       Inc(mDuplicados);
                    End;
                 end else begin
                    tCodigo.Open;
                    Produtos.Append;
                    Produtos.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger+1;
                    tCodigo.Close;
                    Inc(mInclusos);
                 End;

                 If (Produtos.State = dsInsert) or (Produtos.State = dsEdit) then begin
                    For mCampo := 0 to iProdutos.FieldCount-1 do begin
                       If iProdutos.Fields.Fields[mCampo].FieldName <> 'Codigo' then begin
                          mNomeCampo := iProdutos.Fields.Fields[mCampo].FieldName;
                          Produtos.FieldByName(mNomeCampo).Value := iProdutos.Fields.Fields[mCampo].Value;
                       End;
                    End;
                    Produtos.Post;
                 End;

                 iProdutos.Next;
                 Progresso.Position := Progresso.Position + 1;
           End;
           Progresso.Position := 0;
           cMsg.Lines.Add('---------------------[Produtos]----------------------- ');
           cMsg.Lines.Add('Total......: '+InttoStr(iProdutos.RecordCount) );
           cMsg.Lines.Add('Importados.: '+InttoStr(mInclusos+mAlterados) );
           cMsg.Lines.Add('Duplicados.: '+InttoStr(mDuplicados) );
           cMsg.Lines.Add('Inclusos...: '+InttoStr(mInclusos) );
           cMsg.Lines.Add('Alterados..: '+InttoStr(mAlterados) );
      End;
      lProcesso.Visible := false;
      Progresso.Visible := false;
      bCancelar.Visible := false;
end;

procedure TUtilitario_ImportarEmpresa.bCancelarClick(Sender: TObject);
begin
     Tag := 1;
end;

procedure TUtilitario_ImportarEmpresa.ImportaFinanceiro;
var
   i:integer;
begin
     with Dados, dmImporta, tOrigemPR do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('from '+Dados.Empresas.FieldByName('Banco_Dados').asstring+'.dbo.PagarReceber');
          sql.Add('where Valor_Total > 0');
          if (Trim(RemoveCaracter('/', '', cDataini.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
             SQL.Add('and Data_Vencimento between :pDataIni and :pDataFim');
             ParamByName('pDataIni').AsDateTime := cDataIni.Date;
             ParamByName('pDataFim').AsDateTime := cDataFim.Date;
          end;
          if cLancamentos.ItemIndex = 0 then SQL.Add('and Tipo = ''P'' ');
          if cLancamentos.ItemIndex = 1 then SQL.Add('and Tipo = ''R'' ');
          if Trim(cProcesso.Text) <> '' then begin
             SQL.Add('and Processo = :pProcesso');
             ParamByName('pProcesso').AsString:= cProcesso.Text;
          end;
          if Trim(cCentroCusto.Text) <> '' then begin
             SQL.Add('and Centro_Custo = :pCentroCusto');
             ParamByName('pCentroCusto').AsString:= cCentroCusto.Text;
          end;
          if Trim(cClassificacao.Text) <> '' then begin
             SQL.Add('and Classificacao = :pClassificacao');
             ParamByName('pClassificacao').AsString:= iClassificacao.FieldByName('Codigo').AsString;
          end;
          if (Trim(cBeneficiario.Text) <> '') then begin
             if iBeneficiario.FieldByName('Tipo').Value = 'C' then SQL.Add('and (Cliente = :pBeneficiario)');
             if iBeneficiario.FieldByName('Tipo').Value = 'F' then SQL.Add('and (Fornecedor = :pBeneficiario)');
             if iBeneficiario.FieldByName('Tipo').Value = 'O' then SQL.Add('and (Orgao = :pBeneficiario)');
             ParamByName('pBeneficiario').AsString := Trim(Copy(iBeneficiario.FieldByName('Codigo').Value,3,7));
          end;
          sql.Add('order by Numero');
          //sql.savetofile('c:\temp\Importar_Empresa_PagarReceber.sql');
          open;

          with tDestinoPR do begin
               sql.Clear;
               sql.Add('select * from PagarReceber where Numero = (select isnull(max(Numero), 0)+1 from PagarReceber)');
               open;
          end;
          first;
          while not eof do begin
                tDestinoPR.Append;
                           for i := 0 to pred(tDestinoPR.fieldcount) do begin
                               if not Fields[i].isnull then begin
                                  tDestinoPR.fields[i].Value := Fields[i].value;
                               end;
                           end;
                           with tNumero do begin
                                sql.clear;
                                sql.add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
                                open;
                           end;
                           tDestinoPR.fieldbyname('Numero').value := tNumero.fieldbyname('Numero').AsInteger;
                           tDestinoPR.fieldbyname('Filial').value := Empresas.fieldbyname('Numero_Filial').AsInteger;

                           // Pega o CNPJ do cliente de origem.
                           if tDestinoPR.fieldbyname('Cliente').asinteger > 0 then begin
                              with tCodigo do begin
                                   sql.clear;
                                   sql.add('select Codigo from Clientes where CNPJ = (select CNPJ from '+Empresas.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes where Codigo = '+tOrigemPR.fieldbyname('Cliente').asstring+')');
                                   open;
                                   tDestinoPR.fieldbyname('Cliente').value := fieldbyname('Codigo').AsInteger;
                              end;
                           end;
                           // Pega o CNPJ do cliente de origem.
                           if tDestinoPR.fieldbyname('Fornecedor').asinteger > 0 then begin
                              with tCodigo do begin
                                   sql.clear;
                                   sql.add('select Codigo from Fornecedores where CNPJ = (select CNPJ from '+Empresas.fieldbyname('Banco_Dados').asstring+'.dbo.Fornecedores where Codigo = '+tOrigemPR.fieldbyname('Fornecedor').asstring+')');
                                   open;
                                   tDestinoPR.fieldbyname('Fornecedor').value := fieldbyname('Codigo').AsInteger;
                              end;
                           end;
                tDestinoPR.post;

                // Importa as baixas do título.
                with tDestinoPRB do begin
                     sql.Clear;
                     sql.Add('select * from PagarReceberBaixas where Registro = (select isnull(max(Registro), 0)+1 from PagarReceberBaixas)');
                     open;
                end;
                with tOrigemPRB do begin
                     sql.clear;
                     sql.add('select * from '+Empresas.fieldbyname('Banco_Dados').asstring+'.dbo.PagarReceberBaixas where Numero = '+tOrigemPR.fieldbyname('Numero').asstring);
                     open;
                     if recordcount > 0 then begin
                        while not eof do begin
                              tDestinoPRB.append;
                                          for i := 0 to pred(fieldcount) do begin
                                              if not Fields[i].isnull then begin
                                                 tDestinoPRB.fields[i].Value := Fields[i].value;
                                              end;
                                          end;
                                          with tNumero do begin
                                               sql.clear;
                                               sql.add('select isnull(max(Registro), 0)+1 as Registro from PagarReceberBaixas');
                                               open;
                                          end;
                                          tDestinoPRB.fieldbyname('Registro').value := tNumero.fieldbyname('Registro').AsInteger;
                                          tDestinoPRB.fieldbyname('Numero').value   := tDestinoPR.fieldbyname('Numero').AsInteger;
                              tDestinoPRB.post;
                              tDestinoPR.edit;
                                        tDestinoPR.fieldbyname('Baixa_Numero').value := tDestinoPRB.fieldbyname('Registro').asinteger;
                              tDestinoPR.Post;
                              next;
                        end;
                     end;
                end;
                tOrigemPR.next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          end;
          Janela_Processamento.close;
          MessageDlg('Lançamentos financeiros importados.', mtInformation, [mbok], 0);
     end;
end;



end.
