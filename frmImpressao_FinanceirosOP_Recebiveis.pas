unit frmImpressao_FinanceirosOP_Recebiveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RxLookup, RXCtrls, DB, DBAccess, MSAccess,
  ppCtrls, ppVar, ppBands, ppPrnabl,ppReport, ppDBPipe, IniFiles, Funcoes, ComObj,
  Buttons, RxToolEdit, ppParameter, ppDesignLayer, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_FinanceirosOP_Recebiveis = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    tTitulos: TMSQuery;
    cDataBaixaIni: TDateEdit;
    cDataBaixaFim: TDateEdit;
    dstTitulos: TDataSource;
    pEmpresas: TppDBPipeline;
    pTitulos: TppDBPipeline;
    rRecebiveis: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText4: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppShape4: TppShape;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppShape8: TppShape;
    ppLabel7: TppLabel;
    ppDBText10: TppDBText;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc3: TppDBCalc;
    pTotalLiquido: TppDBCalc;
    pTotalBaixado: TppDBCalc;
    ppLine2: TppLine;
    pTotalSaldo: TppVariable;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    lPeriodo: TppLabel;
    ppShape12: TppShape;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    StaticText4: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    ppDBText14: TppDBText;
    bLimpar: TBitBtn;
    cZerado: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure pTitulosNext(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportaEXCEL;
    procedure pTotalSaldoCalc(Sender: TObject; var Value: Variant);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNota   : Integer;
    mSaldo  : Real;
  end;

var
  Impressao_FinanceirosOP_Recebiveis: TImpressao_FinanceirosOP_Recebiveis;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_Recebiveis.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_Recebiveis.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FinanceirosOP_Recebiveis.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataIni'      , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataFim'      , cDataFim.Date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataBaixaIni' , cDataBaixaIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataBaixaFim' , cDataBaixaFim.Date);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'CentroCusto'  , cCentroCusto.Text);
      if cCLiente.Text <> '' then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Cliente', cCliente.KeyValue)
      else
         aINI.WriteString('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Cliente', '');
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Zebrado'      , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Excel'        , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Zerado'       , cZerado.Checked);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Classificacao', '');
      If cClassificacao.DisplayValue <> '' then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Classificacao', Dados.ClassificacaoFinanceiraCodigo.AsString);

      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      LimpaMemoria;
      Impressao_FinanceirosOP_Recebiveis.Release;
      Impressao_FinanceirosOP_Recebiveis := nil;
end;

