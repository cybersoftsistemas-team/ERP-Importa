unit frmImpressao_FinanceiroOP_PrestacaoProcesso;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, Mask,
    RXCtrls, INIFiles, ppDBPipe, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppReport, Funcoes, DB, DBAccess, MSAccess, ppSubRpt, ppParameter, Math, RxToolEdit, MemDS, ppDB, 
    ppDesignLayer, ppModule, raCodMod, ppStrtch, ppCache, ppComm, ppRelatv, ppProd, ComObj, MaskUtils;

type
  TImpressao_FinanceirosOP_PrestacaoProcesso = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    cLancamentos: TRadioGroup;
    StaticText5: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    pEmpresas: TppDBPipeline;
    pTitulos: TppDBPipeline;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    StaticText3: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    cPrestacao: TRadioGroup;
    tNotas: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    rPrestacao: TppReport;
    ppParameterList2: TppParameterList;
    cExcel: TCheckBox;
    cTotalCC: TCheckBox;
    ppHeaderBand2: TppHeaderBand;
    ppDBText26: TppDBText;
    lTitulo: TppLabel;
    lPeriodo2: TppLabel;
    iLogo: TppImage;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText10: TppDBText;
    ppDBText25: TppDBText;
    ppDBText28: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine16: TppLine;
    ppLabel37: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine17: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLabel40: TppLabel;
    lCliente2: TppLabel;
    ppLabel42: TppLabel;
    lProcesso2: TppLabel;
    ppLabel44: TppLabel;
    lTipoProcesso2: TppLabel;
    ppLabel46: TppLabel;
    lOperacao2: TppLabel;
    ppLabel48: TppLabel;
    lOrigem2: TppLabel;
    ppLabel50: TppLabel;
    lNotasEntrada2: TppLabel;
    ppLabel52: TppLabel;
    lNotasSaida2: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel4: TppLabel;
    ppLabel56: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLine14: TppLine;
    ppLabel55: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine18: TppLine;
    ppLabel54: TppLabel;
    ppLine19: TppLine;
    ppDBText27: TppDBText;
    ppDBCalc9: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
    mNotasEntrada
   ,mNotasSaida
   ,mCompBanco
   ,mCompClass: String;
  end;

var
  Impressao_FinanceirosOP_PrestacaoProcesso: TImpressao_FinanceirosOP_PrestacaoProcesso;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      with Dados do begin
           ClassificacaoFinanceira.Open;
           with ProcessosDOC do begin
                sql.Clear;
                sql.Add('select * from ProcessosDocumentos order by Processo');
                open;
           end;
           with CentroCusto do begin
                sql.Clear;
                sql.Add('SELECT * FROM CentroCusto ORDER BY descricao');
                open;
           end;
           with Configuracao do begin
                Open;
                mCompBanco := 'Bancos';
                if fieldbyname('Compartilhar_Bancos').asboolean then mCompBanco := 'Cybersoft_Cadastros.dbo.Bancos';
                mCompClass := 'ClassificacaoFinanceira';
                if fieldbyname('Compartilhar_Classificacao').asboolean then mCompClass:= 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira';
           end;
      end;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cLancamentos.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F03', 'Lancamento'    , 2 );
      cPrestacao.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F03', 'Prestacao'     , 2 );
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F03', 'DataIni'       , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F03', 'DataFim'       , Date );
      cProcesso.KeyValue      := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F03', 'Processo'      , '' );
      cClassificacao.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F03', 'Classificacao' , '' );
      cCentroCusto.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F03', 'CentroCusto'   , '' );
      cExcel.Checked          := aINI.Readbool   ('IMPRESSAO_FINANCEIROS_F03', 'Excel'         , false);
      cTotalCC.Checked        := aINI.Readbool   ('IMPRESSAO_FINANCEIROS_F03', 'QuebraCC'      , false);
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.KeyValue      := 0;
      cClassificacao.KeyValue := 0;
      cCentroCusto.KeyValue   := 0;
