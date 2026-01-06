unit frmImpressao_FinanceirosOP_JurosMulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, DBCtrls, RxLookup, ppDBPipe,
  ppReport,ppBands, ppPrnabl, ppCtrls, DB, ppVar, Funcoes, DBAccess, MSAccess, INIFiles,  ppParameter, CheckLst, ComObj, system.UITypes, RxToolEdit, ppDesignLayer, ppClass, ppCache, ppProd,
  MemDS, ppDB, ppComm, ppRelatv;

type
  TImpressao_FinanceirosOP_JurosMulta = class(TForm)
    cDataIni: TDateEdit;
    lData: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cLancamentos: TRadioGroup;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    cCentroCusto: TRxDBLookupCombo;
    cProcesso: TRxDBLookupCombo;
    pPagarReceber: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText7: TStaticText;
    tBeneficiario: TMSQuery;
    dstBeneficiario: TDataSource;
    bLimpar: TButton;
    cBeneficiario: TRxDBLookupCombo;
    tBeneficiarioCNPJ: TStringField;
    cMovimento: TRadioGroup;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    rF01b: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppShape15: TppShape;
    ppLabel17: TppLabel;
    ppShape16: TppShape;
    ppLabel18: TppLabel;
    ppShape17: TppShape;
    ppLabel19: TppLabel;
    ppShape18: TppShape;
    ppLabel20: TppLabel;
    ppShape20: TppShape;
    ppLabel22: TppLabel;
    ppShape22: TppShape;
    ppLabel24: TppLabel;
    ppShape25: TppShape;
    ppLabel27: TppLabel;
    lPeriodo: TppLabel;
    pDetalhe: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppParameterList2: TppParameterList;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    cExcel: TCheckBox;
    ppDBText2: TppDBText;
    cZebrado: TCheckBox;
    tBeneficiarioCodigo: TStringField;
    tBeneficiarioNome: TStringField;
    tBeneficiarioTipo: TStringField;
    cDataDOCIni: TDateEdit;
    StaticText1: TStaticText;
    cDataDOCFim: TDateEdit;
    StaticText8: TStaticText;
    iLogo: TppImage;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppShape3: TppShape;
    ppLabel13: TppLabel;
    ppShape4: TppShape;
    ppLabel14: TppLabel;
    ppShape5: TppShape;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBText5: TppDBText;
    cVlrDOCPg: TppVariable;
    cVlrDOCRc: TppVariable;
    ppShape6: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    cVlrParcelaPG: TppVariable;
    cVlrParcelaRC: TppVariable;
    cVlrJurosPG: TppVariable;
    cVlrJurosRC: TppVariable;
    cVlrMultaPG: TppVariable;
    cVlrMultaRC: TppVariable;
    cVlrDescontoPG: TppVariable;
    cVlrDescontoRC: TppVariable;
    cVlrTotalPG: TppVariable;
    cVlrTotalRC: TppVariable;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cCentroCustoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cProcessoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cClassificacaoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure bDetalheBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cMovimentoClick(Sender: TObject);
    procedure ExportaEXCEL;
    procedure pDetalheAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     mEmpresas : Array[0..100, 0..100] of String;
     mSaldo    : Real;
     mNumero   : Integer;
  end;

var
  Impressao_FinanceirosOP_JurosMulta: TImpressao_FinanceirosOP_JurosMulta;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_JurosMulta.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
   i   : Integer;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Lancamento'    , cLancamentos.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataIni'       , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataFim'       , cDataFim.Date );
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCIni'    , cDataDOCIni.Text );
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCFim'    , cDataDOCFim.Text );
      If cProcesso.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Processo', cProcesso.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Processo', '');

      If cCentroCusto.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'CentroCusto', cCentroCusto.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'CentroCusto', '');

      If cClassificacao.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Classificacao', cClassificacao.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Classificacao', '');

      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Banco', 0);

      If cBeneficiario.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Beneficiario', cBeneficiario.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Beneficiario', '');

      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Lancamento'  , cLancamentos.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Movimento'   , cMovimento.ItemIndex );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Excel'       , cExcel.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Zebrado'     , cZebrado.Checked );
      aINI.Free;

      tTitulos.SQL.Clear;
      tTitulos.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tTitulos.Execute;

      For i := 0 to ComponentCount -1 do begin
          If Components[i] is TMSQuery then  begin
             TMSQuery(Components[i]).Close;
          End;
      End;

      Impressao_FinanceirosOP_JurosMulta.Release;
      Impressao_FinanceirosOP_JurosMulta := nil;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.FormShow(Sender: TObject);