procedure TImpressao_FinanceirosOP_Recebiveis.bImprimirClick(Sender: TObject);
begin
       with tTitulos do begin
            sql.clear;
            sql.add('select Cliente = Destinatario_Nome');
            sql.add('      ,Nota = NF.Numero');
            sql.add('      ,PR.Documento');
            sql.add('      ,PR.Processo');
            sql.add('      ,PR.Numero_Documento');
            sql.add('      ,Data_Documento = NF.Data_Emissao');
            sql.add('      ,PR.Data_Vencimento');
            sql.add('      ,Valor_Nota = isnull(NF.Valor_TotalNota, 0)');
            sql.add('      ,Valor = isnull(PR.Valor_Parcela, 0)');
            sql.add('      ,Multa = isnull(PR.Multa,0)');
            sql.add('      ,Juros = isnull(PR.Juros,0)');
            sql.add('      ,Acrescimo = (isnull(PR.Multa,0) + isnull(PR.Juros,0))');
            sql.add('      ,Desconto = isnull(PR.Desconto+PR.Desconto_Liquidacao,0)');
            sql.add('      ,Valor_Liquido = cast((isnull(PR.Valor_Parcela, 0)+isnull(PR.Juros,0)+isnull(PR.Multa,0)-isnull(PR.Desconto,0)) as decimal(14,2))');
            if trim(RemoveCaracter('/', '', cDataBaixaIni.Text)) <> '' then
               sql.Add('      ,Valor_Baixado = isnull(cast((select sum(Valor) from PagarReceberBaixas where(Numero = PR.Numero) and (Data between :pDataBaixaIni and :pDataBaixaFim)) as decimal(14,2)), 0)')
            else
               sql.Add('      ,Valor_Baixado = isnull(cast((select sum(Valor) from PagarReceberBaixas where(Numero = PR.Numero)) as decimal(14,2)), 0)');
            sql.add('      ,Data_Baixa = NULL');
            sql.add('      ,Saldo = cast((isnull(PR.Valor_Parcela, 0)+isnull(PR.Juros,0)+isnull(PR.Multa,0)-isnull(PR.Desconto,0)-isnull(PR.Desconto_Liquidacao,0)) - isnull((select sum(Valor) from PagarReceberBaixas where(Numero = PR.Numero)), 0) AS decimal(14,2))');
            sql.add('      ,Provisorio = case when (select Fechamento_Provisorio from ProcessosFechamento as pf where(pf.Processo = nf.Processo)) = 1 then ''P'' else ''D'' end');
            sql.add('      ,PR.Classificacao');
            sql.add('from   NotasFiscais NF');
            sql.add('left   outer join PagarReceber PR on (PR.Fiscal = cast(NF.Numero AS VARCHAR(15))) and (NF.Data_Emissao = PR.Data_Documento)');
            sql.add('where  (NF.Saida_Entrada = 1) and (NF.Cancelada <> 1) and ((select Gerar_Financeiro from TipoNota where(Codigo = NF.Tipo_Nota)) = 1) and (NF.Data_Emissao between :pDataIni and :pDataFim)');
            if trim(cCentroCusto.Text) <> '' then begin
               sql.Add('and (PR.Centro_Custo = :pCentroCusto)');
               paramByName('pCentroCusto').AsString := Dados.CentroCustoCodigo.AsString;
            end;
            if trim(cCliente.Text) <> '' then begin
               sql.Add('and (NF.Cliente_Codigo = :pCliente)');
               paramByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
            end;
            if czerado.Checked = true then begin
               sql.Add('and (round((isnull(PR.Valor_Parcela, 0)+isnull(PR.Juros,0)+isnull(PR.Multa,0)-isnull(PR.Desconto,0)-isnull(PR.Desconto_Liquidacao,0)), 2) - isnull(round((select sum(Valor) from PagarReceberBaixas where(Numero = PR.Numero)), 2), 0)) <> 0');
            end;
            if trim(cClassificacao.Text) <> '' then begin
               sql.Add(' and (Classificacao = :pClassificacao) ');
               paramByName('pClassificacao').AsString := Trim(Dados.ClassificacaoFinanceiraCodigo.AsString);
            end;

            sql.add('order by NF.Numero, NF.Data_Emissao, PR.Numero_Documento');
            parambyName('pDataIni').AsDate := cDataIni.Date;
            parambyName('pDataFim').AsDate := cDataFim.Date;

            if trim(RemoveCaracter('/', '', cDataBaixaIni.Text)) <> '' then begin
               paramByName('pDataBaixaIni').AsDate := cDataBaixaIni.Date;
               paramByName('pDataBaixaFim').AsDate := cDataBaixaFim.Date;
               if Trim(RemoveCaracter('/', '', cDataBaixaFim.Text)) = '' then ParamByName('pDataBaixaFim').AsDate := cDataBaixaIni.Date;
            end;
            //sql.SaveToFile('c:\temp\Controle_Recebiveis.sql');
            open;
       end;

       mNota            := tTitulos.FieldByName('Nota').AsInteger;
       lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á ' + cDataFim.Text;
       lFaixa.Visible   := false;

       If cExcel.Checked = false then begin
          if FileExists(Dados.EmpresasLogo.Value) then begin
             iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
          end;
          //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
          rRecebiveis.Print;
          rRecebiveis.FreeOnRelease;
          rRecebiveis.Reset;
       end else begin
          ExportaEXCEL;
       End;
end;

procedure TImpressao_FinanceirosOP_Recebiveis.pTitulosNext(Sender: TObject);
begin
      If tTitulos.FieldByName('Nota').AsInteger <> mNota then begin
         mNota    := tTitulos.FieldByName('Nota').AsInteger;
         If cZebrado.Checked = True then lFaixa.Visible := not lFaixa.Visible
      End;
end;

