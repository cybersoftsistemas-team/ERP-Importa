unit frmImpressao_FinanceirosOP_PagarReceberSimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, IniFiles, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppParameter, ppDesignLayer, ppCtrls, MaskUtils, funcoes,
  ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport, Data.DB, MemDS, DBAccess, MSAccess, ppDB, ppComm, ppRelatv, ppDBPipe, Vcl.StdCtrls, RxLookup, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, RxCtrls,
  Vcl.CheckLst, ppStrtch, ppMemo, ComObj, DateUtils;

type
  TImpressao_FinanceirosOP_PagarReceberSimp = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cDataIni: TDateEdit;
    lData: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cLancamentos: TRadioGroup;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText5: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    cMovimento: TRadioGroup;
    cExcel: TCheckBox;
    cAdianta: TCheckBox;
    pEmpresas: TppDBPipeline;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    rPagRecSimp: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    pRodaPeGrupoEmpresa: TppGroupFooterBand;
    lTotalEmpresa: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    pRodapeGrupoDia: TppGroupFooterBand;
    lTotalDia: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList2: TppParameterList;
    tTmp: TMSQuery;
    StaticText10: TStaticText;
    cEmpresas: TCheckListBox;
    bTodas: TButton;
    ppLabel16: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBText3: TppDBText;
    pPagarReceber: TppDBPipeline;
    ppDBCalc1: TppDBCalc;
    tEmpresas: TMSQuery;
    ppDBCalc2: TppDBCalc;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    lTotalMes: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    cTipoBaixa: TRadioGroup;
    cValor: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bTodasClick(Sender: TObject);
    procedure pRodaPeGrupoEmpresaBeforePrint(Sender: TObject);
    procedure pRodapeGrupoDiaBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure cMovimentoClick(Sender: TObject);
  private
    procedure Consolidar;
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
     mEmpresas : Array[0..100, 0..100] of String;
     mPeriodo: string;
  end;

var
  Impressao_FinanceirosOP_PagarReceberSimp: TImpressao_FinanceirosOP_PagarReceberSimp;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, frmImpressao_FinanceirosOP_PagarReceber, frmJanela_Processamento;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.bImprimirClick(Sender: TObject);
begin
     if DataLimpa(cDataIni.Text) and DataLimpa(cDataFim.Text) then begin
        MessageDlg('Não há um período informado!'+#13+#13+'É necessário informar uma data inicial e final para a data do Vencimento.', mtInformation, [mbOK], 0);
        Exit;
     end;

     if cLancamentos.ItemIndex = 0 then lTitulo.Caption := 'CONTAS A PAGAR ';
     if cLancamentos.ItemIndex = 1 then lTitulo.Caption := 'CONTAS A RECEBER ';
     if cLancamentos.ItemIndex = 2 then lTitulo.Caption := 'CONTAS A PAGAR/RECEBER ';
     if Dados.EmpresasMatriz_Filial.AsBoolean then
        lTitulo.Caption := lTitulo.Caption + ' - MATRIZ'
      else
        lTitulo.Caption := lTitulo.Caption + ' - FILIAL '+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

     lPeriodo.Caption := '';
     if cLancamentos.ItemIndex = 0 then lPeriodo.Caption := lPeriodo.Caption + '| Pagamentos ';
     if cLancamentos.ItemIndex = 1 then lPeriodo.Caption := lPeriodo.Caption + '| Recebimentos ';
     if cLancamentos.ItemIndex = 2 then lPeriodo.Caption := lPeriodo.Caption + '| Pagamentos/Recebimentos ';
     if cMovimento.ItemIndex   = 0 then lPeriodo.Caption := lPeriodo.Caption + '| Abertas ';
     if cMovimento.ItemIndex   = 1 then lPeriodo.Caption := lPeriodo.Caption + '| Baixadas ';
     if cMovimento.ItemIndex   = 2 then lPeriodo.Caption := lPeriodo.Caption + '| Abertas/Baixadas ';
     lPeriodo.Caption := lPeriodo.Caption + '| Período: '+cDataIni.Text + ' a '+cDataFim.Text+' |';

     Consolidar;

     Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

     if tTitulos.RecordCount = 0 then begin
        MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
     end else begin
        If not cExcel.Checked then begin
           if fileExists(Dados.EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rPagRecSimp.Print;
           rPagRecSimp.FreeOnRelease;
           rPagRecSimp.Reset;
        end else begin
           ExportaExcel;
        End;
     End;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cClassificacao.KeyValue := 0;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.bTodasClick(Sender: TObject);
var
    i: Integer;
begin
      if bTodas.Tag = 0 then begin
         bTodas.Tag := 1;
         for i := 0 to cEmpresas.Items.Count-1 do begin
             cEmpresas.Checked[i] := true;
         end;
      end else begin
         for i := 0 to cEmpresas.Items.Count-1 do begin
             cEmpresas.Checked[i] := false;
         end;
         bTodas.Tag := 0;
      end;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.cMovimentoClick(Sender: TObject);
begin
//     if cMovimento.ItemIndex = 2 then begin
//        cValor.ItemIndex := 1;
//     end;
//     cValor.Enabled   := cMovimento.ItemIndex <> 2;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
   i   : Integer;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'DataIni'       , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'DataFim'       , cDataFim.Date );
      if cClassificacao.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_AGRECSIMP', 'Classificacao', cClassificacao.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Classificacao', '');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Lancamento'   , cLancamentos.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Movimento'    , cMovimento.ItemIndex );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Excel'        , cExcel.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Adiantamento' , cAdianta.Checked );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'TipoBaixa'    , cTipoBaixa.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Valor'        , cValor.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Todas'        , bTodas.Tag);
      aINI.Free;

      Impressao_FinanceirosOP_PagarReceberSimp.Release;
      Impressao_FinanceirosOP_PagarReceberSimp := nil;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;