var
     aINI: TIniFile;
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1)');
           Bancos.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao, Codigo');
           CentroCusto.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao, Codigo');
           ClassificacaoFinanceira.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos)) ORDER BY Nome');
           Clientes.Open;

           tBeneficiario.SQL.Clear;
           tBeneficiario.SQL.Add('SELECT DISTINCT '+QuotedStr('C-')+'+CAST(Codigo AS VARCHAR(10)) AS Codigo, Nome, CNPJ, '+QuotedStr('C')+' AS Tipo FROM Clientes');
           tBeneficiario.SQL.Add('UNION ALL');
           tBeneficiario.SQL.Add('SELECT '+QuotedStr('F-')+'+CAST(Codigo AS VARCHAR(10)) AS Codigo, Nome, CNPJ, '+QuotedStr('F')+' FROM Fornecedores');
           tBeneficiario.SQL.Add('UNION ALL');
           tBEneficiario.SQL.Add('SELECT '+QuotedStr('O-')+'+RTRIM(Codigo) AS Codigo, Nome,'+QuotedStr('')+','+QuotedStr('O')+' FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
           tBeneficiario.SQL.Add('ORDER BY Nome');
           //tBeneficiario.SQL.SaveToFile('c:\temp\Beneficiario.SQL');
           tBeneficiario.Open;

           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
           ModalidadesPgto.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.ADD('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa) ORDER BY CNPJ');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;

           cBanco.Enabled := cMovimento.ItemIndex = 1;
           If cMovimento.ItemIndex <> 1 then begin
              cBanco.KeyValue := -1;
              lData.Caption   := 'Vencimento';
           end else begin
              lData.Caption := 'Baixa';
           End;   
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataIni'      , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataFim'      , Date );
      cDataDOCIni.Text        := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCIni'   , '' );
      cDataDOCFim.Text        := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCFim'   , '' );
      cProcesso.KeyValue      := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Processo'     , '' );
      cCentroCusto.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'CentroCusto'  , '' );
      cClassificacao.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Classificacao', '' );
      cBanco.KeyValue         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Banco'        , 0 );
      cBeneficiario.KeyValue  := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Beneficiario' , '0' );
      cLancamentos.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Lancamento'   , 2 );
      cMovimento.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Movimento'    , 2 );
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Excel'        , false );
      cZebrado.Checked        := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Zebrado'      , false );
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.cCentroCustoKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_JurosMulta.cProcessoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_JurosMulta.cClassificacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_JurosMulta.bImprimirClick(Sender: TObject);
begin
     If (DataLimpa(cDataIni.Text) and DataLimpa(cDataFim.Text) and DataLimpa(cDataDOCIni.Text) and DataLimpa(cDataDOCFim.Text)) then begin
        MessageDlg('Não há um período informado!'+#13+#13+'É necessário informar uma data inicial e final para a data do "Vencimento" ou de "Emissão".', mtInformation, [mbOK], 0);
        Exit;
     End;
     
     tTitulos.SQL.Clear;
     tTitulos.SQL.Add('SELECT  PR.Numero');
     tTitulos.SQL.Add('       ,PR.Data_Vencimento');
     tTitulos.SQL.Add('       ,Beneficiario  = CASE');
     tTitulos.SQL.Add('                            WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores AS FRN WHERE(PR.Fornecedor = FRN.Codigo))');
     tTitulos.SQL.Add('                            WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes     AS CLI WHERE(PR.Cliente = CLI.Codigo))');
     tTitulos.SQL.Add('                            WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos AS OP WHERE(PR.Orgao = OP.Codigo))');
     tTitulos.SQL.Add('                        END');
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tTitulos.SQL.Add('       ,(SELECT Descricao FROM ClassificacaoFinanceira AS CF WHERE(PR.Classificacao = CF.Codigo)) AS Classificacao_Nome');
     end else begin
        tTitulos.SQL.Add('       ,(SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira AS CF WHERE(PR.Classificacao = CF.Codigo)) AS Classificacao_Nome');
     End;
     tTitulos.SQL.Add('       ,(SELECT Descricao FROM CentroCusto AS CC WHERE(PR.Centro_Custo = CC.Codigo)) AS CentroCusto_Nome');
     tTitulos.SQL.Add('       ,PR.Numero_Documento');
     tTitulos.SQL.Add('       ,PR.Data_Documento');
     tTitulos.SQL.Add('       ,PR.Valor_Documento');
     tTitulos.SQL.Add('       ,PR.Valor_Parcela');
     tTitulos.SQL.Add('	      ,PR.Juros');
     tTitulos.SQL.Add('	      ,PR.Multa');
     tTitulos.SQL.Add('	      ,PR.Desconto');
     tTitulos.SQL.Add('       ,PR.Valor_Total');
     tTitulos.SQL.Add('       ,PR.Tipo');
     if cMovimento.ItemIndex <> 1 then begin
        tTitulos.SQL.Add('FROM   PagarReceber PR');
        tTitulos.SQL.Add('WHERE  (PR.Nivel <= :pNivel)');
     end else begin
        tTitulos.SQL.Add('FROM   PagarReceberBaixas PRB, PagarReceber PR');
        tTitulos.SQL.Add('WHERE  PR.Numero = PRB.Numero');
        tTitulos.SQL.Add('  AND  (PR.Nivel <= :pNivel)');
     end;
     tTitulos.SQL.Add('  AND  (SELECT Relatorio FROM ClassificacaoFinanceira AS CF WHERE PR.Classificacao = CF.Codigo) <> 1');
     tTitulos.SQL.Add('  AND  (SELECT Somente_Faturamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) <> 1');
     if cMOvimento.ItemIndex <> 1 then begin
         tTitulos.SQL.Add('  AND  (PR.Juros > 0 OR PR.Multa > 0 OR PR.Desconto > 0)');
         If not DataLimpa(cDataIni.Text) then begin
            tTitulos.SQL.Add('  AND  (PR.Data_Vencimento BETWEEN :pDataIni AND :pDataFim) ');
         End;
         If not DataLimpa(cDataDOCIni.Text) then begin
            tTitulos.SQL.Add('  AND  (PR.Data_Documento BETWEEN :pDataDOCIni AND :pDataDOCFim) ');
         End;
     end else begin
         tTitulos.SQL.Add('  AND  (PRB.Juros > 0 OR PRB.Multa > 0 OR PRB.Desconto > 0)');
         If not DataLimpa(cDataIni.Text) then begin
            tTitulos.SQL.Add('  AND  (PRB.Data BETWEEN :pDataIni AND :pDataFim) ');
         End;
     end;
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tTitulos.SQL.Add('  AND  (SELECT Relatorio FROM ClassificacaoFinanceira AS CF WHERE PR.Classificacao = CF.Codigo) <> 1');
     end else begin
        tTitulos.SQL.Add('  AND  (SELECT Relatorio FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira AS CF WHERE PR.Classificacao = CF.Codigo) <> 1');
     End;
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tTitulos.SQL.Add('  AND  (SELECT Somente_Faturamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) <> 1 ');
     end else begin
        tTitulos.SQL.Add('  AND  (SELECT Somente_Faturamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) <> 1 ');
     End;

     // Pagamentos.
     If cLancamentos.ItemIndex = 0 then begin
        tTitulos.SQL.Add('  AND  (PR.Tipo = '+QuotedStr('P')+') ');
     End;
     // Recebimentos.
     If cLancamentos.ItemIndex = 1 then begin
        tTitulos.SQL.Add('  AND  (PR.Tipo = '+QuotedStr('R')+') ');
     End;
     // Abertos.
     If cMovimento.ItemIndex = 0 then begin
        tTitulos.SQL.Add('  AND  ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE(PR.Numero = PRB.Numero)), 2),0) < ROUND(Valor_Total, 2)');
     End;
     // Processos.
     If (Trim(cProcesso.Text) <> '') then begin
        tTitulos.SQL.Add('AND (PR.Processo = :pProcesso) ');
     End;
     If (Trim(cCentroCusto.Text) <> '') then begin
        tTitulos.SQL.Add('AND (PR.Centro_Custo = :pCentroCusto) ');
        tTitulos.ParamByName('pCentroCusto').AsString := cCentroCusto.KeyValue;
     End;
     If (Trim(cClassificacao.Text) <> '') then begin
        tTitulos.SQL.Add('AND (PR.Classificacao = '+QuotedStr(Dados.ClassificacaoFinanceiraCodigo.AsString)+')');
     End;
     If (Trim(cBanco.Text) <> '') then begin
        tTitulos.SQL.Add('AND (PRB.Banco = :pBanco) ' );
     End;
     If (Trim(cBeneficiario.Text) <> '') then begin
        If tBeneficiarioTipo.Value = 'C' then tTitulos.SQL.Add('AND (Cliente    = '+Trim(Copy(tBeneficiarioCodigo.Value,3,7))+') ');
        If tBeneficiarioTipo.Value = 'F' then tTitulos.SQL.Add('AND (Fornecedor = '+Trim(Copy(tBeneficiarioCodigo.Value,3,7))+') ');
        If tBeneficiarioTipo.Value = 'O' then tTitulos.SQL.Add('AND (Orgao      = '+Trim(Copy(tBeneficiarioCodigo.Value,3,7))+') ');
     End;

     tTitulos.SQL.Add('ORDER  BY Data_Vencimento, PR.Numero');

     If not DataLimpa(cDataIni.Text) then begin
        tTitulos.ParamByName('pDataIni').AsDate  := cDataIni.Date;
        tTitulos.ParamByName('pDataFim').AsDate  := cDataFim.Date;
     End;

     If not DataLimpa(cDataDOCIni.Text) then begin
        if cMOvimento.ItemIndex <> 1 then begin
           tTitulos.ParamByName('pDataDOCIni').AsDate  := cDataDOCIni.Date;
           tTitulos.ParamByName('pDataDOCFim').AsDate  := cDataDOCFim.Date;
        end;
     End;

     tTitulos.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
     If (Trim(cProcesso.Text) <> '') then begin
        tTitulos.ParamByName('pProcesso').AsString := cProcesso.Text;
     end;

     If (Trim(cBanco.Text) <> '') then begin
        tTitulos.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
     End;
     //tTitulos.SQL.SaveToFile('c:\temp\PagarReceber_Juros_Multa.sql');
     tTitulos.Open;

     Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

     If cLancamentos.ItemIndex = 0 then lTitulo.Caption := 'Controle de Juros/Multas/Descontos (Pagamentos)';
     If cLancamentos.ItemIndex = 1 then lTitulo.Caption := 'Controle de Juros/Multas/Descontos (Recebimentos)';
     If cLancamentos.ItemIndex = 2 then lTitulo.Caption := 'Controle de Juros/Multas/Descontos (Pgto/Receb)';

     If cMovimento.ItemIndex = 0 then lTitulo.Caption := lTitulo.Caption + ' - Abertas';
     If cMovimento.ItemIndex = 1 then lTitulo.Caption := lTitulo.Caption + ' - Baixadas';
     If cMovimento.ItemIndex = 2 then lTitulo.Caption := lTitulo.Caption + ' - Abertas/Baixadas';

     lPeriodo.Caption := 'Período '+cDataIni.Text + ' a '+cDataFim.Text;
     If cProcesso.Text <> '' then lPeriodo.Caption := ' - '+lPeriodo.Caption + cProcesso.Text;

     If tTitulos.RecordCount = 0 then begin
        MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
     end else begin
        If cExcel.Checked = false then begin
           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rF01b.Print;
           rF01b.FreeOnRelease;
           rF01b.Reset;
        end else begin
           ExportaExcel;
        End;
     End;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.bDetalheBeforePrint(Sender: TObject);
begin
      With Dados do begin
           If cZebrado.Checked then
              pDetalhe.Background1.Brush.Color := $00FFDFDF
           else
              pDetalhe.Background1.Brush.Color := clWhite;
      End;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_JurosMulta.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.KeyValue      := 0;
      cCentroCusto.KeyValue   := 0;
      cClassificacao.KeyValue := 0;
      cBanco.KeyValue         := 0;
      cBeneficiario.KeyValue  := 0;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.cMovimentoClick( Sender: TObject);
begin
     cBanco.Enabled := cMovimento.ItemIndex = 1;
     If cMovimento.ItemIndex <> 1 then begin
        cBanco.KeyValue := -1;
        lData.Caption   := 'Vencimento';
     end else begin
        lData.Caption := 'Baixa';
     End;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_JurosMulta.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mVlrDOCPG,
   mVlrDOCRC,
   mVlrParPG,
   mVlrParRC,
   mVlrJurPG,
   mVlrJurRC,
   mVlrMulPG,
   mVlrMulRC,
   mVlrDesPG,
   mVlrDesRC,
   mVlrTotPG,
   mVlrTotRC: Real;
   mZebra: Boolean;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tTitulos.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      mPlanilha.Range['A3','M3'].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['A3','M3'].Interior.Pattern  := 1;
      mPlanilha.Range['A3','M3'].Font.Bold         := true;
      mPlanilha.Range['A3','M3'].Font.Color        := clBlack;
      mPlanilha.Range['A3','M3'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A3','M3'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A3','M3'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[3,01] := 'PG/REC';
      mPlanilha.Cells[3,02] := 'VENCTO.';
      mPlanilha.Cells[3,03] := 'BENEFICIÁRIO';
      mPlanilha.Cells[3,04] := 'CLASSIFICAÇÃO';
      mPlanilha.Cells[3,05] := 'CENTRO CUSTO';
      mPlanilha.Cells[3,06] := 'Nº DOC';
      mPlanilha.Cells[3,07] := 'DT.DOC';
      mPlanilha.Cells[3,08] := 'VLR.DOC.';
      mPlanilha.Cells[3,09] := 'PARCELA';
      mPlanilha.Cells[3,10] := 'JUROS';
      mPlanilha.Cells[3,11] := 'MULTA';
      mPlanilha.Cells[3,12] := 'DESCONTOS';
      mPlanilha.Cells[3,13] := 'TOTAL';

      mPlanilha.Range['A3','M3'].HorizontalAlignment := 3;
      mPlanilha.Range['A3','M3'].VerticalAlignment   := 2;
      mPlanilha.Range['A3','M3'].Font.Size           := 8;

      mZebra := false;
      mLinha := 4;

      While (not tTitulos.Eof) and (not Funcoes.Cancelado) do Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size := 8;
            mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 3;

            mPlanilha.Cells[mLinha,01] := tTitulos.FieldByName('Tipo').AsString;
            mPlanilha.Cells[mLinha,02] := tTitulos.FieldByName('Data_Vencimento').Value;
            mPlanilha.Cells[mLinha,03] := tTitulos.FieldByName('Beneficiario').AsString;
            mPlanilha.Cells[mLinha,04] := tTitulos.FieldByName('Classificacao_Nome').AsString;
            mPlanilha.Cells[mLinha,05] := tTitulos.FieldByName('CentroCusto_Nome').AsString;
            mPlanilha.Cells[mLinha,06] := ''''+tTitulos.FieldByName('Numero_Documento').AsString;
            mPlanilha.Cells[mLinha,07] := tTitulos.FieldByName('Data_Documento').Value;
            mPlanilha.Cells[mLinha,08] := tTitulos.FieldByName('Valor_Documento').AsFloat;
            mPlanilha.Cells[mLinha,09] := tTitulos.FieldByName('Valor_Parcela').AsFloat;
            mPlanilha.Cells[mLinha,10] := tTitulos.FieldByName('Juros').AsFloat;
            mPlanilha.Cells[mLinha,11] := tTitulos.FieldByName('Multa').AsFloat;
            mPlanilha.Cells[mLinha,12] := tTitulos.FieldByName('Desconto').AsFloat;
            mPlanilha.Cells[mLinha,13] := tTitulos.FieldByName('Valor_Total').AsFloat;

            mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';

            // Pagamentos.
            if tTitulos.FieldByName('Tipo').Value = 'P' then begin
               mVlrDOCPG := mVlrDOCPG + tTitulos.FieldByName('Valor_Documento').Value;
               mVlrParPG := mVlrParPG + tTitulos.FieldByName('Valor_Parcela').Value;
               mVlrJurPG := mVlrJurPG + tTitulos.FieldByName('Juros').Value;
               mVlrMulPG := mVlrMulPG + tTitulos.FieldByName('Multa').Value;
               mVlrDesPG := mVlrDesPG + tTitulos.FieldByName('Desconto').Value;
               mVlrTotPG := mVlrTotPG + tTitulos.FieldByName('Valor_Total').Value;
            end else begin
               mVlrDOCRC := mVlrDOCRC + tTitulos.FieldByName('Valor_Documento').Value;
               mVlrParRC := mVlrParRC + tTitulos.FieldByName('Valor_Parcela').Value;
               mVlrJurRC := mVlrJurRC + tTitulos.FieldByName('Juros').Value;
               mVlrMulRC := mVlrMulRC + tTitulos.FieldByName('Multa').Value;
               mVlrDesRC := mVlrDesRC + tTitulos.FieldByName('Desconto').Value;
               mVlrTotRC := mVlrTotRC + tTitulos.FieldByName('Valor_Total').Value;
            End;

            tTitulos.Next;

            If mZebra = true then
               mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := clWhite
            else
               mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);

            mZebra := not mZebra;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
//         KillTask('Excel.exe');    // Microsoft Excel
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

      mPlanilha.Columns.Autofit;

      Inc(mLinha);

      mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha+2)].Font.Size := 8;

      mPlanilha.Cells[mLinha,04] := 'PAGAMENTOS';
      mPlanilha.Cells[mLinha,08] := mVlrDOCPG;
      mPlanilha.Cells[mLinha,09] := mVlrParPG;
      mPlanilha.Cells[mLinha,10] := mVlrJurPG;
      mPlanilha.Cells[mLinha,11] := mVlrMulPG;
      mPlanilha.Cells[mLinha,12] := mVlrDesPG;
      mPlanilha.Cells[mLinha,13] := mVlrTotPG;

      mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';

      mPlanilha.Cells[mLinha+1,04] := 'RECEBIMENTOS';
      mPlanilha.Cells[mLinha+1,08] := mVlrDOCRC;
      mPlanilha.Cells[mLinha+1,09] := mVlrParRC;
      mPlanilha.Cells[mLinha+1,10] := mVlrJurRC;
      mPlanilha.Cells[mLinha+1,11] := mVlrMulRC;
      mPlanilha.Cells[mLinha+1,12] := mVlrDesRC;
      mPlanilha.Cells[mLinha+1,13] := mVlrTotRC;

      mPlanilha.Cells[mLinha+1,08].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+1,09].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+1,10].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+1,11].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+1,12].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+1,13].NumberFormat := '#.##0,00_);(#.##0,00)';

      mPlanilha.Cells[1,01]                          := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size           := 14;
      mPlanilha.Range['A1','A1'].Font.Bold           := true;
      mPlanilha.Range['A1','M1'].Mergecells          := True;
      mPlanilha.Range['A1','M1'].HorizontalAlignment := 3;
      mPlanilha.Cells[2,01]                          := 'Contas a Pagar / Receber - Período de '+cDataIni.Text + ' ás ' + cDataFim.Text;
      mPlanilha.Range['A2','A2'].Font.Size           := 10;
      mPlanilha.Range['A2','M2'].Mergecells          := True;
      mPlanilha.Range['A2','M2'].HorizontalAlignment := 3;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;

procedure TImpressao_FinanceirosOP_JurosMulta.pDetalheAfterPrint(Sender: TObject);
begin
      if tTitulos.FieldByName('Tipo').AsString = 'P' then begin
         cVlrDOCPG.Value      := cVlrDOCPG.Value      + tTitulos.FieldByName('Valor_Documento').AsCurrency;
         cVlrParcelaPG.Value  := cVlrParcelaPG.Value  + tTitulos.FieldByName('Valor_Parcela').AsCurrency;
         cVlrJurosPG.Value    := cVlrJurosPG.Value    + tTitulos.FieldByName('Juros').AsCurrency;
         cVlrMultaPG.Value    := cVlrMultaPG.Value    + tTitulos.FieldByName('Multa').AsCurrency;
         cVlrDescontoPG.Value := cVlrDescontoPG.Value + tTitulos.FieldByName('Desconto').AsCurrency;
         cVlrTotalPG.Value    := cVlrTotalPG.Value    + tTitulos.FieldByName('Valor_Total').AsCurrency;
      end else begin
         cVlrDOCRC.Value      := cVlrDOCRC.Value      + tTitulos.FieldByName('Valor_Documento').AsCurrency;
         cVlrParcelaRC.Value  := cVlrParcelaRC.Value  + tTitulos.FieldByName('Valor_Parcela').AsCurrency;
         cVlrJurosRC.Value    := cVlrJurosRC.Value    + tTitulos.FieldByName('Juros').AsCurrency;
         cVlrMultaRC.Value    := cVlrMultaRC.Value    + tTitulos.FieldByName('Multa').AsCurrency;
         cVlrDescontoRC.Value := cVlrDescontoRC.Value + tTitulos.FieldByName('Desconto').AsCurrency;
         cVlrTotalRC.Value    := cVlrTotalRC.Value    + tTitulos.FieldByName('Valor_Total').AsCurrency;
      end;
end;

end.