procedure TImpressao_FinanceirosOP_Recebiveis.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;

           ClassificacaoFinanceira.SQL.Clear;
           //ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) AND (Titulo <> 1) AND ((SELECT COUNT(*) FROM PagarReceber WHERE(Classificacao = Codigo)) <> 0) ORDER BY Descricao');
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) AND (Titulo <> 1) ORDER BY Descricao');
           ClassificacaoFinanceira.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                      := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date             := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataIni'     , 0);
      cDataFim.Date             := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataFim'     , 0);
      cDataBaixaIni.Date        := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataBaixaIni', 0);
      cDataBaixaFim.Date        := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'DataBaixaFim', 0);
      cCentroCusto.DisplayValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'CentroCusto' , '');
      cCliente.KeyValue         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Cliente'     , 0);
      cZebrado.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Zebrado'     , false);
      cExcel.Checked            := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Excel'       , false);
      cZerado.Checked           := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Zerado'      , true);
      cClassificacao.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_RECEBIVEIS', 'Classificacao', '');
      aINI.Free;

      Screen.Cursor := crDefault;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_Recebiveis.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mZebra   : Boolean;
   mTotal01 : Real;
   mTotal02 : Real;
   mTotal03 : Real;
   mTotal04 : Real;
   mTotal05 : Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tTitulos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','I3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['J3','L3'].Interior.Color    := clMoneyGreen;
       mPlanilha.Range['A3','L3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','L3'].Font.Bold         := true;
       mPlanilha.Range['A3','L3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','L3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','L3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','L3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'CLIENTE';
       mPlanilha.Cells[3,03] := 'DOCUMENTO';
       mPlanilha.Cells[3,04] := 'NÚMERO';
       mPlanilha.Cells[3,05] := 'EMISSÃO';
       mPlanilha.Cells[3,06] := 'VENCTO.';
       mPlanilha.Cells[3,07] := 'VALOR';
       mPlanilha.Cells[3,08] := 'ACRÉSCIMOS';
       mPlanilha.Cells[3,09] := 'DESCONTOS';
       mPlanilha.Cells[3,10] := 'VALOR LÍQUIDO';
       mPlanilha.Cells[3,11] := 'VALOR BAIXADO';
       mPlanilha.Cells[3,12] := 'SALDO';

       mPlanilha.Range['A3','L3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','L3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','L3'].Font.Size           := 8;

       mLinha := 4;
       mZebra := false;
       mNota  := tTitulos.FieldByName('Nota').AsInteger;

       mTotal01 := 0;
       mTotal02 := 0;
       mTotal03 := 0;
       mTotal04 := 0;
       mTotal05 := 0;

       While (not tTitulos.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size := 8;

             mPlanilha.Cells[mLinha,01] := tTitulos.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := tTitulos.FieldByName('Cliente').AsString;
             mPlanilha.Cells[mLinha,03] := tTitulos.FieldByName('Documento').AsString;
             mPlanilha.Cells[mLinha,04] := ''''+Trim(tTitulos.FieldByName('Numero_Documento').AsString);
             mPlanilha.Cells[mLinha,05] := tTitulos.FieldByName('Data_Documento').Value;
             mPlanilha.Cells[mLinha,06] := tTitulos.FieldByName('Data_Vencimento').Value;
             mPlanilha.Cells[mLinha,07] := tTitulos.FieldByName('Valor').AsCurrency;
             mPlanilha.Cells[mLinha,08] := tTitulos.FieldByName('Acrescimo').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tTitulos.FieldByName('Desconto').AsCurrency;
             mPlanilha.Cells[mLinha,10] := tTitulos.FieldByName('Valor_Liquido').AsCurrency;
             mPlanilha.Cells[mLinha,11] := tTitulos.FieldByName('Valor_Baixado').AsCurrency;
             mPlanilha.Cells[mLinha,12] := tTitulos.FieldByName('Saldo').AsCurrency;

             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotal01 := mTotal01 + tTitulos.FieldByName('Valor').AsCurrency;
             mTotal02 := mTotal02 + tTitulos.FieldByName('Acrescimo').AsCurrency;
             mTotal03 := mTotal03 + tTitulos.FieldByName('Desconto').AsCurrency;
             mTotal04 := mTotal04 + tTitulos.FieldByName('Valor_Liquido').AsCurrency;
             mTotal05 := mTotal05 + tTitulos.FieldByName('Valor_Baixado').AsCurrency;

             mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := clSilver;
             If cZebrado.Checked = true then begin
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1;
                mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2;
                If mZebra = true then begin
                   mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color := clWhite;
                end else begin
                   mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
                End;
             End;

             tTitulos.Next;

             If tTitulos.FieldByName('Nota').AsInteger <> mNota then begin
                mZebra := not mZebra;
                mNota  := tTitulos.FieldByName('Nota').AsInteger;
             End;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       mPlanilha.Columns.Autofit;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Cells[mLinha,01] := 'TOTAIS';
       mPlanilha.Cells[mLinha,01].HorizontalAlignment := 3;
       mPlanilha.Range['A1','L3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,07] := mTotal01;
       mPlanilha.Cells[mLinha,08] := mTotal02;
       mPlanilha.Cells[mLinha,09] := mTotal03;
       mPlanilha.Cells[mLinha,10] := mTotal04;
       mPlanilha.Cells[mLinha,11] := mTotal05;
       mPlanilha.Cells[mLinha,12] := mTotal04 - mTotal05;

       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','L1'].Mergecells := True;
       mPlanilha.Range['A1','L1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Controle de Recebíveis ('+cDataIni.Text+' á '+cDataFim.Text+')';
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','L2'].Mergecells := True;
       mPlanilha.Range['A2','L2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_FinanceirosOP_Recebiveis.pTotalSaldoCalc(Sender: TObject; var Value: Variant);
begin
      Value := pTotalLiquido.Value - pTotalBaixado.Value;
end;

procedure TImpressao_FinanceirosOP_Recebiveis.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cDataBaixaIni.Clear;
      cDataBaixaFim.Clear;
      cCliente.KeyValue := 0;
      cCentroCusto.KeyValue := 0;
      cClassificacao.ClearValue;
end;

end.