procedure TImpressao_FinanceirosOP_PagarReceberSimp.FormShow(Sender: TObject);
var
   aINI: TIniFile;
   i : Integer;
begin
      With Dados do begin
           Configuracao.Open;
           with Empresas do begin
                sql.Clear;
                sql.ADD('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
                Open;
           end;
           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('SELECT *');
                sql.Add('FROM ClassificacaoFinanceira');
                sql.Add('WHERE Desativada <> 1');
                if not ConfiguracaoCompartilhar_Classificacao.asboolean then
                   sql.Add('AND Codigo IN(SELECT DISTINCT Classificacao FROM PagarReceber)')
                else
                   sql.Add('AND Codigo IN(SELECT DISTINCT Classificacao FROM '+EmpresasBanco_Dados.asstring+'.dbo.PagarReceber)');

                sql.Add('ORDER BY Descricao, Codigo');
                //sql.SaveToFile('c:\temp\Impressao_Pagar_Receber.sql');
                open;
           end;
           i := 0;
           cEmpresas.Clear;
           with tEmpresas do begin
                sql.Clear;
                sql.add('select Codigo');
                sql.add('      ,CNPJ');
                sql.add('      ,Razao_Social');
                sql.add('      ,Banco_Dados');
                sql.add('from Empresas');
                sql.add('where Consolidar = 1');
                sql.add('and substring(CNPJ, 1, 8) = '+Copy(Empresas.fieldbyname('CNPJ').AsString, 1, 8));
                sql.add('order by cnpj');
                Open;
                First;
                while not eof do begin
                      if fieldbyname('Codigo').Value <> Menu_Principal.mEmpresa then begin
                         cEmpresas.Items.Add(FormatMaskText('##.###.###/####-##;0; ', fieldbyname('CNPJ').AsString) + ' - '+fieldbyname('Razao_Social').AsString);
                         mEmpresas[0,i] := fieldbyname('Banco_Dados').AsString;
                         mEmpresas[1,i] := fieldbyname('Codigo').AsString;
                         Inc(i);
                      end;    
                      next;
                end;
           end;

           If cMovimento.ItemIndex <> 1 then begin
              //cBanco.KeyValue := -1;
              lData.Caption   := 'Vencimento';
           end else begin
              lData.Caption := 'Baixa';
           End;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'DataIni'      , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'DataFim'      , Date );
      cClassificacao.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Classificacao', '' );
      cLancamentos.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Lancamento'   , 2 );
      cMovimento.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Movimento'    , 2 );
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Excel'        , false );
      cAdianta.Checked        := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Adiantamento' , true);
      cTipoBaixa.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'TipoBaixa'    , 0);
      cValor.ItemIndex        := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Valor'        , 0);
      bTodas.Tag              := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_PAGRECSIMP', 'Todas'        , 0);
      aINI.Free;

      if bTodas.Tag = 1 then  begin
         btodas.Tag := 0;
         bTodasClick(self);
      end;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
     lTotalMes.Caption := 'TOTAL DO MÊS '+poezero(2, monthof(tTitulos.FieldByName('Data_Vencimento').value));
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.pRodapeGrupoDiaBeforePrint(Sender: TObject);
begin
     lTotalDia.Caption := 'TOTAL DO DIA '+poezero(2, Dayof(tTitulos.FieldByName('Data_Vencimento').value));
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.pRodaPeGrupoEmpresaBeforePrint(Sender: TObject);
begin
     lTotalEmpresa.Caption := 'TOTAL DA '+tTitulos.FieldByName('Nome_Filial').AsString;
