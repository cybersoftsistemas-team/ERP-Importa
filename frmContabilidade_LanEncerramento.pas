unit frmContabilidade_LanEncerramento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, Mask, Vcl.ComCtrls, Funcoes,
  DB, DBAccess, MSAccess, DateUtils, RxToolEdit, system.UITypes, MemDS;

type
  TContabilidade_LanEncerramento = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    Progresso: TProgressBar;
    lProgresso: TLabel;
    tBalancete: TMSQuery;
    dstBalancete: TDataSource;
    tLanc: TMSQuery;
    tLancamento: TMSQuery;
    tLote: TMSQuery;
    tEmpresas: TMSQuery;
    Bevel1: TBevel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GeraBalancete;
  private
    { Private declarations }
  public
    { Public declarations }
    mDataIni, mDataFim :TDate;
  end;

var
  Contabilidade_LanEncerramento: TContabilidade_LanEncerramento;

implementation

uses frmDMContab, frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TContabilidade_LanEncerramento.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TContabilidade_LanEncerramento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Contabilidade_LanEncerramento.Release;
      Contabilidade_LanEncerramento := nil;
end;

procedure TContabilidade_LanEncerramento.bGerarClick(Sender: TObject);
var
   mTri
  ,i
  ,mLan
  ,mLote:integer;
