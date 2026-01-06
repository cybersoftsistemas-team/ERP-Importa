unit frmUtilitarios_ExportaSPED_ECF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXSpin, RXCtrls, Funcoes,
  Vcl.ComCtrls, IniFiles, DB, DBAccess, MSAccess, MaskUtils, MemDS, system.UITypes, Vcl.Mask;

type
  TUtilitarios_ExportaSPED_ECF = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    bSintegra: TButton;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cNomeArquivo: TEdit;
    StaticText3: TStaticText;
    cAnoIni: TRxSpinEdit;
    cMesIni: TComboBox;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    cAnoFim: TRxSpinEdit;
    cMesFim: TComboBox;
    tEmpresas: TMSQuery;
    cVersao: TEdit;
    tContador: TMSQuery;
    tHistoricos: TMSQuery;
    tSaldo: TMSQuery;
    tLancamentos: TMSQuery;
    tPartidas: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cIndicador: TRadioGroup;
    tTemp: TMSQuery;
    cSituacao: TRadioGroup;
    cRetificadora: TRadioGroup;
    lRecibo: TStaticText;
    cRecibo: TEdit;
    cTipoECF: TRadioGroup;
    cMovimento: TRadioGroup;
    cApuracao: TRadioGroup;
    cQualificacao: TRadioGroup;
    cFormaTrib: TRadioGroup;
    cFormaApura: TRadioGroup;
    cEscrituracao: TRadioGroup;
    cDiferenca: TCheckBox;
    cAliquota: TRadioGroup;
    cAdmFundos: TCheckBox;
    cPartConsorcio: TCheckBox;
    cOperExterior: TCheckBox;
    cOperPessoa: TCheckBox;
    cPJEnquad: TCheckBox;
    cPartExt: TCheckBox;
    cAtividadeRural: TCheckBox;
    cLucroExploracao: TCheckBox;
    cInsencao: TCheckBox;
    cFINOR: TCheckBox;
    cDoacoes: TCheckBox;
    cEquivalencia: TCheckBox;
    cVendas: TCheckBox;
    cReceb: TCheckBox;
    cAtivos: TCheckBox;
    cExportadora: TCheckBox;
    cPagamentos: TCheckBox;
    cEletronico: TCheckBox;
    cRoyaltiesRec: TCheckBox;
    cRoyaltiesPag: TCheckBox;
    cRendimentos: TCheckBox;
    cRemeExt: TCheckBox;
    cInovacao: TCheckBox;
    cCapacitacao: TCheckBox;
    cHabilitada: TCheckBox;
    cPolo: TCheckBox;
    cZonaExp: TCheckBox;
    cAreaLivre: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cAnoIniChange(Sender: TObject);

    Function  LimpaConta(pConta: String): String;
    Function  FinalConta(Conta, Mascara: String): String;

    // BLOCO 0.
    procedure Registro0000;
    procedure Registro0001;
    procedure Registro0010;
    procedure Registro0020;
    procedure Registro0030;
    procedure Registro0035;
    procedure Registro0930;
    procedure Registro0990;

    // BLOCO J.
    procedure RegistroJ001;
    procedure RegistroJ005;
    {
    procedure RegistroJ100;
    procedure RegistroJ150;
    procedure RegistroJ800;
    }
    procedure RegistroJ930;
    procedure RegistroJ900;
    procedure RegistroJ990;
    // BLOCO 9.
    procedure Registro9001;
    procedure Registro9900;
    //procedure Registro9990;
    //procedure Registro9999;
    
    procedure Progresso2(Registro: String; RegTotal: Integer);
    procedure Progresso3(Registro: String; RegTotal: Integer);
    procedure Progresso4(Registro: String; RegTotal: Integer);
    procedure cRetificadoraClick(Sender: TObject);
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
     mQtdeBlocoC: Integer;
     mQtdeBlocoJ: Integer;
     mQtdeBloco9: Integer;

     // Bloco 0.
     mQtdeReg0000 : Integer;
     mQtdeReg0001 : Integer;
     mQtdeReg0010 : Integer;
     mQtdeReg0020 : Integer;
     mQtdeReg0030 : Integer;
     mQtdeReg0035 : Integer;
     mQtdeReg0930 : Integer;
     mQtdeReg0990 : Integer;

     // Bloco J.
     mQtdeRegJ001 : Integer;
     mQtdeRegJ005 : Integer;
     mQtdeRegJ100 : Integer;
     mQtdeRegJ150 : Integer;
     mQtdeRegJ800 : Integer;
     mQtdeRegJ900 : Integer;
     mQtdeRegJ930 : Integer;
     mQtdeRegJ990 : Integer;

     // Bloco 9.
     mQtdeReg9001 : Integer;
     mQtdeReg9900 : Integer;
     mQtdeReg9990 : Integer;
     mQtdeReg9999 : Integer;
  end;