end;

procedure TImpressao_FinanceirosOP_PagarReceberSimp.Consolidar;
var
   i       : Integer;
   mSQL    : WideString;
   mSQLNovo
  ,mSQLParte1: TMemo;
   mCPF
  ,mCNPJ
  ,mCompClass
  ,mDtOrdem:  string;
  mConsol: boolean;
begin
     mConsol          := false;
     mSQLNovo         := TMemo.Create(Impressao_FinanceirosOP_PagarReceberSimp);
     mSQLNovo.Visible := False;
     mSQLNovo.Parent  := Impressao_FinanceirosOP_PagarReceberSimp;
     mSQLNovo.Clear;
     
     mSQLParte1         := TMemo.Create(Impressao_FinanceirosOP_PagarReceberSimp);
     mSQLParte1.Visible := False;
     mSQLParte1.Parent  := Impressao_FinanceirosOP_PagarReceberSimp;
     mSQLParte1.Clear;

     mCompClass := iif(Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira', 'ClassificacaoFinanceira');
    (*
     with tTitulos do begin
          sql.Clear;
          sql.Add('select pr.Numero');
          sql.Add('      ,pr.Tipo');
          sql.Add('      ,pr.Data_Vencimento');
          sql.Add('      ,Dia = day(pr.Data_Vencimento)');
          sql.Add('      ,Mes = month(pr.Data_Vencimento)');
          sql.Add('      ,Ano = year(pr.Data_Vencimento)');
          sql.Add('      ,Class_Codigo = Classificacao');
          sql.Add('      ,Class_Nome = (select Descricao from '+mCompClass+' as cf where cf.Codigo = pr.Classificacao)');
          sql.Add('      ,Beneficiario = case pr.Tipo');
          sql.Add('                           when ''P'' then iif(isnull(pr.Fornecedor, 0) <> 0, (select Nome from Fornecedores where Codigo = pr.Fornecedor), (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos where Codigo = pr.Orgao))');
          sql.Add('                           when ''R'' then (select Nome from Clientes where Codigo = pr.Cliente)');
          sql.Add('                      end');
          sql.Add('      ,pr.Numero_Documento');
          if cMovimento.ItemIndex = 0 then begin
             if cTipoBaixa.ItemIndex = 0 then begin
                if cValor.ItemIndex = 0 then begin
                   sql.Add('      ,Valor_Total = pr.Valor_Total - isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0)');
                end else begin
                   sql.Add('      ,Valor_Total');
                end;
             end else begin
                sql.Add('      ,Valor_Total = pr.Valor_Total - isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0)');
             end;
          end;
          if cMovimento.ItemIndex = 1 then begin
             if cTipoBaixa.ItemIndex = 0 then begin
                if cValor.ItemIndex = 0 then begin
                   sql.Add('      ,Valor_Total = isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0)');
                end else begin
                   sql.Add('      ,Valor_Total');
                end;
             end else begin
                sql.Add('      ,Valor_Total = isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0)');
             end;
          end;
          if cMovimento.ItemIndex = 2 then begin
             if cTipoBaixa.ItemIndex = 0 then begin
                if cValor.ItemIndex = 0 then begin
                   //sql.Add('      ,Valor_Total = isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0)');
                   sql.Add('      ,Valor_Total = case when isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) > 0 then');
                   sql.Add('                          isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0)');
                   sql.Add('                     else');
                   sql.Add('                          Valor_Total');
                   sql.Add('                     end');
                end else begin
                   sql.Add('      ,Valor_Total');
                end;
             end else begin
                sql.Add('      ,Valor_Total = isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0)');
             end;
          end;
          sql.Add('      ,pr.Observacao');
          sql.Add('      ,pr.Processo');
          sql.Add('      ,pr.Empresa');
          sql.Add('      ,Filial = isnull(pr.Filial, 0)');
          sql.Add('      ,Nome_Filial = iif( (select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa) = 0 , ''MATRIZ'', ''FILIAL ''+(select cast(Numero_Filial as char(3)) from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa))');
          sql.Add('into #temp');
          sql.Add('from PagarReceber pr');
          sql.Add('where pr.Nivel <= :pNivel ');
          sql.Add('and pr.Data_Vencimento between :pDataIni and :pDataFim');
          if cLancamentos.ItemIndex < 2 then begin
             sql.Add('and pr.Tipo = '+iif(cLancamentos.ItemIndex = 0, QuotedStr('P'), quotedstr('R')));
          end;
          sql.Add('and isnull((select Relatorio from '+mCompClass+' as cf where pr.Classificacao = cf.Codigo), 0) <> 1');
          sql.Add('and isnull((select Somente_Faturamento from '+mCompClass+' where Codigo = Classificacao), 0) <> 1 ');
          if cAdianta.Checked then begin
             sql.Add('and isnull((select Adiantamento from '+mCompClass+' as cf where pr.Classificacao = cf.Codigo), 0) = 0');
          end;
          if cTipoBaixa.ItemIndex = 0 then begin
             if cMovimento.ItemIndex = 0 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) < round(Valor_Total, 2)');
             end;
             if cMovimento.ItemIndex = 1 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) > 0');
             end;
          end;
          if cTipoBaixa.ItemIndex = 1 then begin
             if cMovimento.ItemIndex = 0 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0) < round(Valor_Total, 2)');
             end;
             if cMovimento.ItemIndex = 1 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0) > 0');
             end;
          end;
          
          if (Trim(cClassificacao.Text) <> '') then begin
             sql.Add('and pr.Classificacao = '+QuotedStr(Dados.ClassificacaoFinanceiraCodigo.AsString));
          end;
          mSQLNovo.Lines.add(tTitulos.sql.Text);

          for i := 0 to cEmpresas.Items.Count-1 do begin
              mSQL := RemoveCaracter('PagarReceber', mEmpresas[0,i]+'.dbo.PagarReceber', tTitulos.sql.Text);
              mSQL := RemoveCaracter('into #temp', '', mSQL);
              mSQL := RemoveCaracter('Fornecedores ', mEmpresas[0,i]+'.dbo.Fornecedores ', mSQL);
              mSQL := RemoveCaracter('Clientes '    , mEmpresas[0,i]+'.dbo.Clientes '    , mSQL);
              if not Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                 mSQL := RemoveCaracter('ClassificacaoFinanceira ', mEmpresas[0,i]+'.dbo.ClassificacaoFinanceira ', mSQL);
              end;
              mSQL := RemoveCaracter(',Empresa = '+InttoStr(Menu_Principal.mEmpresa), ',Empresa = '+mEmpresas[1,i], mSQL);

              if cMovimento.ItemIndex = 1 then begin
                 mSQL := RemoveCaracter('into #temp', '', mSQL);
              end;
              if cEmpresas.Checked[i] = true then begin
                 mSQLNovo.Lines.Add('union all');
                 mSQLNovo.Lines.Add(mSQL);
                 mConsol := true;
              end;
          end;
          sql.Clear;
          sql.Add(trim(mSQLNovo.Lines.Text));
          sql.Add('select * from #temp');
          sql.Add('order by Nome_Filial desc, Ano, Mes, Data_Vencimento, Beneficiario');
          sql.Add('drop table #temp');
          ParamByName('pDataIni').AsDate  := cDataIni.Date;
          ParamByName('pDataFim').AsDate  := cDataFim.Date;
          ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
          sql.SaveToFile('c:\temp\Impressao_PagarReceber_Simp.sql');
          Open;
     end;
     *)
     
     with tTitulos do begin
          sql.Clear;
          sql.Add('select pr.Numero');
          sql.Add('      ,pr.Tipo');
          sql.Add('      ,pr.Data_Vencimento');
          sql.Add('      ,Dia = day(pr.Data_Vencimento)');
          sql.Add('      ,Mes = month(pr.Data_Vencimento)');
          sql.Add('      ,Ano = year(pr.Data_Vencimento)');
          sql.Add('      ,Class_Codigo = Classificacao');
          sql.Add('      ,Class_Nome = (select Descricao from '+mCompClass+' as cf where cf.Codigo = pr.Classificacao)');
          sql.Add('      ,Beneficiario = case pr.Tipo');
          sql.Add('                           when ''P'' then iif(isnull(pr.Fornecedor, 0) <> 0, (select Nome from Fornecedores where Codigo = pr.Fornecedor), (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos where Codigo = pr.Orgao))');
          sql.Add('                           when ''R'' then (select Nome from Clientes where Codigo = pr.Cliente)');
          sql.Add('                      end');
          sql.Add('      ,pr.Numero_Documento');
          sql.Add('      ,pr.Observacao');
          sql.Add('      ,pr.Processo');
          sql.Add('      ,pr.Empresa');
          sql.Add('      ,Filial = isnull(pr.Filial, 0)');
          sql.Add('      ,Nome_Filial = iif( (select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa) = 0 , ''MATRIZ'', ''FILIAL ''+(select cast(Numero_Filial as char(3)) from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa))');
          if cMovimento.ItemIndex in[0, 2] then begin
             if cTipoBaixa.ItemIndex = 0 then begin
                if cValor.ItemIndex = 0 then begin
                   sql.Add('      ,Valor_Total = pr.Valor_Total - isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0)');
                end else begin
                   sql.Add('      ,Valor_Total');
                end;
             end else begin
                sql.Add('      ,Valor_Total = pr.Valor_Total - isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0)');
             end;
          end;   
          if cMovimento.ItemIndex = 1 then begin
             if cTipoBaixa.ItemIndex = 0 then begin
                if cValor.ItemIndex = 0 then begin
                   sql.Add('      ,Valor_Total = isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0)');
                end else begin
                   sql.Add('      ,Valor_Total');
                end;
             end else begin
                sql.Add('      ,Valor_Total = isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0)');
             end;
          end;
          sql.Add('into #temp');
          sql.Add('from PagarReceber pr');
          sql.Add('where pr.Nivel <= :pNivel ');
          sql.Add('and pr.Data_Vencimento between :pDataIni and :pDataFim');
          if cLancamentos.ItemIndex < 2 then begin
             sql.Add('and pr.Tipo = '+iif(cLancamentos.ItemIndex = 0, QuotedStr('P'), quotedstr('R')));
          end;
          sql.Add('and isnull((select Relatorio from '+mCompClass+' as cf where pr.Classificacao = cf.Codigo), 0) <> 1');
          sql.Add('and isnull((select Somente_Faturamento from '+mCompClass+' where Codigo = Classificacao), 0) <> 1 ');
          if cAdianta.Checked then begin
             sql.Add('and isnull((select Adiantamento from '+mCompClass+' as cf where pr.Classificacao = cf.Codigo), 0) = 0');
          end;
          if (Trim(cClassificacao.Text) <> '') then begin
             sql.Add('and pr.Classificacao = '+QuotedStr(Dados.ClassificacaoFinanceiraCodigo.AsString));
          end;
          if cTipoBaixa.ItemIndex = 0 then begin
             if cMovimento.ItemIndex in[0, 2] then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) < round(Valor_Total, 2)');
             end;
             if cMovimento.ItemIndex = 1 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) > 0');
             end;
          end;
          if cTipoBaixa.ItemIndex = 1 then begin
             if cMovimento.ItemIndex = 0 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0) < round(Valor_Total, 2)');
             end;
             if cMovimento.ItemIndex = 1 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data <= :pDataFim), 2),0) > 0');
             end;
          end;
          
          if cMovimento.ItemIndex = 2 then begin
             mSQLParte1.Lines.add(removeCaracter(',Valor_Total = pr.Valor_Total -', ',Valor_Total =', tTitulos.SQL.text));
             mSQLParte1.Lines.text := removeCaracter('into #temp', '', mSQLParte1.Lines.text);
             mSQLParte1.Lines.text := removeCaracter('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) < round(Valor_Total, 2)', 'and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero), 2),0) > 0', mSQLParte1.Lines.text);
             sql.Add('union all');
             sql.Add(mSQLParte1.Lines.Text);
          end;
          mSQLNovo.Lines.add(sql.Text);

          for i := 0 to cEmpresas.Items.Count-1 do begin
              mSQL := RemoveCaracter('PagarReceber', mEmpresas[0,i]+'.dbo.PagarReceber', tTitulos.sql.Text);
              mSQL := RemoveCaracter('into #temp', '', mSQL);
              mSQL := RemoveCaracter('Fornecedores ', mEmpresas[0,i]+'.dbo.Fornecedores ', mSQL);
              mSQL := RemoveCaracter('Clientes '    , mEmpresas[0,i]+'.dbo.Clientes '    , mSQL);
              if not Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                 mSQL := RemoveCaracter('ClassificacaoFinanceira ', mEmpresas[0,i]+'.dbo.ClassificacaoFinanceira ', mSQL);
              end;
              mSQL := RemoveCaracter(',Empresa = '+InttoStr(Menu_Principal.mEmpresa), ',Empresa = '+mEmpresas[1,i], mSQL);

              if cMovimento.ItemIndex = 1 then begin
                 mSQL := RemoveCaracter('into #temp', '', mSQL);
              end;
              if cEmpresas.Checked[i] = true then begin
                 mSQLNovo.Lines.Add('union all');
                 mSQLNovo.Lines.Add(mSQL);
                 mConsol := true;
              end;
          end;
          sql.Clear;
          sql.Add(trim(mSQLNovo.Lines.Text));
          sql.Add('select * from #temp');
          sql.Add('order by Nome_Filial desc, Ano, Mes, Data_Vencimento, Beneficiario');
          sql.Add('drop table #temp');
          ParamByName('pDataIni').AsDate  := cDataIni.Date;
          ParamByName('pDataFim').AsDate  := cDataFim.Date;
          ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
          //sql.SaveToFile('c:\temp\Impressao_PagarReceber_Simp.sql');
          Open;
     end;
     
     if mConsol then begin 
        lPeriodo.Caption := lPeriodo.Caption + ' CONSOLIDADO |';
        mPeriodo := '| CONSOLIDADO ';
     end;
     
     mSQLNovo.Destroy;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_PagarReceberSimp.ExportaEXCEL;
