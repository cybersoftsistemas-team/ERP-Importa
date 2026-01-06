unit frmUtilitarios_RecriarContabil2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Mask,
  DBAccess, Funcoes, Grids, Vcl.ComCtrls, DB, MSAccess, DateUtils, system.UITypes, DBGrids, RxCurrEdit, RxToolEdit, MemDS, RxMemDS, Math;

type
  TUtilitarios_RecriarContabil2 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    bGerar: TButton;
    tPagarReceber: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tProcessos: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    tNotas: TMSQuery;
    tEstoque: TMSQuery;
    tNumLan: TMSQuery;
    tTotaliza: TMSQuery;
    tLoteNum: TMSQuery;
    Grade: TDBGrid;
    tPlano: TMSQuery;
    tTmp: TMSQuery;
    tLotes: TRxMemoryData;
    tLotesRegistro: TIntegerField;
    tLotesData: TDateField;
    tLotesLote: TIntegerField;
    tLotesEmpresa: TStringField;
    tLotesOrigem: TStringField;
    tLotesDescricao: TStringField;
    tLotesContabilizar: TBooleanField;
    tLotesAberto: TBooleanField;
    tLotesRecriar: TBooleanField;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    dsLotes: TDataSource;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    tLancamentos: TRxMemoryData;
    dstLancamentos: TDataSource;
    tLancamentosRegistro: TLargeintField;
    tLancamentosEmpresa: TStringField;
    tLancamentosData: TDateField;
    tLancamentosNumero: TIntegerField;
    tLancamentosConta_Debito: TStringField;
    tLancamentosConta_Credito: TStringField;
    tLancamentosHistorico_Codigo: TSmallintField;
    tLancamentosValor: TCurrencyField;
    tLancamentosProcesso_Debito: TStringField;
    tLancamentosOrigem: TStringField;
    tLancamentosDocumento: TStringField;
    tLancamentosData_Documento: TDateField;
    tLancamentosTipo_Documento: TStringField;
    tLancamentosNumero_Financeiro: TIntegerField;
    tLancamentosRecriar: TBooleanField;
    tLancamentosLote: TLargeintField;
    tLancamentosProcesso_Credito: TStringField;
    tLancamentosTipo_Nota: TSmallintField;
    tLancamentosBeneficiario: TStringField;
    tLancamentosContabilizar: TBooleanField;
    tLancamentosBeneficiario_CNPJ: TStringField;
    tLancamentosHistorico_Complemento: TStringField;
    tEmpresas: TMSQuery;
    StaticText11: TStaticText;
    cSenha: TEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
  private
    { Private declarations }
    function  AbreLote(Data: TDate; Empresa, Descricao, Origem: string): integer;
    function  UltimoLanc(Data: TDate; Empresa: string; Lote: integer): integer;
//    procedure LancamentoFinanceiroProv;
    procedure LancamentoFinanceiroBaixa;
//    procedure LancamentoNFPropria;
    procedure LancamentoFinanceiroBaixaLt;
//    procedure LancamentoNFTerceiros;
//    procedure LancamentoServicoTom;
//    procedure LancamentoServicoPre;
    function VerErro(ContaD, ContaC, VarD, VarC, Partida, Documento, OrigemD, OrigemC, OrigemPar, Benef, NumOrigem, Historico: string; HistoricoCod, Empresa, Banco, Modalidade: integer; Processo: string): boolean;
  public
    { Public declarations }
    virgula: boolean;
    mLinhas
   ,mLote
   ,mRegLote
   ,mRegLan
   ,mLanc: integer;
    mTotal
   ,mValor: Real;
    Abrelt: boolean;
    mContaD
   ,mContaC
   ,mHist
   ,mBancoContab
   ,CompBancos
   ,mDescLote
   ,mEmp
   ,mBene
   ,CompClass: string;

   Const
      mCampoPro: array[1..14] of String = ('ICMS'
                                          ,'ICMSST'
                                          ,'Despesas'
                                          ,'Frete'
                                          ,'Seguro'
                                          ,'II'
                                          ,'IPI'
                                          ,'PIS'
                                          ,'COFINS'
                                          ,'Estoque'
                                          ,'Produtos'
                                          ,'FOBForn'
                                          ,'FOBProc'
                                          ,'TotalNota');

      mCampoTer: array[1..8] of String = ('ICMSOper'
                                         ,'ICMSSub'
                                         ,'IPI'
                                         ,'PIS'
                                         ,'COFINS'
                                         ,'Estoque'
                                         ,'Produtos'
                                         ,'TotalNota');

      mCampoSerT: array[1..9] of String = ('ISS'
                                          ,'Adicional01'
                                          ,'Adicional02'
                                          ,'Adicional03'
                                          ,'Adicional04'
                                          ,'Adicional05'
                                          ,'Adicional06'
                                          ,'Produtos'
                                          ,'TotalNota');
  end;
var
  Utilitarios_RecriarContabil2: TUtilitarios_RecriarContabil2;

implementation

uses frmDados, frmDMContab, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal, frmProcesso_Importacao, frmCadastro_Clientes, frmCadastro_Fornecedores,
     frmCadastro_ClassificacaoFinanceira, frmCadastro_OrgaosPublicos, frmCadastro_Bancos, frmCadastro_HistoricoPadrao, frmConfigsis, frmCadastro_TiposProcesso, frmConfig_TipoNota, frmConfig_TipoNotaTerceiros;

{$R *.dfm}

procedure TUtilitarios_RecriarContabil2.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_RecriarContabil2.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Utilitarios_RecriarContabil2.Release;
     Utilitarios_RecriarContabil2 := nil;
end;

procedure TUtilitarios_RecriarContabil2.FormCreate(Sender: TObject);
begin
     If FileExists('Fundo_Barra_Roxo.bmp') then Image1.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
end;

procedure TUtilitarios_RecriarContabil2.bGerarClick(Sender: TObject);
Var
    i: Integer;
    mMsg: String;
