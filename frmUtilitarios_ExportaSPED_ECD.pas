unit frmUtilitarios_ExportaSPED_ECD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXSpin, RXCtrls, Funcoes,
  Vcl.ComCtrls, IniFiles, DateUtils, DB, DBAccess, MSAccess, MaskUtils, MemDS, system.UITypes, Vcl.Mask;

type
  TUtilitarios_ExportaSPED_ECD = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    bSintegra: TButton;
    tEmpresas: TMSQuery;
    tContador: TMSQuery;
    tHistoricos: TMSQuery;
    tSaldo: TMSQuery;
    tLancamentos: TMSQuery;
    tPartidas: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tTemp: TMSQuery;
    tBalanco: TMSQuery;
    cPagina: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cMsg: TMemo;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cNomeArquivo: TEdit;
    StaticText3: TStaticText;
    cAnoIni: TRxSpinEdit;
    cMesIni: TComboBox;
    StaticText1: TStaticText;
    cFinalidade: TRadioGroup;
    StaticText4: TStaticText;
    cAnoFim: TRxSpinEdit;
    cMesFim: TComboBox;
    cSituacao: TRadioGroup;
    cEscrituracao: TRadioGroup;
    cVersao: TEdit;
    cForma: TRadioGroup;
    cSituacaoInicio: TRadioGroup;
    cNIRE: TRadioGroup;
    cFinalEscri: TRadioGroup;
    cAuditoria: TRadioGroup;
    cECD: TRadioGroup;
    cResp: TRadioGroup;
    cConsolidada: TRadioGroup;
    cEventoSoc: TRadioGroup;
    tDRE: TMSQuery;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cAnoIniChange(Sender: TObject);

    Function  LimpaConta(pConta: String): String;
    Function  LimpaContaECF(pConta: String): String;
    Function  FinalConta(Conta, Mascara: String): String;

    // BLOCO 0.
    procedure Registro0000;
    procedure Registro0001;
    procedure Registro0007;
    procedure Registro0020;
    procedure Registro0150;
    procedure Registro0180;
    procedure Registro0990;

    // BLOCO I.
    procedure RegistroI001;
    procedure RegistroI010;
    procedure RegistroI012;
    procedure RegistroI015;
    procedure RegistroI020;
    procedure RegistroI030;
    procedure RegistroI050;
    procedure RegistroI051;
    procedure RegistroI052;
    procedure RegistroI075;
    //procedure RegistroI100;
    procedure RegistroI150;
    procedure RegistroI155(pDtIni, pDtFim: TDate);
    procedure RegistroI200;
    //procedure RegistroI250(pData:TDate; pLote: Integer);
    procedure RegistroI990;
    {
    procedure RegistroI300;
    procedure RegistroI310;
    }
    procedure RegistroI350;
    procedure RegistroI355(pDtIni, pDtFim: TDate);
    {
    procedure RegistroI500;
    procedure RegistroI510;
    procedure RegistroI550;
    procedure RegistroI555;
    procedure RegistroI990;
    }
    // BLOCO J.
    procedure RegistroJ001;
    procedure RegistroJ005;
    procedure RegistroJ100(pDataIni, pDataFim: TDate);
    procedure RegistroJ150(pDataIni, pDataFim: TDate);
    {
    procedure RegistroJ800;
    }
    procedure RegistroJ930;
    procedure RegistroJ900;
    procedure RegistroJ990;

    // BLOCO K.
    procedure RegistroK001;
    procedure RegistroK030;
    procedure RegistroK100;
    procedure RegistroK110;
    procedure RegistroK990;

    // BLOCO 9.
    procedure Registro9001;
    procedure Registro9900;
    //procedure Registro9990;
    //procedure Registro9999;
    {
    procedure Progresso1(Registro: String; RegTotal: Integer);
    procedure Progresso2(Registro: String);
    procedure Progresso3(Registro: String; RegTotal: Integer);
    procedure Progresso4(Registro: String; RegTotal: Integer);
    }

    procedure Progresso2(Registro: String; RegTotal: Integer);
    procedure Progresso3(Registro: String; RegTotal: Integer);
    procedure Progresso4(Registro: String; RegTotal: Integer);
  private
    { Private declarations }

  public
    { Public declarations }
     mLinha     : Integer;
     Arquivo    : TextFile;
     mNomeArq   : String;
     mDataIni   : TDate;
     mDataFim   : TDate;
     mCPF       : String;
     mCNPJ      : String;
     mRegistro  : String;
     mQtdeBloco0: Integer;
     mQtdeBlocoI: Integer;
     mQtdeBlocoJ: Integer;
     mQtdeBlocoK: Integer;
     mQtdeBloco9: Integer;

     // Bloco 0.
     mQtdeReg0000 : Integer;
     mQtdeReg0001 : Integer;
     mQtdeReg0007 : Integer;
     mQtdeReg0020 : Integer;
     mQtdeReg0150 : Integer;
     mQtdeReg0180 : Integer;
     mQtdeReg0990 : Integer;

     // Bloco I.
     mQtdeRegI001 : Integer;
     mQtdeRegI010 : Integer;
     mQtdeRegI012 : Integer;
     mQtdeRegI015 : Integer;
     mQtdeRegI020 : Integer;
     mQtdeRegI030 : Integer;
     mQtdeRegI050 : Integer;
     mQtdeRegI051 : Integer;
     mQtdeRegI052 : Integer;
     mQtdeRegI075 : Integer;
     mQtdeRegI100 : Integer;
     mQtdeRegI150 : Integer;
     mQtdeRegI155 : Integer;
     mQtdeRegI200 : Integer;
     mQtdeRegI250 : Integer;
     mQtdeRegI300 : Integer;
     mQtdeRegI310 : Integer;
     mQtdeRegI350 : Integer;
     mQtdeRegI355 : Integer;
     mQtdeRegI500 : Integer;
     mQtdeRegI510 : Integer;
     mQtdeRegI550 : Integer;
     mQtdeRegI555 : Integer;
     mQtdeRegI990 : Integer;

     // Bloco J.
     mQtdeRegJ001 : Integer;
     mQtdeRegJ005 : Integer;
     mQtdeRegJ100 : Integer;
     mQtdeRegJ150 : Integer;
     mQtdeRegJ800 : Integer;
     mQtdeRegJ900 : Integer;
     mQtdeRegJ930 : Integer;
     mQtdeRegJ990 : Integer;

     // Bloco K.
     mQtdeRegK001 : Integer;
     mQtdeRegK030 : Integer;
     mQtdeRegK100 : Integer;
     mQtdeRegK110 : Integer;
     {
     mQtdeRegK115 : Integer;
     mQtdeRegK200 : Integer;
     mQtdeRegK210 : Integer;
     mQtdeRegK300 : Integer;
     mQtdeRegK310 : Integer;
     }
     mQtdeRegK990 : Integer;

     // Bloco 9.
     mQtdeReg9001 : Integer;
     mQtdeReg9900 : Integer;
     mQtdeReg9990 : Integer;
     mQtdeReg9999 : Integer;
     
  end;

var
  Utilitarios_ExportaSPED_ECD: TUtilitarios_ExportaSPED_ECD;

