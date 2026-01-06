unit frmUtilitarios_RecriarContabil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Mask,
  DBAccess, Funcoes, Grids, Vcl.ComCtrls, DB, MSAccess, DateUtils, system.UITypes, DBGrids, RxCurrEdit, RxToolEdit, MemDS, RxMemDS, Math;

type
  TUtilitarios_RecriarContabil = class(TForm)
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
    StaticText11: TStaticText;
    cSenha: TEdit;
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
    function  VerErro(ContaD, ContaC, VarD, VarC, Partida, Documento, OrigemD, OrigemC, OrigemPar, Benef, NumOrigem: string; Historico, Empresa, Banco, Modalidade: integer): boolean;
    procedure LancamentoFinanceiroProv;
    procedure LancamentoFinanceiroBaixa;
    procedure LancamentoNFPropria;
    procedure LancamentoFinanceiroBaixaLt;
    procedure LancamentoNFTerceiros;
    procedure LancamentoServicoTom;
    procedure LancamentoServicoPre;
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
   ,mDescLote
   ,mBancoContab
   ,CompBancos
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
  Utilitarios_RecriarContabil: TUtilitarios_RecriarContabil;

implementation

uses frmDados, frmDMContab, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal, frmProcesso_Importacao, frmCadastro_Clientes, frmCadastro_Fornecedores,
     frmCadastro_ClassificacaoFinanceira, frmCadastro_OrgaosPublicos, frmCadastro_Bancos, frmCadastro_HistoricoPadrao, frmConfigsis, frmCadastro_TiposProcesso, frmConfig_TipoNota, frmConfig_TipoNotaTerceiros;

{$R *.dfm}

procedure TUtilitarios_RecriarContabil.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_RecriarContabil.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Utilitarios_RecriarContabil.Release;
     Utilitarios_RecriarContabil := nil;
end;

procedure TUtilitarios_RecriarContabil.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_RecriarContabil.bGerarClick(Sender: TObject);
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
                    sql.Add('select * from Empresas where substring(CNPJ, 1, 8) = :pCNPJ order by Numero_Filial, CNPJ');
                    ParamByName('pCNPJ').AsString := Copy(EmpresasCNPJ.AsString, 1, 8);
                    Open;
              end;

              Lotes.SQL.Clear;
              Lotes.SQL.Add('delete from lotes where(Data between :pDataIni and :pDataFim) and isnull(Recriar, 0) = 1');
              Lotes.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
              Lotes.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
              Lotes.Execute;

              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('delete from Lancamentos where(Data between :pDataIni and :pDataFim) and isnull(Recriar, 0) = 1');
              Lancamentos.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
              Lancamentos.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
              Lancamentos.Execute;

              Lotes.SQL.Clear;
              Lotes.SQL.Add('delete from Lotes where(Data between :pDataIni and :pDataFim) and isnull(Recriar, 0) = 1');
              Lotes.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
              Lotes.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
              Lotes.Execute;
              Lotes.SQL.Clear;
              Lotes.SQL.Add('select top 1 * from Lotes');
              Lotes.Open;

              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('select top 1 * FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim)');
              Lancamentos.ParamByName('pDataIni').AsDate   := cDataIni.Date;
              Lancamentos.ParamByName('pDataFim').AsDate   := cDataFim.Date;
              Lancamentos.Open;

              Erros.SQL.Clear;
              Erros.SQL.Add('TRUNCATE TABLE LanErros');
              Erros.Execute;
              Erros.close;

              Erros.sql.Clear;
              Erros.sql.Add('select * from LanErros order by Empresa desc, Origem, Documento');
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

         LancamentoFinanceiroProv;         // Financeiro - Provisões.
         LancamentoFinanceiroBaixa;        // financeiro - Baixas sem lotes (Partida Dobrada).
         LancamentoFinanceiroBaixaLt;      // financeiro - Baixas com lotes (Partida Multipla).
         LancamentoNFPropria;              // Notas fiscais de emissão Própria.
         LancamentoNFTerceiros;            // Notas fiscais de terceriros.
         LancamentoServicoTom;             // Notas fiscais de serviço tomado.
         LancamentoServicoPre;             // Notas fiscais de emissão prestado.

         // Reposiciona o banco utilizado para a empresa atual, para evitar conflito.
         with tNotas do begin
              sql.clear;
              sql.Add('use '+trim(Dados.Empresas.FieldByName('Banco_Dados').AsString));
              execute;
         end;

         with Dados, dmContab, dmFiscal do begin
              Erros.sql.Clear;
              Erros.sql.Add('select * from LanErros order by Empresa desc, Origem, Documento');
              Erros.Open;
//              if (Erros.RecordCount = 0) and (tLancamentos.RecordCount > 0) then begin
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
                 dmCOntab.Erros.EnableControls;
//              end;
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
procedure TUtilitarios_RecriarContabil.LancamentoFinanceiroProv;
var
  i: integer;
