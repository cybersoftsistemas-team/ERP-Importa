unit frmContabilidade_Lancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, Mask, DBCtrls,
  DateUtils, FUNCOES, Vcl.ComCtrls, RxLookup, Grids, DBGrids, RxToolEdit, MemDS, RxSwitch, Vcl.Buttons, ClipBrd, Vcl.WinXCtrls, system.UITypes, Vcl.Samples.Spin;

type
  TContabilidade_Lancamentos = class(TForm)
    tData: TMSQuery;
    tMes: TMSQuery;
    tTmp: TMSQuery;
    tPlano: TMSQuery;
    dstPlano: TDataSource;
    tPlanoConta: TStringField;
    tPlanoDescricao: TStringField;
    tPlanoSaldo_Anterior: TCurrencyField;
    tPlanoDebito: TCurrencyField;
    tPlanoCredito: TCurrencyField;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    tPlanoCodigo: TStringField;
    tTotaliza: TMSQuery;
    Panel1: TPanel;
    bSair: TButton;
    bPesquisar: TButton;
    Button4: TButton;
    Image1: TImage;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    tProcessosProcesso: TStringField;
    tProcessosTipo: TStringField;
    tProcessosDI: TStringField;
    dstTotaliza: TDataSource;
    Panel6: TPanel;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    cLote: TDBEdit;
    StaticText9: TStaticText;
    DBEdit2: TDBEdit;
    cDataLote: TDBDateEdit;
    StaticText11: TStaticText;
    DBEdit3: TDBEdit;
    StaticText15: TStaticText;
    cRegistro: TDBEdit;
    gLotes: TDBGrid;
    Panel4: TPanel;
    NavegaLote: TDBNavigator;
    Panel7: TPanel;
    Panel8: TPanel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    cDifLote: TDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    cDifDia: TDBEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    cDifMes: TDBEdit;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    StaticText2: TStaticText;
    cCodigoDeb: TDBEdit;
    StaticText3: TStaticText;
    cValor: TDBEdit;
    StaticText4: TStaticText;
    cCodigoCred: TDBEdit;
    cContaCred: TRxDBLookupCombo;
    cContaDeb: TRxDBLookupCombo;
    StaticText10: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    DBEdit5: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    gLanc: TDBGrid;
    Panel5: TPanel;
    Navega: TDBNavigator;
    tTotalizaLote: TIntegerField;
    tTotalizaLanLote: TIntegerField;
    tTotalizaDebLote: TCurrencyField;
    tTotalizaCredLote: TCurrencyField;
    tTotalizaDifLote: TCurrencyField;
    tTotalizaLotesDia: TIntegerField;
    tTotalizaLanDia: TIntegerField;
    tTotalizaDebDia: TCurrencyField;
    tTotalizaCredDia: TCurrencyField;
    tTotalizaDifDia: TCurrencyField;
    tTotalizaLotesMes: TIntegerField;
    tTotalizaLanMes: TIntegerField;
    tTotalizaDebMes: TCurrencyField;
    tTotalizaCredMes: TCurrencyField;
    tTotalizaDifMes: TCurrencyField;
    lHistorico: TStaticText;
    cHistoricoCodigo: TDBEdit;
    StaticText7: TStaticText;
    cHistCompl: TDBMemo;
    cHistorico: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText5: TStaticText;
    Panel10: TPanel;
    cAno: TSpinEdit;
    lAno: TStaticText;
    lMes: TStaticText;
    cMes: TComboBox;
    bFiltro: TSpeedButton;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit19: TDBEdit;
    cDifAno: TDBEdit;
    tTotalizaLotesAno: TIntegerField;
    tTotalizaLanAno: TIntegerField;
    tTotalizaDebAno: TCurrencyField;
    tTotalizaCredAno: TCurrencyField;
    tTotalizaDifAno: TCurrencyField;
    StaticText6: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    tBenef: TMSQuery;
    dstBenef: TDataSource;
    tBenefCodigo: TStringField;
    tBenefNome: TStringField;
    tBenefCNPJ_CPF: TStringField;
    tBenefTipo: TStringField;
    StaticText16: TStaticText;
    DBEdit20: TDBEdit;
    cAberto: TToggleSwitch;
    cContabilizar: TToggleSwitch;
    tPlanoEmpresa: TStringField;
    StaticText17: TStaticText;
    cDia: TSpinEdit;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure Totaliza;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cHistComplEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cDataExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NavegaLoteClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaLoteBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cHistoricoClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure cRegistroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisaLote
   ,mPesquisaNumero: Integer;
    mPesquisaData  : TDate;
    mEdicao: boolean;
  end;