var
  Utilitarios_ExportaSPED_ECF: TUtilitarios_ExportaSPED_ECF;

const
  mForma: array[0..4] of String = ('A', 'B', 'G', 'R', 'Z');
  mSeta : array[0..4] of String = (' |', ' /', '- -', ' |', ' \');

implementation

uses frmDados, frmMenu_Principal, frmDMContab, frmJanela_ProcessamentoSPED, frmImpressao_Visualizar;

{$R *.dfm}

procedure TUtilitarios_ExportaSPED_ECF.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaSPED_ECF.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_ExportaSPED_ECF.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    aINI: TIniFile;
    i:integer;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TCheckBox then
             aINI.WriteBool('SPED_CONTABIL_ECF', Components[i].Name, TCheckBox(Components[i]).Checked);
          if Components[i] is TComboBox then
             aINI.WriteInteger('SPED_CONTABIL_ECF', Components[i].Name, TComboBox(Components[i]).ItemIndex);
          if Components[i] is TRxSpinEdit then
             aINI.WriteInteger('SPED_CONTABIL_ECF', Components[i].Name, TRxSpinEdit(Components[i]).AsInteger);
          if Components[i] is TEdit then
             aINI.WriteString('SPED_CONTABIL_ECF', Components[i].Name, TEdit(Components[i]).Text);
          if Components[i] is TRadioGroup then
             aINI.WriteInteger('SPED_CONTABIL_ECF', Components[i].Name, TRadioGroup(Components[i]).ItemIndex);
      end;
      aINI.Free;

      Utilitarios_ExportaSPED_ECF.Release;
      Utilitarios_ExportaSPED_ECF:= nil;
end;

procedure TUtilitarios_ExportaSPED_ECF.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
   i: integer;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TCheckBox then
             TCheckBox(Components[i]).Checked := aINI.ReadBool('SPED_CONTABIL_ECF', Components[i].Name, false);
          if Components[i] is TComboBox then
             TComboBox(Components[i]).ItemIndex := aINI.ReadInteger('SPED_CONTABIL_ECF', Components[i].Name, 0);
          if Components[i] is TRxSpinEdit then
             TRXSpinEdit(Components[i]).Value := aINI.ReadInteger('SPED_CONTABIL_ECF', Components[i].Name, 0);
          if Components[i] is TEdit then
             TEdit(Components[i]).Text := aINI.ReadString('SPED_CONTABIL_ECF', Components[i].Name, '');
          if Components[i] is TRadioGroup then
             TRadioGroup(Components[i]).ItemIndex := aINI.ReadInteger('SPED_CONTABIL_ECF', Components[i].Name, 0);
      end;

      if Trim(cNomeArquivo.Text) = '' then cNomeArquivo.Text := 'CYBERSOFT_LECF_CONTABIL';

      aINI.Free;
end;

procedure TUtilitarios_ExportaSPED_ECF.bGerarClick(Sender: TObject);
var
   mArq : TMemo;
begin
     if trim(cVersao.text) = '' then begin
        MessageDlg('Campo "Versão" é obrogatório.', mtError, [mbOK], 0);
        cVersao.SetFocus;
        Abort;
     end;

     Screen.Cursor := crSQLWait;

     // Zerando os contadores de registros.
     
     // Bloco 0.
     mQtdeReg0000 := 0;
     mQtdeReg0001 := 0;
     mQtdeReg0010 := 0;
     mQtdeReg0020 := 0;
     mQtdeReg0030 := 0;
     mQtdeReg0035 := 0;
     mQtdeReg0990 := 0;

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

          // Seleciona todos os Contadores.
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
          {
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add('SELECT *');
          PlanoContas.SQL.Add('FROM   PlanoContas');
          PlanoContas.SQL.Add('WHERE  (Conta IS NOT NULL)');
          PlanoContas.SQL.Add('ORDER BY Conta');
          //PlanoContas.SQL.SaveToFile('c:\temp\SPED_CONTABIL_ECF_Plano_Contas.sql');
          PlanoContas.Open;

          tHistoricos.SQL.Clear;
          tHistoricos.SQL.Add('SELECT *');
          tHistoricos.SQL.Add('FROM  HistoricoPadrao HST');
          tHistoricos.SQL.Add('WHERE (SELECT COUNT(*) FROM Lancamentos WHERE(Data BETWEEN :pDataIni AND :pDataFim) AND (Historico_Codigo = HST.Codigo)) > 0');
          tHistoricos.SQL.Add('ORDER BY Codigo');
          tHistoricos.ParamByName('pDataIni').AsDate := mDataIni;
          tHistoricos.ParamByName('pDataFim').AsDate := mDataFim;
          tHistoricos.Open;
          }

          tContador.SQL.Clear;
          tContador.SQL.Add('SELECT DISTINCT');
          tContador.SQL.Add('        Nome     = Contador_Nome');
          tContador.SQL.Add('       ,CPF_CNPJ = CASE WHEN ISNULL(Contador_CNPJ, '''')  <> '''' THEN Contador_CNPJ ELSE Contador_CPF END');
          tContador.SQL.Add('       ,Qualificacao = Contador_Qualificacao');
          tContador.SQL.Add('       ,CRC = Contador_CRC');
          tContador.SQL.Add('       ,Telefone = Contador_Telefone');
          tContador.SQL.Add('       ,Email = Contador_Email');
          tContador.SQL.Add('FROM Empresas');
          tContador.SQL.Add('WHERE ISNULL(Contador_Nome, '''') <> '''' ');
          tContador.SQL.Add('  AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
          tContador.ParamByName('pCNPJ').AsString := Copy(EmpresasCNPJ.AsString, 1, 8);
          tContador.Open;

          Janela_ProcessamentoSPED := TJanela_ProcessamentoSPED.Create(Self);
          Janela_ProcessamentoSPED.Progresso.Position := 0;
          Janela_ProcessamentoSPED.Progresso.max      := 9;          // Quantidade de registros.
          Janela_ProcessamentoSPED.lProcesso.Caption  := 'Gerando...'+cNomeArquivo.Text;
          Janela_ProcessamentoSPED.Show;

          // BLOC 0: (Abertura, Identificação e Referências).
          Registro0000;
          Registro0001;
                      Registro0010;
                      Registro0020;
                      Registro0030;
                      Registro0035;
                      Registro0930;
          Registro0990;

          // BLOCO J.
          RegistroJ001;
                      RegistroJ005;
          RegistroJ900;
                      RegistroJ930;
          RegistroJ990;

          // BLOCO 9: Encerramento do arquivo.
          Registro9001;
                      Registro9900;


          CloseFile(Arquivo);

          Janela_ProcessamentoSPED.Close;

          // Altera a "Macro QTDE_TOTAL' pela quantidade de registros do arquivo do registro I030.
          mArq         := TMemo.Create(Utilitarios_ExportaSPED_ECF);
          mArq.Visible := False;
          mArq.Parent  := Utilitarios_ExportaSPED_ECF;
          mArq.Lines.LoadFromFile(mNomeArq);
          mArq.Text := RemoveCaracter('QTDE_TOTAL', Trim(InttoStr(mQtdeBloco0+mQtdeBlocoC+mQtdeBlocoJ+mQtdeBloco9)), mArq.Text);
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
          Impressao_Visualizar.mTitulo  := 'Registro de envio ao SPED FISCAL';
          Impressao_Visualizar.mPaginas := 1;
          Impressao_Visualizar.mPag     := 1;
          Impressao_Visualizar.ShowModal;
     end;
end;

{* REGISTRO 0000 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA PESSOA JURÍDICA * }
procedure TUtilitarios_ExportaSPED_ECF.Registro0000;
begin
      Janela_ProcessamentoSPED.Progresso.Position := 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 0000: ABERTURA DO ARQUIVO...';
      
      With Dados, dmContab do begin
           mRegistro := '|0000' +                                                                 // 01 - REG.
                        '|LECF' +                                                                 // 02 - LECF.
                        '|' + cVersao.Text +                                                      // 03 - Código da Versão do Leiaute Contábil.
                        '|'+ EmpresasCNPJ.Value +                                                 // 04 - CNPJ da entidade.
                        '|'+ Trim(EmpresasRazao_Social.Value) +                                   // 05 - Nome empresarial do empresário ou sociedade empresária.
                        '|'+ Copy(cIndicador.Items[cIndicador.ItemIndex], 1, 1)+                  // 06 - Indicador do Início do Período:
                        '|'+ Copy(cSituacao.Items[cSituacao.ItemIndex], 1, 1)+                    // 07 - Indicador de Situação Especial e Outros Eventos.
                        '|'+                                                                      // 08 - Patrimônio Remanescente em Caso de Cisão (%).
                        '|'+                                                                      // 09 - Patrimônio Remanescente em Caso de Cisão (%).
                        '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +                        // 10 - Data inicial dos dados.
                        '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +                        // 11 - Data final dos dados.
                        '|'+ Copy(cRetificadora.Items[cRetificadora.ItemIndex], 1, 1)+            // 12 - Escrituração Retificadora.
                        '|'+ cRecibo.Text +                                                       // 13 - Número do Recibo da ECF Anterior (hashcode).
                        '|'+ Copy(cTipoECF.Items[cTipoECF.ItemIndex], 1, 1)+                      // 14 - Indicador do Tipo da ECF.
                        '|'+                                                                      // 15 - Identificação da SCP (CNPJ – art. 52 da Instrução Normativa RFB no 1.470, de 30 de maio de 2014).
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );
           Inc(mQtdeBloco0);
           Inc(mQtdeReg0000);
      End;
end;

{* REGISTRO 0001 - ABERTURA DO BLOCO 0 *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 0001: ABERTURA DO BLOCO 0.';

      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|0001' );                                                     // 01 - REG.
      Say( mLinha, 005, Arquivo, '|'+Copy(cMovimento.Items[cMovimento.ItemIndex], 1, 1)+'|' );  // 02 - Indicador de movimento.

      Inc(mQtdeReg0001);
      Inc(mQtdeBloco0);
end;

{* REGISTRO 0010: PARÂMETROS DE TRIBUTAÇÃO *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0010;
begin
      // Matriz.
      Progresso2('REGISTRO 0010: PARÂMETROS DE TRIBUTAÇÃO.', 1);

      Inc(mLinha);
      mRegistro := '|0010' +                                                           // 01 - REG.
                   '|' +                                                               // 02 - Hashcode da ECF do Período Imediatamente Anterior a Ser Recuperado.
                   '|' + SimNao(Dados.EmpresasRefis.AsBoolean) +                       // 03 - Indicador de Optante pelo Refis.
                   '|' + SimNao(Dados.EmpresasPaes.AsBoolean) +                        // 04 - Indicador de Optante pelo Paes.
                   '|' + Dados.Empresas.FieldByName('Forma_Tributacao').AsString +     // 05 - A forma de tributação do IRPJ.
                   '|' + Copy(cApuracao.Items[cApuracao.ItemIndex], 1, 1) +            // 06 - Indicador do Período de Apuração do IRPJ e da CSLL.
                   '|' + Copy(cQualificacao.Items[cQualificacao.ItemIndex], 1, 2) +    // 07 - Qualificação da Pessoa Jurídica.
                   '|' + Copy(cFormaTrib.Items[cFormaTrib.ItemIndex], 1, 4) +          // 08 - Forma de Tributação no Período.
                   '|' +                                                               // 09 - Forma de Apuração da Estimativa Mensal.
                   '|' + Copy(cEscrituracao.Items[cEscrituracao.ItemIndex], 1, 1) +    // 10 - Escrituração.
                   '|' +                                                               // 11 - Tipo de Pessoa Jurídica Imune ou Isenta.
                   '|' +                                                               // 12 - Apuração do IRPJ para Imunes ou Isentas.
                   '|' +                                                               // 13 - Apuração da CSLL para Imunes ou Isentas.
                   '|' + SimNao(Dados.EmpresasExtincao_RTT.AsBoolean) +                // 14 - Optante pela extinção do RTT no ano-calendário de 2014.
                   '|' + SimNao(cDiferenca.Checked) +                                  // 15 - Existe diferenças entre a contabilidade societária e Fcont.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0010);
      Inc(mQtdeBloco0);
      
      Progresso2('REGISTRO 0010: PARÂMETROS DE TRIBUTAÇÃO.', 0);
end;

{* REGISTRO 0020 - PARÂMETROS COMPLEMENTARES *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0020;
Var
   mMatrizFilial: String;
begin
      Progresso2('REGISTRO 0020: ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA.', tEmpresas.RecordCount);
      mMatrizFilial := '0';

      Inc(mLinha);
      mRegistro := '|0020' +                                                     // 01 - REG.
                   '|' + Copy(cAliquota.Items[cAliquota.ItemIndex], 1, 1) +      // 02 - PJ Sujeita à Alíquota da CSLL de 9% ou 17% ou 20% em 31/12/2015.
                   '|' + tEmpresas.FieldByName('Qtde_SCP').AsString +            // 03 - Quantidade de SCP da PJ - Sócio Ostensivo de SCP - Total de SCP.
                   '|' + SimNao(cAdmFundos.Checked) +                            // 04 - Administradora de Fundos e Clubes de Investimento.
                   '|' + SimNao(cPartConsorcio.Checked) +                        // 05 -
                   '|' + SimNao(cOperExterior.Checked) +                         // 06 -
                   '|' + SimNao(cOperPessoa.Checked) +                           // 07 -
                   '|' + SimNao(cPJEnquad.Checked) +                             // 09 -
                   '|' + SimNao(cPartExt.Checked) +                              // 09 -
                   '|' + SimNao(cAtividadeRural.Checked) +                       // 10 -
                   '|' + SimNao(cLucroExploracao.Checked) +                      // 11 -
                   '|' + SimNao(cInsencao.Checked) +                             // 12 -
                   '|' + SimNao(cFINOR.Checked) +                                // 13 -
                   '|' + SimNao(cDoacoes.Checked) +                              // 14 -
                   '|' + SimNao(cEquivalencia.Checked) +                         // 15 -
                   '|' + SimNao(cVendas.Checked) +                               // 16 -
                   '|' + SimNao(cReceb.Checked) +                                // 17 -
                   '|' + SimNao(cAtivos.Checked) +                               // 18 -
                   '|' + SimNao(cExportadora.Checked) +                          // 19 -
                   '|' + SimNao(cPagamentos.Checked) +                           // 20 -
                   '|' + SimNao(cEletronico.Checked) +                           // 21 -
                   '|' + SimNao(cRoyaltiesRec.Checked) +                         // 22 -
                   '|' + SimNao(cRoyaltiesPag.Checked) +                         // 23 -
                   '|' + SimNao(cRendimentos.Checked) +                          // 24 -
                   '|' + SimNao(cRemeExt.Checked) +                              // 25 -
                   '|' + SimNao(cInovacao.Checked) +                             // 26 -
                   '|' + SimNao(cCapacitacao.Checked) +                          // 27 -
                   '|' + SimNao(cHabilitada.Checked) +                           // 28 -
                   '|' + SimNao(cPolo.Checked) +                                 // 29 -
                   '|' + SimNao(cZonaExp.Checked) +                              // 30 -
                   '|' + SimNao(cAreaLivre.Checked) +                            // 31 -
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0020);
      Inc(mQtdeBloco0);

      Progresso2('REGISTRO 0020: ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA.', 0);
end;

{* REGISTRO 0030 - DADOS CADASTRAIS *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0030;
begin
      Progresso2('REGISTRO 0030: DADOS CADASTRAIS.', 1);

      with Dados do begin
           Inc(mLinha);
           mRegistro := '|0030' +                                                     // 01 - REG.
                        '|' + Empresas.FieldByName('Natureza_Juridica').AsString +    // 02 - Código da natureza jurídica.
                        '|' + Empresas.FieldByName('CNAE').AsString +                 // 03 - Código CNAE.
                        '|' + Empresas.FieldByName('Rua').AsString +                  // 04 - Endereço.
                        '|' + Empresas.FieldByName('Rua_Numero').AsString +           // 05 - Número da Rua.
                        '|' + Empresas.FieldByName('Complemento').AsString +          // 06 - Complemento.
                        '|' + Empresas.FieldByName('Bairro').AsString +               // 07 - Bairro.
                        '|' + Empresas.FieldByName('Estado').AsString +               // 08 - UF.
                        '|' + Empresas.FieldByName('Municipio_Codigo').AsString +     // 09 - Código do município.
                        '|' + Empresas.FieldByName('CEP').AsString +                  // 10 - CEP.
                        '|' + Empresas.FieldByName('Telefone1').AsString +            // 11 - Telefone.
                        '|' + Empresas.FieldByName('Email').AsString +                // 12 - E-Mail.
                        '|';
      end;

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0030);
      Inc(mQtdeBloco0);

      Progresso2('REGISTRO 0030: ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA.', 0);
end;

{* REGISTRO 0035: IDENTIFICAÇÃO DAS SCP *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0035;
begin
      Progresso2('REGISTRO 0035: IDENTIFICAÇÃO DAS SCP.', 1);

      with Dados do begin
           Inc(mLinha);
           mRegistro := '|0035' +                                               // 01 - REG.
                        '|' + Empresas.FieldByName('CNPJ').AsString +           // 02 - Identificação da SCP.
                        '|' + Empresas.FieldByName('Razao_Social').AsString +   // 03 - Descrição da SCP.
                        '|';
      end;

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0035);
      Inc(mQtdeBloco0);

      Progresso2('REGISTRO 0035: ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA.', 0);
end;

{* REGISTRO 0930: IDENTIFICAÇÃO DOS SIGNATÁRIOS DA ECF *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0930;
begin
      Progresso2('REGISTRO 0930: IDENTIFICAÇÃO DOS SIGNATÁRIOS DA ECF.', 1);

      Inc(mLinha);
      mRegistro := '|0930' +                                               // 01 - REG.
                   '|' + tContador.FieldByName('Nome').AsString +          // 02 - Nome do Signatário.
                   '|' + tContador.FieldByName('CPF_CNPJ').AsString +      // 03 - CPF/CNPJ.
                   '|' + tContador.FieldByName('Qualificacao').AsString +  // 04 - Código de qualificação do assinante, conforme tabela do Sped.
                   '|' + tContador.FieldByName('CRC').AsString +           // 05 - Número de inscrição do contabilista no Conselho Regional de Contabilidade.
                   '|' + tContador.FieldByName('EMail').AsString +         // 06 - E-mail do signatário.
                   '|' + tContador.FieldByName('Telefone').AsString +      // 07 - Telefone.
                   '|';

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0930);
      Inc(mQtdeBloco0);

      Progresso2('REGISTRO 0930: IDENTIFICAÇÃO DOS SIGNATÁRIOS DA ECF.', 0);
end;

{* REGISTRO 0990 - ENCERRAMENTO DO BLOCO 0 *}
procedure TUtilitarios_ExportaSPED_ECF.Registro0990;
begin
      Janela_ProcessamentoSPED.Progresso.Position := 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 0990: ENCERRAMENTO DO BLOCO 0.';

      Inc(mLinha);
      Inc(mQtdeReg0990);
      Inc(mQtdeBloco0);

      Say( mLinha, 000, Arquivo, '|0990' );                              // 01 - REG.
      Say( mLinha, 005, Arquivo, '|'+InttoStr(mQtdeBloco0)+'|' );        // 02 - Quantidade total de linhas do Bloco 0.
end;

{REGISTRO J001: ABERTURA DO BLOCO J.}
procedure TUtilitarios_ExportaSPED_ECF.RegistroJ001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO J001: ABERTURA DO BLOCO J..';
      Inc(mLinha);
      mRegistro := '|J001' +                                                                       // 01 - REG.
                   '|' + Copy(cMovimento.Items[cMovimento.ItemIndex], 1, 1) +                      // 02 - Indicador de movimento.
                   '|';

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegJ001);
      Inc(mQtdeBlocoJ);
end;

{* REGISTRO J005: DEMONSTRAÇÕES CONTÁBEIS *}
procedure TUtilitarios_ExportaSPED_ECF.RegistroJ005;
begin
      Progresso3('REGISTRO J005: DEMONSTRAÇÕES CONTÁBEIS.', 1);

      Inc(mLinha);
      mRegistro := '|J005' +                                                                // 01 - REG.
                   '|'+ RemoveCaracter('/','', DatetoStr(mDataIni)) +                       // 03 - Data inicial das demonstrações contábeis.
                   '|'+ RemoveCaracter('/','', DatetoStr(mDataFim)) +                       // 04 - Data final das demonstrações contábeis.
                   '|1' +                                                                   // 04 - Identificação das demonstrações:1–pessoa jurídica a que se refere a escrituração./2–consolidadas ou de outras pessoas jurídicas.
                   '|' +                                                                    // 05 - Nome Empresarial.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegJ005);
      Inc(mQtdeBlocoJ);

      Progresso3('REGISTRO J005: DEMONSTRAÇÕES CONTÁBEIS.', 0);
end;

{* REGISTRO J900 - TERMO DE ENCERRAMENTO *}
procedure TUtilitarios_ExportaSPED_ECF.RegistroJ900;
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
procedure TUtilitarios_ExportaSPED_ECF.RegistroJ930;
var
   mQualif: string;
begin
      Progresso3('REGISTRO J930: IDENTIFICAÇÃO DOS SIGNATÁRIOS.', 1);

      Inc(mLinha);
      with dados do begin
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
                900 : mQualif := 'Contador/Contabilista';
                999 : mQualif := 'Outros';
           end;
                
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
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );
      end;

      Inc(mQtdeRegJ930);
      Inc(mQtdeBlocoJ);

      Progresso3('REGISTRO J930: IDENTIFICAÇÃO DOS SIGNATÁRIOS.', 0);
end;

{* REGISTRO J990 - ENCERRAMENTO DO BLOCO J *}
procedure TUtilitarios_ExportaSPED_ECF.RegistroJ990;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO J990: ENCERRAMENTO DO BLOCO J..';

      Inc(mLinha);
      Inc(mQtdeRegJ990);
      Inc(mQtdeBlocoJ);

      Say( mLinha, 000, Arquivo, '|J990' );                              // 01 - REG.
      Say( mLinha, 005, Arquivo, '|'+InttoStr(mQtdeBlocoJ)+'|' );        // 02 - Quantidade total de linhas do Bloco J.
end;

{REGISTRO 9001: ABERTURA DO BLOCO 9.}
procedure TUtilitarios_ExportaSPED_ECF.Registro9001;
begin
      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption  := 'REGISTRO 9001: ABERTURA DO BLOCO 9.';
      Inc(mLinha);
      mRegistro := '|9001';                   // 01 - REG.
      mRegistro := mRegistro + '|0|';         // 02 - Indicador de movimento (0-Com dados / 1-Sem dados).

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg9001);
      Inc(mQtdeBloco9);