var
   mPlanilha
  ,img: Variant;
   mLin
  ,mCol
  ,mEmpresa
  ,mDia
  ,mFilial
  ,mMes: Integer;
   mNomeFilial: string;
   mTotalDia
  ,mTotalEmp
  ,mTotalMes
  ,mTotalGeral: Real;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tTitulos.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');
      mPlanilha.WorkBooks.add(1);
      mPlanilha.Visible := false;
      mPlanilha.activewindow.displaygridlines := false;

      // Titulo.
      mPlanilha.Cells[1, 1].cells                    := tEmpresas.fieldbyname('Razao_Social').asstring;
      mPlanilha.Range['A1','H1'].Font.Size           := 20;
      mPlanilha.Range['A1','H1'].Font.Color          := clWhite;
      mPlanilha.Range['A1','H1'].Font.Bold           := true;
      mPlanilha.Range['A1','H1'].Mergecells          := True;
      mPlanilha.Range['A1','H1'].HorizontalAlignment := 3;
      mPlanilha.Range['A1','H1'].VerticalAlignment   := 2;
      mPlanilha.Range['A1','H1'].RowHeight           := 30;
      mPlanilha.Range['A1','H1'].Interior.Color      := RGB(0, 140, 140);
      mPlanilha.Range['A1','G3'].Interior.Pattern    := 1;
                            
      mPlanilha.Cells[2, 1].cells                    := 'CONTAS A PAGAR RECEBER SIMPLIFICADO';
      mPlanilha.Range['A2','H2'].Font.Size           := 16;
      mPlanilha.Range['A2','H2'].Font.Color          := clWhite;
      mPlanilha.Range['A2','H2'].Font.Bold           := true;
      mPlanilha.Range['A2','H2'].Mergecells          := True;
      mPlanilha.Range['A2','H2'].HorizontalAlignment := 3;
      mPlanilha.Range['A2','H2'].VerticalAlignment   := 2;
      mPlanilha.Range['A2','H2'].RowHeight           := 30;
      mPlanilha.Range['A2','H2'].Interior.Color      := RGB(0, 140, 140);

      if cLancamentos.ItemIndex = 0 then mPeriodo := mPeriodo + '| Pagamentos ';
      if cLancamentos.ItemIndex = 1 then mPeriodo := mPeriodo + '| Recebimentos ';
      if cLancamentos.ItemIndex = 2 then mPeriodo := mPeriodo + '| Pagamentos/Recebimentos ';
      if cMovimento.ItemIndex   = 0 then mPeriodo := mPeriodo + '| Abertas ';
      if cMovimento.ItemIndex   = 1 then mPeriodo := mPeriodo + '| Baixadas ';
      if cMovimento.ItemIndex   = 2 then mPeriodo := mPeriodo + '| Abertas/Baixadas ';
      mPeriodo := mPeriodo + '| Período: '+cDataIni.Text + ' a '+cDataFim.Text+' |';
      mPlanilha.Cells[3, 1].cells                    := mPeriodo;
      mPlanilha.Range['A3','H3'].Font.Size           := 10;
      mPlanilha.Range['A3','H3'].Font.Bold           := true;
      mPlanilha.Range['A3','H3'].Mergecells          := True;
      mPlanilha.Range['A3','H3'].HorizontalAlignment := 4;
      mPlanilha.Range['A3','H3'].VerticalAlignment   := 2;
      mPlanilha.Range['A3','H3'].RowHeight           := 17;

      // Logo
      if FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
         Img                            := mPlanilha.Worksheets[1].Pictures.Insert(Dados.Empresas.FieldByName('Logo').AsString);
         Img.ShapeRange.LockAspectRatio := false;
         Img.Left                       := 4;     // Posição horizontal da imagem
         Img.Top                        := 4;     // Posição vertical da imagem
         Img.Width                      := 100;   // Largura da imagem
         Img.Height                     := 54;    // Altura da imagem
      end;

      mCol := 1;
      mLin := 4;
      // Nomes dos colunas.
      mPlanilha.Cells[mLin, mCol].cells       := 'VENCTO';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'TÍTULO';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 8;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'CLASSIFICAÇÃO FINANCEIRA';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 60;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'BENEFICIÁRIO';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 60;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'Nº DOCUMENTO';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'PROCESSO';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'OBSERVAÇÃO';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 70;
      inc(mCol);
      mPlanilha.Cells[mLin, mCol].cells       := 'VALOR';
      mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
      inc(mCol);
      mPlanilha.Range['A4','H4'].HorizontalAlignment := 3;
      mPlanilha.Range['A4','H4'].VerticalAlignment   := 2;
      mPlanilha.Range['A4','H4'].Interior.Color      := RGB(47, 117, 181);
      mPlanilha.Range['A4','H4'].Font.Size           := 8;
      mPlanilha.Range['A4','H4'].Font.Color          := clWhite;
      mPlanilha.Range['A4','H4'].Font.Bold           := true;
      mPlanilha.Range['A4','H4'].Interior.Pattern    := 1;

      mPlanilha.Range['A4','H4'].Interior.Pattern  := 1;
      mPlanilha.Range['A4','H4'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A4','H4'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A4','H4'].Borders.Color     := RGB(0,0,0);
      
      inc(mLin);