var
  Contabilidade_Lancamentos: TContabilidade_Lancamentos;

implementation

uses frmDMContab, frmDados, frmContabilidade_LancamentosPesquisar, frmMenu_Principal, frmContabilidade_LancamentosDiferenca, frmPesquisaGerais;

{$R *.dfm}

procedure TContabilidade_Lancamentos.bFiltroClick(Sender: TObject);
begin
     with Dados, dmContab do Begin
          with Lotes do begin
               sql.Clear;
               sql.Add('select *');
               sql.add('from Lotes');
//               sql.Add('where Empresa = :pEmpresa');
               sql.Add('where year(Data) = :pAno');
               sql.Add('and month(Data) = :pMes');
               if cDia.Value > 0 then begin
                  sql.Add('and day(Data) = :pDia');
                  ParamByName('pDia').value := cDia.Value;
               end;
               sql.Add('order by Data, Lote');
//               ParamByName('pEmpresa').value := Empresas.FieldByName('CNPJ').asstring;
               ParamByName('pAno').value     := cAno.Value;
               ParamByName('pMes').value     := cMes.ItemIndex+1;
               //sql.savetofile('c:\temp\Lotes.sql');
               open;
               Totaliza;
               cAberto.State       := iif(FieldByName('Aberto').asboolean      , tsson, tssoff);
               cContabilizar.State := iif(FieldByName('Contabilizar').asboolean, tsson, tssoff);
          end;
     end;
end;

procedure TContabilidade_Lancamentos.bPesquisarClick(Sender: TObject);
begin
      Contabilidade_LancamentosPesquisar := TContabilidade_LancamentosPesquisar.Create(Self);
      Contabilidade_LancamentosPesquisar.Caption := Caption;
      Contabilidade_LancamentosPesquisar.ShowModal;

      if mPesquisaData <> 0 then begin
         cAno.Value     := yearof(mPesquisaData);
         cMes.itemIndex := monthof(mPesquisaData)-1;

         bFiltro.Click;
         with dmContab do begin
              Lotes.Locate('Data; Lote', vararrayof([mPesquisaData, mPesquisaLote]), [loCaseInsensitive]);
              Lancamentos.Locate('Numero', mPesquisaNumero, [loCaseInsensitive]);
         end;
      end;
end;

procedure TContabilidade_Lancamentos.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TContabilidade_Lancamentos.FormShow(Sender: TObject);
var
   mBene:string;