end;

{REGISTRO 9900: REGISTROS DO ARQUIVO.}
procedure TUtilitarios_ExportaSPED_ECF.Registro9900;
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
      If mQtdeReg0010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0010|'+Trim(InttoStr(mQtdeReg0010))+'|' );
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
      If mQtdeReg0990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0990|'+Trim(InttoStr(mQtdeReg0990))+'|' );
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

      Say( mLinha, 000, Arquivo, '|9999|'+Trim(InttoStr(mQtdeBloco0+mQtdeBlocoC+mQtdeBlocoJ+mQtdeBloco9))+'|'+#13+#10 );
      Inc(mLinha);
end;


procedure TUtilitarios_ExportaSPED_ECF.cAnoIniChange(Sender: TObject);
begin
      cAnoFim.AsInteger := cAnoIni.AsInteger;
end;

Function TUtilitarios_ExportaSPED_ECF.LimpaConta(pConta: String): String;
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

// Retorna a conta analitica sem os ultimos número para poder somar o codigo reduzido ao final.
Function TUtilitarios_ExportaSPED_ECF.FinalConta(Conta, Mascara: String): String;
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

procedure TUtilitarios_ExportaSPED_ECF.Progresso2(Registro: String; RegTotal: Integer);
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

procedure TUtilitarios_ExportaSPED_ECF.Progresso3(Registro: String; RegTotal: Integer);
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

procedure TUtilitarios_ExportaSPED_ECF.Progresso4(Registro: String; RegTotal: Integer);
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

procedure TUtilitarios_ExportaSPED_ECF.cRetificadoraClick(Sender: TObject);
begin
     cRecibo.Enabled := cRetificadora.ItemIndex > 0;
     lRecibo.Enabled := cRetificadora.ItemIndex > 0;
end;

end.