begin
      with Dados do begin
           if (EmpresasFechamento_Financeiro.AsDateTime >= cDataIni.Date) or (EmpresasFechamento_Financeiro.AsDateTime >= cDataFim.Date) then begin
              MessageDlg('Período bloqueado!'+#13+#13+'Lançamentos não serão recriados.', mtError, [mbOK], 0);
              Abort;
           end;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           If UsuariosChave.Value <> cSenha.Text then begin
              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
              Abort;
           End;
      end;

      If Trim(RemoveCaracter('/', '', cDataIni.Text)) = '' then begin
         MessageDlg('É necessario informar a data inicial!', mtError, [mbOK], 0);
         Abort;
      End;
      If Trim(RemoveCaracter('/', '', cDataFim.Text)) = '' then begin
         MessageDlg('É necessario informar a data final!', mtError, [mbOK], 0);
         Abort;
      End;
      If cDataFim.Date < cDataIni.Date then begin
         MessageDlg('A data final não pode ser menor que a data inicial!', mtError, [mbOK], 0);
         Abort;
      End;
      // Apaga todos os lançamentos do período informado.
      mMsg := 'Atenção!'+#13+#13+'Todos os lançamentos do período informado serão apagados e recriados.'+#13+#13+'Deseja realmente continuar?';

      if MessageDlg(mMsg, mtWarning, [mbYes, mbNo], 0) = mrYes then begin
         bGerar.Enabled := false;
         Screen.Cursor  := crSQLWait;
         With Dados, dmContab, dmFiscal do begin
              Erros.DisableControls;
              Lancamentos.DisableControls;

              with Empresas do begin 
                   SQL.Clear;
                   SQL.Add('SELECT *');
                   SQL.Add('FROM  Empresas');
                   SQL.Add('WHERE Codigo = :pEmpresa');
                   ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                   Open;
              end;
              // Seleciona todas as filiais da empresa "MATRIZ" em uso.
              with tEmpresas do begin
                   sql.Clear;
                   SQL.Add('select Codigo, CNPJ, Numero_Filial, Banco_Dados from Empresas where substring(CNPJ, 1, 8) = :pCNPJ order by Numero_Filial, CNPJ');
                   ParamByName('pCNPJ').AsString := Copy(EmpresasCNPJ.AsString, 1, 8);
                   Open;
              end;
              with Lancamentos do begin
                   sql.Clear;
                   sql.Add('delete from Lancamentos where(Data between :pDataIni and :pDataFim) and isnull(Recriar, 0) = 1');
                   ParamByName('pDataIni').AsDateTime := cDataIni.Date;
                   ParamByName('pDataFim').AsDateTime := cDataFim.Date;
                   Execute;
                   sql.Clear;
                   sql.Add('select top 1 * FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim)');
                   ParamByName('pDataIni').AsDate := cDataIni.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                   Open;
              end;
              with Lotes do begin
                   sql.Clear;
                   sql.Add('delete from Lotes where Data between :pDataIni and :pDataFim and isnull(Recriar, 0) = 1');
                   ParamByName('pDataIni').AsDate := cDataIni.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                   execute;
                   sql.Clear;
                   sql.Add('select * from Lotes where Data between :pDataIni and :pDataFim and isnull(Recriar, 0) = 1');
                   ParamByName('pDataIni').AsDate := cDataIni.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                   Open;
              end;

              Erros.SQL.Clear;
              Erros.SQL.Add('TRUNCATE TABLE LanErros');
              Erros.Execute;
              Erros.close;

              Erros.sql.Clear;
              Erros.sql.Add('select * from LanErros order by Empresa desc, Documento, Erro, Origem');
              Erros.Open;

              tLotes.Open;
              tLotes.EmptyTable;
              tLancamentos.Open;
              tLancamentos.EmptyTable;

              Historicos.SQL.Clear;
              Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
              Historicos.Open;

              Bancos.SQL.Clear;
              Bancos.SQL.Add('SELECT * FROM Bancos');
              Bancos.Open;

              TiposDocumentos.SQL.Clear;
              TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos');
              TiposDocumentos.Open;

              ClassificacaoFinanceira.SQL.Clear;
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira order by Codigo');
              ClassificacaoFinanceira.Open;

              Clientes.SQL.Clear;
              Clientes.SQL.Add('SELECT * FROM Clientes');
              Clientes.Open;

              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
              Fornecedores.Open;

              Orgaos.SQL.Clear;
              Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos');
              Orgaos.Open;

              ReferenciasFiscais.SQL.Clear;
              ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE(Ativo = 1)');
              ReferenciasFiscais.Open;

              Impostos.SQL.Clear;
              Impostos.SQL.Add('SELECT * FROM Impostos');
              Impostos.Open;

              Configuracao.Open;

              CompClass    := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
              CompBancos   := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
              mBancoContab := Dados.EmpresasBanco_Contabilidade.AsString;
         end;

         PageControl1.ActivePageIndex := 0;
         TabSheet1.Caption            := 'Erros';

         Janela_Processamento := TJanela_Processamento.Create(Self);
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.Show;

         tLotes.DisableControls;
         tLancamentos.DisableControls;

//         LancamentoFinanceiroProv;     // Financeiro - Provisões.

         LancamentoFinanceiroBaixa;    // financeiro - Baixas sem lotes (Partida Dobrada).
         LancamentoFinanceiroBaixaLt;  // financeiro - Baixas com lotes (Partida Multipla).

//         LancamentoNFPropria;          // Notas fiscais de emissão Própria.
//         LancamentoNFTerceiros;        // Notas fiscais de terceriros.
//         LancamentoServicoTom;         // Notas fiscais de serviço tomado.
//         LancamentoServicoPre;         // Notas fiscais de emissão prestado.

         with Dados, dmContab, dmFiscal do begin
              Erros.sql.Clear;
              Erros.sql.Add('select * from LanErros order by Empresa desc, Origem, Documento');
              Erros.Open;
              if (Erros.RecordCount = 0) and (tLancamentos.RecordCount > 0) then begin
                 with tLoteNum do begin
                      sql.Clear;
                      sql.Add('select isnull(max(Registro), 0)+1 as Reg from Lotes');
                      Open;
                      mRegLote := FieldByName('Reg').AsInteger;

                      sql.Clear;
                      sql.Add('select isnull(max(Registro), 0)+1 as Reg from Lancamentos');
                      Open;
                      mRegLan := FieldByName('Reg').asinteger;
                 end;

                 Virgula := false;

                 // Transfere os lotes da memória para o banco de dados.
                 with tLotes do begin
                      mLinhas := 1;
                      tTmp.sql.clear;
                      tTmp.SQL.Add('insert into Lotes values ');

                      first;
                      while not eof do begin
                            tTmp.SQL.Add(Concat(iif(Virgula, ',', ''),'(',
                                             inttostr(mRegLote),
                                         ',',quotedstr(FormatDateTime('MM-dd-yyyy', FieldByName('Data').value)),
                                         ',',Fieldbyname('Lote').asstring,
                                         ',',quotedstr(Fieldbyname('Empresa').asstring),
                                         ',',quotedstr(FieldByName('Origem').Asstring),
                                         ',',quotedstr(FieldByName('Descricao').Asstring),
                                         ',',iif(FieldByName('Contabilizar').asboolean, '1', '0'),
                                         ',',iif(FieldByName('Aberto').asboolean, '1', '0'),
                                         ',',iif(FieldByName('Recriar').asboolean, '1', '0'),
                                         ')'));
                            next;
                            inc(mLinhas);
                            inc(mRegLote);

                            virgula := true;
                            if (mLinhas >= 900) or (eof) then begin
                               with tTmp do begin
                                    //sql.SaveToFile('c:\Temp\Lancamento_Contabil_tTmp_Lote.sql');
                                    execute;
                                    tTmp.sql.clear;
                                    tTmp.sql.Add('insert into Lotes values ');
                                    Virgula := false;
                                    mLinhas := 1;
                               end;
                            end;
                      end;
                 end;

                 // Transfere os lançamentos da memória para o banco de dados.
                 Virgula := false;
                 with tLancamentos do begin
                      mLinhas := 1;
                      tTmp.sql.clear;
                      tTmp.sql.Add('insert into Lancamentos values ');

                      first;
                      while not eof do begin
                            tTmp.sql.Add(Concat(iif(Virgula, ',', ''),'(',
                                             inttostr(mRegLan),
                                         ',',quotedstr(Fieldbyname('Empresa').asstring),
                                         ',',quotedstr(FormatDateTime('MM-dd-yyyy', FieldByName('Data').AsDateTime)),
                                         ',',Fieldbyname('Numero').asstring,
                                         ',',quotedstr(FieldByName('Conta_Debito').Asstring),
                                         ',',quotedstr(FieldByName('Conta_Credito').Asstring),
                                         ',',FieldByName('Historico_Codigo').Asstring,
                                         ',',quotedstr(Fieldbyname('Historico_Complemento').AsString),
                                         ',',stringreplace(FormatCurr('#00.00', FieldByName('Valor').ascurrency), ',', '.', [rfReplaceAll]),
                                         ',',quotedstr(FieldByName('Processo_Debito').AsString),
                                         ',',quotedstr(FieldByName('Origem').AsString),
                                         ',',quotedstr(FieldByName('Documento').AsString),
                                         ',',quotedstr(FormatDateTime('MM-dd-yyyy', FieldByName('Data_Documento').AsDateTime)),
                                         ',',quotedstr(FieldByName('Tipo_Documento').Asstring),
                                         ',',FieldByName('Numero_Financeiro').Asstring,
                                         ',',iif(FieldByName('Recriar').Asboolean, '1', '0'),
                                         ',',FieldByName('Lote').Asstring,
                                         ',',Quotedstr(FieldByName('Processo_Credito').AsString),
                                         ',',FieldByName('Tipo_Nota').AsString,
                                         ',',quotedstr(FieldByName('Beneficiario').asstring),
                                         ',',iif(FieldByName('Contabilizar').asboolean, '1', '0'),
                                         ',',quotedstr(FieldByName('Beneficiario_CNPJ').asstring),
                                         ')'));

                            next;
                            inc(mLinhas);
                            inc(mRegLan);

                            virgula := true;
                            if (mLinhas >= 900) or (eof) then begin
                               with tTmp do begin
                                    //sql.SaveToFile('c:\Temp\Lancamento_Contabil_tTmp.sql');
                                    execute;
                                    tTmp.sql.clear;
                                    tTmp.sql.Add('insert into Lancamentos values ');
                                    Virgula := false;
                                    mLinhas := 1;
                               end;
                            end;
                      end;
                 end;

                 tLotes.First;
                 tLancamentos.First;
                 tLotes.EnableControls;
                 tLancamentos.EnableControls;
                 dmContab.Erros.EnableControls;
              end;
         end;
         TabSheet4.Caption := 'Lançamentos ['+ InttoStr(tLancamentos.RecordCount)+']';
         TabSheet3.Caption := 'Lotes ['+ InttoStr(tLotes.RecordCount)+']';

         Janela_Processamento.Close;
         if Funcoes.Cancelado then begin
            ShowMessage('Cancelado pelo usúario...');
         end else begin
             PageControl1.ActivePageIndex := 1;
             if dmContab.Erros.RecordCount > 0 then begin
                PageControl1.ActivePageIndex := 2;
                TabSheet1.Caption := 'Erros ['+ InttoStr(dmContab.Erros.RecordCount)+']';
                ShowMessage('Processo de geração de lançamentos contém erros.'+#13+'Corrija os erros para continuar.');
             end else begin
                ShowMessage('Processo de geração de lançamentos concluído.');
             end;
         end;
         dmContab.Erros.EnableControls;
         dmContab.Lancamentos.EnableControls;
         bGerar.Enabled := true;
      End;
end;

// Geração dos lançamentos do financeiro - PROVISÃO.
(*
procedure TUtilitarios_RecriarContabil2.LancamentoFinanceiroProv;
var
  i: integer;
begin
      with Dados, dmFiscal, dmContab do begin
           tEmpresas.First;
           while not tEmpresas.Eof do begin
                 with tPagarReceber do begin
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('');
                      sql.Add('-------------------------------------------------------------------------------------[ PROVISÃO PAGAMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('select  Numero');
                      sql.Add('       ,Classificacao = PR.Classificacao');
                      sql.Add('		    ,Origem_Lan = ''Financeiro provisão - Pgto. (''+cast(PR.Numero as varchar(15))+'')'' ');
                      sql.Add('       ,Tipo_Documento = PR.Documento');
                      sql.Add('       ,PR.Data_Documento');
                      sql.Add('       ,PR.Numero_Documento');
                      sql.Add('       ,PR.Valor_Total');
                      sql.Add('       ,PR.Processo');
                      sql.Add('       ,DI                = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('       ,Beneficiario      = ''F''+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.add('       ,Beneficiario_CNPJ = ISNULL(FR.CNPJ, '''')+ISNULL(FR.CPF, '''')');
                      sql.add('       ,Beneficiario_Nome = FR.Nome');
                      sql.Add('       ,PR.Observacao');
                      sql.Add('       ,CF.Provisao_Historico');
                      sql.Add('       ,Macro           = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Provisao_Historico)');
                      sql.Add('       ,Tipo_Partida    = CF.Tipo_Lancamento');
                      sql.Add('       ,Origem_ContaD   = ''Provisao PG - [CLASSIFICAÇÃO]'' ');
                      sql.Add('       ,Origem_ContaC   = ''Provisao PG - [CLASSIFICAÇÃO]'' ');
                      sql.Add('       ,Var_ContaD      = CF.Provisao_ContaD');
                      sql.Add('       ,Provisao_ContaD = case when CF.Provisao_ContaD = ''FORNECEDOR'' then');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento');
                      sql.Add('                                         when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_Devolucao');
                      sql.Add('                                    else');
                      sql.Add('										                      TP.Conta_Passivo');
                      sql.Add('									                   end');
                      sql.Add('                               when CF.Provisao_ContaD = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                          else');
                      sql.Add('							                  CF.Provisao_ContaD');
                      sql.Add('      					           end');
                      sql.Add('      ,Var_ContaC      = CF.Provisao_ContaC');
                      sql.Add('      ,Provisao_ContaC = case when CF.Provisao_ContaC = ''FORNECEDOR'' then');
                      sql.Add('                                   case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento');
                      sql.Add('									                       when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_Devolucao');
                      sql.Add('                                   else');
                      sql.Add('										                     TP.Conta_Passivo');
                      sql.Add('									                  end');
                      sql.Add('                              when CF.Provisao_ContaC = ''PROCESSO''   then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                         else');
                      sql.Add('							                 CF.Provisao_ContaC');
                      sql.Add('      					          end');
                      sql.Add('from  PagarReceber PR, '+CompClass+' CF, FornecedoresModalidades TP, Fornecedores FR');
                      sql.Add('where Data_Documento between :pDataini AND :pDataFim');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(Pago_Cliente, 0) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(CF.Provisao_ContaD, '''')+isnull(CF.Provisao_ContaC, ''''))) <> '''' ');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.add('and  ( TP.Fornecedor = PR.Fornecedor and TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)) )');
                      sql.Add('-----------( ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select  Numero');
                      sql.Add('       ,Classificacao = PR.Classificacao');
                      sql.Add('		    ,Origem_Lan = ''Financeiro provisão - Pgto. (''+cast(PR.Numero as varchar(15))+'')'' ');
                      sql.Add('       ,Tipo_Documento = PR.Documento');
                      sql.Add('       ,PR.Data_Documento');
                      sql.Add('       ,PR.Numero_Documento');
                      sql.Add('       ,PR.Valor_Total');
                      sql.Add('       ,PR.Processo');
                      sql.Add('       ,DI                = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('       ,Beneficiario      = ''F''+ltrim(rtrim(PR.Orgao))');
                      sql.add('       ,Beneficiario_CNPJ = ISNULL(FR.CNPJ, '''')');
                      sql.add('       ,Beneficiario_Nome = FR.Nome');
                      sql.Add('       ,PR.Observacao');
                      sql.Add('       ,CF.Provisao_Historico');
                      sql.Add('       ,Macro = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Provisao_Historico)');
                      sql.Add('       ,Tipo_Partida    = CF.Tipo_Lancamento');
                      sql.Add('       ,Origem_ContaD   = ''Provisao PG - [CLASSIFICAÇÃO]'' ');
                      sql.Add('       ,Origem_ContaC   = ''Provisao PG - [CLASSIFICAÇÃO]'' ');
                      sql.Add('       ,Var_ContaD      = CF.Provisao_ContaD');
                      sql.Add('       ,Provisao_ContaD = case when CF.Provisao_ContaD = ''FORNECEDOR'' then FR.Conta ');
                      sql.Add('                               when CF.Provisao_ContaD = ''PROCESSO''   then (select Conta_Impostos from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                          else');
                      sql.Add('							                   CF.Provisao_ContaD');
                      sql.Add('      					           end');
                      sql.Add('       ,Var_ContaC      = CF.Provisao_ContaC');
                      sql.Add('       ,Provisao_ContaC = case when CF.Provisao_ContaC = ''FORNECEDOR'' then FR.Conta');
                      sql.Add('                               when CF.Provisao_ContaC = ''PROCESSO''   then (select Conta_Impostos from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                          else');
                      sql.Add('							                  CF.Provisao_ContaC');
                      sql.Add('      					           end');
                      sql.Add('from  PagarReceber PR, '+CompClass+' CF, FornecedoresModalidades TP, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where Data_Documento between :pDataini and :pDataFim');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(Pago_Cliente, 0) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(CF.Provisao_ContaD, '''')+isnull(CF.Provisao_ContaC, ''''))) <> '''' ');
                      sql.Add('and   isnull(PR.Orgao, '''') <> ''''');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.add('and  ( TP.Fornecedor = PR.Fornecedor and TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)) )');
                      sql.Add('union all');
                      sql.Add('-------------------------------------------------------------------------------------[ PROVISÃO RECEBIMENTOS ]---------------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('select  Numero');
                      sql.Add('       ,Classificacao = PR.Classificacao');
                      sql.Add('		    ,Origem_Lan = ''Financeiro provisão - Receb. (''+cast(PR.Numero as varchar(15))+'')'' ');
                      sql.Add('       ,Tipo_Documento = PR.Documento');
                      sql.Add('       ,PR.Data_Documento');
                      sql.Add('       ,PR.Numero_Documento');
                      sql.Add('       ,PR.Valor_Total');
                      sql.Add('       ,PR.Processo');
                      sql.Add('       ,DI                = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('       ,Beneficiario      = ''C''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.add('       ,Beneficiario_CNPJ = ISNULL(FR.CNPJ, '''')+ISNULL(FR.CPF, '''')');
                      sql.add('       ,Beneficiario_Nome = FR.Nome');
                      sql.Add('       ,PR.Observacao');
                      sql.Add('       ,CF.Provisao_Historico');
                      sql.Add('       ,Macro           = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Provisao_Historico)');
                      sql.Add('       ,Tipo_Partida    = CF.Tipo_Lancamento');
                      sql.Add('       ,Origem_ContaD   = ''Provisao PG - [CLASSIFICAÇÃO]'' ');
                      sql.Add('       ,Origem_ContaC   = ''Provisao PG - [CLASSIFICAÇÃO]'' ');
                      sql.Add('       ,Var_ContaD      = CF.Provisao_ContaD');
                      sql.Add('       ,Provisao_ContaD = case when CF.Provisao_ContaD = ''CLIENTE'' then ');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento');
                      sql.Add('       						                      when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_Devolucao');
                      sql.Add('                                    else');
                      sql.Add('       							                    TP.Conta_Ativo');
                      sql.Add('       						                 end');
                      sql.Add('                                when CF.Provisao_ContaD = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                          else');
                      sql.Add('       				                 CF.Provisao_ContaD');
                      sql.Add('       					         end');
                      sql.Add('       ,Var_ContaC      = CF.Provisao_ContaC');
                      sql.Add('       ,Provisao_ContaC = case when CF.Provisao_ContaC = ''CLIENTE'' then');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento');
                      sql.Add('       						                      when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_Devolucao');
                      sql.Add('                                    else');
                      sql.Add('       							                    TP.Conta_Ativo');
                      sql.Add('       						                 end');
                      sql.Add('                               when CF.Provisao_ContaC = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                          else');
                      sql.Add('       				                CF.Provisao_ContaC');
                      sql.Add('       					         end');
                      sql.Add('from  PagarReceber PR, '+CompClass+' CF, ClientesModalidades TP, Clientes FR');
                      sql.Add('where Data_Documento between :pDataini AND :pDataFim');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(PR.Pago_Cliente, 0) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(CF.Provisao_ContaD, '''')+isnull(CF.Provisao_ContaC, ''''))) <> '''' ');
                      sql.Add('and   isnull(PR.Cliente, 0) > 0');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Cliente');
                      sql.add('and  ( TP.Cliente = PR.Cliente and TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)) )');
                      sql.Add('Order by Data_Documento');
                      ParamByName('pDataIni').AsDate := cDataIni.Date;
                      ParamByName('pDataFim').AsDate := cDataFim.Date;
                      //sql.SaveToFile('c:\temp\Recriar_Contabil_Provisao2.sql');
                      Open;

                      Janela_Processamento.Progresso.Position := 0;
                      Janela_Processamento.Progresso.Max      := RecordCount;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando as provisões do financeiro...'+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);

                      mLote := 0;

                      First;
                      while (not Eof) and (Funcoes.Cancelado = false) do begin
                            mLote := AbreLote(FieldByName('Data_Documento').value, tEmpresas.FieldByName('CNPJ').asstring, 'Financeiro (Provisão)', 'FPV');
                            mLanc := UltimoLanc(FieldByName('Data_Documento').value, tEmpresas.FieldByName('CNPJ').asstring, mLote);

                            mHist := ComplementoHistorico( tPagarReceber.FieldByName('Macro').AsString               // Complemento histórico.
                                                          ,tPagarReceber.FieldByName('Beneficiario_Nome').AsString   // Nome do beneficiário.
                                                          ,tPagarReceber.FieldByName('Processo').AsString            // Processo.
                                                          ,tPagarReceber.FieldByName('DI').AsString                  // DI.
                                                          ,tPagarReceber.FieldByName('Classificacao').AsString       // Classificacao Financeira.
                                                          ,tPagarReceber.FieldByName('Tipo_Documento').AsString      // Tipo do documento
                                                          ,tPagarReceber.FieldByName('Numero_Documento').AsString    // Número do documento
                                                          ,tPagarReceber.FieldByName('Data_Documento').AsString      // Data do documento.
                                                          ,''                                                        // Banco.
                                                          ,tPagarReceber.FieldByName('Observacao').AsString          // Observação.
                                                          );

                            VerErro(FieldByName('Provisao_ContaD').Asstring            // Conta Débito.
                                   ,FieldByName('Provisao_ContaC').Asstring            // Conta Crédito.
                                   ,FieldByName('Var_ContaD').Asstring                 // Variável parâmetrizada - Conta D.
                                   ,FieldByName('Var_ContaC').Asstring                 // Variável parâmetrizada - Conta C.
                                   ,FieldByName('Tipo_Partida').Asstring               // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                   ,FieldByName('Numero').AsString                     // Número do documento de origem.
                                   ,FieldByName('Origem_ContaD').AsString              // Origem da conta "D".
                                   ,FieldByName('Origem_ContaC').AsString              // Origem da conta "C".
                                   ,FieldByName('Classificacao').Asstring              // Origem do parâmetro (Local de parâmetrização).
                                   ,FieldByName('Beneficiario').Asstring               // Beneficário.
                                   ,FieldByName('Numero').Asstring                     // Número do documento / título de origem.
                                   ,FieldByName('Provisao_Historico').asinteger        // Código do histórico padrão.
                                   ,tEmpresas.FieldByName('Numero_Filial').asinteger   // Número da Filial.
                                   ,FieldByName('Processo').Asstring                   // Processo.
                                   );

                            with tLancamentos do begin
                                 inc(mLanc);
                                 append;
                                       FieldByName('Registro').Value              := 0;
                                       FieldByName('Lote').Value                  := mLote;
                                       FieldByName('Numero').Value                := mLanc;
                                       FieldByName('Empresa').Value               := tEmpresas.FieldByName('CNPJ').asstring;
                                       FieldByName('Data').Value                  := tPagarReceber.FieldByName('Data_Documento').value;
                                       FieldByName('Conta_Debito').Value          := trim(tPagarReceber.FieldByName('Provisao_ContaD').Asstring);
                                       FieldByName('Conta_Credito').Value         := trim(tPagarReceber.FieldByName('Provisao_ContaC').Asstring);
                                       FieldByName('Historico_Codigo').Value      := tPagarReceber.FieldByName('Provisao_Historico').asinteger;
                                       FieldByName('Historico_Complemento').Value := mHist;
                                       FieldByName('Valor').Value                 := tPagarReceber.FieldByName('Valor_Total').ascurrency;
                                       FieldByName('Processo_Debito').Value       := tPagarReceber.FieldByName('Processo').AsString;
                                       FieldByName('Origem').Value                := tPagarReceber.FieldByName('Origem_Lan').AsString;
                                       FieldByName('Documento').Value             := tPagarReceber.FieldByName('Numero_Documento').AsString;
                                       FieldByName('Data_Documento').Value        := tPagarReceber.FieldByName('Data_Documento').value;
                                       FieldByName('Tipo_Documento').Value        := tPagarReceber.FieldByName('Tipo_Documento').Asstring;
                                       FieldByName('Numero_Financeiro').Value     := tPagarReceber.FieldByName('Numero').asInteger;
                                       FieldByName('Recriar').Value               := true;
                                       FieldByName('Processo_Credito').Value      := tPagarReceber.FieldByName('Processo').AsString;
                                       FieldByName('Tipo_Nota').Value             := 0;
                                       FieldByName('Beneficiario').Value          := AnsiString(trim(tPagarReceber.FieldByName('Beneficiario').asstring));
                                       FieldByName('Contabilizar').Value          := true;
                                       FieldByName('Beneficiario_CNPJ').value     := tPagarReceber.FieldByName('Beneficiario_CNPJ').Asstring;
                                 post;
                            end;

                            Next;

                            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                            Janela_Processamento.lProcesso.Caption  := 'Gerando provisões do dia...'+FieldByName('Data_Documento').AsString+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, ' MATRIZ', ' FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);;
                            Application.ProcessMessages;
                      end;
                 end;

                 tEmpresas.Next;
           end;
      end;
end;
*)
// Geração dos lançamentos do financeiro = BAIXAS SEM LOTE (PARTIDA DOBRADA).
procedure TUtilitarios_RecriarContabil2.LancamentoFinanceiroBaixa;
begin
      with Dados, dmFiscal, dmContab do begin
           tEmpresas.First;
           while not tEmpresas.Eof do begin
                 mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                 mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );
                 with tPagarReceber do begin
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('--------------------------------------------------------[ DELETA A FUNÇÃO CASO JA EXISTA ]------------------------------------------------------------');
                      sql.Add('if (select count(*) from sys.objects where type = ''FN'' and name = ''PegaOrigem'') > 0 begin');
                      sql.Add('    drop function dbo.PegaOrigem');
                      sql.Add('end');
                      execute;
                      sql.Clear;
                      sql.Add('--------------------------------------------[ CRIA A FUNÇÃO QUE CONVERTE VARIAVEIS EM CONTA CONTABIL ]------------------------------------------------');
                      sql.add('create function PegaOrigem(@Var varchar(60))');
                      sql.add('returns varchar(60)');
                      sql.add('begin');
                      sql.add('    declare @Retorno varchar(60)');
                      sql.add('    set @Retorno = '''' ');
                      sql.add('    set @Retorno = case @Var');
                      sql.add('                        when ''CLIENTE''    then ''[CLIENTE]'' ');
                      sql.Add('                        when ''FORNECEDOR'' then ''[FORNECEDOR]'' ');
                      sql.Add('                        when ''ORGÃO''      then ''[ORGÃO PÚBLICO]'' ');
                      sql.add('                        when ''PROCESSO''   then ''[PROCESSO]'' ');
                      sql.add('                        when ''PROCESSOIM'' then ''[PROCESSO]'' ');
                      sql.add('                        when ''PROCESSOAD'' then ''[PROCESSO]'' ');
                      sql.add('                        when ''JUROS REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_JurosRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[CONFIGURAÇÃO]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''JUROS PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_JurosPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[CONFIGURAÇÃO]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''MULTA REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_MultaRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[CONFIGURAÇÃO]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''MULTA PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_MultaPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[CONFIGURAÇÃO]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''DESC REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_DescontosRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[CONFIGURAÇÃO]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''DESC PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_DescontosPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[CONFIGURAÇÃO]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                   else');
                      sql.add('                        ''[CLASSIFICAÇÃO]'' ');
                      sql.add('                   end');
                      sql.add('    return(@Retorno)');
                      sql.add('end');
                      //sql.Savetofile('c:\temp\Recriar_Contabil_Baixas_Função.sql');
                      execute;
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('');
                      sql.Add('-------------------------------------------------------------------------------------[ LIQUIDAÇÃO PAGAMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros) + PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario      = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''Liquidação Pgto [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros) + PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Orgao as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then (select Conta from Cybersoft_Cadastros.dbo.OrgaosPublicos where Codigo = pr.Orgao)');
                      sql.add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.add('                             else');
                      sql.add('                                  CF.Pagamento_Conta');
                      sql.add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''Liquidação Pgto [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(PR.Orgao, 0))) <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( ADIANTAMENTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro Adiantamento a Fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Adiantamento ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''Adiantamento [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 1');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( PERMUTA ADIANTAMENTO DE CLIENTES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro permuta de adiantamento de Clientes (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''C''+ltrim(rtrim(cast(PR.Adiantamento_Numero as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Permuta [Cliente]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when PR.Processo <> '''' then');
                      sql.Add('                                  (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Adiantamento_Numero and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                             else');
                      sql.Add('                                  (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Adiantamento_Numero and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Permuta [Cliente]'' ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Ativo from ClientesModalidades where Cliente = pr.Adiantamento_Numero and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Ativo from ClientesModalidades where Cliente = pr.Adiantamento_Numero and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) <> 0');
                      sql.Add('and   isnull(PR.Permuta_Recebimento, 0) = 1');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Adiantamento_Numero');
                      sql.Add('-----------( PERMUTA ADIANTAMENTO A FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro permuta de adiantamento a fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto [FORNECEDOR]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                      case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                      else');
                      sql.Add('                                           (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                      end');
                      sql.Add('                                 when CF.Pagamento_Conta = ''PROCESSO''   then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                 CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''Liquidação Pgro [FORNECEDOR]'' ');
                      sql.Add('      ,Var_ContaC       = ''FORNECEDOR'' ');
                      sql.Add('      ,Pagamento_ContaC    = case when PR.Processo <> '''' then');
                      sql.Add('                                  (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                             else');
                      sql.Add('                                  (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                             end');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) <> 0');
                      sql.Add('and   isnull(PR.Permuta_Recebimento, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)= 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Adiantamento_Numero');
                      sql.Add('-----------( MULTA FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Multa');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Multa [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Pgto Multa [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, FornecedoresModalidades TP, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.add('and   (TP.Fornecedor = PR.Fornecedor and TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)) )');
                      sql.Add('-----------( MULTA ORGÃOS PUBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Multa');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Multa [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Pgto Multa [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(PR.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( JUROS FORNECEDOR )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Juros [''+dbo.PegaOrigem(''JUROS PAG'')+'']'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Pgto Juros [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( JUROS ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Juros [''+dbo.PegaOrigem(''JUROS PAG'')+'']'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Pgto Juros [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( DESCONTOS FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Desc Rec [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Pgto Desc Rec [''+dbo.PegaOrigem(''DESC REC'')+'']'' ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( DESCONTOS ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Desc Rec [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Origem_ContaC       = ''Liquidação Pgto Desc Rec [''+dbo.PegaOrigem(''DESC REC'')+'']'' ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( FECHAMENTO DE CÂMBIO )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Fechamento de câmbio (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros) + PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Fechamento Câmbio ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''Fechamento Câmbio [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 1');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( VARIAÇÃO CÂMBIAL ATIVA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Variação câmbial "Ativa" (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Câmbio Var Ativa [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Origem_ContaC       = ''Câmbio Var Ativa [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0)      > 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 1');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_CambioVarAtiva from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( VARIAÇÃO CÂMBIAL PASSIVA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Variação câmbial "Passiva" (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PR.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Câmbio Var Passiva [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Câmbio Var Passiva [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 1');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_CambioVarPassiva from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( TRASFERÊNCIA BANCÁRIA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro - Transferência Bancária (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+cast((select Conta_Fornecedor from '+CompBancos+' where Codigo = PR.Transferencia_Banco) as varchar(10))');
                      sql.Add('      ,Beneficiario_CNPJ   = (SELECT ISNULL(CNPJ, '''') FROM Fornecedores WHERE(Codigo = (select Conta_Fornecedor from '+CompBancos+' where Codigo = PR.Transferencia_Banco)))');
                      sql.Add('      ,Beneficiario_Nome   = (SELECT Nome FROM Fornecedores WHERE(Codigo = (select Conta_Fornecedor from '+CompBancos+' where Codigo = PR.Transferencia_Banco)))');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Transf Bancaria[Banco]'' ');
                      sql.Add('      ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PR.Transferencia_Banco)');
                      sql.Add('      ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PR.Transferencia_Banco)');
                      sql.Add('      ,Origem_ContaC       = ''Transf Bancaria[Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Transferencia, 0) = 1');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      
                      sql.Add('-----------( PAGAMENTO DE DEVOLUÇÃO RECEBIDA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario      = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(Cl.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Liquidação Pgto Dev ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta in(''CLIENTE'', ''Fornecedor'') then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Devolucao from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Devolucao from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''Liquidação Pgto Dev [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 1');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      
                      sql.Add('-------------------------------------------------------------------------------------[ LIQUIDAÇÃO RECEBIMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros) + PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(CL.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Receb Cliente [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Origem_ContaC       = ''Receb Cliente ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Ativo from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Ativo from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( ADIANTAMENTOS RECEBIDOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro Adiantamento de Clientes (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Receb Cliente [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD  = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Origem_ContaC     = ''Receb Cliente ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaC        = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE'' or CF.Pagamento_Conta = ''ADIANTAMENTO'' then');
                      sql.Add('                                       case when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''IMPORTAÇÃO'' then ');
                      sql.Add('                                                 case when PR.Processo <> '''' then');
                      sql.Add('                                                     (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                                 else');
                      sql.Add('                                                     (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                                 end');
                      sql.Add('                                            when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''EXPORTAÇÃO'' then ');
                      sql.Add('                                                 case when PR.Processo <> '''' then');
                      sql.Add('                                                      (select Conta_Adiantamento from ClientesModalidades clm where clm.Cliente = pr.Cliente and clm.Codigo = (select Codigo from TiposProcesso TP where TP.Exportacao = 1))');
                      sql.Add('                                                 else');
                      sql.Add('                                                      (select Conta_Adiantamento from ClientesModalidades clm where clm.Cliente = pr.Cliente and clm.Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                                 end');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 1');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      
                      sql.Add('-----------( PERMUTA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro permuta de adiantamento (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Pgto Permuta ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''CLIENTE'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Adiantamento from ClientesModalidades cm where cm.Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Adiantamento from ClientesModalidades cm where cm.Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC       = ''Pgto Permuta ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaC       = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC = case when PR.Processo <> '''' then');
                      sql.Add('                                   (select Conta_Ativo from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                              else');
                      sql.Add('                                   (select Conta_Ativo from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                              end');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) <> 0');
                      sql.Add('and   PR.Numero                   = PRB.Numero');
                      sql.Add('and   CF.Codigo                   = PR.Classificacao');
                      sql.Add('and   CL.Codigo                   = PR.Cliente');
                      sql.Add('-----------( MULTA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa recebida (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Multa');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Receb Multa ''+dbo.PegaOrigem(''MULTA REC'')');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Receb Multa [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( JUROS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros Recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Receb Juros ''+dbo.PegaOrigem(''JUROS REC'')');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Receb Juros [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( DESCONTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Descontos Concedidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('      ,Origem_ContaD       = ''Desc Concedido''+dbo.PegaOrigem(''DESC PAG'')');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''Desc Concedido [Banco]''');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R''');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('order by Data');
                      ParamByName('pDataIni').AsDate := cDataIni.Date;
                      ParamByName('pDataFim').AsDate := cDataFim.Date;
                      //sql.SaveToFile('c:\temp\Recriar_Contabil_Baixa.sql');
                      Open;

                      Janela_Processamento.Progresso.Position := 0;
                      Janela_Processamento.Progresso.Max      := RecordCount;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando as liquidações do financeiro...Baixas'+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);

                      mLote := 0;

                      First;
                      while (not Eof) and (Funcoes.Cancelado = false) do begin
                            mDescLote := 'Financeiro Liquidação - '+mEmp;
                            mLote     := AbreLote(FieldByName('Data').value, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, 'FBX');
                            mLanc     := UltimoLanc(FieldByName('Data').value, Empresas.FieldByName('CNPJ').asstring, mLote);

                            mHist := ComplementoHistorico( tPagarReceber.FieldByName('Macro').AsString                 // Complemento histórico.
                                                          ,tPagarReceber.FieldByName('Beneficiario_Nome').AsString     // Nome do beneficiário.
                                                          ,tPagarReceber.FieldByName('Processo').AsString              // Processo.
                                                          ,tPagarReceber.FieldByName('DI').AsString                    // DI.
                                                          ,tPagarReceber.FieldByName('Classificacao').AsString         // Classificacao Financeira.
                                                          ,tPagarReceber.FieldByName('Tipo_Documento').AsString        // Tipo do documento
                                                          ,tPagarReceber.FieldByName('Numero_Documento').AsString      // Número do documento
                                                          ,tPagarReceber.FieldByName('Data_Documento').AsString        // Data do documento.
                                                          ,tPagarReceber.FieldByName('Banco_Nome').AsString            // Banco.
                                                          ,tPagarReceber.FieldByName('Observacao').AsString            // Observação.
                                                          );

                            VerErro(FieldByName('Pagamento_ContaD').Asstring            // Conta Débito.
                                   ,FieldByName('Pagamento_ContaC').Asstring            // Conta Crédito.
                                   ,FieldByName('Var_ContaD').Asstring                  // Variável parâmetrizada - Conta D.
                                   ,FieldByName('Var_ContaC').Asstring                  // Variável parâmetrizada - Conta C.
                                   ,FieldByName('Tipo_Partida').Asstring                // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                   ,FieldByName('Numero').AsString                      // Número do documento de origem.
                                   ,FieldByName('Origem_ContaD').AsString               // Origem da conta "D".
                                   ,FieldByName('Origem_ContaC').AsString               // Origem da conta "C".
                                   ,FieldByName('Classificacao').Asstring               // Origem do parâmetro (Local de parâmetrização).
                                   ,FieldByName('Beneficiario').Asstring                // Beneficário.
                                   ,FieldByName('Numero').Asstring                      // Número do documento / título de origem.
                                   ,mHist                                               // histórico padrão.
                                   ,FieldByName('Pagamento_Historico').Asinteger        // Código do histórico padrão.
                                   ,tEmpresas.FieldByName('Numero_Filial').asinteger    // Número da Filial.
                                   ,FieldByName('Banco').asinteger                      // Código do banco.
                                   ,FieldByName('Modalidade').asinteger                 // Código do tipo de processo.
                                   ,FieldByName('Processo').Asstring                    // Processo.
                                   );

                            with tLancamentos do begin
                                 inc(mLanc);
                                 append;
                                       FieldByName('Registro').Value              := 0;
                                       FieldByName('Numero').Value                := mLanc;
                                       FieldByName('Empresa').Value               := Empresas.FieldByName('CNPJ').asstring;
                                       FieldByName('Data').Value                  := tPagarReceber.FieldByName('Data').value;
                                       FieldByName('Lote').Value                  := mLote;
                                       FieldByName('Conta_Debito').Value          := trim(tPagarReceber.FieldByName('Pagamento_ContaD').Asstring);
                                       FieldByName('Conta_Credito').Value         := trim(tPagarReceber.FieldByName('Pagamento_ContaC').Asstring);
                                       FieldByName('Historico_Codigo').Value      := tPagarReceber.FieldByName('Pagamento_Historico').asinteger;
                                       FieldByName('Historico_Complemento').Value := mHist;
                                       FieldByName('Valor').Value                 := tPagarReceber.FieldByName('Valor').ascurrency;
                                       FieldByName('Processo_Debito').Value       := tPagarReceber.FieldByName('Processo').AsString;
                                       FieldByName('Origem').Value                := tPagarReceber.FieldByName('Origem_Lan').AsString;
                                       FieldByName('Documento').Value             := tPagarReceber.FieldByName('Numero_Documento').AsString;
                                       FieldByName('Data_Documento').Value        := tPagarReceber.FieldByName('Data_Documento').value;
                                       FieldByName('Tipo_Documento').Value        := tPagarReceber.FieldByName('Tipo_Documento').Asstring;
                                       FieldByName('Numero_Financeiro').Value     := tPagarReceber.FieldByName('Numero').asInteger;
                                       FieldByName('Recriar').Value               := true;
                                       FieldByName('Processo_Credito').Value      := tPagarReceber.FieldByName('Processo').AsString;
                                       FieldByName('Tipo_Nota').Value             := 0;
                                       FieldByName('Beneficiario').Value          := AnsiString(trim(tPagarReceber.FieldByName('Beneficiario').asstring));
                                       FieldByName('Contabilizar').Value          := true;
                                       FieldByName('Beneficiario_CNPJ').value     := tPagarReceber.FieldByName('Beneficiario_CNPJ').Asstring;
                                 post;
                            end;

                            Next;

                            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                            Janela_Processamento.lProcesso.Caption  := 'Gerando liquidações do dia...'+tPagarReceber.FieldByName('Data').AsString+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, ' MATRIZ', ' FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);;
                            Application.ProcessMessages;
                      end;
                 end;

                 tEmpresas.next;
           end;
      end;
end;

// Geração dos lançamentos do financeiro = BAIXAS COM LOTE (PARTIDA MULTIPLA).
procedure TUtilitarios_RecriarContabil2.LancamentoFinanceiroBaixaLt;
var
   mLoteBx: Integer;
begin
      with Dados, dmFiscal, dmContab do begin
           tEmpresas.First;
           while not tEmpresas.Eof do begin
                 mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                 mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );
                 with tPagarReceber do begin
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('--------------------------------------------------------[ DELETA A FUNÇÃO CASO JA EXISTA ]------------------------------------------------------------');
                      sql.Add('if (select count(*) from sys.objects where type = ''FN'' and name = ''PegaOrigem'') > 0 begin');
                      sql.Add('    drop function dbo.PegaOrigem');
                      sql.Add('end');
                      execute;
                      sql.Clear;
                      sql.Add('--------------------------------------------[ CRIA A FUNÇÃO QUE CONVERTE VARIAVEIS EM CONTA CONTABIL ]------------------------------------------------');
                      sql.add('create function PegaOrigem(@Var varchar(60))');
                      sql.add('returns varchar(60)');
                      sql.add('begin');
                      sql.add('    declare @Retorno varchar(60)');
                      sql.add('    set @Retorno = '''' ');
                      sql.add('    set @Retorno = case @Var');
                      sql.add('                        when ''CLIENTE''    then ''[Cliente]'' ');
                      sql.Add('                        when ''FORNECEDOR'' then ''[FORNECEDOR]'' ');
                      sql.Add('                        when ''ORGÃO''      then ''[Orgão Público]'' ');
                      sql.add('                        when ''PROCESSO''   then ''[Processo]'' ');
                      sql.add('                        when ''PROCESSOIM'' then ''[Processo]'' ');
                      sql.add('                        when ''PROCESSOAD'' then ''[Processo]'' ');
                      sql.add('                        when ''JUROS REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_JurosRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''JUROS PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_JurosPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''MULTA REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_MultaRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''MULTA PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_MultaPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''DESC REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_DescontosRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''DESC PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_DescontosPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[CLASSIFICAÇÃO]'' ');
                      sql.Add('                             end');
                      sql.add('                   else');
                      sql.add('                        ''[CLASSIFICAÇÃO]'' ');
                      sql.add('                   end');
                      sql.add('    return(@Retorno)');
                      sql.add('end');
                      //sql.Savetofile('c:\temp\Recriar_Contabil_Baixas_Função.sql');
                      execute;
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('');
                      sql.Add('-----------------------------------------------------------------------------[ LIQUIDAÇÃO PAGAMENTOS MULTIPLOS - LOTE ]--------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros + PRB.Desconto)');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = iif(isnull(CF.Pagamento_Conta, '''') = '''', ''(M) Liquidação Pgto [CLASSIFICAÇÃO]'',  ''(M) Liquidação Pgto [''+CF.Pagamento_Conta+'']'') ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                            case when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''IMPORTAÇÃO'' then');
                      sql.Add('                                                 (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                            else');
                      sql.Add('                                                 (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso TP where TP.Exportacao = 1))');
                      sql.Add('                                            end');
                      sql.Add('                                       else');
                      sql.Add('                                            (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                 when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                 CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''(M) Liquidação Pgto [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros) + PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Orgao as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Liquidação Pagto [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then FR.Conta');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = ''(M) Liquidação Pgto [CLASSIFICAÇÃO]'' ');
                      sql.Add('      ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(PR.Orgao, 0))) <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( ADIANTAMENTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro Adiantamento a Fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Adiantamento ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                  case when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''IMPORTAÇÃO'' then');
                      sql.Add('                                            case when PR.Processo <> '''' then');
                      sql.Add('                                                (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                            else');
                      sql.Add('                                                (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                            end');
                      sql.Add('                                       when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''EXPORTAÇÃO'' then');
                      sql.Add('                                           case when PR.Processo <> '''' then');
                      sql.Add('                                                (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso TP where TP.Exportacao = 1))');
                      sql.Add('                                           else');
                      sql.Add('                                                 (select Conta_Adiantamento from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso TP where isnull(TP.Processo, 0) = 0))');
                      sql.Add('                                           end');
                      sql.Add('                                  end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                            else');
                      sql.Add('                                 CF.Pagamento_Conta');
                      sql.Add('                            end');
                      sql.Add('      ,Origem_ContaC    = '''' ');
                      sql.Add('      ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 1');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( FECHAMENTO DE CÂMBIO )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Fechamento de câmbio (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Fechamento Câmbio ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Passivo from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Origem_ContaC    = '''' ');
                      sql.Add('      ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0)  = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 1');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( MULTA FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Multa');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Liquidação Pagto Multa [Configuração]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''PAG MULTA [Configuração]'' ');
                      sql.Add('      ,Var_ContaC          = '''' ');
                      sql.Add('      ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( MULTA ORGÃOS PÚBLICOS)----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Multa');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(PR.Orgao))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Liquidação Pgto Multa [Configuração]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''(M) Liquidação Pgto Multa [Configuração]'' ');
                      sql.Add('      ,Var_ContaC          = '''' ');
                      sql.Add('      ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( JUROS FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Liquidação Pgto JUROS [Configuração]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''(M) Liquidação Pgto JUROS [Configuração]'' ');
                      sql.Add('      ,Var_ContaC          = '''' ');
                      sql.Add('      ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( JUROS ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(PR.Orgao))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) Liquidação Pgto JUROS [Configuração]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaC       = ''(M) Liquidação Pgto JUROS [Configuração]'' ');
                      sql.Add('      ,Var_ContaC          = '''' ');
                      sql.Add('      ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( DESCONTOS FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan     = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) DESC REC [Configuração]'' ');
                      sql.Add('      ,Var_ContaD          = '''' ');
                      sql.Add('      ,Pagamento_ContaD    = '''' ');
                      sql.Add('      ,Origem_ContaC       = ''(M) DESC REC [Configuração]'' ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( DESCONTOS ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('    ,PRB.Data');
                      sql.Add('    ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('    ,Tipo_Documento = PR.Documento');
                      sql.Add('    ,PR.Processo');
                      sql.Add('    ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('    ,PR.Data_Documento');
                      sql.Add('    ,PR.Numero_Documento');
                      sql.Add('    ,PR.Data_Vencimento');
                      sql.Add('    ,Valor = PRB.Desconto');
                      sql.Add('    ,PRB.Banco');
                      sql.Add('    ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('    ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('    ,Beneficiario        = ''F''+ltrim(rtrim(PR.Orgao))');
                      sql.Add('    ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('    ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('    ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('    ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('    ,Tipo_Partida        = ''M'' ');
                      sql.Add('    ,Origem_Contad       = ''(M) DESC REC [Configuração]'' ');
                      sql.Add('    ,Var_ContaD          = '''' ');
                      sql.Add('    ,Pagamento_ContaD    = '''' ');
                      sql.Add('    ,Origem_ContaC       = ''(M) DESC REC [Configuração]'' ');
                      sql.Add('    ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('    ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('    ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('    ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( PAGAMENTO DE DEVOLUÇÃO RECEBIDA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação Devoluçaõ a Fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''C''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(CL.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = iif(isnull(CF.Pagamento_Conta, '''') = '''', ''(M) Liquidação Pgto Dev [CLASSIFICAÇÃO]'',  ''(M) Liquidação Pgto [''+CF.Pagamento_Conta+'']'') ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = case when CF.Pagamento_Conta in(''CLIENTE'', ''FORNECEDOR'') then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Devolucao from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Devolucao from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('	     ,Origem_ContaC       = ''(M) Liquidação Pgto Dev [CLASSIFICAÇÃO]'' ');
                      sql.Add('	     ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 1');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-------------------------------------------------------------------------------------[ LIQUIDAÇÃO RECEBIMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = (PRB.Valor - PRB.Multa - PRB.Juros + PRB.Desconto)');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''C''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(CL.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_Contad       = ''(M) RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = '''' ');
                      sql.Add('      ,Pagamento_ContaD    = '''' ');
                      sql.Add('      ,Origem_ContaC       = ''(M) RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE''  then');
                      sql.Add('                                  case when PR.Processo <> '''' then');
                      sql.Add('                                       (select Conta_Ativo from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                  else');
                      sql.Add('                                       (select Conta_Ativo from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                  end');
                      sql.Add('                             else');
                      sql.Add('                                 CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Lote_Baixa = PRB.Lote ');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( MULTA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa recebida (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Multa');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = '''' ');
                      sql.Add('      ,Var_ContaD          = '''' ');
                      sql.Add('      ,Pagamento_ContaD    = '''' ');
                      sql.Add('      ,Origem_ContaC       = ''(M) RECEB MULTA [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from Bancos where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from Bancos where Codigo = PRB.Banco)');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( JUROS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros Recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Juros');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''C''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = '''' ');
                      sql.Add('      ,Var_ContaD          = '''' ');
                      sql.Add('      ,Pagamento_ContaD    = '''' ');
                      sql.Add('      ,Origem_ContaC       = ''(M) RECEB JUROS [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from Bancos where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from Bancos where Codigo = PRB.Banco)');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0)     = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( DESCONTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Descontos Concedidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Desconto');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''C''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = ''(M) RECEB DESC CONC [Banco]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('      ,Origem_ContaD       = ''(M) RECEB DESC CONC [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = '''' ');
                      sql.Add('      ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R''');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');

                      sql.Add('-----------( ADIANTAMENTOS RECEBIDOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro Adiantamento de Clientes (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('      ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = '''' ');
                      sql.Add('      ,Var_ContaD          = '''' ');
                      sql.Add('      ,Pagamento_ContaD    = '''' ');
                      sql.Add('      ,Origem_ContaC       = ''(M) Adiantamento ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE'' then');
                      sql.Add('                                  case when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''IMPORTAÇÃO'' then');
                      sql.Add('                                            case when PR.Processo <> '''' then');
                      sql.Add('                                                (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                            else');
                      sql.Add('                                                (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                            end');
                      sql.Add('                                       when (select Tipo from ProcessosDocumentos PD where PD.Processo = PR.Processo) = ''EXPORTAÇÃO'' then ');
                      sql.Add('                                            case when PR.Processo <> '''' then');
                      sql.Add('                                                 (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso TP where TP.Exportacao = 1))');
                      sql.Add('                                            else');
                      sql.Add('                                                 (select Conta_Adiantamento from ClientesModalidades where Cliente = pr.Cliente and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                            end');
                      sql.Add('                                  end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 1');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   Cl.Codigo = PR.Cliente');

                      sql.Add('-----------( RECEBIMENTO DE DEVOLUÇÃO )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação Devoluçaõ a Fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('      ,Tipo_Documento = PR.Documento');
                      sql.Add('      ,PR.Processo');
                      sql.Add('      ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('      ,PR.Data_Documento');
                      sql.Add('      ,PR.Numero_Documento');
                      sql.Add('      ,PR.Data_Vencimento');
                      sql.Add('      ,PRB.Valor');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from Bancos where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = ltrim(rtrim(cast(PRB.Observacao as varchar(200))))+''  ''+ltrim(rtrim(cast(PR.Observacao as varchar(200))))');
                      sql.Add('      ,Beneficiario        = ''C''+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''(M) Liquidação Pgto Dev [CLASSIFICAÇÃO]'' ');
                      sql.Add('	     ,Var_ContaD          = '''' ');
                      sql.Add('      ,Pagamento_ContaD    = '''' ');
                      sql.Add('      ,Origem_ContaC       = iif(isnull(CF.Pagamento_Conta, '''') = '''', ''(M) Liquidação Pgto Dev [CLASSIFICAÇÃO]'',  ''(M) Liquidação Pgto [''+CF.Pagamento_Conta+'']'') ');
                      sql.Add('      ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaC    = case when CF.Pagamento_Conta in(''CLIENTE'', ''FORNECEDOR'') then');
                      sql.Add('                                       case when PR.Processo <> '''' then');
                      sql.Add('                                           (select Conta_Devolucao from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo))');
                      sql.Add('                                       else');
                      sql.Add('                                           (select Conta_Devolucao from FornecedoresModalidades where Fornecedor = pr.Fornecedor and Codigo = (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                      sql.Add('                                       end');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = PR.Processo)');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = null');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   isnull(pr.Pago_Cliente, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(CF.Devolucao, 0) = 1');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');

                      sql.Add('---------------------------------------------------------------------------[ LIQUIDAÇÃO PAGAMENTOS LOTES - TOTAL ]-------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select Numero              = null');
                      sql.Add('      ,Data                = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao       = ''DIVERSOS PG (LOTE TOTALIZADOR)'' ');
                      sql.Add('      ,Origem_Lan          = ''Financeiro liquidação (Pagamentos Diversos)'' ');
                      sql.Add('      ,Tipo_Documento      = ''DIVERSOS'' ');
                      sql.Add('      ,Processo            = null');
                      sql.Add('      ,DI                  = null');
                      sql.Add('      ,Data_Documento      = null');
                      sql.Add('      ,Numero_Documento    = ''DIVERSOS'' ');
                      sql.Add('      ,Data_Vencimento     = null');
                      sql.Add('      ,Valor               = sum(PRB.Valor)');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome          = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,Transferencia_Banco = null');
                      sql.Add('      ,Observacao          = null');
                      sql.Add('      ,Beneficiario        = null');
                      sql.Add('      ,Beneficiario_CNPJ   = null');
                      sql.Add('      ,Beneficiario_Nome   = null');
                      sql.Add('      ,Pagamento_Historico = 0');
                      sql.Add('      ,Macro               = ''VLR.PAGAMENTOS DIVERSOS NESTA DATA'' ');
                      sql.Add('      ,Tipo_Partida        = ''M'' ');
                      sql.Add('      ,Origem_ContaD       = null');
                      sql.Add('      ,Var_ContaD          = null');
                      sql.Add('      ,Pagamento_ContaD    = null');
                      sql.Add('      ,Origem_ContaC       = ''(M) RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,PRB.Lote');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PRB.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr where pr.Numero = prb.Numero) = 0');
                      sql.Add('group by Tipo, Data, Lote, Banco');

                      sql.Add('------------------------------------------------------------------------[ LIQUIDAÇÃO RECEBIMENTOS LOTES - TOTAL ]-------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select Numero = null');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = ''DIVERSOS REC (LOTE TOTALIZADOR)'' ');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (Recebimentos Diversos)'' ');
                      sql.Add('      ,Tipo_Documento = ''DIVERSOS'' ');
                      sql.Add('      ,Processo = null');
                      sql.Add('      ,DI = null');
                      sql.Add('      ,Data_Documento = null');
                      sql.Add('      ,Numero_Documento = ''DIVERSOS'' ');
                      sql.Add('      ,Data_Vencimento = null');
                      sql.Add('      ,Valor = sum(PRB.Valor)');
                      sql.Add('      ,PRB.Banco');
                      sql.Add('      ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('      ,Transferencia_Banco = null');
                      sql.Add('      ,Observacao = null');
                      sql.Add('      ,Beneficiario      = null');
                      sql.Add('      ,Beneficiario_CNPJ = null');
                      sql.Add('      ,Beneficiario_Nome = null');
                      sql.Add('      ,Pagamento_Historico = 0');
                      sql.Add('      ,Macro               = ''VLR.RECEBIMENTOS DIVERSOS NESTA DATA'' ');
                      sql.Add('      ,Tipo_Partida     = ''M'' ');
                      sql.Add('      ,Origem_ContaD    = ''(M) RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaD       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaD = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Origem_Contac    = ''RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = ''''');
                      sql.Add('      ,Pagamento_ContaC = ''''');
                      sql.Add('      ,PRB.Lote');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Banco, 0) <> 0');
                      sql.Add('and   (select Lancamento_Contabil from '+CompBancos+' where Bancos.Codigo = PRB.Banco) = 1');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PRB.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr where pr.Numero = prb.Numero) = 0');
                      sql.Add('group by Tipo, Data, Lote, Banco');
                      sql.Add('order by Data, Lote_Baixa');
                      ParamByName('pDataIni').AsDate := cDataIni.Date;
                      ParamByName('pDataFim').AsDate := cDataFim.Date;
                      //sql.SaveToFile('c:\temp\Recriar_Contabil_Baixa_Lote'+tEmpresas.FieldByName('Numero_Filial').AsString+'.sql');
                      Open;

                      Janela_Processamento.Progresso.Position := 0;
                      Janela_Processamento.Progresso.Max      := RecordCount;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando os pagamentos do financeiro...Baixas';

                      mLote   := 0;
                      mLoteBx := 0;

                      First;
                      while (not Eof) and (Funcoes.Cancelado = false) do begin
                            if FieldByName('Lote_Baixa').asinteger <> mLoteBx then begin
                               mDescLote := 'Financeiro Liquidação - '+mEmp;
                               mLoteBx   := FieldByName('Lote_Baixa').asinteger;
                               mLote     := AbreLote(FieldByName('Data').value, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, 'FBX');
                            end;

                            mLanc := UltimoLanc(FieldByName('Data').value, Empresas.FieldByName('CNPJ').asstring, mLote);
                            
                            mHist := ComplementoHistorico( FieldByName('Macro').AsString               // Complemento histórico.
                                                          ,FieldByName('Beneficiario_Nome').AsString   // Nome do beneficiário.
                                                          ,FieldByName('Processo').AsString            // Processo.
                                                          ,FieldByName('DI').AsString                  // DI.
                                                          ,FieldByName('Classificacao').AsString       // Classificacao Financeira.
                                                          ,FieldByName('Tipo_Documento').AsString      // Tipo do documento.
                                                          ,FieldByName('Numero_Documento').AsString    // Número do documento.
                                                          ,FieldByName('Data_Documento').AsString      // Data do documento.
                                                          ,FieldByName('Banco_Nome').AsString          // Banco.
                                                          ,FieldByName('Observacao').AsString );       // Observação.
                            
                            VerErro(FieldByName('Pagamento_ContaD').Asstring             // Conta Débito.
                                   ,FieldByName('Pagamento_ContaC').Asstring             // Conta Crédito.
                                   ,FieldByName('Var_ContaD').Asstring                   // Variável parâmetrizada - Conta D.
                                   ,FieldByName('Var_ContaC').Asstring                   // Variável parâmetrizada - Conta C.
                                   ,FieldByName('Tipo_Partida').Asstring                 // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                   ,FieldByName('Numero').AsString                       // Número do documento de origem.
                                   ,FieldByName('Origem_ContaD').AsString                // Origem da conta "D".
                                   ,FieldByName('Origem_ContaC').AsString                // Origem da conta "C".
                                   ,FieldByName('Classificacao').Asstring                // Origem do parâmetro (Local de parâmetrização).
                                   ,FieldByName('Beneficiario').Asstring                 // Beneficário.
                                   ,FieldByName('Numero').Asstring                       // Número do documento / título de origem.
                                   ,mHist                                                // Histórico padrão.
                                   ,FieldByName('Pagamento_Historico').Asinteger         // Código do histórico padrão.
                                   ,tEmpresas.FieldByName('Numero_Filial').asinteger     // Número da Filial.
                                   ,FieldByName('Banco').asinteger                       // Código do banco.
                                   ,FieldByName('Modalidade').asinteger                  // Código do tipo de processo.
                                   ,FieldByName('Processo').Asstring );                  // Processo.

                            with tLancamentos do begin
                                 inc(mLanc);
                                 append;
                                       FieldByName('Registro').Value              := 0;
                                       FieldByName('Numero').Value                := mLanc;
                                       FieldByName('Empresa').Value               := tEmpresas.FieldByName('CNPJ').asstring;
                                       FieldByName('Data').Value                  := tPagarReceber.FieldByName('Data').value;
                                       FieldByName('Lote').Value                  := mLote;
                                       FieldByName('Conta_Debito').Value          := trim(tPagarReceber.FieldByName('Pagamento_ContaD').Asstring);
                                       FieldByName('Conta_Credito').Value         := trim(tPagarReceber.FieldByName('Pagamento_ContaC').Asstring);
                                       FieldByName('Historico_Codigo').Value      := tPagarReceber.FieldByName('Pagamento_Historico').asinteger;
                                       FieldByName('Historico_Complemento').Value := mHist;
                                       FieldByName('Valor').Value                 := tPagarReceber.FieldByName('Valor').ascurrency;
                                       FieldByName('Processo_Debito').Value       := tPagarReceber.FieldByName('Processo').AsString;
                                       FieldByName('Origem').Value                := tPagarReceber.FieldByName('Origem_Lan').AsString;
                                       FieldByName('Documento').Value             := tPagarReceber.FieldByName('Numero_Documento').AsString;
                                       FieldByName('Data_Documento').Value        := tPagarReceber.FieldByName('Data_Documento').value;
                                       FieldByName('Tipo_Documento').Value        := tPagarReceber.FieldByName('Tipo_Documento').Asstring;
                                       FieldByName('Numero_Financeiro').Value     := tPagarReceber.FieldByName('Numero').asInteger;
                                       FieldByName('Recriar').Value               := true;
                                       FieldByName('Processo_Credito').Value      := tPagarReceber.FieldByName('Processo').AsString;
                                       FieldByName('Tipo_Nota').Value             := 0;
                                       FieldByName('Beneficiario').Value          := AnsiString(trim(tPagarReceber.FieldByName('Beneficiario').asstring));
                                       FieldByName('Contabilizar').Value          := true;
                                       FieldByName('Beneficiario_CNPJ').value     := tPagarReceber.FieldByName('Beneficiario_CNPJ').Asstring;
                                 post;
                            end;

                            Next;

                            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                            Janela_Processamento.lProcesso.Caption  := 'Gerando liquidações do dia...'+tPagarReceber.FieldByName('Data').AsString+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, ' MATRIZ', ' FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                            Application.ProcessMessages;
                      end;
                 end;

                 tEmpresas.next;
           end;
      end;
end;

// Geração dos lançamentos contabeis da nota fiscal de emissão própria.
{
procedure TUtilitarios_RecriarContabil2.LancamentoNFPropria;
var
   i: integer;
begin
     with Dados, tNotas do begin
          sql.Clear;
          sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
          sql.Add('------------------------------------------------------[ DELETE A FUNÇÃO CASO JA EXISTA ]------------------------------------------------------------');
          sql.Add('if (select count(*) from sys.objects where type = ''FN'' and name = ''PegaConta'') > 0 begin');
          sql.Add('    drop function dbo.PegaConta');
          sql.Add('end');
          execute;
          sql.Clear;
          sql.Add('--------------------------------------------[ CRIA A FUNÇÃO QUE CONVERTE VARIAVEIS EM CONTA CONTABIL ]------------------------------------------------');
          sql.add('create function PegaConta(@Var varchar(15), @Bene_Cod int, @Processo varchar(15))');
          sql.add('returns varchar(15)');
          sql.add('begin');
          sql.add('    declare @Retorno varchar(15)');
          sql.add('    set @Retorno = case @Var');
          sql.add('                        when ''CLIENTE''    then (select CM.Conta_Ativo');
          sql.add('                                                  from   ClientesModalidades CM');
          sql.add('                                                  where  CM.Cliente = @Bene_Cod');
          sql.add('                                                  and    Codigo = iif(@Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = @Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)))');
          sql.Add('                        when ''FORNECEDOR'' then (select FM.Conta_Passivo');
          sql.add('                                                  from   FornecedoresModalidades FM');
          sql.add('                                                  where  FM.Fornecedor = @Bene_Cod');
          sql.add('                                                  and    Codigo = iif(@Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = @Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)))');
          sql.add('                        when ''PROCESSO''   then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = @Processo)');
          sql.add('                        when ''PROCESSOIM'' then (select PD.Conta_Impostos from ProcessosDocumentos PD where PD.Processo = Processo)');
          sql.add('                        when ''PROCESSOAD'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = Processo)');
          sql.add('                   else');
          sql.add('                        @Var');
          sql.add('                   end');
          sql.add('	   return(@Retorno)');
          sql.add('end');
          //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Propria_Função.sql');
          execute;
          sql.Clear;
          sql.Add('-----------------------------------------------------------------------------------------------------------------------------------------------------');
          sql.add('select NF.Tipo_Nota');
          sql.add('      ,NF.Numero');
          sql.add('      ,Emissao = Data_Emissao');
          sql.add('      ,NF.Saida_Entrada');
          sql.add('      ,Beneficiario = case when NF.Saida_Entrada = 0 and isnull(NF.Devolucao, 0) = 0 then ''F''+cast(Fornecedor_Codigo as varchar(10))');
          sql.add('                           when NF.Saida_Entrada = 0 and isnull(NF.Devolucao, 0) = 1 then ''C''+');
          sql.Add('                                  cast((select Cliente_Codigo from NotasFiscais NF2 where NF2.NFe_cNF = (select distinct Nota_Referencia from NotasItens NI where NI.Nota = NF.Numero and NI.Data = NF.Data_Emissao) ) as varchar(10))');
          sql.add('                           when NF.Saida_Entrada = 1 and isnull(NF.Devolucao, 0) = 0 then ''C''+cast(Cliente_Codigo as varchar(10))');
          sql.add('                           when NF.Saida_Entrada = 1 and isnull(NF.Devolucao, 0) = 1 then ''F''+');
          sql.add('                                  cast((select Fornecedor_Codigo from NotasFiscais NF2 where NF2.NFe_cNF = (select distinct Nota_Referencia from NotasItens NI where NI.Nota = NF.Numero and NI.Data = NF.Data_Emissao) ) as varchar(10))');
          sql.add('                      end');
          sql.add('      ,Beneficiario_CNPJ = Destinatario_CNPJ_CPF');
          sql.add('      ,Beneficiario_Nome = Destinatario_Nome');
          sql.add('      ,NF.Processo');
          sql.add('      ,NF.DI');
          sql.add('      ,Origem_Lan = iif(NF.Saida_Entrada = 0, ''NF Entrada (Tipo Nota:''+ cast(NF.Tipo_Nota as varchar(10))+'')'', ''NF Saída (Tipo Nota: ''+ cast(NF.Tipo_Nota as varchar(10))+'')'')' );
          sql.add('      --------------------------------------------------------------[ ICMS OPERACIONAL ]------------------------------------------------------------');
          sql.add('      ,NF.Valor_ICMS');
          sql.add('      ,VarICMS_D   = TN.Conta_ICMSOper_D');
          sql.add('      ,VarICMS_C   = TN.Conta_ICMSOper_C');
          sql.add('      ,HistICMS    = TN.Historico_ICMSOper');
          sql.add('      ,MacroICMS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSOper)');
          sql.add('      ,ContaICMS_D = dbo.PegaConta(TN.Conta_ICMSOper_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaICMS_C = dbo.PegaConta(TN.Conta_ICMSOper_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      --------------------------------------------------------------------[ ICMS ST ]----------------------------------------------------------------');
          sql.add('      ,Valor_ICMSST  = ValorICMS_Substitutivo');
          sql.add('      ,VarICMSST_D   = TN.Conta_ICMSSub_D ');
          sql.add('      ,VarICMSST_C   = TN.Conta_ICMSSub_C ');
          sql.add('      ,HistICMSST    = Historico_ICMSSub ');
          sql.add('      ,MacroICMSST   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSSub )');
          sql.add('      ,ContaICMSST_D = dbo.PegaConta(TN.Conta_ICMSSub_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaICMSST_C = dbo.PegaConta(TN.Conta_ICMSSub_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      -------------------------------------------------------------------[ DESPESAS ]----------------------------------------------------------------');
          sql.add('      ,Valor_Despesas  = Valor_OutrasDespesas');
          sql.add('      ,VarDespesas_D   = Conta_Despesas_D ');
          sql.add('      ,VarDespesas_C   = Conta_Despesas_C ');
          sql.add('      ,HistDespesas    = Historico_Despesas');
          sql.add('      ,MacroDespesas   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Despesas)');
          sql.add('      ,ContaDespesas_D = dbo.PegaConta(TN.Conta_Despesas_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaDespesas_C = dbo.PegaConta(TN.Conta_Despesas_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ----------------------------------------------------------------------[ II ]------------------------------------------------------------------');
          sql.add('      ,Valor_II  = Valor_TotalII');
          sql.add('      ,VarII_D   = TN.Conta_II_D');
          sql.add('      ,VarII_C   = TN.Conta_II_C');
          sql.add('      ,HistII    = Historico_II ');
          sql.add('      ,MacroII   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_II )');
          sql.add('      ,ContaII_D = dbo.PegaConta(TN.Conta_II_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaII_C = dbo.PegaConta(TN.Conta_II_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ----------------------------------------------------------------------[ IPI ]-----------------------------------------------------------------');
          sql.add('      ,Valor_IPI  = Valor_TotalIPI');
          sql.add('      ,VarIPI_D   = TN.Conta_IPI_D');
          sql.add('      ,VarIPI_C   = TN.Conta_IPI_C');
          sql.add('      ,HistIPI    = Historico_IPI');
          sql.add('      ,MacroIPI   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_IPI )');
          sql.add('      ,ContaIPI_D = dbo.PegaConta(TN.Conta_IPI_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaIPI_C = dbo.PegaConta(TN.Conta_IPI_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ----------------------------------------------------------------------[ PIS ]-----------------------------------------------------------------');
          sql.add('      ,Valor_PIS');
          sql.add('      ,VarPIS_D   = TN.Conta_PIS_D ');
          sql.add('      ,VarPIS_C   = TN.Conta_PIS_C ');
          sql.add('      ,HistPIS    = Historico_PIS ');
          sql.add('      ,MacroPIS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_PIS )');
          sql.add('      ,ContaPIS_D = dbo.PegaConta(TN.Conta_PIS_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaPIS_C = dbo.PegaConta(TN.Conta_PIS_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ---------------------------------------------------------------------[ COFINS ]---------------------------------------------------------------');
          sql.add('      ,Valor_COFINS');
          sql.add('      ,VarCOFINS_D   = TN.Conta_COFINS_D ');
          sql.add('      ,VarCOFINS_C   = TN.Conta_COFINS_C ');
          sql.add('      ,HistCOFINS    = Historico_COFINS ');
          sql.add('      ,MacroCOFINS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_COFINS )');
          sql.add('      ,ContaCOFINS_D = dbo.PegaConta(TN.Conta_COFINS_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaCOFINS_C = dbo.PegaConta(TN.Conta_COFINS_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ----------------------------------------------------------------------[ FRETE ]---------------------------------------------------------------');
          sql.add('      ,Valor_Frete = Total_Frete');
          sql.add('      ,VarFrete_D   = TN.Conta_Frete_D ');
          sql.add('      ,VarFrete_C   = TN.Conta_Frete_C ');
          sql.add('      ,HistFrete    = Historico_Frete ');
          sql.add('      ,MacroFrete   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Frete )');
          sql.add('      ,ContaFrete_D = dbo.PegaConta(TN.Conta_Frete_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaFrete_C = dbo.PegaConta(TN.Conta_Frete_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ----------------------------------------------------------------------[ SEGURO ]---------------------------------------------------------------');
          sql.add('      ,Valor_Seguro');
          sql.add('      ,VarSeguro_D   = TN.Conta_Seguro_D ');
          sql.add('      ,VarSeguro_C   = TN.Conta_Seguro_C ');
          sql.add('      ,HistSeguro    = Historico_Seguro ');
          sql.add('      ,MacroSeguro   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Seguro )');
          sql.add('      ,ContaSeguro_D = dbo.PegaConta(TN.Conta_Seguro_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaSeguro_C = dbo.PegaConta(TN.Conta_Seguro_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ---------------------------------------------------------------------[ ESTOQUE ]---------------------------------------------------------------');
          sql.add('      ,Valor_Estoque  = (select sum(isnull(Total_Saida, 0)) from FichaEstoque FE where FE.Nota = NF.Numero and FE.Data = NF.Data_Emissao and Codigo in((select Codigo_Mercadoria from NotasItens NI where NI.Nota = NF.Numero and NI.Data = NF.Data_Emissao)))');
          sql.add('      ,VarEstoque_D   = TN.Conta_Estoque_D ');
          sql.add('      ,VarEstoque_C   = TN.Conta_Estoque_C ');
          sql.add('      ,HistEstoque    = Historico_Estoque ');
          sql.add('      ,MacroEstoque   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Estoque )');
          sql.add('      ,ContaEstoque_D = dbo.PegaConta(TN.Conta_Estoque_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaEstoque_C = dbo.PegaConta(TN.Conta_Estoque_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ------------------------------------------------------------------[ TOTAL PRODUTOS ]-----------------------------------------------------------');
          sql.add('      ,Valor_Produtos  = Valor_TotalProdutos');
          sql.add('      ,VarProdutos_D   = TN.Conta_TotalProdutos_D ');
          sql.add('      ,VarProdutos_C   = TN.Conta_TotalProdutos_C ');
          sql.add('      ,HistProdutos    = Historico_TotalProdutos ');
          sql.add('      ,MacroProdutos   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalProdutos )');
          sql.add('      ,ContaProdutos_D = dbo.PegaConta(TN.Conta_TotalProdutos_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaProdutos_C = dbo.PegaConta(TN.Conta_TotalProdutos_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      --------------------------------------------------------------------[ TOTAL NOTA ]--------------------------------------------------------------');
          sql.add('      ,Valor_TotalNota');
          sql.add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D ');
          sql.add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C ');
          sql.add('      ,HistTotalNota    = Historico_TotalNota ');
          sql.add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
          sql.add('      ,ContaTotalNota_D = dbo.PegaConta(TN.Conta_TotalNota_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaTotalNota_C = dbo.PegaConta(TN.Conta_TotalNota_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ------------------------------------------------------------------[ FOB FORNECEDOR ]------------------------------------------------------------');
          sql.add('      ,Valor_FOBForn  = (select FOB from ProcessosDocumentos where Processo = NF.Processo)');
          sql.add('      ,VarFOBForn_D   = TN.Conta_FOB_Fornecedor_D');
          sql.add('      ,VarFOBForn_C   = TN.Conta_FOB_Fornecedor_C');
          sql.add('      ,HistFOBForn    = TN.Historico_FOB_Fornecedor');
          sql.add('      ,MacroFOBForn   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_FOB_Fornecedor)');
          sql.add('      ,ContaFOBForn_D = dbo.PegaConta(TN.Conta_FOB_Fornecedor_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaFOBForn_C = dbo.PegaConta(TN.Conta_FOB_Fornecedor_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      -------------------------------------------------------------------[ FOB PROCESSO ]-------------------------------------------------------------');
          sql.add('      ,Valor_FOBProc  = (select FOB from ProcessosDocumentos where Processo = NF.Processo)');
          sql.add('      ,VarFOBProc_D   = TN.Conta_FOB_Processo_D');
          sql.add('      ,VarFOBProc_C   = TN.Conta_FOB_Processo_C');
          sql.add('      ,HistFOBProc    = TN.Historico_FOB_Processo');
          sql.add('      ,MacroFOBProc   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_FOB_Fornecedor)');
          sql.add('      ,ContaFOBProc_D = dbo.PegaConta(TN.Conta_FOB_Processo_D, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('      ,ContaFOBProc_C = dbo.PegaConta(TN.Conta_FOB_Processo_C, iif(NF.Saida_Entrada = 0, NF.Fornecedor_Codigo, NF.Cliente_Codigo), NF.Processo)');
          sql.add('from  NotasFiscais NF, TipoNota TN');
          sql.add('where NF.Data_Emissao between :pDataIni and :pDataFim');
          sql.add('and   isnull(NF.Cancelada,0)      = 0');
          sql.add('and   isnull(NF.Nfe_Denegada,0)   = 0');
          sql.add('and   TN.Codigo = NF.Tipo_Nota');
          sql.add('order by Data_Emissao, Numero');
          sql.add('drop function dbo.PegaConta;');
          //sql.Savetofile('c:\temp\Recriar_Contabil_Notas_Proprias.sql');
          ParamByName('pDataIni').AsDate := cDataIni.Date;
          ParamByName('pDataFim').AsDate := cDataFim.Date;
          open;
          First;

          while (not Eof) and (Funcoes.Cancelado = false) do begin
                AbreLt := true;
                mTotal := 0;
                for i := 1 to 14 do begin
                    mValor  := FieldByName('Valor_'+mCampoPro[i]).AsCurrency;
                    mContaD := trim(FieldByName('Conta'+mCampoPro[i]+'_D').asstring);
                    mContaC := trim(FieldByName('Conta'+mCampoPro[i]+'_C').asstring);
                    if (mContaD+mContaC <> '') and (mValor > 0) then begin
                       if VerErro(FieldByName('Conta'+mCampoPro[i]+'_D').Asstring       // Conta Débito.
                                 ,FieldByName('Conta'+mCampoPro[i]+'_C').Asstring       // Conta Crédito.
                                 ,FieldByName('Var'+mCampoPro[i]+'_D').Asstring         // Variável parâmetrizada - Conta D.
                                 ,FieldByName('Var'+mCampoPro[i]+'_C').Asstring         // Variável parâmetrizada - Conta C.
                                 ,'M'                                                   // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                 ,FieldByName('Numero').AsString                        // Número do documento de origem.
                                 ,'Tipo Nota - '+FieldByName('Tipo_Nota').Asstring      // Origem da conta "D".
                                 ,'Tipo Nota - '+FieldByName('Tipo_Nota').Asstring      // Origem da conta "C.
                                 ,FieldByName('Tipo_Nota').Asstring                     // Origem do parâmetro (Local de parâmetrização).
                                 ,FieldByName('Beneficiario').Asstring                  // Beneficário.
                                 ,FieldByName('Numero').AsString                        // Número do documento / título de origem.
                                 ,FieldByName('Hist'+mCampoPro[i]).asinteger            // Código do histórico padrão.
                                 ,Empresas.FieldByName('Numero_Filial').asinteger       // Número da Filial.
                                 ,FieldByName('Processo').Asstring )                    // Processo.
                                 then begin

                          AbreLt := false;
                       end;

                       if Abrelt then begin
                          mLote  := AbreLote(FieldByName('Emissao').AsDateTime, Empresas.FieldByName('CNPJ').asstring, 'NF '+iif(FieldByName('Saida_Entrada').asinteger = 0, '(Entrada)','(Saída)'), 'NFP'+iif(FieldByName('Saida_Entrada').asinteger = 0, 'E','S'));
                          mLanc  := 1;
                          Abrelt := false;
                       end;

                       mHist := ComplementoHistorico( FieldByName('Macro'+mCampoPro[i]).asstring                      // Complemento histórico.
                                                     ,FieldByName('Beneficiario_Nome').AsString                       // Nome do beneficiário.
                                                     ,FieldByName('Processo').AsString                                // Processo.
                                                     ,FieldByName('DI').AsString                                      // DI.
                                                     ,''                                                              // Classificacao Financeira.
                                                     ,iif(FieldByName('Saida_Entrada').asinteger = 0, 'NFE','NFS')    // Tipo do documento
                                                     ,FieldByName('Numero').AsString                                  // Número do documento
                                                     ,FieldByName('Emissao').AsString                                 // Data do documento.
                                                     ,''                                                              // Banco.
                                                     ,''                                                              // Observação.
                                                    );

                       with tLancamentos do begin
                            append;
                                   FieldByName('Registro').Value              := 0;
                                   FieldByName('Numero').Value                := mLanc;
                                   FieldByName('Empresa').Value               := Empresas.FieldByName('CNPJ').asstring;
                                   FieldByName('Data').Value                  := tNotas.FieldByName('Emissao').value;
                                   FieldByName('Lote').Value                  := mLote;
                                   FieldByName('Conta_Debito').Value          := trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_D').Asstring);
                                   FieldByName('Conta_Credito').Value         := trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_C').Asstring);
                                   FieldByName('Historico_Codigo').Value      := tNotas.FieldByName('Hist'+mCampoPro[i]).asinteger;
                                   FieldByName('Historico_Complemento').Value := mHist;
                                   FieldByName('Valor').Value                 := tNotas.FieldByName('Valor_'+mCampoPro[i]).ascurrency;
                                   FieldByName('Processo_Debito').Value       := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Origem').Value                := tNotas.FieldByName('Origem_Lan').AsString;
                                   FieldByName('Documento').Value             := tNotas.FieldByName('Numero').AsString;
                                   FieldByName('Data_Documento').Value        := tNotas.FieldByName('Emissao').value;
                                   FieldByName('Tipo_Documento').Value        := 'NF';
                                   FieldByName('Numero_Financeiro').Value     := 0;
                                   FieldByName('Recriar').Value               := true;
                                   FieldByName('Processo_Credito').Value      := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Tipo_Nota').Value             := tNotas.FieldByName('Tipo_Nota').value;
                                   FieldByName('Beneficiario').Value          := AnsiString(trim(tNotas.FieldByName('Beneficiario').asstring));
                                   FieldByName('Contabilizar').Value          := true;
                                   FieldByName('Beneficiario_CNPJ').value     := tNotas.FieldByName('Beneficiario_CNPJ').Asstring;
                             post;

                             if trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_D').Asstring) <> '' then
                                mTotal := roundto(mTotal + tNotas.FieldByName('Valor_'+mCampoPro[i]).ascurrency, -4);
                             if trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_C').Asstring) <> '' then
                                mTotal := roundto(mTotal - tNotas.FieldByName('Valor_'+mCampoPro[i]).ascurrency, -4);

                             inc(mLanc);
                       end;
                    end;
                end;

                if mTotal <> 0 then begin
                  with tTmp do begin
                        sql.clear;
                        SQL.Add('select isnull(max(erro), 0)+1 as erro from LanErros');
                        Open;
                   end;
                   with dmContab, Erros do begin
                        append;
                             fieldbyname('Erro').value         := tTmp.FieldByName('erro').asinteger;
                             fieldbyname('Origem').value       := tNotas.FieldByName('Origem_Lan').AsString;
                             fieldbyname('Origem_Param').value := tNotas.FieldByName('Tipo_Nota').Asstring;
                             fieldbyname('Documento').value    := tNotas.FieldByName('Numero').AsString;
                             fieldbyname('D_C').value          := 'D/C';
                             fieldbyname('Descricao').value    := 'Total de "Débitos" diferente do total de "Créditos"';
                             fieldbyname('Conta').value        := mContaD+'/'+mContaC;
                             fieldbyname('Var_Conta').value    := '';
                             fieldbyname('Beneficiario').value := tNotas.FieldByName('Beneficiario').Asstring;
                             fieldbyname('Sel').value          := false;
                             fieldbyname('Empresa').value      := iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                        post;
                   end;
                end;

                Next;

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Janela_Processamento.lProcesso.Caption  := 'Gerando NF Saída dia...'+FieldByName('Emissao').AsString;;
                Application.ProcessMessages;
          end;
     end
end;

// Geração dos lançamentos contabeis da nota fiscal de emissão terceiros.
procedure TUtilitarios_RecriarContabil2.LancamentoNFTerceiros;
var
   i: integer;
begin
     with Dados, tNotas do begin
          sql.Clear;
          sql.Add('------------------------------------------------------[-- DELETE A FUNÇÃO CASO JA EXISTA ]------------------------------------------------------------');
          sql.Add('if (select count(*) from sys.objects where type = ''FN'' and name = ''PegaConta'') > 0 begin');
          sql.Add('    drop function dbo.PegaConta');
          sql.Add('end');
          execute;
          sql.Clear;
          sql.Add('--------------------------------------------[ CRIA A FUNÇÃO QUE CONVERTE VARIAVEIS EM CONTA CONTABIL ]------------------------------------------------');
          sql.add('create function PegaConta(@Var varchar(15), @Bene_Cod int, @Processo varchar(15), @NFRef int, @DTRef datetime)');
          sql.add('returns varchar(15)');
          sql.add('begin');
          sql.add('    declare @Retorno varchar(15)');
          sql.add('    set @Retorno = case @Var');
          sql.add('                        when ''CLIENTE''    then (select CM.Conta_Devolucao');
          sql.add('                                                  from   ClientesModalidades CM');
          sql.add('                                                  where  CM.Cliente = (select Cliente_Codigo from NotasFiscais NP where NP.Numero = @NFRef and NP.Data_Emissao = @DtRef)');
          sql.add('                                                  and    Codigo = iif(@Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = @Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)))');
          sql.add('                        when ''FORNECEDOR'' then (select FM.Conta_Passivo');
          sql.add('                                                  from   FornecedoresModalidades FM');
          sql.add('                                                  where  FM.Fornecedor = @Bene_Cod');
          sql.add('                                                  and    Codigo = iif(@Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = @Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)))');
          sql.add('                        when ''PROCESSO''   then (select PD.Conta_Despesas from ProcessosDocumentos PD where PD.Processo = @Processo)');
          sql.add('                        when ''PROCESSOIM'' then (select PD.Conta_Impostos from ProcessosDocumentos PD where PD.Processo = Processo)');
          sql.add('                        when ''PROCESSOAD'' then (select PD.Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = Processo)');
          sql.add('                   else');
          sql.add('                        @Var');
          sql.add('                   end');
          sql.add('	   return(@Retorno)');
          sql.add('end');
          //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Terceiros_Função.sql');
          execute;
          sql.Clear;
          sql.add('select NF.Referencia_Fiscal');
          sql.add('      ,Numero = NF.Nota');
          sql.add('      ,Entrada = Data_Entrada');
          sql.add('      ,Emissao = Data_Emissao');
          sql.add('      ,Beneficiario      = ''F''+cast(Fornecedor as varchar(10))');
          sql.add('      ,Beneficiario_CNPJ = FR.CNPJ');
          sql.add('      ,Beneficiario_Nome = ltrim(rtrim(FR.Nome))');
          sql.add('      ,NF.Processo');
          sql.add('      ,DI = (select Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('      ,Origem_Lan = ''NF Terceiros (Referência Fiscal:''+ cast(NF.Referencia_Fiscal as varchar(10))+'')'' ');
          sql.add('      ,NF.Tipo');
          sql.add('      --------------------------------------------------------------[ ICMS OPERACIONAL ]------------------------------------------------------------');
          sql.add('      ,NF.Valor_ICMSOper');
          sql.add('      ,VarICMSOper_D   = TN.Conta_ICMSOper_D');
          sql.add('      ,VarICMSOPer_C   = TN.Conta_ICMSOper_C');
          sql.add('      ,HistICMSOper    = TN.Historico_ICMSOper');
          sql.add('      ,MacroICMSOper   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSOper)');
          sql.add('      ,ContaICMSOper_D = dbo.PegaConta(TN.Conta_ICMSOper_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaICMSOper_C = dbo.PegaConta(TN.Conta_ICMSOper_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      --------------------------------------------------------------------[ ICMS ST ]----------------------------------------------------------------');
          sql.add('      ,Valor_ICMSSub  = Valor_ICMSSub');
          sql.add('      ,VarICMSSub_D   = TN.Conta_ICMSSub_D ');
          sql.add('      ,VarICMSSub_C   = TN.Conta_ICMSSub_C ');
          sql.add('      ,HistICMSSub    = Historico_ICMSSub ');
          sql.add('      ,MacroICMSSub   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSSub )');
          sql.add('      ,ContaICMSSub_D = dbo.PegaConta(TN.Conta_ICMSSub_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaICMSSub_C = dbo.PegaConta(TN.Conta_ICMSSub_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ----------------------------------------------------------------------[ IPI ]-----------------------------------------------------------------');
          sql.add('      ,Valor_IPI  = Valor_TotalIPI');
          sql.add('      ,VarIPI_D   = TN.Conta_IPI_D ');
          sql.add('      ,VarIPI_C   = TN.Conta_IPI_C ');
          sql.add('      ,HistIPI    = Historico_IPI ');
          sql.add('      ,MacroIPI   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_IPI )');
          sql.add('      ,ContaIPI_D = dbo.PegaConta(TN.Conta_IPI_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaIPI_C = dbo.PegaConta(TN.Conta_IPI_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ----------------------------------------------------------------------[ PIS ]-----------------------------------------------------------------');
          sql.add('      ,Valor_PIS');
          sql.add('      ,VarPIS_D   = TN.Conta_PIS_D ');
          sql.add('      ,VarPIS_C   = TN.Conta_PIS_C ');
          sql.add('      ,HistPIS    = Historico_PIS ');
          sql.add('      ,MacroPIS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_PIS )');
          sql.add('      ,ContaPIS_D = case when TN.Conta_PIS_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
          sql.add('                         when TN.Conta_PIS_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_PIS_D end');
          sql.add('      ,ContaPIS_C = case when TN.Conta_IPI_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
          sql.add('                         when TN.Conta_PIS_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_PIS_C end');
          sql.add('      ,ContaPIS_D = dbo.PegaConta(TN.Conta_PIS_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaPIS_C = dbo.PegaConta(TN.Conta_PIS_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ---------------------------------------------------------------------[ COFINS ]---------------------------------------------------------------');
          sql.add('      ,Valor_COFINS');
          sql.add('      ,VarCOFINS_D   = TN.Conta_COFINS_D ');
          sql.add('      ,VarCOFINS_C   = TN.Conta_COFINS_C ');
          sql.add('      ,HistCOFINS    = Historico_COFINS ');
          sql.add('      ,MacroCOFINS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_COFINS )');
          sql.add('      ,ContaCOFINS_D = case when TN.Conta_COFINS_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
          sql.add('                            when TN.Conta_COFINS_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_COFINS_D end');
          sql.add('      ,ContaCOFINS_C = case when TN.Conta_COFINS_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
          sql.add('                            when TN.Conta_COFINS_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_COFINS_C end');
          sql.add('      ,Conta_COFINS_D = dbo.PegaConta(TN.Conta_COFINS_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,Conta_COFINS_C = dbo.PegaConta(TN.Conta_COFINS_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ---------------------------------------------------------------------[ ESTOQUE ]--------------------------------------------------------------');
          sql.add('      ,Valor_Estoque  = (select sum(isnull(Total_Saida, 0)) from FichaEstoque FE where FE.Nota = NF.Nota and FE.Data = NF.Data_Emissao and Codigo in((select Codigo_Mercadoria from NotasItens NI where NI.Nota = NF.Nota and NI.Data = NF.Data_Emissao)))');
          sql.add('      ,VarEstoque_D   = TN.Conta_Estoque_D ');
          sql.add('      ,VarEstoque_C   = TN.Conta_Estoque_C ');
          sql.add('      ,HistEstoque    = Historico_Estoque ');
          sql.add('      ,MacroEstoque   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Estoque )');
          sql.add('      ,ContaEstoque_D = dbo.PegaConta(TN.Conta_Estoque_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaEstoque_C = dbo.PegaConta(TN.Conta_Estoque_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ------------------------------------------------------------------[ TOTAL PRODUTOS ]-----------------------------------------------------------');
          sql.add('      ,Valor_Produtos  = Valor_TotalProdutos');
          sql.add('      ,VarProdutos_D   = TN.Conta_TotalProdutos_D ');
          sql.add('      ,VarProdutos_C   = TN.Conta_TotalProdutos_C ');
          sql.add('      ,HistProdutos    = Historico_TotalProdutos ');
          sql.add('      ,MacroProdutos   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalProdutos )');
          sql.add('      ,ContaProdutos_D = dbo.PegaConta(TN.Conta_TotalProdutos_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaProdutos_C = dbo.PegaConta(TN.Conta_TotalProdutos_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ---------------------------------------------------------------------[ TOTAL NOTA ]------------------------------------------------------------');
          sql.add('      ,Valor_TotalNota');
          sql.add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D ');
          sql.add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C ');
          sql.add('      ,HistTotalNota    = Historico_TotalNota ');
          sql.add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
          sql.Add('      ,ContaTotalNota_D = dbo.PegaConta(TN.Conta_TotalNota_D, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('      ,ContaTotalNota_C = dbo.PegaConta(TN.Conta_TotalNota_C, NF.Fornecedor, NF.Processo, NF.Nota_Referencia, NF.Data_Referencia)');
          sql.add('from  NotasTerceiros NF, ReferenciasFiscais TN, TiposProcesso TP, Fornecedores FR');
          sql.add('where NF.Data_Entrada between :pDataIni and :pDataFim');
          sql.add('and   isnull(NF.Servico, '''') = '''' ');
          sql.add('and   isnull(NF.Provisoria, 0) = 0');
          sql.add('and   TN.Codigo = NF.Referencia_Fiscal');
          sql.add('and   FR.Codigo = NF.Fornecedor');
          sql.add('and   TP.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
          sql.add('order by Data_Entrada, Nota');
          sql.add('drop function dbo.PegaConta;');
          //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Terceiros.sql');
          ParamByName('pDataIni').AsDate := cDataIni.Date;
          ParamByName('pDataFim').AsDate := cDataFim.Date;
          open;
          First;

          while (not Eof) and (Funcoes.Cancelado = false) do begin
                AbreLt := true;
                mTotal := 0;
                for i := 1 to 8 do begin
                    mValor  := FieldByName('Valor_'+mCampoTer[i]).AsCurrency;
                    mContaD := trim(FieldByName('Conta'+mCampoTer[i]+'_D').asstring);
                    mContaC := trim(FieldByName('Conta'+mCampoTer[i]+'_C').asstring);
                    if (mContaD+mContaC <> '') and (mValor > 0) then begin
                       if VerErro(mContaD                                                          // Conta Débito.
                                 ,mContaC                                                          // Conta Crédito.
                                 ,FieldByName('Var'+mCampoTer[i]+'_D').Asstring                    // Variável parâmetrizada - Conta D.
                                 ,FieldByName('Var'+mCampoTer[i]+'_C').Asstring                    // Variável parâmetrizada - Conta C.
                                 ,'M'                                                              // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                 ,FieldByName('Numero').AsString                                   // Número do documento de origem.
                                 ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring+'-'+mCampoTer[i]   // Origem da conta "D".
                                 ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring+'-'+mCampoTer[i]   // Origem da conta "C".
                                 ,FieldByName('Referencia_Fiscal').Asstring                        // Origem do parâmetro (Local de parâmetrização).
                                 ,FieldByName('Beneficiario').Asstring                             // Beneficário.
                                 ,FieldByName('Numero').AsString                                   // Número do documento / título de origem.
                                 ,FieldByName('Hist'+mCampoTer[i]).asinteger                       // Código do histórico padrão.
                                 ,tEmpresas.FieldByName('Numero_Filial').asinteger                // Número da Filial.
                                 ,FieldByName('Processo').Asstring )                              // Processo.
                                 then begin

                          AbreLt := false;
                       end;

                       if Abrelt then begin
                          mLote  := AbreLote(FieldByName('Entrada').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, FieldByName('Tipo').asstring+' (Terceiros)', FieldByName('Tipo').asstring+'TER');
                          mLanc  := 1;
                          Abrelt := false;
                       end;

                       mHist := ComplementoHistorico( FieldByName('Macro'+mCampoTer[i]).asstring   // Complemento histórico.
                                                     ,FieldByName('Beneficiario_Nome').AsString    // Nome do beneficiário.
                                                     ,FieldByName('Processo').AsString             // Processo.
                                                     ,FieldByName('DI').AsString                   // DI.
                                                     ,''                                           // Classificacao Financeira.
                                                     ,FieldByName('Tipo').asstring                 // Tipo do documento.
                                                     ,FieldByName('Numero').AsString               // Número do documento
                                                     ,FieldByName('Emissao').AsString              // Data do documento.
                                                     ,''                                           // Banco.
                                                     ,''                                           // Observação.
                                                     );

                       with tLancamentos do begin
                            append;
                                   FieldByName('Registro').Value              := 0;
                                   FieldByName('Numero').Value                := mLanc;
                                   FieldByName('Empresa').Value               := Empresas.FieldByName('CNPJ').asstring;
                                   FieldByName('Data').Value                  := tNotas.FieldByName('Entrada').value;
                                   FieldByName('Lote').Value                  := mLote;
                                   FieldByName('Conta_Debito').Value          := trim(tNotas.FieldByName('Conta'+mCampoTer[i]+'_D').Asstring);
                                   FieldByName('Conta_Credito').Value         := trim(tNotas.FieldByName('Conta'+mCampoTer[i]+'_C').Asstring);
                                   FieldByName('Historico_Codigo').Value      := tNotas.FieldByName('Hist'+mCampoTer[i]).asinteger;
                                   FieldByName('Historico_Complemento').Value := mHist;
                                   FieldByName('Valor').Value                 := tNotas.FieldByName('Valor_'+mCampoTer[i]).ascurrency;
                                   FieldByName('Processo_Debito').Value       := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Origem').Value                := tNotas.FieldByName('Origem_Lan').AsString;
                                   FieldByName('Documento').Value             := tNotas.FieldByName('Numero').AsString;
                                   FieldByName('Data_Documento').Value        := tNotas.FieldByName('Emissao').value;
                                   FieldByName('Tipo_Documento').Value        := tNotas.FieldByName('Tipo').value;
                                   FieldByName('Numero_Financeiro').Value     := 0;
                                   FieldByName('Recriar').Value               := true;
                                   FieldByName('Processo_Credito').Value      := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Tipo_Nota').Value             := tNotas.FieldByName('Referencia_Fiscal').value;
                                   FieldByName('Beneficiario').Value          := AnsiString(trim(tNotas.FieldByName('Beneficiario').asstring));
                                   FieldByName('Contabilizar').Value          := true;
                                   FieldByName('Beneficiario_CNPJ').value     := tNotas.FieldByName('Beneficiario_CNPJ').Asstring;
                             post;

                             if trim(tNotas.FieldByName('Conta'+mCampoTer[i]+'_D').Asstring) <> '' then
                                mTotal := roundto(mTotal + tNotas.FieldByName('Valor_'+mCampoTer[i]).ascurrency, -4);
                             if trim(tNotas.FieldByName('Conta'+mCampoTer[i]+'_C').Asstring) <> '' then
                                mTotal := roundto(mTotal - tNotas.FieldByName('Valor_'+mCampoTer[i]).ascurrency, -4);

                             inc(mLanc);
                       end;
                    end;
                end;

                if mTotal <> 0 then begin
                  with tTmp do begin
                        sql.clear;
                        SQL.Add('select isnull(max(erro), 0)+1 as erro from LanErros');
                        Open;
                   end;
                   with dmContab, Erros do begin
                        append;
                             fieldbyname('Erro').value         := tTmp.FieldByName('erro').asinteger;
                             fieldbyname('Origem').value       := tNotas.FieldByName('Origem_Lan').AsString;
                             fieldbyname('Origem_Param').value := tNotas.FieldByName('Referencia_Fiscal').Asstring;
                             fieldbyname('Documento').value    := tNotas.FieldByName('Numero').AsString;
                             fieldbyname('D_C').value          := 'D/C';
                             fieldbyname('Descricao').value    := 'Total de "Débitos" diferente do total de "Créditos"';
                             fieldbyname('Conta').value        := mContaD+'/'+mContaC;
                             fieldbyname('Var_Conta').value    := '';
                             fieldbyname('Beneficiario').value := tNotas.FieldByName('Beneficiario').Asstring;
                             fieldbyname('Sel').value          := false;
                             fieldbyname('Empresa').value      := iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                        post;
                   end;
                end;

                Next;

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Janela_Processamento.lProcesso.Caption  := 'Gerando NF Terceiros dia...'+FieldByName('Entrada').AsString;;
                Application.ProcessMessages;
          end;
     end
end;
// Geração dos lançamentos contabeis da nota fiscal de emissão terceiros.
procedure TUtilitarios_RecriarContabil2.LancamentoServicoTom;
var
   i: integer;
begin
     with Dados, tNotas do begin
          sql.Clear;
          sql.add('select NF.Referencia_Fiscal');
          sql.add('      ,Numero = NF.Nota');
          sql.add('      ,Entrada = NF.Data_Entrada');
          sql.add('      ,Emissao = NF.Data_Emissao');
          sql.add('      ,Beneficiario      = ''F''+cast(NF.Fornecedor as varchar(10))');
          sql.add('      ,Beneficiario_CNPJ = FR.CNPJ');
          sql.add('      ,Beneficiario_Nome = ltrim(rtrim(FR.Nome))');
          sql.add('      ,NF.Processo');
          sql.add('      ,DI = (select Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('      ,Origem_Lan = ''NF Serviço Tomado (Referência Fiscal:''+ cast(NF.Referencia_Fiscal as varchar(10))+'')'' ');
          sql.add('      ,NF.Tipo');
          sql.add('      -----------------------------------------------------------------------[ ISS ]------------------------------------------------------------------');
          sql.add('      ,NF.Valor_ISS');
          sql.add('      ,VarISS_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.add('      ,VarISS_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.add('      ,HistISS    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.add('      ,MacroISS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao HP where HP.Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS''))');
          sql.add('      ,ContaISS_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.add('      ,ContaISS_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 01 ]--------------------------------------------------------');
          sql.add('      ,Valor_Adicional01');
          sql.add('      ,VarAdicional01_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.add('      ,VarAdicional01_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.add('      ,HistAdicional01    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.add('      ,MacroAdicional01   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01))');
          sql.add('      ,ContaAdicional01_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.add('      ,ContaAdicional01_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 02 ]--------------------------------------------------------');
          sql.add('      ,Valor_Adicional02');
          sql.add('      ,VarAdicional02_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.add('      ,VarAdicional02_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.add('      ,HistAdicional02    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.add('      ,MacroAdicional02   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02))');
          sql.add('      ,ContaAdicional02_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.add('      ,ContaAdicional02_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 03 ]--------------------------------------------------------');
          sql.add('      ,Valor_Adicional03');
          sql.add('      ,VarAdicional03_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.add('      ,VarAdicional03_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.add('      ,HistAdicional03    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.add('      ,MacroAdicional03   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03))');
          sql.add('      ,ContaAdicional03_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.add('      ,ContaAdicional03_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 04 ]--------------------------------------------------------');
          sql.add('      ,Valor_Adicional04');
          sql.add('      ,VarAdicional04_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.add('      ,VarAdicional04_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.add('      ,HistAdicional04    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.add('      ,MacroAdicional04   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04))');
          sql.add('      ,ContaAdicional04_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.add('      ,ContaAdicional04_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 05 ]--------------------------------------------------------');
          sql.add('      ,Valor_Adicional05');
          sql.add('      ,VarAdicional05_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.add('      ,VarAdicional05_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.add('      ,HistAdicional05    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.add('      ,MacroAdicional05   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05))');
          sql.add('      ,ContaAdicional05_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.add('      ,ContaAdicional05_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 06 ]--------------------------------------------------------');
          sql.add('      ,Valor_Adicional06');
          sql.add('      ,VarAdicional06_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.add('      ,VarAdicional06_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.add('      ,HistAdicional06    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.add('      ,MacroAdicional06   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06))');
          sql.add('      ,ContaAdicional06_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.add('      ,ContaAdicional06_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.add('      --------------------------------------------------------------------[ TOTAL LÍQUIDO ]------------------------------------------------------------');
          sql.add('      ,Valor_Produtos  = Valor_TotalLiquido');
          sql.add('      ,VarProdutos_D   = TN.Conta_TotalProdutos_D ');
          sql.add('      ,VarProdutos_C   = TN.Conta_TotalProdutos_C ');
          sql.add('      ,HistProdutos    = Historico_TotalProdutos ');
          sql.add('      ,MacroProdutos   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalProdutos )');
          sql.add('      ,ContaProdutos_D = case when TN.Conta_TotalProdutos_D = ''FORNECEDOR'' then FM.Conta_Passivo');
          sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                         else');
          sql.add('                              TN.Conta_TotalProdutos_D');
          sql.add('                         end');
          sql.add('      ,ContaProdutos_C = case when TN.Conta_TotalProdutos_C = ''FORNECEDOR'' then FM.Conta_Passivo');
          sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                         else');
          sql.add('                              TN.Conta_TotalProdutos_C');
          sql.add('                         end');
          sql.add('      ----------------------------------------------------------------------[ TOTAL NOTA ]-------------------------------------------------------------');
          sql.add('      ,Valor_TotalNota');
          sql.add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D ');
          sql.add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C ');
          sql.add('      ,HistTotalNota    = Historico_TotalNota ');
          sql.add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
          sql.add('      ,ContaTotalNota_D = case when TN.Conta_TotalNota_D = ''FORNECEDOR'' then FM.Conta_Passivo');
          sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                          else');
          sql.add('                               TN.Conta_TotalNota_D');
          sql.add('                          end');
          sql.add('      ,ContaTotalNota_C = case when TN.Conta_TotalNota_C = ''FORNECEDOR'' then FM.Conta_Passivo');
          sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                          else');
          sql.add('                               TN.Conta_TotalNota_C');
          sql.add('                          end');
          sql.add('from  NotasTerceiros NF, ReferenciasFiscais TN, FornecedoresModalidades FM, Fornecedores FR');
          sql.add('where NF.Data_Entrada between :pDataIni and :pDataFim');
          sql.add('and   isnull(NF.Servico, '''') <> '''' ');
          sql.add('and   isnull(NF.Provisoria, 0) = 0');
          sql.add('and   TN.Codigo = NF.Referencia_Fiscal');
          sql.add('and   FR.Codigo = NF.Fornecedor');
          sql.add('and  ( FM.Fornecedor = NF.Fornecedor and FM.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)) )');
          sql.add('order by Data_Entrada, Nota');
          //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Serviço_Tomado.sql');
          ParamByName('pDataIni').AsDate := cDataIni.Date;
          ParamByName('pDataFim').AsDate := cDataFim.Date;
          open;
          First;

          while (not Eof) and (Funcoes.Cancelado = false) do begin
                AbreLt := true;
                for i := 1 to 9 do begin
                    mValor  := FieldByName('Valor_'+mCampoSerT[i]).AsCurrency;
                    mContaD := trim(FieldByName('Conta'+mCampoSerT[i]+'_D').asstring);
                    mContaC := trim(FieldByName('Conta'+mCampoSerT[i]+'_C').asstring);
                    if (mContaD+mContaC <> '') and (mValor > 0) then begin
                       if VerErro(mContaD                                                           // Conta Débito.
                                 ,mContaC                                                           // Conta Crédito.
                                 ,FieldByName('Var'+mCampoSerT[i]+'_D').Asstring                    // Variável parâmetrizada - Conta D.
                                 ,FieldByName('Var'+mCampoSerT[i]+'_C').Asstring                    // Variável parâmetrizada - Conta C.
                                 ,'M'                                                               // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                 ,FieldByName('Numero').AsString                                    // Número do documento de origem.
                                 ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring    // Origem da conta "D".
                                 ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring    // Origem da conta "C".
                                 ,FieldByName('Referencia_Fiscal').Asstring                         // Origem do parâmetro (Local de parâmetrização).
                                 ,FieldByName('Beneficiario').Asstring                              // Beneficário.
                                 ,FieldByName('Numero').AsString                                    // Número do documento / título de origem.
                                 ,FieldByName('Hist'+mCampoSerT[i]).asinteger                       // Código do histórico padrão.
                                 ,tEmpresas.FieldByName('Numero_Filial').asinteger                 // Número da Filial.
                                 ,FieldByName('Processo').Asstring)                                 // Processo.
                                 then begin

                          AbreLt := false;
                       end;

                       if Abrelt then begin
                          mLote  := AbreLote(FieldByName('Entrada').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, FieldByName('Tipo').asstring+' (Serviço Tomado)', FieldByName('Tipo').asstring+'TER');
                          mLanc  := 1;
                          Abrelt := false;
                       end;

                       mHist := ComplementoHistorico( FieldByName('Macro'+mCampoSerT[i]).asstring    // Complemento histórico.
                                                     ,FieldByName('Beneficiario_Nome').AsString      // Nome do beneficiário.
                                                     ,FieldByName('Processo').AsString               // Processo.
                                                     ,FieldByName('DI').AsString                     // DI.
                                                     ,''                                             // Classificacao Financeira.
                                                     ,FieldByName('Tipo').asstring                   // Tipo do documento.
                                                     ,FieldByName('Numero').AsString                 // Número do documento
                                                     ,FieldByName('Emissao').AsString                // Data do documento.
                                                     ,''                                             // Banco.
                                                     ,'');                                           // Observação.

                       with tLancamentos do begin
                            append;
                                   FieldByName('Registro').Value              := 0;
                                   FieldByName('Numero').Value                := mLanc;
                                   FieldByName('Empresa').Value               := Empresas.FieldByName('CNPJ').asstring;
                                   FieldByName('Data').Value                  := tNotas.FieldByName('Entrada').value;
                                   FieldByName('Lote').Value                  := mLote;
                                   FieldByName('Conta_Debito').Value          := trim(tNotas.FieldByName('Conta'+mCampoSerT[i]+'_D').Asstring);
                                   FieldByName('Conta_Credito').Value         := trim(tNotas.FieldByName('Conta'+mCampoSerT[i]+'_C').Asstring);
                                   FieldByName('Historico_Codigo').Value      := tNotas.FieldByName('Hist'+mCampoSerT[i]).asinteger;
                                   FieldByName('Historico_Complemento').Value := mHist;
                                   FieldByName('Valor').Value                 := tNotas.FieldByName('Valor_'+mCampoSerT[i]).ascurrency;
                                   FieldByName('Processo_Debito').Value       := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Origem').Value                := tNotas.FieldByName('Origem_Lan').AsString;
                                   FieldByName('Documento').Value             := tNotas.FieldByName('Numero').AsString;
                                   FieldByName('Data_Documento').Value        := tNotas.FieldByName('Emissao').value;
                                   FieldByName('Tipo_Documento').Value        := tNotas.FieldByName('Tipo').value;
                                   FieldByName('Numero_Financeiro').Value     := 0;
                                   FieldByName('Recriar').Value               := true;
                                   FieldByName('Processo_Credito').Value      := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Tipo_Nota').Value             := tNotas.FieldByName('Referencia_Fiscal').value;
                                   FieldByName('Beneficiario').Value          := AnsiString(trim(tNotas.FieldByName('Beneficiario').asstring));
                                   FieldByName('Contabilizar').Value          := true;
                                   FieldByName('Beneficiario_CNPJ').value     := tNotas.FieldByName('Beneficiario_CNPJ').Asstring;
                             post;

                             inc(mLanc);
                       end;
                    end;
                end;

                if mTotal <> 0 then begin
                  with tTmp do begin
                        sql.clear;
                        SQL.Add('select isnull(max(erro), 0)+1 as erro from LanErros');
                        Open;
                   end;
                   with dmContab, Erros do begin
                        append;
                             fieldbyname('Erro').value         := tTmp.FieldByName('erro').asinteger;
                             fieldbyname('Origem').value       := tNotas.FieldByName('Origem_Lan').AsString;
                             fieldbyname('Origem_Param').value := tNotas.FieldByName('Referencia_Fiscal').Asstring;
                             fieldbyname('Documento').value    := tNotas.FieldByName('Numero').AsString;
                             fieldbyname('D_C').value          := 'D/C';
                             fieldbyname('Descricao').value    := 'Total de "Débitos" diferente do total de "Créditos"';
                             fieldbyname('Conta').value        := mContaD+'/'+mContaC;
                             fieldbyname('Var_Conta').value    := '';
                             fieldbyname('Beneficiario').value := tNotas.FieldByName('Beneficiario').Asstring;
                             fieldbyname('Sel').value          := false;
                             fieldbyname('Empresa').value      := iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                        post;
                   end;
                end;

                Next;

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Janela_Processamento.lProcesso.Caption  := 'Gerando NF Serviço Tomado dia...'+FieldByName('Entrada').AsString;;
                Application.ProcessMessages;
          end;
     end
end;
}
(*
// Gera os lançamentos de notas fiscais de serviços prestados.
procedure TUtilitarios_RecriarContabil2.LancamentoServicoPre;
var
   i: integer;
begin
      With Dados, tNotas do begin
          sql.Clear;
          sql.Add('select NF.Referencia_Fiscal');
          sql.Add('      ,NF.Numero');
          sql.Add('      ,Emissao = Data_Emissao');
          sql.Add('      ,Beneficiario      = ''C''+cast(NF.Cliente as varchar(10))');
          sql.Add('      ,Beneficiario_CNPJ = CL.CNPJ');
          sql.Add('      ,Beneficiario_Nome = ltrim(rtrim(CL.Nome))');
          sql.Add('      ,NF.Processo');
          sql.Add('      ,DI = (select Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.Add('      ,Origem_Lan = ''NF Serviço Prestado (Referência Fiscal:''+ cast(NF.Referencia_Fiscal as varchar(10))+'')'' ');
          sql.Add('      ,Tipo = ''NF'' ');
          sql.Add('      -----------------------------------------------------------------------[ ISS ]------------------------------------------------------------------');
          sql.Add('      ,NF.Valor_ISS');
          sql.Add('      ,VarISS_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.Add('      ,VarISS_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.Add('      ,HistISS    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.Add('      ,MacroISS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao HP where HP.Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS''))');
          sql.Add('      ,ContaISS_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.Add('      ,ContaISS_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = ''ISS'')');
          sql.Add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 01 ]--------------------------------------------------------');
          sql.Add('      ,Valor_Adicional01');
          sql.Add('      ,VarAdicional01_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.Add('      ,VarAdicional01_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.Add('      ,HistAdicional01    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.Add('      ,MacroAdicional01   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01))');
          sql.Add('      ,ContaAdicional01_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.Add('      ,ContaAdicional01_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional01)');
          sql.Add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 02 ]--------------------------------------------------------');
          sql.Add('      ,Valor_Adicional02');
          sql.Add('      ,VarAdicional02_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.Add('      ,VarAdicional02_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.Add('      ,HistAdicional02    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.Add('      ,MacroAdicional02   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02))');
          sql.Add('      ,ContaAdicional02_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.Add('      ,ContaAdicional02_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional02)');
          sql.Add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 03 ]--------------------------------------------------------');
          sql.Add('      ,Valor_Adicional03');
          sql.Add('      ,VarAdicional03_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.Add('      ,VarAdicional03_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.Add('      ,HistAdicional03    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.Add('      ,MacroAdicional03   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03))');
          sql.Add('      ,ContaAdicional03_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.Add('      ,ContaAdicional03_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional03)');
          sql.Add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 04 ]--------------------------------------------------------');
          sql.Add('      ,Valor_Adicional04');
          sql.Add('      ,VarAdicional04_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.Add('      ,VarAdicional04_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.Add('      ,HistAdicional04    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.Add('      ,MacroAdicional04   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04))');
          sql.Add('      ,ContaAdicional04_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.Add('      ,ContaAdicional04_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional04)');
          sql.Add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 05 ]--------------------------------------------------------');
          sql.Add('      ,Valor_Adicional05');
          sql.Add('      ,VarAdicional05_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.Add('      ,VarAdicional05_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.Add('      ,HistAdicional05    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.Add('      ,MacroAdicional05   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05))');
          sql.Add('      ,ContaAdicional05_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.Add('      ,ContaAdicional05_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional05)');
          sql.Add('      ----------------------------------------------------------------[ IMPOSTO ADICIONAL 06 ]--------------------------------------------------------');
          sql.Add('      ,Valor_Adicional06');
          sql.Add('      ,VarAdicional06_D   = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.Add('      ,VarAdicional06_C   = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.Add('      ,HistAdicional06    = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.Add('      ,MacroAdicional06   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = (select Historico from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06))');
          sql.Add('      ,ContaAdicional06_D = (select Conta_D from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.Add('      ,ContaAdicional06_C = (select Conta_C from Cybersoft_Cadastros.dbo.Impostos IMP where Codigo = Codigo_Adicional06)');
          sql.Add('      --------------------------------------------------------------------[ TOTAL LÍQUIDO ]------------------------------------------------------------');
          sql.Add('      ,Valor_Produtos  = NF.Valor_Servico');
          sql.Add('      ,VarProdutos_D   = TN.Conta_TotalProdutos_D');
          sql.Add('      ,VarProdutos_C   = TN.Conta_TotalProdutos_C');
          sql.Add('      ,HistProdutos    = Historico_TotalProdutos');
          sql.Add('      ,MacroProdutos   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalProdutos )');
          sql.add('      ,ContaProdutos_D = case when TN.Conta_TotalProdutos_D = ''CLIENTE''    then CM.Conta_Ativo');
          sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                         else');
          sql.add('                              TN.Conta_TotalProdutos_D');
          sql.add('                         end');
          sql.add('      ,ContaProdutos_C = case when TN.Conta_TotalProdutos_C = ''CLIENTE''    then CM.Conta_Ativo');
          sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                         else');
          sql.add('                              TN.Conta_TotalProdutos_C');
          sql.add('                         end');
          sql.Add('      ----------------------------------------------------------------------[ TOTAL NOTA ]-------------------------------------------------------------');
          sql.Add('      ,Valor_TotalNota  = NF.Valor_Servico');
          sql.Add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D');
          sql.Add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C');
          sql.Add('      ,HistTotalNota    = Historico_TotalNota');
          sql.Add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
          sql.add('      ,ContaTotalNota_D = case when TN.Conta_TotalNota_D = ''CLIENTE''    then CM.Conta_Ativo');
          sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                          else');
          sql.add('                               TN.Conta_TotalNota_D');
          sql.add('                          end');
          sql.add('      ,ContaTotalNota_C = case when TN.Conta_TotalNota_C = ''CLIENTE''    then CM.Conta_Ativo');
          sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSO''   then (select Conta_Despesas     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSOIM'' then (select Conta_Impostos     from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSOAD'' then (select Conta_Adiantamento from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
          sql.add('                          else');
          sql.add('                               TN.Conta_TotalNota_C');
          sql.add('                          end');
          sql.Add('from  NotasServico NF, ReferenciasFiscais TN, ClientesModalidades CM, Clientes CL');
          sql.Add('where NF.Data_Emissao between :pDataIni and :pDataFim');
          sql.Add('and   TN.Codigo = NF.Referencia_Fiscal');
          sql.Add('and   CL.Codigo = NF.Cliente');
          sql.add('and  ( CM.Cliente = NF.Cliente and CM.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0)) )');
          sql.Add('order by Data_Emissao, Numero');
          //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Serviço_Prestado.sql');
          ParamByName('pDataIni').AsDate := cDataIni.Date;
          ParamByName('pDataFim').AsDate := cDataFim.Date;
          open;
          first;

          while (not Eof) and (Funcoes.Cancelado = false) do begin
                AbreLt := true;
                for i := 1 to 9 do begin
                    mValor  := FieldByName('Valor_'+mCampoSerT[i]).AsCurrency;
                    mContaD := trim(FieldByName('Conta'+mCampoSerT[i]+'_D').asstring);
                    mContaC := trim(FieldByName('Conta'+mCampoSerT[i]+'_C').asstring);
                    if (mContaD+mContaC <> '') and (mValor > 0) then begin
                       if VerErro(mContaD                                                           // Conta Débito.
                                 ,mContaC                                                           // Conta Crédito.
                                 ,FieldByName('Var'+mCampoSerT[i]+'_D').Asstring                    // Variável parâmetrizada - Conta D.
                                 ,FieldByName('Var'+mCampoSerT[i]+'_C').Asstring                    // Variável parâmetrizada - Conta C.
                                 ,'M'                                                               // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                 ,FieldByName('Numero').AsString                                    // Número do documento de origem.
                                 ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring    // Origem da conta "D".
                                 ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring    // Origem da conta "C".
                                 ,FieldByName('Referencia_Fiscal').Asstring                         // Origem do parâmetro (Local de parâmetrização).
                                 ,FieldByName('Beneficiario').Asstring                              // Beneficário.
                                 ,FieldByName('Numero').AsString                                    // Número do documento / título de origem.
                                 ,FieldByName('Hist'+mCampoSerT[i]).asinteger                       // Código do histórico padrão.
                                 ,tEmpresas.FieldByName('Numero_Filial').asinteger                  // Número da Filial.
                                 ,FieldByName('Processo').Asstring )                                // Processo.
                                 then begin

                          AbreLt := false;
                       end;

                       if Abrelt then begin
                          mLote  := AbreLote(FieldByName('Emissao').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, FieldByName('Tipo').asstring+' (Serviço Prestado)', FieldByName('Tipo').asstring+'PRO');
                          mLanc  := 1;
                          Abrelt := false;
                       end;

                       mHist := ComplementoHistorico( FieldByName('Macro'+mCampoSerT[i]).asstring    // Complemento histórico.
                                                     ,FieldByName('Beneficiario_Nome').AsString      // Nome do beneficiário.
                                                     ,FieldByName('Processo').AsString               // Processo.
                                                     ,FieldByName('DI').AsString                     // DI.
                                                     ,''                                             // Classificacao Financeira.
                                                     ,FieldByName('Tipo').asstring                   // Tipo do documento.
                                                     ,FieldByName('Numero').AsString                 // Número do documento
                                                     ,FieldByName('Emissao').AsString                // Data do documento.
                                                     ,''                                             // Banco.
                                                     ,''                                             // Observação.
                                                     );

                       with tLancamentos do begin
                            append;
                                   FieldByName('Registro').Value              := 0;
                                   FieldByName('Numero').Value                := mLanc;
                                   FieldByName('Empresa').Value               := Empresas.FieldByName('CNPJ').asstring;
                                   FieldByName('Data').Value                  := tNotas.FieldByName('Emissao').value;
                                   FieldByName('Lote').Value                  := mLote;
                                   FieldByName('Conta_Debito').Value          := trim(tNotas.FieldByName('Conta'+mCampoSerT[i]+'_D').Asstring);
                                   FieldByName('Conta_Credito').Value         := trim(tNotas.FieldByName('Conta'+mCampoSerT[i]+'_C').Asstring);
                                   FieldByName('Historico_Codigo').Value      := tNotas.FieldByName('Hist'+mCampoSerT[i]).asinteger;
                                   FieldByName('Historico_Complemento').Value := mHist;
                                   FieldByName('Valor').Value                 := tNotas.FieldByName('Valor_'+mCampoSerT[i]).ascurrency;
                                   FieldByName('Processo_Debito').Value       := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Origem').Value                := tNotas.FieldByName('Origem_Lan').AsString;
                                   FieldByName('Documento').Value             := tNotas.FieldByName('Numero').AsString;
                                   FieldByName('Data_Documento').Value        := tNotas.FieldByName('Emissao').value;
                                   FieldByName('Tipo_Documento').Value        := tNotas.FieldByName('Tipo').value;
                                   FieldByName('Numero_Financeiro').Value     := 0;
                                   FieldByName('Recriar').Value               := true;
                                   FieldByName('Processo_Credito').Value      := tNotas.FieldByName('Processo').AsString;
                                   FieldByName('Tipo_Nota').Value             := tNotas.FieldByName('Referencia_Fiscal').value;
                                   FieldByName('Beneficiario').Value          := AnsiString(trim(tNotas.FieldByName('Beneficiario').asstring));
                                   FieldByName('Contabilizar').Value          := true;
                                   FieldByName('Beneficiario_CNPJ').value     := tNotas.FieldByName('Beneficiario_CNPJ').Asstring;
                             post;

                             inc(mLanc);
                       end;
                    end;
                end;

                if mTotal <> 0 then begin
                  with tTmp do begin
                        sql.clear;
                        SQL.Add('select isnull(max(erro), 0)+1 as erro from LanErros');
                        Open;
                   end;
                   with dmContab, Erros do begin
                        append;
                             fieldbyname('Erro').value         := tTmp.FieldByName('erro').asinteger;
                             fieldbyname('Origem').value       := tNotas.FieldByName('Origem_Lan').AsString;
                             fieldbyname('Origem_Param').value := tNotas.FieldByName('Referencia_Fiscal').Asstring;
                             fieldbyname('Documento').value    := tNotas.FieldByName('Numero').AsString;
                             fieldbyname('D_C').value          := 'D/C';
                             fieldbyname('Descricao').value    := 'Total de "Débitos" diferente do total de "Créditos"';
                             fieldbyname('Conta').value        := mContaD+'/'+mContaC;
                             fieldbyname('Var_Conta').value    := '';
                             fieldbyname('Beneficiario').value := tNotas.FieldByName('Beneficiario').Asstring;
                             fieldbyname('Sel').value          := false;
                             fieldbyname('Empresa').value      := iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                        post;
                   end;
                end;

                Next;

                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Janela_Processamento.lProcesso.Caption  := 'Gerando NF Serviço prestado dia...'+FieldByName('Emissao').AsString;;
                Application.ProcessMessages;
          end;
      End;
end;
*)

procedure TUtilitarios_RecriarContabil2.GradeDblClick(Sender: TObject);
var
   mEmp: string;
begin
      with Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT *');
           Empresas.SQL.Add('FROM  Empresas');
           Empresas.SQL.Add('WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           mEmp := iif(Empresas.FieldByName('Numero_Filial').asInteger = 0, 'MATRIZ', 'FILIAL '+trim(Empresas.FieldByName('Numero_Filial').asstring));
           if (Erros.FieldByName('Empresa').asstring <> mEmp) then begin
              if (Pos('[CLASSIFICAÇÃO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) = 0) and (Pos('[BANCO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) = 0) then begin
                 MessageDlg('Atenção!'+#13+#13+'Mude a empresas atual '+mEmp+' para a '+Erros.FieldByName('Empresa').asstring+' para poder efetuar as correções!', mtInformation, [mbOK], 0);
                 Abort;
              end else begin
                 if (Pos('[CLASSIFICAÇÃO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0) and (not ConfiguracaoCompartilhar_Classificacao.asboolean) then begin
                    MessageDlg('Atenção!'+#13+#13+'Mude a empresas atual '+mEmp+' para a '+Erros.FieldByName('Empresa').asstring+' para poder efetuar as correções!', mtInformation, [mbOK], 0);
                    Abort;
                 end;
                 if (Pos('[BANCO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0) and (not ConfiguracaoCompartilhar_Bancos.asboolean) then begin
                    MessageDlg('Atenção!'+#13+#13+'Mude a empresas atual '+mEmp+' para a '+Erros.FieldByName('Empresa').asstring+' para poder efetuar as correções!', mtInformation, [mbOK], 0);
                    Abort;
                 end;
              end;
           end;
           // Modulo de processo de importação.
           if Pos('[PROCESSO]', UpperCase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Processo_Importacao              := TProcesso_Importacao.Create(Self);
              Processo_Importacao.Caption      := Caption;
              Processo_Importacao.mNFEProcesso := Erros.FieldByName('Beneficiario').AsString;
              Processo_Importacao.ShowModal;
           end;
           // Modulo Tipo de nota.
           if Pos('[TIPO NOTA]', UpperCase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Config_TipoNota := TConfig_TipoNota.Create(Self);
              Config_TipoNota.Caption      := Caption;
              Config_TipoNota.mNFETipoNota := Erros.FieldByName('Origem_Param').AsString;
              Config_TipoNota.ShowModal;
           end;
           // Modulo Financeiro.
           if (Pos('[CLASSIFICAÇÃO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0) or (Pos('[HISTÓRICO]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0) then begin
              Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
              Cadastro_ClassificacaoFinanceira.Caption     := Caption;
              Cadastro_ClassificacaoFinanceira.mCodigoErro := Erros.FieldByName('Origem_Param').asstring;
              Cadastro_ClassificacaoFinanceira.ShowModal;
           end;
           // Modulo históricos.
           if Pos('[HISTORICO PADRAO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Cadastro_HistoricoPadrao           := TCadastro_HistoricoPadrao.Create(Self);
              Cadastro_HistoricoPadrao.Caption   := Caption;
              Cadastro_HistoricoPadrao.mPesquisa := Erros.FieldByName('Origem_Param').asstring;
              Cadastro_HistoricoPadrao.ShowModal;
           end;
           // Modulo Bancos.
           if Pos('[BANCO]', uppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Cadastro_Bancos           := TCadastro_Bancos.Create(Self);
              Cadastro_Bancos.caption   := Caption;
              Cadastro_Bancos.mPesquisa := Erros.FieldByName('Banco').AsString;
              Cadastro_Bancos.Showmodal;
           end;
           // Clientes.
           if Pos('[CLIENTE]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Cadastro_Clientes           := TCadastro_Clientes.Create(Self);
              Cadastro_Clientes.caption   := Caption;
              Cadastro_Clientes.mPesquisa := copy(Erros.FieldByName('Beneficiario').AsString, 5, 15);
              Cadastro_Clientes.Showmodal;
           end;
           // Fornecedores.
           if Pos('[FORNECEDOR]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Cadastro_Fornecedores           := TCadastro_Fornecedores.Create(Self);
              Cadastro_Fornecedores.caption   := Caption;
              Cadastro_Fornecedores.mPesquisa := copy(Erros.FieldByName('Beneficiario').AsString, 5, 15);
              Cadastro_Fornecedores.Showmodal;
           end;
           // Orgãos Públicos.
           if Pos('[ORGÃO PÚBLICO]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0  then begin
              Cadastro_OrgaosPublicos           := TCadastro_OrgaosPublicos.Create(Self);
              Cadastro_OrgaosPublicos.caption   := Caption;
              Cadastro_OrgaosPublicos.mErro     := trim(Copy(Erros.FieldByName('Beneficiario').AsString, 2, 15));
              Cadastro_OrgaosPublicos.Showmodal;
           end;
           // Modulo Referência Fiscal.
           if Pos('[REFERÊNCIA FISCAL]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Config_TipoNotaTerceiros               := TConfig_TipoNotaTerceiros.Create(Self);
              Config_TipoNotaTerceiros.Caption       := Caption;
              Config_TipoNotaTerceiros.mNFReferencia := Erros.FieldByName('Origem_Param').AsString;
              Config_TipoNotaTerceiros.ShowModal;
           end;
           // Configurações do sistema;
           if Pos('[CONFIGURAÇÃO]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              ConfigSis         := TConfigSis.Create(Self);
              ConfigSis.Caption := Caption;
              Configsis.mAba    := 6;
              ConfigSis.ShowModal;
           end;
           // Configurações do sistema;
           if Pos('[MODALIDADE]', Ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Cadastro_TiposProcesso := TCadastro_TiposProcesso.Create(Self);
              Cadastro_TiposProcesso.Caption := Caption;
              Cadastro_TiposProcesso.mPesquisa := Erros.FieldByName('Modalidade').asinteger;
              Cadastro_TiposProcesso.ShowModal;
           end;

           with Erros do begin
                Edit;
                    ErrosSel.Value := true;
                Post;
           end;
      end;
end;

procedure TUtilitarios_RecriarContabil2.FormShow(Sender: TObject);
begin
      with dmContab, Erros do begin
           sql.Clear;
           sql.Add('select * from LanErros order by Empresa desc, Origem, Documento');
           Open;

           TabSheet1.Caption := 'Erros ['+ InttoStr(RecordCount)+']';
      end;
end;

function TUtilitarios_RecriarContabil2.AbreLote(Data: TDate; Empresa, Descricao, Origem: string): integer;
var
   lt: integer;
begin
     lt := 0;
     with tLotes do begin
          first;
          while not eof do begin
                if (FieldByName('Data').value = Data) and (FieldByName('Lote').value > lt) then begin
                   lt := FieldByName('Lote').asinteger;
                end;
                next;
          end;
     end;
     if lt = 0 then begin
        with tLoteNum do begin
             sql.Clear;
             sql.Add('select Lote = isnull(max(Lote), 0) from Lotes where Data = :pData and Empresa = :pEmpresa');
             ParamByName('pData').asDate   := Data;
             ParamByName('pEmpresa').value := Empresa;
             Open;
             if FieldByName('Lote').AsInteger > lt then lt := FieldByName('Lote').AsInteger;
        end;
     end;
     inc(lt);
     with tLotes do begin
          Append;
                FieldByName('Registro').value     := mRegLote;
                FieldByName('Data').value         := Data;
                FieldByName('Lote').value         := lt;
                FieldByName('Empresa').value      := Empresa;
                FieldByName('Origem').value       := Origem;
                FieldByName('Descricao').value    := Descricao;
                FieldByName('Contabilizar').value := true;
                FieldByName('Aberto').value       := false;
                FieldByName('Recriar').value      := 1;
          Post;
     end;
     result := lt;
     inc(mRegLote);
end;

function TUtilitarios_RecriarContabil2.UltimoLanc(Data: TDate; Empresa: string; Lote: integer): integer;
begin
      with tLancamentos do begin
           mLanc := 0;
           first;
           while not eof do begin
                 if (FieldByName('Lote').asinteger = Lote) and (FieldByName('Data').value = Data) then begin
                    if FieldByName('Numero').asinteger > mLanc then begin
                       mLanc := FieldByName('Numero').asinteger;
                    end;
                 end;
                 next;
           end;
      end;
      if mLanc = 0 then begin
         with tLoteNum do begin
              sql.Clear;
              sql.Add('select Numero = isnull(max(Numero), 0) from Lancamentos where Data = :pData and Empresa = :pEmpresa and Lote = :pLote');
              ParamByName('pData').asDate   := Data;
              ParamByName('pEmpresa').value := Empresa;
              ParamByName('pLote').value    := Lote;
              Open;
              mLanc := FieldByName('Numero').AsInteger;
         end;
      end;
      result := mLanc;
end;

function TUtilitarios_RecriarContabil2.VerErro(ContaD, ContaC, VarD, VarC, Partida, Documento, OrigemD, OrigemC, OrigemPar, Benef, NumOrigem, Historico: string; HistoricoCod, Empresa, Banco, Modalidade: integer; Processo:string): boolean;
var
   mErroCtaD
  ,mErroCtaC
  ,mEmp
  ,mErroHis: string;
  mErro: integer;
begin
     mErroCtaD := '';
     mErroCtaC := '';
     mErroHis  := '';
     mEmp      := iif(Empresa = 0, 'MATRIZ', 'FILIAL '+inttostr(Empresa));
     with dmContab do begin
          if Partida = 'D' then begin
             if ApenasNumeros(ContaD) = '' then
                mErroCtaD := 'Conta não encontrada';
             if ApenasNumeros(ContaC) = '' then
                mErroCtaC := 'Conta não encontrada';
             if trim(ContaD) = '' then
                mErroCtaD := 'Conta não encontrada';
             if trim(ContaC) = '' then
                mErroCtaC := 'Conta não encontrada';
          end else begin
             if trim(ContaD)+trim(ContaC) = '' then begin
                if trim(ContaD) = '' then
                   mErroCtaD := 'Conta não encontrada';
                if trim(ContaC) = '' then
                   mErroCtaC := 'Conta não encontrada';
             end;
             if (trim(VarD) <> '') and (trim(ApenasNumeros(ContaD)) = '') then begin
                mErroCtaD := 'Conta não encontrada';
             end;
             if (trim(VarC) <> '') and (trim(ApenasNumeros(ContaC)) = '') then begin
                mErroCtaC := 'Conta não encontrada';
             end;
             if (trim(VarD) <> '') and (trim(ContaD) = '') then begin
                mErroCtaD := 'Conta não encontrada';
             end;
             if (trim(VarC) <> '') and (trim(ContaC) = '') then begin
                mErroCtaC := 'Conta não encontrada';
             end;
          end;
          with tTmp do begin
               sql.clear;
               SQL.Add('select isnull(max(erro), 0)+1 as erro from LanErros');
               Open;
               mErro := tTmp.FieldByName('erro').asinteger;
          end;
          with Erros do begin
               if trim(mErroCtaD) <> '' then begin
                  append;
                       fieldbyname('Erro').value         := mErro;
                       fieldbyname('Origem').value       := OrigemD;
                       fieldbyname('Origem_Param').value := OrigemPar;
                       fieldbyname('Documento').value    := Documento;
                       fieldbyname('D_C').value          := 'D';
                       fieldbyname('Descricao').value    := mErroCtaD;
                       fieldbyname('Conta').value        := ContaD;
                       fieldbyname('Var_Conta').value    := VarD;
                       fieldbyname('Beneficiario').value := Benef;
                       fieldbyname('Banco').value        := Banco;
                       fieldbyname('Sel').value          := false;
                       fieldbyname('Empresa').value      := mEmp;
                       fieldbyname('Modalidade').value   := Modalidade;
                       fieldbyname('Processo').value     := Processo;
                  post;
                  inc(mErro);
               end;
               if trim(mErroCtaC) <> '' then begin
                  append;
                       fieldbyname('Erro').value         := mErro;
                       fieldbyname('Origem').value       := OrigemC;
                       fieldbyname('Origem_Param').value := OrigemPar;
                       fieldbyname('Documento').value    := Documento;
                       fieldbyname('D_C').value          := 'C';
                       fieldbyname('Descricao').value    := mErroCtaC;
                       fieldbyname('Conta').value        := ContaC;
                       fieldbyname('Var_Conta').value    := VarC;
                       fieldbyname('Beneficiario').value := Benef;
                       fieldbyname('Banco').value        := Banco;
                       fieldbyname('Sel').value          := false;
                       fieldbyname('Empresa').value      := mEmp;
                       fieldbyname('Modalidade').value   := Modalidade;
                       fieldbyname('Processo').value     := Processo;
                  post;
                  inc(mErro);
               end;
               if (trim(Historico) = '') and (not Historicos.Locate('Codigo', HistoricoCod, [loCaseInsensitive])) then begin
                  append;
                       fieldbyname('Erro').value         := mErro;
                       fieldbyname('Origem').value       := concat('(',inttostr(HistoricoCod), ') ','[Historico Padrao]');
                       fieldbyname('Origem_Param').value := inttostr(HistoricoCod);
                       fieldbyname('Documento').value    := Documento;
                       fieldbyname('D_C').value          := 'D/C';
                       fieldbyname('Descricao').value    := 'Histórico não informado';
                       fieldbyname('Conta').value        := Concat(ContaD,'/',ContaC);
                       fieldbyname('Var_Conta').value    := Concat(VarD,'/',VarC);
                       fieldbyname('Beneficiario').value := Benef;
                       fieldbyname('Banco').value        := Banco;
                       fieldbyname('Sel').value          := false;
                       fieldbyname('Empresa').value      := mEmp;
                       fieldbyname('Modalidade').value   := Modalidade;
                       fieldbyname('Processo').value     := Processo;
                  post;
                  inc(mErro);
               end;
          end;
     end;
     result := true;
end;


end.