//      mDia        := dayof(tTitulos.FieldByName('Data_Vencimento').Value);
//      mMes        := monthof(tTitulos.FieldByName('Data_Vencimento').Value);
      mDia        := tTitulos.FieldByName('Dia').asinteger;
      mMes        := tTitulos.FieldByName('Mes').asinteger;
//      mFilial     := tTitulos.FieldByName('Filial').asinteger;
      mNomeFilial := tTitulos.FieldByName('Nome_Filial').asstring;
      mTotalDia   := 0;
      mTotalMes   := 0;
      mTotalEmp   := 0;
      mTotalGeral := 0;
      
      with tTitulos do begin
           While (not Eof) and (not Funcoes.Cancelado) do Begin
                 mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].Font.Size           := 8;
                 mPlanilha.Range['G'+InttoStr(mLin),'H'+InttoStr(mLin)].HorizontalAlignment := 1;
                 mPlanilha.Range['A'+InttoStr(mLin),'A'+InttoStr(mLin)].HorizontalAlignment := 3;
                 mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].RowHeight           := 13;
                 mPlanilha.Range['D'+inttostr(mLin),'D'+inttostr(mLin)].HorizontalAlignment := 2;
                 mPlanilha.Range['E'+inttostr(mLin),'E'+inttostr(mLin)].HorizontalAlignment := 2;

                 mPlanilha.Range['A'+InttoStr(mLin),'H'+inttostr(mLin)].Interior.Pattern  := 1;
                 mPlanilha.Range['A'+InttoStr(mLin),'H'+inttostr(mLin)].Borders.LineStyle := 1; //xlContinuous;
                 mPlanilha.Range['A'+InttoStr(mLin),'H'+inttostr(mLin)].Borders.Weight    := 2; //xlThin;
                 mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Borders.Color     := clSilver;

                 mPlanilha.Cells[mLin,01] := FieldByName('Data_Vencimento').Value;
                 mPlanilha.Cells[mLin,02] := FieldByName('Numero').Value;
                 mPlanilha.Cells[mLin,03] := FieldByName('Class_Codigo').asstring + ' - '+FieldByName('Class_Nome').asstring;
                 mPlanilha.Cells[mLin,04] := FieldByName('Beneficiario').asstring;
                 mPlanilha.Cells[mLin,05] := FieldByName('Numero_Documento').AsString;
                 mPlanilha.Cells[mLin,05].NumberFormat := '#';
                 mPlanilha.Cells[mLin,06] := FieldByName('Processo').AsString;
                 mPlanilha.Cells[mLin,06].NumberFormat := '#';
                 mPlanilha.Cells[mLin,07] := FieldByName('Observacao').AsString;
                 mPlanilha.Cells[mLin,08] := FieldByName('Valor_Total').AsFloat;
                 mPlanilha.Cells[mLin,08].NumberFormat := '#.##0,00_);(#.##0,00)';
           
                 mTotalDia   := mTotalDia   + FieldByName('Valor_Total').AsFloat;
                 mTotalMes   := mTotalmes   + FieldByName('Valor_Total').AsFloat;
                 mTotalEmp   := mTotalEmp   + FieldByName('Valor_Total').AsFloat;
                 mTotalGeral := mTotalGeral + FieldByName('Valor_Total').AsFloat;
           
                 Next;
                 inc(mLin);
           
                 if (fieldbyname('Dia').asinteger <> mDia) or eof then begin
                    mPlanilha.Cells[mLin,07].cells := 'TOTAL DO DIA '+ PoeZero(2, mDia);
                    inc(mCol);
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].VerticalAlignment   := 2;
                    mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color      := RGB(49, 134, 155);
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Size           := 8;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Color          := clWhite;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
                    mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Pattern    := 1;
                    mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].RowHeight           := 18;
                    mPlanilha.Cells[mLin,08].cells        := mTotalDia;
                    mPlanilha.Cells[mLin,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                    inc(mLin);
                    mDia      := fieldbyname('Dia').asinteger;
                    mTotalDia := 0;
                 end;
                 if (fieldbyname('Mes').asinteger <> mMes) or eof then begin
                    mPlanilha.Cells[mLin,07].cells := 'TOTAL DO MÊS '+ PoeZero(2, mMes);
                    inc(mCol);
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].VerticalAlignment   := 2;
                    mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color      := RGB(198, 89, 17);
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Size           := 8;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Color          := clWhite;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
                    mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Pattern    := 1;
                    mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].RowHeight           := 18;
                    mPlanilha.Cells[mLin,08].cells        := mTotalMes;
                    mPlanilha.Cells[mLin,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                    inc(mLin,2);
                    mMes      := fieldbyname('Mes').asinteger;
                    mTotalMes := 0;
                 end;
                 if (fieldbyname('Nome_Filial').asstring <> mNomeFilial) or eof then begin
                    mPlanilha.Cells[mLin,07].cells := 'TOTAL DA '+mNomeFilial;
                    inc(mCol);
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].VerticalAlignment   := 2;
                    mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color      := RGB(31, 78, 120);
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Size           := 8;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Color          := clWhite;
                    mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
                    mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Pattern    := 1;
                    mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].RowHeight           := 18;
                    mPlanilha.Cells[mLin,08].cells        := mTotalEmp;
                    mPlanilha.Cells[mLin,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                    inc(mLin, 2);
                    mFilial     := fieldbyname('Filial').value;
                    mNomeFilial := tTitulos.FieldByName('Nome_Filial').asstring;
                    mTotalEmp   := 0;
                 end;
           
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           end;
      end;
      
      mPlanilha.Cells[mLin,07].cells := 'TOTAL GERAL';
      inc(mCol);
      mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
      mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].VerticalAlignment   := 2;
      mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color      := RGB(149, 134, 155);
      mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Size           := 8;
      mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Color          := clWhite;
      mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
      mPlanilha.Range['G'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Pattern    := 1;
      mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].RowHeight           := 18;
      mPlanilha.Cells[mLin,08].cells        := mTotalGeral;
      mPlanilha.Cells[mLin,08].NumberFormat := '#.##0,00_);(#.##0,00)';
      inc(mLin);

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;




end.
