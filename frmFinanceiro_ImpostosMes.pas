unit frmFinanceiro_ImpostosMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, Mask,
  Dateutils, DB, DBAccess, MSAccess, IniFiles, RxLookup, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TFinanceiro_ImpostosMes = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    StaticText1: TStaticText;
    tLan: TMSQuery;
    cICMSRec: TCurrencyEdit;
    StaticText7: TStaticText;
    cIPIRec: TCurrencyEdit;
    StaticText8: TStaticText;
    cPISRec: TCurrencyEdit;
    StaticText9: TStaticText;
    cCOFINSRec: TCurrencyEdit;
    StaticText10: TStaticText;
    cIRPJRec: TCurrencyEdit;
    StaticText11: TStaticText;
    cCSLLRec: TCurrencyEdit;
    lClassificacao: TStaticText;
    cClassICMS: TRxDBLookupCombo;
    StaticText20: TStaticText;
    cCCICMS: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cClassIPI: TRxDBLookupCombo;
    cCCIPI: TRxDBLookupCombo;
    cClassPIS: TRxDBLookupCombo;
    cCCPIS: TRxDBLookupCombo;
    cClassCOF: TRxDBLookupCombo;
    cCCCOF: TRxDBLookupCombo;
    cClassIRPJ: TRxDBLookupCombo;
    cCCIRPJ: TRxDBLookupCombo;
    cClassCSLL: TRxDBLookupCombo;
    cCCCSLL: TRxDBLookupCombo;
    cICMSData: TDateEdit;
    StaticText4: TStaticText;
    cIPIData: TDateEdit;
    cPISData: TDateEdit;
    cCOFData: TDateEdit;
    cIRPJData: TDateEdit;
    cCSLLData: TDateEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_ImpostosMes: TFinanceiro_ImpostosMes;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_ImpostosMes.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TFinanceiro_ImpostosMes.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Salvando as ultimas opções utilizadas como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_ICMS'  , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_IPI'   , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_PIS'   , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_COFINS', '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_IRPJ'  , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_CSLL'  , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_ICMS'     , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_IPI'      , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_PIS'      , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_COFINS'   , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_IRPJ'     , '');
      aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_CSLL'     , '');

      if cClassICMS.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_ICMS'  , cClassICMS.KeyValue);
      if cClassIPI.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_IPI'   , cClassIPI.KeyValue);
      if cClassPIS.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_PIS'   , cClassPIS.KeyValue);
      if cClassCOF.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_COFINS', cClassCOF.KeyValue);
      if cClassIRPJ.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_IRPJ'  , cClassIRPJ.KeyValue);
      if cClassCSLL.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_CSLL'  , cClassCSLL.KeyValue);
      if cCCICMS.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_ICMS'     , cCCICMS.KeyValue);
      if cCCIPI.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_IPI'      , cCCIPI.KeyValue);
      if cCCPIS.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_PIS'      , cCCPIS.KeyValue);
      if cCCCOF.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_COFINS'   , cCCCOF.KeyValue);
      if cCCIRPJ.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_IRPJ'     , cCCIRPJ.KeyValue);
      if cCCCSLL.KeyValue <> null then
         aINI.WriteString ( 'IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_CSLL'     , cCCCSLL.KeyValue);

      aINI.Free;

      LimpaMemoria;
      FecharTabelas(Dados, nil, nil, nil);
      Financeiro_ImpostosMes.Release;
      Financeiro_ImpostosMes := nil;
end;

procedure TFinanceiro_ImpostosMes.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_ImpostosMes.FormShow(Sender: TObject);
Var
   aINI:TIniFile;
   mMes, mAno:integer;