end;

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F03', 'Lancamento', cLancamentos.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F03', 'Prestacao' , cPrestacao.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F03', 'DataIni'   , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F03', 'DataFim'   , cDataFim.Date );
      If cProcesso.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F03', 'Processo', cProcesso.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F03', 'Processo', '');
      If cClassificacao.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F03', 'Classificacao', cClassificacao.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F03', 'Classificacao', '');
      If cCentroCusto.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F03', 'CentroCusto', cCentroCusto.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F03', 'CentroCusto', '');
      aINI.Writebool      ('IMPRESSAO_FINANCEIROS_F03', 'Excel'      , cExcel.Checked );
      aINI.Writebool      ('IMPRESSAO_FINANCEIROS_F03', 'QuebraCC'   , cTotalCC.Checked );
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_FinanceirosOP_PrestacaoProcesso.Release;
      Impressao_FinanceirosOP_PrestacaoProcesso := nil;
end;

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.bImprimirClick(Sender: TObject);
begin
       if trim(cProcesso.Text) = '' then begin
          messagedlg('Por favor, informe o número do processo!', mtinformation, [mbok], 0);
          cProcesso.SetFocus;
          abort;
       end;
       if cLancamentos.ItemIndex = 0 then lTitulo.Caption := 'Prestação de Contas a Pagar ';
       if cLancamentos.ItemIndex = 1 then lTitulo.Caption := 'Prestação de Contas a Receber ';
       if cLancamentos.ItemIndex = 2 then lTitulo.Caption := 'Prestação de Contas a Pagar/Receber ';
       if cPrestacao.ItemIndex = 0 then begin
          lTitulo.Caption := lTitulo.Caption + '(Cliente)';
       end;

       if cPrestacao.ItemIndex = 1 then begin
          lTitulo.Caption := lTitulo.Caption + '(Fornecedor)';
       end;
       if cLancamentos.ItemIndex < 0 then cLancamentos.ItemIndex := 2;
       if cPrestacao.ItemIndex   < 0 then cPrestacao.ItemIndex   := 0;
       screen.Cursor := crSQLWait;
       with Dados do begin
            with tNotas do begin
                 sql.Clear;
                 sql.Add('select Numero, Saida_Entrada from NotasFiscais where Processo = :pProcesso order by Saida_Entrada, Numero');
                 parambyname('pProcesso').AsString := cProcesso.Text;
                 open;
            end;
            mNotasEntrada := '';
            mNotasSaida   := '';
            while not tNotas.Eof do begin
                  If tNotas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                     mNotasEntrada := mNotasEntrada + tNotas.FieldByName('Numero').asstring+ ' | ';
                  end else begin
                     mNotasSaida := mNotasSaida + tNotas.FieldByName('Numero').asstring+ ' | ';
                  End;
                  tNotas.Next;
            end;
            mNotasEntrada := Copy(mNotasEntrada,1,Length(mNotasEntrada)-2);
            mNotasSaida   := Copy(mNotasSaida  ,1,Length(mNotasSaida)-2);
            with tTitulos do begin
                 sql.Clear;
                 sql.add('select pr.Numero');
                 sql.add('      ,pr.Classificacao');
                 sql.add('      ,Centro_Custo = isnull(Centro_Custo, '''')');
                 sql.Add('      ,Beneficiario = case when isnull(Fornecedor, 0) <> 0 then (select Nome from Fornecedores where Codigo = Fornecedor)');
                 sql.Add('                           when isnull(Cliente, 0) <> 0 then (select Nome from Clientes where Codigo = Cliente)');
                 sql.Add('                           when isnull(Orgao, '''') <> '''' then (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos where Codigo = Orgao)');
                 sql.Add('                      end');
                 sql.add('      ,Data_Vencimento');
                 sql.Add('      ,Data_Baixa = (select max(Data) from PagarReceberBaixas where Numero = pr.Numero)');
                 sql.add('      ,Numero_Documento');
                 sql.add('      ,CentroCusto_Descricao = (select Descricao from CentroCusto where Codigo = pr.Centro_Custo)');
                 sql.add('      ,Descricao     = (select Descricao from '+mCompClass+' ClassificacaoFinanceira where Codigo = pr.Classificacao)');
                 sql.add('      ,Valor_Receb   = iif(pr.Tipo = ''R'', Valor_Parcela, 0)');
                 sql.add('      ,Valor_Pgto    = iif(pr.Tipo = ''P'', Valor_Parcela, 0)');
                 sql.Add('      ,Valor_Baixado = (select sum(iif(Tipo = ''R'', Valor, Valor*-1)) from PagarReceberBaixas where Numero = pr.Numero)');
                 sql.add('      ,Valor_Aberto  = isnull(iif(Tipo = ''R'', Valor_Parcela, Valor_Parcela *-1), 0) - isnull((select sum(iif(Tipo = ''R'', Valor, Valor * -1)) from PagarReceberBaixas where Numero = pr.Numero), 0)');
                 sql.add('      ,Tipo');
                 sql.add('      ,Aberto = isnull(Valor_Parcela, 0) - isnull((select sum(Valor) from PagarReceberBaixas where Numero = pr.Numero), 0)');
                 sql.add('      ,Banco = (select Nome from '+mCompBanco+' where Codigo = pr.Banco)');
                 sql.add('      ,Adiantamento = (select Adiantamento from '+mCompClass+' where Codigo = pr.Classificacao)');
                 sql.Add('      ,Adiantamento_Numero');
                 sql.Add('      ,Processo');
                 sql.add('from PagarReceber pr');
                 sql.add('where Documento <> ''DUPL'' ');
                 sql.add('and (select Relatorio from '+mCompClass+' where Codigo = pr.Classificacao) <> 1');
                 sql.add('and (select isnull(Somente_Faturamento, 0) from '+mCompClass+' where Codigo = pr.Classificacao) = 0');
                 sql.add('and (select isnull(Adiantamento, 0) from '+mCompClass+' where Codigo = pr.Classificacao) = 0');
                 sql.add('and pr.Nivel <= :pNivel');
                 ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
                 if cPrestacao.ItemIndex = 0 then
                    sql.add('and not ((select Adiantamento from '+mCompClass+' where Codigo = pr.Classificacao) = 1 and Fornecedor is not null)')
                 else
                    sql.add('and not ((select Adiantamento from '+mCompClass+' where Codigo = pr.Classificacao) = 1 and Cliente is not null)');
                 if cLancamentos.ItemIndex = 0 then SQL.Add('and pr.Tipo = ''P'' ');
                 if cLancamentos.ItemIndex = 1 then SQL.Add('and pr.Tipo = ''R'' ');
                 lPeriodo2.Caption := '';
                 if (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) = '') then begin
                    cDataFim.Date := Date;
                 end;
                 if (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
                    lPeriodo2.Caption  := 'Período '+cDataIni.Text + ' a '+cDataFim.Text;
                    sql.Add('and Data_Vencimento between :pDataIni AND :pDataFim');
                    ParamByName('pDataIni').AsDate := cDataIni.Date;
                    ParamByName('pDataFim').AsDate := cDataFim.Date;
                 end;
                 if (Trim(cProcesso.Text) <> '') then begin
                    lPeriodo2.Caption := ' Até '+datetostr(date);
                    sql.Add('and Processo = :pProcesso ');
                    ParamByName('pProcesso').AsString := cProcesso.Text;
                 end;
                 if (Trim(cClassificacao.Text) <> '') then begin
                    sql.Add('and Classificacao = :pClassificacao ');
                    ParamByName('pClassificacao').AsString := ClassificacaoFinanceiraCodigo.Value;
                 end;
                 if (Trim(cCentroCusto.Text) <> '') then begin
                    sql.Add('and pr.Centro_Custo = :pCentroCusto');
                    ParamByName('pCentroCusto').AsString := CentroCustoCodigo.AsString;
                 end;
                 if cTotalCC.Checked then begin
                    sql.Add('order by isnull(pr.Processo, ''''), isnull(pr.Centro_Custo, ''''), pr.Data_Vencimento, pr.Tipo desc');
                 end else begin
                    sql.Add('order by isnull(pr.Processo, ''''), pr.Data_Vencimento, isnull(pr.Centro_Custo, ''''),pr.Tipo desc');
                 end;
                 //sql.SaveToFile('c:\temp\Prestação_Conta_Processo.sql');
                 Open;
            end;
            Empresas.Open;
            Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
       end;
       if tTitulos.RecordCount = 0 then begin
          MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
       end else begin
          if FileExists(Dados.EmpresasLogo.Value) then begin
             iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
          end;
          if not cExcel.Checked then begin
             with rPrestacao do begin
                  Groups[1].HeaderBand.Visible := cTotalCC.Checked;
                  Groups[1].FooterBand.Visible := cTotalCC.Checked;
                  Print;
                  Reset;
                  FreeOnRelease;
             end;
          end else begin
             ExportaExcel;
          end;
       end;
       screen.Cursor := crDefault;
end;

procedure TImpressao_FinanceirosOP_PrestacaoProcesso.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
      with Dados do begin
           lCliente2.Caption := '';
           if Clientes.Locate('Codigo', ProcessosDOCCliente.Value, [loCaseInsensitive]) = true then begin
              lCliente2.Caption  := ClientesNome.Value;
           end;
           with TiposProcesso do begin
                sql.Clear;
                sql.Add('select * from TiposProcesso where Codigo = :pCod');
                parambyname('pCod').AsInteger := ProcessosDOC.FieldByName('Modalidade_Importacao').asinteger;
                open;
                lTipoProcesso2.Caption  := fieldbyname('Descricao').AsString;
           end;
           with Paises do begin
                sql.Clear;
                sql.Add('select * from Paises where Codigo = :pCod');
                parambyname('pCod').Asstring := ProcessosDOC.FieldByName('Codigo_PaisOrigem').asstring;
                open;
                lOrigem2.Caption  := fieldbyname('Nome').AsString;
           end;
           lProcesso2.Caption      := ProcessosDOC.FieldByName('Processo').asstring;
           lOperacao2.Caption      := ProcessosDOC.FieldByName('Incentivo_Fiscal').asstring;
           lNotasEntrada2.Caption  := mNotasEntrada;
           lNotasSaida2.Caption    := mNotasSaida;
      end;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_PrestacaoProcesso.ExportaEXCEL;
var
   mPlanilha
  ,img: Variant;
   mLin
  ,mLinIni 
  ,mCol: Integer;
   mFilial: string;
begin
       Screen.Cursor := crSQLWait;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;

       // Titulo.
       mFilial := iif(Dados.Empresas.fieldbyname('Numero_Filial').AsInteger = 0, ' - (MATRIZ)', ' - (FILIAL'+Dados.Empresas.fieldbyname('Numero_Filial').asstring+')');
       if (not DataLimpa(cDataIni.text)) and (not DataLimpa(cDataFim.text)) then begin
          mFilial := mFilial + ' - Período :'+cDataIni.Text+ ' á '+cDataFim.Text;
       end;

       mPlanilha.Cells[1, 1].cells                    := Dados.Empresas.fieldbyname('Razao_Social').asstring;
       mPlanilha.Range['A1','J1'].Font.Size           := 20;
       mPlanilha.Range['A1','J1'].Font.Color          := clWhite;
       mPlanilha.Range['A1','J1'].Font.Bold           := true;
       mPlanilha.Range['A1','J1'].Mergecells          := True;
       mPlanilha.Cells[2, 1].cells                    := 'PRESTAÇÃO DE CONTAS DO PROCESSO' + mFilial;;
       mPlanilha.Range['A2','J2'].Font.Size           := 16;
       mPlanilha.Range['A2','J2'].Font.Bold           := true;
       mPlanilha.Range['A2','J2'].Mergecells          := True;
       mPlanilha.Range['A1','J2'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','J2'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','J2'].RowHeight           := 30;
       mPlanilha.Range['A1','J2'].Interior.Color      := RGB(33, 92, 152);
       mPlanilha.Range['A1','J2'].Interior.Pattern    := 1;

       // Logo
       if FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
          Img                            := mPlanilha.Worksheets[1].Pictures.Insert(Dados.Empresas.FieldByName('Logo').AsString);
          Img.ShapeRange.LockAspectRatio := false;
          Img.Left                       := 4;     // Posição horizontal da imagem
          Img.Top                        := 4;     // Posição vertical da imagem
          Img.Width                      := 100;   // Largura da imagem
          Img.Height                     := 54;    // Altura da imagem
       end;

       Dados.Clientes.Locate('Codigo', Dados.ProcessosDOCCliente.Value, [loCaseInsensitive]) ;

       mCol := 1;
       mLin := 3;
       mPlanilha.Cells[mLin, mCol].cells := 'PROCESSO: ' +Dados.ProcessosDOC.FieldByName('Processo').asstring;       
       mPlanilha.Range['A'+inttostr(mLin),'C'+inttostr(mLin)].Mergecells := True;
       inc(mCol, 3);
       mPlanilha.Cells[mLin, mCol].cells := 'TIPO: '+Dados.TiposProcesso.FieldByName('Descricao').asstring;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells := 'OPERAÇÃO: '+Dados.ProcessosDOC.FieldByName('Incentivo_Fiscal').asstring;
       mPlanilha.Range['E'+inttostr(mLin),'F'+inttostr(mLin)].Mergecells := True;
       inc(mCol, 2);
       mPlanilha.Cells[mLin, mCol].cells := 'ORIGEM: '+Dados.Paises.fieldbyname('Nome').AsString;
       mPlanilha.Range['G'+inttostr(mLin),'I'+inttostr(mLin)].Mergecells := True;
       mCol := 1;
       inc(mLin);
       mPlanilha.Cells[mLin, mCol].cells := 'CLIENTE: '+Dados.Clientes.fieldbyname('Nome').AsString;
       mPlanilha.Range['A'+inttostr(mLin),'C'+inttostr(mLin)].Mergecells := True;
       inc(mLin);
       mPlanilha.Cells[mLin, mCol].cells := 'NF ENTRA: '+mNotasEntrada;
       mPlanilha.Range['A'+inttostr(mLin),'C'+inttostr(mLin)].Mergecells := True;
       inc(mCol, 6);
       mPlanilha.Cells[mLin, mCol].cells := 'NF SAÍDA: '+mNotasSaida;
       mPlanilha.Range['G'+inttostr(mLin),'I'+inttostr(mLin)].Mergecells := True;

       // Nomes dos campos
       inc(mLin);
       mCol := 1;
       mPlanilha.Cells[mLin, mCol].cells       := 'DATA VENCTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'DATA BAIXA';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'BENEFICÁRIO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 50;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'CLASSIFICAÇÃO FINANCEIRA';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 50;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'Nº DOC';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'CONTA';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 20;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'RECEBIMENTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 18;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'PAGAMENTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 18;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'BAIXADO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 18;
       inc(mCol);
       mPlanilha.Cells[mLin, mCol].cells       := 'ABERTO';
       mPlanilha.Cells[mLin, mCol].ColumnWidth := 18;

       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Interior.Color      := RGB(33, 92, 152);
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Interior.Pattern    := 1;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Bold           := true;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Color          := clAqua;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Borders.Color       := clWhite;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Size           := 8;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Bold           := true;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].HorizontalAlignment := 3;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].VerticalAlignment   := 2;
       mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].RowHeight           := 18;
       inc(mLin);
       
       with tTitulos do begin
            first;
            mCol    := 1;
            mLinIni := mLin;
            while not eof do begin
                  mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Size           := 8;
                  mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].VerticalAlignment   := 2;
                  mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].horizontalalignment := 1;

                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Vencimento').value;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data_Baixa').value;
                  mPlanilha.Cells[mLin, mCol].HorizontalAlignment := 3;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Beneficiario').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Descricao').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Numero_Documento').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Banco').asstring;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Valor_Receb').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00)';
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Valor_Pgto').asfloat;
                  if fieldbyname('Valor_Pgto').asfloat <> 0 then
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '(#.##0,00)'
                  else 
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00';
                     
                  mPlanilha.Range['H'+inttostr(mLin),'H'+inttostr(mLin)].Font.Color := clRed;
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Valor_Baixado').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00;(#.##0,00)';
                  mPlanilha.Range['I'+inttostr(mLin),'I'+inttostr(mLin)].Font.Color := iif(fieldbyname('Valor_Baixado').asfloat < 0, clRed, clBlack);
                  inc(mCol);
                  mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Valor_Aberto').asfloat;
                  mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00;(#.##0,00)';
                  mPlanilha.Range['J'+inttostr(mLin),'J'+inttostr(mLin)].Font.Color := iif(fieldbyname('Valor_Aberto').asfloat < 0, clRed, clBlack);
                  next;
                  inc(mLin);
                  mCol := 1;
            end;
            
            mCol := 6;
            mPlanilha.Range['F'+inttostr(mLin),'F'+inttostr(mLin)].HorizontalAlignment := 3;
            mPlanilha.Cells[mLin, mCol].cells                                          := 'TOTAL';
            mPlanilha.Range['G'+inttostr(mLin),'J'+inttostr(mLin)].Interior.Color      := RGB(33, 92, 152);
            mPlanilha.Range['G'+inttostr(mLin),'J'+inttostr(mLin)].Font.Color          := clWhite;
            mPlanilha.Range['G'+inttostr(mLin),'J'+inttostr(mLin)].Interior.Pattern    := 1;
            mPlanilha.Range['F'+inttostr(mLin),'J'+inttostr(mLin)].Font.Bold           := true;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Borders.LineStyle   := 1;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Borders.Weight      := 2;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Borders.Color       := clSilver;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Size           := 8;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].Font.Bold           := true;
            mPlanilha.Range['G'+inttostr(mLin),'J'+inttostr(mLin)].HorizontalAlignment := 1;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].VerticalAlignment   := 2;
            mPlanilha.Range['A'+inttostr(mLin),'J'+inttostr(mLin)].RowHeight           := 18;
            
            inc(mCol);
            mPlanilha.Cells[mLin, mCol].cells := '=SUM(G'+inttostr(mLinIni)+':G'+inttostr(mLin-1);
            inc(mCol);
            mPlanilha.Cells[mLin, mCol].cells := '=SUM(H'+inttostr(mLinIni)+':H'+inttostr(mLin-1);
            inc(mCol);
            mPlanilha.Cells[mLin, mCol].cells := '=SUM(I'+inttostr(mLinIni)+':I'+inttostr(mLin-1);
            inc(mCol);
            mPlanilha.Cells[mLin, mCol].cells := '=SUM(J'+inttostr(mLinIni)+':J'+inttostr(mLin-1);
       end;
       
       mPlanilha.Visible := true;

       // Congela as linhas do cabeçalho (Obs: só funcionou depois do visible = true).
       mPlanilha.Rows[7].Select;
       mPlanilha.ActiveWindow.FreezePanes := True;
       Screen.Cursor := crDefault;
end;



                                                           
end.