begin
      Screen.Cursor := crSQLWait;

      with Dados, dmContab do Begin
           with Empresas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                Open;
                tPlano.FieldByName('Conta').EditMask := FieldByName('Mascara_PlanoContas').Value + ';0; ';
           end;
           with tEmpresas do begin
                SQL.Clear;
                SQL.Add('select CNPJ, Banco_Dados, Numero_Filial from Empresas where substring(CNPJ, 1, 8) = '+quotedstr(copy(Empresas.fieldbyname('CNPJ').asstring, 1, 8)));
                Open;
           end;
           with tPlano do begin
                sql.Clear;
                sql.Add('select Conta');
                sql.Add('      ,Codigo');
                sql.Add('      ,Descricao');
                sql.Add('      ,Saldo_Anterior');
                sql.Add('      ,Debito');
                sql.Add('      ,Credito');
                sql.Add('      ,Empresa');
                sql.Add('from  PlanoContas');
                sql.Add('where (isnull(Sintetica, 0) = 0)');
                sql.Add('order by Conta,Descricao');
                Open;
           end;
           with Historicos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
                Open;
           end;
           with tData do begin
                SQL.Clear;
                SQL.Add('SELECT ISNULL(MAX(Data), GetDate()) AS Data FROM Lancamentos');
                Open;
           end;
           with Lancamentos do begin
                SQL.Clear;
                SQL.Add('select * from Lancamentos where Data = :pData and Lote = :pLote order by Numero');
                ParamByName('pLote').value := Lotes.FieldByName('Lote').asinteger;
                ParamByName('pData').value := Lotes.FieldByName('Data').asDatetime;
                Open;
           end;
           with tProcessos do begin
                sql.clear;
                sql.Add('select Processo');
                sql.Add('      ,Tipo');
                sql.Add('      ,DI = Numero_Declaracao');
                sql.Add('from  ProcessosDocumentos');

                tEmpresas.First;
                while not tEmpresas.Eof do begin
                      sql.Add('union all');
                      sql.Add('select Processo');
                      sql.Add('      ,Tipo');
                      sql.Add('      ,DI = Numero_Declaracao');
                      sql.Add('from '+tEmpresas.FieldByName('Banco_Dados').asstring+'.dbo.ProcessosDocumentos');
                      tEmpresas.next
                end;
                sql.Add('order by Processo');
                //sql.SaveToFile('c:\temp\Lancamentos_Processos.sql');
                open;
           end;
           with TiposDocumentos do begin
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM  TiposDocumentos');
                SQL.Add('ORDER BY Descricao');
                Open;
           end;
           with tBenef do begin
                sql.Clear;
                {
                sql.Add('select Codigo = ''C''+cast(Codigo as varchar(15))');
                sql.Add('      ,Nome = ltrim(rtrim(Nome))');
                sql.Add('      ,CNPJ_CPF = isnull(CNPJ, '''') + isnull(CPF, '''')');
                sql.Add('      ,Tipo = ''C'' ');
                sql.Add('from Clientes');
                sql.Add('union all');
                sql.Add('select Codigo = ''F''+cast(Codigo as varchar(15))');
                sql.Add('      ,Nome = ltrim(rtrim(Nome))');
                sql.Add('      ,CNPJ_CPF = isnull(CNPJ, '''') + isnull(CPF, '''')');
                sql.Add('      ,Tipo = ''F'' ');
                sql.Add('FROM Fornecedores');
                sql.Add('union all');
                }
                sql.Add('select Codigo = ''F''+cast(Codigo as varchar(10))');
                sql.Add('      ,Nome = ltrim(rtrim(Nome))');
                sql.Add('      ,CNPJ_CPF = '''' ');
                sql.Add('      ,Tipo = ''F'' ');
                sql.Add('FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
                tEmpresas.First;
                while not tEmpresas.Eof do begin
                      mBene := iif( tEmpresas.FieldByName('Numero_Filial').AsInteger = 0, 'MT_', 'F'+trim(tEmpresas.FieldByName('Numero_Filial').asstring)+'_' );
                      sql.Add('union all');
                      sql.Add('select Codigo = '+quotedstr(mBene+'C')+'+cast(Codigo as varchar(15))');
                      sql.Add('      ,Nome = ltrim(rtrim(Nome))');
                      sql.Add('      ,CNPJ_CPF = isnull(CNPJ, '''') + isnull(CPF, '''')');
                      sql.Add('      ,Tipo = ''C'' ');
                      sql.Add('from '+tEmpresas.FieldByName('Banco_Dados').asstring+'.dbo.Clientes');
                      sql.Add('union all');
                      sql.Add('select Codigo = '+quotedstr(mBene+'F')+'+cast(Codigo as varchar(15))');
                      sql.Add('      ,Nome = ltrim(rtrim(Nome))');
                      sql.Add('      ,CNPJ_CPF = isnull(CNPJ, '''') + isnull(CPF, '''')');
                      sql.Add('      ,Tipo = ''F'' ');
                      sql.Add('from '+tEmpresas.FieldByName('Banco_Dados').asstring+'.dbo.Fornecedores');
                      tEmpresas.next
                end;

                sql.Add('order by Nome');
                Open;
           end;
           with tTmp do begin
                sql.Clear;
                sql.Add('select Ano = (select max(year(Data))  from Lancamentos)');
                sql.Add('      ,Mes = (select max(month(Data)) from Lancamentos where Year(Data) = (select max(year(Data)) from Lancamentos))');
                sql.Add('      ,Dia = (select max(day(Data))   from Lancamentos where Year(Data) = (select max(year(Data)) from Lancamentos) and month(Data) = (select max(month(Data)) from Lancamentos))');
                open;
                cAno.Value     := fieldbyName('Ano').AsInteger;
                cMes.ItemIndex := fieldbyName('Mes').AsInteger-1;
                cDia.value     := fieldbyName('Dia').AsInteger;
           end;
           if mEdicao then begin
              cAno.Value     := yearof(mPesquisaData);
              cMes.itemIndex := monthof(mPesquisaData)-1;
              cDia.value     := dayof(mPesquisaData);

              bFiltro.Click;
              Lotes.Locate('Data; Lote', vararrayof([mPesquisaData, mPesquisaLote]), [loCaseInsensitive]);
              Lancamentos.Locate('Numero', mPesquisaNumero, [loCaseInsensitive]);
              Totaliza;
           end else begin
              bFiltro.click;
           end;
      end;

      Screen.Cursor := crDefault;
end;

procedure TContabilidade_Lancamentos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
  i: Integer;
begin
      with dmContab do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              Panel3.Enabled := True;
              cCodigoDeb.SetFocus;

              if Button = nbInsert then begin
                 LancamentosLote.Value           := Lotes.FieldbyName('Lote').asinteger;
                 LancamentosData.Value           := Lotes.FieldbyName('Data').value;
                 LancamentosEmpresa.Value        := Lotes.FieldbyName('Empresa').asstring;
                 LancamentosData_Documento.Value := Lotes.FieldbyName('Data').value;
                 LancamentosOrigem.Value         := Lotes.FieldbyName('Origem').value;
                 LancamentosRecriar.Value        := false;
              end;
           end;
           if (Button = nbPost) or (Button = nbCancel) then begin
              Panel3.Enabled := False;
           end;
           if (Button = nbPost) or (Button = nbCancel) or (Button = nbDelete) then begin
              Totaliza;
           end;
      end;
end;

procedure TContabilidade_Lancamentos.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      ActiveControl := nil;
      with dmContab, Lancamentos do begin
           if ((Button = nbEdit) or (Button = nbDelete)) and (LancamentosRecriar.AsBoolean) then begin
              MessageDlg('Lançamentos de origem automática não pode ser modificados ou excluídos!', mtError, [mbOK], 0);
              Abort;
           end;
           // Verifica se o lote esta fechado.
           if (Button = nbInsert) or (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
              if not Lotes.FieldByName('Aberto').asboolean then begin
                 MessageDlg('Lote fechado, abra o lote para continuar!', mtError, [mbOK], 0);
                 Abort;
              end;
           end;
           if (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
              // Verifica se o período contabil esta bloqueado.
              screen.Cursor := crSQLWait;
              tTmp.SQL.Clear;
              tTmp.SQL.Add('SELECT COUNT(*) AS Qtde');
              tTmp.SQL.Add('FROM   FechamentoContabil');
              tTmp.SQL.Add('WHERE  Ano = :pAno');
              tTmp.SQL.Add('AND    Mes = :pMes');
              tTmp.SQL.Add('AND    ISNULL(Fechado, 0) = 1');
              tTmp.ParamByName('pAno').AsInteger := YearOf(Lotes.FieldByName('Data').asDatetime);
              tTmp.ParamByName('pMes').AsInteger := MonthOf(Lotes.FieldByName('Data').asDatetime);
              tTmp.Open;
              screen.Cursor := crDefault;

              if tTmp.FieldByName('Qtde').AsInteger > 0 then begin
                 if (Button = nbEdit) then
                    MessageDlg('O lançamento não pode ser modificador!'+#13+#13+'Lançamento esta dentro de um período bloqueado!', mtInformation, [mbOK], 0);
                 if (Button = nbDelete) then
                    MessageDlg('O lançamento não podem ser excluído!'+#13+#13+'Lançamento esta dentro de um período bloqueado!', mtInformation, [mbOK], 0);
                 if (Button = nbPost) then begin
                    MessageDlg('Data do Lançamento esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                 end;
                 Abort;
              end;

              if Button = nbPost then begin
                 if FieldByName('Lote').asinteger = 0 then begin
                    MessageDlg('Lote não informado, informe um lote para continuar!', mtError, [mbOK], 0);
                    Abort;
                 end;
                 if trim(FieldByName('Conta_Debito').asstring)+trim(FieldByName('Conta_Credito').asstring) = '' then begin
                    MessageDlg('Ao menos uma conta deve ser informada no lançamento!', mtError, [mbOK], 0);
                    cContaDeb.SetFocus;
                    Abort;
                 end;
                 if (FieldByName('Historico_Codigo').asinteger = 0) and (trim(FieldByName('Historico_Complemento').asstring) = '')  then begin
                    MessageDlg('Nenhum histórico informado!', mtError, [mbOK], 0);
                    cHistoricoCodigo.SetFocus;
                    Abort;
                 end;
                 if FieldByName('Valor').ascurrency <= 0 then begin
                    MessageDlg('Valor inválido, informe um valor válido para continuar!', mtError, [mbOK], 0);
                    cValor.SetFocus;
                    Abort;
                 end;

                 if State = dsInsert then begin
                    screen.Cursor := crSQLWait;
                    tTmp.SQL.Clear;
                    tTmp.SQL.Add('SELECT  Numero   = (SELECT ISNULL(MAX(Numero), 0)+1   FROM Lancamentos WHERE Data = :pData AND Lote = :pLote AND Empresa = :pEmp)');
                    tTmp.SQL.Add('       ,Registro = (SELECT ISNULL(MAX(Registro), 0)+1 FROM Lancamentos)');
                    tTmp.ParamByName('pData').asDate    := LotesData.value;
                    tTmp.ParamByName('pLote').AsInteger := LancamentosLote.Value;
                    tTmp.ParamByName('pEmp').AsString   := Dados.EmpresasCNPJ.Value;
                    //tTmp.sql.savetofile('c:\temp\Numero_Lancamento.sql');
                    tTmp.Open;

                    FieldByName('Numero').Value   := tTmp.FieldbyName('Numero').AsInteger;
                    FieldByName('Registro').Value := tTmp.FieldbyName('Registro').AsInteger;

                    tTmp.Close;
                    screen.Cursor := crDefault;
                 end;
              end;
           end;

           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir este lançamento?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort;
              End;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TContabilidade_Lancamentos.Totaliza;
Var
    mQuantidadeDia
   ,mQuantidadeMes: Integer;
    mTotalDebitos
   ,mTotalCreditos
   ,mDiferencaDia
   ,mDiferencaMes: Currency;
    mDataIni,
    mDataFim:TDate;
begin
     Screen.Cursor := crSQLWait;

     with dmContab do begin
          with Lancamentos do begin
               sql.Clear;
               sql.Add('select * from Lancamentos where Data = :pData and Lote = :pLote order by Numero');
               ParamByName('pData').value := Lotes.FieldByName('Data').asDatetime;
               ParamByName('pLote').value := Lotes.FieldByName('Lote').asinteger;
               Open;
               if mEdicao then Lancamentos.Locate('Numero', mPesquisaNumero, [loCaseInsensitive]);
          end;
     end;
     with tTotaliza do begin
          close;
          sql.Clear;
          sql.Add('SELECT Lote     = :pLote');
          sql.Add('      ,LanLote  = isnull((select count(*)   from Lancamentos where Data = :pData and Lote = :pLote), 0)');
          sql.Add('      ,DebLote  = isnull((select sum(Valor) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Debito , '''') <> ''''), 0)');
          sql.Add('      ,CredLote = isnull((select sum(Valor) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.Add('      ,DifLote  = isnull((select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Debito , '''') <> '''') - ');
          sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.add('      ,LotesDia = (select count(Lote) from Lotes where data = :pData)');
          SQL.Add('      ,LanDia   = isnull((select count(*)   from Lancamentos where Data = :pData), 0)');
          sql.Add('      ,DebDia   = isnull((select sum(Valor) from Lancamentos where Data = :pData and isnull(Conta_Debito , '''') <> ''''), 0)');
          sql.Add('      ,CredDia  = isnull((select sum(Valor) from Lancamentos where Data = :pData and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.Add('      ,DifDia   = isnull((select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and isnull(Conta_Debito , '''') <> '''') -');
          sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.Add('      ,LotesMes = (select count(Lote) from Lotes where year(Data) = :pAno and month(Data) = :pMes)');
          sql.Add('      ,LanMes   = isnull((select count(*)   from Lancamentos where year(Data) = :pAno and month(Data) = :pMes), 0)');
          sql.Add('      ,DebMes   = isnull((select sum(Valor) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Debito , '''') <> ''''), 0)');
          sql.Add('      ,CredMes  = isnull((select sum(Valor) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.Add('      ,DifMes   = isnull((select isnull(sum(Valor), 0) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Debito , '''') <> '''') -');
          sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.Add('      ,LotesAno = (select count(Lote) from Lotes where Year(Data) = :pAno)');
          sql.Add('      ,LanAno   = isnull((select count(*)   from Lancamentos where Year(Data) = :pAno), 0)');
          sql.Add('      ,DebAno   = isnull((select sum(Valor) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Debito , '''') <> ''''), 0)');
          sql.Add('      ,CredAno  = isnull((select sum(Valor) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Credito, '''') <> ''''), 0)');
          sql.Add('      ,DifAno   = isnull((select isnull(sum(Valor), 0) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Debito , '''') <> '''') -');
          sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Credito, '''') <> ''''), 0)');
          ParamByName('pData').AsDate    := dmContab.LotesData.value;
          ParamByName('pLote').Asinteger := dmContab.Lotes.FieldByName('Lote').asinteger;
          ParamByName('pAno').Asinteger  := cAno.Value;
          ParamByName('pMes').Asinteger  := cMes.ItemIndex+1;
          //sql.savetofile('c:\temp\Lancamentos_Totalizadores.sql');
          open;

          cDifLote.Color      := clWhite;
          cDifLote.Font.Color := clBlack;
          cDifDia.Color       := clWhite;
          cDifDia.Font.Color  := clBlack;
          cDifMes.Color       := clWhite;
          cDifMes.Font.Color  := clBlack;
          cDifAno.Color       := clWhite;
          cDifAno.Font.Color  := clBlack;
          if FieldByName('DifLote').ascurrency <> 0 then begin
             cDifLote.Color      := clRed;
             cDifLote.Font.Color := clYellow;
          end;
          if FieldByName('DifDia').ascurrency <> 0 then begin
             cDifDia.Color      := clRed;
             cDifDia.Font.Color := clYellow;
          end;
          if FieldByName('DifMes').ascurrency <> 0 then begin
             cDifMes.Color      := clRed;
             cDifMes.Font.Color := clYellow;
          end;
          if FieldByName('DifAno').ascurrency <> 0 then begin
             cDifAno.Color      := clRed;
             cDifAno.Font.Color := clYellow;
          end;
     end;

     Screen.Cursor := crDefault;
End;

procedure TContabilidade_Lancamentos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Contabilidade_Lancamentos.Release;
      Contabilidade_Lancamentos := nil;
end;

procedure TContabilidade_Lancamentos.cHistComplEnter(Sender: TObject);
begin
     cHistCompl.SelStart := Length(dmContab.LancamentosHistorico_Complemento.AsString)+1;
end;

procedure TContabilidade_Lancamentos.NavegaLoteBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with dmContab do begin
           if Button = nbPost then begin
              if Lotes.State = dsInsert then begin
                 with tTmp do begin
                      sql.Clear;
                      sql.Add('select lote     = (select isnull(max(lote), 0)+1     as lote from lotes where data = :pdata)');
                      sql.Add('      ,Registro = (select isnull(max(registro), 0)+1 as reg  from lotes)');
                      ParamByName('pData').value := Lotes.FieldByName('Data').value;
                      open;
                      LotesLote.Value     := FieldByName('Lote').Value;
                      LotesRegistro.Value := FieldByName('Reg').Value;
                      close;
                 end;
              end;
              Lotes.FieldByName('Contabilizar').value := cContabilizar.State;
              Lotes.FieldByName('Aberto').value       := cAberto.State;

              if Lotes.State = dsEdit then begin
                 with tTmp do begin
                      sql.Clear;
                      sql.add('update Lancamentos set Contabilizar = :pContab where Empresa = :pEmpresa and Data = :pData and Lote = :pLote and Empresa = :pEmp');
                      ParamByName('pData').value    := Lotes.FieldByName('Data').asDateTime;
                      ParamByName('pLote').Value    := Lotes.FieldByName('Lote').AsInteger;
                      ParamByName('pEmpresa').Value := Lotes.FieldByName('Empresa').asstring;
                      ParamByName('pContab').Value  := Lotes.FieldByName('Contabilizar').asboolean;
                      execute;
                      close;
                 end;
              end;
           end;
           if Button = nbDelete then begin
              with tTmp do begin
                   SQL.clear;
                   sql.add('SELECT COUNT(*) AS Qtde FROM Lancamentos WHERE Data = :pData AND Lote = :pLote');
                   ParamByName('pData').Value := Lotes.FieldByName('Data').Value;
                   ParamByName('pLote').Value := Lotes.FieldByName('Lote').AsInteger;
                   Open;

                   if FieldByName('Qtde').AsInteger > 0 then begin
                      if MessageDlg('Atenção!'+#13+'Este lote possui '+ FieldByName('Qtde').asstring+' lançamentos!'+#13+#13+
                                 'Deseja realmente excluir este lote e todos os seus '+FieldByName('Qtde').asstring+' lançamentos?',
                                  mtWarning, [mbYes, mbNo], 0) = mrNo then begin
                         Abort;
                      end;
                   end else begin
                      if MessageDlg('Deseja realmente excluir este lote?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                         Abort;
                      end;
                   end;

                   // Delete todos os lançamentos do lote.
                   Sql.Clear;
                   sql.add('DELETE FROM Lancamentos WHERE Data = :pData AND Lote = :pLote AND Empresa = :pEmp');
                   ParamByName('pData').Value     := Lotes.FieldByName('Data').asDateTime;
                   ParamByName('pLote').Value    := Lotes.FieldByName('Lote').AsInteger;
                   ParamByName('pEmpresa').Value := Lotes.FieldByName('Empresa').asstring;
                   Open;
              end;
           end;
      end;
end;

procedure TContabilidade_Lancamentos.NavegaLoteClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      with dmContab, Lotes do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  NavegaLote.Controls[i].Enabled := False;
              end;
              Panel2.Enabled := True;
              cDataLote.SetFocus;

              if Button = nbInsert then begin
                 FieldByName('Data').Value         := Date;
                 FieldByName('Empresa').Value      := Dados.Empresas.FieldByName('CNPJ').asstring;
                 FieldByName('Origem').Value       := 'MANUAL';
                 FieldByName('Aberto').Value       := true;
                 FieldByName('Contabilizar').Value := true;
                 cAberto.State                     := tssOn;
                 cContabilizar.State               := tssOn;
              end;
           end;
           if (Button = nbPost) or (Button = nbCancel) then begin
              Panel2.Enabled := False;
              dmContab.Lotes.Refresh;
           end;
      end;
end;

procedure TContabilidade_Lancamentos.cHistoricoClick(Sender: TObject);
var
   mComp: string;
begin
     if Active then begin
        if (dmContab.Lancamentos.state = dsInsert) or (dmContab.Lancamentos.state = dsEdit) then begin
           with Dados, dmContab, Lancamentos do begin
                mComp := Historicos.FieldByName('Macro').asstring;
                mComp := StringReplace(mComp, '<{PROCESSO}>'                          , FieldByName('Processo').asstring                                 , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{DI}>'                                , tProcessos.FieldByName('DI').asstring                            , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{TIPO DE DOCUMENTO}>'                 , uppercase(TiposDocumentos.FieldByName('Descricao').asstring)     , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{Nº DOCUMENTO}>'                      , FieldByName('Documento').asstring                                , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{DATA DOCUMENTO}>'                    , FieldByName('Data_Documento').asstring                           , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{MES}>'                               , inttostr(MonthOf(Lotes.FieldByName('Data').asdatetime))          , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{NOME DO MES}>'                       , uppercase(NomeMes(monthof(Lotes.FieldByName('Data').asdatetime))), [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>', ''                                                               , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{BENEFICIARIO}>'                      , ''                                                               , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{BANCO}>'                             , ''                                                               , [rfReplaceAll, rfIgnoreCase]);
                mComp := StringReplace(mComp, '<{OBSERVAÇÃO}>'                        , ''                                                               , [rfReplaceAll, rfIgnoreCase]);

                FieldByName('Historico_Complemento').Value := mComp;;
           end;
        end;
     end;
end;

procedure TContabilidade_Lancamentos.cRegistroChange(Sender: TObject);
begin
     if Active then begin
        with dmContab, Lotes do begin
             cAberto.State       := iif(FieldByName('Aberto').asboolean      , tsson, tssoff);
             cContabilizar.State := iif(FieldByName('Contabilizar').asboolean, tsson, tssoff);
        end;
        Totaliza;
     end;
end;

procedure TContabilidade_Lancamentos.SpeedButton1Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'HistoricoPadrao';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := '';
      PesquisaGerais.Showmodal;
      with dmContab, Lancamentos do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Historico_Codigo').value := Clipboard.asText;
              cHistoricoCodigo.Setfocus;
           end;
      end;
end;

procedure TContabilidade_Lancamentos.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND ISNULL(Sintetica, 0) <> 1';
      PesquisaGerais.Showmodal;
      with dmContab, Lancamentos do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Debito').value := Clipboard.asText;
              cContaDeb.Setfocus;
           end;
      end;
end;

procedure TContabilidade_Lancamentos.SpeedButton3Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND ISNULL(Sintetica, 0) <> 1';
      PesquisaGerais.Showmodal;
      with dmContab, Lancamentos do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Credito').value := Clipboard.asText;
              cContaCred.Setfocus;
           end;
      end;
end;

procedure TContabilidade_Lancamentos.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TContabilidade_Lancamentos.cDataExit(Sender: TObject);
begin
      Totaliza;
end;

procedure TContabilidade_Lancamentos.Button2Click(Sender: TObject);
begin
      Contabilidade_LancamentosDiferenca := TContabilidade_LancamentosDiferenca.Create(Self);
      Contabilidade_LancamentosDiferenca.Caption := Caption;
      Contabilidade_LancamentosDiferenca.ShowModal;

      if mPesquisaData <> 0 then begin
         cAno.value     := Yearof(mPesquisaData);
         cMes.ItemIndex := MonthOf(mPesquisaData)-1;

         bFiltro.click;
         with dmContab do begin
              Lotes.Locate('Data; Lote', vararrayof([mPesquisaData, mPesquisaLote]), [loCaseInsensitive]);
         end;
      end;

end;

end.