begin
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      end;

      // Carregando as ultimas opções utilizadas como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cICMSRec.Value      := aINI.ReadFloat ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'ICMS_Rec'    , 0);
      cIPIRec.Value       := aINI.ReadFloat ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'IPI_Rec'     , 0);
      cPISRec.Value       := aINI.ReadFloat ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'PIS_Rec'     , 0);
      cCOFINSRec.Value    := aINI.ReadFloat ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'COFINS_Rec'  , 0);
      cIRPJRec.Value      := aINI.ReadFloat ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'IRPJ_Rec'    , 0);
      cCSLLRec.Value      := aINI.ReadFloat ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CSLL_Rec'    , 0);
      cClassICMS.KeyValue := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_ICMS'  , '');
      cClassIPI.KeyValue  := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_IPI'   , '');
      cClassPIS.KeyValue  := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_PIS'   , '');
      cClassCOF.KeyValue  := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_COFINS', '');
      cClassIRPJ.KeyValue := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_CSLL'  , '');
      cClassCSLL.KeyValue := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'Class_IRPJ'  , '');
      cCCICMS.KeyValue    := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_ICMS'     , '');
      cCCIPI.KeyValue     := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_IPI'      , '');
      cCCPIS.KeyValue     := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_PIS'      , '');
      cCCCOF.KeyValue     := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_COFINS'   , '');
      cCCIRPJ.KeyValue    := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_CSLL'     , '');
      cCCCSLL.KeyValue    := aINI.ReadString('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'CC_IRPJ'     , '');

      with Dados do begin
           Configuracao.Open;
           mMes := monthof(Date);
           mAno := yearof(Date);
           if mMes < 12 then begin
              mMes := mMes + 1;
           end else begin
              mMes := 1;
              mAno := mAno + 1;
           end;
           if ConfiguracaoVencimento_ICMSComercio.asinteger > 0 then
              cICMSData.Text := Poezero(2, ConfiguracaoVencimento_ICMSComercio.asinteger)+'/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno);
           if ConfiguracaoVencimento_IPI.asinteger > 0 then
              cIPIData.Text  := Poezero(2, ConfiguracaoVencimento_IPI.asinteger) +        '/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno);
           if ConfiguracaoVencimento_PIS.asinteger > 0 then
              cPISData.Text  := Poezero(2, ConfiguracaoVencimento_PIS.asinteger) +        '/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno);
           if ConfiguracaoVencimento_COFINS.asinteger > 0 then
              cCOFData.Text  := Poezero(2, ConfiguracaoVencimento_COFINS.asinteger) +     '/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno);
           if ConfiguracaoVencimento_IRPJ.asinteger > 0 then
              cIRPJData.Text := Poezero(2, ConfiguracaoVencimento_IRPJ.asinteger) +       '/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno);
           if ConfiguracaoVencimento_CSLL.asinteger > 0 then
              cCSLLData.Text := Poezero(2, ConfiguracaoVencimento_CSLL.asinteger) +       '/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno);
      end;

      aINI.Free;

      with Dados do begin
           ClassificacaoFinanceira.sql.clear;
           ClassificacaoFinanceira.sql.add('SELECT *');
           ClassificacaoFinanceira.sql.add('FROM  ClassificacaoFinanceira');
           ClassificacaoFinanceira.sql.add('WHERE Tipo = ''P''');
           ClassificacaoFinanceira.sql.add('  AND Desativada <> 1');
           ClassificacaoFinanceira.sql.add('  AND Adiantamento <> 1');
           ClassificacaoFinanceira.sql.add('ORDER BY Descricao');
           ClassificacaoFinanceira.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQl.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;
      end;
end;

procedure TFinanceiro_ImpostosMes.bGerarClick(Sender: TObject);
var
   i:integer;
begin
      if MessageDlg('Deseja realmente criar os lançamentos de impostos do mês no financeiro?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
         Abort;
      end;

      if (cICMSRec.Value > 0) and ((Trim(cClassICMS.Text) = '') or (DataLimpa(cICMSData.Text))) then begin
         MessageDlg('Classificação Financeira e Data de Vencimento são campos obrigatórios!', mtError, [mbok], 0);
         if Trim(cClassICMS.Text) = '' then
            cClassICMS.Setfocus
         else
            cICMSData.Setfocus;
         Abort;
      end;
      if (cIPIRec.Value > 0) and ((Trim(cClassIPI.Text) = '') or (DataLimpa(cIPIData.Text))) then begin
         MessageDlg('Classificação Financeira e Data de Vencimento são campos obrigatórios!', mtError, [mbok], 0);
         if Trim(cClassIPI.Text) = '' then
            cClassIPI.Setfocus
         else
            cIPIData.Setfocus;
         Abort;
      end;
      if (cPISRec.Value > 0) and ((Trim(cClassPIS.Text) = '') or (DataLimpa(cPISData.Text))) then begin
         MessageDlg('Classificação Financeira e Data de Vencimento são campos obrigatórios!', mtError, [mbok], 0);
         if Trim(cClassPIS.Text) = '' then
            cClassPIS.Setfocus
         else
            cPISData.Setfocus;
         Abort;
      end;
      if (cCOFINSRec.Value > 0) and ((Trim(cClassCOF.Text) = '') or (DataLimpa(cCOFData.Text))) then begin
         MessageDlg('Classificação Financeira e Data de Vencimento são campos obrigatórios!', mtError, [mbok], 0);
         if Trim(cClassCOF.Text) = '' then
            cClassCOF.Setfocus
         else
            cCOFData.Setfocus;
         Abort;
      end;
      if (cIRPJRec.Value > 0) and ((Trim(cClassIRPJ.Text) = '') or (DataLimpa(cIRPJData.Text))) then begin
         MessageDlg('Classificação Financeira e Data de Vencimento são campos obrigatórios!', mtError, [mbok], 0);
         if Trim(cClassIRPJ.Text) = '' then
            cClassIRPJ.Setfocus
         else
            cIRPJData.Setfocus;
         Abort;
      end;
      if (cCSLLRec.Value > 0) and ((Trim(cClassCSLL.Text) = '') or (DataLimpa(cCSLLData.Text))) then begin
         MessageDlg('Classificação Financeira e Data de Vencimento são campos obrigatórios!', mtError, [mbok], 0);
         if Trim(cClassCSLL.Text) = '' then
            cClassCSLL.Setfocus
         else
            cCSLLData.Setfocus;
         Abort;
      end;

      with Dados do begin
           tlan.SQL.Clear;
           tLan.SQL.Add('DELETE FROM PagarReceber WHERE Tipo_Nota = ''IM'' AND Data_Vencimento = :pDataICMS');
           tLan.SQL.Add('DELETE FROM PagarReceber WHERE Tipo_Nota = ''IM'' AND Data_Vencimento = :pDataIPI');
           tLan.SQL.Add('DELETE FROM PagarReceber WHERE Tipo_Nota = ''IM'' AND Data_Vencimento = :pDataPIS');
           tLan.SQL.Add('DELETE FROM PagarReceber WHERE Tipo_Nota = ''IM'' AND Data_Vencimento = :pDataCOF');
           tLan.SQL.Add('DELETE FROM PagarReceber WHERE Tipo_Nota = ''IM'' AND Data_Vencimento = :pDataIRPJ');
           tLan.SQL.Add('DELETE FROM PagarReceber WHERE Tipo_Nota = ''IM'' AND Data_Vencimento = :pDataCSLL');
           tLan.ParamByName('pDataICMS').asDate := cICMSData.Date;
           tLan.ParamByName('pDataIPI').asDate  := cIPIData.Date;
           tLan.ParamByName('pDataPIS').asDate  := cPISData.Date;
           tLan.ParamByName('pDataCOF').asDate  := cCOFData.Date;
           tLan.ParamByName('pDataIRPJ').asDate := cIRPJData.Date;
           tLan.ParamByName('pDataCSLL').asDate := cCSLLData.Date;
           tLan.Execute;

           tlan.SQL.Clear;
           tLan.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM PagarReceber');
           tLan.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = (SELECT MAX(Numero) FROM PagarReceber)+1');
           PagarReceber.Open;
           // Gerando lançamento do ICMS no financeiro.
           if cICMSRec.Value > 0 then begin
              ClassificacaoFinanceira.Locate('Codigo', cClassICMS.KeyValue, [loCaseInsensitive]);
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLan.FieldByName('Numero').AsInteger;
                           PagarReceberTipo.Value             := 'P';
                           PagarReceberClassificacao.Value    := cClassICMS.KeyValue;
                           PagarReceberCentro_Custo.Value     := iif(cCCICMS.KeyValue <> null, cCCICMS.KeyValue, '');
                           PagarReceberData_Documento.Value   := cICMSData.Date;
                           PagarReceberData_Vencimento.Value  := cICMSData.Date;
                           PagarReceberValor_Documento.Value  := cICMSRec.Value;
                           PagarReceberValor_Parcela.Value    := cICMSRec.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cICMSRec.Value;
                           PagarReceberValor_Operacao.Value   := cICMSRec.Value;
                           PagarReceberOrgao.Value            := ConfiguracaoVencimento_ICMSOrgao.Value;
                           PagarReceberDocumento.Value        := ConfiguracaoVencimento_ICMSDoc.Value;
                           PagarReceberNumero_Documento.Value := ConfiguracaoVencimento_ICMSDoc.AsString + tLan.FieldByName('Numero').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := tLan.FieldByName('Numero').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := 'IM';
                           PagarReceberObservacao.Value       := 'Pagamento de ICMS a Recolher em '+cICMSData.Text;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tLan.Close;
           end;
           
           // Gerando lançamento do IPI no financeiro.
           if cIPIRec.Value > 0 then begin
              tLan.Open;
              ClassificacaoFinanceira.Locate('Codigo', cClassIPI.KeyValue, [loCaseInsensitive]);
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLan.FieldByName('Numero').AsInteger;
                           PagarReceberTipo.Value             := 'P';
                           PagarReceberClassificacao.Value    := cClassIPI.KeyValue;
                           PagarReceberCentro_Custo.Value     := iif(cCCIPI.KeyValue <> null, cCCIPI.KeyValue, '');
                           PagarReceberData_Documento.Value   := cIPIData.Date;
                           PagarReceberData_Vencimento.Value  := cIPIData.Date;
                           PagarReceberValor_Documento.Value  := cIPIRec.Value;
                           PagarReceberValor_Parcela.Value    := cIPIRec.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cIPIRec.Value;
                           PagarReceberValor_Operacao.Value   := cIPIRec.Value;
                           PagarReceberOrgao.Value            := ConfiguracaoVencimento_IPIOrgao.Value;
                           PagarReceberDocumento.Value        := ConfiguracaoVencimento_IPIDoc.Value;
                           PagarReceberNumero_Documento.Value := ConfiguracaoVencimento_IPIDoc.AsString + tLan.FieldByName('Numero').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := tLan.FieldByName('Numero').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := 'IM';
                           PagarReceberObservacao.Value       := 'Pagamento de IPI a Recolher em '+cIPIData.Text;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tLan.Close;
           end;

           // Gerando lançamento do PIS no financeiro.
           if cPISRec.Value > 0 then begin
              tLan.Open;
              ClassificacaoFinanceira.Locate('Codigo', cClassPIS.KeyValue, [loCaseInsensitive]);
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLan.FieldByName('Numero').AsInteger;
                           PagarReceberTipo.Value             := 'P';
                           PagarReceberClassificacao.Value    := cClassPIS.KeyValue;
                           PagarReceberCentro_Custo.Value     := iif(cCCPIS.KeyValue <> null, cCCPIS.KeyValue, '');
                           PagarReceberData_Documento.Value   := cPISData.Date;
                           PagarReceberData_Vencimento.Value  := cPISData.Date;
                           PagarReceberValor_Documento.Value  := cPISRec.Value;
                           PagarReceberValor_Parcela.Value    := cPISRec.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cPISRec.Value;
                           PagarReceberValor_Operacao.Value   := cPISRec.Value;
                           PagarReceberOrgao.Value            := ConfiguracaoVencimento_PISOrgao.Value;
                           PagarReceberDocumento.Value        := ConfiguracaoVencimento_PISDoc.Value;
                           PagarReceberNumero_Documento.Value := ConfiguracaoVencimento_PISDoc.AsString + tLan.FieldByName('Numero').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := tLan.FieldByName('Numero').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := 'IM';
                           PagarReceberObservacao.Value       := 'Pagamento de PIS a Recolher em '+cPISData.Text;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tLan.Close;
           end;

           // Gerando lançamento do COFINS no financeiro.
           if cCOFINSRec.Value > 0 then begin
              tLan.Open;
              ClassificacaoFinanceira.Locate('Codigo', cClassCOF.KeyValue, [loCaseInsensitive]);
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLan.FieldByName('Numero').AsInteger;
                           PagarReceberTipo.Value             := 'P';
                           PagarReceberClassificacao.Value    := cClassCOF.KeyValue;
                           PagarReceberCentro_Custo.Value     := iif(cCCCOF.KeyValue <> null, cCCCOF.KeyValue, '');
                           PagarReceberData_Documento.Value   := cCOFData.Date;
                           PagarReceberData_Vencimento.Value  := cCOFData.Date;
                           PagarReceberValor_Documento.Value  := cCOFINSRec.Value;
                           PagarReceberValor_Parcela.Value    := cCOFINSRec.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cCOFINSRec.Value;
                           PagarReceberValor_Operacao.Value   := cCOFINSRec.Value;
                           PagarReceberOrgao.Value            := ConfiguracaoVencimento_COFINSOrgao.Value;
                           PagarReceberDocumento.Value        := ConfiguracaoVencimento_COFINSDoc.Value;
                           PagarReceberNumero_Documento.Value := ConfiguracaoVencimento_COFINSDoc.AsString + tLan.FieldByName('Numero').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := tLan.FieldByName('Numero').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := 'IM';
                           PagarReceberObservacao.Value       := 'Pagamento de COFINS a Recolher em '+cCOFData.Text;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tLan.Close;
           end;

           // Gerando lançamento do IRPJ no financeiro.
           if cIRPJRec.Value > 0 then begin
              tLan.Open;
              ClassificacaoFinanceira.Locate('Codigo', cClassIRPJ.KeyValue, [loCaseInsensitive]);
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLan.FieldByName('Numero').AsInteger;
                           PagarReceberTipo.Value             := 'P';
                           PagarReceberClassificacao.Value    := cClassIRPJ.KeyValue;
                           PagarReceberCentro_Custo.Value     := iif(cCCIRPJ.KeyValue <> null, cCCIRPJ.KeyValue, '');
                           PagarReceberData_Documento.Value   := cIRPJData.Date;
                           PagarReceberData_Vencimento.Value  := cIRPJData.Date;
                           PagarReceberValor_Documento.Value  := cIRPJRec.Value;
                           PagarReceberValor_Parcela.Value    := cIRPJRec.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cIRPJRec.Value;
                           PagarReceberValor_Operacao.Value   := cIRPJRec.Value;
                           PagarReceberOrgao.Value            := ConfiguracaoVencimento_IRPJOrgao.Value;
                           PagarReceberDocumento.Value        := ConfiguracaoVencimento_IRPJDoc.Value;
                           PagarReceberNumero_Documento.Value := ConfiguracaoVencimento_IRPJDoc.AsString + tLan.FieldByName('Numero').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := tLan.FieldByName('Numero').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := 'IM';
                           PagarReceberObservacao.Value       := 'Pagamento de IRPJ a Recolher em '+cIRPJData.Text;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tLan.Close;
           end;

           // Gerando lançamento do CSLL no financeiro.
           if cCSLLRec.Value > 0 then begin
              tLan.Open;
              ClassificacaoFinanceira.Locate('Codigo', cClassCSLL.KeyValue, [loCaseInsensitive]);
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLan.FieldByName('Numero').AsInteger;
                           PagarReceberTipo.Value             := 'P';
                           PagarReceberClassificacao.Value    := cClassCSLL.KeyValue;
                           PagarReceberCentro_Custo.Value     := cCCCSLL.KeyValue;
                           PagarReceberData_Documento.Value   := cCSLLData.Date;
                           PagarReceberData_Vencimento.Value  := cCSLLData.Date;
                           PagarReceberValor_Documento.Value  := cCSLLRec.Value;
                           PagarReceberValor_Parcela.Value    := cCSLLRec.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cCSLLRec.Value;
                           PagarReceberValor_Operacao.Value   := cCSLLRec.Value;
                           PagarReceberOrgao.Value            := ConfiguracaoVencimento_CSLLOrgao.Value;
                           PagarReceberDocumento.Value        := ConfiguracaoVencimento_CSLLDoc.Value;
                           PagarReceberNumero_Documento.Value := ConfiguracaoVencimento_CSLLDoc.AsString + tLan.FieldByName('Numero').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := tLan.FieldByName('Numero').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := 'IM';
                           PagarReceberObservacao.Value       := 'Pagamento de CSLL a Recolher em '+cCSLLData.Text;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tLan.Close;
           end;
      end;
end;

end.