begin
      with Dados, dmFiscal, dmContab do begin
           tEmpresas.First;
           while not tEmpresas.Eof do begin
                 mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                 mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );
                 with tPagarReceber do begin
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('------------------------------------------------------[ DELETE A FUNÇÃO CASO JA EXISTA ]------------------------------------------------------------');
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
                      sql.add('                        when ''CLIENTE''    then ''[Modalidade]'' ');
                      sql.Add('                        when ''FORNECEDOR'' then ''[Modalidade]'' ');
                      sql.Add('                        when ''ORGÃO''      then ''[Orgão Público]'' ');
                      sql.add('                        when ''PROCESSO''   then ''[Modalidade]'' ');
                      sql.add('                        when ''PROCESSOIM'' then ''[Modalidade]'' ');
                      sql.add('                        when ''PROCESSOAD'' then ''[Modalidade]'' ');
                      sql.add('                        when ''JUROS REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_JurosRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[Classificação]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''JUROS PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_JurosPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[Classificação]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''MULTA REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_MultaRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[Classificação]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''MULTA PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_MultaPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[Classificação]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''DESC REC''  then');
                      sql.Add('                             case when isnull((select Classificacao_DescontosRC from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[Classificação]'' ');
                      sql.Add('                             end');
                      sql.add('                        when ''DESC PAG'' then');
                      sql.Add('                             case when isnull((select Classificacao_DescontosPG from Configuracao), '''') = '''' then ');
                      sql.add('                                  ''[Configuração]'' ');
                      sql.Add('                             else');
                      sql.add('                                  ''[Classificação]'' ');
                      sql.Add('                             end');
                      sql.add('                   else');
                      sql.add('                        ''[Classificação]'' ');
                      sql.add('                   end');
                      sql.add('	   return(@Retorno)');
                      sql.add('end');
                      //sql.Savetofile('c:\temp\Recriar_Contabil_Baixas_Função.sql');
                      execute;
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('');
                      sql.Add('-------------------------------------------------------------------------------------[ PROVISÃO PAGAMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('select  Numero');
                      sql.Add('       ,Classificacao = PR.Classificacao');
                      sql.Add('       ,Origem_Lan = ''Financeiro provisão - Pgto. (''+cast(PR.Numero as varchar(15))+'')'' ');
                      sql.Add('       ,Tipo_Documento = PR.Documento');
                      sql.Add('       ,PR.Data_Documento');
                      sql.Add('       ,PR.Numero_Documento');
                      sql.Add('       ,PR.Valor_Total');
                      sql.Add('       ,PR.Processo');
                      sql.Add('       ,DI                = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('       ,Beneficiario      = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.add('       ,Beneficiario_CNPJ = ISNULL(FR.CNPJ, '''')+ISNULL(FR.CPF, '''')');
                      sql.add('       ,Beneficiario_Nome = FR.Nome');
                      sql.Add('       ,PR.Observacao');
                      sql.Add('       ,CF.Provisao_Historico');
                      sql.Add('       ,Macro           = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Provisao_Historico)');
                      sql.Add('       ,Tipo_Partida    = CF.Tipo_Lancamento');
                      sql.Add('       ,Origem_ContaD   = ''Provisão Pgto ''+dbo.PegaOrigem(CF.Provisao_ContaD)');
                      sql.Add('       ,Origem_ContaC   = ''Provisão Pgto ''+dbo.PegaOrigem(CF.Provisao_ContaD)');
                      sql.Add('       ,Var_ContaD      = CF.Provisao_ContaD');
                      sql.Add('       ,Provisao_ContaD = case when CF.Provisao_ContaD = ''FORNECEDOR'' then');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_FornecedorAdiantamento');
                      sql.Add('                                         when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_FornecedorDevolucao');
                      sql.Add('                                    else');
                      sql.Add('                                         iif(FR.Pais <> ''EX'', TP.Conta_Fornecedor, TP.Conta_FornecedorExt)');
                      sql.Add('                                    end');
                      sql.Add('                               when CF.Provisao_ContaD = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                          else');
                      sql.Add('                               CF.Provisao_ContaD');
                      sql.Add('                          end');
                      sql.Add('      ,Var_ContaC      = CF.Provisao_ContaC');
                      sql.Add('      ,Provisao_ContaC = case when CF.Provisao_ContaC = ''FORNECEDOR'' then');
                      sql.Add('                                   case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_FornecedorAdiantamento');
                      sql.Add('                                        when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_FornecedorDevolucao');
                      sql.Add('                                   else');
                      sql.Add('                                        iif(FR.Pais <> ''EX'', TP.Conta_Fornecedor, TP.Conta_FornecedorExt)');
                      sql.Add('                                   end');
                      sql.Add('                              when CF.Provisao_ContaC = ''PROCESSO''   then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                         else');
                      sql.Add('                              CF.Provisao_ContaC');
                      sql.Add('                         end');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Fornecedores FR');
                      sql.Add('where Data_Documento between :pDataini AND :pDataFim');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   PR.Pago_Cliente <> 1');
                      sql.Add('and   ltrim(rtrim(isnull(CF.Provisao_ContaD, '''')+isnull(CF.Provisao_ContaC, ''''))) <> '''' ');
                      sql.Add('and   isnull(PR.Fornecedor, 0) > 0');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
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
                      sql.Add('       ,Origem_ContaD   = ''Provisão Pgto ''+dbo.PegaOrigem(CF.Provisao_ContaD)');
                      sql.Add('       ,Origem_ContaC   = ''Provisão Pgto ''+dbo.PegaOrigem(CF.Provisao_ContaD)');
                      sql.Add('       ,Var_ContaD      = CF.Provisao_ContaD');
                      sql.Add('       ,Provisao_ContaD = case when CF.Provisao_ContaD = ''FORNECEDOR'' then');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_FornecedorAdiantamento');
                      sql.Add('                                         when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_FornecedorDevolucao');
                      sql.Add('                                    else');
                      sql.Add('										                      TP.Conta_Fornecedor');
                      sql.Add('									                   end');
                      sql.Add('                               when CF.Provisao_ContaD = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                         else');
                      sql.Add('							                  CF.Provisao_ContaD');
                      sql.Add('      					          end');
                      sql.Add('       ,Var_ContaC      = CF.Provisao_ContaC');
                      sql.Add('       ,Provisao_ContaC = case when CF.Provisao_ContaC = ''FORNECEDOR'' then');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_FornecedorAdiantamento');
                      sql.Add('                                         when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_FornecedorDevolucao');
                      sql.Add('                                    else');
                      sql.Add('										                       TP.Conta_Fornecedor');
                      sql.Add('									                   end');
                      sql.Add('                              when CF.Provisao_ContaC = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                         else');
                      sql.Add('							                 CF.Provisao_ContaC');
                      sql.Add('      					          end');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceber PR, '+CompClass+' CF, TiposProcesso TP,  Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where Data_Documento between :pDataini and :pDataFim');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   PR.Pago_Cliente <> 1');
                      sql.Add('and   ltrim(rtrim(isnull(CF.Provisao_ContaD, '''')+isnull(CF.Provisao_ContaC, ''''))) <> '''' ');
                      sql.Add('and   isnull(PR.Orgao, '''') <> ''''');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
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
                      sql.Add('       ,Beneficiario      = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.add('       ,Beneficiario_CNPJ = ISNULL(FR.CNPJ, '''')+ISNULL(FR.CPF, '''')');
                      sql.add('       ,Beneficiario_Nome = FR.Nome');
                      sql.Add('       ,PR.Observacao');
                      sql.Add('       ,CF.Provisao_Historico');
                      sql.Add('       ,Macro           = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Provisao_Historico)');
                      sql.Add('       ,Tipo_Partida    = CF.Tipo_Lancamento');
                      sql.Add('       ,Origem_ContaD   = ''Provisão Pgto ''+dbo.PegaOrigem(CF.Provisao_ContaD)');
                      sql.Add('       ,Origem_ContaC   = ''Provisão Pgto ''+dbo.PegaOrigem(CF.Provisao_ContaD)');
                      sql.Add('       ,Var_ContaD      = CF.Provisao_ContaD');
                      sql.Add('       ,Provisao_ContaD = case when CF.Provisao_ContaD = ''CLIENTE'' then ');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_ClienteAdiantamento');
                      sql.Add('       						                      when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_ClienteDevolucao');
                      sql.Add('                                    else');
                      sql.Add('       							                    TP.Conta_Cliente');
                      sql.Add('       						                 end');
                      sql.Add('                                when CF.Provisao_ContaD = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                          else');
                      sql.Add('       				                 CF.Provisao_ContaD');
                      sql.Add('       					         end');
                      sql.Add('       ,Var_ContaC      = CF.Provisao_ContaC');
                      sql.Add('       ,Provisao_ContaC = case when CF.Provisao_ContaC = ''CLIENTE'' then');
                      sql.Add('                                    case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_ClienteAdiantamento');
                      sql.Add('       						                      when isnull(CF.Devolucao, 0)    = 1 then TP.Conta_ClienteDevolucao');
                      sql.Add('                                    else');
                      sql.Add('       							                    TP.Conta_Cliente');
                      sql.Add('       						                 end');
                      sql.Add('                               when CF.Provisao_ContaC = ''PROCESSO'' then case when isnull(CF.Adiantamento, 0) = 1 then TP.Conta_Adiantamento end');
                      sql.Add('                          else');
                      sql.Add('       				                CF.Provisao_ContaC');
                      sql.Add('       					         end');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Clientes FR');
                      sql.Add('where Data_Documento between :pDataini AND :pDataFim');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   PR.Pago_Cliente <> 1');
                      sql.Add('and   ltrim(rtrim(isnull(CF.Provisao_ContaD, '''')+isnull(CF.Provisao_ContaC, ''''))) <> '''' ');
                      sql.Add('and   isnull(PR.Cliente, 0) > 0');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Cliente');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('Order by Data_Documento');
                      ParamByName('pDataIni').AsDate := cDataIni.Date;
                      ParamByName('pDataFim').AsDate := cDataFim.Date;
                      //sql.SaveToFile('c:\temp\Recriar_Contabil_Provisao.sql');
                      Open;

                      Janela_Processamento.Progresso.Position := 0;
                      Janela_Processamento.Progresso.Max      := RecordCount;

                      mLote := 0;

                      First;
                      while (not Eof) and (Funcoes.Cancelado = false) do begin
                            mDescLote := 'Financeiro Provisão - '+mEmp;
                            mLote := AbreLote(FieldByName('Data_Documento').value, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, 'FPV');
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

                            VerErro(FieldByName('Provisao_ContaD').Asstring             // Conta Débito.
                                   ,FieldByName('Provisao_ContaC').Asstring             // Conta Crédito.
                                   ,FieldByName('Var_ContaD').Asstring                  // Variável parâmetrizada - Conta D.
                                   ,FieldByName('Var_ContaC').Asstring                  // Variável parâmetrizada - Conta C.
                                   ,FieldByName('Tipo_Partida').Asstring                // Tipo de partida do lançamento "D" dobrada / "M" multipla.
                                   ,FieldByName('Numero').AsString                      // Número do documento de origem.
                                   ,FieldByName('Origem_ContaD').AsString               // Origem da conta "D".
                                   ,FieldByName('Origem_ContaC').AsString               // Origem da conta "C".
                                   ,FieldByName('Classificacao').Asstring               // Origem do parâmetro (Local de parâmetrização).
                                   ,FieldByName('Beneficiario').Asstring                // Beneficário.
                                   ,FieldByName('Numero').Asstring                      // Número do documento / título de origem.
                                   ,FieldByName('Provisao_Historico').asinteger         // Código do histórico padrão.
                                   ,tEmpresas.FieldByName('Numero_Filial').asinteger    // Número da Filial.
                                   ,0                                                   // Código do banco.
                                   ,FieldByName('Modalidade').asinteger                 // Código do histórico padrão.
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
                            Janela_Processamento.lProcesso.Caption  := 'Gerando provisões do dia...'+FieldByName('Data_Documento').AsString;;
                            Application.ProcessMessages;
                      end;
                 end;
                 tEmpresas.Next;
           end;
      end;
end;

// Geração dos lançamentos do financeiro = BAIXAS SEM LOTE (PARTIDA DOBRADA).
procedure TUtilitarios_RecriarContabil.LancamentoFinanceiroBaixa;
begin
      with Dados, dmFiscal, dmContab do begin
           tEmpresas.First;
           while not tEmpresas.Eof do begin
                 mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                 mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );
                 with tPagarReceber do begin
                      sql.Clear;
                      sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                      sql.Add('');
                      sql.Add('-------------------------------------------------------------------------------------[ LIQUIDAÇÃO PAGAMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('	     ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('	     ,Observacao = PRB.Observacao');
                      sql.Add('      ,Beneficiario      = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Liquidação Pgto ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then iif(FR.Pais <> ''EX'', TP.Conta_Fornecedor, TP.Conta_FornecedorExt)');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Despesas');
                      sql.Add('                             else');
                      sql.Add('	  	   						               CF.Pagamento_Conta');
                      sql.Add('	  	   				              end');
                      sql.Add('	     ,Origem_ContaC    = ''Liquidação Pgto [Banco]'' ');
                      sql.Add('	     ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Orgao as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Liquidação Pgto ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then FR.Conta');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Despesas');
                      sql.Add('                             else');
                      sql.Add('	       						               CF.Pagamento_Conta');
                      sql.Add('	       				              end');
                      sql.Add('	     ,Origem_ContaC    = ''Liquidação Pgto [Banco]'' ');
                      sql.Add('	     ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(PR.Orgao, 0))) <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( ADIANTAMENTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro Adiantamento a Fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('	     ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Adiantamento ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then TP.Conta_FornecedorAdiantamento');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Adiantamento');
                      sql.Add('	                            else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('	     ,Origem_ContaC    = ''Adiantamento [Banco]'' ');
                      sql.Add('	     ,Var_ContaC       = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 1');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( PERMUTA ADIANTAMENTO DE CLIENTES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro permuta de adiantamento de Clientes (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Adiantamento_Numero as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Permuta ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = TP.Conta_ClienteAdiantamento');
                      sql.Add('	     ,Origem_ContaC       = ''Permuta ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE''  then TP.Conta_Cliente');
                      sql.Add('		   		                        when CF.Pagamento_Conta = ''PROCESSO'' then TP.Conta_Despesas');
                      sql.Add('        						          else');
                      sql.Add('		   						                CF.Pagamento_Conta');
                      sql.Add('		   				                end');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) <> 0');
                      sql.Add('and   isnull(PR.Permuta_Recebimento, 0) = 1');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Adiantamento_Numero');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( PERMUTA ADIANTAMENTO A FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro permuta de adiantamento a fornecedores (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('	     ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(CL.CPF,'''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Permuta ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then TP.Conta_FornecedorAdiantamento');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Despesas');
                      sql.Add('         						        else');
                      sql.Add('		    						               CF.Pagamento_Conta');
                      sql.Add('		    				              end');
                      sql.Add('	     ,Origem_ContaC    = ''Permuta [Modalidade]'' ');
                      sql.Add('	     ,Var_ContaC       = TP.Conta_FornecedorAdiantamento');
                      sql.Add('	     ,Pagamento_ContaC = TP.Conta_FornecedorAdiantamento');
                      sql.Add('      ,Modalidade       = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) <> 0');
                      sql.Add('and   isnull(PR.Permuta_Recebimento, 0) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Adiantamento_Numero');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( MULTA FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('	   ,PRB.Data');
                      sql.Add('    ,Classificacao = PR.Classificacao');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	   ,Tipo_Documento = PR.Documento');
                      sql.Add('	   ,PR.Processo');
                      sql.Add('	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	   ,PR.Data_Documento');
                      sql.Add('	   ,PR.Numero_Documento');
                      sql.Add('	   ,PR.Data_Vencimento');
                      sql.Add('	   ,Valor = PR.Multa');
                      sql.Add('	   ,PRB.Banco');
                      sql.Add('	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	   ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao = PRB.Observacao');
                      sql.Add('	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	   ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	   ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	   ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	   ,Origem_ContaD       = ''Pgto Multa [Classificação]'' ');
                      sql.Add('	   ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('    ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	   ,Origem_ContaC       = ''Pgto Multa [Banco]'' ');
                      sql.Add('	   ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	   ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( MULTA ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('	   ,PRB.Data');
                      sql.Add('    ,Classificacao = PR.Classificacao');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	   ,Tipo_Documento = PR.Documento');
                      sql.Add('	   ,PR.Processo');
                      sql.Add('	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	   ,PR.Data_Documento');
                      sql.Add('	   ,PR.Numero_Documento');
                      sql.Add('	   ,PR.Data_Vencimento');
                      sql.Add('	   ,Valor = PR.Multa');
                      sql.Add('	   ,PRB.Banco');
                      sql.Add('	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	   ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao          = PRB.Observacao');
                      sql.Add('	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('	   ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	   ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	   ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	   ,Origem_ContaD       = ''Pgto Multa [Classificação]'' ');
                      sql.Add('	   ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('    ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	   ,Origem_ContaC       = ''Pgto Multa [Banco]'' ');
                      sql.Add('	   ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	   ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
//                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( JUROS FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Juros');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Juros''+dbo.PegaOrigem(''JUROS PAG'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = ''Pgto Juros [Banco]'' ');
                      sql.Add('	     ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( JUROS ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Juros');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Juros''+dbo.PegaOrigem(''JUROS PAG'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = ''Pgto Juros [Banco]'' ');
                      sql.Add('	     ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( DESCONTOS FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('	   ,PRB.Data');
                      sql.Add('    ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	   ,Tipo_Documento = PR.Documento');
                      sql.Add('	   ,PR.Processo');
                      sql.Add('	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	   ,PR.Data_Documento');
                      sql.Add('	   ,PR.Numero_Documento');
                      sql.Add('	   ,PR.Data_Vencimento');
                      sql.Add('	   ,Valor = PR.Desconto');
                      sql.Add('	   ,PRB.Banco');
                      sql.Add('	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	   ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao = PRB.Observacao');
                      sql.Add('	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	   ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	   ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	   ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	   ,Origem_ContaD       = ''Pgto Desc Rec ''+dbo.PegaOrigem(''DESC REC'')');
                      sql.Add('	   ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	   ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	   ,Origem_ContaC       = ''Pgto Desc Rec [Banco]'' ');
                      sql.Add('	   ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	   ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( DESCONTOS ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('	   ,PRB.Data');
                      sql.Add('    ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	   ,Tipo_Documento = PR.Documento');
                      sql.Add('	   ,PR.Processo');
                      sql.Add('	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	   ,PR.Data_Documento');
                      sql.Add('	   ,PR.Numero_Documento');
                      sql.Add('	   ,PR.Data_Vencimento');
                      sql.Add('	   ,Valor = PR.Desconto');
                      sql.Add('	   ,PRB.Banco');
                      sql.Add('	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	   ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao          = PRB.Observacao');
                      sql.Add('	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('	   ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	   ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	   ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	   ,Origem_ContaD       = ''Pgto Desc Rec ''+dbo.PegaOrigem(''DESC REC'')');
                      sql.Add('	   ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	   ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	   ,Origem_ContaC       = ''Pgto Desc Rec [Banco]'' ');
                      sql.Add('	   ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	   ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo  = ''P''');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( FECHAMENTO DE CÂMBIO )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	    ,Data = cast(PRB.Data as date)');
                      sql.Add('     ,Classificacao = PR.Classificacao');
                      sql.Add('     ,Origem_Lan = ''Financeiro liquidação - Fechamento de câmbio (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	    ,Tipo_Documento = PR.Documento');
                      sql.Add('	    ,PR.Processo');
                      sql.Add('	    ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	    ,PR.Data_Documento');
                      sql.Add('	    ,PR.Numero_Documento');
                      sql.Add('	    ,PR.Data_Vencimento');
                      sql.Add('     ,Valor = iif(PR.Valor_Total < Valor_Parcela, PR.Valor_Total, Valor_Parcela)');
                      sql.Add('	    ,PRB.Banco');
                      sql.Add('	    ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	    ,PR.Transferencia_Banco');
                      sql.Add('     ,Observacao = PRB.Observacao');
                      sql.Add('	    ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	    ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('	    ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	    ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	    ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	    ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	    ,Origem_ContaD       = ''Fechamento Câmbio ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	    ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	    ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then iif(FR.Pais <> ''EX'', TP.Conta_Fornecedor, TP.Conta_FornecedorExt)');
                      sql.Add('                                 when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Despesas');
                      sql.Add('        						         else');
                      sql.Add('		   						                CF.Pagamento_Conta');
                      sql.Add('		   				               end');
                      sql.Add('	    ,Origem_ContaC    = ''Fechamento Câmbio [Banco]'' ');
                      sql.Add('	    ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	    ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('     ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 1');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( VARIAÇÃO CÂMBIAL ATIVA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	    ,Data = cast(PRB.Data as date)');
                      sql.Add('     ,Classificacao = PR.Classificacao');
                      sql.Add('     ,Origem_Lan = ''Financeiro liquidação - Variação câmbial "Ativa" (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	    ,Tipo_Documento = PR.Documento');
                      sql.Add('	    ,PR.Processo');
                      sql.Add('	    ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	    ,PR.Data_Documento');
                      sql.Add('	    ,PR.Numero_Documento');
                      sql.Add('	    ,PR.Data_Vencimento');
                      sql.Add('     ,Valor = PR.Desconto');
                      sql.Add('	    ,PRB.Banco');
                      sql.Add('	    ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	    ,PR.Transferencia_Banco');
                      sql.Add('     ,Observacao = PRB.Observacao');
                      sql.Add('	    ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	    ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('	    ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	    ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	    ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	    ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	    ,Origem_ContaD       = ''Câmbio Var Ativa [Banco]'' ');
                      sql.Add('	    ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('     ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	    ,Origem_ContaC       = ''Câmbio Var Ativa [Classificação]'' ');
                      sql.Add('	    ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('	    ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('     ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0)      > 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 1');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
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
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('      ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('      ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('      ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('      ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('      ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Câmbio Var Passiva [Classificação]'' ');
                      sql.Add('      ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = ''Câmbio Var Passiva [Banco]'' ');
                      sql.Add('      ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0)         > 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 1');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_CambioVarPassiva from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( TRASFERÊNCIA BANCÁRIA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro - Transferência Bancária (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('      ,Valor = PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = PRB.Observacao');
                      sql.Add('      ,Beneficiario        = '+quotedstr(mBene+'F')+'+cast((select Conta_Fornecedor from '+CompBancos+' where Codigo = PR.Transferencia_Banco) as varchar(10))');
                      sql.Add('      ,Beneficiario_CNPJ   = (SELECT ISNULL(CNPJ, '''') FROM Fornecedores WHERE(Codigo = (select Conta_Fornecedor from '+CompBancos+' where Codigo = PR.Transferencia_Banco)))');
                      sql.Add('      ,Beneficiario_Nome   = (SELECT Nome FROM Fornecedores WHERE(Codigo = (select Conta_Fornecedor from '+CompBancos+' where Codigo = PR.Transferencia_Banco)))');
                      sql.Add('	     ,Pagamento_Historico = (select Historico from '+CompBancos+' where Codigo = PR.Transferencia_Banco)');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Transf Bancaria[Banco]'' ');
                      sql.Add('	     ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PR.Transferencia_Banco)');
                      sql.Add('      ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PR.Transferencia_Banco)');
                      sql.Add('	     ,Origem_ContaC       = ''Transf Bancaria[Banco]'' ');
                      sql.Add('	     ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Transferencia, 0) = 1');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');

                      sql.Add('-------------------------------------------------------------------------------------[ LIQUIDAÇÃO RECEBIMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	    ,Data = cast(PRB.Data as date)');
                      sql.Add('     ,Classificacao = PR.Classificacao');
                      sql.Add('	    ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	    ,Tipo_Documento = PR.Documento');
                      sql.Add('	    ,PR.Processo');
                      sql.Add('	    ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	    ,PR.Data_Documento');
                      sql.Add('	    ,PR.Numero_Documento');
                      sql.Add('	    ,PR.Data_Vencimento');
                      sql.Add('	    ,PRB.Valor');
                      sql.Add('	    ,PRB.Banco');
                      sql.Add('	    ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	    ,PR.Transferencia_Banco');
                      sql.Add('     ,Observacao = PRB.Observacao');
                      sql.Add('	    ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('	    ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(CL.CPF,'''')');
                      sql.Add('	    ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	    ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	    ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	    ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	    ,Origem_ContaD       = ''Receb Cliente [Banco]'' ');
                      sql.Add('	    ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	    ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	    ,Origem_ContaC       = ''Receb Cliente ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	    ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('	    ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE''  then TP.Conta_Cliente');
                      sql.Add('		   				 	                  when CF.Pagamento_Conta = ''PROCESSO'' then TP.Conta_Despesas');
                      sql.Add('        			 	             else');
                      sql.Add('		   				 	                  CF.Pagamento_Conta');
                      sql.Add('		   				               end');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( ADIANTAMENTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro Adiantamento de Clientes (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('	     ,Observacao          = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Receb Cliente [Banco]'' ');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD  = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Origem_ContaC     = ''Receb Cliente ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaC        = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE''      then TP.Conta_ClienteAdiantamento');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''     then TP.Conta_Adiantamento');
                      sql.Add('                                  when CF.Pagamento_Conta = ''ADIANTAMENTO'' then TP.Conta_ClienteAdiantamento');
                      sql.Add('                             else');
                      sql.Add('                                  CF.Pagamento_Conta');
                      sql.Add('                             end');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR, '+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 1');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( PERMUTA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro permuta de adiantamento (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,PRB.Valor');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao          = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Permuta ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''CLIENTE''  then TP.Conta_ClienteAdiantamento');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO'' then TP.Conta_Adiantamento');
                      sql.Add('      						            else');
                      sql.Add('								                   CF.Pagamento_Conta');
                      sql.Add('						                  end');
                      sql.Add('	     ,Origem_ContaC    = ''Pgto Permuta [Banco]'' ');
                      sql.Add('	     ,Var_ContaC       = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaC = TP.Conta_Cliente');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) <> 0');
                      sql.Add('and   PR.Numero                   = PRB.Numero');
                      sql.Add('and   CF.Codigo                   = PR.Classificacao');
                      sql.Add('and   CL.Codigo                   = PR.Cliente');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( MULTA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('  	   ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa recebida (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('  	   ,Tipo_Documento = PR.Documento');
                      sql.Add('  	   ,PR.Processo');
                      sql.Add('  	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('  	   ,PR.Data_Documento');
                      sql.Add('  	   ,PR.Numero_Documento');
                      sql.Add('  	   ,PR.Data_Vencimento');
                      sql.Add('  	   ,Valor = PR.Multa');
                      sql.Add('  	   ,PRB.Banco');
                      sql.Add('  	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('  	   ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('  	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('  	   ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('  	   ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('  	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('  	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('  	   ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Receb Multa ''+dbo.PegaOrigem(''MULTA REC'')');
                      sql.Add('  	   ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('  	   ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('  	   ,Origem_ContaC       = ''Receb Multa [Banco]'' ');
                      sql.Add('  	   ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('  	   ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( JUROS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros Recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Juros');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Receb Juros ''+dbo.PegaOrigem(''JUROS REC'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = ''Receb Juros [Banco]'' ');
                      sql.Add('	     ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero                   = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( DESCONTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('    	 ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Descontos Concedidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('    	 ,Tipo_Documento = PR.Documento');
                      sql.Add('    	 ,PR.Processo');
                      sql.Add('    	 ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('    	 ,PR.Data_Documento');
                      sql.Add('    	 ,PR.Numero_Documento');
                      sql.Add('    	 ,PR.Data_Vencimento');
                      sql.Add('    	 ,Valor = PR.Desconto');
                      sql.Add('    	 ,PRB.Banco');
                      sql.Add('    	 ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('    	 ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('    	 ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('    	 ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('    	 ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('    	 ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('    	 ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('    	 ,Tipo_Partida        = CF.Tipo_Lancamento');
                      sql.Add('	     ,Origem_ContaD       = ''Desc Concedido''+dbo.PegaOrigem(''DESC PAG'')');
                      sql.Add('    	 ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('    	 ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = ''Desc Concedido [Banco]''');
                      sql.Add('    	 ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    	 ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Modalidade = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) = 0');
                      sql.Add('and   PR.Tipo = ''R''');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('order  by Data');
                      ParamByName('pDataIni').AsDate := cDataIni.Date;
                      ParamByName('pDataFim').AsDate := cDataFim.Date;
                      //sql.SaveToFile('c:\temp\Recriar_Contabil_Baixa.sql');
                      Open;

                      Janela_Processamento.Progresso.Position := 0;
                      Janela_Processamento.Progresso.Max      := RecordCount;

                      mLote := 0;

                      First;
                      while (not Eof) and (Funcoes.Cancelado = false) do begin
                            mDescLote := 'Financeiro Liquidação - '+mEmp;
                            mLote := AbreLote(FieldByName('Data').value, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, 'FBX');
                            mLanc := UltimoLanc(FieldByName('Data').value, Empresas.FieldByName('CNPJ').asstring, mLote);
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
                                   ,FieldByName('Pagamento_Historico').asinteger        // Código do histórico padrão.
                                   ,tEmpresas.FieldByName('Numero_Filial').asinteger    // Número da Filial.
                                   ,FieldByName('Banco').asinteger                      // Código do banco.
                                   ,FieldByName('Modalidade').asinteger                 // Código do tipo de processo.
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
                            Janela_Processamento.lProcesso.Caption  := 'Gerando liquidações do dia...'+tPagarReceber.FieldByName('Data').AsString+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, ' MATRIZ', ' FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                            Application.ProcessMessages;
                      end;
                 end;

                 tEmpresas.next;
           end;
      end;
end;

// Geração dos lançamentos do financeiro = BAIXAS COM LOTE (PARTIDA MULTIPLA).
procedure TUtilitarios_RecriarContabil.LancamentoFinanceiroBaixaLt;
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
                      sql.Add('');
                      sql.Add('-----------------------------------------------------------------------------[ LIQUIDAÇÃO PAGAMENTOS MULTIPLOS - LOTE ]--------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('	     ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = (PRB.Valor-PRB.Juros-PRB.Multa+PRB.Desconto)');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('	     ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')+isnull(FR.CPF,'''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Lote ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then iif(FR.Pais <> ''EX'', TP.Conta_Fornecedor, TP.Conta_FornecedorExt)');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Despesas');
                      sql.Add('                             else');
                      sql.Add('	  	   						               CF.Pagamento_Conta');
                      sql.Add('	  	   				              end');
                      sql.Add('	     ,Origem_ContaC    = '''' ');
                      sql.Add('	     ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade       = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, TiposProcesso TP, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( ORGÃOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = (PRB.Valor-PRB.Juros-PRB.Multa+PRB.Desconto)');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = ''F''+ltrim(rtrim(cast(PR.Orgao as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Lote ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = case when CF.Pagamento_Conta = ''FORNECEDOR'' then FR.Conta');
                      sql.Add('                                  when CF.Pagamento_Conta = ''PROCESSO''   then TP.Conta_Despesas');
                      sql.Add('                             else');
                      sql.Add('	       						               CF.Pagamento_Conta');
                      sql.Add('	       				              end');
                      sql.Add('	     ,Origem_ContaC    = '''' ');
                      sql.Add('	     ,Var_ContaC       = '''' ');
                      sql.Add('      ,Pagamento_ContaC = '''' ');
                      sql.Add('      ,Lote_Baixa       = PRB.Lote ');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, TiposProcesso TP, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   ltrim(rtrim(isnull(PR.Orgao, 0))) <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( MULTA FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Multa');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Multa''+dbo.PegaOrigem(''MULTA PAG'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = '''' ');
                      sql.Add('	     ,Var_ContaC          = '''' ');
                      sql.Add('	     ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( MULTA ORGÃO PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_MultaPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa paga (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Multa');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Multa''+dbo.PegaOrigem(''MULTA PAG'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.add('      ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = '''' ');
                      sql.Add('	     ,Var_ContaC          = '''' ');
                      sql.Add('	     ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
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
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Juros');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Juros''+dbo.PegaOrigem(''JUROS PAG'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = '''' ');
                      sql.Add('	     ,Var_ContaC          = '''' ');
                      sql.Add('	     ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( JUROS ORGÂOS PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros pagos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Juros');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Pgto Juros''+dbo.PegaOrigem(''JUROS PAG'')');
                      sql.Add('	     ,Var_ContaD          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaD    = CF.Pagamento_Conta');
                      sql.Add('	     ,Origem_ContaC       = '''' ');
                      sql.Add('	     ,Var_ContaC          = '''' ');
                      sql.Add('	     ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');
                      sql.Add('-----------( DESCONTOS FORNECEDORES )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('	   ,PRB.Data');
                      sql.Add('    ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	   ,Tipo_Documento = PR.Documento');
                      sql.Add('	   ,PR.Processo');
                      sql.Add('	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	   ,PR.Data_Documento');
                      sql.Add('	   ,PR.Numero_Documento');
                      sql.Add('	   ,PR.Data_Vencimento');
                      sql.Add('	   ,Valor = PR.Desconto');
                      sql.Add('	   ,PRB.Banco');
                      sql.Add('	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	   ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao = PRB.Observacao');
                      sql.Add('	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Fornecedor as varchar(10))))');
                      sql.Add('	   ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	   ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	   ,Tipo_Partida        = ''M'' ');
                      sql.Add('	   ,Origem_ContaD       = '''' ');
                      sql.Add('	   ,Var_ContaD          = '''' ');
                      sql.Add('	   ,Pagamento_ContaD    = '''' ');
                      sql.Add('	   ,Origem_ContaC       = ''Pgto Desc Rec [Banco]'' ');
                      sql.Add('	   ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('	   ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('    ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('    ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Fornecedores FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Fornecedor, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Fornecedor');
                      sql.Add('-----------( DESCONTOS ORGÃO PÚBLICOS )----------');
                      sql.Add('union all');
                      sql.Add('select  PRB.Numero');
                      sql.Add('	   ,PRB.Data');
                      sql.Add('    ,Classificacao = (select Classificacao_DescontosRC from Configuracao)');
                      sql.Add('    ,Origem_Lan = ''Financeiro liquidação - Descontos recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	   ,Tipo_Documento = PR.Documento');
                      sql.Add('	   ,PR.Processo');
                      sql.Add('	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	   ,PR.Data_Documento');
                      sql.Add('	   ,PR.Numero_Documento');
                      sql.Add('	   ,PR.Data_Vencimento');
                      sql.Add('	   ,Valor = PR.Desconto');
                      sql.Add('	   ,PRB.Banco');
                      sql.Add('	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	   ,PR.Transferencia_Banco');
                      sql.Add('    ,Observacao = PRB.Observacao');
                      sql.Add('	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(PR.Orgao))');
                      sql.Add('	   ,Beneficiario_CNPJ   = isnull(FR.CNPJ, '''')');
                      sql.Add('	   ,Beneficiario_Nome   = FR.Nome');
                      sql.Add('	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	   ,Tipo_Partida        = ''M'' ');
                      sql.Add('	   ,Origem_ContaD       = '''' ');
                      sql.Add('	   ,Var_ContaD          = '''' ');
                      sql.Add('	   ,Pagamento_ContaD    = '''' ');
                      sql.Add('	   ,Origem_ContaC       = ''Pgto Desc Rec [Banco]'' ');
                      sql.Add('	   ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('	   ,Pagamento_ContaC    = CF.Pagamento_Conta');
                      sql.Add('    ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('    ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Cybersoft_Cadastros.dbo.OrgaosPublicos FR');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''P''');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Orgao, '''') <> '''' ');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('and   FR.Codigo = PR.Orgao');

                      sql.Add('-------------------------------------------------------------------------------------[ LIQUIDAÇÃO RECEBIMENTOS ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = PR.Classificacao');
                      sql.Add('	     ,Origem_Lan = ''Financeiro liquidação (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = (PRB.Valor-PRB.Juros-PRB.Multa+PRB.Desconto)');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')+isnull(CL.CPF,'''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = '''' ');
                      sql.Add('	     ,Var_ContaD          = '''' ');
                      sql.Add('	     ,Pagamento_ContaD    = '''' ');
                      sql.Add('	     ,Origem_ContaC       = ''Receb Cliente ''+dbo.PegaOrigem(CF.Pagamento_Conta)');
                      sql.Add('	     ,Var_ContaC          = CF.Pagamento_Conta');
                      sql.Add('	     ,Pagamento_ContaC    = case when CF.Pagamento_Conta = ''CLIENTE''  then TP.Conta_Cliente');
                      sql.Add('		    				 	                 when CF.Pagamento_Conta = ''PROCESSO'' then TP.Conta_Despesas');
                      sql.Add('         			 	            else');
                      sql.Add('		    				 	                 CF.Pagamento_Conta');
                      sql.Add('		    				              end');
                      sql.Add('      ,Lote_Baixa = PRB.Lote');
                      sql.Add('      ,Modalidade = TP.Codigo');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, TiposProcesso TP, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Cliente, 0)    > 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = PR.Classificacao');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('and   TP.Codigo = iif(PR.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = PR.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                      sql.Add('-----------( MULTA )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('  	   ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Multa recebida (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('  	   ,Tipo_Documento = PR.Documento');
                      sql.Add('  	   ,PR.Processo');
                      sql.Add('  	   ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('  	   ,PR.Data_Documento');
                      sql.Add('  	   ,PR.Numero_Documento');
                      sql.Add('  	   ,PR.Data_Vencimento');
                      sql.Add('  	   ,Valor = PR.Multa');
                      sql.Add('  	   ,PRB.Banco');
                      sql.Add('  	   ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('  	   ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('  	   ,Beneficiario        = '+quotedstr(mBene+'F')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('  	   ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('  	   ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('  	   ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('  	   ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('  	   ,Tipo_Partida        = ''M'' ');
                      sql.Add('  	   ,Origem_ContaD       = '''' ');
                      sql.Add('  	   ,Var_ContaD          = '''' ');
                      sql.Add('  	   ,Pagamento_ContaD    = '''' ');
                      sql.Add('	     ,Origem_ContaC       = ''Receb Multa ''+dbo.PegaOrigem(''MULTA REC'')');
                      sql.Add('  	   ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('  	   ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Multa, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_MultaRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( JUROS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('	     ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Juros Recebidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('	     ,Tipo_Documento = PR.Documento');
                      sql.Add('	     ,PR.Processo');
                      sql.Add('	     ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('	     ,PR.Data_Documento');
                      sql.Add('	     ,PR.Numero_Documento');
                      sql.Add('	     ,PR.Data_Vencimento');
                      sql.Add('	     ,Valor = PR.Juros');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('	     ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('	     ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('	     ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('	     ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('	     ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('	     ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = '''' ');
                      sql.Add('	     ,Var_ContaD          = '''' ');
                      sql.Add('	     ,Pagamento_ContaD    = '''' ');
                      sql.Add('	     ,Origem_ContaC       = ''Receb Juros ''+dbo.PegaOrigem(''JUROS REC'')');
                      sql.Add('	     ,Var_ContaC          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Pagamento_ContaC    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R'' ');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Juros, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0)  = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0)        = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_JurosRC from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');
                      sql.Add('-----------( DESCONTOS )----------');
                      sql.Add('union all');
                      sql.Add('select PRB.Numero');
                      sql.Add('    	 ,PRB.Data');
                      sql.Add('      ,Classificacao = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('      ,Origem_Lan = ''Financeiro liquidação - Descontos Concedidos (''+cast(PRB.Numero as varchar(15))+'')'' ');
                      sql.Add('    	 ,Tipo_Documento = PR.Documento');
                      sql.Add('    	 ,PR.Processo');
                      sql.Add('    	 ,DI = case when isnull(PR.Processo, '''') <> '''' then (select distinct Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = PR.Processo) end');
                      sql.Add('    	 ,PR.Data_Documento');
                      sql.Add('    	 ,PR.Numero_Documento');
                      sql.Add('    	 ,PR.Data_Vencimento');
                      sql.Add('    	 ,Valor = PR.Desconto');
                      sql.Add('    	 ,PRB.Banco');
                      sql.Add('    	 ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('    	 ,PR.Transferencia_Banco');
                      sql.Add('      ,Observacao = PRB.Observacao');
                      sql.Add('    	 ,Beneficiario        = '+quotedstr(mBene+'C')+'+ltrim(rtrim(cast(PR.Cliente as varchar(10))))');
                      sql.Add('    	 ,Beneficiario_CNPJ   = isnull(CL.CNPJ, '''')');
                      sql.Add('    	 ,Beneficiario_Nome   = CL.Nome');
                      sql.Add('    	 ,Pagamento_Historico = CF.Pagamento_Historico');
                      sql.Add('    	 ,Macro               = (select Macro from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = CF.Pagamento_Historico)');
                      sql.Add('    	 ,Tipo_Partida        = ''M'' ');
                      sql.Add('	     ,Origem_ContaD       = ''Receb Descontos ''+dbo.PegaOrigem(''DESC PAG'')');
                      sql.Add('    	 ,Var_ContaD          = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    	 ,Pagamento_ContaD    = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('    	 ,Origem_ContaC       = '''' ');
                      sql.Add('    	 ,Var_ContaC          = '''' ');
                      sql.Add('    	 ,Pagamento_ContaC    = '''' ');
                      sql.Add('      ,Lote_Baixa          = PRB.Lote ');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB, PagarReceber PR,'+CompClass+' CF, Clientes CL');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PR.Tipo = ''R''');
                      sql.Add('and   (select isnull(Pago_Cliente, 0) from PagarReceber pr2 where pr2.Numero = PRB.Numero) = 0');
                      sql.Add('and   isnull(PR.Desconto, 0) > 0');
                      sql.Add('and   isnull(PR.Cliente, 0) <> 0');
                      sql.Add('and   isnull(CF.Adiantamento, 0) = 0');
                      sql.Add('and   isnull(CF.Transferencia, 0) = 0');
                      sql.Add('and   isnull(CF.Cambio, 0) = 0');
                      sql.Add('and   isnull(PR.Adiantamento_Numero, 0) = 0');
                      sql.Add('and   PR.Numero = PRB.Numero');
                      sql.Add('and   CF.Codigo = (select Classificacao_DescontosPG from Configuracao)');
                      sql.Add('and   CL.Codigo = PR.Cliente');

                      sql.Add('---------------------------------------------------------------------------[ LIQUIDAÇÃO PAGAMENTOS LOTES - TOTAL ]-------------------------------------------------------------------------');
                      sql.Add('-----------( FORNECEDORES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select Numero = null');
                      sql.Add('	     ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = ''DIVERSOS'' ');
                      sql.Add('	     ,Origem_Lan = ''Financeiro liquidação (Pagamentos Diversos)'' ');
                      sql.Add('      ,Tipo_Documento = ''DIVERSOS'' ');
                      sql.Add('	     ,Processo = null');
                      sql.Add('	     ,DI = null');
                      sql.Add('	     ,Data_Documento = null');
                      sql.Add('	     ,Numero_Documento = ''DIVERSOS'' ');
                      sql.Add('	     ,Data_Vencimento = null');
                      sql.Add('	     ,Valor = sum(PRB.Valor)');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,Transferencia_Banco = null');
                      sql.Add('	     ,Observacao = null');
                      sql.Add('	     ,Beneficiario      = null');
                      sql.Add('	     ,Beneficiario_CNPJ = null');
                      sql.Add('	     ,Beneficiario_Nome = null');
                      sql.Add('	     ,Pagamento_Historico = 0');
                      sql.Add('      ,Macro               = ''VLR.PAGAMENTOS DIVERSOS NESTA DATA'' ');
                      sql.Add('	     ,Tipo_Partida     = ''M'' ');
                      sql.Add('	     ,Origem_ContaD    = null');
                      sql.Add('	     ,Var_ContaD       = null');
                      sql.Add('	     ,Pagamento_ContaD = null');
                      sql.Add('      ,Origem_ContaC    = ''RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaC       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaC = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,PRB.Lote');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PRB.Tipo = ''P'' ');
                      sql.Add('group by Tipo, Data, Lote, Banco');
                      sql.Add('------------------------------------------------------------------------------------[ LIQUIDAÇÃO RECEBIMENTOS LOTES - TOTAL ]-----------------------------------------------------------------------------------');
                      sql.Add('-----------( CLIENTES DIVERSOS )----------');
                      sql.Add('union all');
                      sql.Add('select Numero = null');
                      sql.Add('      ,Data = cast(PRB.Data as date)');
                      sql.Add('      ,Classificacao = ''DIVERSOS'' ');
                      sql.Add('	     ,Origem_Lan = ''Financeiro liquidação (Recebimentos Diversos)'' ');
                      sql.Add('      ,Tipo_Documento = ''DIVERSOS'' ');
                      sql.Add('	     ,Processo = null');
                      sql.Add('	     ,DI = null');
                      sql.Add('	     ,Data_Documento = null');
                      sql.Add('	     ,Numero_Documento = ''DIVERSOS'' ');
                      sql.Add('	     ,Data_Vencimento = null');
                      sql.Add('	     ,Valor = sum(PRB.Valor)');
                      sql.Add('	     ,PRB.Banco');
                      sql.Add('	     ,Banco_Nome = (select Nome from '+CompBancos+' where Bancos.Codigo = PRB.Banco)');
                      sql.Add('	     ,Transferencia_Banco = null');
                      sql.Add('	     ,Observacao = null');
                      sql.Add('	     ,Beneficiario      = null');
                      sql.Add('	     ,Beneficiario_CNPJ = null');
                      sql.Add('	     ,Beneficiario_Nome = null');
                      sql.Add('	     ,Pagamento_Historico = 0');
                      sql.Add('      ,Macro               = ''VLR.RECEBIMENTOS DIVERSOS NESTA DATA'' ');
                      sql.Add('	     ,Tipo_Partida     = ''M'' ');
                      sql.Add('      ,Origem_ContaD    = ''RECEB [Banco]'' ');
                      sql.Add('      ,Var_ContaD       = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('      ,Pagamento_ContaD = (select Plano_Contas from '+CompBancos+' where Codigo = PRB.Banco)');
                      sql.Add('	     ,Origem_ContaC    = null');
                      sql.Add('	     ,Var_ContaC       = null');
                      sql.Add('	     ,Pagamento_ContaC = null');
                      sql.Add('      ,PRB.Lote');
                      sql.Add('      ,Modalidade          = 0');
                      sql.Add('from  PagarReceberBaixas PRB');
                      sql.Add('where PRB.Data between :pDataIni and :pDataFim');
                      sql.Add('and   isnull(PRB.Lote, 0) <> 0');
                      sql.Add('and   PRB.Tipo = ''R'' ');
                      sql.Add('group by Tipo, Data, Lote, Banco');
                      sql.Add('order by Data, Lote_Baixa');
                      ParamByName('pDataIni').AsDate := cDataIni.Date;
                      ParamByName('pDataFim').AsDate := cDataFim.Date;
                      //sql.SaveToFile('c:\temp\Recriar_Contabil_Baixa_Lote.sql');
                      Open;

                      Janela_Processamento.Progresso.Position := 0;
                      Janela_Processamento.Progresso.Max      := RecordCount;

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
                                                          ,FieldByName('Tipo_Documento').AsString      // Tipo do documento
                                                          ,FieldByName('Numero_Documento').AsString    // Número do documento
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
                                   ,FieldByName('Pagamento_Historico').asinteger         // Código do histórico padrão.
                                   ,tEmpresas.FieldByName('Numero_Filial').asinteger     // Número da Filial.
                                   ,FieldByName('Banco').asinteger                       // Código do banco.
                                   ,FieldByName('Modalidade').asinteger                  // Código do tipo de processo.
                                   );

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

                 tEmpresas.Next;
           end;
      end;
end;

// Geração dos lançamentos contabeis da nota fiscal de emissão própria.
procedure TUtilitarios_RecriarContabil.LancamentoNFPropria;
var
   i: integer;
   mOrig: TStringList;
   mDif: real;
begin
     with Dados, tNotas do begin
          tEmpresas.First;
          while not tEmpresas.Eof do begin
                mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );

                sql.Clear;
                sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                sql.Add('------------------------------------------------------[ DELETE A FUNÇÃO CASO JA EXISTA ]------------------------------------------------------------');
                sql.Add('if (select count(*) from sys.objects where type = ''FN'' and name = ''PegaConta'') > 0 begin');
                sql.Add('    drop function dbo.PegaConta');
                sql.Add('end');
                execute;
                sql.Clear;
                sql.Add('--------------------------------------------[ CRIA A FUNÇÃO QUE CONVERTE VARIAVEIS EM CONTA CONTABIL ]------------------------------------------------');
                sql.add('create function PegaConta(@Var varchar(15), @Processo varchar(15), @Saida_Entrada smallint)');
                sql.add('returns varchar(15)');
                sql.add('begin');
                sql.add('    declare @Retorno varchar(15)');
                sql.add('    declare @Modal smallint');
                sql.Add('    set @Modal = iif(@Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = @Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0))');
                sql.add('    set @Retorno = case @Var');
                sql.add('                        when ''CLIENTE''    then (select Conta_Cliente      from TiposProcesso where Codigo = @Modal)');
                sql.add('                        when ''FORNECEDOR'' then (select Conta_Fornecedor   from TiposProcesso where Codigo = @Modal)');
                sql.add('                        when ''PROCESSO''   then (select Conta_Despesas     from TiposProcesso where Codigo = @Modal)');
                sql.add('                        when ''PROCESSOIM'' then (select Conta_Impostos     from TiposProcesso where Codigo = @Modal)');
                sql.add('                        when ''PROCESSOAD'' then (select Conta_Adiantamento from TiposProcesso where Codigo = @Modal)');
                sql.add('                        when ''DEVOLUÇÃO''  then iif(@Saida_Entrada = 0, (select Conta_FornecedorDevolucao from TiposProcesso where Codigo = @Modal), (select Conta_ClienteDevolucao from TiposProcesso where Codigo = @Modal))');
                sql.add('                   else');
                sql.add('                        @Var');
                sql.add('                   end');
                sql.add('	   return(@Retorno)');
                sql.add('end');
                //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Propria_Função.sql');
                execute;

                sql.Clear;
                sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                sql.Add('');
                sql.add('select NF.Tipo_Nota');
                sql.add('      ,NF.Numero');
                sql.add('      ,Emissao = Data_Emissao');
                sql.add('      ,NF.Saida_Entrada');
                sql.add('      ,Beneficiario = case when NF.Saida_Entrada = 0 and isnull(NF.Devolucao, 0) = 0 then '+quotedstr(mBene+'F')+'+cast(Fornecedor_Codigo as varchar(10))');
                sql.add('                           when NF.Saida_Entrada = 0 and isnull(NF.Devolucao, 0) = 1 then '+quotedstr(mBene+'C')+'+');
                sql.Add('                                  cast((select Cliente_Codigo from NotasFiscais NF2 where NF2.NFe_cNF = (select distinct Nota_Referencia from NotasItens NI where NI.Nota = NF.Numero and NI.Data = NF.Data_Emissao) ) as varchar(10))');
                sql.add('                           when NF.Saida_Entrada = 1 and isnull(NF.Devolucao, 0) = 0 then '+quotedstr(mBene+'C')+'+cast(Cliente_Codigo as varchar(10))');
                sql.add('                           when NF.Saida_Entrada = 1 and isnull(NF.Devolucao, 0) = 1 then '+quotedstr(mBene+'F')+'+');
                sql.add('                                  cast((select Fornecedor_Codigo from NotasFiscais NF2 where NF2.NFe_cNF = (select distinct Nota_Referencia from NotasItens NI where NI.Nota = NF.Numero and NI.Data = NF.Data_Emissao) ) as varchar(10))');
                sql.add('                      end');
                sql.add('      ,Beneficiario_CNPJ = Destinatario_CNPJ_CPF');
                sql.add('      ,Beneficiario_Nome = Destinatario_Nome');
                sql.add('      ,NF.Processo');
                sql.add('      ,NF.DI');
                sql.add('      ,Origem_Lan = iif(NF.Saida_Entrada = 0, ''NF ENTRADA'', ''NF SAÍDA'')+'' [Tipo Nota ''+cast(NF.Tipo_Nota as varchar(5))+'']'' ');
                sql.add('      --------------------------------------------------------------[ ICMS OPERACIONAL ]------------------------------------------------------------');
                sql.add('      ,NF.Valor_ICMS');
                sql.add('      ,VarICMS_D   = TN.Conta_ICMSOper_D');
                sql.add('      ,VarICMS_C   = TN.Conta_ICMSOper_C');
                sql.add('      ,HistICMS    = TN.Historico_ICMSOper');
                sql.add('      ,MacroICMS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSOper)');
                sql.add('      ,ContaICMS_D = dbo.PegaConta(TN.Conta_ICMSOper_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaICMS_C = dbo.PegaConta(TN.Conta_ICMSOper_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      --------------------------------------------------------------------[ ICMS ST ]----------------------------------------------------------------');
                sql.add('      ,Valor_ICMSST  = ValorICMS_Substitutivo');
                sql.add('      ,VarICMSST_D   = TN.Conta_ICMSSub_D ');
                sql.add('      ,VarICMSST_C   = TN.Conta_ICMSSub_C ');
                sql.add('      ,HistICMSST    = Historico_ICMSSub ');
                sql.add('      ,MacroICMSST   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSSub )');
                sql.add('      ,ContaICMSST_D = dbo.PegaConta(TN.Conta_ICMSSub_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaICMSST_C = dbo.PegaConta(TN.Conta_ICMSSub_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      -------------------------------------------------------------------[ DESPESAS ]----------------------------------------------------------------');
                sql.add('      ,Valor_Despesas  = Valor_OutrasDespesas');
                sql.add('      ,VarDespesas_D   = Conta_Despesas_D ');
                sql.add('      ,VarDespesas_C   = Conta_Despesas_C ');
                sql.add('      ,HistDespesas    = Historico_Despesas ');
                sql.add('      ,MacroDespesas   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Despesas )');
                sql.add('      ,ContaDespesas_D = dbo.PegaConta(TN.Conta_Despesas_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaDespesas_C = dbo.PegaConta(TN.Conta_Despesas_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ----------------------------------------------------------------------[ II ]------------------------------------------------------------------');
                sql.add('      ,Valor_II  = Valor_TotalII');
                sql.add('      ,VarII_D   = TN.Conta_II_D ');
                sql.add('      ,VarII_C   = TN.Conta_II_C ');
                sql.add('      ,HistII    = Historico_II ');
                sql.add('      ,MacroII   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_II )');
                sql.add('      ,ContaII_D = case when TN.Conta_II_D = ''CLIENTE''    then TP.Conta_Cliente');
                sql.add('                        when TN.Conta_II_D = ''FORNECEDOR'' then TP.Conta_FornecedorDevolucao');
                sql.add('                        when TN.Conta_II_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_II_D end');
                sql.add('      ,ContaII_C = case when TN.Conta_II_C = ''CLIENTE''    then TP.Conta_Cliente');
                sql.add('                        when TN.Conta_II_C = ''FORNECEDOR'' then TP.Conta_FornecedorDevolucao');
                sql.add('                        when TN.Conta_II_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_II_C end');
                sql.add('      ----------------------------------------------------------------------[ IPI ]-----------------------------------------------------------------');
                sql.add('      ,Valor_IPI  = Valor_TotalIPI');
                sql.add('      ,VarIPI_D   = TN.Conta_IPI_D ');
                sql.add('      ,VarIPI_C   = TN.Conta_IPI_C ');
                sql.add('      ,HistIPI    = Historico_IPI ');
                sql.add('      ,MacroIPI   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_IPI )');
                sql.add('      ,ContaIPI_D = dbo.PegaConta(TN.Conta_IPI_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaIPI_C = dbo.PegaConta(TN.Conta_IPI_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ----------------------------------------------------------------------[ PIS ]-----------------------------------------------------------------');
                sql.add('      ,Valor_PIS');
                sql.add('      ,VarPIS_D   = TN.Conta_PIS_D ');
                sql.add('      ,VarPIS_C   = TN.Conta_PIS_C ');
                sql.add('      ,HistPIS    = Historico_PIS ');
                sql.add('      ,MacroPIS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_PIS )');
                sql.add('      ,ContaPIS_D = dbo.PegaConta(TN.Conta_PIS_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaPIS_C = dbo.PegaConta(TN.Conta_PIS_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ---------------------------------------------------------------------[ COFINS ]---------------------------------------------------------------');
                sql.add('      ,Valor_COFINS');
                sql.add('      ,VarCOFINS_D   = TN.Conta_COFINS_D ');
                sql.add('      ,VarCOFINS_C   = TN.Conta_COFINS_C ');
                sql.add('      ,HistCOFINS    = Historico_COFINS ');
                sql.add('      ,MacroCOFINS   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_COFINS )');
                sql.add('      ,ContaCOFINS_D = dbo.PegaConta(TN.Conta_COFINS_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaCOFINS_C = dbo.PegaConta(TN.Conta_COFINS_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ----------------------------------------------------------------------[ FRETE ]---------------------------------------------------------------');
                sql.add('      ,Valor_Frete = Total_Frete');
                sql.add('      ,VarFrete_D   = TN.Conta_Frete_D ');
                sql.add('      ,VarFrete_C   = TN.Conta_Frete_C ');
                sql.add('      ,HistFrete    = Historico_Frete ');
                sql.add('      ,MacroFrete   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Frete )');
                sql.add('      ,ContaFrete_D = dbo.PegaConta(TN.Conta_Frete_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaFrete_C = dbo.PegaConta(TN.Conta_Frete_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ---------------------------------------------------------------------[ SEGURO ]---------------------------------------------------------------');
                sql.add('      ,Valor_Seguro');
                sql.add('      ,VarSeguro_D   = TN.Conta_Seguro_D ');
                sql.add('      ,VarSeguro_C   = TN.Conta_Seguro_C ');
                sql.add('      ,HistSeguro    = Historico_Seguro ');
                sql.add('      ,MacroSeguro   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Seguro )');
                sql.add('      ,ContaSeguro_D = dbo.PegaConta(TN.Conta_Seguro_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaSeguro_C = dbo.PegaConta(TN.Conta_Seguro_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ---------------------------------------------------------------------[ ESTOQUE ]--------------------------------------------------------------');
                sql.add('      ,Valor_Estoque  = case when NF.Saida_Entrada = 0 then');
                sql.add('                             Valor_Inventario');
                sql.add('                        else');
                sql.add('                            (select sum(isnull(Total_Saida, 0)) from FichaEstoque FE where FE.Nota = NF.Numero and FE.Data = NF.Data_Emissao');
                sql.add('                                    and Codigo in((select Codigo_Mercadoria from NotasItens NI where NI.Nota = NF.Numero and NI.Data = NF.Data_Emissao)))');
                sql.add('                        end');
                sql.add('      ,VarEstoque_D   = TN.Conta_Estoque_D ');
                sql.add('      ,VarEstoque_C   = TN.Conta_Estoque_C ');
                sql.add('      ,HistEstoque    = Historico_Estoque ');
                sql.add('      ,MacroEstoque   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Estoque )');
                sql.add('      ,ContaEstoque_D = dbo.PegaConta(TN.Conta_Estoque_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaEstoque_C = dbo.PegaConta(TN.Conta_Estoque_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ------------------------------------------------------------------[ TOTAL PRODUTOS ]-----------------------------------------------------------');
                sql.add('      ,Valor_Produtos  = Valor_TotalProdutos');
                sql.add('      ,VarProdutos_D   = TN.Conta_TotalProdutos_D ');
                sql.add('      ,VarProdutos_C   = TN.Conta_TotalProdutos_C ');
                sql.add('      ,HistProdutos    = Historico_TotalProdutos ');
                sql.add('      ,MacroProdutos   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalProdutos )');
                sql.add('      ,ContaProdutos_D = dbo.PegaConta(TN.Conta_TotalProdutos_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaProdutos_C = dbo.PegaConta(TN.Conta_TotalProdutos_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ---------------------------------------------------------------------[ TOTAL NOTA ]------------------------------------------------------------');
                sql.add('      ,Valor_TotalNota');
                sql.add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D ');
                sql.add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C ');
                sql.add('      ,HistTotalNota    = Historico_TotalNota ');
                sql.add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
                sql.add('      ,ContaTotalNota_D = dbo.PegaConta(TN.Conta_TotalNota_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaTotalNota_C = dbo.PegaConta(TN.Conta_TotalNota_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      -------------------------------------------------------------------[ FOB FORNECEDOR ]------------------------------------------------------------');
                sql.add('      ,Valor_FOBForn  = (select FOB from ProcessosDocumentos where Processo = NF.Processo)');
                sql.add('      ,VarFOBForn_D   = TN.Conta_FOB_Fornecedor_D');
                sql.add('      ,VarFOBForn_C   = TN.Conta_FOB_Fornecedor_C');
                sql.add('      ,HistFOBForn    = TN.Historico_FOB_Fornecedor');
                sql.add('      ,MacroFOBForn   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_FOB_Fornecedor)');
                sql.add('      ,ContaFOBForn_D = dbo.PegaConta(TN.Conta_FOB_Fornecedor_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaFOBForn_C = dbo.PegaConta(TN.Conta_FOB_Fornecedor_C, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ---------------------------------------------------------------------[ FOB PROCESSO ]------------------------------------------------------------');
                sql.add('      ,Valor_FOBProc  = (select FOB from ProcessosDocumentos where Processo = NF.Processo)');
                sql.add('      ,VarFOBProc_D   = TN.Conta_FOB_Processo_D');
                sql.add('      ,VarFOBProc_C   = TN.Conta_FOB_Processo_C');
                sql.add('      ,HistFOBProc    = TN.Historico_FOB_Processo');
                sql.add('      ,MacroFOBProc   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_FOB_Fornecedor)');
                sql.add('      ,ContaFOBProc_D = dbo.PegaConta(TN.Conta_FOB_Processo_D, NF.Processo, NF.Saida_Entrada)');
                sql.add('      ,ContaFOBProc_C = dbo.PegaConta(TN.Conta_FOB_Processo_C, NF.Processo, NF.Saida_Entrada)');
                sql.Add('      ,Modalidade = TP.Codigo');
                sql.add('from  NotasFiscais NF, TipoNota TN, TiposProcesso TP');
                sql.add('where NF.Data_Emissao between :pDataIni and :pDataFim');
                sql.add('and   isnull(NF.Cancelada,0)    = 0');
                sql.add('and   isnull(NF.Nfe_Denegada,0) = 0');
                sql.add('and   TN.Codigo = NF.Tipo_Nota');
                sql.add('and   TP.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                sql.add('order by Data_Emissao, Numero');
                //sql.Savetofile('c:\temp\Recriar_Contabil_Notas_Proprias.sql');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                open;
                First;

                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := RecordCount;

                while (not Eof) and (Funcoes.Cancelado = false) do begin
                      AbreLt := true;
                      mTotal := 0;
                      mDif   := 0;

                      // Verifica se existe diferença de arredondamento e joga diferença no lançamento do estoque.
                      for i := 1 to 14 do begin
                          mValor  := FieldByName('Valor_'+mCampoPro[i]).AsCurrency;
                          mContaD := trim(FieldByName('Conta'+mCampoPro[i]+'_D').asstring);
                          mContaC := trim(FieldByName('Conta'+mCampoPro[i]+'_C').asstring);
                          if (mContaD+mContaC <> '') and (mValor > 0) then begin
                             if trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_D').Asstring) <> '' then
                                mDif := mDif + mValor;
                             if trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_C').Asstring) <> '' then
                                mDif := mDif - mValor;
                          end;
                      end;

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
                                       ,'[Tipo Nota]'                                         // Origem da conta "D".
                                       ,'[Tipo Nota]'                                         // Origem da conta "C.
                                       ,FieldByName('Tipo_Nota').Asstring                     // Origem do parâmetro (Local de parâmetrização).
                                       ,FieldByName('Beneficiario').Asstring                  // Beneficário.
                                       ,FieldByName('Numero').AsString                        // Número do documento / título de origem.
                                       ,FieldByName('Hist'+mCampoPro[i]).asinteger            // Código do histórico padrão.
                                       ,tEmpresas.FieldByName('Numero_Filial').asinteger      // Número da Filial.
                                       ,0                                                     // Código do banco.
                                       ,FieldByName('Modalidade').asinteger                   // Código do tipo de processo;
                                       )
                                       then begin

                                AbreLt := false;
                             end;

                             if Abrelt then begin
                                mDescLote := 'NF '+iif(FieldByName('Saida_Entrada').asinteger = 0, ' Entrada ',' Saída ')+mEmp;
                                mLote     := AbreLote(FieldByName('Emissao').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, 'NFP'+iif(FieldByName('Saida_Entrada').asinteger = 0, 'E','S'));
                                mLanc     := 1;
                                Abrelt    := false;
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
                                  // Ajusta a diferença de arredondamento no lançamento do estoque.
                                  if (mCampoPro[i] = 'Estoque') and (mDif <= 0.30) then begin
                                     mValor := mValor - mDif;
                                  end;

                                  append;
                                         FieldByName('Registro').Value              := 0;
                                         FieldByName('Numero').Value                := mLanc;
                                         FieldByName('Empresa').Value               := tEmpresas.FieldByName('CNPJ').asstring;
                                         FieldByName('Data').Value                  := tNotas.FieldByName('Emissao').value;
                                         FieldByName('Lote').Value                  := mLote;
                                         FieldByName('Conta_Debito').Value          := trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_D').Asstring);
                                         FieldByName('Conta_Credito').Value         := trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_C').Asstring);
                                         FieldByName('Historico_Codigo').Value      := tNotas.FieldByName('Hist'+mCampoPro[i]).asinteger;
                                         FieldByName('Historico_Complemento').Value := mHist;
                                         FieldByName('Processo_Debito').Value       := tNotas.FieldByName('Processo').AsString;
                                         FieldByName('Processo_Credito').Value      := tNotas.FieldByName('Processo').AsString;
                                         FieldByName('Origem').Value                := tNotas.FieldByName('Origem_Lan').AsString + ' - '+mCampoPro[i];
                                         FieldByName('Documento').Value             := tNotas.FieldByName('Numero').AsString;
                                         FieldByName('Data_Documento').Value        := tNotas.FieldByName('Emissao').value;
                                         FieldByName('Tipo_Documento').Value        := 'NF';
                                         FieldByName('Numero_Financeiro').Value     := 0;
                                         FieldByName('Recriar').Value               := true;
                                         FieldByName('Tipo_Nota').Value             := tNotas.FieldByName('Tipo_Nota').value;
                                         FieldByName('Beneficiario').Value          := AnsiString(trim(tNotas.FieldByName('Beneficiario').asstring));
                                         FieldByName('Contabilizar').Value          := true;
                                         FieldByName('Beneficiario_CNPJ').value     := tNotas.FieldByName('Beneficiario_CNPJ').Asstring;
                                         FieldByName('Valor').Value                 := mValor;
                                   post;

                                   if trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_D').Asstring) <> '' then
                                      mTotal := mTotal + mValor;
                                   if trim(tNotas.FieldByName('Conta'+mCampoPro[i]+'_C').Asstring) <> '' then
                                      mTotal := mTotal - mValor;

                                   inc(mLanc);
                             end;
                          end;
                      end;

                      if roundto(mTotal, -2) <> 0 then begin
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
                                   fieldbyname('Empresa').value      := iif(tEmpresas.FieldByName('Numero_Filial').asinteger = 0, 'MATRIZ', 'FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring));
                              post;
                         end;
                      end;

                      Next;

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando NF Saída dia...'+FieldByName('Emissao').AsString+iif(tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MATRIZ', 'FILIAL '+tEmpresas.FieldByName('Numero_Filial').asstring);
                      Application.ProcessMessages;
                end;

                tEmpresas.Next;
          end;
     end
end;

// Geração dos lançamentos contabeis da nota fiscal de emissão terceiros.
procedure TUtilitarios_RecriarContabil.LancamentoNFTerceiros;
var
   i: integer;
begin
     with Dados, tNotas do begin
          tEmpresas.First;
          while not tEmpresas.Eof do begin
                mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );

                sql.Clear;
                sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                sql.add('select NF.Referencia_Fiscal');
                sql.add('      ,Numero = NF.Nota');
                sql.add('      ,Entrada = Data_Entrada');
                sql.add('      ,Emissao = Data_Emissao');
                sql.add('      ,Beneficiario      = '+quotedstr(mBene+'F')+'+cast(Fornecedor as varchar(10))');
                sql.add('      ,Beneficiario_CNPJ = FR.CNPJ');
                sql.add('      ,Beneficiario_Nome = ltrim(rtrim(FR.Nome))');
                sql.add('      ,NF.Processo');
                sql.add('      ,DI = (select Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
                sql.add('      ,Origem_Lan = ''NF Terceiros (Referência Fiscal:''+ cast(NF.Referencia_Fiscal as varchar(10))+'')'' ');
                sql.add('      ,NF.Tipo');
                sql.add('      ,Modalidade = TP.Codigo');
                sql.add('      --------------------------------------------------------------[ ICMS OPERACIONAL ]------------------------------------------------------------');
                sql.add('      ,NF.Valor_ICMSOper');
                sql.add('      ,VarICMSOper_D   = TN.Conta_ICMSOper_D');
                sql.add('      ,VarICMSOPer_C   = TN.Conta_ICMSOper_C');
                sql.add('      ,HistICMSOper    = TN.Historico_ICMSOper');
                sql.add('      ,MacroICMSOper   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSOper)');
                sql.add('      ,ContaICMSOper_D = case when TN.Conta_ICMSOper_D  = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                              when TN.Conta_ICMSOper_D  = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_ICMSOper_D end');
                sql.add('      ,ContaICMSOper_C = case when TN.Conta_ICMSOper_C  = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                              when TN.Conta_ICMSOper_C  = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_ICMSOper_C end');
                sql.add('      --------------------------------------------------------------------[ ICMS ST ]----------------------------------------------------------------');
                sql.add('      ,Valor_ICMSSub  = Valor_ICMSSub');
                sql.add('      ,VarICMSSub_D   = TN.Conta_ICMSSub_D ');
                sql.add('      ,VarICMSSub_C   = TN.Conta_ICMSSub_C ');
                sql.add('      ,HistICMSSub    = Historico_ICMSSub ');
                sql.add('      ,MacroICMSSub   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_ICMSSub )');
                sql.add('      ,ContaICMSSub_D = case when TN.Conta_ICMSSub_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                             when TN.Conta_ICMSSub_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_ICMSSub_D end');
                sql.add('      ,ContaICMSSub_C = case when TN.Conta_ICMSSub_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                             when TN.Conta_ICMSSub_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_ICMSSub_C end');
                sql.add('      ----------------------------------------------------------------------[ IPI ]-----------------------------------------------------------------');
                sql.add('      ,Valor_IPI  = Valor_TotalIPI');
                sql.add('      ,VarIPI_D   = TN.Conta_IPI_D ');
                sql.add('      ,VarIPI_C   = TN.Conta_IPI_C ');
                sql.add('      ,HistIPI    = Historico_IPI ');
                sql.add('      ,MacroIPI   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_IPI )');
                sql.add('      ,ContaIPI_D = case when TN.Conta_IPI_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                         when TN.Conta_IPI_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_IPI_D end');
                sql.add('      ,ContaIPI_C = case when TN.Conta_IPI_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                         when TN.Conta_IPI_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_IPI_C end');
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
                sql.add('      ---------------------------------------------------------------------[ ESTOQUE ]--------------------------------------------------------------');
                sql.add('      ,Valor_Estoque  = (select sum(isnull(Total_Saida, 0)) from FichaEstoque FE where FE.Nota = NF.Nota and FE.Data = NF.Data_Emissao and Codigo in((select Codigo_Mercadoria from NotasItens NI where NI.Nota = NF.Nota and NI.Data = NF.Data_Emissao)))');
                sql.add('      ,VarEstoque_D   = TN.Conta_Estoque_D ');
                sql.add('      ,VarEstoque_C   = TN.Conta_Estoque_C ');
                sql.add('      ,HistEstoque    = Historico_Estoque ');
                sql.add('      ,MacroEstoque   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_Estoque )');
                sql.add('      ,ContaEstoque_D = case when TN.Conta_Estoque_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                             when TN.Conta_Estoque_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_Estoque_D end');
                sql.add('      ,ContaEstoque_C = case when TN.Conta_Estoque_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                            when TN.Conta_Estoque_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_Estoque_C end');
                sql.add('      ------------------------------------------------------------------[ TOTAL PRODUTOS ]-----------------------------------------------------------');
                sql.add('      ,Valor_Produtos  = Valor_TotalProdutos');
                sql.add('      ,VarProdutos_D   = TN.Conta_TotalProdutos_D ');
                sql.add('      ,VarProdutos_C   = TN.Conta_TotalProdutos_C ');
                sql.add('      ,HistProdutos    = Historico_TotalProdutos ');
                sql.add('      ,MacroProdutos   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalProdutos )');
                sql.Add('      ,ContaProdutos_D = case when TN.Finalidade_Mercadoria <> 2 then');
                sql.add(' 	                            case when TN.Conta_TotalProdutos_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                                   when TN.Conta_TotalProdutos_D = ''PROCESSO''   then TP.Conta_Despesas');
                sql.Add(' 							                else');
                sql.Add(' 							                     TN.Conta_TotalProdutos_D');
                sql.Add(' 							                end');
                sql.Add('                         else');
                sql.add(' 	                            case when TN.Conta_TotalProdutos_D = ''CLIENTE''  then TP.Conta_ClienteDevolucao');
                sql.add('                                   when TN.Conta_TotalProdutos_D = ''PROCESSO'' then TP.Conta_Despesas');
                sql.Add(' 					                    else');
                sql.Add(' 							                     TN.Conta_TotalProdutos_D');
                sql.Add('       						            end');
                sql.Add('                         end');
                sql.add('      ,ContaProdutos_C = case when TN.Finalidade_Mercadoria <> 2 then');
                sql.add('	                             case when TN.Conta_TotalProdutos_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.Add('                                   when TN.Conta_TotalProdutos_C = ''PROCESSO''   then TP.Conta_Despesas');
                sql.Add('	 						                else');
                sql.Add('	 						                     TN.Conta_TotalProdutos_C');
                sql.Add('	 						                end');
                sql.add('                         else');
                sql.add('	                             case when TN.Conta_TotalProdutos_C = ''CLIENTE''  then TP.Conta_ClienteDevolucao');
                sql.Add('                                   when TN.Conta_TotalProdutos_C = ''PROCESSO'' then TP.Conta_Despesas');
                sql.Add('	 				                    else');
                sql.Add('	 						                     TN.Conta_TotalProdutos_C');
                sql.Add('      						            end');
                sql.add('                         end');
                sql.add('      --------------------------------------------------------------------[ TOTAL NOTA ]------------------------------------------------------------');
                sql.add('      ,Valor_TotalNota');
                sql.add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D ');
                sql.add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C ');
                sql.add('      ,HistTotalNota    = Historico_TotalNota ');
                sql.add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
                sql.Add('      ,ContaTotalNota_D = case when TN.Finalidade_Mercadoria <> 2 then');
                sql.add('	                              case when TN.Conta_TotalNota_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                                    when TN.Conta_TotalNota_D = ''PROCESSO''   then TP.Conta_Despesas');
                sql.Add('		 					                 else');
                sql.Add('		 					                      TN.Conta_TotalNota_D');
                sql.Add('		 					                 end');
                sql.Add('                          else');
                sql.add('	                              case when TN.Conta_TotalNota_D = ''CLIENTE''  then TP.Conta_ClienteDevolucao');
                sql.add('                                    when TN.Conta_TotalNota_D = ''PROCESSO'' then TP.Conta_Despesas');
                sql.Add('		 			                     else');
                sql.Add('		 					                      TN.Conta_TotalNota_D');
                sql.Add('      						             end');
                sql.Add('                          end');
                sql.add('      ,ContaTotalNota_C = case when TN.Finalidade_Mercadoria <> 2 then');
                sql.add('	                              case when TN.Conta_TotalNota_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.Add('                                    when TN.Conta_TotalNota_C = ''PROCESSO''   then TP.Conta_Despesas');
                sql.Add('		 					                 else');
                sql.Add('		 					                      TN.Conta_TotalNota_C');
                sql.Add('		 					                 end');
                sql.add('                          else');
                sql.add('	                              case when TN.Conta_TotalNota_C = ''CLIENTE''  then TP.Conta_ClienteDevolucao');
                sql.Add('                                    when TN.Conta_TotalNota_C = ''PROCESSO'' then TP.Conta_Despesas');
                sql.Add('		 			                     else');
                sql.Add('		 					                      TN.Conta_TotalNota_C');
                sql.Add('      						             end');
                sql.add('                          end');
                sql.add('from  NotasTerceiros NF, ReferenciasFiscais TN, TiposProcesso TP, Fornecedores FR');
                sql.add('where NF.Data_Entrada between :pDataIni and :pDataFim');
                sql.add('and   isnull(NF.Servico, '''') = '''' ');
                sql.add('and   isnull(NF.Provisoria, 0) = 0');
                sql.add('and   TN.Codigo = NF.Referencia_Fiscal');
                sql.add('and   FR.Codigo = NF.Fornecedor');
                sql.add('and   TP.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                sql.add('order by Data_Entrada, Nota');
                //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Terceiros.sql');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                open;
                First;

                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := RecordCount;

                while (not Eof) and (Funcoes.Cancelado = false) do begin
                      AbreLt := true;
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
                                       ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring   // Origem da conta "D".
                                       ,'Referência Fiscal '+FieldByName('Referencia_Fiscal').Asstring   // Origem da conta "C".
                                       ,FieldByName('Referencia_Fiscal').Asstring                        // Origem do parâmetro (Local de parâmetrização).
                                       ,FieldByName('Beneficiario').Asstring                             // Beneficário.
                                       ,FieldByName('Numero').AsString                                   // Número do documento / título de origem.
                                       ,FieldByName('Hist'+mCampoTer[i]).asinteger                       // Código do histórico padrão.
                                       ,tEmpresas.FieldByName('Numero_Filial').asinteger                 // Número da Filial.
                                       ,0                                                                // Código do banco.
                                       ,FieldByName('Modalidade').asinteger                              // Código do tipo de processo;
                                       )
                                       then begin

                                AbreLt := false;
                             end;

                             if Abrelt then begin
                                mDescLote := FieldByName('Tipo').asstring+' Terceiros '+mEmp;
                                mLote     := AbreLote(FieldByName('Entrada').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, FieldByName('Tipo').asstring+'TER');
                                mLanc     := 1;
                                Abrelt    := false;
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
                                         FieldByName('Empresa').Value               := tEmpresas.FieldByName('CNPJ').asstring;
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
                              post;
                         end;
                      end;

                      Next;

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando NF Terceiros dia...'+FieldByName('Entrada').AsString;;
                      Application.ProcessMessages;
                end;

                tEmpresas.Next;
          end;
     end
end;

// Geração dos lançamentos contabeis da nota fiscal de emissão terceiros.
procedure TUtilitarios_RecriarContabil.LancamentoServicoTom;
var
   i: integer;
begin
     with Dados, tNotas do begin
          tEmpresas.First;
          while not tEmpresas.Eof do begin
                mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );

                sql.Clear;
                sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                sql.add('select NF.Referencia_Fiscal');
                sql.add('      ,Numero = NF.Nota');
                sql.add('      ,Entrada = Data_Entrada');
                sql.add('      ,Emissao = Data_Emissao');
                sql.add('      ,Beneficiario      = '+quotedstr(mBene+'F')+'+cast(Fornecedor as varchar(10))');
                sql.add('      ,Beneficiario_CNPJ = FR.CNPJ');
                sql.add('      ,Beneficiario_Nome = ltrim(rtrim(FR.Nome))');
                sql.add('      ,NF.Processo');
                sql.add('      ,DI = (select Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
                sql.add('      ,Origem_Lan = ''NF Serviço Tomado (Referência Fiscal:''+ cast(NF.Referencia_Fiscal as varchar(10))+'')'' ');
                sql.add('      ,NF.Tipo');
                sql.add('      ,Modalidade = TP.Codigo');
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
                sql.add('      ,ContaProdutos_D = case when TN.Conta_TotalProdutos_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                              when TN.Conta_TotalProdutos_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_TotalProdutos_D end');
                sql.add('      ,ContaProdutos_C = case when TN.Conta_TotalProdutos_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                              when TN.Conta_TotalProdutos_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_TotalProdutos_C end');
                sql.add('      ----------------------------------------------------------------------[ TOTAL NOTA ]-------------------------------------------------------------');
                sql.add('      ,Valor_TotalNota');
                sql.add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D ');
                sql.add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C ');
                sql.add('      ,HistTotalNota    = Historico_TotalNota ');
                sql.add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
                sql.add('      ,ContaTotalNota_D = case when TN.Conta_TotalNota_D = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                               when TN.Conta_TotalNota_D = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_TotalNota_D end');
                sql.add('      ,ContaTotalNota_C = case when TN.Conta_TotalNota_C = ''FORNECEDOR'' then TP.Conta_Fornecedor');
                sql.add('                               when TN.Conta_TotalNota_C = ''PROCESSO''   then TP.Conta_Despesas else TN.Conta_TotalNota_C end');
                sql.add('from  NotasTerceiros NF, ReferenciasFiscais TN, TiposProcesso TP, Fornecedores FR');
                sql.add('where NF.Data_Entrada between :pDataIni and :pDataFim');
                sql.add('and   isnull(NF.Servico, '''') <> '''' ');
                sql.add('and   isnull(NF.Provisoria, 0) = 0');
                sql.add('and   TN.Codigo = NF.Referencia_Fiscal');
                sql.add('and   FR.Codigo = NF.Fornecedor');
                sql.add('and   TP.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                sql.add('order by Data_Entrada, Nota');
                //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Serviço_Tomado.sql');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                open;
                First;

                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := RecordCount;

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
                                       ,0                                                                 // Código do banco.
                                       ,FieldByName('Modalidade').asinteger                               // Código do tipo de processo;
                                       )
                                       then begin

                                AbreLt := false;
                             end;

                             if Abrelt then begin
                                mDescLote := FieldByName('Tipo').asstring+' Serviço Tomado '+mEmp;
                                mLote     := AbreLote(FieldByName('Entrada').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, FieldByName('Tipo').asstring+'TER');
                                mLanc     := 1;
                                Abrelt    := false;
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
                                         FieldByName('Empresa').Value               := tEmpresas.FieldByName('CNPJ').asstring;
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
                              post;
                         end;
                      end;

                      Next;

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando NF Serviço Tomado dia...'+FieldByName('Entrada').AsString;;
                      Application.ProcessMessages;
                end;

                tEmpresas.Next;
          end;
     end
end;

// Gera os lançamentos de notas fiscais de serviços prestados.
procedure TUtilitarios_RecriarContabil.LancamentoServicoPre;
var
   i: integer;
begin
      With Dados, tNotas do begin
          tEmpresas.First;
          while not tEmpresas.Eof do begin
                mEmp  := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, '(MATRIZ)', '(FILIAL '+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+')' );
                mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );

                sql.Clear;
                sql.Add('use '+trim(tEmpresas.FieldByName('Banco_Dados').AsString));
                sql.Add('select NF.Referencia_Fiscal');
                sql.Add('      ,NF.Numero');
                sql.Add('      ,Emissao = Data_Emissao');
                sql.Add('      ,Beneficiario      = '+quotedstr(mBene+'C')+'+cast(NF.Cliente as varchar(10))');
                sql.Add('      ,Beneficiario_CNPJ = CL.CNPJ');
                sql.Add('      ,Beneficiario_Nome = ltrim(rtrim(CL.Nome))');
                sql.Add('      ,NF.Processo');
                sql.Add('      ,DI = (select Numero_Declaracao from ProcessosDocumentos PD where PD.Processo = NF.Processo)');
                sql.Add('      ,Origem_Lan = ''NF Serviço Prestado (Referência Fiscal:''+ cast(NF.Referencia_Fiscal as varchar(10))+'')'' ');
                sql.Add('      ,Tipo = ''NF'' ');
                sql.add('      ,Modalidade = TP.Codigo');
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
                sql.Add('      ,ContaProdutos_D = case when TN.Conta_TotalProdutos_D = ''CLIENTE''  then TP.Conta_Cliente');
                sql.Add('                              when TN.Conta_TotalProdutos_D = ''PROCESSO'' then TP.Conta_Despesas else TN.Conta_TotalProdutos_D end');
                sql.Add('      ,ContaProdutos_C = case when TN.Conta_TotalProdutos_C = ''CLIENTE''  then TP.Conta_Cliente');
                sql.Add('                              when TN.Conta_TotalProdutos_C = ''PROCESSO'' then TP.Conta_Despesas else TN.Conta_TotalProdutos_C end');
                sql.Add('      ----------------------------------------------------------------------[ TOTAL NOTA ]-------------------------------------------------------------');
                sql.Add('      ,Valor_TotalNota  = NF.Valor_Servico');
                sql.Add('      ,VarTotalNota_D   = TN.Conta_TotalNota_D');
                sql.Add('      ,VarTotalNota_C   = TN.Conta_TotalNota_C');
                sql.Add('      ,HistTotalNota    = Historico_TotalNota');
                sql.Add('      ,MacroTotalNota   = (select cast(Macro as varchar(250)) from '+mBancoContab+'.dbo.HistoricoPadrao where Codigo = Historico_TotalNota )');
                sql.Add('      ,ContaTotalNota_D = case when TN.Conta_TotalNota_D = ''CLIENTE''  then TP.Conta_Cliente');
                sql.Add('                               when TN.Conta_TotalNota_D = ''PROCESSO'' then TP.Conta_Despesas else TN.Conta_TotalNota_D end');
                sql.Add('      ,ContaTotalNota_C = case when TN.Conta_TotalNota_C = ''CLIENTE''  then TP.Conta_Cliente');
                sql.Add('                               when TN.Conta_TotalNota_C = ''PROCESSO'' then TP.Conta_Despesas else TN.Conta_TotalNota_C end');
                sql.Add('from  NotasServico NF, ReferenciasFiscais TN, TiposProcesso TP, Clientes CL');
                sql.Add('where NF.Data_Emissao between :pDataIni and :pDataFim');
                sql.Add('and   TN.Codigo = NF.Referencia_Fiscal');
                sql.Add('and   CL.Codigo = NF.Cliente');
                sql.Add('and   TP.Codigo = iif(NF.Processo <> '''', (select Modalidade_Importacao from ProcessosDocumentos PD where PD.Processo = NF.Processo), (select Codigo from TiposProcesso where isnull(Processo, 0) = 0) )');
                sql.Add('order by Data_Emissao, Numero');
                //sql.Savetofile('c:\temp\Recriar_Contabil_Nota_Serviço_Prestado.sql');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                open;
                first;

                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := RecordCount;
//                Janela_Processamento.lProcesso.Caption  := 'GERANDO NF DE SERVIÇO PRESTADO';

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
                                       ,0                                                                 // Código do banco.
                                       ,FieldByName('Modalidade').asinteger                               // Código do tipo de processo;
                                       )
                                       then begin

                                AbreLt := false;
                             end;

                             if Abrelt then begin
                                mDescLote := FieldByName('Tipo').asstring+' Serviço Prestado '+mEmp;
                                mLote     := AbreLote(FieldByName('Emissao').AsDateTime, tEmpresas.FieldByName('CNPJ').asstring, mDescLote, FieldByName('Tipo').asstring+'PRO');
                                mLanc     := 1;
                                Abrelt    := false;
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
                                         FieldByName('Empresa').Value               := tEmpresas.FieldByName('CNPJ').asstring;
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
                              post;
                         end;
                      end;

                      Next;

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Janela_Processamento.lProcesso.Caption  := 'Gerando NF Serviço prestado dia...'+FieldByName('Emissao').AsString;;
                      Application.ProcessMessages;
                end;

                tEmpresas.Next;
          end;
      end;
end;

procedure TUtilitarios_RecriarContabil.FormShow(Sender: TObject);
begin
      with dmContab, Erros do begin
           sql.Clear;
           sql.Add('select * from LanErros order by Empresa desc, Origem, Documento');
           Open;

           TabSheet1.Caption := 'Erros ['+ InttoStr(RecordCount)+']';
      end;
end;

procedure TUtilitarios_RecriarContabil.GradeDblClick(Sender: TObject);
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
           // Modulo Bancos.
           if Pos('[BANCO]', uppercase(Erros.FieldByName('Origem').asstring)) > 0 then begin
              Cadastro_Bancos           := TCadastro_Bancos.Create(Self);
              Cadastro_Bancos.caption   := Caption;
              Cadastro_Bancos.mPesquisa := Erros.FieldByName('Banco').AsString;
              Cadastro_Bancos.Showmodal;
           end;
           // Clientes.
           if (Pos('[BENEFICIÁRIO]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0) and (copy(Erros.FieldByName('Beneficiario').asstring, 1, 1) = 'C') then begin
              Cadastro_Clientes           := TCadastro_Clientes.Create(Self);
              Cadastro_Clientes.caption   := Caption;
              Cadastro_Clientes.mPesquisa := copy(Erros.FieldByName('Beneficiario').AsString, 5, 15);
              Cadastro_Clientes.Showmodal;
           end;
           // Fornecedores.
           if (Pos('[BENEFICIÁRIO]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0) and (copy(Erros.FieldByName('Beneficiario').asstring, 1, 1) = 'F') then begin
              Cadastro_Fornecedores           := TCadastro_Fornecedores.Create(Self);
              Cadastro_Fornecedores.caption   := Caption;
              Cadastro_Fornecedores.mPesquisa := copy(Erros.FieldByName('Beneficiario').AsString, 5, 15);
              Cadastro_Fornecedores.Showmodal;
           end;
           // Orgãos Públicos.
           if Pos('[ORGÃO PÚBLICO]', ansiuppercase(Erros.FieldByName('Origem').asstring)) > 0  then begin
              Cadastro_OrgaosPublicos           := TCadastro_OrgaosPublicos.Create(Self);
              Cadastro_OrgaosPublicos.caption   := Caption;
              Cadastro_OrgaosPublicos.mErro     := trim(Copy(Erros.FieldByName('Beneficiario').AsString, 5, 15));
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

function TUtilitarios_RecriarContabil.AbreLote(Data: TDate; Empresa, Descricao, Origem: string): integer;
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

function TUtilitarios_RecriarContabil.UltimoLanc(Data: TDate; Empresa: string; Lote: integer): integer;
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

function TUtilitarios_RecriarContabil.VerErro(ContaD, ContaC, VarD, VarC, Partida, Documento, OrigemD, OrigemC, OrigemPar, Benef, NumOrigem: string; Historico, Empresa, Banco, Modalidade: integer): boolean;
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
          if Historico = 0 then begin
             mErroHis := 'Histórico não informado';
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
                  post;
                  inc(mErro);
               end;
          end;
     end;
     result := true;
end;



end.