begin
      mLote := 0;
      if DataLimpa(cDataIni.Text) then begin
         MessageDlg('É preciso informar a "Data Inicial" para gerar os lançamentos de encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if DataLimpa(cDataFim.Text) then begin
         MessageDlg('É preciso informar a "Data Final" para gerar os lançamentos de encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if Trim(Dados.ConfiguracaoContab_ContaResultado.AsString) = '' then begin
         MessageDlg('Conta para o lançamento de "Resultado" não informado nas configurações dos lançamentos encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if Trim(Dados.ConfiguracaoContab_ContaEncLucro.AsString) = '' then begin
         MessageDlg('Conta para o lançamento de "Lucro Acumulado" não informado nas configurações dos lançamentos encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if Trim(Dados.ConfiguracaoContab_ContaEncPrejuizo.AsString) = '' then begin
         MessageDlg('Conta para o lançamento de "Prejuízo Acumulado" não informado nas configurações dos lançamentos encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if Dados.ConfiguracaoContab_HistoricoResultado.AsInteger = 0 then begin
         MessageDlg('Histórico para o lançamento de "Resultado" não informado nas configurações dos lançamentos encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if Dados.ConfiguracaoContab_HistoricoEncLucro.AsInteger = 0 then begin
         MessageDlg('Histórico para o lançamento de "Lucro Acumulado" não informado nas configurações dos lançamentos encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if Dados.ConfiguracaoContab_HistoricoEncPrejuizo.AsInteger = 0 then begin
         MessageDlg('Histórico para o lançamento de "Prejízo  Acumulado" não informado nas configurações dos lançamentos encerramento!', mtError, [mbOK], 0);
         Abort;
      end;
      if MessageDlg('Deseja realmente gerar os lançamentos de encerramento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort
      end;

      Screen.Cursor := crSQLWait;

      with dmContab, Dados do begin
           with tLanc do begin
                // Deleta os lançamentos de encerramento do periodo.
                sql.Clear;
                sql.Add('delete from Lancamentos');
                sql.Add('where Tipo_Documento = ''LE'' ');
                sql.Add('and Data between :pDataIni and :pDataFim');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                Execute;

                // Deleta os lotes de encerramento do periodo.
                sql.Clear;
                sql.Add('delete from Lotes');
                sql.Add('where Origem = ''LANENC'' ');
                sql.Add('and Data between :pDataIni and :pDataFim');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                Execute;
           end;

           mTri := 1;
           if EmpresasEncerramento_Contabil.AsInteger = 0 then mTri := 4;

           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('SELECT TOP 1 * FROM Lancamentos WHERE Tipo_Documento = ''LE''');
           Lancamentos.Open;

           for i := 1 to mTri do begin
               if EmpresasEncerramento_Contabil.AsInteger = 1 then begin
                  mDataIni := cDataIni.Date;
                  mDataFim := cDataFim.Date;
               end else begin
                  if i = 1 then begin
                     mDataIni   := cDataIni.Date;
                     mDataFim   := UltimoDiaMes( StrtoDate( '01/03/'+InttoStr(YearOf(cDataIni.Date))) );
                     lProgresso.Caption := 'Lançamentos de JANEIRO/MARÇO - 1º Trimestre';
                  end;
                  if i = 2 then begin
                     mDataIni   := StrtoDate( '01/04/'+InttoStr(YearOf(cDataIni.Date)) );
                     mDataFim   := UltimoDiaMes( StrtoDate( '01/06/'+InttoStr(YearOf(cDataIni.Date))) );
                     lProgresso.Caption  := 'Lançamentos de ABRIL/JUNHO - 2º Trimestre';
                  end;
                  if i = 3 then begin
                     mDataIni   := StrtoDate( '01/07/'+InttoStr(YearOf(cDataIni.Date)) );
                     mDataFim   := UltimoDiaMes( StrtoDate( '01/09/'+InttoStr(YearOf(cDataIni.Date))) );
                     lProgresso.Caption  := 'Lançamentos de JULHO/SETEMBRO - 3º Trimestre';
                  end;
                  if i = 4 then begin
                     mDataIni   := StrtoDate( '01/10/'+InttoStr(YearOf(cDataIni.Date)) );
                     mDataFim   := UltimoDiaMes( StrtoDate( '01/12/'+InttoStr(YearOf(cDataIni.Date))) );
                     lProgresso.Caption  := 'Lançamentos de OUTUBRO/DEZEMBRO - 4º Trimestre';
                  end;
               end;

               Progresso.Position   := 0;
               tBalancete.FilterSQL := '';

               GeraBalancete;

               Progresso.Max := tBalancete.RecordCount;

               // Gerando o número do lote pela data do lançamento.
               //mLote := CriaLote(mDataFim, Empresas.FieldByName('CNPJ').asstring, 'ENCERRAMENTO', 'LANENC');

               with tLancamento do begin
                    sql.clear;
                    sql.add('select  Numero   = isnull((select max(Numero)   from Lancamentos where Data = :pData and Lote = :pLote and Empresa = :pEmpresa and Origem = ''LANENC''), 0) + 1');
                    sql.Add('       ,Registro = isnull((select max(Registro) from Lancamentos), 0) + 1');
                    ParamByName('pData').value    := mDataFim;
                    ParamByName('pLote').value    := mLote;
                    ParamByName('pEmpresa').value := Empresas.FieldByName('CNPJ').asstring;
                    open;
                    mLan := FieldByName('Numero').asinteger;
               end;

               tBalancete.First;
               lProgresso.Visible := true;
               Progresso.Visible  := true;

               while not tBalancete.Eof do begin
                     // Lancamento a crédito.
                     if tBalancete.FieldByName('Debito').AsFloat > 0 then begin
                        tLancamento.Open;
                        Lancamentos.Append;
                                    LancamentosRegistro.Value         := tLancamento.FieldByName('Registro').AsInteger;
                                    LancamentosLote.Value             := mLote;
                                    LancamentosNumero.Value           := mLan;
                                    LancamentosEmpresa.Value          := Empresas.FieldByName('CNPJ').asstring;
                                    LancamentosData.Value             := mDataFim;
                                    LancamentosConta_Credito.Value    := tBalancete.FieldByName('Codigo').Value;
                                    LancamentosConta_Debito.Value     := Configuracao.FieldByName('Contab_ContaResultado').Value;
                                    LancamentosValor.Value            := tBalancete.FieldByName('Debito').Value;
                                    LancamentosHistorico_Codigo.Value := ConfiguracaoContab_HistoricoResultado.AsInteger;
                                    LancamentosOrigem.Value           := 'LANÇAMENTO DE ENCERRAMENTO (D)';
                                    LancamentosDocumento.Value        := tBalancete.FieldByName('Codigo').AsString;
                                    LancamentosData_Documento.Value   := mDataFim;
                                    LancamentosTipo_Documento.Value   := 'LE';
                                    LancamentosRecriar.Value          := true;
                                    LancamentosContabilizar.Value     := true;
                        Lancamentos.Post;
                        tLancamento.Close;
                        inc(mLan);
                     end;
                     // Lançamento a débito.
                     if tBalancete.FieldByName('Credito').AsFloat > 0 then begin
                        tLancamento.Open;
                        Lancamentos.Append;
                                    LancamentosRegistro.Value         := tLancamento.FieldByName('Registro').AsInteger;
                                    LancamentosLote.Value             := mLote;
                                    LancamentosNumero.Value           := mLan;;
                                    LancamentosEmpresa.Value          := Empresas.FieldByName('CNPJ').asstring;
                                    LancamentosData.Value             := mDataFim;
                                    LancamentosConta_Debito.Value     := tBalancete.FieldByName('Codigo').Value;
                                    LancamentosConta_Credito.Value    := Configuracao.FieldByName('Contab_ContaResultado').Value;
                                    LancamentosValor.Value            := tBalancete.FieldByName('Credito').Value;
                                    LancamentosHistorico_Codigo.Value := ConfiguracaoContab_HistoricoResultado.AsInteger;
                                    LancamentosOrigem.Value           := 'LANÇAMENTO DE ENCERRAMENTO (C)';
                                    LancamentosDocumento.Value        := tBalancete.FieldByName('Codigo').AsString;
                                    LancamentosData_Documento.Value   := mDataFim;
                                    LancamentosTipo_Documento.Value   := 'LE';
                                    LancamentosRecriar.Value          := true;
                                    LancamentosContabilizar.Value     := true;
                        Lancamentos.Post;
                        tLancamento.Close;
                        inc(mLan);
                     end;

                     Progresso.Position := Progresso.Position + 1;
                     Application.ProcessMessages;

                     tBalancete.Next;
               end;

               // Gera novamente o balancete para apurar o saldo das contas de resultado.
               GeraBalancete;

               tBalancete.Locate('Codigo', ConfiguracaoContab_ContaResultado.Value, [loCaseInsensitive]);

               // Gerando o número do lote pela data do lançamento.
               //mLote := CriaLote(mDataFim, Empresas.FieldByName('CNPJ').asstring, 'ENCERRAMENTO', 'LANENC');

               with tLancamento do begin
                    sql.clear;
                    sql.add('select  Numero   = isnull((select max(numero)   from Lancamentos where Data = :pData and Lote = :pLote and Empresa = :pEmpresa), 0) + 1');
                    sql.Add('       ,Registro = isnull((select max(Registro) from Lancamentos), 0) + 1');
                    ParamByName('pData').value    := mDataFim;
                    ParamByName('pEmpresa').value := Empresas.FieldByName('CNPJ').asstring;
                    ParamByName('pLote').value    := mLote;
                    Open;
               end;

               if tBalancete.FieldByName('Saldo_Atual').AsCurrency <> 0 then begin
                  tLancamento.Open;
                  Lancamentos.Append;
                              LancamentosRegistro.Value         := tLancamento.FieldByName('Registro').AsInteger;
                              LancamentosEmpresa.Value          := Empresas.FieldByName('CNPJ').asstring;
                              LancamentosData.Value             := mDataFim;
                              LancamentosNumero.Value           := tLancamento.FieldByName('Numero').AsInteger;
                              LancamentosConta_Debito.Value     := iif(tBalancete.FieldByName('DC_Atual').AsString = 'D', Configuracao.FieldByName('Contab_ContaEncPrejuizo').Value, tBalancete.FieldByName('Codigo').Value);
                              LancamentosConta_Credito.Value    := iif(tBalancete.FieldByName('DC_Atual').AsString = 'D', tBalancete.FieldByName('Codigo').Value, Configuracao.FieldByName('Contab_ContaEncPrejuizo').Value);
                              LancamentosHistorico_Codigo.Value := iif(tBalancete.FieldByName('DC_Atual').AsString = 'D', ConfiguracaoContab_HistoricoEncPrejuizo.AsInteger, ConfiguracaoContab_HistoricoEncLucro.AsInteger);
                              LancamentosValor.Value            := tBalancete.FieldByName('Saldo_Atual').AsCurrency;
                              LancamentosHistorico_Codigo.Value := ConfiguracaoContab_HistoricoResultado.AsInteger;
                              LancamentosOrigem.Value           := 'LANÇAMENTO DE ENCERRAMENTO (Apuração)';
                              LancamentosDocumento.Value        := tBalancete.FieldByName('Codigo').AsString;
                              LancamentosData_Documento.Value   := mDataFim;
                              LancamentosTipo_Documento.Value   := 'LE';
                              LancamentosRecriar.Value          := true;
                              LancamentosLote.Value             := mLote;
                              LancamentosContabilizar.Value     := true;
                  Lancamentos.Post;
                  tLancamento.Close;
                  tLote.Close;
               end;
           end;
      end;
      lProgresso.Visible := false;
      Progresso.Visible  := false;

      Screen.Cursor := crDefault;

      MessageDlg('Geração dos lançamentos de encerramento terminda!', mtInformation, [mbOK], 0);
end;

procedure TContabilidade_LanEncerramento.FormShow(Sender: TObject);
begin
      with Dados do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas');
                sql.Add('where Codigo = :pCod');
                parambyname('pCod').asinteger := Menu_Principal.mEmpresa;
                Open;
           end;

           Configuracao.Open;
      end;
end;

procedure TContabilidade_LanEncerramento.GeraBalancete;
begin
      with tBalancete do begin
           Close;
           SQL.Clear;
           SQL.Add('-- PLANO NORMAL');
           SQL.Add('SELECT PC.Conta');
           SQL.Add('      ,PC.Codigo');
           SQL.Add('      ,PC.Descricao');
           SQL.Add('      ,PC.Sintetica');
           SQL.Add('      ,PC.Saldo_Anterior');
           SQL.Add('      ,PC.Tipo_Terceiros');
           SQL.Add('      ,PC.Codigo_Terceiros');
           SQL.Add('      ,PC.Natureza');
           SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
           SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
           SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
           SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           SQL.Add('                           ELSE');
           SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
           SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
           SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           SQL.Add('                           END');
           SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           SQL.Add('      ,Debito            = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
           SQL.Add('      ,Credito           = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
           SQL.Add('      ,Saldo_Atual       = CAST(0 AS money)');
           SQL.Add('      ,DC_Anterior       = '' '' ');
           SQL.Add('      ,DC_Atual          = '' '' ');
           SQL.Add('INTO   #PlanoTmp');
           SQL.Add('FROM   PlanoContas PC');
           SQL.Add('WHERE  Conta IS NOT NULL');
           SQL.Add('-- TOTALIZANDO CONTAS TITULO');
           SQL.Add('UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debito)            FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
           SQL.Add('                    ,Credito           = ISNULL((SELECT SUM(Credito)           FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
           SQL.Add('                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atualiza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
           SQL.Add('WHERE(#PlanoTmp.Sintetica = 1)');
           SQL.Add('-- APURANDO SALDO ATUAL --');
           SQL.Add('UPDATE #PlanoTmp SET Saldo_Atual = CASE WHEN #PlanoTmp.Natureza = ''C'' THEN');
           SQL.Add('                                        (Atualiza_Anterior - Debito + Credito)');
           SQL.Add('                                   ELSE');
           SQL.Add('                                        (Atualiza_Anterior + Debito - Credito)');
           SQL.Add('                                   END');
           SQL.Add('-- AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" --');
           SQL.Add('UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Natureza = ''D'' THEN');
           SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''D'' ELSE ''C'' END');
           SQL.Add('                                   ELSE');
           SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''C'' ELSE ''D'' END');
           SQL.Add('                                   END');
           SQL.Add('                    ,DC_Atual    = CASE WHEN Natureza = ''D'' THEN');
           SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''D'' ELSE ''C'' END');
           SQL.Add('                                   ELSE');
           SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''C'' ELSE ''D'' END');
           SQL.Add('                                   END');
           SQL.Add('SELECT Conta');
           SQL.Add('      ,Codigo');
           SQL.Add('      ,Descricao');
           SQL.Add('      ,Sintetica');
           SQL.Add('      ,Tipo_Terceiros');
           SQL.Add('      ,Natureza');
           SQL.Add('      ,Saldo_Anterior = CASE WHEN Atualiza_Anterior >= 0 THEN Atualiza_Anterior ELSE Atualiza_Anterior *-1 END');
           SQL.Add('      ,DC_Anterior');
           SQL.Add('      ,Debito');
           SQL.Add('      ,Credito');
           SQL.Add('      ,Saldo_Atual    = CASE WHEN Saldo_Atual >= 0 THEN Saldo_Atual ELSE Saldo_Atual *-1 END');
           SQL.Add('      ,Grupo = SUBSTRING(Conta,1,1)');
           SQL.Add('      ,DC_Atual');
           SQL.Add('FROM   #PlanoTmp');
           SQL.Add('WHERE SUBSTRING(Conta, 1, 1) IN(''4'', ''5'', ''6'')');
           SQL.Add('AND Saldo_Atual != 0');
           SQL.Add('AND Sintetica   != 1');
           SQL.Add('AND (Debito     != 0 OR Credito != 0)');
           SQL.Add('ORDER BY Conta, Sintetica desc');
           SQL.Add('DROP TABLE #PlanoTmp');
           ParamByName('pDataIni').AsDate := mDataIni;
           ParamByName('pDataFim').AsDate := mDataFim;
           //tBalancete.SQL.SaveToFile('c:\Temp\Lancamentos_Encerramento.sql');
           Open;
      end;
end;



end.