const
  mForma: array[0..4] of String = ('A', 'B', 'G', 'R', 'Z');
  mSeta : array[0..4] of String = (' |', ' /', '- -', ' |', ' \');

implementation

uses frmDados, frmMenu_Principal, frmDMContab, frmJanela_ProcessamentoSPED, frmImpressao_Visualizar;

{$R *.dfm}

procedure TUtilitarios_ExportaSPED_ECD.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaSPED_ECD.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_ExportaSPED_ECD.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('SPED_CONTABIL', 'Arquivo'       , cNomeArquivo.Text );
      aINI.WriteString ('SPED_CONTABIL', 'Versao'        , cVersao.Text );
      aINI.WriteInteger('SPED_CONTABIL', 'MesIni'        , cMesIni.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'MesFim'        , cMesFim.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'AnoIni'        , cAnoIni.AsInteger );
      aINI.WriteInteger('SPED_CONTABIL', 'AnoFim'        , cAnoFim.AsInteger );
      aINI.WriteInteger('SPED_CONTABIL', 'Finalidade'    , cFinalidade.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'Situacao'      , cSituacao.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'EventoSoc'     , cEventoSoc.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'Escrituracao'  , cEscrituracao.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'Forma'         , cForma.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'SituacaoInicio', cSituacaoInicio.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'NIRE'          , cNIRE.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'Auditoria'     , cAuditoria.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'ECD'           , cECD.ItemIndex );
      aINI.WriteInteger('SPED_CONTABIL', 'Consolidada'   , cConsolidada.ItemIndex );
      aINI.Free;

      Utilitarios_ExportaSPED_ECD.Release;
      Utilitarios_ExportaSPED_ECD:= nil;
end;

procedure TUtilitarios_ExportaSPED_ECD.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                      := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cNomeArquivo.Text         := aINI.ReadString ('SPED_CONTABIL', 'Arquivo'       , 'CYBERSOFT_SPED_CONTABIL');
      cVersao.Text              := aINI.ReadString ('SPED_CONTABIL', 'Versao'        , '1.00');
      cMesIni.ItemIndex         := aINI.ReadInteger('SPED_CONTABIL', 'MesIni'        , MonthOf(Date)-1);
      cMesFim.ItemIndex         := aINI.ReadInteger('SPED_CONTABIL', 'MesFim'        , MonthOf(Date)-1);
      cAnoIni.Value             := aINI.ReadInteger('SPED_CONTABIL', 'AnoIni'        , YearOf(Date));
      cAnoFim.Value             := aINI.ReadInteger('SPED_CONTABIL', 'AnoFim'        , YearOf(Date));
      cFinalidade.ItemIndex     := aINI.ReadInteger('SPED_CONTABIL', 'Finalidade'    , 0);
      cSituacao.ItemIndex       := aINI.ReadInteger('SPED_CONTABIL', 'Situacao'      , 0);
      cEventoSoc.ItemIndex      := aINI.ReadInteger('SPED_CONTABIL', 'EventoSoc'     , 0);
      cEscrituracao.ItemIndex   := aINI.ReadInteger('SPED_CONTABIL', 'Escrituracao'  , 0);
      cForma.ItemIndex          := aINI.ReadInteger('SPED_CONTABIL', 'Forma'         , 0);
      cSituacaoInicio.ItemIndex := aINI.ReadInteger('SPED_CONTABIL', 'SituacaoInicio', 0);
      cNIRE.ItemIndex           := aINI.ReadInteger('SPED_CONTABIL', 'NIRE'          , 0);
      cAuditoria.ItemIndex      := aINI.ReadInteger('SPED_CONTABIL', 'Auditoria'     , 0);
      cECD.ItemIndex            := aINI.ReadInteger('SPED_CONTABIL', 'ECD'           , 0);
      cConsolidada.ItemIndex    := aINI.ReadInteger('SPED_CONTABIL', 'Consolidada'   , 0);
      aINI.Free;
      cPagina.ActivePageIndex := 0;
end;

procedure TUtilitarios_ExportaSPED_ECD.bGerarClick(Sender: TObject);
var
   mArq : TMemo;
begin
     Screen.Cursor := crSQLWait;
     cMsg.Clear;

     if trim(cVersao.text) = '' then begin
        MessageDlg('Campo "Versão" é obrogatório.', mtError, [mbOK], 0);
        Screen.Cursor := crDefault;
        cVersao.SetFocus;
        Abort;
     end;

     // Verificando se existe alguma conta sem a natureza.
     tTemp.SQL.Clear;
     tTemp.SQL.Add('SELECT Conta, Codigo, Descricao FROM PlanoContas WHERE ISNULL(Natureza, '''') = '''' ');
     tTemp.Open;
     if tTemp.RecordCount > 0 then begin
        while not tTemp.Eof do begin
              cMsg.Lines.Add('Erro: '+tTemp.FieldByName('Conta').AsString + ' ' + tTemp.FieldByName('Codigo').AsString + ' '+tTemp.FieldByName('Descricao').AsString+Space(40-Length(tTemp.FieldByName('Descricao').AsString))+ '> Natureza da conta não informada.');
              tTemp.Next;
        end;
     end;
     // Verificando se existe alguma conta sem a conta do plano referencial.
     tTemp.SQL.Clear;
     tTemp.SQL.Add('SELECT Conta, Codigo, Descricao, Conta_ECF');
     tTemp.SQL.Add('FROM   PlanoContas');
     tTemp.SQL.Add('WHERE  Sintetica = 0');
     tTemp.SQL.Add('  AND  ISNULL(Conta_ECF, '''') = '''' ');
     tTemp.SQL.Add('ORDER BY Conta_ECF');
     tTemp.Open;
     if tTemp.RecordCount > 0 then begin
        while not tTemp.Eof do begin
              cMsg.Lines.Add('Erro: '+tTemp.FieldByName('Conta').AsString + ' ' + tTemp.FieldByName('Codigo').AsString + ' '+tTemp.FieldByName('Descricao').AsString+Space(40-Length(tTemp.FieldByName('Descricao').AsString))+ '> Conta Plano Refencial não informada.');
              tTemp.Next;
        end;
     end;
     // Havendo qualquer erro não gera o arquivo.
     if cMsg.Lines.Count > 0 then begin
        cPagina.ActivePageIndex := 1;
        MessageDlg('Existem erros de informações que precisam ser corrigidos!'+#13+#13+'Arquivo não será gerado.', mtError, [mbOK], 0);
        Screen.Cursor := crDefault;
        Abort;
     end;

     // Zerando os contadores de registros.
     mQtdeBloco0 := 0;
     mQtdeBlocoI := 0;
     mQtdeBlocoJ := 0;
     mQtdeBlocoK := 0;
     mQtdeBloco9 := 0;

     // Bloco 0.
     mQtdeReg0000 := 0;
     mQtdeReg0001 := 0;
     mQtdeReg0007 := 0;
     mQtdeReg0020 := 0;
     mQtdeReg0150 := 0;
     mQtdeReg0180 := 0;
     mQtdeReg0990 := 0;

     // Bloco I.
     mQtdeRegI001 := 0;
     mQtdeRegI010 := 0;
     mQtdeRegI012 := 0;
     mQtdeRegI015 := 0;
     mQtdeRegI020 := 0;
     mQtdeRegI030 := 0;
     mQtdeRegI050 := 0;
     mQtdeRegI051 := 0;
     mQtdeRegI052 := 0;
     mQtdeRegI075 := 0;
     mQtdeRegI100 := 0;
     mQtdeRegI150 := 0;
     mQtdeRegI155 := 0;
     mQtdeRegI200 := 0;
     mQtdeRegI250 := 0;
     mQtdeRegI300 := 0;
     mQtdeRegI310 := 0;
     mQtdeRegI350 := 0;
     mQtdeRegI355 := 0;
     mQtdeRegI500 := 0;
     mQtdeRegI510 := 0;
     mQtdeRegI550 := 0;
     mQtdeRegI555 := 0;
     mQtdeRegI990 := 0;

     // Bloco J.
     mQtdeRegJ001 := 0;
     mQtdeRegJ005 := 0;
     mQtdeRegJ100 := 0;
     mQtdeRegJ150 := 0;
     mQtdeRegJ800 := 0;
     mQtdeRegJ900 := 0;
     mQtdeRegJ930 := 0;
     mQtdeRegJ990 := 0;

     // Bloco 9.
     mQtdeReg9001 := 0;
     mQtdeReg9900 := 0;
     mQtdeReg9990 := 0;
     mQtdeReg9999 := 0;

     With Dados, dmContab do Begin
          Configuracao.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          // Seleciona todas as filiais da empresa "MATRIZ" em uso.
          tEmpresas.SQL.Clear;
          If EmpresasMatriz_Filial.AsBoolean = true then begin
             tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
             tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          end else begin
             tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE(Matriz_Filial = 1) AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
          End;
          tEmpresas.ParamByName('pCNPJ').AsString := Copy(EmpresasCNPJ.AsString, 1, 8);
          tEmpresas.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios');
          Municipios.Open;
          Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

          mNomeArq := Trim(ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(EmpresasRazao_Social.AsString);
          If EmpresasMatriz_Filial.AsBoolean = true then
             mNomeArq := mNomeArq + '_Matriz'
          else
             mNomeArq := mNomeArq + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

          If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
          mNomeArq := mNomeArq+'\'+cNomeArquivo.Text+'_0001.TXT';

          If FileExists(mNomeArq) then DeleteFile(mNomeArq);
          AssignFile(Arquivo, mNomeArq);
          ReWrite(Arquivo);

          LinhaAtual  := 0;
          ColunaAtual := 0;
          mLinha      := 0;
          mDataIni    := StrtoDate('01/' + PoeZero(2, cMesIni.ItemIndex+1) +'/'+ PoeZero(4, cAnoIni.AsInteger));
          mDataFim    := UltimoDiaMes(StrtoDate('01/' + PoeZero(2, cMesFim.ItemIndex+1) +'/'+ PoeZero(4, cAnoFim.AsInteger)));

          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add('SELECT *');
          PlanoContas.SQL.Add('FROM   PlanoContas');
          PlanoContas.SQL.Add('WHERE  (Conta IS NOT NULL)');
          PlanoContas.SQL.Add('ORDER BY Conta');
          //PlanoContas.SQL.SaveToFile('c:\temp\SPED_Contabil_Plano_Contas.sql');
          PlanoContas.Open;

          tHistoricos.SQL.Clear;
          tHistoricos.SQL.Add('SELECT *');
          tHistoricos.SQL.Add('FROM  HistoricoPadrao HST');
          tHistoricos.SQL.Add('WHERE (SELECT COUNT(*) FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim) AND (Historico_Codigo = HST.Codigo)) > 0');
          tHistoricos.SQL.Add('ORDER BY Codigo');
          tHistoricos.ParamByName('pDataIni').AsDate := mDataIni;
          tHistoricos.ParamByName('pDataFim').AsDate := mDataFim;
          tHistoricos.Open;

          Janela_ProcessamentoSPED := TJanela_ProcessamentoSPED.Create(Self);
          Janela_ProcessamentoSPED.Progresso.Position := 0;
          Janela_ProcessamentoSPED.Progresso.max      := 9;          // Quantidade de registros.
          Janela_ProcessamentoSPED.lProcesso.Caption  := 'Gerando...'+cNomeArquivo.Text;
          Janela_ProcessamentoSPED.Show;

          // BLOC 0: (Abertura, Identificação e Referências).
          Registro0000;
          if not Funcoes.Cancelado then Registro0001;
                      if not Funcoes.Cancelado then Registro0007;
                      if not Funcoes.Cancelado then Registro0020;
                      if not Funcoes.Cancelado then Registro0150;
                      if not Funcoes.Cancelado then Registro0180;
          if not Funcoes.Cancelado then Registro0990;

          // BLOCO I: (Lançamentos Contábeis).
          if not Funcoes.Cancelado then RegistroI001;
                      //RegistroI010;
                                  if not Funcoes.Cancelado then RegistroI012;
                                              //RegistroI015;
                                  //RegistroI020;
                                  if not Funcoes.Cancelado then RegistroI030;
                                  if not Funcoes.Cancelado then RegistroI050;
                                              //RegistroI051;
                                              //RegistroI052;
                                  if not Funcoes.Cancelado then RegistroI075;
                                  if not Funcoes.Cancelado then RegistroI150;
                                              //RegistroI155;
                                  if not Funcoes.Cancelado then RegistroI200;
                                              //RegistroI250;
                                  if not Funcoes.Cancelado then RegistroI350;
                                              //RegistroI355;
          if not Funcoes.Cancelado then RegistroI990;

          // BLOCO J: (Demonstrações Contábeis).
          if not Funcoes.Cancelado then RegistroJ001;
                      if not Funcoes.Cancelado then RegistroJ005;
                                  //RegistroJ100;
                                  //RegistroJ150;
          if not Funcoes.Cancelado then RegistroJ900;
                      if not Funcoes.Cancelado then RegistroJ930;
          if not Funcoes.Cancelado then RegistroJ990;

          // BLOCO K:
          if not Funcoes.Cancelado then RegistroK001;
                      //RegistroK030;
                                  //RegistroK100;
                                              //RegistroK110;
          {
                      RegistroK930;
          }
          if not Funcoes.Cancelado then RegistroK990;

          // BLOCO 9: Encerramento do arquivo.
          if not Funcoes.Cancelado then Registro9001;
                      if not Funcoes.Cancelado then Registro9900;

          CloseFile(Arquivo);

          Janela_ProcessamentoSPED.Close;

          // Altera a "Macro QTDE_TOTAL' pela quantidade de registros do arquivo do registro I030.
          mArq         := TMemo.Create(Utilitarios_ExportaSPED_ECD);
          mArq.Visible := False;
          mArq.Parent  := Utilitarios_ExportaSPED_ECD;
          mArq.Lines.LoadFromFile(mNomeArq);
          mArq.Text := RemoveCaracter('QTDE_TOTAL', Trim(InttoStr(mQtdeBloco0+mQtdeBlocoI+mQtdeBlocoJ+mQtdeBlocoK+mQtdeBloco9)), mArq.Text);
          mArq.Lines.SaveToFile(mNomeArq);

          Screen.Cursor := crDefault;

          If Funcoes.Cancelado then begin
             ShowMessage('Operação cancelada pelo usuário, Arquivo incompleto.');
             Abort;
          End;
          Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
          Impressao_Visualizar.cMemo.Font.Name := 'Courier New';
          Impressao_Visualizar.mArquivo := Copy(mNomeArq, 1, Pos('_0001', mNomeArq));
          Impressao_Visualizar.mNome    := Copy(mNomeArq, 1, Pos('_0001', mNomeArq));
          Impressao_Visualizar.mTitulo  := 'Registro de envio ao SPED CONTABIL';
          Impressao_Visualizar.mPaginas := 1;
          Impressao_Visualizar.mPag     := 1;
          Impressao_Visualizar.ShowModal;
     end;
end;

{* REGISTRO 0000 -  "Abertura do Arquivo digital e identificacao da entidade. * }
procedure TUtilitarios_ExportaSPED_ECD.Registro0000;
Var
    mSituacao: String;
begin
      Janela_ProcessamentoSPED.Progresso.Position := 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 0000: ABERTURA DO ARQUIVO...';
      
      With Dados, dmContab do begin
           If cSituacao.ItemIndex < 5 then mSituacao := InttoStr(cSituacao.ItemIndex);
           mRegistro := '|0000' +                                                                 // 01 - REG.
                        '|LECD' +                                                                 // 02 - LECD.
                        '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +                        // 03 - Data inicial dos dados.
                        '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +                        // 04 - Data final dos dados.
                        '|'+ Trim(EmpresasRazao_Social.Value) +                                   // 05 - Nome empresarial do empresário ou sociedade empresária.
                        '|'+ EmpresasCNPJ.Value +                                                 // 06 - CNPJ da entidade.
                        '|'+ EmpresasEstado.Value +                                               // 07 - Estado da empresa.
                        '|'+ Trim(EmpresasIE.Value) +                                             // 08 - Inscricao estadual.
                        '|'+ PoeZero(7, EmpresasMunicipio_Codigo.AsInteger)+                      // 09 - Codigo do Municipio da tabela do IBGE.
                        '|'+ Trim(EmpresasIM.AsString)+                                           // 10 - Inscricao Municipal.
                        '|'+ mSituacao +                                                          // 11 - Indicador de situação especial (conforme tabela interna ao Sped).
                        '|'+ InttoStr(cSituacaoInicio.ItemIndex) +                                // 12 - Indicador de situação no início do período.
                        '|'+ InttoStr(cNIRE.ItemIndex) +                                          // 13 - Indicador de existência de NIRE:0–não possui NIRE/1–possui NIRE).
                        '|'+ InttoStr(cFinalEscri.ItemIndex) +                                    // 14 - Indicador de finalidade da escrituração:0–Original/1–Substituta com NIRE/2–Substituta sem NIRE/3–Substituta com troca de NIRE.
                        '|'+                                                                      // 15 - Hash da escrituração substituída.
                        '|'+ InttoStr(cAuditoria.ItemIndex) +                                     // 16 - Indicador de entidade sujeita a auditoria independente.
                        '|'+ InttoStr(cECD.ItemIndex) +                                           // 17 - Indicador do tipo de ECD.
                        '|'+                                                                      // 18 - CNPJ da SCP.
                        '|N'+                                                                     // 19 - Identificação da moeda funcional.
                        '|' + Copy(cConsolidada.Items[cConsolidada.ItemIndex], 1, 1) +            // 20 - Escriturações Contábeis Consolidadas.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeReg0000);
           Inc(mQtdeBloco0);
      End;
end;

{* REGISTRO 0001 - ABERTURA DO BLOCO 0. * }
procedure TUtilitarios_ExportaSPED_ECD.Registro0001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 0001: ABERTURA DO BLOCO 0.';

      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|0001' );                                 // 01 - REG.
      Say( mLinha, 005, Arquivo, '|0|' );                                   // 02 - Indicador de movimento.

      Inc(mQtdeReg0001);
      Inc(mQtdeBloco0);

      Progresso2('REGISTRO 0001: ABERTURA DO BLOCO 0', 1);
end;

{* REGISTRO 0007 - OUTRAS INSCRIÇÕES CADASTRAIS DO EMPRESÁRIO OU SOCIEDADE EMPRESÁRIA *}
procedure TUtilitarios_ExportaSPED_ECD.Registro0007;
begin
      // Matriz.
      Progresso2('REGISTRO 0007: OUTRAS INSCRIÇÕES CADASTRAIS.', tEmpresas.RecordCount);
      
      Inc(mLinha);
      mRegistro := '|0007' +                                                // 01 - REG.
                   '|' + Dados.Empresas.FieldByName('Estado').AsString +    // 02 - Código da instituição responsável pela administração do cadastro (conforme tabela interna ao Sped).
                   '|' + Dados.Empresas.FieldByName('IE').AsString +        // 03 - Código cadastral do empresário ou sociedade empresária na instituição identificada no campo 02.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0007);
      Inc(mQtdeBloco0);

      If cEscrituracao.ItemIndex = 0 then begin
         //Filiais.
         tEmpresas.First;
         While (not tEmpresas.Eof) and (not Funcoes.Cancelado) do begin
               Inc(mLinha);
               mRegistro := '|0007' +                                          // 01 - REG.
                            '|' + tEmpresas.FieldByName('Estado').AsString +   // 02 - Código da instituição responsável pela administração do cadastro (conforme tabela interna ao Sped).
                            '|' + tEmpresas.FieldByName('IE').AsString +       // 03 - Código cadastral do empresário ou sociedade empresária na instituição identificada no campo 02.
                            '|';
               Say( mLinha, 000, Arquivo, mRegistro );

               Inc(mQtdeReg0007);
               Inc(mQtdeBloco0);

               tEmpresas.Next;
               Progresso2('REGISTRO 0007: OUTRAS INSCRIÇÕES CADASTRAIS.', 0);
         End;
      End;
end;

{* REGISTRO 0020 - ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA *}
procedure TUtilitarios_ExportaSPED_ECD.Registro0020;
Var
   mMatrizFilial: String;
begin
      Progresso2('REGISTRO 0020: ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA.', tEmpresas.RecordCount);
      mMatrizFilial := '0';

      With Dados do begin
           If cEscrituracao.ItemIndex = 1 then begin
              If EmpresasMatriz_Filial.AsBoolean = true then mMatrizFilial := '1';

              tEmpresas.First;
              While (not tEmpresas.Eof) and (not Funcoes.Cancelado)  do begin
                    Inc(mLinha);
                    mRegistro := '|0020' +                                                                        // 01 - REG.
                                 '|' + mMatrizFilial +                                                            // 02 - Indicador de descentralização: 0-Matriz/ 1-Filial.
                                 '|' + tEmpresas.FieldByName('CNPJ').AsString +                                   // 03 - Número de inscrição do empresário ou sociedade empresária no CNPJ da matriz ou da filial.
                                 '|' + tEmpresas.FieldByName('Estado').AsString +                                 // 04 - Estado.
                                 '|' + tEmpresas.FieldByName('IE').AsString +                                     // 05 - Inscrição estadual da matriz ou da filial.
                                 '|' + PoeZero(7, tEmpresas.FieldByName('Municipio_Codigo').AsInteger) +          // 06 - Código do município do domicílio da matriz ou da filial.
                                 '|' + tEmpresas.FieldByName('IM').AsString +                                     // 07 - Número de Inscrição Municipal da matriz ou da filial.
                                 '|' + tEmpresas.FieldByName('Junta_Codigo').AsString +                           // 08 - Número de Identificação do Registro de Empresas da matriz ou da filial na Junta Comercial.
                                 '|';
                    Say( mLinha, 000, Arquivo, mRegistro );

                    Inc(mQtdeReg0020);
                    Inc(mQtdeBloco0);

                    tEmpresas.Next;

                    Progresso2('REGISTRO 0020: ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA.', 0);
              End;
           End;
      End;
end;

{* REGISTRO 0150 - TABELA DE CADASTRO DO PARTICIPANTE *}
procedure TUtilitarios_ExportaSPED_ECD.Registro0150;
begin
      Progresso2('REGISTRO 0150: CADASTRO DO PARTICIPANTE.', 1);
end;

{* REGISTRO 0180 - IDENTIFICAÇÃO DO RELACIONAMENTO COM O PARTICIPANTE *}
procedure TUtilitarios_ExportaSPED_ECD.Registro0180;
begin
      Progresso2('REGISTRO 0180: IDENTIFICAÇÃO DO RELACIONAMENTO COM O PARTICIPANTE.', 1);
end;

{* REGISTRO 0990 - ENCERRAMENTO DO BLOCO 0 *}
procedure TUtilitarios_ExportaSPED_ECD.Registro0990;
begin
      Janela_ProcessamentoSPED.Progresso.Position := 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 0000: ENCERRAMENTO DO BLOCO 0.';

      Inc(mQtdeReg0990);
      Inc(mQtdeBloco0);

      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|0990' );                              // 01 - REG.
      Say( mLinha, 005, Arquivo, '|'+InttoStr(mQtdeBloco0)+'|' );        // 02 - Quantidade total de linhas do Bloco 0.

end;

{* REGISTRO I001 - ABERTURA DO BLOCO I *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO I001: ABERTURA DO BLOCO I.';

      tContador.SQL.Clear;
      tContador.SQL.Add('SELECT COUNT(*) AS Movimento FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim)');
      tContador.ParamByName('pDataIni').AsDate := mDataIni;
      tContador.ParamByName('pDataFim').AsDate := mDataFim;
      tContador.Open;

      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|I001' );                                 // 01 - REG.
      If tContador.FieldByName('Movimento').AsInteger > 0 then
         Say( mLinha, 005, Arquivo, '|0|' )                                 // 02 - Indicador de movimento.
      else
         Say( mLinha, 005, Arquivo, '|1|' );

      Inc(mQtdeRegI001);
      Inc(mQtdeBlocoI);

      If tContador.FieldByName('Movimento').AsInteger > 0 then RegistroI010;
end;

{* REGISTRO I010 - IDENTIFICAÇÃO DA ESCRITURAÇÃO CONTÁBIL *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI010;
begin
      Progresso2('REGISTRO I010: IDENTIFICAÇÃO DA ESCRITURAÇÃO CONTÁBIL.', 1);

      Inc(mLinha);
      mRegistro := '|I010' +                                  // 01 - REG.
                   '|' + mForma[cForma.ItemIndex] +           // 02 - Indicador da forma de escrituração contábil.
                   '|' + cVersao.Text +                       // 03 - Código da Versão do Leiaute Contábil.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegI010);
      Inc(mQtdeBlocoI);
      Progresso2('REGISTRO I010: IDENTIFICAÇÃO DA ESCRITURAÇÃO CONTÁBIL.', 0);
end;

{* REGISTRO I012 - LIVROS AUXILIARES AO DIÁRIO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI012;
begin
      Progresso3('REGISTRO I012: LIVROS AUXILIARES AO DIÁRIO.', 1);

      If cForma.ItemIndex <> 2 then begin
         Inc(mLinha);
         mRegistro := '|I012' +                                  // 01 - REG.
                      '|' +
                      '|' +
                      '|' +
                      '|';
         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegI012);
         Inc(mQtdeBlocoI);

         RegistroI015;
      End;
      Progresso3('REGISTRO I012: LIVROS AUXILIARES AO DIÁRIO.', 0);
end;

{* REGISTRO I015 - IDENTIFICAÇÃO DAS CONTAS DA ESCRITURAÇÃO RESUMIDA A QUE SE REFERE A ESCRITURAÇÃO AUXILIAR *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI015;
begin
      Progresso4('REGISTRO I015: IDENTIFICAÇÃO DAS CONTAS DA ESCRITURAÇÃO.', 1);

      If cForma.ItemIndex <> 2 then begin
         Inc(mLinha);
         mRegistro := '|I015' +                                  // 01 - REG.
                      '|' +
                      '|';
         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegI015);
         Inc(mQtdeBlocoI);
      End;
      Progresso4('REGISTRO I015: IDENTIFICAÇÃO DAS CONTAS DA ESCRITURAÇÃO.', 0);
end;

{* REGISTRO I020 - CAMPOS ADICIONAIS *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI020;
begin
      Progresso3('REGISTRO I020: CAMPOS ADICIONAIS.', 1);

      Inc(mLinha);
      mRegistro := '|I020' +                                  // 01 - REG.
                   '|' +
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegI020);
      Inc(mQtdeBlocoI);
      Progresso3('REGISTRO I020: CAMPOS ADICIONAIS.', 0);
end;

{* REGISTRO I030 - TERMO DE ABERTURA DO LIVRO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI030;
begin
      Progresso3('REGISTRO I030: TERMO DE ABERTURA DO LIVRO.', 1);

      Inc(mLinha);
      mRegistro := '|I030' +                                                                   // 01 - REG.
                   '|TERMO DE ABERTURA' +                                                      // 02 - Texto fixo contendo "TERMO DE ABERTURA".
                   '|' + Dados.EmpresasDiario_Numero.AsString +                                // 03 - Número do diario.
                   '|Escrituração Contábil Digital do Livro Diário Geral' +                    // 04 - Natureza do livro.
                   '|QTDE_TOTAL'+                                                              // 05 - Quantidade total de linhas do arquivo digital.
                   '|'+ Dados.EmpresasRazao_Social.AsString +                                  // 06 - Nome Empresarial.
                   '|'+ Dados.EmpresasNIRE.AsString +                                          // 07 - Numero de identificação do registro da empresa na junta comercial.
                   '|'+ Dados.EmpresasCNPJ.AsString +                                          // 08 - Numero do CNPJ.
                   '|'+ RemoveCaracter('/', '', Dados.EmpresasNIRE_Data.AsString) +            // 09 - Data do arquivamento dos atos constitutivos.
                   '|'+                                                                        // 10 - Data de conversão de sociedade simples para empresaria.
                   '|'+ Dados.MunicipiosNome.AsString +                                        // 11 - Municipio.
                   '|'+ RemoveCaracter('/', '',Dados.EmpresasUltimo_Encerramento.AsString)+    // 12 - Data de encerramento do exercício social.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegI030);
      Inc(mQtdeBlocoI);
      Progresso3('REGISTRO I030: TERMO DE ABERTURA DO LIVRO.', 0);
end;

{* REGISTRO I050 - PLANO DE CONTAS *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI050;
Var
    mTipoConta, mConta: String;
begin
      With dmContab do begin
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT *');
           PlanoContas.SQL.Add('FROM   PlanoContas');
           PlanoContas.SQL.Add('WHERE  Conta IS NOT NULL');
           PlanoContas.SQL.Add('ORDER  BY Conta');
           //PlanoContas.SQL.SaveToFile('c:\temp\SPED_Contabil_RegistroI050.sql');
           PlanoContas.Open;

           Progresso3('REGISTRO I050: PLANO DE CONTAS.', PlanoContas.RecordCount);
           PlanoContas.First;
           While (not PlanoContas.Eof) and (not Funcoes.Cancelado)  do begin
                 mTipoConta := 'S';
                 if not PlanoContasSintetica.AsBoolean then begin
                    mTipoConta := 'A';
                 end;

                 tTemp.SQL.Clear;
                 tTemp.SQL.Add('SELECT MAX(Conta) AS Conta');
                 tTemp.SQL.Add('FROM   PlanoContas');
                 tTemp.SQL.Add('WHERE  Conta < :pConta AND ISNULL(Sintetica, 0) = 1');
                 tTemp.SQL.Add('AND    LEN(Conta) < LEN(:pConta)');
                 tTemp.ParamByName('pConta').AsString := PlanoContas.FieldByName('Conta').AsString;
                 tTemp.Open;

                 mConta := PlanoContasConta.AsString;
                 if not PlanoContasSintetica.AsBoolean then begin
                    mConta := FinalConta(PlanoContasConta.AsString, Dados.EmpresasMascara_PlanoContas.AsString)+Poezero(7, PlanoContasCodigo.AsInteger);
                 end;
                 mConta := LimpaConta(mConta);

                 Inc(mLinha);
                 mRegistro := '|I050' +                                                                     // 01 - REG.
                              '|' + RemoveCaracter('/', '', DatetoStr(mDataFim)) +                          // 02 - Data Inclusao / Alteracao.
                              '|' + PoeZero(2,PlanoContasOrigem.AsInteger) +                                // 03 - Código da natureza da conta/grupo de contas.
                              '|' + mTipoConta +                                                            // 04 - Tipo de Conta.
                              '|' + PlanoContasNivel.AsString +                                             // 05 - Nivel da conta.
                              '|' + mConta +                                                                // 06 - Codigo da conta analitica.
                              '|' + LimpaConta(Trim(tTemp.FieldByName('Conta').AsString)) +                 // 07 - Codigo da conta sintetica.
                              '|' + Trim(PlanoContasDescricao.AsString) +                                   // 08 - Nome da conta.
                              '|';
                              
                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegI050);
                 Inc(mQtdeBlocoI);

                 If not PlanoContasSintetica.AsBoolean then begin
                    RegistroI051;
                    RegistroI052;
                 end;

                 PlanoContas.Next;
                 Progresso3('REGISTRO I050: PLANO DE CONTAS.', 0);
           End;
      End;
end;

{* REGISTRO I051 - PLANO DE CONTAS REFERENCIAL *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI051;
begin
      Progresso4('REGISTRO I051: PLANO DE CONTAS REFERENCIAL.', 1);
      with dmContab, Dados do begin
           Inc(mLinha);
           mRegistro := '|I051' +                                            // 01 - REG.
                        '|' + Copy(cResp.Items[cResp.ItemIndex], 1, 1)+      // 02 - Código da instituição responsável pela manutenção do plano de contas referencial.
                        '|' +                                                // 03 - Código do Centro de Custo.
                        '|' + LimpaContaECF(PlanoContasConta_ECF.AsString) + // 04 - Contas referencial.
                        '|';

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegI051);
           Inc(mQtdeBlocoI);
           Progresso4('REGISTRO I051: PLANO DE CONTAS REFERENCIAL.', 0);
      end;
end;

{* REGISTRO I052 - INDICAÇÃO DOS CÓDIGOS DE AGLUTINAÇÃO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI052;
begin
      Progresso4('REGISTRO I052: INDICAÇÃO DOS CÓDIGOS DE AGLUTINAÇÃO.', 1);
      with dmContab do begin
           Inc(mLinha);
           mRegistro := '|I052' +                                        // 01 - REG.
                        '|' +                                            // 02 - Centro Custo.
                        '|' + Trim(PlanoContasCodigo.AsString) +         // 03 - Código de aglutinação.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegI052);
           Inc(mQtdeBlocoI);
      end;
      Progresso4('REGISTRO I052: INDICAÇÃO DOS CÓDIGOS DE AGLUTINAÇÃO.', 0);
end;

{* REGISTRO I075 - HISTÓRICO PADRÃO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI075;
begin
      Progresso3('REGISTRO I075: HISTÓRICO PADRÃO.', tHistoricos.RecordCount);

      With dmContab do begin
           tHistoricos.First;
           While (not tHistoricos.Eof) and (not Funcoes.Cancelado)  do begin
                 Inc(mLinha);
                 mRegistro := '|I075' +                                                      // 01 - REG.
                              '|' + Trim(tHistoricos.FieldByName('Codigo').AsString) +       // 02 - Código do histórico.
                              '|' + Trim(tHistoricos.FieldByName('Descricao').AsString) +    // 03 - Descrição do histórico.
                              '|';
                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegI075);
                 Inc(mQtdeBlocoI);
                 
                 tHistoricos.Next;
                 Progresso3('REGISTRO I075: HISTÓRICO PADRÃO.', 0);
           End;
      End;
end;

{* REGISTRO I150 - SALDOS PERIÓDICOS – IDENTIFICAÇÃO DO PERÍODO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI150;
Var
   i,tri: Integer;
   mDtIni: TDate;
   mDtFim: TDate;
begin
       Progresso3('REGISTRO I150: IDENTIFICAÇÃO DO PERÍODO (SALDOS).', cMesFim.ItemIndex+1);
       {
       if Dados.EmpresasEncerramento_Contabil.AsInteger = 0 then begin
          tri := 1;
          for i := 1 to 4 do begin
              mDtIni := StrtoDate('01/'+PoeZero(2,tri)+'/'+PoeZero(4, cAnoIni.AsInteger));
              inc(tri,2);
              mDtFim := UltimoDiaMes(StrtoDate('01/'+PoeZero(2,tri)+'/'+PoeZero(4, cAnoIni.AsInteger)));
              Inc(tri);

              Inc(mLinha);
              mRegistro := '|I150' +                                                    // 01 - REG.
                           '|' + RemoveCaracter('/', '', DatetoStr(mDtIni)) +           // 02 - Data de início do período.
                           '|' + RemoveCaracter('/', '', DatetoStr(mDtFim)) +           // 02 - Data de fim do período.
                           '|';
              Say( mLinha, 000, Arquivo, mRegistro );

              Inc(mQtdeRegI150);
              Inc(mQtdeBlocoI);

              RegistroI155(mDtini, mDtFim);
              Progresso3('REGISTRO I150: IDENTIFICAÇÃO DO PERÍODO (SALDOS).', 0);
          end;
       end else begin
          for i := cMesIni.ItemIndex+1 to cMesFim.ItemIndex+1 do begin
              mDtIni := StrtoDate('01/'+PoeZero(2,i)+'/'+PoeZero(4, cAnoIni.AsInteger));
              mDtFim := UltimoDiaMes(mDtIni);
              Inc(mLinha);
              mRegistro := '|I150' +                                                    // 01 - REG.
                           '|' + RemoveCaracter('/', '', DatetoStr(mDtIni)) +           // 02 - Data de início do período.
                           '|' + RemoveCaracter('/', '', DatetoStr(mDtFim)) +           // 02 - Data de fim do período.
                           '|';
              Say( mLinha, 000, Arquivo, mRegistro );

              Inc(mQtdeRegI150);
              Inc(mQtdeBlocoI);

              RegistroI155(mDtini, mDtFim);
              Progresso3('REGISTRO I150: IDENTIFICAÇÃO DO PERÍODO (SALDOS).', 0);
          end;
       end;
       }
       for i := cMesIni.ItemIndex+1 to cMesFim.ItemIndex+1 do begin
           mDtIni := StrtoDate('01/'+PoeZero(2,i)+'/'+PoeZero(4, cAnoIni.AsInteger));
           mDtFim := UltimoDiaMes(mDtIni);
           Inc(mLinha);
           mRegistro := '|I150' +                                                    // 01 - REG.
                        '|' + RemoveCaracter('/', '', DatetoStr(mDtIni)) +           // 02 - Data de início do período.
                        '|' + RemoveCaracter('/', '', DatetoStr(mDtFim)) +           // 02 - Data de fim do período.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegI150);
           Inc(mQtdeBlocoI);

           RegistroI155(mDtini, mDtFim);
           Progresso3('REGISTRO I150: IDENTIFICAÇÃO DO PERÍODO (SALDOS).', 0);
       end;
end;

{* REGISTRO I155 - DETALHE DOS SALDOS PERIÓDICOS *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI155(pDtIni, pDtFim: TDate);
var
  mConta: string;
begin
       tSaldo.SQL.Clear;
       tSaldo.SQL.Add('--( PLANO NORMAL )--');
       tSaldo.SQL.Add('SELECT PC.Conta');
       tSaldo.SQL.Add('      ,PC.Codigo');
       tSaldo.SQL.Add('      ,PC.Descricao');
       tSaldo.SQL.Add('      ,PC.Sintetica');
       tSaldo.SQL.Add('      ,PC.Saldo_Anterior');
       tSaldo.SQL.Add('      ,PC.Tipo_Terceiros');
       tSaldo.SQL.Add('      ,PC.Codigo_Terceiros');
       tSaldo.SQL.Add('      ,PC.Natureza');

       if cEscrituracao.Itemindex = 0 then begin
          tSaldo.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           ELSE');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           END');
          tSaldo.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
          tSaldo.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
       end else begin
          tSaldo.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           ELSE');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)Valor) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           END');
          tSaldo.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
          tSaldo.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
          tSaldo.ParamByName('pEmpresa').AsInteger := Dados.EmpresasCodigo.AsInteger;
       end;
       
       tSaldo.SQL.Add('      ,Saldo_Atual       = CAST(0 AS money)');
       tSaldo.SQL.Add('      ,DC_Anterior       = '' '' ');
       tSaldo.SQL.Add('      ,DC_Atual          = '' '' ');
       tSaldo.SQL.Add('INTO   #PlanoTmp');
       tSaldo.SQL.Add('FROM   PlanoContas PC');
       tSaldo.SQL.Add('WHERE  Conta IS NOT NULL');
       tSaldo.SQL.Add('-- TOTALIZANDO CONTAS TITULO');
       tSaldo.SQL.Add('UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debito)            FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
       tSaldo.SQL.Add('                    ,Credito           = ISNULL((SELECT SUM(Credito)           FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
       tSaldo.SQL.Add('                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atualiza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
       tSaldo.SQL.Add('WHERE(#PlanoTmp.Sintetica = 1)');
       tSaldo.SQL.Add('--( APURANDO SALDO ATUAL )--');
       tSaldo.SQL.Add('UPDATE #PlanoTmp SET Saldo_Atual = CASE WHEN #PlanoTmp.Natureza = ''C'' THEN');
       tSaldo.SQL.Add('                                        CAST((Atualiza_Anterior - Debito + Credito) AS DECIMAL(14,2))');
       tSaldo.SQL.Add('                                   ELSE');
       tSaldo.SQL.Add('                                        CAST((Atualiza_Anterior + Debito - Credito) AS DECIMAL(14,2))');
       tSaldo.SQL.Add('                                   END');
       tSaldo.SQL.Add('--( AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" )--');
       tSaldo.SQL.Add('UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Natureza = ''D'' THEN');
       tSaldo.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''D'' ELSE ''C'' END');
       tSaldo.SQL.Add('                                   ELSE');
       tSaldo.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''C'' ELSE ''D'' END');
       tSaldo.SQL.Add('                                   END');
       tSaldo.SQL.Add('                    ,DC_Atual    = CASE WHEN Natureza = ''D'' THEN');
       tSaldo.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''D'' ELSE ''C'' END');
       tSaldo.SQL.Add('                                   ELSE');
       tSaldo.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''C'' ELSE ''D'' END');
       tSaldo.SQL.Add('                                   END');
       tSaldo.SQL.Add('SELECT Conta');
       tSaldo.SQL.Add('      ,Codigo');
       tSaldo.SQL.Add('      ,Descricao');
       tSaldo.SQL.Add('      ,Sintetica');
       tSaldo.SQL.Add('      ,Tipo_Terceiros');
       tSaldo.SQL.Add('      ,Natureza');
       tSaldo.SQL.Add('      ,Saldo_Anterior = CAST(CASE WHEN Atualiza_Anterior >= 0 THEN Atualiza_Anterior ELSE Atualiza_Anterior *-1 END AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,DC_Anterior');
       tSaldo.SQL.Add('      ,Debito         = CAST(Debito  AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,Credito        = CAST(Credito AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,Saldo_Atual    = CAST(CASE WHEN Saldo_Atual >= 0 THEN Saldo_Atual ELSE Saldo_Atual *-1 END AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,Grupo = SUBSTRING(Conta,1,1)');
       tSaldo.SQL.Add('      ,DC_Atual');
       tSaldo.SQL.Add('FROM   #PlanoTmp');
       tSaldo.SQL.Add('WHERE  Conta IS NOT NULL');
       tSaldo.SQL.Add('AND    ISNULL(Sintetica, 0) = 0');
       tSaldo.SQL.Add('AND    (Atualiza_Anterior <> 0 OR Saldo_Atual <> 0 OR Debito <> 0 OR Credito <> 0)');
       //tSaldo.SQL.Add('AND    SUBSTRING(Conta,1,1) NOT IN(''5'', ''6'')');
       tSaldo.SQL.Add('ORDER  BY Conta, Sintetica desc');
       tSaldo.SQL.Add('DROP TABLE #PlanoTmp');
       tSaldo.ParamByName('pDataIni').AsDate := pDtIni;
       tSaldo.ParamByName('pDataFim').AsDate := pDtFim;
       //tSaldo.SQL.SaveToFile('c:\Temp\SPED_Contabil_RegistroI155.sql');
       tSaldo.Open;

       Progresso4('REGISTRO I155: DETALHE DOS SALDOS PERIÓDICOS.', tSaldo.RecordCount);

       tSaldo.First;
       while (not tSaldo.Eof) and (not Funcoes.Cancelado)  do begin
             Inc(mLinha);

             mConta := FinalConta(tSaldo.FieldByName('Conta').AsString, Dados.EmpresasMascara_PlanoContas.AsString)+Poezero(7, tSaldo.FieldByName('Codigo').AsInteger);

             mRegistro := '|I155' +                                                                            // 01 - REG.
                          '|' + LimpaConta(mConta) +                                                           // 02 - Código da conta analítica.
                          '|' +                                                                                // 03 - Código do centro de custos.
                          '|' + FormatFloat('##0.00', tSaldo.FieldByName('Saldo_Anterior').AsCurrency) +       // 04 - Valor do saldo inicial do período.
                          '|' + tSaldo.FieldByName('DC_Anterior').AsString +                                   // 05 - Indicador da situação do saldo inicial.
                          '|' + FormatFloat('##0.00', tSaldo.FieldByName('Debito').AsCurrency) +               // 06 - Valor total dos débitos no período.
                          '|' + FormatFloat('##0.00', tSaldo.FieldByName('Credito').AsCurrency) +              // 07 - Valor total dos créditos no período.
                          '|' + FormatFloat('##0.00', tSaldo.FieldByName('Saldo_Atual').AsCurrency) +          // 08 - Valor do saldo final do período.
                          '|' + tSaldo.FieldByName('DC_Atual').AsString +                                      // 09 - Indicador da situação do saldo final.
                          '|';

             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegI155);
             Inc(mQtdeBlocoI);
             tSaldo.Next;
             Progresso4('REGISTRO I155: DETALHE DOS SALDOS PERIÓDICOS.', 0);
       end;
end;

{* REGISTRO I200 - LANÇAMENTO CONTÁBIL *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI200;
Var
   mLote : Integer;
   mConta: string;
begin
       tLancamentos.SQL.Clear;
       tLancamentos.SQL.Add('SELECT Numero');
       tLancamentos.SQL.Add('	   ,Data');
       tLancamentos.SQL.Add('      ,Valor');
       tLancamentos.SQL.Add('      ,Tipo = CASE WHEN Tipo_Documento <> ''LE'' THEN ''N'' ELSE ''E'' END');
       tLancamentos.SQL.Add('      ,Lote');
       tLancamentos.SQL.Add('      ,Historico_Cod = CASE WHEN ISNULL(Historico_Codigo, 0) = 0 THEN '''' ELSE CAST(Historico_Codigo AS VARCHAR(5)) END');
       tLancamentos.SQL.Add('      ,Historico_Complemento');
       tLancamentos.SQL.Add('      ,Conta =  (SELECT Conta FROM PlanoContas WHERE(Codigo = Conta_Debito))');
       tLancamentos.SQL.Add('      ,Codigo = Conta_Debito');
       tLancamentos.SQL.Add('      ,Natureza =  ''D'' ');
       tLancamentos.SQL.Add('FROM   Lancamentos');
       tLancamentos.SQL.Add('WHERE  Data BETWEEN :pDataIni AND :pDataFim');
       tLancamentos.SQL.Add('AND    ISNULL(Conta_Debito, '''') <> '''' ');
       tLancamentos.SQL.Add('AND    Lote IS NOT NULL');
       tLancamentos.SQL.Add('UNION ALL');
       tLancamentos.SQL.Add('SELECT Numero');
       tLancamentos.SQL.Add('	   ,Data');
       tLancamentos.SQL.Add('      ,Valor');
       tLancamentos.SQL.Add('      ,Tipo = CASE WHEN Tipo_Documento <> ''LE'' THEN ''N'' ELSE ''E'' END');
       tLancamentos.SQL.Add('	   ,Lote');
       tLancamentos.SQL.Add('      ,Historico_Cod = CASE WHEN ISNULL(Historico_Codigo, 0) = 0 THEN '''' ELSE CAST(Historico_Codigo AS VARCHAR(5)) END');
       tLancamentos.SQL.Add('      ,Historico_Complemento');
       tLancamentos.SQL.Add('      ,Conta =  (SELECT Conta FROM PlanoContas WHERE(Codigo = Conta_Credito))');
       tLancamentos.SQL.Add('      ,Codigo = Conta_Credito');
       tLancamentos.SQL.Add('      ,Natureza =  ''C'' ');
       tLancamentos.SQL.Add('FROM   Lancamentos');
       tLancamentos.SQL.Add('WHERE Data BETWEEN :pDataIni AND :pDataFim');
       tLancamentos.SQL.Add('AND   ISNULL(Conta_Credito, '''') <> '''' ');
       tLancamentos.SQL.Add('AND   Lote IS NOT NULL');
       tLancamentos.SQL.Add('ORDER BY Data, Lote, Numero');
       tLancamentos.ParamByName('pDataIni').AsDate := mDataIni;
       tLancamentos.ParamByName('pDataFim').AsDate := mDataFim;
       //tLancamentos.SQL.SaveToFile('c:\temp\SPED_Contabil_RegistroI200.sql');
       tLancamentos.Open;

       Progresso3('REGISTRO I200: LANÇAMENTO CONTÁBIL.', tLancamentos.RecordCount);

       tLancamentos.First;
       while (not tLancamentos.Eof) and (not Funcoes.Cancelado)  do begin
             Inc(mLinha);

             mRegistro := '|I200' +                                                                                  // 01 - REG.
                          '|' + tlancamentos.FieldByName('Numero').AsString +                                        // 02 - Número do Lançamento.
                          '|' + RemoveCaracter('/', '', DatetoStr(tlancamentos.FieldByName('Data').AsDateTime)) +    // 03 - Data do lançamentos.
                          '|' + FormatFloat('##0.00', tlancamentos.FieldByName('Valor').AsCurrency) +                // 04 - Valor do lançamento.
                          '|' + tlancamentos.FieldByName('Tipo').AsString +                                          // 05 - Indicador do tipo de lançamento. (N-Lançamento normal /E-Lançamento de encerramento de contas de resultado.
                          '|';
             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegI200);
             Inc(mQtdeBlocoI);

             mLote := tLancamentos.FieldByName('Lote').AsInteger;

             while (tLancamentos.FieldByName('Lote').AsInteger = mLote) and (not tLancamentos.Eof) do begin
                   mConta := FinalConta(tLancamentos.FieldByName('Conta').AsString, Dados.EmpresasMascara_PlanoContas.AsString)+Poezero(7, tLancamentos.FieldByName('Codigo').AsInteger);

                   Inc(mLinha);
                   mRegistro := '|I250' +                                                                            // 01 - REG.
                                '|' + LimpaConta(mConta) +                                                           // 02 - Código da conta analítica debitada/creditada.
                                '|' +                                                                                // 03 - Código do centro de custo.
                                '|' + FormatFloat('##0.00', tLancamentos.FieldByName('Valor').AsCurrency) +          // 04 - Valor da Partida.
                                '|' + tLancamentos.FieldByName('Natureza').AsString +                                // 05 - Indicador de natureza.
                                '|' +                                                                                // 06 - Número, código ou caminho de localização dos documentos arquivados.
                                '|' + tLancamentos.FieldByName('Historico_Cod').AsString +                           // 07 - Código do histórico padrão, conforme tabela I075.
                                '|' + tLancamentos.FieldByName('Historico_Complemento').AsString +                   // 08 - Histórico completo da partida ou histórico complementar.
                                '|' +                                                                                // 09 - Código de identificação do participante na partida.
                                '|';
                   Say( mLinha, 000, Arquivo, mRegistro );

                   Inc(mQtdeRegI250);
                   Inc(mQtdeBlocoI);
                   tLancamentos.Next;
                   Progresso4('REGISTRO I250: PARTIDAS DOS LANÇAMENTOS.', 0);
             end;

             Progresso3('REGISTRO I200: LANÇAMENTO CONTÁBIL.', 0);
       end;
end;

{* REGISTRO I350: SALDOS DAS CONTAS DE RESULTADO ANTES DO ENCERRAMENTO – IDENTIFICAÇÃO DA DATA *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI350;
Var
   i,mTri: Integer;
   mDtIni: TDate;
   mDtFim: TDate;
begin
      mdtIni := null;
      mdtFim := null;
      Progresso3('REGISTRO I350: SALDO DAS CONTAS DE RESULTADO ANTES DO ENCERRAMENTO – IDENTIFICAÇÃO DA DATA.', cMesFim.ItemIndex+1);

      mTri := 1;
      if Dados.EmpresasEncerramento_Contabil.AsInteger = 0 then mTri := 4;

      for i := 1 to mTri do begin
          if mTri = 1 then begin
             mDtIni := StrtoDate('01/'+InttoStr(cMesIni.ItemIndex+1)+'/'+InttoStr(cAnoIni.AsInteger));
             mDtFim := UltimoDiaMes(mDtIni);
          end else begin
             if i = 1 then begin
                mDtIni   := StrtoDate('01/01/'+cAnoIni.Text);
                mDtFim   := UltimoDiaMes(StrtoDate('01/03/'+cAnoIni.Text));
             end;
             if i = 2 then begin
                mDtIni   := StrtoDate('01/04/'+cAnoIni.Text);
                mDtFim   := UltimoDiaMes(StrtoDate('01/06/'+cAnoIni.Text));
             end;
             if i = 3 then begin
                mDtIni   := StrtoDate('01/07/'+cAnoIni.Text);
                mDtFim   := UltimoDiaMes(StrtoDate('01/09/'+cAnoIni.Text));
             end;
             if i = 4 then begin
                mDtIni   := StrtoDate('01/10/'+cAnoIni.Text);
                mDtFim   := UltimoDiaMes(StrtoDate('01/12/'+cAnoIni.Text));
             end;
          end;

          Inc(mLinha);
          mRegistro := '|I350' +                                            // 01 - REG.
                       '|' + RemoveCaracter('/', '', DatetoStr(mDtFim)) +   // 02 - Data de início do período.
                       '|';
          Say( mLinha, 000, Arquivo, mRegistro );

          Inc(mQtdeRegI350);
          Inc(mQtdeBlocoI);

          RegistroI355(mDtini, mDtFim);
      end;

      {
      mDtIni := StrtoDate('01/'+InttoStr(cMesIni.ItemIndex+1)+'/'+InttoStr(cAnoIni.AsInteger));
      mDtFim := UltimoDiaMes(mDtIni);

      Inc(mLinha);
      mRegistro := '|I350' +                                            // 01 - REG.
                   '|' + RemoveCaracter('/', '', DatetoStr(mDtFim)) +   // 02 - Data de início do período.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegI350);
      Inc(mQtdeBlocoI);

      RegistroI355(mDtini, mDtFim);
      }
      Progresso3('REGISTRO I350: SALDOS DAS CONTAS DE RESULTADO ANTES DO ENCERRAMENTO – IDENTIFICAÇÃO DA DATA.', 0);
end;

{* REGISTRO I355: DETALHES DOS SALDOS DAS CONTAS DE RESULTADO ANTES DO ENCERRAMENTO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI355(pDtIni, pDtFim: TDate);
var
  mConta: string;
begin
       tSaldo.SQL.Clear;
       tSaldo.SQL.Add('--( PLANO NORMAL )--');
       tSaldo.SQL.Add('SELECT PC.Conta');
       tSaldo.SQL.Add('      ,PC.Codigo');
       tSaldo.SQL.Add('      ,PC.Descricao');
       tSaldo.SQL.Add('      ,PC.Sintetica');
       tSaldo.SQL.Add('      ,PC.Saldo_Anterior');
       tSaldo.SQL.Add('      ,PC.Tipo_Terceiros');
       tSaldo.SQL.Add('      ,PC.Codigo_Terceiros');
       tSaldo.SQL.Add('      ,PC.Natureza');

       if cEscrituracao.Itemindex = 0 then begin
          tSaldo.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           ELSE');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           END');
          tSaldo.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
          tSaldo.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
       end else begin
          tSaldo.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           ELSE');
          tSaldo.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
          tSaldo.SQL.Add('                                ISNULL((SELECT SUM(ROUND(Valor, 2)Valor) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('                           END');
          tSaldo.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
          tSaldo.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
          tSaldo.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(ROUND(Valor, 2)) FROM Lancamentos LAN WHERE LAN.Empresa = :pEmpresa AND PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
          tSaldo.ParamByName('pEmpresa').AsInteger := Dados.EmpresasCodigo.AsInteger;
       end;
       
       tSaldo.SQL.Add('      ,Saldo_Atual       = CAST(0 AS money)');
       tSaldo.SQL.Add('      ,DC_Anterior       = '' '' ');
       tSaldo.SQL.Add('      ,DC_Atual          = '' '' ');
       tSaldo.SQL.Add('INTO   #PlanoTmp');
       tSaldo.SQL.Add('FROM   PlanoContas PC');
       tSaldo.SQL.Add('WHERE  Conta IS NOT NULL');
       tSaldo.SQL.Add('-- TOTALIZANDO CONTAS TITULO');
       tSaldo.SQL.Add('UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debito)            FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
       tSaldo.SQL.Add('                    ,Credito           = ISNULL((SELECT SUM(Credito)           FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
       tSaldo.SQL.Add('                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atualiza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
       tSaldo.SQL.Add('WHERE(#PlanoTmp.Sintetica = 1)');
       tSaldo.SQL.Add('--( APURANDO SALDO ATUAL )--');
       tSaldo.SQL.Add('UPDATE #PlanoTmp SET Saldo_Atual = CASE WHEN #PlanoTmp.Natureza = ''C'' THEN');
       tSaldo.SQL.Add('                                        CAST((Atualiza_Anterior - Debito + Credito) AS DECIMAL(14,2))');
       tSaldo.SQL.Add('                                   ELSE');
       tSaldo.SQL.Add('                                        CAST((Atualiza_Anterior + Debito - Credito) AS DECIMAL(14,2))');
       tSaldo.SQL.Add('                                   END');
       tSaldo.SQL.Add('--( AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" )--');
       tSaldo.SQL.Add('UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Natureza = ''D'' THEN');
       tSaldo.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''D'' ELSE ''C'' END');
       tSaldo.SQL.Add('                                   ELSE');
       tSaldo.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''C'' ELSE ''D'' END');
       tSaldo.SQL.Add('                                   END');
       tSaldo.SQL.Add('                    ,DC_Atual    = CASE WHEN Natureza = ''D'' THEN');
       tSaldo.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''D'' ELSE ''C'' END');
       tSaldo.SQL.Add('                                   ELSE');
       tSaldo.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''C'' ELSE ''D'' END');
       tSaldo.SQL.Add('                                   END');
       tSaldo.SQL.Add('SELECT Conta');
       tSaldo.SQL.Add('      ,Codigo');
       tSaldo.SQL.Add('      ,Descricao');
       tSaldo.SQL.Add('      ,Sintetica');
       tSaldo.SQL.Add('      ,Tipo_Terceiros');
       tSaldo.SQL.Add('      ,Natureza');
       tSaldo.SQL.Add('      ,Saldo_Anterior = CAST(CASE WHEN Atualiza_Anterior >= 0 THEN Atualiza_Anterior ELSE Atualiza_Anterior *-1 END AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,DC_Anterior');
       tSaldo.SQL.Add('      ,Debito         = CAST(Debito  AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,Credito        = CAST(Credito AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,Saldo_Atual    = CAST(CASE WHEN Saldo_Atual >= 0 THEN Saldo_Atual ELSE Saldo_Atual *-1 END AS DECIMAL(14,2))');
       tSaldo.SQL.Add('      ,Grupo = SUBSTRING(Conta,1,1)');
       tSaldo.SQL.Add('      ,DC_Atual');
       tSaldo.SQL.Add('FROM   #PlanoTmp');
       tSaldo.SQL.Add('WHERE  SUBSTRING(Conta, 1, 1) IN(''4'', ''5'', ''6'')');
       tSaldo.SQL.Add('AND    ISNULL(Sintetica, 0) = 0');
       //tSaldo.SQL.Add('AND    (Atualiza_Anterior <> 0 OR Saldo_Atual <> 0 OR Debito <> 0 OR Credito <> 0)');
       tSaldo.SQL.Add('ORDER  BY Conta, Sintetica desc');
       tSaldo.SQL.Add('DROP TABLE #PlanoTmp');
       tSaldo.ParamByName('pDataIni').AsDate := pDtIni;
       tSaldo.ParamByName('pDataFim').AsDate := pDtFim;
       //tSaldo.SQL.SaveToFile('c:\Temp\SPED_Contabil_RegistroI355.sql');
       tSaldo.Open;

       Progresso4('REGISTRO I355: DETALHES DOS SALDOS DAS CONTAS DE RESULTADO ANTES DO ENCERRAMENTO.', tSaldo.RecordCount);

       tSaldo.First;
       while (not tSaldo.Eof) and (not Funcoes.Cancelado)  do begin
             Inc(mLinha);

             mConta := FinalConta(tSaldo.FieldByName('Conta').AsString, Dados.EmpresasMascara_PlanoContas.AsString)+Poezero(7, tSaldo.FieldByName('Codigo').AsInteger);

             mRegistro := '|I355' +                                                                            // 01 - REG.
                          '|' + LimpaConta(mConta) +                                                           // 02 - Código da conta analítica.
                          '|' +                                                                                // 03 - Código do centro de custos.
                          '|' + FormatFloat('##0.00', tSaldo.FieldByName('Saldo_Atual').AsCurrency) +          // 04 - Valor do saldo final antes do lançamento de encerramento.
                          '|' + tSaldo.FieldByName('DC_Atual').AsString +                                      // 05 - Indicador da situação do saldo inicial.
                          '|';

             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegI355);
             Inc(mQtdeBlocoI);
             tSaldo.Next;
             Progresso4('REGISTRO I355: DETALHES DOS SALDOS DAS CONTAS DE RESULTADO ANTES DO ENCERRAMENTO.', 0);
       end;
end;

{* REGISTRO I990 - ENCERRAMENTO DO BLOCO I *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroI990;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO I990: ENCERRAMENTO DO BLOCO I.';

      Inc(mLinha);
      Inc(mQtdeRegI990);
      Inc(mQtdeBlocoI);

      Say( mLinha, 000, Arquivo, '|I990' );                              // 01 - REG.
      Say( mLinha, 005, Arquivo, '|'+InttoStr(mQtdeBlocoI)+'|' );        // 02 - Quantidade total de linhas do Bloco I.
end;

{REGISTRO J001: ABERTURA DO BLOCO J.}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO J001: ABERTURA DO BLOCO J..';
      Inc(mLinha);
      mRegistro := '|J001';                   // 01 - REG.
      mRegistro := mRegistro + '|0|';         // 02 - Indicador de movimento (0-Com dados / 1-Sem dados).

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegJ001);
      Inc(mQtdeBlocoJ);
end;

{* REGISTRO J005: DEMONSTRAÇÕES CONTÁBEIS *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ005;
var
   i, mPeriodos: integer;
   mDtIni, mDtFim: TDate;
begin
      mPeriodos := 1;
      mDTIni    := null;
      mDtFim    := null;
      if Dados.EmpresasEncerramento_Contabil.AsInteger = 0 then mPeriodos := 4;

      Progresso2('REGISTRO J005: DEMONSTRAÇÕES CONTÁBEIS.', mPeriodos);

      for i := 1 to mPeriodos do begin
          if Dados.EmpresasEncerramento_Contabil.AsInteger = 0 then begin
             // Encerramento Trimestral.
             if i = 1 then begin
                mDtIni := StrtoDate('01/01/'+cAnoIni.Text);
                mDtFim := UltimoDiaMes(StrtoDate('01/03/'+cAnoIni.Text));
             end;
             if i = 2 then begin
                mDtIni := StrtoDate('01/04/'+cAnoIni.Text);
                mDtFim := UltimoDiaMes(StrtoDate('01/06/'+cAnoIni.Text));
             end;
             if i = 3 then begin
                mDtIni := StrtoDate('01/07/'+cAnoIni.Text);
                mDtFim := UltimoDiaMes(StrtoDate('01/09/'+cAnoIni.Text));
             end;
             if i = 4 then begin
                mDtIni := StrtoDate('01/10/'+cAnoIni.Text);
                mDtFim := UltimoDiaMes(StrtoDate('01/12/'+cAnoIni.Text));
             end;
          end;

          Inc(mLinha);
          mRegistro := '|J005' +                                                                // 01 - REG.
                       '|'+ RemoveCaracter('/','', DatetoStr(mDtIni)) +                         // 03 - Data inicial das demonstrações contábeis.
                       '|'+ RemoveCaracter('/','', DatetoStr(mDtFim)) +                         // 04 - Data final das demonstrações contábeis.
                       '|1' +                                                                   // 04 - Identificação das demonstrações:1–pessoa jurídica a que se refere a escrituração./2–consolidadas ou de outras pessoas jurídicas.
                       '|' +                                                                    // 05 - Nome Empresarial.
                       '|';
          Say( mLinha, 000, Arquivo, mRegistro );

          Inc(mQtdeRegJ005);
          Inc(mQtdeBlocoJ);

          RegistroJ100(mDtIni, mDtFim);
          RegistroJ150(mDtIni, mDtFim);

          Progresso2('REGISTRO J005: DEMONSTRAÇÕES CONTÁBEIS.', 0);
      end;
end;

{* REGISTRO J100 - BALANÇO PATRIMONIAL*}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ100(pDataIni, pDataFim: TDate);
begin
      tBalanco.SQL.Clear;
      tBalanco.SQL.Add('-- PLANO NORMAL');
      tBalanco.SQL.Add('SELECT PC.Conta');
      tBalanco.SQL.Add('      ,PC.Codigo');
      tBalanco.SQL.Add('      ,PC.Nivel');
      tBalanco.SQL.Add('      ,PC.Descricao');
      tBalanco.SQL.Add('      ,PC.Sintetica');
      tBalanco.SQL.Add('      ,PC.Saldo_Anterior');
      tBalanco.SQL.Add('      ,PC.Tipo_Terceiros');
      tBalanco.SQL.Add('      ,PC.Codigo_Terceiros');
      tBalanco.SQL.Add('      ,PC.Natureza');
      tBalanco.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
      tBalanco.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
      tBalanco.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
      tBalanco.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tBalanco.SQL.Add('                           ELSE');
      tBalanco.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
      tBalanco.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
      tBalanco.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tBalanco.SQL.Add('                           END');
      tBalanco.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tBalanco.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tBalanco.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim), 0)');
      tBalanco.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFIm), 0)');
      tBalanco.SQL.Add('      ,Saldo_Atual       = CAST(0 AS money)');
      tBalanco.SQL.Add('      ,DC_Anterior       = '' '' ');
      tBalanco.SQL.Add('      ,DC_Atual          = '' '' ');
      tBalanco.SQL.Add('INTO   #PlanoTmp');
      tBalanco.SQL.Add('FROM   PlanoContas PC');
      tBalanco.SQL.Add('WHERE  Conta IS NOT NULL');
      tBalanco.SQL.Add('-- TOTALIZANDO CONTAS TITULO');
      tBalanco.SQL.Add('UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debito           ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
      tBalanco.SQL.Add('                    ,Credito           = ISNULL((SELECT SUM(Credito          ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
      tBalanco.SQL.Add('                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atualiza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
      tBalanco.SQL.Add('WHERE(#PlanoTmp.Sintetica = 1)');
      tBalanco.SQL.Add('-- APURANDO SALDO ATUAL --');
      tBalanco.SQL.Add('UPDATE #PlanoTmp SET Saldo_Atual = CASE WHEN #PlanoTmp.Natureza = ''C'' THEN');
      tBalanco.SQL.Add('                                        CAST((Atualiza_Anterior - Debito + Credito) AS DECIMAL(14,2))');
      tBalanco.SQL.Add('                                   ELSE');
      tBalanco.SQL.Add('                                        CAST((Atualiza_Anterior + Debito - Credito) AS DECIMAL(14,2))');
      tBalanco.SQL.Add('                                   END');
      tBalanco.SQL.Add('-- AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" --');
      tBalanco.SQL.Add('UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Natureza = ''D'' THEN');
      tBalanco.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''D'' ELSE ''C'' END');
      tBalanco.SQL.Add('                                   ELSE');
      tBalanco.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''C'' ELSE ''D'' END');
      tBalanco.SQL.Add('                                   END');
      tBalanco.SQL.Add('                    ,DC_Atual    = CASE WHEN Natureza = ''D'' THEN');
      tBalanco.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''D'' ELSE ''C'' END');
      tBalanco.SQL.Add('                                   ELSE');
      tBalanco.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''C'' ELSE ''D'' END');
      tBalanco.SQL.Add('                                   END');
      tBalanco.SQL.Add('SELECT Conta');
      tBalanco.SQL.Add('      ,Codigo');
      tBalanco.SQL.Add('      ,Nivel');
      tBalanco.SQL.Add('      ,Grupo_Balanco  = CASE WHEN SUBSTRING(Conta,1,1) = ''1'' then ''1'' ELSE ''2'' END');
      tBalanco.SQL.Add('      ,Descricao');
      tBalanco.SQL.Add('      ,Saldo_Anterior = CASE WHEN Atualiza_Anterior >= 0 THEN Atualiza_Anterior ELSE Atualiza_Anterior *-1 END');
      tBalanco.SQL.Add('      ,DC_Anterior');
      tBalanco.SQL.Add('      ,Debito         = CASE WHEN Debito  >= 0 THEN Debito  ELSE Debito  *-1 END');
      tBalanco.SQL.Add('      ,Credito        = CASE WHEN Credito >= 0 THEN Credito ELSE Credito *-1 END');
      tBalanco.SQL.Add('      ,Saldo_Atual    = CASE WHEN Saldo_Atual >= 0 THEN Saldo_Atual ELSE Saldo_Atual *-1 END');
      tBalanco.SQL.Add('      ,DC_Atual');
      tBalanco.SQL.Add('FROM  #PlanoTmp');
      tBalanco.SQL.Add('WHERE Conta IS NOT NULL');
      tBalanco.SQL.Add('  AND (Sintetica = 1 AND SUBSTRING(Conta,1,1) IN(1,2))');
      tBalanco.SQL.Add('  AND (Atualiza_Anterior <> 0 OR Saldo_Atual <> 0 OR Debito <> 0 OR Credito <> 0)');
      tBalanco.SQL.Add('ORDER BY Conta, Sintetica desc');
      tBalanco.SQL.Add('DROP TABLE #PlanoTmp');
      tBalanco.ParamByName('pDataIni').AsDate := pDataIni;
      tBalanco.ParamByName('pDataFim').AsDate := pDataFim;
      //tBalanco.SQL.SaveToFile('c:\temp\SPED_Contabil_RegistroJ100.sql');
      tBalanco.Open;

      Progresso3('REGISTRO J100: BALANÇO PATRIMONIAL.', tBalanco.RecordCount);

      while (not tBalanco.Eof) and (not Funcoes.Cancelado)  do begin
            Inc(mLinha);
            mRegistro := '|J100' +                                                                          // 01 - REG.
                         '|' + tBalanco.FieldByName('Codigo').AsString +                                    // 02 - Código de aglutinação das contas, atribuído pela pessoa jurídica.
                         '|' + tBalanco.FieldByName('Nivel').AsString +                                     // 03 - Nível do Código de aglutinação.
                         '|' + tBalanco.FieldByName('Grupo_Balanco').AsString +                             // 04 - Indicador de grupo do balanço:1–Ativo / 2–Passivo e Patrimônio Líquido.
                         '|' + tBalanco.FieldByName('Descricao').AsString +                                 // 05 - Descrição do código de aglutinação.
                         '|' + FormatFloat('##0.00', tBalanco.FieldByName('Saldo_Atual').AsCurrency) +      // 06 - Valor total do código de aglutinação no Balanço Patrimonial no exercício informado, ou de período definido em norma específica.
                         '|' + tBalanco.FieldByName('DC_Atual').AsString +                                  // 07 - Indicador da situação do saldo informado no campo anterior: D-Devedor / C–Credor.
                         '|' + FormatFloat('##0.00', tBalanco.FieldByName('Saldo_Anterior').AsCurrency)+    // 08 - Valor inicial do código de aglutinação no Balanço Patrimonial no exercício informado, ou de período definido em norma específica.
                         '|' + tBalanco.FieldByName('DC_Anterior').AsString +                               // 09 - Indicador da situação do saldo inicial informado no campo anterior: D-Devedor / C–Credor.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegJ100);
            Inc(mQtdeBlocoJ);

            Progresso3('REGISTRO J100: BALANÇO PATRIMONIAL.', 0);
            tBalanco.Next;
      end;
end;

{* REGISTRO J150 - DEMONSTRAÇÃO DOS RESULTADOS *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ150(pDataIni, pDataFim: TDate);
begin
      tDRE.SQL.Clear;
      tDRE.SQL.Add('-- PLANO NORMAL --');
      tDRE.SQL.Add('SELECT PC.Conta');
      tDRE.SQL.Add('      ,PC.Codigo');
      tDRE.SQL.Add('      ,PC.Nivel');
      tDRE.SQL.Add('      ,PC.Descricao');
      tDRE.SQL.Add('      ,PC.Sintetica');
      tDRE.SQL.Add('      ,PC.Saldo_Anterior');
      tDRE.SQL.Add('      ,PC.Tipo_Terceiros');
      tDRE.SQL.Add('      ,PC.Codigo_Terceiros');
      tDRE.SQL.Add('      ,PC.Natureza');
      tDRE.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
      tDRE.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
      tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
      tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tDRE.SQL.Add('                           ELSE');
      tDRE.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
      tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
      tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tDRE.SQL.Add('                           END');
      tDRE.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tDRE.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
      tDRE.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
      tDRE.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
      tDRE.SQL.Add('      ,Saldo_Atual       = CAST(0 AS money)');
      tDRE.SQL.Add('      ,DC_Anterior       = '' '' ');
      tDRE.SQL.Add('      ,DC_Atual          = '' '' ');
      tDRE.SQL.Add('      ,DRE');
      tDRE.SQL.Add('INTO   #PlanoTmp');
      tDRE.SQL.Add('FROM   PlanoContas PC');
      tDRE.SQL.Add('WHERE  Conta IS NOT NULL');
      tDRE.SQL.Add('-- TOTALIZANDO CONTAS TITULO --');
      tDRE.SQL.Add('UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debito            ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
      tDRE.SQL.Add('                    ,Credito           = ISNULL((SELECT SUM(Credito           ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
      tDRE.SQL.Add('                    ,Atualiza_Anterior = ISNULL((SELECT SUM(atualiza_Anterior ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
      tDRE.SQL.Add('WHERE(#PlanoTmp.Sintetica = 1)');
      tDRE.SQL.Add('-- APURANDO SALDO ATUAL --');
      tDRE.SQL.Add('UPDATE #PlanoTmp SET Saldo_Atual = CASE WHEN #PlanoTmp.Natureza = ''C'' THEN');
      tDRE.SQL.Add('                                        CAST((Atualiza_Anterior - Debito + Credito) AS DECIMAL(14,2))');
      tDRE.SQL.Add('                                   ELSE');
      tDRE.SQL.Add('                                        CAST((Atualiza_Anterior + Debito - Credito) AS DECIMAL(14,2))');
      tDRE.SQL.Add('                                   END');
      tDRE.SQL.Add('-- AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" --');
      tDRE.SQL.Add('UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Natureza = ''D'' THEN');
      tDRE.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''D'' ELSE ''C'' END');
      tDRE.SQL.Add('                                   ELSE');
      tDRE.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''C'' ELSE ''D'' END');
      tDRE.SQL.Add('                                   END');
      tDRE.SQL.Add('                    ,DC_Atual    = CASE WHEN Natureza = ''D'' THEN');
      tDRE.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''D'' ELSE ''C'' END');
      tDRE.SQL.Add('                                   ELSE');
      tDRE.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''C'' ELSE ''D'' END');
      tDRE.SQL.Add('                                   END');
      tDRE.SQL.Add('-- MONTANDO A DRE');
      tDRE.SQL.Add('SELECT Codigo'); 
      tDRE.SQL.Add('      ,Descricao');
      tDRE.SQL.Add('      ,Saldo_Atual    = ISNULL((SELECT SUM(Saldo_Atual)    FROM #PlanoTmp WHERE #PlanoTmp.DRE = DCG.Codigo), 0)');
      tDRE.SQL.Add('      ,Saldo_Anterior = ISNULL((SELECT SUM(Saldo_Anterior) FROM #PlanoTmp WHERE #PlanoTmp.DRE = DCG.Codigo), 0)');
      tDRE.SQL.Add('      ,Totalizador');
      tDRE.SQL.Add('      ,Calculo');
      tDRE.SQL.Add('      ,Indicador      = CASE WHEN Calculo = ''+'' THEN ''R'' ELSE ''D'' END');
      tDRE.SQL.Add('INTO #DRETemp');
      tDRE.SQL.Add('FROM   DREContabilGrupos DCG');
      tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1000, ''RECEITAS OPERACIONAIS LÍQUIDAS''       , 0, 0, 1,''='', ''P'')');
      tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1001, ''LUCRO BRUTO / RESULTADO BRUTO''        , 0, 0, 2,''='', ''P'')');
      tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1002, ''LUCRO OU PREJUÍZO OPERACIONAL''        , 0, 0, 3,''='', ''P'')');
      tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1003, ''RESULTADO DO EXERCÍCIO ANTES DO I.R.'' , 0, 0, 4,''='', ''P'')');
      tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1004, ''RESULTADO DO EXERCÍCIO DEPOIS DO I.R.'', 0, 0, 5,''='', ''P'')');
      tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Atual = (SELECT SUM(Saldo_Atual) FROM #DRETemp Tmp2 WHERE Tmp2.Totalizador = #DRETemp.Totalizador)');
      tDRE.SQL.Add('WHERE Codigo >= 1000');
      tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Atual    = ISNULL((SELECT SUM(Saldo_Atual)    FROM #DRETemp Tmp2 WHERE Tmp2.Codigo >= 1000 AND Tmp2.Codigo <= #DRETemp.Codigo), 0) WHERE Codigo > 1000');
      tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Anterior = ISNULL((SELECT SUM(Saldo_Anterior) FROM #DRETemp Tmp2 WHERE Tmp2.Codigo >= 1000 AND Tmp2.Codigo <= #DRETemp.Codigo), 0) WHERE Codigo > 1000');
      tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Atual    = (Saldo_Atual *-1)    WHERE Saldo_Atual < 0');
      tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Anterior = (Saldo_Anterior *-1) WHERE Saldo_Anterior < 0');
      tDRE.SQL.Add('SELECT * FROM #DRETemp');
      tDRE.SQL.Add('ORDER BY Totalizador, Codigo');
      tDRE.SQL.Add('DROP TABLE #PlanoTmp, #DRETemp');
      tDRE.ParamByName('pDataIni').AsDate := pDataIni;
      tDRE.ParamByName('pDataFim').AsDate := pDataFim;
      //tDRE.SQL.SaveToFile('c:\Temp\Impressao_DRE.SQL');
      tDRE.Open;

      Progresso3('REGISTRO J150: DEMONSTRAÇÃO DOS RESULTADOS.', tDRE.RecordCount );

      while (not tDRE.Eof) and (not Funcoes.Cancelado)  do begin
            Inc(mLinha);
            mRegistro := '|J150' +                                                                      // 01 - REG.
                         '|' + tDRE.FieldByName('Codigo').AsString +                                    // 02 - Código de aglutinação das contas, atribuído pela pessoa jurídica.
                         '|1' +                                                                         // 03 - Nível do Código de aglutinação.
                         '|' + tDRE.FieldByName('Descricao').AsString +                                 // 04 - Descrição do código de aglutinação.
                         '|' + FormatFloat('##0.00', tDRE.FieldByName('Saldo_Atual').AsCurrency) +      // 05 - Valor total do código de aglutinação no Balanço Patrimonial no exercício informado, ou de período definido em norma específica.
                         '|' + tDRE.FieldByName('Indicador').AsString+                                  // 06 - Indicador da situação do valor informado no campo anterior: D-Despesa/Vlr represente parc.red.lucro / R-Receita/valor repr.incr.lucro / P-Subtotal ou total positivo / N – Subtotal ou total negativo.
                         '|' + FormatFloat('##0.00', tDRE.FieldByName('Saldo_Anterior').AsCurrency)+    // 07 - Valor inicial do código de aglutinação no Balanço Patrimonial no exercício informado, ou de período definido em norma específica.
                         '|' + tDRE.FieldByName('Indicador').AsString +                                 // 08 - Indicador da situação do valor informado no campo anterior: D-Despesa/Vlr represente parc.red.lucro / R-Receita/valor repr.incr.lucro / P-Subtotal ou total positivo / N – Subtotal ou total negativo.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegJ150);
            Inc(mQtdeBlocoJ);

            Progresso3('REGISTRO J150: BALANÇO PATRIMONIAL.', 0);
            tDRE.Next;
      end;
end;

{* REGISTRO J900 - TERMO DE ENCERRAMENTO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ900;
begin
      Progresso2('REGISTRO J900: TERMO DE ENCERRAMENTO.', 1);

      Inc(mLinha);
      mRegistro := '|J900' +                                                                // 01 - REG.
                   '|TERMO DE ENCERRAMENTO' +                                               // 02 - Texto fixo contendo "TERMO DE ENCERRAMENTO".
                   '|' + Dados.EmpresasDiario_Numero.AsString +                             // 03 - Número do diario.
                   '|Escrituração Contábil Digital do Livro Diário Geral' +                 // 04 - Natureza do livro.
                   '|'+ Dados.EmpresasRazao_Social.AsString +                               // 05 - Nome Empresarial.
                   '|QTDE_TOTAL'+                                                           // 06 - Quantidade total de linhas do arquivo digital.
                   '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +                       // 07 - Data inicial da escrituração.
                   '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +                       // 08 - Data final da escrituração.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegJ900);
      Inc(mQtdeBlocoJ);

      Progresso2('REGISTRO J900: TERMO DE ENCERRAMENTO.', 0);
end;

{* REGISTRO J930 - IDENTIFICAÇÃO DOS SIGNATÁRIOS DA ESCRITURAÇÃO *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ930;
var
   mQualif: string;
begin
      Progresso3('REGISTRO J930: IDENTIFICAÇÃO DOS SIGNATÁRIOS.', 2);

      with dados do begin
           // Dados do contador.
           case EmpresasContador_Qualificacao.AsInteger of
                203 : mQualif := 'Conselheiro de Administração';
                205 : mQualif := 'Administrador';
                206 : mQualif := 'Administrador do Grupo';
                207 : mQualif := 'Administrador de Sociedade Filiada';
                220 : mQualif := 'Administrador Judicial - Pessoa Física';
                222 : mQualif := 'Administrador Judicial - Pessoa Jurídica - Profissional Responsável';
                223 : mQualif := 'Administrador Judicial/Gestor';
                226 : mQualif := 'Gestor Judicial';
                309 : mQualif := 'Procurador';
                312 : mQualif := 'Inventariante';
                313 : mQualif := 'Liquidante';
                315 : mQualif := 'Interventor';
                801 : mQualif := 'Empresário';
                900 : mQualif := 'Contador';
                999 : mQualif := 'Outros';
           end;

           Inc(mLinha);
           mRegistro := '|J930' +                                                         // 01 - REG.
                        '|' + EmpresasContador_Nome.AsString +                            // 02 - Nome do signatário.
                        '|' + EmpresasContador_CPF.AsString +                             // 03 - CPF.
                        '|' + mQualif +                                                   // 04 - Qualificação do assinante, conforme tabela. (Descricao).
                        '|' + EmpresasContador_Qualificacao.AsString +                    // 05 - Qualificação do assinante, conforme tabela.
                        '|' + EmpresasContador_CRC.AsString +                             // 06 - CRC.
                        '|' + EmpresasContador_Email.AsString +                           // 07 - E-Mail.
                        '|' + EmpresasContador_Telefone.AsString +                        // 08 - Telefone.
                        '|' + EmpresasContador_CRCUF.AsString +                           // 09 - Indicação da unidade da federação que expediu o CRC.
                        '|' + EmpresasContador_CRCSequencial.AsString +                   // 10 - Número sequencial no seguinte formato: UF/ano/número.
                        '|' + RemoveCaracter('/', '',EmpresasContador_CRCData.AsString)+  // 11 - Data de validade do CRC do contador.
                        '|' + EmpresasContador_SignatarioResp.AsString +                  // 12 - Identificação do signatário que será validado como responsável pela assinatura da ECD, conforme atos societários.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Progresso3('REGISTRO J930: IDENTIFICAÇÃO DOS SIGNATÁRIOS.', 0);

           Inc(mQtdeRegJ930);
           Inc(mQtdeBlocoJ);

           // Dados do representante legal.
           case EmpresasRepresentante_Qualificacao.AsInteger of
                203 : mQualif := 'Conselheiro de Administração';
                205 : mQualif := 'Administrador';
                206 : mQualif := 'Administrador do Grupo';
                207 : mQualif := 'Administrador de Sociedade Filiada';
                220 : mQualif := 'Administrador Judicial - Pessoa Física';
                222 : mQualif := 'Administrador Judicial - Pessoa Jurídica - Profissional Responsável';
                223 : mQualif := 'Administrador Judicial/Gestor';
                226 : mQualif := 'Gestor Judicial';
                309 : mQualif := 'Procurador';
                312 : mQualif := 'Inventariante';
                313 : mQualif := 'Liquidante';
                315 : mQualif := 'Interventor';
                801 : mQualif := 'Empresário';
                900 : mQualif := 'Contador';
                999 : mQualif := 'Outros';
           end;
                
           Inc(mLinha);
           mRegistro := '|J930' +                                                              // 01 - REG.
                        '|' + EmpresasRepresentante_Nome.AsString +                            // 02 - Nome do signatário.
                        '|' + EmpresasRepresentante_CPF.AsString +                             // 03 - CPF.
                        '|' + mQualif +                                                        // 04 - Qualificação do assinante, conforme tabela. (Descricao).
                        '|' + EmpresasRepresentante_Qualificacao.AsString +                    // 05 - Qualificação do assinante, conforme tabela.
                        '|' + EmpresasRepresentante_CRC.AsString +                             // 06 - CRC.
                        '|' + EmpresasRepresentante_Email.AsString +                           // 07 - E-Mail.
                        '|' + EmpresasRepresentante_Telefone.AsString +                        // 08 - Telefone.
                        '|' + EmpresasRepresentante_CRCUF.AsString +                           // 09 - Indicação da unidade da federação que expediu o CRC.
                        '|' + EmpresasRepresentante_CRCSequencial.AsString +                   // 10 - Número sequencial no seguinte formato: UF/ano/número.
                        '|' + RemoveCaracter('/', '',EmpresasRepresentante_CRCData.AsString)+  // 11 - Data de validade do CRC do contador.
                        '|' + EmpresasRepresentante_SignatarioResp.AsString +                  // 12 - Identificação do signatário que será validado como responsável pela assinatura da ECD, conforme atos societários.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Progresso3('REGISTRO J930: IDENTIFICAÇÃO DOS SIGNATÁRIOS.', 0);

           Inc(mQtdeRegJ930);
           Inc(mQtdeBlocoJ);
      end;
end;

{* REGISTRO J990 - ENCERRAMENTO DO BLOCO J *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroJ990;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO J990: ENCERRAMENTO DO BLOCO J..';

      Inc(mLinha);
      Inc(mQtdeRegJ990);
      Inc(mQtdeBlocoJ);

      Say( mLinha, 000, Arquivo, '|J990' );                             // 01 - REG.
      Say( mLinha, 005, Arquivo, '|'+InttoStr(mQtdeBlocoJ)+'|' );       // 02 - Quantidade total de linhas do Bloco J.
end;

{REGISTRO K001: ABERTURA DO BLOCO K.}
procedure TUtilitarios_ExportaSPED_ECD.RegistroK001;
begin
      if cConsolidada.ItemIndex = 0 then begin
         Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
         Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO K001: ABERTURA DO BLOCO K..';

         Inc(mLinha);
         mRegistro := '|K001' +                                         // 01 - REG.
                      '|0|';                                            // 02 - Indicador de movimento (0-Com dados / 1-Sem dados).

         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegK001);
         Inc(mQtdeBlocoK);

         RegistroK030;
         RegistroK100;
      end;
end;

{REGISTRO K030: PERÍODO DA ESCRITURAÇÃO CONTÁBIL CONSOLIDADA}
procedure TUtilitarios_ExportaSPED_ECD.RegistroK030;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO K030: PERÍODO DA ESCRITURAÇÃO CONTÁBIL CONSOLIDADA.';
      Inc(mLinha);
      mRegistro := '|K030'+                                             // 01 - REG.
                   '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +   // 02 - Data inicial do período consolidado.
                   '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +   // 03 - Data final o período consolidado.
                   '|';

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegK030);
      Inc(mQtdeBlocoK);
end;

{REGISTRO K100: RELAÇÃO DAS EMPRESAS CONSOLIDADAS}
procedure TUtilitarios_ExportaSPED_ECD.RegistroK100;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO K100: RELAÇÃO DAS EMPRESAS CONSOLIDADAS.';

      with Dados do begin
           Inc(mLinha);
           mRegistro := '|K100' +                                                   // 01 - REG.
                        '|' + '01058' +                                             // 02 - Código do país da empresa, conforme tabela do Banco Central do Brasil.
                        '|' + Empresas.FieldByName('Codigo').AsString +             // 03 - Código de identificação da empresa participante.
                        '|' + Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) +   // 04 - CNPJ (somente os 8 primeiros digitos).
                        '|' + Empresas.FieldByName('Razao_Social').AsString +       // 05 - Nome empresarial.
                        '|' + '100' +                                               // 06 - Percentual de participação total do conglomerado na empresa no final do período consolidado: Informar a participação acionária.
                        '|' + 'S' +                                                 // 07 - Evento societário ocorrido no período:S - Sim / N – Não.
                        '|' + '100' +                                               // 08 - Percentual de consolidação da empresa no final do período consolidado: Informar o percentual do resultado da empresa que foi para a consolidação.
                        '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +          // 09 - Data inicial do período consolidado.
                        '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +          // 10 - Data final o período consolidado.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegK100);
           Inc(mQtdeBlocoK);
           RegistroK110;
      end;

      tEmpresas.First;
      while (not tEmpresas.Eof) and (not Funcoes.Cancelado)  do begin
            Inc(mLinha);

            mRegistro := '|K100' +                                                    // 01 - REG.
                         '|' + '01058' +                                              // 02 - Código do país da empresa, conforme tabela do Banco Central do Brasil.
                         '|' + tEmpresas.FieldByName('Codigo').AsString +             // 03 - Código de identificação da empresa participante.
                         '|' + Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) +   // 04 - CNPJ (somente os 8 primeiros digitos).
                         '|' + tEmpresas.FieldByName('Razao_Social').AsString +       // 05 - Nome empresarial.
                         '|' + '100' +                                                // 06 - Percentual de participação total do conglomerado na empresa no final do período consolidado: Informar a participação acionária.
                         '|' + 'S' +                                                  // 07 - Evento societário ocorrido no período:S - Sim / N – Não.
                         '|' + '100' +                                                // 08 - Percentual de consolidação da empresa no final do período consolidado: Informar o percentual do resultado da empresa que foi para a consolidação.
                         '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +           // 09 - Data inicial do período consolidado.
                         '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +           // 10 - Data final o período consolidado.
                         '|';

            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegK100);
            Inc(mQtdeBlocoK);

            RegistroK110;

            tEmpresas.Next;
            Progresso2('REGISTRO K100: RELAÇÃO DAS EMPRESAS CONSOLIDADAS.', 0);
      end;
end;

{REGISTRO K110: RELAÇÃO DOS EVENTOS SOCIETARIOS}
procedure TUtilitarios_ExportaSPED_ECD.RegistroK110;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO K101: RELAÇÃO DOS EVENTOS SOCIETÁRIOS.';

      Inc(mLinha);

      mRegistro := '|K110' +                                                          // 01 - REG.
                   '|' + InttoStr(cEventoSoc.ItemIndex+1) +                           // 02 - Evento societário ocorrido no período:
                   '|' + RemoveCaracter('/','', DatetoStr(mDataFim)) +                // 03 - Data do evento societário.
                   '|';

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegK110);
      Inc(mQtdeBlocoK);

      tEmpresas.Next;
      Progresso2('REGISTRO K110: RELAÇÃO DOS EVENTOS SOCIETÁRIOS.', 0);
end;

{* REGISTRO K990 - ENCERRAMENTO DO BLOCO K *}
procedure TUtilitarios_ExportaSPED_ECD.RegistroK990;
begin
      if cConsolidada.ItemIndex = 0 then begin
         Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
         Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO K990: ENCERRAMENTO DO BLOCO K.';

         Inc(mLinha);
         Inc(mQtdeRegK990);
         Inc(mQtdeBlocoK);

         Say( mLinha, 000, Arquivo, '|K990' );                              // 01 - REG.
         Say( mLinha, 005, Arquivo, '|'+InttoStr(mQtdeBlocoK)+'|' );        // 02 - Quantidade total de linhas do Bloco J.
      end;
end;

{REGISTRO 9001: ABERTURA DO BLOCO 9.}
procedure TUtilitarios_ExportaSPED_ECD.Registro9001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 9001: ABERTURA DO BLOCO 9.';
      Inc(mLinha);
      mRegistro := '|9001';                                                 // 01 - REG.
      mRegistro := mRegistro + '|0|';                                       // 02 - Indicador de movimento (0-Com dados / 1-Sem dados).

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg9001);
      Inc(mQtdeBloco9);
end;

{REGISTRO 9900: REGISTROS DO ARQUIVO.}
procedure TUtilitarios_ExportaSPED_ECD.Registro9900;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 9900: TOTALIZADOR DO ARQUIVO.';
      // Registros do Bloco 0.
      Inc(mLinha);
      If mQtdeReg0000 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0000|'+Trim(InttoStr(mQtdeReg0000))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0001|'+Trim(InttoStr(mQtdeReg0001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0007 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0007|'+Trim(InttoStr(mQtdeReg0007))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0020 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0020|'+Trim(InttoStr(mQtdeReg0020))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0150 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0150|'+Trim(InttoStr(mQtdeReg0150))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0180 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0180|'+Trim(InttoStr(mQtdeReg0180))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0990|'+Trim(InttoStr(mQtdeReg0990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco I.
      If mQtdeRegI001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I001|'+Trim(InttoStr(mQtdeRegI001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I010|'+Trim(InttoStr(mQtdeRegI010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI012 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I012|'+Trim(InttoStr(mQtdeRegI012))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI015 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I015|'+Trim(InttoStr(mQtdeRegI015))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI020 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I020|'+Trim(InttoStr(mQtdeRegI020))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI030 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I030|'+Trim(InttoStr(mQtdeRegI030))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI050 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I050|'+Trim(InttoStr(mQtdeRegI050))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI051 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I051|'+Trim(InttoStr(mQtdeRegI051))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI052 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I052|'+Trim(InttoStr(mQtdeRegI052))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI075 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I075|'+Trim(InttoStr(mQtdeRegI075))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I100|'+Trim(InttoStr(mQtdeRegI100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI150 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I150|'+Trim(InttoStr(mQtdeRegI150))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI155 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I155|'+Trim(InttoStr(mQtdeRegI155))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I200|'+Trim(InttoStr(mQtdeRegI200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI250 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I250|'+Trim(InttoStr(mQtdeRegI250))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI350 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I350|'+Trim(InttoStr(mQtdeRegI350))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI355 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I355|'+Trim(InttoStr(mQtdeRegI355))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegI990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I990|'+Trim(InttoStr(mQtdeRegI990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco J.
      If mQtdeRegJ001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J001|'+Trim(InttoStr(mQtdeRegJ001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegJ005 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J005|'+Trim(InttoStr(mQtdeRegJ005))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegJ100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J100|'+Trim(InttoStr(mQtdeRegJ100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegJ150 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J150|'+Trim(InttoStr(mQtdeRegJ150))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegJ900 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J900|'+Trim(InttoStr(mQtdeRegJ900))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegJ930 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J930|'+Trim(InttoStr(mQtdeRegJ930))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegJ990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|J990|'+Trim(InttoStr(mQtdeRegJ990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco K.
      If mQtdeRegK001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K001|'+Trim(InttoStr(mQtdeRegK001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegK030 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K030|'+Trim(InttoStr(mQtdeRegK030))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegK100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K100|'+Trim(InttoStr(mQtdeRegK100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegK110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K110|'+Trim(InttoStr(mQtdeRegK110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegK990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K990|'+Trim(InttoStr(mQtdeRegK990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Bloco 9.
      If mQtdeReg9001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|9001|'+Trim(InttoStr(mQtdeReg9001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      
      Inc(mQtdeReg9900,3);
      Inc(mQtdeBloco9,2);
      Say( mLinha, 000, Arquivo, '|9900|9900|'+Trim(InttoStr(mQtdeReg9900))+'|' );
      Inc(mLinha);

      Inc(mQtdeBloco9);
      Say( mLinha, 000, Arquivo, '|9900|9990|1|');
      Inc(mLinha);

      Inc(mQtdeBloco9);
      Say( mLinha, 000, Arquivo, '|9900|9999|1|' );
      Inc(mLinha);

      Inc(mQtdeBloco9);
      Say( mLinha, 000, Arquivo, '|9990|'+Trim(InttoStr(mQtdeBloco9))+'|' );
      Inc(mLinha);

      Say( mLinha, 000, Arquivo, '|9999|'+Trim(InttoStr(mQtdeBloco0+mQtdeBlocoI+mQtdeBlocoJ+mQtdeBlocoK+mQtdeBloco9))+'|'+#13+#10 );
      Inc(mLinha);
end;


procedure TUtilitarios_ExportaSPED_ECD.cAnoIniChange(Sender: TObject);
begin
      cAnoFim.AsInteger := cAnoIni.AsInteger;
end;

Function TUtilitarios_ExportaSPED_ECD.LimpaConta(pConta: String): String;
Var
    i     : Integer;
    mConta: String;
begin
      mConta := FormatMaskText(Dados.EmpresasMascara_PlanoContas.AsString+';0', pConta);
      Result := '';
      For i := 1 to Length(mConta) do begin
          Result := Result + mConta[i];
          If (mConta[i+1] = '.') and (mConta[i+2] = ' ') then break
      End;
end;

Function TUtilitarios_ExportaSPED_ECD.LimpaContaECF(pConta: String): String;
Var
    i     : Integer;
    mConta: String;
begin
      mConta := FormatMaskText('#.##.##.##.##.##;0', pConta);
      Result := '';
      For i := 1 to Length(mConta) do begin
          Result := Result + mConta[i];
          If (mConta[i+1] = '.') and (mConta[i+2] = ' ') then break
      End;
end;

// Retorna a conta analitica sem os ultimos número para poder somar o codigo reduzido ao final.
Function TUtilitarios_ExportaSPED_ECD.FinalConta(Conta, Mascara: String): String;
var
    i: Integer;
    mCta: String;
begin
      mCta := FormatMaskText(Mascara+';0; ', Conta);
      for i := Length(mCta) downto 1 do begin
          if (mCta[i] = '.') then Break;
      end;
      result := RemoveCaracter('.', '', Copy(mCta, 1, i));
End;

procedure TUtilitarios_ExportaSPED_ECD.Progresso2(Registro: String; RegTotal: Integer);
begin
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso2.Position := 0;
         Janela_ProcessamentoSPED.Progresso2.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
         if Janela_ProcessamentoSPED.Progresso2.Position = Janela_ProcessamentoSPED.Progresso2.Max then begin
            Janela_ProcessamentoSPED.Progresso2.Position := 0;
            Janela_ProcessamentoSPED.lRegistro.Caption   := '';
         end;
      End;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_ECD.Progresso3(Registro: String; RegTotal: Integer);
begin
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro2.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso3.Position := 0;
         Janela_ProcessamentoSPED.Progresso3.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
         if Janela_ProcessamentoSPED.Progresso3.Position = Janela_ProcessamentoSPED.Progresso3.Max then begin
            Janela_ProcessamentoSPED.Progresso3.Position := 0;
            Janela_ProcessamentoSPED.lRegistro2.Caption  := '';
         end;
      End;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_ECD.Progresso4(Registro: String; RegTotal: Integer);
begin
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro3.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso4.Position := 0;
         Janela_ProcessamentoSPED.Progresso4.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso4.Position := Janela_ProcessamentoSPED.Progresso4.Position + 1;
         if Janela_ProcessamentoSPED.Progresso4.Position = Janela_ProcessamentoSPED.Progresso4.Max then begin
            Janela_ProcessamentoSPED.Progresso4.Position := 0;
            Janela_ProcessamentoSPED.lRegistro3.Caption  := '';
         end;
      End;
      Application.ProcessMessages;
end;

end.




