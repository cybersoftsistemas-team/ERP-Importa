unit frmUtilitarios_ExportaSPED_PISCOFINS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, RXSpin, RXCtrls,
  INIFiles, DateUtils, Funcoes, Shellapi, Math, Vcl.ComCtrls, Printers, MaskUtils, MemDS, Vcl.Mask, Vcl.Grids,  system.UITypes, Vcl.DBGrids;

type
  TUtilitarios_ExportaSPED_PISCOFINS = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    bSintegra: TButton;
    tItens: TMSQuery;
    tUnidades: TMSQuery;
    tNotas: TMSQuery;
    tNatureza: TMSQuery;
    tBeneficiario: TMSQuery;
    tItens2: TMSQuery;
    tApuracao: TMSQuery;
    tApuracao2: TMSQuery;
    tEmpresas: TMSQuery;
    tNotas2: TMSQuery;
    tDebitos: TMSQuery;
    cPagina: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cMsg: TMemo;
    StaticText2: TStaticText;
    cNomeArquivo: TEdit;
    StaticText3: TStaticText;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    cTipo: TRadioGroup;
    cSituacao: TRadioGroup;
    StaticText1: TStaticText;
    cRecibo: TEdit;
    cNatureza: TRadioGroup;
    cIncidencia: TRadioGroup;
    cMetodo: TRadioGroup;
    cContribuicao: TRadioGroup;
    cTipoApuracao: TRadioGroup;
    bImprimir: TButton;
    DataSource1: TDataSource;
    tPagarReceber: TMSQuery;
    tPagarReceber2: TMSQuery;
    tNCM: TMSQuery;
    tClassificacao: TMSQuery;
    cCriterio: TRadioGroup;
    cBlocoM: TRadioGroup;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    dstt: TDataSource;
    cVersao: TEdit;
    StaticText4: TStaticText;
    tContas: TMSQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bGerarClick(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure ZeraVariaveis;

    // Bloco 0.
    procedure Registro0000;
    procedure Registro0001;
    procedure Registro0100;
    procedure Registro0110;
    procedure Registro0111;
    procedure Registro0120;
    procedure Registro0140;
    procedure Registro0150(Empresa: Integer);
    procedure Registro0190(Empresa: Integer);
    procedure Registro0200(Empresa: Integer);
    procedure Registro0400(Empresa: Integer);
    procedure Registro0500;
    procedure Registro0600;
    procedure Registro0900;
    procedure Registro0990;

    // Bloco A.
    procedure RegistroA001;
    procedure RegistroA010;
    procedure RegistroA100(Empresa: Integer);
    procedure RegistroA170(Empresa, Nota: integer; Data: TDate; Fornecedor: integer; Emissor:string);
    procedure RegistroA990;

    // Bloco C.
    procedure RegistroC001;
    procedure RegistroC010;
    procedure RegistroC100(Empresa: Integer);
    procedure RegistroC120;
    procedure RegistroC170(Nota:Integer; DataEmissao: TDate; Beneficiario: Integer; Emissor: String; Empresa: Integer);
    procedure RegistroC180(Empresa: Integer);
    procedure RegistroC181(Codigo_Item, Empresa: Integer);
    procedure RegistroC185(Codigo_Item, Empresa: Integer);
    procedure RegistroC190(Empresa: Integer);
    procedure RegistroC191(Codigo_Item, Empresa: Integer);
    procedure RegistroC195(Codigo_Item, Empresa: Integer);
    procedure RegistroC199(Codigo_Item, Empresa: Integer);
    procedure RegistroC500(Empresa: Integer);
    procedure RegistroC501(Nota:Integer; Fornecedor: Integer; DataEmissao: TDateTime; Empresa: Integer);
    procedure RegistroC505(Nota:Integer; Fornecedor: Integer; DataEmissao: TDateTime; Empresa: Integer);
    procedure RegistroC990;

    // Bloco D.
    procedure RegistroD001;
    procedure RegistroD010;
    procedure RegistroD100(Empresa: Integer);
    procedure RegistroD101(Nota:Integer; DataEmissao: TDateTime; Fornecedor: Integer; Empresa: Integer);
    procedure RegistroD105(Nota:Integer; DataEmissao: TDateTime; Fornecedor: Integer; Empresa: Integer);
    procedure RegistroD990;

    // Bloco F.
    procedure RegistroF001;
    procedure RegistroF010;
    procedure RegistroF100;
    procedure RegistroF700(Empresa: Integer);
    procedure RegistroF990;

    // Bloco I.
    procedure RegistroI001;
    procedure RegistroI990;

    // Bloco M.
    procedure RegistroM001;
    procedure RegistroM100;
    procedure RegistroM105(TipoCredito: String; Aliquota: Real);
    procedure RegistroM200;
    procedure RegistroM205;
    procedure RegistroM210;
    procedure RegistroM400;
    procedure RegistroM410(CST: String);
    procedure RegistroM500;
    procedure RegistroM505(TipoCredito: String; Aliquota: Real);
    procedure RegistroM600;
    procedure RegistroM605;
    procedure RegistroM610;
    procedure RegistroM800;
    procedure RegistroM810(CST: String);
    procedure RegistroM990;

    // Bloco P.
    procedure RegistroP001;
    procedure RegistroP990;

    // Bloco 1.
    procedure Registro1001;
    procedure Registro1990;

    // Bloco 9.
    procedure Registro9001;
    procedure Registro9990;

    procedure cIncidenciaClick(Sender: TObject);
    procedure bSintegraClick(Sender: TObject);

    procedure Progresso1(Registro: String; RegTotal: Integer);
    procedure Progresso2(Registro: String);
    procedure Progresso3(Registro: String; RegTotal: Integer);
    procedure Progresso4(Registro: String; RegTotal: Integer);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha,
    i,
    // Bloco 0.
    mQtdeReg0000,
    mQtdeReg0001,
    mQtdeReg0100,
    mQtdeReg0110,
    mQtdeReg0111,
    mQtdeReg0120,
    mQtdeReg0140,
    mQtdeReg0150,
    mQtdeReg0190,
    mQtdeReg0200,
    mQtdeReg0205,
    mQtdeReg0206,
    mQtdeReg0208,
    mQtdeReg0400,
    mQtdeReg0450,
    mQtdeReg0500,
    mQtdeReg0600,
    mQtdeReg0900,
    mQtdeReg0990,
    mQtdeBloco0: Integer;

    // Bloco A.
    mQtdeRegA001,
    mQtdeRegA010,
    mQtdeRegA100,
    mQtdeRegA110,
    mQtdeRegA111,
    mQtdeRegA120,
    mQtdeRegA170,
    mQtdeRegA990,
    mQtdeBlocoA: Integer;

    // Bloco C.
    mQtdeRegC001,
    mQtdeRegC010,
    mQtdeRegC100,
    mQtdeRegC110,
    mQtdeRegC111,
    mQtdeRegC120,
    mQtdeRegC170,
    mQtdeRegC180,
    mQtdeRegC181,
    mQtdeRegC185,
    mQtdeRegC188,
    mQtdeRegC190,
    mQtdeRegC191,
    mQtdeRegC195,
    mQtdeRegC198,
    mQtdeRegC199,
    mQtdeRegC380,
    mQtdeRegC381,
    mQtdeRegC385,
    mQtdeRegC395,
    mQtdeRegC396,
    mQtdeRegC400,
    mQtdeRegC405,
    mQtdeRegC481,
    mQtdeRegC485,
    mQtdeRegC489,
    mQtdeRegC490,
    mQtdeRegC491,
    mQtdeRegC495,
    mQtdeRegC499,
    mQtdeRegC500,
    mQtdeRegC501,
    mQtdeRegC505,
    mQtdeRegC600,
    mQtdeRegC601,
    mQtdeRegC605,
    mQtdeRegC609,
    mQtdeRegC990,
    mQtdeBlocoC: Integer;

    // Bloco D.
    mQtdeRegD001,
    mQtdeRegD010,
    mQtdeRegD100,
    mQtdeRegD101,
    mQtdeRegD105,
    mQtdeRegD111,
    mQtdeRegD200,
    mQtdeRegD201,
    mQtdeRegD205,
    mQtdeRegD209,
    mQtdeRegD300,
    mQtdeRegD309,
    mQtdeRegD350,
    mQtdeRegD359,
    mQtdeRegD500,
    mQtdeRegD501,
    mQtdeRegD505,
    mQtdeRegD509,
    mQtdeRegD600,
    mQtdeRegD601,
    mQtdeRegD605,
    mQtdeRegD609,
    mQtdeRegD990,
    mQtdeBlocoD: Integer;

    // Bloco F.
    mQtdeRegF001,
    mQtdeRegF010,
    mQtdeRegF100,
    mQtdeRegF111,
    mQtdeRegF120,
    mQtdeRegF129,
    mQtdeRegF130,
    mQtdeRegF139,
    mQtdeRegF150,
    mQtdeRegF200,
    mQtdeRegF205,
    mQtdeRegF210,
    mQtdeRegF211,
    mQtdeRegF600,
    mQtdeRegF700,
    mQtdeRegF800,
    mQtdeRegF990,
    mQtdeBlocoF: Integer;

    // Bloco I.
    mQtdeRegI001,
    mQtdeRegI990,
    mQtdeBlocoI: Integer;

    // Bloco M.
    mQtdeRegM001,
    mQtdeRegM100,
    mQtdeRegM105,
    mQtdeRegM110,
    mQtdeRegM200,
    mQtdeRegM205,
    mQtdeRegM210,
    mQtdeRegM211,
    mQtdeRegM220,
    mQtdeRegM230,
    mQtdeRegM300,
    mQtdeRegM350,
    mQtdeRegM400,
    mQtdeRegM410,
    mQtdeRegM500,
    mQtdeRegM505,
    mQtdeRegM510,
    mQtdeRegM600,
    mQtdeRegM605,
    mQtdeRegM610,
    mQtdeRegM611,
    mQtdeRegM620,
    mQtdeRegM630,
    mQtdeRegM700,
    mQtdeRegM800,
    mQtdeRegM810,
    mQtdeRegM990,
    mQtdeBlocoM: Integer;

    // Bloco P.
    mQtdeRegP001,
    mQtdeRegP990,
    mQtdeBlocoP: Integer;

    // Bloco 1.
    mQtdeReg1001,
    mQtdeReg1010,
    mQtdeReg1020,
    mQtdeReg1100,
    mQtdeReg1101,
    mQtdeReg1102,
    mQtdeReg1200,
    mQtdeReg1210,
    mQtdeReg1220,
    mQtdeReg1300,
    mQtdeReg1500,
    mQtdeReg1501,
    mQtdeReg1502,
    mQtdeReg1600,
    mQtdeReg1610,
    mQtdeReg1620,
    mQtdeReg1700,
    mQtdeReg1800,
    mQtdeReg1809,
    mQtdeReg1990,
    mQtdeBloco1: Integer;

    // Bloco 9.
    mQtdeReg9001,
    mQtdeReg9900,
    mQtdeReg9990,
    mQtdeReg9999,
    mQtdeBloco9: Integer;

    // DIversas.
    mDataInventF,
    mDataInventI: TDate;
    mDataIni,
    mDataFim,
    mDir,
    mNomeArq: String;
    mRegistro: WideString;
    Arquivo  : TextFile;
    mCreditoPIS: Real;
    mCreditoPISUtil: Real;
    mCreditoCOFINS: Real;
    mCreditoCOFINSUtil: Real;
    mSQLMatriz : Widestring;
    mSQLMatriz2: Widestring;
    mSQLFilial : Widestring;
  end;

var
  Utilitarios_ExportaSPED_PISCOFINS: TUtilitarios_ExportaSPED_PISCOFINS;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmJanela_ProcessamentoSPED, frmImpressao_Visualizar, frmJanela_Processamento;

{$R *.dfm}

procedure TUtilitarios_ExportaSPED_PISCOFINS.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      With Dados do begin
           Configuracao.Open;
           cAno.Value     := YearOf(Date);
           cMes.ItemIndex := MonthOf(Date)-2;
           cPagina.ActivePageIndex := 0;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cNomeArquivo.Text       := aINI.ReadString ('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Arquivo'     , 'CYBERSOFT_EFD_PISCOFINS' );
      cVersao.Text            := aINI.ReadString ('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Versao'      , '' );
      cMes.ItemIndex          := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Mes'         , MonthOf(Date)-1 );
      cAno.AsInteger          := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Ano'         , YearOf(Date) );
      cTipo.ItemIndex         := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Tipo'        , -1 );
      cSituacao.ItemIndex     := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Situacao'    , -1 );
      cNatureza.ItemIndex     := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Natureza'    , -1 );
      cIncidencia.ItemIndex   := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Incidencia'  , -1 );
      cMetodo.ItemIndex       := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Metodo'      , -1 );
      cContribuicao.ItemIndex := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Contribuicao', -1 );
      cTipoApuracao.ItemIndex := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Apuracao'    , 0 );
      cCriterio.ItemIndex     := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Criterio'    , 0 );
      cBlocoM.ItemIndex       := aINI.ReadInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'BlocoM'      , 0 );
      aINI.Free;

      cMetodo.Enabled := cIncidencia.ItemIndex <> 1;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
   i : Integer;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Arquivo'     , cNomeArquivo.Text);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Mes'         , cMes.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Ano'         , cAno.AsInteger);
      aINI.WriteString ('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Versao'      , cVersao.Text);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Tipo'        , cTipo.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Situacao'    , cSituacao.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Natureza'    , cNatureza.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Incidencia'  , cIncidencia.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Metodo'      , cMetodo.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Contribuicao', cContribuicao.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Apuracao'    , cTipoApuracao.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'Criterio'    , cCriterio.ItemIndex);
      aINI.WriteInteger('SPED_PISCOFINS_'+InttoStr(Menu_Principal.mEmpresa), 'BlocoM'      , cBlocoM.ItemIndex);
      aINI.Free;

      Utilitarios_ExportaSPED_PISCOFINS.Release;
      Utilitarios_ExportaSPED_PISCOFINS := nil;

      Dados.Empresas.Open;
      Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      tNotas.SQL.Clear;
      tNotas.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tNotas.Execute;

      For i := 0 to ComponentCount -1 do begin
          If Components[i] is TMSQuery then  begin
             TMSQuery(Components[i]).Close;
          End;
      End;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.cTipoClick(Sender: TObject);
begin
     cRecibo.Enabled := cTipo.ItemIndex = 1;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.bGerarClick(Sender: TObject);
Var
    mErros: Integer;
    mTipo: String;
begin
     if trim(cVersao.text) = '' then begin
        MessageDlg('Campo "Versão" é obrogatório.', mtError, [mbOK], 0);
        cVersao.SetFocus;
        Abort;
     end;
     If (Trim(cRecibo.Text) = '') and (cTipo.ItemIndex = 1) then begin
        MessageDlg('Para escrituração retificadora e obrigatório o número do recibo de entrega anterior!'+#13+#13+'Informe o número do recibo para gerar o arquivo.', mtInformation, [mbOK], 0);
        cRecibo.SetFocus;
        Abort;
     End;
     If (cMetodo.ItemIndex = -1) and (cIncidencia.ItemIndex <> 1) then begin
        MessageDlg('Informe o "Método de apropriação de créditos comuns" para gerar o arquivo.', mtInformation, [mbOK], 0);
        cmetodo.SetFocus;
        Abort;
     End;

     Screen.Cursor := crSQLWait;
     Panel1.Caption := ' Aguarde...Fazendo verificação dos dados.';
     Application.ProcessMessages;
     
     With Dados,dmFiscal do Begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          // Seleciona todas as filiais da empresa "MATRIZ" em uso.
          tEmpresas.SQL.Clear;
          tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo <> :pEmpresa) AND (Consolidar = 1) AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
          tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          tEmpresas.ParamByName('pCNPJ').AsString     := Copy(EmpresasCNPJ.AsString, 1, 8);
          tEmpresas.Open;

          // Verifica se a empresa atual é a "MATRIZ".
          If EmpresasMatriz_Filial.AsBoolean = false then begin
             If MessageDlg('Atenção!'+#13+#13+'A Empresa atual não é "MATRIZ", o arquivo deve ser gerado pela Matriz'+#13+#13+'Deseja gerar o arquivo mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
          End;

          cPagina.ActivePageIndex := 0;
          mErros                  := 0;

          // Ajusta o campo Tipo_Nota dos itens igual ao tipo_nota das Notas Fiscais.
          tItens.SQL.Clear;
          tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
          tItens.SQL.Add('UPDATE NotasItens SET Tipo_Nota = (SELECT Tipo_Nota FROM NotasFiscais WHERE NotasItens.Nota = NotasFiscais.Numero AND NotasItens.Data = NotasFiscais.Data_Emissao)');
          tItens.SQL.Add('WHERE YEAR(Data) = :pAno AND MONTH(Data) = :pMes');

          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tItens.SQL.Add('UPDATE NotasItens SET Tipo_Nota = (SELECT Tipo_Nota FROM NotasFiscais WHERE NotasItens.Nota = NotasFiscais.Numero AND NotasItens.Data = NotasFiscais.Data_Emissao)');
                tItens.SQL.Add('WHERE YEAR(Data) = :pAno AND MONTH(Data) = :pMes');
                tEmpresas.Next;
          End;
          tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
          //tItens.SQL.SaveToFile('c:\temp\SCRIPT_PIS_COFINS.SQL');
          tItens.Execute;

          // Verifica se as alíquota básicas de PIS/COFINS Estão informadas em "Configuraçãoes".
          If ConfiguracaoPIS_AliquotaBasica.AsFloat <= 0 then begin
             Inc(mErros);
             cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': Informar a alíquota básica do PIS nas configurações do sistema.');
          End;
          If ConfiguracaoCOFINS_AliquotaBasica.AsFloat <= 0 then begin
             Inc(mErros);
             cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': Informar a alíquota básica da COFINS nas configurações do sistema.');
          End;

          // Verifica se os dados das contas contabeis estão informados. (PIS).
          If Trim(ConfiguracaoPIS_ContaCodigo.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Código da conta contábil" do PIS em configurações.');
          End;
          If Trim(ConfiguracaoPIS_ContaNivel.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Nível da conta contábil" do PIS em configurações.');
          End;
          If Trim(ConfiguracaoPIS_ContaNome.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Nome da conta contábil" do PIS em configurações.');
          End;
          If Trim(ConfiguracaoPIS_ContaIndicador.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Nome da conta contábil" do PIS em configurações.');
          End;
          If Trim(ConfiguracaoPIS_ContaNatureza.AsString) = '' then begin
             cMsg.Lines.Add('AViso: Informar a "Natureza da conta contábil" do PIS em configurações.');
          End;

          // Verifica se os dados das contas contabeis estão informados. (COFINS).
          If Trim(ConfiguracaoCOFINS_ContaCodigo.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Código da conta contábil" do COFINS em configurações.');
          End;
          If Trim(ConfiguracaoCOFINS_ContaNivel.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Nível da conta contábil" do COFINS em configurações.');
          End;
          If Trim(ConfiguracaoCOFINS_ContaNome.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Nome da conta contábil" do COFINS em configurações.');
          End;
          If Trim(ConfiguracaoCOFINS_ContaIndicador.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar o "Nome da conta contábil" do COFINS em configurações.');
          End;
          If Trim(ConfiguracaoCOFINS_ContaNatureza.AsString) = '' then begin
             cMsg.Lines.Add('Aviso: Informar a "Natureza da conta contábil" do COFINS em configurações.');
          End;

          // Verifica se as unidades de medida das notas estão cadastradas - "MATRIZ".
          tItens.SQL.Clear;
          tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
          tItens.SQL.Add('SELECT DISTINCT Unidade_Medida, Nota, Data_Entrada AS Data, ''TERCEIROS'' AS Emissao');
          tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
          tItens.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1)');
          tItens.SQL.Add('       AND (SELECT COUNT(*) FROM Cybersoft_Cadastros.dbo.UnidadeMedida UM WHERE(UM.Codigo = NTI.Unidade_Medida)) = 0' );
          tItens.SQL.Add('UNION ALL');
          tItens.SQL.Add('SELECT DISTINCT Unidade_Medida, Nota, Data, ''PRÓPRIA'' AS Emissao');
          tItens.SQL.Add('FROM   NotasItens NI');
          tItens.SQL.Add('WHERE  (YEAR(Data) = :pAno) AND (MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
          tItens.SQL.Add('       AND (SELECT COUNT(*) FROM Cybersoft_Cadastros.dbo.UnidadeMedida UM WHERE(UM.Codigo = NI.Unidade_Medida)) = 0');
          tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
          tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
          //tItens.SQL.SaveToFile('c:\temp\SPED_PIS_COFINS_Unidade.sql');
          tItens.Open;

          If tItens.RecordCount > 0 then begin
             If EmpresasMatriz_Filial.AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';
             cMsg.Lines.Add('');
             cMsg.Lines.Add(Empresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+Empresas.FieldByName('CNPJ').AsString + '    ('+mTipo+' '+Empresas.FieldByName('Numero_Filial').AsString+')');

             tItens.First;
             While not tItens.Eof do begin
                   Inc(mErros);
                   cMsg.Lines.Add('            Erro '+PoeZero(3, mErros)+': Unidade de Medida ( '+tItens.FieldByName('Unidade_Medida').AsString +')'+
                                   '  da nota fiscal de emissão ('+tItens.FieldByName('Emissao').AsString+') '+tItens.FieldByName('Nota').AsString+ ' de '+tItens.FieldByName('Data').AsString+' não cadastrada.');
                   tItens.Next;
             End;
          End;

          // Verifica se as unidades de medida das notas estão cadastradas - "FILIAIS".
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tItens.SQL.Clear;
                tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tItens.SQL.Add('SELECT DISTINCT Unidade_Medida');
                tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
                tItens.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1)');
                tItens.SQL.Add('       AND (SELECT COUNT(*) FROM Cybersoft_Cadastros.dbo.UnidadeMedida UM WHERE(UM.Codigo = NTI.Unidade_Medida)) = 0' );
                tItens.SQL.Add('UNION ALL');
                tItens.SQL.Add('SELECT DISTINCT Unidade_Medida');
                tItens.SQL.Add('FROM   NotasItens NI');
                tItens.SQL.Add('WHERE  (YEAR(Data) = :pAno) AND (MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
                tItens.SQL.Add('       AND (SELECT COUNT(*) FROM Cybersoft_Cadastros.dbo.UnidadeMedida UM WHERE(UM.Codigo = NI.Unidade_Medida)) = 0');
                tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
                tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
                tItens.Open;

                If tItens.RecordCount > 0 then begin
                   If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';
                   cMsg.Lines.Add('');
                   cMsg.Lines.Add(tEmpresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString + '    ('+mTipo+' '+tEmpresas.FieldByName('Numero_Filial').AsString+')');

                   tItens.First;
                   While not tItens.Eof do begin
                         Inc(mErros);
                         cMsg.Lines.Add('            Erro '+PoeZero(3, mErros)+': Unidade de Medida ( '+tItens.FieldByName('Unidade_Medida').AsString+ ' ) não cadastrada.');
                         tItens.Next;
                   End;
                End;
                tEmpresas.Next;
          End;

          // Verifica o tipo do item no cadastro dos produtos.
          // MATRIZ.
          tItens.SQL.Clear;
          tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
          tItens.SQL.Add('SELECT DISTINCT');
          tItens.SQL.Add('       Codigo_Mercadoria,');
          tItens.SQL.Add('       Nota,');
          tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria, 1, 80) AS Descricao,');
          tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item');
          tItens.SQL.Add('INTO #Temp');
          tItens.SQL.Add('FROM   NotasItens');
          tItens.SQL.Add('WHERE (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno) AND (Apuracao_PISCOFINS = 1) AND ((SELECT Tipo_Item FROM Produtos WHERE(Codigo = Notasitens.Codigo_Mercadoria)) IS NULL)');
          tItens.SQL.Add('UNION ALL');
          tItens.SQL.Add('SELECT DISTINCT');
          tItens.SQL.Add('       Codigo_Mercadoria,');
          tItens.SQL.Add('       Nota,');
          tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria, 1, 80) AS Descricao,');
          tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item');
          tItens.SQL.Add('FROM   NotasTerceirosItens');
          tItens.SQL.Add('WHERE (MONTH(NotasTerceirosItens.Data_Entrada) = :pMes)');
          tItens.SQL.Add('  AND (YEAR(NotasTerceirosItens.Data_Entrada) = :pAno)');
          tItens.SQL.Add('  AND (Apuracao_PISCOFINS = 1)');
          tItens.SQL.Add('  AND (SELECT Tipo_Item FROM Produtos WHERE Codigo = NotasTerceirosItens.Codigo_Mercadoria) IS NULL ');
          tItens.SQL.Add('  AND (SELECT ISNULL(Servico, 0) FROM Produtos WHERE Codigo = NotasTerceirosItens.Codigo_Mercadoria) <> 1');
          tItens.SQL.Add('SELECT DISTINCT');
          tItens.SQL.Add('       Codigo_Mercadoria,');
          tItens.SQL.Add('       Nota,');
          tItens.SQL.Add('       Descricao,');
          tItens.SQL.Add('       Tipo_Item');
          tItens.SQL.Add('FROM #Temp');
          tItens.SQL.Add('ORDER BY Codigo_Mercadoria');
          tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
          tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
          //tItens.SQL.SaveToFile('c:\temp\Verifica_TipoItem._MATRIZ.SQL');
          tItens.Open;

          If EmpresasMatriz_Filial.AsBoolean = true then
             mTipo := 'MATRIZ'
          else
             mTipo := 'FILIAL';

          If tItens.RecordCount > 0 then begin
             cMsg.Lines.Add(EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+'   ('+mTipo+' '+EmpresasNumero_Filial.AsString+')');
             cMsg.Lines.Add('Informar o campo "Tipo Item (SPED)" no cadastro do produto.');

             tItens.First;
             While not tItens.Eof do begin
                   Inc(mErros);
                   cMsg.Lines.Add('          Erro '+PoeZero(3, mErros)+'  Nota Fiscal:'+PoeZero(6,tItens.FieldByName('Nota').AsInteger)+'   Produto: '+tItens.FieldByName('Codigo_Mercadoria').AsString + ' - '+tItens.FieldByName('Descricao').AsString);
                   tItens.Next;
             End;

             cMsg.Lines.Add('                '+mTipo+' '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tItens.SQL.Clear;
                tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tItens.SQL.Add('SELECT DISTINCT');
                tItens.SQL.Add('       Codigo_Mercadoria,');
                tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria, 1, 80) AS Descricao,');
                tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item');
                tItens.SQL.Add('INTO #Temp');
                tItens.SQL.Add('FROM   NotasItens');
                tItens.SQL.Add('WHERE (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno) AND (Apuracao_PISCOFINS = 1) AND ((SELECT Tipo_Item FROM Produtos WHERE(Codigo = Notasitens.Codigo_Mercadoria)) IS NULL)');
                tItens.SQL.Add('UNION ALL');
                tItens.SQL.Add('SELECT DISTINCT');
                tItens.SQL.Add('       Codigo_Mercadoria,');
                tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria, 1, 80) AS Descricao,');
                tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item');
                tItens.SQL.Add('FROM   NotasTerceirosItens');
                tItens.SQL.Add('WHERE (MONTH(NotasTerceirosItens.Data_Entrada) = :pMes)');
                tItens.SQL.Add('  AND (YEAR(NotasTerceirosItens.Data_Entrada)  = :pAno)');
                tItens.SQL.Add('  AND (Apuracao_PISCOFINS = 1)');
                tItens.SQL.Add('  AND ((SELECT Tipo_Item FROM Produtos WHERE(Codigo = NotasTerceirosItens.Codigo_Mercadoria)) IS NULL) ');
                tItens.SQL.Add('  AND (SELECT ISNULL(Servico, 0) FROM Produtos WHERE Codigo = NotasTerceirosItens.Codigo_Mercadoria) <> 1');

                tItens.SQL.Add('SELECT DISTINCT');
                tItens.SQL.Add('       Codigo_Mercadoria,');
                tItens.SQL.Add('       Descricao,');
                tItens.SQL.Add('       Tipo_Item');
                tItens.SQL.Add('FROM #Temp');
                tItens.SQL.Add('ORDER BY Codigo_Mercadoria');
                tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
                tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
                //tItens.SQL.SaveToFile('c:\temp\Verifica_TipoItem._FILIAL.SQL');
                tItens.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tItens.RecordCount > 0 then begin
                   cMsg.Lines.Add(tEmpresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString + '    ('+mTipo+' '+tEmpresas.FieldByName('Numero_Filial').AsString+')');
                   cMsg.Lines.Add(EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+'   ('+mTipo+' '+EmpresasNumero_Filial.AsString+')');
                   cMsg.Lines.Add('Informar o campo "Tipo Item (SPED)" no cadastro do produto.');

                   tItens.First;
                   While not tItens.Eof do begin
                         Inc(mErros);
                         cMsg.Lines.Add('          Erro '+PoeZero(3, mErros)+'   Produto: '+tItens.FieldByName('Codigo_Mercadoria').AsString + ' - '+tItens.FieldByName('Descricao').AsString);
                         tItens.Next;
                   End;
                End;

                tEmpresas.Next;
          End;

          // Verifica se os tipos de nota fiscal estão com o campo de "Tipo_Credito /CST PIS /CST COFINS" informados.
          // MATRIZ.
          tNotas.SQL.Clear;
          tNotas.SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
          tNotas.SQL.Add('SELECT Codigo AS Tipo_Nota, Descricao, ISNULL(Tipo_Credito , 0) AS Tipo_Credito, CST_PIS, CST_COFINS');
          tNotas.SQL.Add('FROM   TipoNota');
          tNotas.SQL.Add('WHERE  (Saida_Entrada = 0) AND (Apuracao_PISCOFINS = 1) AND ((ISNULL(Tipo_Credito, 0) = 0) OR (ISNULL(CST_PIS, '''') = '''') OR (ISNULL(CST_COFINS,'''') = ''''))');
          tNotas.SQL.Add('       AND ( ISNULL((SELECT COUNT(*) FROM NotasFiscais WHERE(Tipo_Nota = Codigo) AND (YEAR(Data_Emissao) = :pAno) AND (MONTH(Data_Emissao) = :pMes)), 0) > 0)');
          tNotas.ParamByName('pAno').AsInteger   := cAno.AsInteger;
          tNotas.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
          tNotas.Open;

          If EmpresasMatriz_Filial.AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tNotas.RecordCount > 0 then begin
             tNotas.First;
             While not tNotas.Eof do begin
                   If tNotas.FieldByName('Tipo_Credito').AsInteger = 0  then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Tipo B.C.Crédito" no Tipo de Nota :('+tNotas.FieldByName('Tipo_Nota').AsString+')')
                   End;
                   If Trim(tNotas.FieldByName('CST_PIS').AsString) = '' then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST do PIS" no Tipo de Nota :('+tNotas.FieldByName('Tipo_Nota').AsString+')')
                   End;
                   If Trim(tNotas.FieldByName('CST_COFINS').AsString) = '' then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST da COFINS" no Tipo de Nota :('+tNotas.FieldByName('Tipo_Nota').AsString+')')
                   End;
                   cMsg.Lines.Add('                '+tNotas.FieldByName('Tipo_Nota').AsString + ' - '+tNotas.FieldByName('Descricao').AsString + '    ('+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
                   tNotas.Next;
             End;
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tNotas.SQL.Clear;
                tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tNotas.SQL.Add('SELECT Codigo AS Tipo_Nota, Descricao, ISNULL(Tipo_Credito , 0) AS Tipo_Credito, CST_PIS, CST_COFINS');
                tNotas.SQL.Add('FROM   TipoNota');
                tNotas.SQL.Add('WHERE  (Saida_Entrada = 0) AND (Apuracao_PISCOFINS = 1) AND ((ISNULL(Tipo_Credito, 0) = 0) OR (ISNULL(CST_PIS, '''') = '''') OR (ISNULL(CST_COFINS,'''') = ''''))');
                tNotas.SQL.Add('       AND ( ISNULL((SELECT COUNT(*) FROM NotasFiscais WHERE(Tipo_Nota = Codigo) AND (YEAR(Data_Emissao) = :pAno) AND (MONTH(Data_Emissao) = :pMes)), 0) > 0)');
                tNotas.ParamByName('pAno').AsInteger   := cAno.AsInteger;
                tNotas.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
                tNotas.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tNotas.RecordCount > 0 then begin
                   tNotas.First;
                   While not tNotas.Eof do begin
                         If tNotas.FieldByName('Tipo_Credito').AsInteger = 0  then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Tipo B.C.Crédito" no Tipo de Nota :('+tNotas.FieldByName('Tipo_Nota').AsString+')')
                         End;
                         If Trim(tNotas.FieldByName('CST_PIS').AsString) = '' then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST do PIS" no Tipo de Nota :('+tNotas.FieldByName('Tipo_Nota').AsString+')')
                         End;
                         If Trim(tNotas.FieldByName('CST_COFINS').AsString) = '' then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST da COFINS" no Tipo de Nota :('+tNotas.FieldByName('Tipo_Nota').AsString+')')
                         End;
                         cMsg.Lines.Add('                '+tNotas.FieldByName('Tipo_Nota').AsString + ' - '+tNotas.FieldByName('Descricao').AsString + '    ('+mTipo+': '+tEmpresas.FieldByName('Numero_Filial').AsString+' ' +tEmpresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString+')');
                         tNotas.Next;
                   End;
                End;
                tEmpresas.Next
          End;

          // Verifica se as classificações financeiras estão com o campo de "Tipo_Credito /CST PIS /CST COFINS" informados.
          // MATRIZ.
          tClassificacao.SQL.Clear;
          tClassificacao.SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
          tClassificacao.SQL.Add('SELECT Classificacao AS Codigo,');

          If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
             tClassificacao.SQL.Add('       (SELECT Descricao        FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Descricao,');
             tClassificacao.SQL.Add('       (SELECT BCCredito        FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Tipo_Credito,');
             tClassificacao.SQL.Add('       (SELECT CST_PIS          FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_PIS,');
             tClassificacao.SQL.Add('       (SELECT CST_COFINS       FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_COFINS,');
             tClassificacao.SQL.Add('       (SELECT Aliquota_PIS     FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_PIS,');
             tClassificacao.SQL.Add('       (SELECT Aliquota_COFINS  FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_COFINS,');
             tClassificacao.SQL.Add('       (SELECT Natureza_Receita FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Natureza_Receita');
             tClassificacao.SQL.Add('FROM PagarReceber');
             tClassificacao.SQL.Add('WHERE ((SELECT ISNULL(CST_PIS, '''') FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> '''')');
          end else begin
             tClassificacao.SQL.Add('       (SELECT Descricao        FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Descricao,');
             tClassificacao.SQL.Add('       (SELECT BCCredito        FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Tipo_Credito,');
             tClassificacao.SQL.Add('       (SELECT CST_PIS          FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_PIS,');
             tClassificacao.SQL.Add('       (SELECT CST_COFINS       FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_COFINS,');
             tClassificacao.SQL.Add('       (SELECT Aliquota_PIS     FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_PIS,');
             tClassificacao.SQL.Add('       (SELECT Aliquota_COFINS  FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_COFINS,');
             tClassificacao.SQL.Add('       (SELECT Natureza_Receita FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Natureza_Receita');
             tClassificacao.SQL.Add('FROM PagarReceber');
             tClassificacao.SQL.Add('WHERE ((SELECT ISNULL(CST_PIS, '''') FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> '''')');
          End;
          tClassificacao.SQL.Add('      AND (YEAR(Data_Documento) = :pAno) AND (MONTH(Data_Documento) = :pMes) AND (Provisorio <> 1)');
          tClassificacao.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tClassificacao.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
          tClassificacao.Open;

          If EmpresasMatriz_Filial.AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tClassificacao.RecordCount > 0 then begin
             tClassificacao.First;
             While not tClassificacao.Eof do begin
                   If tClassificacao.FieldByName('Tipo_Credito').AsInteger = 0  then begin
                      //Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Tipo B.C.Crédito" na Classificação Financeira : '+tClassificacao.FieldByName('Codigo').AsString+' - '+tClassificacao.FieldByName('Descricao').AsString);
                   End;
                   If Trim(tClassificacao.FieldByName('CST_COFINS').AsString) = '' then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST da COFINS" na Classificação Financeira : '+tClassificacao.FieldByName('Codigo').AsString+' - '+tClassificacao.FieldByName('Descricao').AsString);
                   End;
                   If Trim(tClassificacao.FieldByName('Natureza_Receita').AsString) = '' then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Código da Natureza da Receita" na Classificação Financeira : '+tClassificacao.FieldByName('Codigo').AsString+' - '+tClassificacao.FieldByName('Descricao').AsString);
                   End;
                   tClassificacao.Next;
             End;
             cMsg.Lines.Add('                : '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString);
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tClassificacao.SQL.Clear;
                tClassificacao.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tClassificacao.SQL.Add('SELECT Classificacao AS Codigo,');

                If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                   tClassificacao.SQL.Add('       (SELECT Descricao       FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Descricao,');
                   tClassificacao.SQL.Add('       (SELECT BCCredito       FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Tipo_Credito,');
                   tClassificacao.SQL.Add('       (SELECT CST_PIS         FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_PIS,');
                   tClassificacao.SQL.Add('       (SELECT CST_COFINS      FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_COFINS,');
                   tClassificacao.SQL.Add('       (SELECT Aliquota_PIS    FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_PIS,');
                   tClassificacao.SQL.Add('       (SELECT Aliquota_COFINS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_COFINS');
                   tClassificacao.SQL.Add('FROM PagarReceber');
                   tClassificacao.SQL.Add('WHERE ((SELECT ISNULL(CST_PIS, '''') FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> '''')');
                end else begin
                   tClassificacao.SQL.Add('       (SELECT Descricao       FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Descricao,');
                   tClassificacao.SQL.Add('       (SELECT BCCredito       FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Tipo_Credito,');
                   tClassificacao.SQL.Add('       (SELECT CST_PIS         FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_PIS,');
                   tClassificacao.SQL.Add('       (SELECT CST_COFINS      FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_COFINS,');
                   tClassificacao.SQL.Add('       (SELECT Aliquota_PIS    FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_PIS,');
                   tClassificacao.SQL.Add('       (SELECT Aliquota_COFINS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_COFINS');
                   tClassificacao.SQL.Add('FROM PagarReceber');
                   tClassificacao.SQL.Add('WHERE ((SELECT ISNULL(CST_PIS, '''') FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> '''')');
                End;
                tClassificacao.SQL.Add('      AND (YEAR(Data_Documento) = :pAno) AND (MONTH(Data_Documento) = :pMes) AND (Provisorio <> 1)');
                tClassificacao.ParamByName('pAno').AsInteger := cAno.AsInteger;
                tClassificacao.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
                tClassificacao.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tClassificacao.RecordCount > 0 then begin
                   tClassificacao.First;
                   While not tClassificacao.Eof do begin
                         If tClassificacao.FieldByName('Tipo_Credito').AsInteger = 0  then begin
                            //Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Tipo B.C.Crédito" na Classificação Financeira : '+tClassificacao.FieldByName('Codigo').AsString+' - '+tClassificacao.FieldByName('Descricao').AsString);
                         End;
                         If Trim(tClassificacao.FieldByName('CST_COFINS').AsString) = '' then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST da COFINS" na Classificação Financeira : '+tClassificacao.FieldByName('Codigo').AsString+' - '+tClassificacao.FieldByName('Descricao').AsString);
                         End;
                         tClassificacao.Next;
                   End;
                   cMsg.Lines.Add('                : '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString);
                End;
                tEmpresas.Next
          End;

          // Verifica se as referências fiscais estão com o campo de "Tipo_Credito /CST PIS /CST COFINS" informados.
          // MATRIZ.
          tNotas.SQL.Clear;
          tNotas.SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
          tNotas.SQL.Add('SELECT Codigo AS Tipo_Nota, Descricao, ISNULL(Tipo_Credito , 0) AS Tipo_Credito, CSTPIS, CSTCOFINS');
          tNotas.SQL.Add('FROM   ReferenciasFiscais');
          tNotas.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1) AND ((ISNULL(Tipo_Credito, 0) = 0) OR (ISNULL(CSTPIS, '''') = '''') OR (ISNULL(CSTCOFINS,'''') = ''''))');
          tNotas.SQL.Add('       AND (SUBSTRING(Natureza_Dentro, 1, 1) < ''5'' AND SUBSTRING(Natureza_Fora, 1, 1) < ''6'') ');
          tNotas.SQL.Add('       AND ( ISNULL((SELECT COUNT(*) FROM NotasTerceiros WHERE(Referencia_Fiscal = Codigo) AND (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes)), 0) > 0)');
          tNotas.SQL.Add('UNION ALL');
          tNotas.SQL.Add('SELECT Codigo AS Tipo_Nota, Descricao, ISNULL(Tipo_Credito , 0) AS Tipo_Credito, CSTPIS, CSTCOFINS');
          tNotas.SQL.Add('FROM   ReferenciasFiscais');
          tNotas.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1) AND ((ISNULL(CSTPIS, '''') = '''') OR (ISNULL(CSTCOFINS,'''') = ''''))');
          tNotas.SQL.Add('       AND ( ISNULL((SELECT COUNT(*) FROM NotasServico WHERE(Referencia_Fiscal = Codigo) AND (YEAR(Data_Emissao) = :pAno) AND (MONTH(Data_Emissao) = :pMes)), 0) > 0)');
          tNotas.ParamByName('pAno').AsInteger   := cAno.AsInteger;
          tNotas.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
          //tNotas.SQL.SavetoFile('c:\temp\PIS_COFINS_Verifica_Tipo_Credito.sql');
          tNotas.Open;

          If EmpresasMatriz_Filial.AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tNotas.RecordCount > 0 then begin
             tNotas.First;
             While not tNotas.Eof do begin
                   If tNotas.FieldByName('Tipo_Credito').AsInteger = 0  then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Tipo B.C.Crédito" na Referência Fiscal')
                   End;
                   If Trim(tNotas.FieldByName('CSTPIS').AsString) = '' then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST do PIS" na Referência Fiscal')
                   End;
                   If Trim(tNotas.FieldByName('CSTCOFINS').AsString) = '' then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST da COFINS" na Referência Fiscal')
                   End;
                   cMsg.Lines.Add('                '+tNotas.FieldByName('Tipo_Nota').AsString + ' - '+tNotas.FieldByName('Descricao').AsString + '    ('+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+' ('+EmpresasEstado.AsString+')   CNPJ:'+EmpresasCNPJ.AsString+')');
                   tNotas.Next;
             End;
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tNotas.SQL.Clear;
                tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tNotas.SQL.Add('SELECT Codigo AS Tipo_Nota, Descricao, ISNULL(Tipo_Credito , 0) AS Tipo_Credito, CSTPIS, CSTCOFINS');
                tNotas.SQL.Add('FROM   ReferenciasFiscais');
                tNotas.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1) AND ((ISNULL(Tipo_Credito, 0) = 0) OR (ISNULL(CSTPIS, '''') = '''') OR (ISNULL(CSTCOFINS,'''') = ''''))');
                tNotas.SQL.Add('       AND ( ISNULL((SELECT COUNT(*) FROM NotasTerceiros WHERE(Referencia_Fiscal = Codigo) AND (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes)), 0) > 0)');
                tNotas.SQL.Add('UNION ALL');
                tNotas.SQL.Add('SELECT Codigo AS Tipo_Nota, Descricao, ISNULL(Tipo_Credito , 0) AS Tipo_Credito, CSTPIS, CSTCOFINS');
                tNotas.SQL.Add('FROM   ReferenciasFiscais');
                tNotas.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1) AND ((ISNULL(CSTPIS, '''') = '''') OR (ISNULL(CSTCOFINS,'''') = ''''))');
                tNotas.SQL.Add('       AND ( ISNULL((SELECT COUNT(*) FROM NotasServico WHERE(Referencia_Fiscal = Codigo) AND (YEAR(Data_Emissao) = :pAno) AND (MONTH(Data_Emissao) = :pMes)), 0) > 0)');
                tNotas.ParamByName('pAno').AsInteger   := cAno.AsInteger;
                tNotas.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
                tNotas.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tNotas.RecordCount > 0 then begin
                   tNotas.First;
                   While not tNotas.Eof do begin
                         If tNotas.FieldByName('Tipo_Credito').AsInteger = 0  then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "Tipo B.C.Crédito" na Referência Fiscal')
                         End;
                         If Trim(tNotas.FieldByName('CSTPIS').AsString) = '' then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST do PIS" na Referência Fiscal')
                         End;
                         If Trim(tNotas.FieldByName('CSTCOFINS').AsString) = '' then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar "CST da COFINS" na Referência Fiscal')
                         End;
                         cMsg.Lines.Add('                '+tNotas.FieldByName('Tipo_Nota').AsString + ' - '+tNotas.FieldByName('Descricao').AsString + '    '+mTipo+': '+tEmpresas.FieldByName('Numero_Filial').AsString+' ' +tEmpresas.FieldByName('Razao_Social').AsString+'('+ tEmpresas.FieldByName('Estado').AsString+ ')  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString+')');
                         tNotas.Next;
                   End;
                End;
                tEmpresas.Next
          End;

          // Verifica se os itens da nota fiscal de terceiros tem Alíquotas e CST de PISCOFINS.
          // MATRIZ.
          tNotas.SQL.Clear;
          tNotas.SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
          tNotas.SQL.Add('SELECT Nota, Data_Entrada, CST_PIS, Aliquota_PIS, CST_COFINS, Aliquota_COFINS');
          tNotas.SQL.Add('FROM   NotasTerceirosItens NTI');
          tNotas.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1)');
          tNotas.SQL.Add('AND    (SELECT ISNULL(Provisoria, 0) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) = 0');
          tNotas.SQL.Add('AND    (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes)');
          tNotas.SQL.Add('AND    (ISNULL(CST_PIS, '''') = '''' OR ISNULL(CST_COFINS,'''') = '''' OR ISNULL(Aliquota_PIS, 0) = 0 OR ISNULL(ALiquota_COFINS, 0) = 0)');
          tNotas.SQL.Add('AND    CST_PIS NOT IN(''06'',''07'',''08'',''09'',''49'',''70'',''71'',''72'',''73'',''74'',''98'',''99'') ');
          tNotas.SQL.Add('ORDER BY Nota');
          tNotas.ParamByName('pAno').AsInteger   := cAno.AsInteger;
          tNotas.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
          //tNotas.SQL.SaveToFile('c:\temp\PIS_COFINS_Aliquota_PIS.sql');
          tNotas.Open;

          If Empresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tNotas.RecordCount > 0 then begin
             tNotas.First;
             While not tNotas.Eof do begin
                   If Trim(tNotas.FieldByName('CST_PIS').AsString) = ''  then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a CST do PIS na Nota Fiscal de Terceiros Nº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                   End;
                   If (tNotas.FieldByName('Aliquota_PIS').AsFloat <= 0) and (tNotas.FieldByName('CST_PIS').AsString <> '98') then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a Alíquota do PIS na Nota Fiscal de Terceiros Nº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                   End;
                   If Trim(tNotas.FieldByName('CST_COFINS').AsString) = ''  then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a CST da COFINS na Nota Fiscal de Terceiros Nº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                   End;
                   If (tNotas.FieldByName('Aliquota_COFINS').AsFloat <= 0) and (tNotas.FieldByName('CST_COFINS').AsString <> '98') then begin
                      Inc(mErros);
                      cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a Alíquota da COFINS na Nota Fiscal de Terceiros Nº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                   End;

                   cMsg.Lines.Add('                '+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
                   tNotas.Next;
             End;
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tNotas.SQL.Clear;
                tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tNotas.SQL.Add('SELECT Nota, Data_Entrada, CST_PIS, Aliquota_PIS, CST_COFINS, Aliquota_COFINS');
                tNotas.SQL.Add('FROM   NotasTerceirosItens NTI');
                tNotas.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1)');
                tNotas.SQL.Add('AND    (SELECT ISNULL(Provisoria, 0) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) = 0');
                tNotas.SQL.Add('AND    (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes)');
                tNotas.SQL.Add('AND    (ISNULL(CST_PIS, '''') = '''' OR ISNULL(CST_COFINS,'''') = '''' OR ISNULL(Aliquota_PIS, 0) = 0 OR ISNULL(Aliquota_COFINS, 0) = 0)');
                tNotas.SQL.Add('AND    CST_PIS NOT IN(''06'',''07'',''08'',''09'',''49'',''70'',''71'',''72'',''73'',''74'',''98'',''99'') ');
                tNotas.SQL.Add('ORDER BY Nota');
                tNotas.ParamByName('pAno').AsInteger   := cAno.AsInteger;
                tNotas.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
                tNotas.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tNotas.RecordCount > 0 then begin
                   tNotas.First;
                   While not tNotas.Eof do begin
                         If Trim(tNotas.FieldByName('CST_PIS').AsString) = ''  then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a CST do PIS na Nota Fiscal de Terceiros Nº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                         End;
                         If tNotas.FieldByName('Aliquota_PIS').AsFloat <= 0  then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a Alíquota do PIS na Nota Fiscal de Terceiros Nº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                         End;
                         If Trim(tNotas.FieldByName('CST_COFINS').AsString) = ''  then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a CST da COFINS na Nota Fiscal de TerceirosNº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                         End;
                         If tNotas.FieldByName('Aliquota_COFINS').AsFloat <= 0  then begin
                            Inc(mErros);
                            cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar a Alíquota da COFINS na Nota Fiscal de TerceirosNº '+tNotas.FieldByName('Nota').AsString+ ' de '+tNotas.FieldByName('Data_Entrada').AsString);
                         End;

                         cMsg.Lines.Add('                '+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
                         tNotas.Next;
                   End;
                End;
                tEmpresas.Next;
          End;

          // Verifica se o campo "Apuracao_PISCOFINS" da tabela "NotasItens" esta igual a tabela "NotasFiscais".
          tItens.SQL.Clear;
          tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
          tItens.SQL.Add('SELECT Nota, Data, Codigo_Mercadoria, Item, Tipo_Nota');
          tItens.SQL.Add('FROM NotasItens');
          tItens.SQL.Add('WHERE (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
          tItens.SQL.Add('      AND ((SELECT Apuracao_PISCOFINS FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) <> Apuracao_PISCOFINS)');
          tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
          tItens.Open;

          If Empresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tItens.RecordCount > 0 then begin
             cMsg.Lines.Add('Campo indicador "Apuracao_PISCOFINS" do item diferente da nota fiscal');
             tItens.First;
             While not tItens.Eof do begin
                   Inc(mErros);
                   cMsg.Lines.Add('                Erro '+PoeZero(3, mErros)+': '+'Nota Fiscal nº '+tItens.FieldByName('Nota').AsString+ ' de '+tItens.FieldByName('Data').AsString+'     Item:'+tItens.FieldByName('Item').AsString+ '     Codigo:'+tItens.FieldByName('Nota').AsString+ '   Tipo Nota:'+tItens.FieldByName('Tipo_Nota').AsString);
                   tItens.Next;
             End;
             cMsg.Lines.Add('                '+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tItens.SQL.Clear;
                tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tItens.SQL.Add('SELECT Nota, Data, Codigo_Mercadoria, Item');
                tItens.SQL.Add('FROM NotasItens');
                tItens.SQL.Add('WHERE (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
                tItens.SQL.Add('      AND ((SELECT Apuracao_PISCOFINS FROM NotasFiscais WHERE(Numero = Nota AND Data_Emissao = Data)) <> Apuracao_PISCOFINS)');
                tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
                tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
                //tItens.sql.SaveToFile('c:\temp\SPED_PIS_COFINS_tItens.sql');
                tItens.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tItens.RecordCount > 0 then begin
                   cMsg.Lines.Add('Campo indicador "Apuracao_PISCOFINS" do item diferente da nota fiscal');
                   tItens.First;
                   While not tItens.Eof do begin
                         Inc(mErros);
                         cMsg.Lines.Add('                Erro '+PoeZero(3, mErros)+': '+'Nota Fiscal nº '+tItens.FieldByName('Nota').AsString+ ' de '+tItens.FieldByName('Data').AsString+'     Item:'+tItens.FieldByName('Item').AsString+ '     Codigo:'+tItens.FieldByName('Nota').AsString);
                         tItens.Next;
                   End;
                   cMsg.Lines.Add('                '+mTipo+': '+tEmpresas.FieldByName('Numero_Filial').AsString+' ' +tEmpresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString+')');
                End;
                tEmpresas.Next;
          End;
          
          // Verifica se as NCM'S tem o campo gênero informado.
          // MATRIZ.
          tNCM.SQL.Clear;
          tNCM.SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
          tNCM.SQL.Add('SELECT DISTINCT NCM');
          tNCM.SQL.Add('FROM   NotasItens NTI');
          tNCM.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1)');
          tNCM.SQL.Add('       AND (ISNULL(NTI.NCM, '''') <> '''' AND NTI.NCM <> ''00000000'')');
          tNCM.SQL.Add('       AND (MONTH(NTI.Data) = :pMes AND YEAR(NTI.Data) = :pAno)');
          tNCM.SQL.Add('       AND (SELECT DISTINCT Genero FROM NCM WHERE NCM.NCM = NTI.NCM) IS NULL');
          tNCM.SQL.Add('UNION ALL');
          tNCM.SQL.Add('SELECT DISTINCT NCM');
          tNCM.SQL.Add('FROM   NotasTerceirosItens NTI');
          tNCM.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1)');
          tNCM.SQL.Add('       AND (ISNULL(NTI.NCM, '''') <> '''' AND NTI.NCM <> ''00000000'')');
          tNCM.SQL.Add('       AND (MONTH(NTI.Data_Entrada) = :pMes AND YEAR(NTI.Data_Entrada) = :pAno)');
          tNCM.SQL.Add('       AND (SELECT DISTINCT Genero FROM NCM WHERE NCM.NCM = NTI.NCM) IS NULL');
          tNCM.SQL.Add('       AND Natureza_Codigo NOT IN(''1253'', ''2253'')');
          tNCM.SQL.Add('ORDER BY NCM');
          tNCM.ParamByName('pAno').AsInteger   := cAno.AsInteger;
          tNCM.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
          //tNCM.SQL.SaveToFile('c:\Temp\Verifica_NCM.SQL');
          tNCM.Open;

          If Empresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tNCM.RecordCount > 0 then begin
             tNCM.First;
             While not tNCM.Eof do begin
                   Inc(mErros);
                   cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar o gênero do produto no cadastro da NCM Nº '+tNCM.FieldByName('NCM').AsString);
                   tNCM.Next;
             End;
             cMsg.Lines.Add('                '+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tNCM.SQL.Clear;
                tNCM.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tNCM.SQL.Add('SELECT DISTINCT NCM');
                tNCM.SQL.Add('FROM   NotasItens NTI');
                tNCM.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1)');
                tNCM.SQL.Add('       AND (ISNULL(NTI.NCM, '''') <> '''' AND NTI.NCM <> ''00000000'')');
                tNCM.SQL.Add('       AND (MONTH(NTI.Data) = :pMes AND YEAR(NTI.Data) = :pAno)');
                tNCM.SQL.Add('       AND (SELECT DISTINCT Genero FROM NCM WHERE NCM.NCM = NTI.NCM) IS NULL');
                tNCM.SQL.Add('UNION ALL');
                tNCM.SQL.Add('SELECT DISTINCT NCM');
                tNCM.SQL.Add('FROM   NotasTerceirosItens NTI');
                tNCM.SQL.Add('WHERE  (Apuracao_PISCOFINS = 1)');
                tNCM.SQL.Add('       AND (ISNULL(NTI.NCM, '''') <> '''' AND NTI.NCM <> ''00000000'')');
                tNCM.SQL.Add('       AND (MONTH(NTI.Data_Entrada) = :pMes AND YEAR(NTI.Data_Entrada) = :pAno)');
                tNCM.SQL.Add('       AND (SELECT DISTINCT Genero FROM NCM WHERE NCM.NCM = NTI.NCM) IS NULL');
                tNCM.SQL.Add('ORDER BY NCM');
                tNCM.ParamByName('pAno').AsInteger   := cAno.AsInteger;
                tNCM.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
                tNCM.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tNCM.RecordCount > 0 then begin
                   tNCM.First;
                   While not tNCM.Eof do begin
                         Inc(mErros);
                         cMsg.Lines.Add('Erro '+PoeZero(3, mErros)+': '+'Informar o gênero do produto no cadastro da NCM Nº '+tNCM.FieldByName('NCM').AsString);
                         tNCM.Next;
                   End;
                   cMsg.Lines.Add('                '+mTipo+': '+tEmpresas.FieldByName('Numero_Filial').AsString+' ' +tEmpresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString+')');
                End;

                tEmpresas.Next;
          End;

          // Verifica se as NCM'S dos itens estão iguais ao cadastro do produto.
          // MATRIZ.
          tNCM.SQL.Clear;
          tNCM.SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
          tNCM.SQL.Add('SELECT Nota,');
          tNCM.SQL.Add('       Data_Emissao,');
          tNCM.SQL.Add('       Data_Entrada,');
          tNCM.SQL.Add('       Codigo_Mercadoria,');
          tNCM.SQL.Add('       NCM AS NCM_Nota,');
          tNCM.SQL.Add('       (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AS NCM_Produto,');
          tNCM.SQL.Add('       ''Terceiros'' AS Emissao');
          tNCM.SQL.Add('FROM NotasTerceirosItens NTI');
          tNCM.SQL.Add('WHERE NTI.NCM <> (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AND (MONTH(Data_Entrada) = :pMes AND YEAR(Data_Entrada) = :pAno) AND (Apuracao_PISCOFINS = 1)');
          tNCM.SQL.Add('UNION ALL');
          tNCM.SQL.Add('SELECT Nota,');
          tNCM.SQL.Add('       Data,');
          tNCM.SQL.Add('       NULL AS Data_Entrada,');
          tNCM.SQL.Add('       Codigo_Mercadoria,');
          tNCM.SQL.Add('       NCM AS NCM_Nota,');
          tNCM.SQL.Add('       (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AS NCM_Produto,');
          tNCM.SQL.Add('       ''Própria''');
          tNCM.SQL.Add('FROM NotasItens NTI');
          tNCM.SQL.Add('WHERE NTI.NCM <> (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AND (MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1)');
          tNCM.SQL.Add('ORDER BY Nota');
          tNCM.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tNCM.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
          //tNCM.SQL.SaveToFile('c:\Temp\Verifica_NCM_Produto.SQL');
          tNCM.Open;

          If Empresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

          If tNCM.RecordCount > 0 then begin
             tNCM.First;
             cMsg.Lines.Add('NCM da nota fiscal diferente do cadastro de produtos');
             While not tNCM.Eof do begin
                   //Inc(mErros);
                   cMsg.Lines.Add('Aviso: '+PoeZero(3, mErros)+': '+'Aviso NCM: '+FormatMaskText('####.##.##;0', tNCM.FieldByName('NCM_Nota').AsString)+'   Nota '+tNCM.FieldByName('Nota').AsString+' de ' + tNCM.FieldByName('Data_Emissao').AsString+' '+tNCM.FieldByName('Emissao').AsString+'    Produto:' + tNCM.FieldByName('Codigo_Mercadoria').AsString+ '  NCM:'+FormatMaskText('####.##.##;0', tNCM.FieldByName('NCM_Produto').AsString));
                   tNCM.Next;
             End;
             cMsg.Lines.Add('                '+mTipo+': '+EmpresasNumero_Filial.AsString+' ' +EmpresasRazao_Social.AsString+ '  CNPJ:'+EmpresasCNPJ.AsString+')');
          End;

          // FILIAIS.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tNCM.SQL.Clear;
                tNCM.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
                tNCM.SQL.Add('SELECT Nota,');
                tNCM.SQL.Add('       Data_Emissao,');
                tNCM.SQL.Add('       Data_Entrada,');
                tNCM.SQL.Add('       Codigo_Mercadoria,');
                tNCM.SQL.Add('       NCM AS NCM_Nota,');
                tNCM.SQL.Add('       (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AS NCM_Produto,');
                tNCM.SQL.Add('       ''Terceiros'' AS Emissao');
                tNCM.SQL.Add('FROM NotasTerceirosItens NTI');
                tNCM.SQL.Add('WHERE NTI.NCM <> (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AND (MONTH(Data_Entrada) = :pMes AND YEAR(Data_Entrada) = :pAno) AND (Apuracao_PISCOFINS = 1)');
                tNCM.SQL.Add('UNION ALL');
                tNCM.SQL.Add('SELECT Nota,');
                tNCM.SQL.Add('       Data,');
                tNCM.SQL.Add('       NULL AS Data_Entrada,');
                tNCM.SQL.Add('       Codigo_Mercadoria,');
                tNCM.SQL.Add('       NCM AS NCM_Nota,');
                tNCM.SQL.Add('       (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AS NCM_Produto,');
                tNCM.SQL.Add('       ''Própria''');
                tNCM.SQL.Add('FROM NotasItens NTI');
                tNCM.SQL.Add('WHERE NTI.NCM <> (SELECT NCM FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) AND (MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Apuracao_PISCOFINS = 1)  AND (Cancelada <> 1)');
                tNCM.SQL.Add('ORDER BY Nota');
                tNCM.ParamByName('pAno').AsInteger   := cAno.AsInteger;
                tNCM.ParamByName('pMes').AsInteger   := cMes.ItemIndex + 1;
                //tNCM.SQL.SaveToFile('c:\Temp\Verifica_NCM_Produto.SQL');
                tNCM.Open;

                If tEmpresas.FieldByName('Matriz_Filial').AsBoolean = true then mTipo := 'MATRIZ' else mTipo := 'FILIAL';

                If tNCM.RecordCount > 0 then begin
                   cMsg.Lines.Add('NCM da nota fiscal diferente do cadastro de produtos');
                   tNCM.First;
                   While not tNCM.Eof do begin
                         //Inc(mErros);
                         cMsg.Lines.Add('Aviso '+PoeZero(3, mErros)+': '+'Erro de NCM: '+FormatMaskText('####.##.##;0', tNCM.FieldByName('NCM_Nota').AsString)+'   Nota '+tNCM.FieldByName('Nota').AsString+' de ' + tNCM.FieldByName('Data_Emissao').AsString+' '+tNCM.FieldByName('Emissao').AsString+'    Produto:' + tNCM.FieldByName('Codigo_Mercadoria').AsString+ '  NCM:'+FormatMaskText('####.##.##;0', tNCM.FieldByName('NCM_Produto').AsString));
                         tNCM.Next;
                   End;
                   cMsg.Lines.Add('                '+mTipo+': '+tEmpresas.FieldByName('Numero_Filial').AsString+' ' +tEmpresas.FieldByName('Razao_Social').AsString+ '  CNPJ:'+tEmpresas.FieldByName('CNPJ').AsString+')');
                End;

                tEmpresas.Next;
          End;

          // Verifica o campo "Apuracao_PISCOFINS" da tabela "NotasItens" e ajusta.
          If mErros > 0 then begin
             bGerar.Enabled := false;
             ShowMessage('Existem erros que precisam ser corrigidos para poder gerar o arquivo do SPED PIS COFINS!');
             Screen.Cursor := crDefault;
             Abort;
          End;

          Panel1.Caption := '';

          // Zerando os contadores de registros.
          mQtdeBloco0 := 0;
          mDir        := Trim(Dados.ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
          If EmpresasMatriz_Filial.AsBoolean = true then
             mDir := mDir + '_Matriz'
          else
             mDir := mDir + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

          If not DirectoryExists(mDir) then ForceDirectories(mDir);

          mNomeArq := Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
          If Dados.EmpresasMatriz_Filial.AsBoolean = true then
             mNomeArq := mNomeArq + '_Matriz'
          else
             mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

          mNomeArq := mDir + '\'+ mNomeArq +'_'+cNomeArquivo.Text+'_'+Trim(cMes.Text)+cAno.Text + '_0001.TXT';

          If FileExists(mNomeArq) then DeleteFile(mNomeArq);
          AssignFile(Arquivo, mNomeArq);
          ReWrite(Arquivo);

          ZeraVariaveis;

          LinhaAtual   := 0;
          ColunaAtual  := 0;
          mLinha       := 0;
          mDataIni     := '01/' + PoeZero(2,cMes.ItemIndex+1) +'/'+ PoeZero(4, cAno.AsInteger);
          mDataFim     := DatetoStr(UltimoDiaMes(StrtoDate(mDataIni)));

          Janela_ProcessamentoSPED := TJanela_ProcessamentoSPED.Create(Self);
          Janela_ProcessamentoSPED.Progresso.Position := 0;
          Janela_ProcessamentoSPED.Progresso.max      := 27;          // Quantidade de registros.
          Janela_ProcessamentoSPED.lProcesso.Caption  := 'Gerando...'+cNomeArquivo.Text;
          Janela_ProcessamentoSPED.Show;

          // BLOCO 0: (Abertura, Identificação e Referências).
          If Funcoes.Cancelado = false then Registro0000;
                      If Funcoes.Cancelado = false then Registro0001;
                                  If Funcoes.Cancelado = false then Registro0100;
                                  If Funcoes.Cancelado = false then Registro0110;
                                  //If Funcoes.Cancelado = false then Registro0120;
                                            //Registro0111;
                                  If Funcoes.Cancelado = false then Registro0140;
                                            //Registro0150;
                                            //Registro0190;
                                            //Registro0200;
                                            //Registro0400;
                                  If Funcoes.Cancelado = false then Registro0500;
                                  //Registro0600;
                                  if cTipo.ItemIndex = 1 then Registro0900;
                      If Funcoes.Cancelado = false then Registro0990;

          // BLOCO A: (Documentos Fiscais - Serviços "Não Sujeitos ao ICMS").
                      If Funcoes.Cancelado = false then RegistroA001;
                                  //RegistroA010;
                                  //RegistroA100;
                                            //RegistroA110; *
                                            //RegistroA111; *
                                            //RegistroA120; *
                                            //RegistroA170;
                      If Funcoes.Cancelado = false then RegistroA990;

          // BLOCO C: (Abertura do bloco C).
                      If Funcoes.Cancelado = false then RegistroC001;
                                  //RegistroC010;
                                            //RegistroC1004;
                                                       //RegistroC110; *
                                                       //RegistroC111; *
                                                       //RegistroC120;
                                                       //RegistroC170;
                                            //RegistroC180;
                                                       //RegistroC181;
                                                       //RegistroC185;
                                                       //RegistroC188; *
                                            //RegistroC190;
                                                       //RegistroC191;
                                                       //RegistroC195;
                                                       //RegistroC198; *
                                                       //RegistroC199;
                                            //RegistroC500;
                                                       //RegistroC501;
                                                       //RegistroC505;
                      If Funcoes.Cancelado = false then RegistroC990;

          // BLOCO D: (Abertura do bloco D).
                      If Funcoes.Cancelado = false then RegistroD001;
                                  //RegistroD010;
                                            //RegistroD100;
                                                       //RegistroD101;
                                                       //RegistroD105;
                      If Funcoes.Cancelado = false then RegistroD990;

          // BLOCO F: (Abertura do bloco F).
                      If Funcoes.Cancelado = false then RegistroF001;
                                  //RegistroF010;
                                            //RegistroF100;
                                            //RegistroF700;
                      If Funcoes.Cancelado = false then RegistroF990;

          // BLOCO I: (Abertura do bloco I).
                      If Funcoes.Cancelado = false then RegistroI001;
                      If Funcoes.Cancelado = false then RegistroI990;


          // BLOCO M: (Abertura do bloco M).
                      If Funcoes.Cancelado = false then RegistroM001;
                                  //RegistroM100;
                                            //RegistroM105;
                                  //RegistroM200;
                                            //RegistroM205;
                                            //RegistroM210;
                                  //RegistroM400;
                                            //RegistroM410;
                                  //RegistroM500;
                                            //RegistroM505;
                                  //RegistroM600;
                                            //RegistroM605;
                                            //RegistroM610;
                                  //RegistroM800;
                                            //RegistroM810;
                      If Funcoes.Cancelado = false then RegistroM990;

          // BLOCO P: (Abertura do bloco P).
                      If Funcoes.Cancelado = false then RegistroP001;
                      If Funcoes.Cancelado = false then RegistroP990;

          // BLOCO 1: (Abertura do bloco 1).
                      If Funcoes.Cancelado = false then Registro1001;
                      If Funcoes.Cancelado = false then Registro1990;

          // BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL.
                      If Funcoes.Cancelado = false then Registro9001;
                                  //Registro9900;
                      If Funcoes.Cancelado = false then Registro9990;
          //Registro9999;

          CloseFile(Arquivo);

          Screen.Cursor := crDefault;

          If Funcoes.Cancelado then begin
             ShowMessage('Operação cancelada pelo usuário, Arquivo incompleto.');
             Abort;
          End;

          Janela_ProcessamentoSPED.Close;

          Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
          Impressao_Visualizar.cMemo.Font.Name := 'Courier New';
          Impressao_Visualizar.mArquivo := Copy(mNomeArq, 1, Pos('_0001', mNomeArq));
          Impressao_Visualizar.mNome    := Copy(mNomeArq, 1, Pos('_0001', mNomeArq));
          Impressao_Visualizar.mTitulo  := 'Registro de envio ao SPED PIS/COFINS';
          Impressao_Visualizar.mPaginas := 1;
          Impressao_Visualizar.mPag     := 1;
          Impressao_Visualizar.ShowModal;
     end;
end;

{* REGISTRO 0000 -  "Abertura do Arquivo digital e identificacao da entidade. *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0000;
Var
   mSituacao : String;
begin
      Progresso1('Abertura do Arquivo digital', 1);
      Progresso2('Registro: 0000...');

      With Dados, dmFiscal do begin
           mSituacao := '';
           If cSituacao.ItemIndex < 5 then mSituacao := InttoStr(cSituacao.ItemIndex);
           mRegistro := '|0000' +                                                                 // 01 - REG.
                        '|'+ cVersao.text +                                                       // 02 - Codigo Versao Layout.
                        '|'+ InttoStr(cTipo.ItemIndex) +                                          // 03 - Codigo da finalidade do arquivo.
                        '|'+ mSituacao +                                                          // 04 - Indicador de situação especial.
                        '|'+ Trim(cRecibo.Text) +                                                 // 05 - Número do recibo anterior.
                        '|'+ RemoveCaracter('/','',mDataIni) +                                    // 06 - Data inicial dos dados.
                        '|'+ RemoveCaracter('/','',mDataFim) +                                    // 07 - Data final dos dados.
                        '|'+ Trim(EmpresasRazao_Social.Value) +                                   // 08 - Nome empresarial da entidade.
                        '|'+ EmpresasCNPJ.Value +                                                 // 09 - CNPJ da entidade.
                        '|'+ EmpresasEstado.Value +                                               // 10 - Estado da empresa.
                        '|'+ PoeZero(7, EmpresasMunicipio_Codigo.AsInteger)+                      // 11 - Codigo do Municipio da tabela do IBGE.
                        '|'+ Trim(EmpresasInscricao_SUFRAMA.AsString) +                           // 12 - Inscricao SUFRAMA.
                        '|'+ PoeZero(2, cNatureza.ItemIndex) +                                    // 13 - Natureza da pessoa juridica.
                        '|'+ Trim(EmpresasTipo_Atividade.AsString)+'|';                           // 14 - Tipo de atividade.
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBloco0);
           Inc(mQtdeReg0000);
      End;
end;

{* REGISTRO 0001 - ABERTURA DO BLOCO 0. * }
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0001;
begin
      Progresso1('Abertura do BLOCO 0', 1);

      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|0001' );   // 01 - REG.
      Say( mLinha, 004, Arquivo, '|0|' );     // 02 - Indicador de movimento.

      Inc(mQtdeReg0001);
      Inc(mQtdeBloco0);

      Progresso2('Registro: 0001...');
end;

{* REGISTRO 0100 - DADOS DO CONTABILISTA. *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0100;
Var
   mCPF : String;
begin
      Progresso1('Dados do Contabilista.', tEmpresas.RecordCount + 1);

      With Dados, dmFiscal do begin
           mCPF := RemoveCaracter('-','', EmpresasContador_CPF.Value);
           mCPF := RemoveCaracter('.','', mCPF);

           Inc(mLinha);
           mRegistro := '|0100' +                                                    // 01 - REG.
                        '|'+ Trim(EmpresasContador_Nome.Value) +                     // 02 - Nome.
                        '|'+ Trim(mCPF) +                                            // 03 - CPF.
                        '|'+ Trim(EmpresasContador_CRC.Value) +                      // 04 - CRC.
                        '|'+ Trim(EmpresasContador_CNPJ.Value) +                     // 05 - CNPJ.
                        '|'+ Trim(EmpresasContador_CEP.Value) +                      // 06 - CEP.
                        '|'+ Copy(EmpresasContador_Rua.Value, 1, 60) +               // 07 - Rua.
                        '|'+ Trim(EmpresasContador_Numero.Value) +                   // 08 - Numero do imovel.
                        '|'+ Trim(EmpresasContador_Complemento.Value) +              // 09 - Complemento do endereço.
                        '|'+ Trim(EmpresasContador_Bairro.Value) +                   // 10 - Bairro.
                        '|'+ Trim(EmpresasContador_Telefone.Value) +                 // 11 - Telefone.
                        '|'+ Trim(EmpresasContador_FAX.Value) +                      // 12 - FAX.
                        '|'+ Trim(EmpresasContador_Email.Value) +                    // 13 - FAX.
                        '|'+ Poezero(7,EmpresasContador_Municipio.AsInteger)+'|';    // 14 - Codigo do município.
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeReg0100);
           Inc(mQtdeBloco0);
      End;

      Progresso2('Registro: 0100...');

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            tNotas.SQL.Clear;
            tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais   AS NF WHERE(MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND (Apuracao_PISCOFINS = 1)) +');
            tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico   AS NF WHERE(MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno)) +');
            tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros AS NT WHERE(MONTH(Data_Entrada) = :pMes) AND (YEAR(Data_Entrada) = :pAno)');
            tNotas.SQL.Add('        AND (ISNULL(Provisoria, 0) = 0) AND (ISNULL(Desdobramento, 0) = 0) AND ((SELECT Apuracao_PISCOFINS FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) = 1)) + ');
            tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos AS PD WHERE Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim ');
            tNotas.SQL.Add('       AND Tipo = ''IMPORTAÇÃO'' ');
            tNotas.SQL.Add('       AND (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+ '.dbo.NotasFiscais NF WHERE NF.DI = PD.Numero_Declaracao AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0)');
            tNotas.SQL.Add('       AS Movimento');
            tNotas.ParamByName('pMes').AsInteger  := cMes.ItemIndex + 1;
            tNotas.ParamByName('pAno').AsInteger  := cAno.AsInteger;
            tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
            tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
            //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0100_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
            tNotas.Open;

            If tNotas.FieldByName('Movimento').AsInteger > 0 then begin
               if Trim(tEmpresas.FieldByName('Contador_Nome').AsString) <> '' then begin
                  mCPF := RemoveCaracter('-','', tEmpresas.FieldByName('Contador_CPF').AsString);
                  mCPF := RemoveCaracter('.','', mCPF);

                  Inc(mLinha);
                  mRegistro := '|0100' +                                                                        // 01 - REG.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_Nome').AsString) +                     // 02 - Nome.
                               '|'+ Trim(mCPF) +                                                                // 03 - CPF.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_CRC').AsString) +                      // 04 - CRC.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_CNPJ').AsString) +                     // 05 - CNPJ.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_CEP').AsString) +                      // 06 - CEP.
                               '|'+ Copy(tEmpresas.FieldByName('Contador_Rua').AsString, 1, 60) +               // 07 - Rua.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_Numero').AsString) +                   // 08 - Numero do imovel.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_Complemento').AsString) +              // 09 - Complemento do endereço.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_Bairro').AsString) +                   // 10 - Bairro.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_Telefone').AsString) +                 // 11 - Telefone.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_FAX').AsString) +                      // 12 - FAX.
                               '|'+ Trim(tEmpresas.FieldByName('Contador_Email').AsString) +                    // 13 - FAX.
                               '|'+ Poezero(7,tEmpresas.FieldByName('Contador_Municipio').AsInteger)+'|';       // 14 - Codigo do município.
                  Say( mLinha, 000, Arquivo, mRegistro );

                  Inc(mQtdeReg0100);
                  Inc(mQtdeBloco0);
               end;
            End;

            Progresso2('Registro: 0100...');

            tEmpresas.Next;
      End;
end;

{* REGISTRO 0110 - REGIMES DE APURAÇÃO DA CONTRIBUIÇÃO SOCIAL E DE APROPRIAÇÃO DE CRÉDITO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0110;
begin
      Progresso1('Regimes de Apuração da Contribuição', 1);

      Inc(mLinha);
      mRegistro := '|0110' +                                                              // 01 - REG.
                   '|'+ InttoStr(cIncidencia.ItemIndex+1);                                // 02 - Codigo de incidencia tribbutaria.
                   If cMetodo.ItemIndex <> -1 then begin
                      mRegistro := mRegistro + '|'+ InttoStr(cMetodo.ItemIndex+1);        // 03 - Código indicador de método de apropriação de créditos comuns, no caso de incidência no regime não-cumulativo.
                   end else begin
                      mRegistro := mRegistro + '|';
                   End;
                   mRegistro := mRegistro + '|'+ InttoStr(cContribuicao.ItemIndex+1);     // 04 - Código indicador do Tipo de Contribuição Apurada no Período.

                   If cIncidencia.ItemIndex = 1 then begin
                      If cCriterio.ItemIndex = 0 then begin                               // 05 - Código indicador do critério de escrituração e apuração adotado,
                         mRegistro := mRegistro + '|1|';
                      End;
                      If cCriterio.ItemIndex = 1 then begin
                         mRegistro := mRegistro + '|2|';
                      End;
                      If cCriterio.ItemIndex = 2 then begin
                         mRegistro := mRegistro + '|9|';
                      End;
                   end else begin
                        mRegistro := mRegistro + '||';
                   End;
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0110);
      Inc(mQtdeBloco0);

      Progresso2('Registro: 0110...');

      If (cMetodo.ItemIndex + 1) = 2 then If Funcoes.Cancelado = false then Registro0111;
end;

{* REGISTRO 0111: TABELA DE RECEITA BRUTA MENSAL PARA FINS DE RATEIO DE CRÉDITOS COMUNS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0111;
var
   mTotalBruto: Real;
begin
      Progresso3('Receita Bruta Mensal', 1);

      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT CASE WHEN (TN.Apuracao_PISCOFINS = 1)                                    THEN SUM(Valor_TotalNota) END AS Total_Trib,');
      tNotas.SQL.Add('       CASE WHEN (TN.Apuracao_PISCOFINS = 0) AND (TN.Finalidade_Mercadoria = 0) THEN SUM(Valor_TotalNota) END AS Total_NTrib,');
      tNotas.SQL.Add('       CASE WHEN (TN.Apuracao_PISCOFINS = 0) AND (TN.Finalidade_Mercadoria = 3) THEN SUM(Valor_TotalNota) END AS Total_Export,');
      tNotas.SQL.Add('       0 AS Total_Cumul');
      tNotas.SQL.Add('INTO #Temp');
      tNotas.SQL.Add('FROM   NotasFiscais AS NF, TipoNota AS TN');
      tNotas.SQL.Add('WHERE (TN.Codigo = NF.Tipo_Nota) AND (TN.Saida_Entrada = 1) AND (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1)');
      tNotas.SQL.Add('GROUP BY TN.Apuracao_PISCOFINS, TN.Finalidade_Mercadoria');

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            tNotas.SQL.Add('UNION ALL');
            tNotas.SQL.Add('SELECT CASE WHEN (TN.Apuracao_PISCOFINS = 1)                                    THEN SUM(Valor_TotalNota) END AS Total_Trib,');
            tNotas.SQL.Add('       CASE WHEN (TN.Apuracao_PISCOFINS = 0) AND (TN.Finalidade_Mercadoria = 0) THEN SUM(Valor_TotalNota) END AS Total_NTrib,');
            tNotas.SQL.Add('       CASE WHEN (TN.Apuracao_PISCOFINS = 0) AND (TN.Finalidade_Mercadoria = 3) THEN SUM(Valor_TotalNota) END AS Total_Export,');
            tNotas.SQL.Add('       0 AS Total_Cumul');
            tNotas.SQL.Add('FROM   '+tEmpresas.FieldByname('Banco_Dados').AsString+'.dbo.NotasFiscais AS NF,'+tEmpresas.FieldByname('Banco_Dados').AsString+'.dbo.TipoNota AS TN');
            tNotas.SQL.Add('WHERE (TN.Codigo = NF.Tipo_Nota) AND (TN.Saida_Entrada = 1) AND (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1)');
            tNotas.SQL.Add('GROUP BY TN.Apuracao_PISCOFINS, TN.Finalidade_Mercadoria');
            tEmpresas.Next;
      End;

      tNotas.SQL.Add('SELECT ISNULL(SUM(Total_Trib),0)   AS Total_Trib,');
      tNotas.SQL.Add('       ISNULL(SUM(Total_NTrib),0)  AS Total_NTrib,');
      tNotas.SQL.Add('       ISNULL(SUM(Total_Export),0) AS Total_Export,');
      tNotas.SQL.Add('       ISNULL(SUM(Total_Cumul),0)  AS Total_Cumul');
      tNotas.SQL.Add('FROM #Temp');
      tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0111.SQL');
      tNotas.Open;

      mTotalBruto := tNotas.FieldByName('Total_Trib').AsCurrency + tNotas.FieldByName('Total_NTrib').AsCurrency + tNotas.FieldByName('Total_Export').AsCurrency;

      Inc(mLinha);
      mRegistro := '|0111' +                                                                     // 01 - REG.
                   '|'+ FormatFloat('#0.00', tNotas.FieldByName('Total_Trib').AsCurrency) +      // 02 - Receita Bruta Não-Cumulativa - Tributada no Mercado Interno.
                   '|'+ FormatFloat('#0.00', tNotas.FieldByName('Total_NTrib').AsCurrency) +     // 03 - Receita Bruta Não-Cumulativa - Não Tributada no Mercado Interno (Vendas com suspensão, alíquota zero, isenção e sem incidência das contribuições).
                   '|'+ FormatFloat('#0.00', tNotas.FieldByName('Total_Export').AsCurrency) +    // 04 - Receita Bruta Não-Cumulativa - Exportação.
                   '|'+ FormatFloat('#0.00', tNotas.FieldByName('Total_Cumul').AsCurrency) +     // 05 - Receita Bruta Cumulativa.
                   '|'+ FormatFloat('#0.00', mTotalBruto) +                                      // 06 - Receita Bruta total.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0111);
      Inc(mQtdeBloco0);

      Progresso3('Registro: 0111...', 0);
end;

{* REGISTRO 0120:  IDENTIFICAÇÃO DE EFD-CONTRIBUIÇÕES SEM DADOS A ESCRITURAR *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0120;
begin
     Progresso1('Cadastro de Estabelecimentos', tEmpresas.RecordCount+1);

     with Dados do begin
          // Matriz.
          Inc(mLinha);
          mRegistro := '|0120' +                                                         // 01 - REG.
                       '|'+ Empresas.FieldByName('Codigo').AsString +                    // 02 - Mês de referência do ano-calendário da escrituração sem dados, dispensada da entrega.
                       '|'+ Trim(Empresas.FieldByName('Razao_Social').AsString)+         // 03 - Informação complementar do registro.
                       '|';
          Say( mLinha, 000, Arquivo, mRegistro );
          Inc(mQtdeReg0120);
          Inc(mQtdeBloco0);
     end;
end;

{* REGISTRO 0140: TABELA DE CADASTRO DE ESTABELECIMENTO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0140;
begin
     Progresso1('Cadastro de Estabelecimentos', tEmpresas.RecordCount+1);

     With Dados do begin
          // Matriz.
          Inc(mLinha);
          mRegistro := '|0140' +                                                         // 01 - REG.
                       '|'+ Empresas.FieldByName('Codigo').AsString +                    // 02 - Código de identificação do estabelecimento.
                       '|'+ Trim(Empresas.FieldByName('Razao_Social').AsString)+         // 03 - Nome empresarial do estabelecimento
                       '|'+ Trim(Empresas.FieldByName('CNPJ').AsString)+                 // 04 - Número de inscrição do estabelecimento no CNPJ.
                       '|'+ Trim(Empresas.FieldByName('Estado').AsString)+               // 05 - Estado.
                       '|'+ Trim(Empresas.FieldByName('IE').AsString)+                   // 06 - Incrição estadual.
                       '|'+ Trim(Empresas.FieldByName('Municipio_Codigo').AsString)+     // 07 - Código do Municipio.
                       '|'+ Trim(Empresas.FieldByName('IM').AsString)+                   // 08 - Inscrição Municipal.
                       '|'+ Trim(Empresas.FieldByName('Inscricao_SUFRAMA').AsString)+    // 09 - Inscrição SUFRAMA.
                       '|';
          Say( mLinha, 000, Arquivo, mRegistro );

          Inc(mQtdeReg0140);
          Inc(mQtdeBloco0);

          Registro0150(0);
          Registro0190(0);
          Registro0200(0);
          Registro0400(0);

          Progresso2('Registro: 0140...');

          // Filiais.
          tEmpresas.First;
          While not tEmpresas.Eof do begin
                tNotas.SQL.Clear;
                tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais   AS NF WHERE(MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND (Apuracao_PISCOFINS = 1)) +');
                tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico   AS NF WHERE(MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) ) +');
                tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros AS NT WHERE(MONTH(Data_Entrada) = :pMes) AND (YEAR(Data_Entrada) = :pAno)');
                tNotas.SQL.Add('        AND (ISNULL(Provisoria, 0) = 0) AND (ISNULL(Desdobramento, 0) = 0) AND ((SELECT Apuracao_PISCOFINS FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) = 1))+');
                tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos AS PD WHERE Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim ');
                tNotas.SQL.Add('       AND Tipo = ''IMPORTAÇÃO'' ');
                tNotas.SQL.Add('       AND (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+ '.dbo.NotasFiscais NF WHERE NF.DI = PD.Numero_Declaracao AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0)');
                tNotas.SQL.Add('       AS Movimento');
                tNotas.ParamByName('pMes').AsInteger  := cMes.ItemIndex + 1;
                tNotas.ParamByName('pAno').AsInteger  := cAno.AsInteger;
                tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
                tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
                //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0140_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
                tNotas.Open;

                If tNotas.FieldByName('Movimento').AsInteger > 0 then begin
                   Inc(mLinha);
                   mRegistro := '|0140' +                                                          // 01 - REG.
                                '|'+ tEmpresas.FieldByName('Codigo').AsString +                    // 02 - Código de identificação do estabelecimento.
                                '|'+ Trim(tEmpresas.FieldByName('Razao_Social').AsString)+         // 03 - Nome empresarial do estabelecimento
                                '|'+ Trim(tEmpresas.FieldByName('CNPJ').AsString)+                 // 04 - Número de inscrição do estabelecimento no CNPJ.
                                '|'+ Trim(tEmpresas.FieldByName('Estado').AsString)+               // 05 - Estado.
                                '|'+ Trim(tEmpresas.FieldByName('IE').AsString)+                   // 06 - Incrição estadual.
                                '|'+ Trim(tEmpresas.FieldByName('Municipio_Codigo').AsString)+     // 07 - Código do Municipio.
                                '|'+ Trim(tEmpresas.FieldByName('IM').AsString)+                   // 08 - Inscrição Municipal.
                                '|'+ Trim(tEmpresas.FieldByName('Inscricao_SUFRAMA').AsString)+    // 09 - Inscrição SUFRAMA.
                                '|';
                   Say( mLinha, 000, Arquivo, mRegistro );

                   Inc(mQtdeReg0140);
                   Inc(mQtdeBloco0);


                   If Funcoes.Cancelado = false then Registro0150(tEmpresas.FieldByName('Codigo').AsInteger);
                   If Funcoes.Cancelado = false then Registro0190(tEmpresas.FieldByName('Codigo').AsInteger);
                   If Funcoes.Cancelado = false then Registro0200(tEmpresas.FieldByName('Codigo').AsInteger);
                   If Funcoes.Cancelado = false then Registro0400(tEmpresas.FieldByName('Codigo').AsInteger);

                   Progresso2('Registro: 0140...');
                End;
                tEmpresas.Next
          End;
     End;
end;

{* REGISTRO 0150:TABELA DE CADASTRO DO PARTICIPANTE *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0150(Empresa: Integer);
Var
    mIE  : String;
    mCNPJ: String;
begin
      tNotas.SQL.Clear;
      If Empresa = 0 then
         tNotas.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tNotas.SQL.Add('SELECT DISTINCT');
      tNotas.SQL.Add('       CASE WHEN NF.Saida_Entrada = 1 THEN CAST(Cliente_Codigo AS VARCHAR(6))+''C'' ');
      tNotas.SQL.Add('            WHEN NF.Saida_Entrada = 0 THEN CAST(Fornecedor_Codigo AS VARCHAR(6))+''F'' ');
      tNotas.SQL.Add('       END AS Codigo,');
      tNotas.SQL.Add('       CASE WHEN NF.Saida_Entrada = 1 THEN (SELECT Nome FROM Clientes     WHERE(Codigo = Cliente_Codigo))');
      tNotas.SQL.Add('            WHEN NF.Saida_Entrada = 0 THEN (SELECT Nome FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo))');
      tNotas.SQL.Add('       END AS Nome,');
      tNotas.SQL.Add('       Destinatario_Pais AS Pais,');
      tNotas.SQL.Add('       CASE WHEN Destinatario_Juridica = 1 THEN Destinatario_CNPJ_CPF ELSE '''' END AS CNPJ,');
      tNotas.SQL.Add('       CASE WHEN Destinatario_Juridica = 0 THEN Destinatario_CNPJ_CPF ELSE '''' END AS CPF,');
      tNotas.SQL.Add('       CASE WHEN Destinatario_Estado <> ''EX'' THEN Destinatario_IE ELSE '''' END AS Inscricao_Estadual,');
      tNotas.SQL.Add('       Destinatario_Municipio AS Municipio_Codigo,');
      tNotas.SQL.Add('       (SELECT SUFRAMA FROM Clientes WHERE Codigo = Cliente_Codigo) AS SUFRAMA,');
      tNotas.SQL.Add('       Destinatario_Rua AS Rua,');
      tNotas.SQL.Add('       Destinatario_RuaNumero AS Rua_Numero,');
      tNotas.SQL.Add('       Destinatario_Complemento AS Complemento,');
      tNotas.SQL.Add('       Destinatario_Bairro AS Bairro');
      tNotas.SQL.Add('INTO   #Temp');
      tNotas.SQL.Add('FROM   NotasFiscais NF');
      tNotas.SQL.Add('WHERE  (NF.Apuracao_PISCOFINS = 1) AND (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes)');
      tNotas.SQL.Add('UNION  ALL');
      tNotas.SQL.Add('SELECT DISTINCT');
      tNotas.SQL.Add('       CAST(Fornecedores.Codigo AS VARCHAR(6))+''F'',');
      tNotas.SQL.Add('       Fornecedores.Nome,');
      tNotas.SQL.Add('       Fornecedores.Pais,');
      tNotas.SQL.Add('       Fornecedores.CNPJ,');
      tNotas.SQL.Add('       Fornecedores.CPF,');
      tNotas.SQL.Add('       Fornecedores.Inscricao_Estadual,');
      tNotas.SQL.Add('       Fornecedores.Municipio_Codigo,');
      tNotas.SQL.Add('       Fornecedores.SUFRAMA,');
      tNotas.SQL.Add('       Fornecedores.Rua,');
      tNotas.SQL.Add('       Fornecedores.Rua_Numero,');
      tNotas.SQL.Add('       '''',');
      tNotas.SQL.Add('       Fornecedores.Bairro');
      tNotas.SQL.Add('FROM   Fornecedores, NotasTerceiros');
      tNotas.SQL.Add('WHERE  (ISNULL(NotasTerceiros.Provisoria, 0) = 0)');
      tNotas.SQL.Add('       AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
      tNotas.SQL.Add('       AND (SELECT COUNT(*) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND Apuracao_PISCOFINS = 1) > 0');
      tNotas.SQL.Add('       AND (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Fornecedor = Fornecedores.Codigo)');
      tNotas.SQL.Add('UNION  ALL');
      tNotas.SQL.Add('SELECT DISTINCT');
      tNotas.SQL.Add('       CAST(Fornecedor AS VARCHAR(6))+''F'' AS Codigo,');
      tNotas.SQL.Add('       Fornecedores.Nome,');
      tNotas.SQL.Add('       Fornecedores.Pais,');
      tNotas.SQL.Add('       Fornecedores.CNPJ,');
      tNotas.SQL.Add('       Fornecedores.CPF,');
      tNotas.SQL.Add('       Fornecedores.Inscricao_Estadual,');
      tNotas.SQL.Add('       Fornecedores.Municipio_Codigo,');
      tNotas.SQL.Add('       Fornecedores.SUFRAMA,');
      tNotas.SQL.Add('       Fornecedores.Rua,');
      tNotas.SQL.Add('       Fornecedores.Rua_Numero,');
      tNotas.SQL.Add('       '''',');
      tNotas.SQL.Add('       Fornecedores.Bairro');

      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tNotas.SQL.Add('FROM   Fornecedores, PagarReceber, ClassificacaoFinanceira');
         tNotas.SQL.Add('WHERE  (PagarReceber.Tipo = ''P'') AND (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND (ISNULL(ClassificacaoFinanceira.CST_PIS, '''') <> '''')');
      end else begin
         tNotas.SQL.Add('FROM   Fornecedores, PagarReceber, Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
         tNotas.SQL.Add('WHERE  (PagarReceber.Tipo = ''P'') AND (Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND (ISNULL(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.CST_PIS, '''') <> '''')');
      End;

      tNotas.SQL.Add('       AND (YEAR(Data_Vencimento) = :pAno AND MONTH(Data_Vencimento) = :pMes) AND (Fornecedor = Fornecedores.Codigo)');
      tNotas.SQL.Add('UNION  ALL');
      tNotas.SQL.Add('SELECT DISTINCT');
      tNotas.SQL.Add('       CAST(Cliente AS VARCHAR(6))+''C'' AS Codigo,');
      tNotas.SQL.Add('       Clientes.Nome,');
      tNotas.SQL.Add('       Clientes.Pais,');
      tNotas.SQL.Add('       Clientes.CNPJ,');
      tNotas.SQL.Add('       Clientes.CPF,');
      tNotas.SQL.Add('       Clientes.Inscricao_Estadual,');
      tNotas.SQL.Add('       Clientes.Municipio_Codigo,');
      tNotas.SQL.Add('       Clientes.SUFRAMA,');
      tNotas.SQL.Add('       Clientes.Rua,');
      tNotas.SQL.Add('       Clientes.Rua_Numero,');
      tNotas.SQL.Add('       '''',');
      tNotas.SQL.Add('       Clientes.Bairro');

      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tNotas.SQL.Add('FROM   Clientes, PagarReceber, ClassificacaoFinanceira');
         tNotas.SQL.Add('WHERE (PagarReceber.Tipo = ''R'') AND (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND (ISNULL(ClassificacaoFinanceira.CST_PIS, '''') <> '''')');
      end else begin
         tNotas.SQL.Add('FROM   Clientes, PagarReceber, Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
         tNotas.SQL.Add('WHERE (PagarReceber.Tipo = ''R'') AND (Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND (ISNULL(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.CST_PIS, '''') <> '''')');
      End;

      tNotas.SQL.Add('      AND (YEAR(Data_Vencimento) = :pAno AND MONTH(Data_Vencimento) = :pMes) AND (Cliente = Clientes.Codigo)');
      tNotas.SQL.Add('UNION  ALL');
      tNotas.SQL.Add('SELECT DISTINCT');
      tNotas.SQL.Add('       CAST(Cliente AS VARCHAR(6))+''C'',');
      tNotas.SQL.Add('       Clientes.Nome,');
      tNotas.SQL.Add('       Clientes.Pais,');
      tNotas.SQL.Add('       Clientes.CNPJ,');
      tNotas.SQL.Add('       Clientes.CPF,');
      tNotas.SQL.Add('       Clientes.Inscricao_Estadual,');
      tNotas.SQL.Add('       Clientes.Municipio_Codigo,');
      tNotas.SQL.Add('       Clientes.SUFRAMA,');
      tNotas.SQL.Add('       Clientes.Rua,');
      tNotas.SQL.Add('       Clientes.Rua_Numero,');
      tNotas.SQL.Add('       '''',');
      tNotas.SQL.Add('       Clientes.Bairro');
      tNotas.SQL.Add('FROM   Clientes, NotasServico, ReferenciasFiscais');
      tNotas.SQL.Add('WHERE  (ReferenciasFiscais.Codigo = NotasServico.Referencia_Fiscal) AND (ReferenciasFiscais.Apuracao_PISCOFINS = 1)');
      tNotas.SQL.Add('       AND (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cliente = Clientes.Codigo)');
      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tNotas.SQL.Add('UNION  ALL');
         tNotas.SQL.Add('SELECT DISTINCT');
         tNotas.SQL.Add('       CAST(Fornecedores.Codigo AS VARCHAR(6))+''F'',');
         tNotas.SQL.Add('       Fornecedores.Nome,');
         tNotas.SQL.Add('       Fornecedores.Pais,');
         tNotas.SQL.Add('       CNPJ               = NULL,');
         tNotas.SQL.Add('       CPF                = NULL,');
         tNotas.SQL.Add('       Inscricao_Estadual = NULL,');
         tNotas.SQL.Add('       Municipio_Codigo   = ''9999999'',');
         tNotas.SQL.Add('       SUFRAMA            = NULL,');
         tNotas.SQL.Add('       Fornecedores.Rua,');
         tNotas.SQL.Add('       Fornecedores.Rua_Numero,');
         tNotas.SQL.Add('       Complemento        = NULL,');
         tNotas.SQL.Add('       Fornecedores.Bairro');
         tNotas.SQL.Add('FROM   Fornecedores, Adicoes AD');
         tNotas.SQL.Add('WHERE  AD.Exportador = Fornecedores.Codigo');
         tNotas.SQL.Add(' AND   (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) BETWEEN :pDataIni AND :pDataFim');
         tNotas.SQL.Add(' AND   (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' ');
         tNotas.SQL.Add(' AND   (SELECT Apuracao_PISCOFINS FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = 1');
         tNotas.SQL.Add(' AND   (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0');
         tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
         tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      End;
      tNotas.SQL.Add('SELECT IDENTITY(int, 1, 1) AS Linha, 0 AS Rpt, #Temp.* INTO #Temp2 FROM #Temp');
      tNotas.SQL.Add('UPDATE #Temp2 SET Rpt = (SELECT COUNT(*) FROM #Temp2 TP2 WHERE(Rpt = 0) and (#Temp2.Codigo = tp2.Codigo))');
      tNotas.SQL.Add('DELETE FROM #Temp2');
      tNotas.SQL.Add('WHERE(Rpt > 1) AND (SELECT MAX(Linha) FROM #Temp2 TP2 WHERE TP2.Codigo = #Temp2.Codigo) <> #Temp2.Linha');
      tNotas.SQL.Add('SELECT DISTINCT * FROM #Temp2');
      tNotas.SQL.Add('DROP TABLE #Temp, #Temp2');
      tNotas.ParamByName('pMes').AsInteger  := cMes.ItemIndex + 1;
      tNotas.ParamByName('pAno').AsInteger  := cAno.AsInteger;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0150_'+InttoStr(Empresa)+'.SQL');
      tNotas.Open;

      Progresso3('Cadastro de Participantes', tNotas.RecordCount);

      While not tNotas.Eof do begin
            Inc(mLinha);

            mIE   := apenasnumeros(Trim(tNotas.FieldByName('Inscricao_Estadual').AsString));
            mCNPJ := Trim(tNotas.FieldByName('CNPJ').AsString);

            If mIE   = 'ISENTO'         then mIE   := '';
            If mCNPJ = '00000000000000' then mCNPJ := '';

            mRegistro := '|0150' +                                                       // 01 - REG.
                         '|'+ Trim(tNotas.FieldByName('Codigo').AsString)+               // 02 - Código de identificação do estabelecimento.
                         '|'+ Trim(tNotas.FieldByName('Nome').AsString)+                 // 03 - Nome empresarial do estabelecimento.
                         '|'+ Trim(tNotas.FieldByName('Pais').AsString)+                 // 04 - Nome empresarial do estabelecimento.
                         '|'+ mCNPJ +                                                    // 05 - Número de inscrição do estabelecimento no CNPJ.
                         '|'+ Trim(tNotas.FieldByName('CPF').AsString)+                  // 06 - Número de inscrição do CPF.
                         '|'+ mIE +                                                      // 07 - Incrição estadual.
                         '|'+ Trim(tNotas.FieldByName('Municipio_Codigo').AsString)+     // 08 - Código do Municipio.
                         '|'+ Trim(tNotas.FieldByName('SUFRAMA').AsString)+              // 09 - Inscrição SUFRAMA.
                         '|'+ Trim(tNotas.FieldByName('Rua').AsString)+                  // 10 - Endereço.
                         '|'+ Trim(tNotas.FieldByName('Rua_Numero').AsString)+           // 11 - Número na rua.
                         '|'+ Trim(tNotas.FieldByName('Complemento').AsString)+          // 12 - Complemento do endereço.
                         '|'+ Trim(tNotas.FieldByName('Bairro').AsString)+               // 13 - Bairro.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );
            Inc(mQtdeReg0150);
            Inc(mQtdeBloco0);

            tNotas.Next;

            Progresso3('Registro: 0150...', 0);
      End;
end;

{* REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0190(Empresa: Integer);
begin
      With Dados do begin
           tUnidades.SQL.Clear;
           If Empresa = 0 then
              tUnidades.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
           else
              tUnidades.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
           tUnidades.SQL.Add('SELECT DISTINCT Unidade_Medida,');
           tUnidades.SQL.Add('       CAST('''' AS varchar(30)) AS Descricao');
           tUnidades.SQL.Add('INTO #Temp');
           tUnidades.SQL.Add('FROM   NotasItens');
           tUnidades.SQL.Add('WHERE (YEAR(Data) = :pAno) AND (MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
           tUnidades.SQL.Add('UNION ALL');
           tUnidades.SQL.Add('SELECT DISTINCT Unidade_Medida,');
           tUnidades.SQL.Add('       '''' ');
           tUnidades.SQL.Add('FROM   NotasTerceirosItens');
           tUnidades.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno) AND (MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1)');
           tUnidades.SQL.Add('UNION ALL');
           tUnidades.SQL.Add('SELECT ''UN'',');
           tUnidades.SQL.Add('       ''''');
           tUnidades.SQL.Add('FROM   NotasServico');
           tUnidades.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno) AND (MONTH(Data_Emissao) = :pMes)');

           If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
              tUnidades.SQL.Add('UNION ALL');
              tUnidades.SQL.Add('SELECT Undiade_Medida = (SELECT DISTINCT Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria),');
              tUnidades.SQL.Add('       CAST('''' AS varchar(30)) AS Descricao');
              tUnidades.SQL.Add('FROM   Adicoes AD');
              tUnidades.SQL.Add('WHERE (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI and pd.Apuracao_PISCOFINS = 1) BETWEEN :pDataIni AND :pDataFim');
              tUnidades.SQL.Add('  AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' ');
              tUnidades.SQL.Add('  AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0');
              tUnidades.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
              tUnidades.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
           End;

           tUnidades.SQL.Add('UPDATE #Temp SET Descricao = Cybersoft_Cadastros.dbo.UnidadeMedida.Descricao FROM Cybersoft_Cadastros.dbo.UnidadeMedida WHERE(Unidade_Medida = Cybersoft_Cadastros.dbo.UnidadeMedida.Codigo)');
           tUnidades.SQL.Add('SELECT DISTINCT * FROM #Temp WHERE LTRIM(RTRIM(Unidade_Medida)) <> '''' ');
           tUnidades.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
           tUnidades.ParamByName('pAno').AsInteger := cAno.AsInteger;
           //tUnidades.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0190.SQL');
           tUnidades.Open;

           Progresso3('Unidades de Medida', tUnidades.RecordCount);

           While not tUnidades.Eof do begin
                 Inc(mLinha);
                 mRegistro := '|0190' +                                                                  // 01 - REG.
                              '|'+ Trim(tUnidades.FieldByName('Unidade_Medida').AsString)+               // 02 - Código da unidades.
                              '|'+ Trim(tUnidades.FieldByName('Descricao').AsString)+'|';                // 03 - Descrição.

                 Say( mLinha, 000, Arquivo, mRegistro );
                 Inc(mQtdeReg0190);
                 Inc(mQtdeBloco0);

                 tUnidades.Next;

                 Progresso3('Registro: 0190...', 0);
           End;
      End;
end;

{* REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0200(Empresa: Integer);
Var
    mDescricao: WideString;
begin
     tItens.SQL.Clear;
     If Empresa = 0 then
        tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)       // Matriz.
     else
        tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);           // Filiais.

     tItens.SQL.Add('SELECT DISTINCT');
     tItens.SQL.Add('       LTRIM(RTRIM(CAST(Codigo_Mercadoria AS VARCHAR(20))))+''P'' AS Codigo_Mercadoria,');
     tItens.SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
     tItens.SQL.Add('       CAST('''' AS VARCHAR(250)) AS Descricao_Mercadoria,');
     tItens.SQL.Add('       CAST('''' AS VARCHAR(8)) AS NCM,');
     tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item,');
     tItens.SQL.Add('       NULL AS EX_TIPI,');
     tItens.SQL.Add('       NULL AS Genero,');
     tItens.SQL.Add('       0 AS Aliquota_ICMSOper');
     tItens.SQL.Add('INTO #Temp');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE Saida_Entrada = 0 AND (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno) AND (Apuracao_PISCOFINS = 1)');
     if Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
        tItens.SQL.Add('  AND MONTH(NotasItens.Data) = CASE WHEN (SELECT ISNULL(DI, '''') FROM NotasFiscais NF WHERE NF.Numero = NotasItens.Nota AND NF.Data_Emissao = NotasItens.Data) <> '''' THEN');
        tItens.SQL.Add('                                    MONTH((SELECT Data_DI FROM NotasFiscais NF WHERE NF.Numero = NotasItens.Nota AND NF.Data_Emissao = NotasItens.Data))');
        tItens.SQL.Add('                               ELSE');
        tItens.SQL.Add('                                    MONTH(NotasItens.Data)');
        tItens.SQL.Add('                               END');
     end;
     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT DISTINCT');
     tItens.SQL.Add('       LTRIM(RTRIM(CAST(Codigo_Mercadoria AS VARCHAR(20))))+''P'' AS Codigo_Mercadoria,');
     tItens.SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
     tItens.SQL.Add('       CAST('''' AS VARCHAR(250)) AS Descricao_Mercadoria,');
     tItens.SQL.Add('       CAST('''' AS VARCHAR(8)) AS NCM,');
     tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item,');
     tItens.SQL.Add('       NULL AS EX_TIPI,');
     tItens.SQL.Add('       NULL AS Genero,');
     tItens.SQL.Add('       0 AS Aliquota_ICMSOper');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE Saida_Entrada = 1 AND (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno) AND (Apuracao_PISCOFINS = 1)');

     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT DISTINCT');
     tItens.SQL.Add('       LTRIM(RTRIM(CAST(Codigo_Mercadoria AS VARCHAR(20))))+''P'' AS Codigo_Mercadoria,');
     tItens.SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
     tItens.SQL.Add('       CAST('''' AS VARCHAR(250)) AS Descricao_Mercadoria,');
     tItens.SQL.Add('       NULL AS NCM,');
     tItens.SQL.Add('       ISNULL((SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)), 09) AS Tipo_Item,');
     tItens.SQL.Add('       NULL AS EX_TIPI,');
     tItens.SQL.Add('       NULL AS Genero,');
     tItens.SQL.Add('       0');
     tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
     tItens.SQL.Add('WHERE (MONTH(NTI.Data_Entrada) = :pMes) AND (YEAR(NTI.Data_Entrada) = :pAno)');
     tItens.SQL.Add('AND   (Apuracao_PISCOFINS = 1)');
//     tItens.SQL.Add('AND   ISNULL((SELECT Provisoria FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao  = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor), 0) = 0');
//     tItens.SQL.Add('AND   ISNULL((SELECT Desdobramento FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao  = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor), 0) = 0');
   tItens.SQL.Add('AND   ISNULL((SELECT Provisoria FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao  = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor and nt.Natureza_Codigo = NTI.Natureza_Codigo), 0) = 0');
   tItens.SQL.Add('AND   ISNULL((SELECT Desdobramento FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao  = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor and nt.Natureza_Codigo = NTI.Natureza_Codigo), 0) = 0');

     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT DISTINCT');
     tItens.SQL.Add('       LTRIM(RTRIM(Servico))+''S'',');
     tItens.SQL.Add('       Servico AS Codigo_Produto,');
     tItens.SQL.Add('       (SELECT SUBSTRING(Descricao,1,250) FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) AS Descricao_Mercadoria,');
     tItens.SQL.Add('       NULL AS NCM,');
     tItens.SQL.Add('       09,');
     tItens.SQL.Add('       NULL,');
     tItens.SQL.Add('       NULL,');
     tItens.SQL.Add('       0');
     tItens.SQL.Add('FROM NotasServico');
     tItens.SQL.Add('WHERE (MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND (Servico IS NOT NULL)');
     If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
        tItens.SQL.Add('UNION ALL');
        tItens.SQL.Add('SELECT DISTINCT');
        tItens.SQL.Add('       LTRIM(RTRIM(CAST(Codigo_Mercadoria AS VARCHAR(20))))+''P'' AS Codigo_Mercadoria,');
        tItens.SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
        tItens.SQL.Add('       (SELECT CAST(Descricao AS VARCHAR(250)) FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Descricao_Mercadoria,');
        tItens.SQL.Add('       NCM,');
        tItens.SQL.Add('       (SELECT Produtos.Tipo_Item FROM Produtos WHERE(Codigo_Mercadoria = Produtos.Codigo)) AS Tipo_Item,');
        tItens.SQL.Add('       NULL AS EX_TIPI,');
        tItens.SQL.Add('       NULL AS Genero,');
        tItens.SQL.Add('       0');
        tItens.SQL.Add('FROM   Adicoes AD');
        tItens.SQL.Add('WHERE (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI and pd.Apuracao_PISCOFINS = 1) BETWEEN :pDataIni AND :pDataFim');
        tItens.SQL.Add('  AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' ');
        tItens.SQL.Add('  AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0');
        tItens.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
        tItens.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
     End;

     tItens.SQL.Add('UPDATE #TEMP SET NCM = (SELECT NCM FROM Produtos WHERE(Codigo = Codigo_Produto))');
     tItens.SQL.Add('UPDATE #TEMP SET Descricao_Mercadoria = (SELECT SUBSTRING(LTRIM(RTRIM(Descricao)),1, 250) FROM Produtos WHERE(Codigo = Codigo_Produto)) WHERE (LTRIM(RTRIM(Descricao_Mercadoria)) = '''')');
     tItens.SQL.Add('UPDATE #TEMP SET Genero = (SELECT DISTINCT Genero FROM NCM WHERE(NCM.NCM = #Temp.NCM))');
     tItens.SQL.Add('UPDATE #TEMP SET EX_TIPI = (SELECT NCM.Codigo_EXTIPI FROM NCM WHERE NCM.NCM = #Temp.NCM)');

     tItens.SQL.Add('SELECT DISTINCT');
     tItens.SQL.Add('       Codigo_Mercadoria,');
     tItens.SQL.Add('       Codigo_Produto,');
     tItens.SQL.Add('       Descricao_Mercadoria,');
     tItens.SQL.Add('       ISNULL((SELECT Unidade FROM Produtos WHERE(Codigo = Codigo_Produto)), ''UN'') AS Unidade_Medida,');
     tItens.SQL.Add('       NCM,');
     tItens.SQL.Add('       Tipo_Item,');
     tItens.SQL.Add('       EX_TIPI,');
     tItens.SQL.Add('       Genero,');
     tItens.SQL.Add('       Aliquota_ICMSOper');
     tItens.SQL.Add('FROM #Temp');
     tItens.SQL.Add('ORDER BY Codigo_Mercadoria');
     tItens.SQL.Add('DROP TABLE #TEMP');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0200_Empresa'+tEmpresas.FieldByName('Banco_Dados').AsString+'_'+InttoStr(Empresa)+'.SQL');
     tItens.Open;
     
     Progresso3('Produtos/Serviços', tItens.RecordCount);

     While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
           // Limpando codigos de controle da descrição do item.
           mDescricao := Trim(tItens.FieldByName('Descricao_Mercadoria').AsString);
           mDescricao := RemoveCaracter(#13, '', mDescricao);
           mDescricao := RemoveCaracter(#12, '', mDescricao);
           mDescricao := RemoveCaracter(#10, '', mDescricao);
           mDescricao := RemoveCaracter(#9 , '', mDescricao);
           mDescricao := RemoveCaracter('|', '', mDescricao);
           mDescricao := RemoveCaracter('<{'+Trim(tItens.FieldByName('Codigo_Produto').AsString)+'}>', '', mDescricao);

           Inc(mLinha);
           mRegistro := '|0200' +                                                                      // 01 - REG.
                        '|'+ Trim(tItens.FieldByName('Codigo_Mercadoria').AsString)+                   // 02 - Código do produto.
                        '|'+ mDescricao +                                                              // 03 - Descrição.
                        '|'+                                                                           // 04 - Código de barras.
                        '|'+                                                                           // 05 - Código anterior do item.
                        '|'+ Trim(tItens.FieldByName('Unidade_Medida').AsString)+                      // 06 - Unidade de medida.
                        '|'+ PoeZero(2, tItens.FieldByName('Tipo_Item').AsInteger)+                    // 07 - Tipo do Item.
                        '|'+ Trim(tItens.FieldByName('NCM').AsString)+                                 // 08 - NCM.
                        '|'+ Trim(tItens.FieldByName('EX_TIPI').AsString)+                             // 09 - Código EX TIPI.
                        '|'+ PoeZero(2, tItens.FieldByName('Genero').AsInteger)+                       // 10 - Genero do item.
                        '|'+                                                                           // 11 - Código do serviço conforme lista do Anexo I da Lei Complementar Federal nº 116/03.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat)+    // 12 - Alíquota de ICMS aplicável ao item nas operações internas.
                        '|';
           Say(mLinha, 000, Arquivo, mRegistro);
           
           Inc(mQtdeReg0200);
           Inc(mQtdeBloco0);

           tItens.Next;

           Progresso3('Registro: 0200...', 0);
     End;
end;

{* REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0400(Empresa: Integer);
begin
      With Dados, dmFiscal do begin
           tNatureza.SQL.Clear;
           If Empresa = 0 then
              tNotas.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString) // Matriz.
           else
              tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);     // Filiais.

           tNatureza.SQL.Add('SELECT DISTINCT SUBSTRING(Natureza_Codigo, 1, 1)+''000'' AS Natureza_Codigo');
           tNatureza.SQL.Add('INTO #Temp');
           tNatureza.SQL.Add('FROM   NotasFiscais');
           tNatureza.SQL.Add('WHERE  (MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND (Apuracao_PISCOFINS = 1)');
           tNatureza.SQL.Add('UNION ALL');
           tNatureza.SQL.Add('SELECT DISTINCT SUBSTRING(Natureza_Codigo,1,1)+''000'' ');
           tNatureza.SQL.Add('FROM   NotasTerceiros');
           tNatureza.SQL.Add('WHERE  (MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = NotasTerceiros.Referencia_Fiscal)) = 1)');
           tNatureza.SQL.Add('        AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0) AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
           tNatureza.SQL.Add('SELECT DISTINCT Natureza_Codigo, Descricao = (SELECT Descricao_NF FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = #Temp.Natureza_Codigo)) FROM #Temp');
           tNatureza.SQL.Add('ORDER BY Natureza_Codigo');
           tNatureza.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
           tNatureza.ParamByName('pAno').AsInteger := cAno.AsInteger;
           //tNatureza.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REG0400.SQL');
           tNatureza.Open;

           Progresso3('Natureza da Operação', tNatureza.RecordCount);

           While not tNatureza.Eof do begin
                 Inc(mLinha);
                 mRegistro := '|0400' +                                                                        // 01 - REG.
                              '|'+ Copy(tNatureza.FieldByName('Natureza_Codigo').AsString,1,1)+'000'+          // 02 - Código da natureza da operação.
                              '|'+ Trim(tNatureza.FieldByName('Descricao').AsString)+                          // 03 - Descrição.
                              '|';
                 Say( mLinha, 000, Arquivo, mRegistro );
                 Inc(mQtdeReg0400);
                 Inc(mQtdeBloco0);

                 tNatureza.Next;

                 Progresso3('Registro: 0400...', 0);
           End;
      End;
end;

{* REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0500;
begin
      tContas.SQL.Clear;
      tContas.SQL.Add('USE '+Dados.Empresas.FieldByName('Banco_Dados').AsString);
      tContas.SQL.Add('SELECT Conta = CASE WHEN Saida_Entrada = 0 THEN Conta_TotalNota_D ELSE Conta_TotalNota_C END');
      tContas.SQL.Add('INTO #TEMP');
      tContas.SQL.Add('FROM   TipoNota');
      tContas.SQL.Add('WHERE (ISNUMERIC(Conta_TotalNota_C) = 1 OR ISNUMERIC(Conta_TotalNota_D) = 1)');
      tContas.SQL.Add('AND (SELECT COUNT(*) FROM NotasFiscais WHERE Data_Emissao BETWEEN :pDataIni AND :pDataFim AND Apuracao_PISCOFINS = 1 AND Tipo_Nota = Codigo) > 0');

      tContas.SQL.Add('UNION ALL');
      tContas.SQL.Add('SELECT Conta = CASE WHEN SUBSTRING(Natureza_Dentro, 1, 1) NOT IN(''5'', ''6'', ''7'') THEN Conta_TotalNota_D ELSE Conta_TotalNota_C END');
      tContas.SQL.Add('FROM   ReferenciasFiscais');
      tContas.SQL.Add('WHERE ISNULL(Apuracao_PISCOFINS,0) = 1');
      tContas.SQL.Add('AND  (ISNUMERIC(Conta_TotalNota_D) = 1 OR ISNUMERIC(Conta_TotalNota_C) = 1)');
      tContas.SQL.Add('AND  ISNULL((SELECT COUNT(*) FROM NotasTerceiros NT WHERE NT.Referencia_Fiscal = ReferenciasFiscais.Codigo AND Data_Entrada BETWEEN :pDataIni AND :pDataFim), 0) > 0');

      tContas.SQL.Add('UNION ALL');
      tContas.SQL.Add('SELECT Conta = CASE WHEN SUBSTRING(Natureza_Dentro, 1, 1) NOT IN(''5'', ''6'', ''7'') THEN Conta_TotalNota_D ELSE Conta_TotalNota_C END');
      tContas.SQL.Add('FROM   ReferenciasFiscais');
      tContas.SQL.Add('WHERE ISNULL(Apuracao_PISCOFINS,0) = 1');
      tContas.SQL.Add('AND  (ISNUMERIC(Conta_TotalNota_D) = 1 OR ISNUMERIC(Conta_TotalNota_C) = 1)');
      tContas.SQL.Add('AND  (SELECT COUNT(*) FROM NotasServico   WHERE Data_Emissao BETWEEN :pDataIni AND :pDataFim AND Referencia_Fiscal = Codigo) > 0');

      tContas.SQL.Add('UNION ALL');
      tContas.SQL.Add('SELECT Conta = CASE WHEN LTRIM(RTRIM((Provisao_ContaD+Provisao_ContaC))) <> '''' THEN');
      tContas.SQL.Add('                    CASE WHEN Tipo = ''P'' THEN Provisao_ContaD ELSE Provisao_ContaC END');
      tContas.SQL.Add('               ELSE');
      tContas.SQL.Add('                    Pagamento_Conta');
      tContas.SQL.Add('               END');
      tContas.SQL.Add('FROM   ClassificacaoFinanceira');
      tContas.SQL.Add('WHERE (ISNUMERIC(Provisao_ContaD) = 1 OR ISNUMERIC(Provisao_ContaC) = 1 OR ISNUMERIC(Pagamento_Conta) = 1)');
      tContas.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceber WHERE Data_Vencimento BETWEEN :pDataIni AND :pDataFim AND Classificacao = Codigo) > 0');
      tContas.SQL.Add('AND Aliquota_PIS <> 0');

      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tContas.SQL.Add('UNION ALL');
         tContas.SQL.Add('SELECT Conta_Contabil = Conta_Despesas');
         tContas.SQL.Add('FROM   ProcessosDocumentos PD');
         tContas.SQL.Add('WHERE Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim');
         tContas.SQL.Add('  AND Apuracao_PISCOFINS = 1');
         tContas.SQL.Add('  AND Tipo = ''IMPORTAÇÃO'' ');
         tContas.SQL.Add('  AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = PD.Numero_Declaracao AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0');
      End;
      // Filiais.
      mSQLMatriz := tContas.SQL.Text;

      tEmpresas.First;
      while not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('TipoNota'               , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'               , mSQLMatriz);
            mSQLFilial := RemoveCaracter('NotasFiscais'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'           , mSQLFilial);
            mSQLFilial := RemoveCaracter('NotasTerceiros'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros'         , mSQLFilial);
            mSQLFilial := RemoveCaracter('NotasServico'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'           , mSQLFilial);
            mSQLFilial := RemoveCaracter('ReferenciasFiscais'     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais'     , mSQLFilial);
            mSQLFilial := RemoveCaracter('ClassificacaoFinanceira', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLFilial);
            mSQLFilial := RemoveCaracter('PagarReceber'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber'           , mSQLFilial);
            mSQLFilial := RemoveCaracter('ProcessosDocumentos'    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos'    , mSQLFilial);
            mSQLFilial := RemoveCaracter('INTO #TEMP', '' , mSQLFilial);
            mSQLFilial := RemoveCaracter('USE '+Dados.EmpresasBanco_Dados.AsString, '', mSQLFilial);
            tContas.SQL.Add('--[FILIAL '+tEmpresas.FieldByName('Numero_Filial').AsString+'---------------------------------------------------------------------------------------');
            tContas.SQL.Add('UNION ALL');
            tContas.SQL.Add(mSQLFilial);
            tEmpresas.Next;
      end;
      tContas.SQL.Add('SELECT DISTINCT Conta');
      tContas.SQL.Add('INTO #Temp2');
      tContas.SQL.Add('FROM #Temp');
      tContas.SQL.Add('ORDER BY Conta');
      tContas.SQL.Add('SELECT Conta     = LTRIM(RTRIM(Conta))');
      tContas.SQL.Add('      ,Nome      = (SELECT Descricao FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta)');
      tContas.SQL.Add('      ,Data      = (SELECT Data_Inclusao FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta)');
      tContas.SQL.Add('      ,Grupo     = (SELECT Origem FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta)');
      tContas.SQL.Add('      ,Tipo      = CASE WHEN (SELECT Sintetica FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta) = 1 THEN ''S'' ');
      tContas.SQL.Add('                        WHEN (SELECT Sintetica FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta) = 0 THEN ''A'' ');
      tContas.SQL.Add('                   END');
      tContas.SQL.Add('      ,Nivel     = (SELECT Nivel FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta)');
      tContas.SQL.Add('      ,Conta_ECF = (SELECT Conta_ECF FROM '+Dados.Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas PC WHERE PC.Codigo = #Temp2.Conta)');
      tContas.SQL.Add('INTO #Temp3');
      tContas.SQL.Add('FROM #Temp2');
      tContas.SQL.Add('WHERE Conta IS NOT NULL');
      tContas.SQL.Add('ORDER BY Conta');
      tContas.SQL.Add('DELETE FROM #Temp3 WHERE ISNULL(Nome, '''') = '''' ');
      tContas.SQL.Add('SELECT * FROM #Temp3');
      tContas.SQL.Add('DROP TABLE #Temp, #Temp2, #Temp3');
      tContas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
      tContas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      //tContas.SQL.SaveToFile('c:\temp\SPED_PIS_COFINS_REGISTRO_0500.sql');
      tContas.Open;

      Progresso3('Plano de Contas Contábeis', tContas.RecordCount);
      tContas.first;
      while not tContas.Eof do begin
            Inc(mLinha);
            mRegistro := '|0500' +                                                                      // 01 - REG.
                         '|'+ RemoveCaracter('/','',tContas.FieldByName('Data').AsString) +             // 02 - Data da inclusão alteração.
                         '|'+ tContas.FieldbyName('Grupo').AsString +                                   // 03 - Natureza da conta "Grupo de Contas".
                         '|'+ tContas.FieldbyName('Tipo').AsString+                                     // 04 - Indicador do tipo de conta. (S-Sintetica / A - Analitica.
                         '|'+ tContas.FieldbyName('Nivel').AsString+                                    // 05 - Nivel da conta analitica / grupo de contas.
                         '|'+ tContas.FieldbyName('Conta').AsString+                                    // 06 - Código da conta analitica / grupo de contas.
                         '|'+ tContas.FieldbyName('Nome').AsString +                                    // 07 - Nome da conta analitica / grupo de contas.
                         '|'+ tContas.FieldbyName('Conta_ECF').AsString +                               // 08 - Código da conta correlacionada no plano de contas referenciado.
                         '|'+                                                                           // 09 - CNPJ do estabelecimento no caso da conta informada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            tContas.Next;
            Progresso3('Plano de Contas Contábeis', 0);

            Inc(mQtdeReg0500);
            Inc(mQtdeBloco0);
      end;
end;

{* REGISTRO 0600: CENTRO DE CUSTO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0600;
begin
      Progresso1('Centro de Custo', 1);

      Inc(mLinha);
      mRegistro := '|0600' +                                                                      // 01 - REG.
                   '|'+                                                                           // 02 - Data da inclusão alteração.
                   '|'+                                                                           // 03 - Codigo do centro de custo.
                   '|'+                                                                           // 04 - Nome do centro de custo.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0600);
      Inc(mQtdeBloco0);

      Progresso2('Registro: 0600...');
end;

{* REGISTRO 0900: Composição das Receitas do Período – Receita Bruta e Demais Receitas *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0900;
begin
      Progresso1('Receita Bruta e Demais Receitas', 1);

      Inc(mLinha);
      mRegistro := '|0900' +                // 01 - REG.
                   '|'+                     // 02 - Receita total referente aos registros escriturados no Bloco A.
                   '|'+                     // 03 - Parcela da receita total escriturada no Bloco A (Campo 02), não classificada como receita bruta.
                   '|'+                     // 04 - Receita total referente aos registros escriturados no Bloco C.
                   '|'+                     // 05 - Parcela da receita total escriturada no Bloco C (Campo 04), não classificada como receita bruta.
                   '|'+                     // 06 - Receita total referente aos registros escriturados no Bloco .
                   '|'+                     // 07 - Parcela da receita total escriturada no Bloco D (Campo 06), não classificada como receita bruta.
                   '|'+                     // 08 - Receita total referente aos registros escriturados no Bloco F.
                   '|'+                     // 09 - Parcela da receita total escriturada no Bloco F (Campo 08), não classificada como receita bruta.
                   '|'+                     // 10 - Receita total referente aos registros escriturados no Bloco I.
                   '|'+                     // 11 - Parcela da receita total escriturada no Bloco I (Campo 10) não classificada como receita bruta.
                   '|'+                     // 12 - Receita total referente aos registros escriturados no Bloco 1 (RET).
                   '|'+                     // 13 - Parcela da receita total escriturada no Bloco 1 (Campo 12), não classificada como receita bruta.
                   '|'+                     // 14 - Receita bruta total (Soma dos Campos 02, 04, 06, 08, 10 e 12).
                   '|';                     // 15 - Parcela da receita total escriturada (Campo 14), não classificada como receita bruta (Soma dos Campos 03, 05, 07, 09, 11 e 13).

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0900);
      Inc(mQtdeBloco0);

      Progresso2('Registro: 0900...');
end;

{* REGISTRO 0990: ENCERRAMENTO DO BLOCO 0 *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro0990;
begin
      Progresso1('Encerramento do BLOCO 0', 1);

      With Dados, dmFiscal do begin
           Inc(mQtdeBloco0);
           Inc(mQtdeReg0990);

           Inc(mLinha);
           mRegistro := '|0990' +                                                                 // 01 - REG.
                        '|'+ InttoStr(mQtdeBloco0)+                                               // 02 - Quantidade de registro do bloco 0.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );
      End;
      
      Progresso2('Registro: 0990...');
end;

{* REGISTRO A001: ABERTURA DO BLOCO A * }
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroA001;
begin
      Progresso1('Abertura do BLOCO A', tEmpresas.RecordCount+1);

      // Matriz.
      tNotas.SQL.Clear;
      tNotas.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
      tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasServico   WHERE(Data_Emissao BETWEEN :pDataIni AND :pDataFim)) +');
      tNotas.SQL.Add('       (SELECT COUNT(*) FROM NotasTerceirosItens NTI');
      tNotas.SQL.Add('       WHERE (SELECT ISNULL(Servico, 0) FROM Produtos WHERE Codigo = NTI.Codigo_Mercadoria) = 1');
      tNotas.SQL.Add('       AND (SELECT Tributavel FROM Cybersoft_Cadastros.dbo.CSTPIS WHERE Codigo = NTI.CST_PIS) = 1');
      tNotas.SQL.Add('       AND NTI.Data_Entrada BETWEEN :pDataIni AND :pDataFim');
      tNotas.SQL.Add('       AND (SELECT ISNULL(Provisoria, 0)    FROM NotasTerceiros NT WHERE NT.Nota =  NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1');
      tNotas.SQL.Add('       AND (SELECT ISNULL(Desdobramento, 0) FROM NotasTerceiros NT WHERE NT.Nota =  NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1) AS QtdeNotas');
      tNotas.SQL.Add('INTO #Temp');
      // Filiais.
      mSQLMatriz := tNotas.SQL.Text;

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('NotasServico'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'  , mSQLMatriz);
            mSQLFilial := RemoveCaracter('NotasTerceiros', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros', mSQLFilial);
            mSQLFilial := RemoveCaracter('Produtos '     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Produtos '     , mSQLFilial);
            mSQLFilial := RemoveCaracter('INTO #Temp', '', mSQLFilial);
            mSQLFilial := RemoveCaracter('USE '+Dados.Empresas.FieldByName('Banco_Dados').AsString, '', mSQLFilial);

            tNotas.SQL.Add('UNION');
            tNotas.SQL.Add(mSQLFilial);
            tEmpresas.Next;
      End;
      tNotas.SQL.Add('SELECT SUM(QtdeNotas) AS Qtde FROM #Temp');
      tNotas.SQL.Add('DROP TABLE #Temp');
      tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
      tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGA001.SQL');
      tNotas.Open;

      i := 1;
      if tNotas.FieldByName('Qtde').AsInteger > 0 then begin
         i := 0;
      end;

      Inc(mLinha);
      mRegistro := '|A001' +                       // 01 - REG.
                   '|'+ InttoStr(i) +              // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';

      Say( mLinha, 000, Arquivo, mRegistro );
      Inc(mQtdeBlocoA);
      Inc(mQtdeRegA001);

      if i = 0 then begin
         if Funcoes.Cancelado = false then begin
            RegistroA010;
         end;
      end;
end;

{* REGISTRO A010 -  "Identificação do estabelecimento" *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroA010;
begin
      Progresso1('Identificação do estabelecimento', tEmpresas.RecordCount+1);

      // Matriz.
      Inc(mLinha);
      mRegistro := '|A010' +                                                 // 01 - REG.
                   '|'+ Dados.Empresas.FieldByName('CNPJ').AsString +        // 02 - CNPJ DO Estabelecimento.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );
      Inc(mQtdeBlocoA);
      Inc(mQtdeRegA010);

      If i = 0 then If Funcoes.Cancelado = false then begin
         RegistroA100(0);
      end;   

      Progresso2('A010');

      // Filiais.
      tEmpresas.First;
      While not tEmpresas.Eof do begin
            tNotas.SQL.Clear;
            tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM ' + tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico   WHERE(Data_Emissao BETWEEN :pDataIni AND :pDataFim))+ ');
            tNotas.SQL.Add('       (SELECT COUNT(*) FROM ' + tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens NTI');
            tNotas.SQL.Add('       WHERE Data_Emissao BETWEEN :pDataIni AND :pDataFim');
            tNotas.SQL.Add('       AND (SELECT ISNULL(Provisoria, 0)    FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1');
            tNotas.SQL.Add('       AND (SELECT ISNULL(Desdobramento, 0) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) <> 1');
            tNotas.SQL.Add('    ) AS QtdeNotas');
            tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
            tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
            //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGA010.SQL');
            tNotas.Open;
            If tNotas.FieldByName('QtdeNotas').AsInteger > 0 then begin
               Inc(mLinha);
               mRegistro := '|A010' +                                            // 01 - REG.
                            '|'+ tEmpresas.FieldByName('CNPJ').AsString +        // 02 - CNPJ DO Estabelecimento.
                            '|';
               Say( mLinha, 000, Arquivo, mRegistro );

               Inc(mQtdeBlocoA);
               Inc(mQtdeRegA010);
               
               If i = 0 then If Funcoes.Cancelado = false then RegistroA100(tEmpresas.FieldByName('Codigo').AsInteger);
            End;

            Progresso2('A010');
            tEmpresas.Next;
      End;
end;

{* REGISTRO A100 - Documento - Nota fiscal de Serviço. *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroA100(Empresa: Integer);
begin
      // Matriz.
      tNotas.SQL.Clear;                                                     
      If Empresa = 0 then
         tNotas.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tNotas.SQL.Add('SELECT 1 AS Tipo_Operacao,');
      tNotas.SQL.Add('       CASE WHEN Cancelada = 0 THEN ''00'' ELSE ''02'' END AS Situacao,');
      tNotas.SQL.Add('       Serie,');
      tNotas.SQL.Add('       '' '' AS SubSerie,');
      tNotas.SQL.Add('       Numero AS Nota,');
      tNotas.SQL.Add('       '' '' AS Chave_NFSE,');
      tNotas.SQL.Add('       Data_Emissao,');
      tNotas.SQL.Add('       NULL AS Data_Conclusao,');
      tNotas.SQL.Add('       Valor_Servico AS Total_Nota,');
      tNotas.SQL.Add('       1 AS Tipo_Pagamento,');
      tNotas.SQL.Add('       ISNULL(Desconto_Valor, 0) AS Desconto_Valor,');
      tNotas.SQL.Add('       Valor_Servico AS BC_PIS,');
      tNotas.SQL.Add('       (Valor_Servico * (Aliquota_PIS/100)) AS Valor_PIS,');
      tNotas.SQL.Add('       Valor_Servico AS BC_COFINS,');
      tNotas.SQL.Add('       (Valor_Servico * (Aliquota_COFINS/100)) AS Valor_COFINS,');
      tNotas.SQL.Add('       0 AS Valor_PISRetido,');
      tNotas.SQL.Add('       0 AS Valor_COFINSRetido,');
      tNotas.SQL.Add('       Valor_ISS,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_PISRecuperar,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_COFINSRecuperar,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_PISRecolher,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_COFINSRecolher,');
      tNotas.SQL.Add('       ''P'' AS Tipo_Emissao,');
      tNotas.SQL.Add('       CAST(Cliente AS VARCHAR(6))+''C'' AS Beneficiario, ');
      tNotas.SQL.Add('       Cliente AS CodBeneficiario, ');
      tNotas.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Tipo_Credito,');
      tNotas.SQL.Add('       (SELECT Conta_TotalNota_C FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Conta_Contabil');
      tNotas.SQL.Add('FROM   NotasServico');
      tNotas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
      tNotas.SQL.Add('UNION ALL');
      tNotas.SQL.Add('SELECT 0 AS Tipo_Operacao,');
      tNotas.SQL.Add('       ''00'' AS Situacao,');
      tNotas.SQL.Add('       NT.Serie,');
      tNotas.SQL.Add('       NT.SubSerie,');
      tNotas.SQL.Add('       NT.Nota,');
      tNotas.SQL.Add('       '' '' AS Chave_NFSE,');
      tNotas.SQL.Add('       NT.Data_Emissao,');
      tNotas.SQL.Add('       NULL Data_Conclusao,');
      tNotas.SQL.Add('       NT.Valor_TotalLiquido,');
      tNotas.SQL.Add('       1 AS Tipo_Pagamento,');
      tNotas.SQL.Add('       0 AS Desconto_Valor,');
      tNotas.SQL.Add('       Valor_TotalLiquido AS BC_PIS,');
      tNotas.sql.add('       Valor_PIS = (SELECT SUM(ROUND(Valor_PIS, 2)) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NT.Nota AND NTI.Data_Emissao = NT.Data_Emissao AND NTI.Fornecedor = NT.Fornecedor AND NTI.Apuracao_PISCOFINS = 1),');
      tNotas.SQL.Add('       NT.Valor_TotalLiquido AS BC_COFINS,');
      tNotas.sql.add('       Valor_COFINS = (SELECT SUM(ROUND(Valor_COFINS, 2)) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NT.Nota AND NTI.Data_Emissao = NT.Data_Emissao AND NTI.Fornecedor = NT.Fornecedor AND NTI.Apuracao_PISCOFINS = 1),');
      tNotas.SQL.Add('       0 ,');
      tNotas.SQL.Add('       0 ,');
      tNotas.SQL.Add('       NT.Valor_ISS,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT PIS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_PISRecuperar,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT COFINS_Recuperar FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_COFINSRecuperar,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT PIS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_PISRecolher,');
      tNotas.SQL.Add('       CASE WHEN Codigo_Adicional01 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional01');
      tNotas.SQL.Add('            WHEN Codigo_Adicional02 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional02');
      tNotas.SQL.Add('            WHEN Codigo_Adicional03 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional03');
      tNotas.SQL.Add('            WHEN Codigo_Adicional04 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional04');
      tNotas.SQL.Add('            WHEN Codigo_Adicional05 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional05');
      tNotas.SQL.Add('            WHEN Codigo_Adicional06 = (SELECT COFINS_Recolher FROM Cybersoft_Cadastros.dbo.Servicos WHERE(Codigo = Servico)) THEN Valor_Adicional06');
      tNotas.SQL.Add('       ELSE 0 END AS Valor_COFINSRecolher,');
      tNotas.SQL.Add('       ''T'' AS Tipo_Emissao,');
      tNotas.SQL.Add('       CAST(NT.Fornecedor AS VARCHAR(6))+''F'',');
      tNotas.SQL.Add('       NT.Fornecedor,');
      tNotas.SQL.Add('       (SELECT Tipo_Credito      FROM ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) AS Tipo_Credito,');
      tNotas.SQL.Add('       (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) AS Conta_Contabil');
      tNotas.SQL.Add('FROM  NotasTerceiros NT');
      tNotas.SQL.Add('WHERE NT.Data_Entrada BETWEEN :pDataini AND :pDataFim');
      tNotas.SQL.Add('  AND ISNULL(NT.Provisoria, 0) = 0');
      tNotas.SQL.Add('  AND ISNULL(NT.Desdobramento, 0) = 0');
      tNotas.SQL.add('  AND (SELECT COUNT(*) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NT.Nota AND NTI.Data_Emissao = NT.Data_Emissao AND NTI.Fornecedor = NT.Fornecedor AND ISNULL(Apuracao_PISCOFINS, 0) = 1) > 0');
      tNotas.SQL.add('  AND ISNULL(Servico, '''') <> '''' ');
      tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
      tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGA100.SQL');
      tNotas.Open;
      Progresso1('Nota Fiscal de Serviço', tNotas.RecordCount+1);

      While (not tNotas.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|A100' +                                                                               // 01 - REG.
                         '|'+ tNotas.FieldByName('Tipo_Operacao').AsString +                                     // 02 - Indicador do tipo de operação.
                         '|'+ iif(tNotas.FieldByName('Tipo_Emissao').AsString = 'P', '0', '1') +                 // 03 - Indicador do emitente do documento fiscal.
                         '|'+ tNotas.FieldByName('Beneficiario').AsString +                                      // 04 - Código do participante.
                         '|'+ tNotas.FieldByName('Situacao').AsString +                                          // 05 - Código de situação do documentos fiscal.
                         '|'+ tNotas.FieldByName('Serie').AsString +                                             // 06 - Série do documento fiscal.
                         '|'+ tNotas.FieldByName('SubSerie').AsString +                                          // 07 - Sub-Série do documento fiscal.
                         '|'+ tNotas.FieldByName('Nota').AsString +                                              // 08 - Número da nota fiscal.
                         '|'+ tNotas.FieldByName('Chave_NFSE').AsString +                                        // 09 - Chave da nota eletrônica de serviço.
                         '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Emissao').AsString) +               // 10 - Data de emissão da nota fiscal.
                         '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Emissao').AsString) +               // 11 - Data da conclusão do serviço.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Total_Nota').AsCurrency) +               // 12 - Receita Bruta Não-Cumulativa - Tributada no Mercado Interno.
                         '|'+ tNotas.FieldByName('Tipo_Pagamento').AsString +                                    // 13 - Indicador do tipo de pagamento.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Desconto_Valor').AsCurrency)+            // 14 - Valor do desconto.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('BC_PIS').AsCurrency)+                    // 15 - B.C. PIS.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_PIS').AsCurrency)+                 // 16 - Valor do PIS.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('BC_COFINS').AsCurrency)+                 // 17 - B.C. PIS.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_COFINS').AsCurrency);              // 18 - Valor do PIS.

                         If tNotas.FieldByName('Tipo_Emissao').AsString = 'P' then begin
                            mRegistro := mRegistro +
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_PISRecuperar').AsCurrency)+     // 19 - Valor do PIS Retido.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_COFINSRecuperar').AsCurrency);  // 20 - Valor da COFINS Retida.
                         end else begin
                            mRegistro := mRegistro +
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_PISRecolher').AsCurrency)+      // 19 - Valor do PIS Retido.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_COFINSRecolher').AsCurrency);   // 20 - Valor da COFINS Retida.
                         End;

                         mRegistro := mRegistro +
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_ISS').AsCurrency)+                 // 21 - Valor do ISS.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            If Funcoes.Cancelado = false then
               RegistroA170( Empresa, tNotas.FieldByName('Nota').Asinteger
                           , tNotas.FieldByName('Data_Emissao').AsDateTime
                           , tNotas.FieldByName('CodBeneficiario').AsInteger
                           , tNotas.FieldByName('Tipo_Emissao').AsString );
            Inc(mQtdeBlocoA);
            Inc(mQtdeRegA100);

            tNotas.Next;

            Progresso2('Registro: A100...');
      End;
end;

{* REGISTRO A170 - ITENS DO DOCUMENTOS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroA170(Empresa, Nota: integer; Data: TDate; Fornecedor: integer; Emissor:string);
begin
      Progresso3('Registro: A170...', 1);

      // Matriz.
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      if Emissor = 'P' then begin
         tItens.SQL.Add('SELECT LTRIM(RTRIM(Servico))+''S'' AS Codigo');
         tItens.SQL.Add('       ,1 AS Tipo_Operacao');
         tItens.SQL.Add('       ,Valor_Servico AS Total_Item');
         tItens.SQL.Add('       ,ISNULL(Desconto_Valor, 0) AS Desconto_Valor');
         tItens.SQL.Add('       ,Valor_Servico AS Valor_BCPIS');
         tItens.SQL.Add('       ,(Valor_Servico * (Aliquota_PIS/100)) AS Valor_PIS');
         tItens.SQL.Add('       ,Valor_Servico AS Valor_BCCOFINS');
         tItens.SQL.Add('       ,(Valor_Servico * (Aliquota_COFINS/100)) AS Valor_COFINS');
         tItens.SQL.Add('       ,(SELECT CSTPIS    FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS CST_PIS');
         tItens.SQL.Add('       ,(SELECT CSTCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS CST_COFINS');
         tItens.SQL.Add('       ,Aliquota_PIS');
         tItens.SQL.Add('       ,Aliquota_COFINS');
         tItens.SQL.Add('       ,(SELECT Conta_TotalNota_C FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Conta_Contabil');
         tItens.SQL.Add('       ,0 AS Tipo_Credito');
         tItens.SQL.Add('       ,1 as item');
         tItens.SQL.Add('FROM   NotasServico');
         tItens.SQL.Add('WHERE  Numero       = :pNota');
         tItens.SQL.Add('AND    Data_Emissao = :pData');
         tItens.SQL.Add('AND    Cliente      = :pForn');
      end else begin
         tItens.SQL.Add('SELECT LTRIM(RTRIM(Codigo_Mercadoria))+''P'' AS Codigo');
         tItens.SQL.Add('       ,0 AS Tipo_Operacao');
         tItens.SQL.Add('       ,Valor_Liquido AS Total_Item');
         tItens.SQL.Add('       ,0 AS Desconto_Valor');
         tItens.SQL.Add('       ,Valor_BCPIS');
         tItens.SQL.Add('       ,Valor_PIS');
         tItens.SQL.Add('       ,Valor_BCCOFINS');
         tItens.SQL.Add('       ,Valor_COFINS');
         tItens.SQL.Add('       ,CST_PIS');
         tItens.SQL.Add('       ,CST_COFINS');
         tItens.SQL.Add('       ,Aliquota_PIS');
         tItens.SQL.Add('       ,Aliquota_COFINS ');
         tItens.SQL.Add('       ,(SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Conta_Contabil');
         tItens.SQL.Add('       ,(SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Tipo_Credito');
         tItens.SQL.Add('       ,row_number() over (order by Codigo_Mercadoria) as item');
         tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
         tItens.SQL.Add('WHERE  Apuracao_PISCOFINS = 1');
         tItens.SQL.Add('AND    Nota         = :pNota');
         tItens.SQL.Add('AND    Data_Emissao = :pData');
         tItens.SQL.Add('AND    Fornecedor   = :pForn');
      end;
      tItens.ParamByName('pNota').AsInteger := Nota;
      tItens.ParamByName('pData').AsDate    := Data;
      tItens.ParamByName('pForn').AsInteger := Fornecedor;
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGA170.SQL');
      tItens.Open;
      titens.First;

      while not tItens.eof do begin
            Inc(mLinha);
            mRegistro := '|A170' +                                                                                                                     // 01 - REG.
                         '|'+ tItens.FieldByName('Item').AsString +                                                                                    // 02 - Número sequencial do item.
                         '|'+ tItens.FieldByName('Codigo').AsString +                                                                                  // 03 - Codigo do item.
                         '|'+ '' +                                                                                                                     // 04 - Descrição complementar do item.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Total_Item').AsCurrency) +                                                      // 05 - Valor total do item.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Desconto_Valor').AsCurrency) +                                                  // 06 - Valor do desconto do item.
                         '|'+ iif(tItens.FieldByName('Tipo_Credito').Asinteger > 0, PoeZero(2, tItens.FieldByName('Tipo_Credito').Asinteger), '') +    // 07 - Código da B.C. Crédito.
                         '|'+ iif(tItens.FieldByName('Tipo_Operacao').AsInteger = 1, '', '0') +                                                        // 08 - Indicador da origem do crédito.
                         '|'+ tItens.FieldByName('CST_PIS').AsString +                                                                                 // 09 - CST PIS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_BCPIS').AsCurrency) +                                                     // 10 - Valor B.C.PIS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Aliquota_PIS').AsFloat) +                                                       // 11 - Alíquota do PIS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_PIS').AsCurrency) +                                                       // 12 - Valor do PIS.
                         '|'+ tItens.FieldByName('CST_COFINS').AsString +                                                                              // 13 - CST COFINS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_BCCOFINS').AsCurrency) +                                                  // 14 - Valor B.C.COFINS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Aliquota_COFINS').AsFloat) +                                                    // 15 - Alíquota do COFINS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_COFINS').AsCurrency) +                                                    // 16 - Valor do COFINS.
                         '|'+ tItens.FieldByName('Conta_Contabil').AsString +                                                                          // 17 - Código da conta contabil.
                         '|'+                                                                                                                          // 18 - Código do centro de custos.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeBlocoA);
            Inc(mQtdeRegA170);
            Progresso3('Registro: A170...', 0);
            tItens.next
      end;
end;

{* REGISTRO A990: ENCERRAMENTO DO BLOCO A *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroA990;
begin
      Progresso1('Encerramento do BLOCO A', 1);
      Inc(mQtdeBlocoA);
      Inc(mQtdeRegA990);

      Inc(mLinha);
      mRegistro := '|A990' +                       // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoA)+     // 02 - Quantidade de registro do bloco A.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );
      
      Progresso2('Registro: A990...');
end;

{* REGISTRO C001 - Abertura do bloco C *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC001;
begin
      Progresso1('Abertura do BLOCO C', 1);

      // Matriz.
      tNotas.SQL.Clear;
      tNotas.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasFiscais   WHERE (MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND (Apuracao_PISCOFINS = 1)) +');
      tNotas.SQL.Add('       (SELECT COUNT(*) FROM NotasServico   WHERE (MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno)) +');
      tNotas.SQL.Add('       (SELECT COUNT(*) FROM NotasTerceiros WHERE (MONTH(Data_Entrada) = :pMes) AND (YEAR(Data_Entrada) = :pano)');
      tNotas.SQL.Add('                                                   AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0) AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
      tNotas.SQL.Add('                                                   AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = NotasTerceiros.Referencia_Fiscal)) = 1))');
      tNotas.SQL.Add('       AS Movimento');
      tNotas.SQL.Add('INTO #Temp');

      // Filiais.
      mSQLMatriz := tNotas.SQL.Text;

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('NotasFiscais'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'      , mSQLMatriz);
            mSQLFilial := RemoveCaracter('NotasServico'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'      , mSQLFilial);
            mSQLFilial := RemoveCaracter('TipoNota'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'          , mSQLFilial);
            mSQLFilial := RemoveCaracter('NotasTerceiros'    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros'    , mSQLFilial);
            mSQLFilial := RemoveCaracter('ReferenciasFiscais', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais', mSQLFilial);
            mSQLFilial := RemoveCaracter('INTO #Temp'        , '', mSQLFilial);
            mSQLFilial := RemoveCaracter('USE '+Dados.EmpresasBanco_Dados.AsString, '', mSQLFilial);
            tNotas.SQL.Add('UNION ALL');
            tNotas.SQL.Add(mSQLFilial);
            tEmpresas.Next;
      End;
      tNotas.SQL.Add('SELECT SUM(ISNULL(Movimento, 0)) AS Movimento FROM #Temp');
      tNotas.SQL.Add('DROP TABLE #Temp');
      tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC001.SQL');
      tNotas.Open;
      
      i := 1;
      If tNotas.FieldByName('Movimento').AsInteger > 0 then i := 0;

      Inc(mLinha);
      mRegistro := '|C001' +                       // 01 - REG.
                   '|'+ InttoStr(i) +              // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';

      Say(mLinha, 000, Arquivo, mRegistro);
      Inc(mQtdeBlocoC);
      Inc(mQtdeRegC001);

      If i = 0 then If Funcoes.Cancelado = false then
         RegistroC010;

      Progresso2('Registro: C001...');
end;

{* REGISTRO C010 -  "Identificação do estabelecimento" *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC010;
begin
      Progresso1('Identificação do estabelecimento', tEmpresas.RecordCount+1);

      // Matriz.
      Inc(mLinha);
      mRegistro := '|C010' +                                            // 01 - REG.
                   '|'+ Dados.Empresas.FieldByName('CNPJ').AsString +   // 02 - CNPJ DO Estabelecimento.
                   '|'+ InttoStr(cTipoApuracao.ItemIndex+1) +           // 03 - Indicador da apuração das contribuições e crédito.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      If cTipoApuracao.ItemIndex = 0 then If Funcoes.Cancelado = false then
         RegistroC180(0);
      If cTipoApuracao.ItemIndex = 1 then If Funcoes.Cancelado = false then
         RegistroC100(0);
      If Funcoes.Cancelado = false then
         RegistroC190(0);
      If Funcoes.Cancelado = false then
         RegistroC500(0);

      Inc(mQtdeBlocoC);
      Inc(mQtdeRegC010);

      Progresso2('Registro: C010...');

      // Filiais.
      tEmpresas.First;
      While not tEmpresas.Eof do begin
            tNotas.SQL.Clear;
            tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais   AS NF WHERE(MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) AND (Apuracao_PISCOFINS = 1)) +');
            tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico   AS NF WHERE(MONTH(Data_Emissao) = :pMes) AND (YEAR(Data_Emissao) = :pAno) ) +');
            tNotas.SQL.Add('       (SELECT COUNT(*) FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros AS NT WHERE(MONTH(Data_Entrada) = :pMes) AND (YEAR(Data_Entrada) = :pAno)');
            tNotas.SQL.Add('        AND (ISNULL(Provisoria, 0) = 0) AND (ISNULL(Desdobramento, 0) = 0) AND ((SELECT Apuracao_PISCOFINS FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) = 1))');
            tNotas.SQL.Add('       AS QtdeNotas');
            tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
            tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
            //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC010_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
            tNotas.Open;

            If tNotas.FieldByName('QtdeNotas').AsInteger > 0 then begin
               Inc(mLinha);
               mRegistro := '|C010' +                                            // 01 - REG.
                            '|'+ tEmpresas.FieldByName('CNPJ').AsString +        // 02 - CNPJ DO Estabelecimento.
                            '|'+ InttoStr(cTipoApuracao.ItemIndex+1) +           // 03 - Indicador da apuração das contribuições e crédito.
                            '|';
               Say( mLinha, 000, Arquivo, mRegistro );

               If cTipoApuracao.ItemIndex = 0 then If Funcoes.Cancelado = false then RegistroC180(tEmpresas.FieldByName('Codigo').AsInteger);
               If cTipoApuracao.ItemIndex = 1 then If Funcoes.Cancelado = false then RegistroC100(tEmpresas.FieldByName('Codigo').AsInteger);
               If Funcoes.Cancelado = false then RegistroC190(tEmpresas.FieldByName('Codigo').AsInteger);
               If Funcoes.Cancelado = false then RegistroC500(tEmpresas.FieldByName('Codigo').AsInteger);

               Inc(mQtdeBlocoC);
               Inc(mQtdeRegC010);
            End;
            tEmpresas.Next;

            Progresso2('Registro: C010...');
      End;
end;

{* REGISTRO C100 - Notas Fiscais *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC100(Empresa: Integer);
begin
      // Matriz.
      with tNotas do begin
           SQL.Clear;
           If Empresa = 0 then
              SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
           else
              SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

           // *********** FORÇA A PASSAR MESMO QUANDO DA ERRO DE DIVISÃO POR ZERO **************
           SQL.Add('SET ARITHABORT OFF');
           SQL.Add('SET ANSI_WARNINGS OFF');
           SQL.Add('SET ARITHIGNORE ON');

           //***********************************************************************************
           SQL.Add('SET ARITHABORT OFF');
           SQL.Add('SET ANSI_WARNINGS OFF');
           SQL.Add('SET ARITHIGNORE ON');
           SQL.Add('SELECT Saida_Entrada AS Tipo_Operacao,');
           SQL.Add('       ''0'' AS Tipo_Emissao,');
           SQL.Add('       Cliente_Codigo AS Codigo_Beneficiario,');
           SQL.Add('       CAST(Cliente_Codigo AS VARCHAR(6))+''C'' AS Beneficiario,');
           SQL.Add('       ''55'' AS Modelo,');
           SQL.Add('       CASE WHEN ISNULL(Cancelada, 0) = 1 THEN ''02'' ');
           SQL.Add('            WHEN ISNULL(Cancelada, 0) = 0 AND (ISNULL(Complementar, 0) = 0) AND (ISNULL(NFe_Denegada, 0) = 0) THEN ''00'' ');
           SQL.Add('            WHEN ISNULL(Cancelada, 0) = 0 AND (ISNULL(Complementar, 0) = 1) AND (ISNULL(NFe_Denegada, 0) = 0) THEN ''06'' ');
           SQL.Add('            WHEN ISNULL(Cancelada, 0) = 0 AND (ISNULL(NFe_Denegada, 0) = 1) THEN ''04'' ');
           SQL.Add('       END AS Situacao,');
           SQL.Add('       Serie,');
           SQL.Add('       Numero AS Nota,');
           SQL.Add('       NFe_cNF AS Chave_NFe,');
           SQL.Add('       Data_Emissao,');
           SQL.Add('       Data_Emissao AS Data_Entrada,');
           SQL.Add('       Valor_TotalNota,');
           SQL.Add('       1 AS Tipo_Pagamento,');
           SQL.Add('       ISNULL(Total_Descontos, 0) AS Desconto_Valor,');
           SQL.Add('       0 AS Abatimento,');
           SQL.Add('       Valor_TotalProdutos,');
           SQL.Add('       ISNULL(Modalidade_Frete, 9) AS Modalidade_Frete,');
           SQL.Add('       Total_Frete,');
           SQL.Add('       Valor_Seguro,');
           SQL.Add('       Valor_OutrasDespesas,');
           SQL.Add('       BCICMS,');
           SQL.Add('       Valor_ICMS,');
           SQL.Add('       BCICMS_Substitutivo,');
           SQL.Add('       ValorICMS_Substitutivo,');
           SQL.Add('       Valor_TotalIPI,');
           SQL.Add('       CASE WHEN Cancelada <> 1 THEN');
           SQL.Add('            (SELECT SUM(ROUND(NTI.Valor_PIS, 2)) FROM NotasItens NTI WHERE(NTI.Nota = Numero) AND (NTI.Data = Data_Emissao))');
           SQL.Add('       ELSE');
           SQL.Add('           CAST(0 AS money)');
           SQL.Add('       END AS Valor_PIS,');
           SQL.Add('       CASE WHEN Cancelada <> 1 THEN');
           SQL.Add('            (SELECT SUM(ROUND(NTI.Valor_COFINS, 2)) FROM NotasItens NTI WHERE(NTI.Nota = Numero) AND (NTI.Data = Data_Emissao))');
           SQL.Add('       ELSE');
           SQL.Add('           0');
           SQL.Add('       END AS Valor_COFINS,');
//           SQL.Add('       (select isnull(sum(Valor_PIS), 0) from NotasItens ni where ni.Nota = Numero and ni.Data = Data_Emissao and (select Tributa_PISCOFINSST from Produtos prd where prd.Codigo = ni.Codigo_Mercadoria) = 1');
//           SQL.Add('                                         and (select Varejista from Clientes cli where cli.Codigo = Cliente_Codigo) = 1) as Valor_PISST,');
//           SQL.Add('       (select isnull(sum(Valor_COFINS), 0) from NotasItens ni where ni.Nota = Numero and ni.Data = Data_Emissao and (select Tributa_PISCOFINSST from Produtos prd where prd.Codigo = ni.Codigo_Mercadoria) = 1');
//           SQL.Add('                                         and (select Varejista from Clientes cli where cli.Codigo = Cliente_Codigo) = 1) as Valor_COFINSST,');
           SQL.Add('       Valor_PISST,');
           SQL.Add('       Valor_COFINSST,');
           SQL.Add('       DI,');
           SQL.Add('       ROUND((SELECT Valor_PIS    FROM ProcessosDocumentos PD WHERE(PD.Numero_Declaracao = NotasFiscais.DI) AND (PD.Processo = NotasFiscais.Processo)), 4, 2) AS PIS_Importacao,');
           SQL.Add('       ROUND((SELECT Valor_COFINS FROM ProcessosDocumentos PD WHERE(PD.Numero_Declaracao = NotasFiscais.DI) AND (PD.Processo = NotasFiscais.Processo)), 4, 2) AS COFINS_Importacao,');
           SQL.Add('       ''P'' AS Emissor');
           SQL.Add('FROM   NotasFiscais');
           SQL.Add('WHERE  (Saida_Entrada = 1) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Apuracao_PISCOFINS = 1)');
           SQL.Add('UNION ALL');
           SQL.Add('SELECT Saida_Entrada AS Tipo_Operacao,');
           SQL.Add('       ''0'' AS Tipo_Emissao,');
           SQL.Add('       Fornecedor_Codigo AS Codigo_Beneficiario,');
           SQL.Add('       CAST(Fornecedor_Codigo AS VARCHAR(6))+''F'' AS Beneficiario,');
           SQL.Add('       ''55'' AS Modelo,');
           SQL.Add('       CASE WHEN ISNULL(Cancelada, 0) = 1 THEN ''02'' ');
           SQL.Add('            WHEN ISNULL(Cancelada, 0) = 0 AND (ISNULL(Complementar, 0) = 0) AND (ISNULL(NFe_Denegada, 0) = 0) THEN ''00'' ');
           SQL.Add('            WHEN ISNULL(Cancelada, 0) = 0 AND (ISNULL(Complementar, 0) = 1) AND (ISNULL(NFe_Denegada, 0) = 0) THEN ''06'' ');
           SQL.Add('            WHEN ISNULL(Cancelada, 0) = 0 AND (ISNULL(NFe_Denegada, 0) = 1) THEN ''04'' ');
           SQL.Add('       END AS Situacao,');
           SQL.Add('       Serie,');
           SQL.Add('       Numero AS Nota,');
           SQL.Add('       NFe_cNF AS Chave_NFe,');
           SQL.Add('       Data_Emissao,');
           SQL.Add('       Data_Emissao AS Data_Entrada,');
           SQL.Add('       Valor_TotalNota,');
           SQL.Add('       1 AS Tipo_Pagamento,');
           SQL.Add('       ISNULL(Total_Descontos, 0) AS Desconto_Valor,');
           SQL.Add('       0 AS Abatimento,');
           SQL.Add('       Valor_TotalProdutos,');
           SQL.Add('       ISNULL(Modalidade_Frete, 9) AS Modalidade_Frete,');
           SQL.Add('       Total_Frete,');
           SQL.Add('       Valor_Seguro,');
           SQL.Add('       Valor_OutrasDespesas,');
           SQL.Add('       BCICMS,');
           SQL.Add('       Valor_ICMS,');
           SQL.Add('       BCICMS_Substitutivo,');
           SQL.Add('       ValorICMS_Substitutivo,');
           SQL.Add('       Valor_TotalIPI,');
           SQL.Add('       CASE WHEN Cancelada <> 1 THEN');
           SQL.Add('            (SELECT SUM(ROUND(NTI.Valor_PIS, 2)) FROM NotasItens NTI WHERE(NTI.Nota = Numero) AND (NTI.Data = Data_Emissao))');
           SQL.Add('       ELSE');
           SQL.Add('           CAST(0 AS money)');
           SQL.Add('       END AS Valor_PIS,');
           SQL.Add('       CASE WHEN Cancelada <> 1 THEN');
           SQL.Add('            (SELECT SUM(ROUND(NTI.Valor_COFINS, 2)) FROM NotasItens NTI WHERE(NTI.Nota = Numero) AND (NTI.Data = Data_Emissao))');
           SQL.Add('       ELSE');
           SQL.Add('           0');
           SQL.Add('       END AS Valor_COFINS,');
           SQL.Add('       0 AS Valor_PISST,');
           SQL.Add('       0 AS Valor_COFINSST,');
           SQL.Add('       DI,');
           SQL.Add('       ROUND((SELECT Valor_PIS    FROM ProcessosDocumentos PD WHERE(PD.Numero_Declaracao = NotasFiscais.DI) AND (PD.Processo = NotasFiscais.Processo)), 4, 2) AS PIS_Importacao,');
           SQL.Add('       ROUND((SELECT Valor_COFINS FROM ProcessosDocumentos PD WHERE(PD.Numero_Declaracao = NotasFiscais.DI) AND (PD.Processo = NotasFiscais.Processo)), 4, 2) AS COFINS_Importacao,');
           SQL.Add('       ''P'' AS Emissor');
           SQL.Add('FROM   NotasFiscais');
           SQL.Add('WHERE  Saida_Entrada = 0');
           SQL.Add('  AND (Apuracao_PISCOFINS = 1)');
           SQL.Add('  AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
           If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
              SQL.Add('  AND MONTH(Data_Emissao) = CASE WHEN DI <> '''' THEN MONTH(Data_DI) ELSE MONTH(Data_Emissao) END');
           End;
           SQL.Add('UNION ALL');
           SQL.Add('SELECT 0,');
           SQL.Add('       ''1'',');
           SQL.Add('       Fornecedor,');
           SQL.Add('       CAST(Fornecedor AS VARCHAR(6))+''F'',');
           SQL.Add('       Modelo,');
           SQL.Add('       ''00'',');
           SQL.Add('       Serie,');
           SQL.Add('       Nota,');
           SQL.Add('       NFe_cNF,');
           SQL.Add('       Data_Emissao,');
           SQL.Add('       Data_Entrada,');
           SQL.Add('       Valor_TotalNota,');
           SQL.Add('       1,');
           SQL.Add('       ISNULL(Valor_TotalDescontos, 0),');
           SQL.Add('       0,');
           SQL.Add('       Valor_TotalProdutos,');
           SQL.Add('       9,');
           SQL.Add('       0,');
           SQL.Add('       0,');
           SQL.Add('       0,');
           SQL.Add('       Valor_BCICMSOper,');
           SQL.Add('       Valor_ICMSOper,');
           SQL.Add('       Valor_BCICMSSub,');
           SQL.Add('       Valor_ICMSSub,');
           SQL.Add('       Valor_TotalIPI,');
           SQL.Add('       NotasTerceiros.Valor_PIS,');
           SQL.Add('       NotasTerceiros.Valor_COFINS,');
           SQL.Add('       0 AS Valor_PISST,');
           SQL.Add('       0 AS Valor_COFINSST,');
           SQL.Add('       NULL,');
           SQL.Add('       0,');
           SQL.Add('       0,');
           SQL.Add('       ''T'' AS Emissor');
           SQL.Add('FROM   NotasTerceiros');
           SQL.Add('WHERE (Servico IS NULL) AND (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
           SQL.Add('      AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0)');
           SQL.Add('      AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
           SQL.Add('      AND Modelo IN(''01'',''1'',''4'',''04'',''1B'',''55'') ');
           SQL.Add('      AND (SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1');
           SQL.Add('ORDER BY Data_Emissao');
           ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
           ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
           //SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC100_Empresa'+InttoStr(Empresa)+'.SQL');
           Open;
      end;
      Progresso3('Notas Fiscais', tNotas.RecordCount);

      While (not tNotas.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            If (tNotas.FieldByName('Situacao').AsString = '00') or (tNotas.FieldByName('Situacao').AsString = '06') then begin
               mRegistro := '|C100' +                                                                               // 01 - REG.
                            '|'+ tNotas.FieldByName('Tipo_Operacao').AsString +                                     // 02 - Indicador do tipo de operação.
                            '|'+ tNotas.FieldByName('Tipo_Emissao').AsString +                                      // 03 - Indicador do emitente do documento fiscal.
                            '|'+ tNotas.FieldByName('Beneficiario').AsString +                                      // 04 - Beneficiario.
                            '|'+ tNotas.FieldByName('Modelo').AsString +                                            // 05 - Código do modelo do documentos fiscal.
                            '|'+ tNotas.FieldByName('Situacao').AsString +                                          // 06 - Código de situação do documentos fiscal.
                            '|'+ tNotas.FieldByName('Serie').AsString +                                             // 07 - Série do documento fiscal.
                            '|'+ tNotas.FieldByName('Nota').AsString +                                              // 08 - Número da nota fiscal.
                            '|'+ tNotas.FieldByName('Chave_NFe').AsString+                                          // 09 - Chave da nota eletrônica de serviço.
                            '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Emissao').AsString) +               // 10 - Data de Emissão da nota fiscal.
                            '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Entrada').AsString) +               // 11 - Data da Entrda / Saída.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_TotalNota').AsCurrency)+           // 12 - Total da Nota.
                            '|'+ tNotas.FieldByName('Tipo_Pagamento').AsString +                                    // 13 - Indicador do tipo de pagamento.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Desconto_Valor').AsCurrency)+            // 14 - Valor do desconto.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Abatimento').AsCurrency)+                // 15 - Abatimento não tributado e não comercial.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_TotalProdutos').AsCurrency)+       // 16 - Total das mercadorias.
                            '|'+ tNotas.FieldByName('Modalidade_Frete').AsString +                                  // 17 - Modalidade de Frete.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Total_Frete').AsCurrency)+               // 18 - Valor do frete.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_Seguro').AsCurrency)+              // 19 - Valor do seguro.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_OutrasDespesas').AsCurrency)+      // 20 - Valor de outras despesas acessórias.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('BCICMS').AsCurrency)+                    // 21 - Valor da base de cálculo do ICMS.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_ICMS').AsCurrency)+                // 22 - Valor do ICMS.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('BCICMS_Substitutivo').AsCurrency)+       // 23 - B.C. ICMS Substitutivo.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency)+    // 24 - Valor Substitutivo.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_TotalIPI').AsCurrency)+            // 25 - Total do IPI.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_PIS').AsCurrency)+                 // 26 - Total do PIS.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_COFINS').AsCurrency)+              // 27 - Total da COFINS.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_PISST').AsCurrency)+               // 28 - Total do PIS ST.
                            '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_COFINSST').AsCurrency)+            // 29 - Total da COFINS ST.
                            '|';
            end else begin
               mRegistro := '|C100' +                                                                               // 01 - REG.
                            '|'+ tNotas.FieldByName('Tipo_Operacao').AsString +                                     // 02 - Indicador do tipo de operação.
                            '|'+ tNotas.FieldByName('Tipo_Emissao').AsString +                                      // 03 - Indicador do emitente do documento fiscal.
                            '|'+                                                                                    // 04 - Beneficiario.
                            '|'+ tNotas.FieldByName('Modelo').AsString +                                            // 05 - Código do modelo do documentos fiscal.
                            '|'+ tNotas.FieldByName('Situacao').AsString +                                          // 06 - Código de situação do documentos fiscal.
                            '|'+ tNotas.FieldByName('Serie').AsString +                                             // 07 - Série do documento fiscal.
                            '|'+ tNotas.FieldByName('Nota').AsString+                                               // 08 - Número da nota fiscal.
                            '|'+ tNotas.FieldByName('Chave_NFe').AsString+                                          // 09 - Chave da nota eletrônica de serviço.
                            '|'+                                                                                    // 10 - Data de Emissão da nota fiscal.
                            '|'+                                                                                    // 11 - Data da Entrda / Saída.
                            '|'+                                                                                    // 12 - Total da Nota.
                            '|'+                                                                                    // 13 - Indicador do tipo de pagamento.
                            '|'+                                                                                    // 14 - Valor do desconto.
                            '|'+                                                                                    // 15 - Abatimento não tributado e não comercial.
                            '|'+                                                                                    // 16 - Total das mercadorias.
                            '|'+                                                                                    // 17 - Modalidade de Frete.
                            '|'+                                                                                    // 18 - Valor do frete.
                            '|'+                                                                                    // 19 - Valor do seguro.
                            '|'+                                                                                    // 20 - Valor de outras despesas acessórias.
                            '|'+                                                                                    // 21 - Valor da base de cálculo do ICMS.
                            '|'+                                                                                    // 22 - Valor do ICMS.
                            '|'+                                                                                    // 23 - B.C. ICMS Substitutivo.
                            '|'+                                                                                    // 24 - Valor Substitutivo.
                            '|'+                                                                                    // 25 - Total do IPI.
                            '|'+                                                                                    // 26 - Total do PIS.
                            '|'+                                                                                    // 27 - Total da COFINS.
                            '|'+                                                                                    // 28 - Total do PIS ST.
                            '|'+                                                                                    // 29 - Total da COFINS ST.
                            '|';
            End;
            Say( mLinha, 000, Arquivo, mRegistro );

            If ((tNotas.FieldByName('Situacao').AsString = '00') or (tNotas.FieldByName('Situacao').AsString = '06')) and (Funcoes.Cancelado = false) then begin
               If (tNotas.FieldByName('Tipo_Operacao').AsInteger = 0) and (tNotas.FieldByName('PIS_Importacao').AsCurrency > 0) then RegistroC120;
               If Empresa = 0 then begin
                  RegistroC170(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, tNotas.FieldByName('Codigo_Beneficiario').AsInteger, tNotas.FieldByName('Emissor').AsString, 0)
               end else
                  RegistroC170(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, tNotas.FieldByName('Codigo_Beneficiario').AsInteger, tNotas.FieldByName('Emissor').AsString, tEmpresas.FieldByName('Codigo').AsInteger);
            End;

            Inc(mQtdeBlocoC);
            Inc(mQtdeRegC100);

            tNotas.Next;

            Progresso3('Registro: C100...', 0);
      End;
end;

{* REGISTRO C120 -  Informações de importação *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC120;
begin
      Progresso4('Registro: C120', 1);
      Inc(mLinha);
      mRegistro := '|C120' +                                                                          // 01 - REG.
                   '|0'+                                                                              // 02 - Documento de importação
                   '|'+ tNotas.FieldByName('DI').AsString +                                           // 03 - Número do documento de importação.
                   '|'+ FormatFloat('#0.00', tNotas.FieldByName('PIS_Importacao').AsCurrency)+        // 04 - Valor do PIS importação.
                   '|'+ FormatFloat('#0.00', tNotas.FieldByName('COFINS_Importacao').AsCurrency)+     // 05 - Valor da COFINS Importação.
                   '|'+                                                                               // 06 - Número do Ato Concessório do regime Drawback.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeBlocoC);
      Inc(mQtdeRegC120);

      Progresso4('Registro: C120', 0);
end;

{REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC170(Nota:Integer; DataEmissao: TDate; Beneficiario: Integer; Emissor: String; Empresa: Integer);
Var
   mDescricao : WideString;
   mItem      : Integer;                                                                               
   mBCPIS     : Real;
   mBCCOFINS  : Real;
   mQuantidade: String;
begin
      With Dados, dmFiscal do begin
           with tItens do begin
                SQL.Clear;
                SQL.Add('USE ' + Empresas.FieldByName('Banco_Dados').AsString);
                If Emissor = 'P' then begin
                   SQL.Add('SELECT Nota,');
                   SQL.Add('       Item,');
                   SQL.Add('       CAST(NotasItens.Codigo_Mercadoria AS VARCHAR(15))+''P'' AS Codigo_Mercadoria,');
                   SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
                   SQL.Add('       NotasItens.Descricao_Mercadoria,');
                   SQL.Add('       Quantidade,');
                   SQL.Add('       Unidade_Medida,');
                   SQL.Add('       Valor_Total,');
                   SQL.Add('       (RTRIM(NotasItens.CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST_ICMS,');
                   SQL.Add('       NotasFiscais.Natureza_Codigo,');
                   SQL.Add('       Valor_BCICMSOper = ISNULL(Valor_BCICMSOper, 0),');
                   SQL.Add('       NotasItens.Aliquota_ICMSOper,');
                   SQL.Add('       Valor_ICMSOper = ISNULL(Valor_ICMSOper, 0),');
                   SQL.Add('       Valor_BCICMSSub = ISNULL(Valor_BCICMSSub, 0),');
                   SQL.Add('       NotasItens.Aliquota_ICMSSub,');
                   SQL.Add('       Valor_ICMSSub = ISNULL(Valor_ICMSSub, 0),');
                   SQL.Add('       CSTIPI,');
                   SQL.Add('       (SELECT Enquadramento_IPI FROM NCM WHERE(NCM.NCM = NotasItens.NCM)) AS Enquadramento_IPI,');
                   SQL.Add('       NotasItens.Aliquota_IPI,');
                   SQL.Add('       Total_IPI,');
                   SQL.Add('       NotasItens.CSTPIS,');
                   SQL.Add('       NotasItens.CSTCOFINS,');
                   SQL.Add('       Valor_BCPIS = ISNULL(NotasItens.Valor_BCPIS, 0),');
                   SQL.Add('       NotasItens.Aliquota_PIS,');
                   SQL.Add('       NotasItens.Aliquota_PISRed,');
                   SQL.Add('       NotasItens.Aliquota_COFINS,');
                   SQL.Add('       NotasItens.Aliquota_COFINSRed,');
                   SQL.Add('       CAST(ISNULL(NotasItens.Valor_PIS, 0)    AS DECIMAL(18,2)) AS Valor_PIS,');
                   SQL.Add('       CAST(ISNULL(NotasItens.Valor_COFINS, 0) AS DECIMAL(18,2)) AS Valor_COFINS,');
                   SQL.Add('       Produtos.ClasseEnquadra_IPI,');
                   SQL.Add('       Produtos.Valor_IPI AS Enquadra_ValorIPI,');
                   SQL.Add('       Produtos.Quantidade_Unidade,');
                   SQL.Add('       NotasItens.Saida_Entrada,');
                   SQL.Add('       Conta_Contabil = CASE WHEN NotasItens.Saida_Entrada = 0 THEN');
                   SQL.Add('                             (SELECT Conta_TotalNota_D FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota)');
                   SQL.Add('                        ELSE');
                   SQL.Add('                             (SELECT Conta_TotalNota_C FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota)');
                   SQL.Add('                        END');
                   SQL.Add('FROM  NotasItens, NotasFiscais, Produtos');
                   SQL.Add('WHERE NotasItens.Nota = :pNota');
                   SQL.Add('AND   NotasItens.Data = :pData');
                   SQL.Add('AND   NotasItens.Apuracao_PISCOFINS = 1');
                   SQL.Add('AND   NotasFiscais.Numero = NotasItens.Nota');
                   SQL.Add('AND   NotasFiscais.Data_Emissao = NotasItens.Data');
                   SQL.Add('AND   Produtos.Codigo = NotasItens.Codigo_Mercadoria');
                   SQL.Add('UNION ALL');
                   SQL.Add('SELECT Nota,');
                   SQL.Add('       Item,');
                   SQL.Add('       CAST(NotasItens.Codigo_Mercadoria AS VARCHAR(15))+''P'' AS Codigo_Mercadoria,');
                   SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
                   SQL.Add('       NotasItens.Descricao_Mercadoria,');
                   SQL.Add('       Quantidade = 0,');
                   SQL.Add('       Unidade_Medida = '''',');
                   SQL.Add('       Valor_Total = 0,');
                   SQL.Add('       CST_ICMS = '''',');
                   SQL.Add('       NotasFiscais.Natureza_Codigo,');
                   SQL.Add('       Valor_BCICMSOper = 0,');
                   SQL.Add('       Aliquota_ICMSOper = 0,');
                   SQL.Add('       Valor_ICMSOper = 0,');
                   SQL.Add('       Valor_BCICMSSub = 0,');
                   SQL.Add('       Aliquota_ICMSSub = 0,');
                   SQL.Add('       Valor_ICMSSub = 0,');
                   SQL.Add('       CSTIPI = '''',');
                   SQL.Add('       Enquadramento_IPI = '''',');
                   SQL.Add('       Aliquota_IPI = 0,');
                   SQL.Add('       Total_IPI = 0,');
                   SQL.Add('       CSTPIS = ''05'' ,');
                   SQL.Add('       CSTCOFINS = ''05'',');
                   SQL.Add('       Valor_BCPIS = ISNULL(NotasItens.Valor_BCPISST, 0),');
                   SQL.Add('       NotasItens.Aliquota_PIS,');
                   SQL.Add('       NotasItens.Aliquota_PISRed,');
                   SQL.Add('       NotasItens.Aliquota_COFINS,');
                   SQL.Add('       NotasItens.Aliquota_COFINSRed,');
                   SQL.Add('       CAST(ISNULL(NotasItens.Valor_PISST, 0)    AS DECIMAL(18,2)) AS Valor_PIS,');
                   SQL.Add('       CAST(ISNULL(NotasItens.Valor_COFINSST, 0) AS DECIMAL(18,2)) AS Valor_COFINS,');
                   SQL.Add('       Produtos.ClasseEnquadra_IPI,');
                   SQL.Add('       Produtos.Valor_IPI AS Enquadra_ValorIPI,');
                   SQL.Add('       Produtos.Quantidade_Unidade,');
                   SQL.Add('       NotasItens.Saida_Entrada,');
                   SQL.Add('       Conta_Contabil = CASE WHEN NotasItens.Saida_Entrada = 0 THEN');
                   SQL.Add('                             (SELECT Conta_TotalNota_D FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota)');
                   SQL.Add('                        ELSE');
                   SQL.Add('                             (SELECT Conta_TotalNota_C FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota)');
                   SQL.Add('                        END');
                   SQL.Add('FROM  NotasItens, NotasFiscais, Produtos');
                   SQL.Add('WHERE NotasItens.Nota = :pNota');
                   SQL.Add('AND NotasItens.Data = :pData');
                   SQL.Add('AND NotasItens.Saida_Entrada = 1');
                   SQL.Add('AND NotasItens.Apuracao_PISCOFINS = 1');
                   SQL.Add('AND NotasFiscais.Numero = NotasItens.Nota');
                   SQL.Add('AND NotasFiscais.Data_Emissao = NotasItens.Data');
                   SQL.Add('AND Produtos.Codigo = NotasItens.Codigo_Mercadoria');
                   SQL.Add('AND (select Tributa_PISCOFINSST from Produtos where Produtos.Codigo = NotasItens.Codigo_Mercadoria) = 1');
                   SQL.Add('AND (select Varejista from Clientes cli where cli.Codigo = NotasFiscais.Cliente_Codigo) = 1');
                end else begin
                   SQL.Add('SELECT NTI.Nota,');
                   SQL.Add('       NTI.Item,');
                   SQL.Add('       CASE WHEN (SELECT ISNULL(Servico, 0) FROM Produtos WHERE Codigo = NTI.Codigo_Mercadoria) = 0 THEN');
                   SQL.Add('            CAST(NTI.Codigo_Mercadoria AS VARCHAR(15))+''P'' ');
                   SQL.Add('       ELSE');
                   SQL.Add('            CAST(NTI.Codigo_Mercadoria AS VARCHAR(15))+''S'' ');
                   SQL.Add('       END AS Codigo_Mercadoria,');
                   SQL.Add('       Codigo_Mercadoria AS Codigo_Produto,');
                   SQL.Add('       NTI.Descricao_Mercadoria,');
                   SQL.Add('       NTI.Quantidade,');
                   SQL.Add('       NTI.Unidade_Medida,');
                   SQL.Add('       ISNULL(NTI.Valor_Liquido, 0) AS Valor_Total,');
                   SQL.Add('       (RTRIM(NTI.CodigoTrib_TabA)+RTRIM(NTI.CodigoTrib_TabB)) AS CST_ICMS,');
                   SQL.Add('       NT.Natureza_Codigo,');
                   SQL.Add('       Valor_BCICMSOper = ISNULL(NTI.Valor_BCICMSOper, 0),');
                   SQL.Add('       Aliquota_ICMSOper = ISNULL(NTI.Aliquota_ICMSOper, 0),');
                   SQL.Add('       Valor_ICMSOper = ISNULL(NTI.Valor_ICMSOper, 0),');
                   SQL.Add('       Valor_BCICMSSub = ISNULL(NTI.Valor_BCICMSSub, 0),');
                   SQL.Add('       Aliquota_ICMSSub = ISNULL(NTI.Aliquota_ICMSSub, 0),');
                   SQL.Add('       Valor_ICMSSub = ISNULL(NTI.Valor_ICMSSub, 0),');
                   SQL.Add('       NTI.CST_IPI AS CSTIPI,');
                   SQL.Add('       (SELECT Enquadramento_IPI FROM NCM WHERE(NCM.NCM = NTI.NCM)) AS Enquadramento_IPI,');
                   SQL.Add('       Aliquota_IPI = ISNULL(NTI.Aliquota_IPI, 0),');
                   SQL.Add('       ISNULL(NTI.Valor_IPI, 0) AS Total_IPI,');
                   SQL.Add('       NTI.CST_PIS AS CSTPIS,');
                   SQL.Add('       NTI.CST_COFINS AS CSTCOFINS,');
                   SQL.Add('       Valor_BCPIS = ISNULL(NTI.Valor_BCPIS, 0),');
                   SQL.Add('       Aliquota_PIS = ISNULL(NTI.Aliquota_PIS, 0),');
                   SQL.Add('       ISNULL(NTI.Aliquota_PIS, 0) AS Aliquota_PISRed,');
                   SQL.Add('       Aliquota_COFINS = ISNULL(NTI.Aliquota_COFINS, 0),');
                   SQL.Add('       ISNULL(NTI.Aliquota_COFINS, 0) AS Aliquota_COFINSRed,');
                   SQL.Add('       ISNULL(ROUND(NTI.Valor_PIS, 4), 0) AS Valor_PIS,');
                   SQL.Add('       ISNULL(ROUND(NTI.Valor_COFINS, 4), 0) AS Valor_COFINS,');
                   SQL.Add('       (SELECT ClasseEnquadra_IPI FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) AS ClasseEnquadra_IPI,');
                   SQL.Add('       (SELECT Valor_IPI FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) AS Enquadra_ValorIPI,');
                   SQL.Add('       (SELECT Quantidade_Unidade FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) AS Quantidade_Unidade,');
                   SQL.Add('       0 AS Saida_Entrada,');
                   SQL.Add('       Conta_Contabil = (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = NTI.Referencia_Fiscal)');
                   SQL.Add('FROM  NotasTerceirosItens NTI, NotasTerceiros NT');
                   SQL.Add('WHERE (NTI.Nota = :pNota AND NTI.Data_Emissao = :pData AND NTI.Fornecedor = :pForn)');
                   SQL.Add('AND   (NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NTI.Fornecedor = NT.Fornecedor)');
                   SQL.Add('AND   (ISNULL(NT.Provisoria, 0) = 0)');
                   SQL.Add('AND   (ISNULL(NT.Desdobramento, 0) = 0)');
                   ParamByName('pForn').AsInteger := Beneficiario;
                End;

                // Filiais.
                If Empresa > 0 then begin
                   SQL[0] := 'USE ' + tEmpresas.FieldByName('Banco_Dados').AsString;
                End;

                SQL.Add('ORDER BY Item');
                ParamByName('pData').AsDate    := DataEmissao;
                ParamByName('pNota').AsInteger := Nota;
                //SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC170_'+InttoStr(Empresa)+'_'+InttoStr(Nota)+'_'+Emissor+'.SQL');
                Open;
           end;
           Progresso4('Registro: C170', tItens.RecordCount);

           mItem := 0;

           while (not tItens.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);

                 // Limpando codigos de controle da descrição do item.
                 mDescricao := Trim(tItens.FieldByName('Descricao_Mercadoria').AsString);
                 mDescricao := RemoveCaracter(#13, '', mDescricao);
                 mDescricao := RemoveCaracter(#12, '', mDescricao);
                 mDescricao := RemoveCaracter(#10, '', mDescricao);
                 mDescricao := RemoveCaracter(#9 , '', mDescricao);
                 mDescricao := RemoveCaracter('|', '', mDescricao);
                 mDescricao := RemoveCaracter('<{'+Trim(tItens.FieldByName('Codigo_Produto').AsString)+'}>', '', mDescricao);

                 mBCPIS    := 0;
                 mBCCOFINS := 0;
                 {
                 If tItens.FieldByName('Aliquota_PIS').AsFloat <> 0 then begin
                    If cAno.AsInteger > 2013 then begin
                       mBCPIS    := tItens.FieldByName('Valor_BCPIS').AsCurrency;
                    end else begin
                       If tItens.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                          mBCPIS := tItens.FieldByName('Valor_PIS').AsCurrency / (tItens.FieldByName('Aliquota_PIS').AsFloat/100);
                       end else begin
                          mBCPIS := tItens.FieldByName('Valor_BCPIS').Value;
                       End;
                    End;

                    mBCCOFINS := mBCPIS;
                 End;
                 }
                 if tItens.FieldByName('Aliquota_PIS').AsFloat <> 0 then begin
                    mBCPIS    := tItens.FieldByName('Valor_BCPIS').AsCurrency;
                    mBCCOFINS := mBCPIS;
                 end;
                 mQuantidade := '';
                 If tItens.FieldByName('Quantidade').AsFloat > 0 then mQuantidade := FormatFloat('0.00000', tItens.FieldByName('Quantidade').AsFloat);

                 Inc(mItem);

                 mRegistro := '|C170' +                                                                                // 01 - REG.
                              '|' + PoeZero(3, mItem) +                                                                // 02 - Numero sequencia do item.
                              '|' + Trim(tItens.FieldByName('Codigo_Mercadoria').AsString) +                           // 03 - Codigo da mercadoria.
                              '|' +                                                                                    // 04 - Descrição da mercadoria.
                              '|' + mQuantidade +                                                                      // 05 - Quantidade do item.
                              '|' + Trim(tItens.FieldByName('Unidade_Medida').AsString) +                              // 06 - Unidade de medida.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Total').AsCurrency) +                // 07 - Valor total do item.
                              '|' + FormatFloat('0.00', 0) +                                                           // 08 - Valor do desconto comercial.
                              '|0' +                                                                                   // 09 - Movimentação;
                              '|' + Trim(tItens.FieldByName('CST_ICMS').AsString) +                                    // 10 - CST do ICMS.
                              '|' + tItens.FieldByName('Natureza_Codigo').AsString +                                   // 11 - CFOP Código Fiscal de Operação e Prestação.
                              '|' +                                                                                    // 12 - Código da natureza da operação.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency) +           // 13 - Valor da B.C.ICMS Operacional.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat) +             // 14 - Aliquota do ICMS Operacional.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_ICMSOper').AsCurrency) +             // 15 - Valor do ICMS Operacional.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency) +            // 16 - Valor da B.C.ICMS Substitutivo.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Aliquota_ICMSSub').AsFloat) +              // 17 - Aliquota do ICMS Substitutivo.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_ICMSSub').AsCurrency) +              // 18 - Valor do ICMS Substitutivo.
                              '|' + Trim(Empresas.FieldByName('Apuracao_IPI').AsString) +                              // 19 - Periodo de apuração do IPI.
                              '|' + Trim(tItens.FieldByName('CSTIPI').AsString) +                                      // 20 - CST do IPI.
                              '|' +                                                                                    // 21 - Código de enquadramento legal do IPI.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Total').Value) +                     // 22 - Valor da B.C. IPI.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Aliquota_IPI').AsFloat) +                  // 23 - Aliquota do IPI.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Total_IPI').AsCurrency) +                  // 24 - Valor do IPI.
                              '|' + Trim(tItens.FieldByName('CSTPIS').AsString) +                                      // 25 - CST do PIS.
                              '|' + FormatFloat('#0.00', mBCPIS) +                                                     // 26 - Valor da B.C.PIS.
                              '|' + FormatFloat('#0.0000', tItens.FieldByName('Aliquota_PIS').AsFloat)+                // 27 - Aliquota do PIS.
                              '|' +                                                                                    // 28 - Quantidade do PIS.
                              '|' +                                                                                    // 29 - Aliquota do PIS em reais.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_PIS').Value) +                       // 30 - Valor do PIS.
                              '|' + Trim(tItens.FieldByName('CSTCOFINS').AsString) +                                   // 31 - CST da COFINS.
                              '|' + FormatFloat('#0.00', mBCCOFINS) +                                                  // 32 - Valor da B.C. COFINS
                              '|' + FormatFloat('0.0000', tItens.FieldByName('Aliquota_COFINS').AsFloat) +             // 33 - Aliquota do COFINS
                              '|' +                                                                                    // 34 - Quantidade da COFINS
                              '|' +                                                                                    // 35 - Aliquota do COFINS em reais.
                              '|' + FormatFloat('0.00', tItens.FieldByName('Valor_COFINS').Value) +                    // 36 - Valor da COFINS.
                              '|'+ tItens.FieldByName('Conta_Contabil').AsString +                                     // 37 - Código da conta contabil.
                              '|';
                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegC170);
                 Inc(mQtdeBlocoC);

                 tItens.Next;

                 Progresso4('Registro: C170...', 0);
           End;
      End;
end;

{* REGISTRO C180 -  Consolidação dos itens da NF-e (Vendas) *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC180(Empresa: Integer);
begin
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens.SQL.Add('SELECT Codigo_Mercadoria,');
      tItens.SQL.Add('       NCM,');
      tItens.SQL.Add('       EXTIPI,');
      tItens.SQL.Add('       ROUND(SUM(NotasItens.Valor_Total), 4, 2) AS Total_Item');
      tItens.SQL.Add('FROM   NotasItens, NotasFiscais');
      tItens.SQL.Add('WHERE  (NotasFiscais.Numero = NotasItens.Nota AND NotasFiscais.Data_Emissao = NotasItens.Data) AND');
      tItens.SQL.Add('       (Data BETWEEN :pDataIni AND :pDataFim) AND (NotasItens.Saida_Entrada = 1) AND (NotasFiscais.Cancelada = 0) AND');
      tItens.SQL.Add('       (ISNULL(NotasFiscais.NFe_Denegada, 0) = 0) AND');
      tItens.SQL.Add('       (NotasItens.Apuracao_PISCOFINS = 1)');
      tItens.SQL.Add('GROUP  BY Codigo_Mercadoria, NCM, EXTIPI');
      tItens.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
      tItens.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC180_'+InttoStr(Empresa)+'.SQL');
      tItens.Open;

      Progresso3('Consolidação dos itens da NF-e (Vendas)', tItens.RecordCount);

      While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
            Inc(mLinha);
            mRegistro := '|C180' +                                                                     // 01 - REG.
                         '|55'+                                                                        // 02 - Código da Nota Fiscal Eletrônica.
                         '|'+ RemoveCaracter('/', '', mDataIni) +                                      // 03 - Data de Emissão Inicial dos Documentos.
                         '|'+ RemoveCaracter('/', '', mDataFim) +                                      // 04 - Data de Emissão Final dos Documentos.
                         '|'+ tItens.FieldByName('Codigo_Mercadoria').AsString+'P' +                   // 05 - Código do Item (campo 02 do Registro 0200).
                         '|'+ tItens.FieldByName('NCM').AsString+                                      // 06 - NCM.
                         '|'+ tItens.FieldByName('EXTIPI').AsString+                                   // 07 - Código EX, conforme a TIPI.
                         '|'+ FormatFloat('0.00', tItens.FieldByName('Total_Item').AsCurrency) +       // 08 - Valor total do item.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            If Funcoes.Cancelado = false then RegistroC181(tItens.FieldByName('Codigo_Mercadoria').AsInteger, Empresa);
            If Funcoes.Cancelado = false then RegistroC185(tItens.FieldByName('Codigo_Mercadoria').AsInteger, Empresa);

            Inc(mQtdeRegC180);
            Inc(mQtdeBlocoC);

            tItens.Next;

            Progresso3('Registro: C180...', 0);
      End;
end;

{* REGISTRO C181 - DETALHAMENTO DA CONSOLIDAÇÃO – OPERAÇÕES DE VENDAS – PIS/PASEP }
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC181(Codigo_Item, Empresa: Integer);
begin
      tItens2.SQL.Clear;
      If Empresa = 0 then
         tItens2.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens2.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens2.SQL.Add('SELECT NotasFiscais.Natureza_Codigo,');
      tItens2.SQL.Add('       CSTPIS,');
      tItens2.SQL.Add('       ROUND(Aliquota_PIS, 2) AS Aliquota_PIS,');
      tItens2.SQL.Add('       ROUND(SUM(NotasItens.Valor_Total), 4, 2) AS Total_Item,');
      tItens2.SQL.Add('       (SELECT Conta_TotalNota_C FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota) AS Conta_Contabil');
      tItens2.SQL.Add('INTO #Temp');
      tItens2.SQL.Add('FROM   NotasItens, NotasFiscais');
      tItens2.SQL.Add('WHERE  (Codigo_Mercadoria = :pCodigo) AND (NotasItens.Saida_Entrada = 1) AND (NotasItens.Cancelada = 0) AND (NotasFiscais.Numero = NotasItens.Nota)');
      tItens2.SQL.Add('       AND (Data BETWEEN :pDataIni AND :pDataFim) AND (NotasItens.Apuracao_PISCOFINS = 1)');
      tItens2.SQL.Add('GROUP BY CSTPIS, NotasFiscais.Natureza_Codigo, NotasItens.Aliquota_PIS, NotasItens.Tipo_Nota');
      tItens2.SQL.Add('SELECT Natureza_Codigo,');
      tItens2.SQL.Add('       CSTPIS,');
      tItens2.SQL.Add('       Aliquota_PIS,');
      tItens2.SQL.Add('       ROUND(SUM(Total_Item), 4, 2) AS Total_Item,');
      tItens2.SQL.Add('       Conta_Contabil');
      tItens2.SQL.Add('FROM #Temp');
      tItens2.SQL.Add('GROUP BY Natureza_Codigo, CSTPIS, Aliquota_PIS, Conta_Contabil');
      tItens2.ParamByName('pCodigo').AsInteger := Codigo_Item;
      tItens2.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
      tItens2.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
      //tItens2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC181_'+InttoStr(Empresa)+'.SQL');
      tItens2.Open;

      Progresso4('Registro: C181...', tItens2.RecordCount);

      While (not tItens2.Eof) and (not Funcoes.Cancelado) do begin
            Inc(mLinha);
            mRegistro := '|C181' +                                                                            // 01 - REG.
                         '|'+ tItens2.FieldByName('CSTPIS').AsString +                                        // 02 - Código da Situação Tributária referente ao PIS/PASEP.
                         '|'+ tItens2.FieldByName('Natureza_Codigo').AsString+                                // 03 - Código fiscal de operação e prestação.
                         '|'+ FormatFloat('0.00', tItens2.FieldByName('Total_Item').AsCurrency) +             // 04 - Valor total do item.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 05 - Valor total dos descontos.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 06 - Valor da base de cálculo do PIS/PASEP.
                         '|'+ FormatFloat('#0.0000', tItens2.FieldByName('Aliquota_PIS').AsFloat) +           // 07 - Alíquota do PIS.
                         '|'+                                                                                 // 08 - Quantidade – Base de cálculo PIS/PASEP.
                         '|'+                                                                                 // 09 - Alíquota do PIS/PASEP (em reais).
                         '|'+ FormatFloat('0.00', 0) +                                                        // 10 - Valor do PIS/PASEP.
                         '|'+ tItens2.FieldByName('Conta_Contabil').AsString +                                // 11 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );
            tItens2.Next;

            Progresso4('Registro: C181...', 0);

            Inc(mQtdeRegC181);
            Inc(mQtdeBlocoC);
      End;
end;

{* REGISTRO C185 -  Consolidação dos itens da NF-e COFINS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC185(Codigo_Item, Empresa: Integer);
begin
      tItens2.SQL.Clear;
      If Empresa = 0 then
         tItens2.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens2.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
      tItens2.SQL.Add('SELECT NotasFiscais.Natureza_Codigo,');
      tItens2.SQL.Add('       CSTCOFINS,');
      tItens2.SQL.Add('       Aliquota_COFINS,');
      tItens2.SQL.Add('       ROUND(SUM(NotasItens.Valor_Total), 4, 2) AS Total_Item,');
      tItens2.SQL.Add('       (SELECT Conta_TotalNota_C FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota) AS Conta_Contabil');
      tItens2.SQL.Add('INTO   #Temp');
      tItens2.SQL.Add('FROM   NotasItens, NotasFiscais');
      tItens2.SQL.Add('WHERE  (Codigo_Mercadoria = :pCodigo) AND (NotasItens.Saida_Entrada = 1) AND (NotasItens.Cancelada = 0) AND (NotasFiscais.Numero = NotasItens.Nota)');
      tItens2.SQL.Add('       AND (NotasItens.Data BETWEEN :pDataIni AND :pDataFim) AND (NotasItens.Apuracao_PISCOFINS = 1)');
      tItens2.SQL.Add('GROUP  BY CSTCOFINS, NotasFiscais.Natureza_Codigo, NotasItens.Aliquota_COFINS, NotasItens.Tipo_Nota');
      tItens2.SQL.Add('SELECT Natureza_Codigo,');
      tItens2.SQL.Add('       CSTCOFINS,');
      tItens2.SQL.Add('       Aliquota_COFINS,');
      tItens2.SQL.Add('       ROUND(SUM(Total_Item), 4, 2) AS Total_Item,');
      tItens2.SQL.Add('       Conta_Contabil');
      tItens2.SQL.Add('FROM   #Temp');
      tItens2.SQL.Add('GROUP  BY Natureza_Codigo, CSTCOFINS, Aliquota_COFINS, Conta_Contabil');
      tItens2.ParamByName('pCodigo').AsInteger := Codigo_Item;
      tItens2.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
      tItens2.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
      //tItens2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC185_'+InttoStr(Empresa)+'.SQL');
      tItens2.Open;

      Progresso4('Registro: C185...', tItens2.RecordCount);

      While (not tItens2.Eof) and (not Funcoes.Cancelado) do begin
            Inc(mLinha);
            mRegistro := '|C185' +                                                                            // 01 - REG.
                         '|'+ tItens2.FieldByName('CSTCOFINS').AsString +                                     // 02 - Código da Situação Tributária referente ao COFINS.
                         '|'+ tItens2.FieldByName('Natureza_Codigo').AsString+                                // 03 - Código fiscal de operação e prestação.
                         '|'+ FormatFloat('0.00', tItens2.FieldByName('Total_Item').AsCurrency) +             // 04 - Valor total do item.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 05 - Valor total dos descontos.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 06 - Valor da base de cálculo do COFINS/PASEP.
                         '|'+ FormatFloat('#0.0000', tItens2.FieldByName('Aliquota_COFINS').AsFloat) +        // 07 - Alíquota do COFINS.
                         '|'+                                                                                 // 08 - Quantidade – Base de cálculo da COFINS.
                         '|'+                                                                                 // 09 - Alíquota do COFINS/PASEP (em reais).
                         '|'+ FormatFloat('0.00', 0) +                                                        // 10 - Valor do COFINS/PASEP.
                         '|'+ tItens2.FieldByName('Conta_Contabil').AsString+                                 // 11 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            tItens2.Next;
            
            Progresso4('Registro: C185...', 0);

            Inc(mQtdeRegC185);
            Inc(mQtdeBlocoC);
      End;
end;

{* REGISTRO C190: CONSOLIDAÇÃO DE NOTAS FISCAIS ELETRÔNICAS (CÓDIGO 55) – OPERAÇÕES DE AQUISIÇÃO COM DIREITO A CRÉDITO, E OPERAÇÕES DE DEVOLUÇÃO DE COMPRAS E VENDAS.*}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC190(Empresa: Integer);
begin
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens.SQL.Add('SELECT Codigo_Mercadoria,');
      tItens.SQL.Add('       NCM,');
      tItens.SQL.Add('       EXTIPI,');
      tItens.SQL.Add('       SUM(Valor_Total) AS Total_Item');
      tItens.SQL.Add('INTO #TEMP');
      tItens.SQL.Add('FROM   NotasItens');
      tItens.SQL.Add('WHERE  (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (NotasItens.Saida_Entrada = 0) AND (Cancelada = 0) AND (Apuracao_PISCOFINS = 1)');
      tItens.SQL.Add('       AND CSTPIS IN(''49'', ''50'', ''51'', ''52'', ''53'', ''54'', ''55'', ''56'', ''60'', ''61'', ''62'', ''63'', ''64'', ''65'', ''66'', ''70'', ''99'') ');
      tItens.SQL.Add('       AND ISNULL((SELECT NFe_Denegada FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data), 0) = 0 ');
      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tItens.SQL.Add('       AND MONTH(Data) = (SELECT MONTH(Data_DI) FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data)');
      End;   
      tItens.SQL.Add('GROUP BY Codigo_Mercadoria, NCM, EXTIPI');
      tItens.SQL.Add('UNION ALL');
      tItens.SQL.Add('SELECT Codigo_Mercadoria,');
      tItens.SQL.Add('       NCM,');
      tItens.SQL.Add('       '''',');
      tItens.SQL.Add('       SUM(Valor_Liquido)');
      tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
      tItens.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1)');
      tItens.SQL.Add('       AND CST_PIS IN(''49'', ''50'', ''51'', ''52'', ''53'', ''54'', ''55'', ''56'', ''60'', ''61'', ''62'', ''63'', ''64'', ''65'', ''66'', ''70'', ''99'')');
      tItens.SQL.Add('       AND (SELECT Modelo FROM NotasTerceiros NT WHERE(NT.Nota = NTI.Nota) AND (NT.Data_Entrada = NTI.Data_Entrada) AND (NT.Fornecedor = NTI.Fornecedor) AND (ISNULL(NT.Provisoria, 0) = 0) AND (ISNULL(NT.Desdobramento, 0) = 0)) = ''55'' ');
      tItens.SQL.Add('GROUP BY Codigo_Mercadoria, NCM, EXTIPI');
      tItens.SQL.Add('SELECT Codigo_Mercadoria, NCM, EXTIPI, SUM(Total_Item) AS Total_Item');
      tItens.SQL.Add('FROM #TEMP');
      tItens.SQL.Add('GROUP BY Codigo_Mercadoria, NCM, EXTIPI');
      tItens.SQL.Add('ORDER BY Codigo_Mercadoria');
      tItens.SQL.Add('DROP TABLE #TEMP');

      tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC190_'+InttoStr(Empresa)+'.SQL');
      tItens.Open;

      Progresso3('Consolidação da NF-e', tItens.RecordCount);

      While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
            Inc(mLinha);
            mRegistro := '|C190' +                                                                          // 01 - REG.
                         '|55'+                                                                             // 02 - Documento de importação
                         '|'+ RemoveCaracter('/', '',mDataIni) +                                            // 03 - Data inicial.
                         '|'+ RemoveCaracter('/', '',mDataFim) +                                            // 04 - Data Final.
                         '|'+ tItens.FieldByName('Codigo_Mercadoria').AsString+'P'+                         // 05 - Codigo da mercadoria.
                         '|'+ tItens.FieldByName('NCM').AsString+                                           // 07 - NCM.
                         '|'+ tItens.FieldByName('EXTIPI').AsString+                                        // 08 - EX DA TIPI.
                         '|'+ FormatFloat('0.00', tItens.FieldByName('Total_Item').AsCurrency) +            // 09 - Valor total do item.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegC190);
            Inc(mQtdeBlocoC);

            If Funcoes.Cancelado = false then RegistroC191(tItens.FieldByName('Codigo_Mercadoria').AsInteger, Empresa);
            If Funcoes.Cancelado = false then RegistroC195(tItens.FieldByName('Codigo_Mercadoria').AsInteger, Empresa);
            If Funcoes.Cancelado = false then RegistroC199(tItens.FieldByName('Codigo_Mercadoria').AsInteger, Empresa);

            tItens.Next;

            Progresso3('Registro: C190...', 0);
      End;
end;

{* REGISTRO C191 -  Consolidação dos itens da NF-e PIS (Entradas / Devoluções) *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC191(Codigo_Item, Empresa: Integer);
Var
   mCNPJ_CPF : String;
begin
      tItens2.SQL.Clear;
      If Empresa = 0 then
         tItens2.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens2.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
      tItens2.SQL.Add('SELECT ISNULL(Destinatario_CNPJ_CPF, '''') AS CNPJ_CPF,');
      tItens2.SQL.Add('       NotasItens.CSTPIS,');
      tItens2.SQL.Add('       NotasFiscais.Natureza_Codigo,');
      tItens2.SQL.Add('       NotasItens.Codigo_Mercadoria,');
      tItens2.SQL.Add('       NotasItens.NCM,');
      tItens2.SQL.Add('       NotasItens.EXTIPI,');
      tItens2.SQL.Add('       NotasItens.Valor_Total,');
      tItens2.SQL.Add('       NotasItens.Aliquota_PIS,');
      tItens2.SQL.Add('       NotasItens.Valor_PIS,');
      tItens2.SQL.Add('       (SELECT Conta_TotalNota_D FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota) AS Conta_Contabil');
      tItens2.SQL.Add('INTO #Temp');
      tItens2.SQL.Add('FROM NotasItens, NotasFiscais');
      tItens2.SQL.Add('WHERE (Codigo_Mercadoria = :pCodigo) AND (NotasFiscais.Numero = NotasItens.Nota AND NotasFiscais.Data_Emissao = NotasItens.Data) AND');
      tItens2.SQL.Add('      (Data BETWEEN :pDataIni AND :pDataFim) AND (NotasItens.Saida_Entrada = 0 OR NotasFiscais.Devolucao = 1) AND (NotasFiscais.Cancelada <> 1) AND');
      tItens2.SQL.Add('      (NotasItens.Apuracao_PISCOFINS = 1)');
      tItens2.SQL.Add('       AND (CSTPIS IN(''49'', ''50'', ''51'', ''52'', ''53'', ''54'', ''55'', ''56'', ''60'', ''61'', ''62'', ''63'', ''64'', ''65'', ''66'', ''70'', ''99'')) ');
      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tItens2.SQL.Add('       AND MONTH(Data) = (SELECT MONTH(Data_DI) FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data)');
      End;
      tItens2.SQL.Add('UNION ALL');
      tItens2.SQL.Add('SELECT CASE WHEN LTRIM(RTRIM((SELECT ISNULL(CNPJ,'''') FROM Fornecedores WHERE(Codigo = NT.Fornecedor)))) = '''' OR LTRIM(RTRIM((SELECT ISNULL(CNPJ,'''') FROM Fornecedores WHERE(Codigo = NT.Fornecedor)))) = ''00000000000000'' THEN');
      tItens2.SQL.Add('            ISNULL((SELECT CPF  FROM Fornecedores WHERE(Codigo = NT.Fornecedor)), '''')');
      tItens2.SQL.Add('       ELSE');
      tItens2.SQL.Add('            ISNULL((SELECT CNPJ FROM Fornecedores WHERE(Codigo = NT.Fornecedor)), '''')');
      tItens2.SQL.Add('       END AS CNPJ_CPF,');
      tItens2.SQL.Add('       NTI.CST_PIS,');
      tItens2.SQL.Add('       NTI.Natureza_Codigo,');
      tItens2.SQL.Add('       NTI.Codigo_Mercadoria,');
      tItens2.SQL.Add('       NTI.NCM,');
      tItens2.SQL.Add('       NTI.EXTIPI,');
      tItens2.SQL.Add('       NTI.Valor_Liquido,');
      tItens2.SQL.Add('       NTI.Aliquota_PIS,');
      tItens2.SQL.Add('       NTI.Valor_PIS,');
      tItens2.SQL.Add('       (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = NT.Referencia_Fiscal) AS Conta_Contabil');
      tItens2.SQL.Add('FROM   NotasTerceirosItens NTI, NotasTerceiros NT');
      tItens2.SQL.Add('WHERE  (Codigo_Mercadoria = :pCodigo) AND (NT.Nota = NTI.Nota AND NT.Data_Entrada = NTI.Data_Entrada) AND');
      tItens2.SQL.Add('       (NTI.Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND');
      tItens2.SQL.Add('       (Apuracao_PISCOFINS = 1)');
      tItens2.SQL.Add('       AND (CST_PIS IN(''49'', ''50'', ''51'', ''52'', ''53'', ''54'', ''55'', ''56'', ''60'', ''61'', ''62'', ''63'', ''64'', ''65'', ''66'', ''70'', ''99''))');
      tItens2.SQL.Add('SELECT CNPJ_CPF,');
      tItens2.SQL.Add('       CSTPIS,');
      tItens2.SQL.Add('       Natureza_Codigo,');
      tItens2.SQL.Add('       Codigo_Mercadoria,');
      tItens2.SQL.Add('       EXTIPI,');
      tItens2.SQL.Add('       SUM(Valor_Total) AS Valor_Total,');
      tItens2.SQL.Add('       Aliquota_PIS,');
      tItens2.SQL.Add('       SUM(Valor_PIS) AS Valor_PIS,');
      tItens2.SQL.Add('       Conta_Contabil');
      tItens2.SQL.Add('FROM   #Temp');
      tItens2.SQL.Add('GROUP  BY Codigo_Mercadoria, Natureza_Codigo, Aliquota_PIS, CSTPIS, EXTIPI, CNPJ_CPF, Conta_Contabil');
      tItens2.SQL.Add('DROP TABLE #TEMP');
      tItens2.ParamByName('pCodigo').AsInteger := Codigo_Item;
      tItens2.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
      tItens2.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
      //tItens2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC191_'+InttoStr(Empresa)+'.SQL');
      tItens2.Open;

      Progresso4('Registro: C191...', tItens2.RecordCount);

      While (not tItens2.Eof) and (not Funcoes.Cancelado) do begin
            mCNPJ_CPF := Trim(tItens2.FieldByName('CNPJ_CPF').AsString);
            Inc(mLinha);
            mRegistro := '|C191' +                                                                            // 01 - REG.
                         '|'+ mCNPJ_CPF +                                                                     // 02 - CNPJ /CPF.
                         '|'+ tItens2.FieldByName('CSTPIS').AsString+                                         // 03 - CST PIS.
                         '|'+ tItens2.FieldByName('Natureza_Codigo').AsString+                                // 03 - Código fiscal de operação e prestação.
                         '|'+ FormatFloat('0.00', tItens2.FieldByName('Valor_Total').AsCurrency) +            // 05 - Valor do item.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 06 - Valor do desconto comercial / Exclusão.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 07 - Valor da base de cálculo do PIS/PASEP.
                         '|'+ FormatFloat('#0.0000', tItens2.FieldByName('Aliquota_PIS').AsFloat) +           // 08 - Alíquota do PIS/PASEP (em percentual).
                         '|'+                                                                                 // 09 - Quantidade – Base de cálculo PIS/PASEP.
                         '|'+                                                                                 // 10 - Alíquota do PIS/PASEP (em reais).
                         '|'+ FormatFloat('0.00', 0) +                                                        // 11 - Valor do PIS/PASEP.
                         '|'+ trim(tItens2.FieldByName('Conta_Contabil').AsString)+                           // 12 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegC191);
            Inc(mQtdeBlocoC);

            tItens2.Next;

            Progresso4('Registro: C191...', 0);
      End;
end;

{* REGISTRO C195 -  Consolidação dos itens da NF-e COFINS (Entradas / Devoluções) *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC195(Codigo_Item, Empresa: Integer);
Var
   mCNPJ_CPF: String;
begin
      tItens2.SQL.Clear;
      If Empresa = 0 then
         tItens2.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens2.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens2.SQL.Add('SELECT ISNULL(Destinatario_CNPJ_CPF,'''') AS CNPJ_CPF,');
      tItens2.SQL.Add('       NotasItens.CSTCOFINS,');
      tItens2.SQL.Add('       NotasFiscais.Natureza_Codigo,');
      tItens2.SQL.Add('       NotasItens.Codigo_Mercadoria,');
      tItens2.SQL.Add('       NotasItens.EXTIPI,');
      tItens2.SQL.Add('       NotasItens.Valor_Total,');
      tItens2.SQL.Add('       NotasItens.Aliquota_COFINS,');
      tItens2.SQL.Add('       NotasItens.Valor_COFINS,');
      tItens2.SQL.Add('       (SELECT Conta_TotalNota_D FROM TipoNota WHERE Codigo = NotasItens.Tipo_Nota) AS Conta_Contabil');
      tItens2.SQL.Add('INTO #Temp');
      tItens2.SQL.Add('FROM NotasItens, NotasFiscais');
      tItens2.SQL.Add('WHERE (Codigo_Mercadoria = :pCodigo) AND (NotasFiscais.Numero = NotasItens.Nota AND NotasFiscais.Data_Emissao = NotasItens.Data) AND');
      tItens2.SQL.Add('      (Data BETWEEN :pDataIni AND :pDataFim) AND (NotasItens.Saida_Entrada = 0 OR NotasFiscais.Devolucao = 1) AND (NotasFiscais.Cancelada = 0) AND');
      tItens2.SQL.Add('      (NotasItens.Apuracao_PISCOFINS = 1)');
      tItens2.SQL.Add('       AND (CSTCOFINS IN(''49'', ''50'', ''51'', ''52'', ''53'', ''54'', ''55'', ''56'', ''60'', ''61'', ''62'', ''63'', ''64'', ''65'', ''66'', ''70'', ''99'')) ');
      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tItens2.SQL.Add('       AND MONTH(Data) = (SELECT MONTH(Data_DI) FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data)');
      End;
      tItens2.SQL.Add('UNION ALL');
      tItens2.SQL.Add('SELECT CASE WHEN LTRIM(RTRIM((SELECT ISNULL(CNPJ,'''') FROM Fornecedores WHERE(Codigo = NT.Fornecedor)))) = '''' OR LTRIM(RTRIM((SELECT ISNULL(CNPJ,'''') FROM Fornecedores WHERE(Codigo = NT.Fornecedor)))) = ''00000000000000'' THEN');
      tItens2.SQL.Add('            ISNULL((SELECT CPF  FROM Fornecedores WHERE(Codigo = NT.Fornecedor)), '''')');
      tItens2.SQL.Add('       ELSE');
      tItens2.SQL.Add('            ISNULL((SELECT CNPJ FROM Fornecedores WHERE(Codigo = NT.Fornecedor)), '''')');
      tItens2.SQL.Add('       END AS CNPJ_CPF,');
      tItens2.SQL.Add('       NTI.CST_COFINS,');
      tItens2.SQL.Add('       NTI.Natureza_Codigo,');
      tItens2.SQL.Add('       NTI.Codigo_Mercadoria,');
      tItens2.SQL.Add('       NTI.EXTIPI,');
      tItens2.SQL.Add('       NTI.Valor_Liquido,');
      tItens2.SQL.Add('       NTI.Aliquota_COFINS,');
      tItens2.SQL.Add('       NTI.Valor_COFINS,');
      tItens2.SQL.Add('       (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = NT.Referencia_Fiscal) AS Conta_Contabil');
      tItens2.SQL.Add('FROM NotasTerceirosItens NTI, NotasTerceiros NT');
      tItens2.SQL.Add('WHERE (Codigo_Mercadoria = :pCodigo) AND (NT.Nota = NTI.Nota AND NT.Data_Entrada = NTI.Data_Entrada) AND');
      tItens2.SQL.Add('      (NTI.Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND');
      tItens2.SQL.Add('      (Apuracao_PISCOFINS = 1)');
      tItens2.SQL.Add('       AND (CST_COFINS IN(''49'', ''50'', ''51'', ''52'', ''53'', ''54'', ''55'', ''56'', ''60'', ''61'', ''62'', ''63'', ''64'', ''65'', ''66'', ''70'', ''99''))');
      tItens2.SQL.Add('SELECT CNPJ_CPF,');
      tItens2.SQL.Add('       CSTCOFINS,');
      tItens2.SQL.Add('       Natureza_Codigo,');
      tItens2.SQL.Add('       Codigo_Mercadoria,');
      tItens2.SQL.Add('       EXTIPI,');
      tItens2.SQL.Add('       SUM(Valor_Total) AS Valor_Total,');
      tItens2.SQL.Add('       Aliquota_COFINS,');
      tItens2.SQL.Add('       SUM(Valor_COFINS) AS Valor_COFINS,');
      tItens2.SQL.Add('       Conta_Contabil');
      tItens2.SQL.Add('FROM   #Temp');
      tItens2.SQL.Add('GROUP  BY Codigo_Mercadoria, Natureza_Codigo, Aliquota_COFINS, CSTCOFINS, EXTIPI, CNPJ_CPF, Conta_Contabil');
      tItens2.ParamByName('pCodigo').AsInteger := Codigo_Item;
      tItens2.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
      tItens2.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
      //tItens2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC195_'+InttoStr(Empresa)+'.SQL');
      tItens2.Open;

      Progresso4('Registro: C195...', tItens2.RecordCount);

      While (not tItens2.Eof) and (not Funcoes.Cancelado) do begin
            mCNPJ_CPF := Trim(tItens2.FieldByName('CNPJ_CPF').AsString);

            Inc(mLinha);
            mRegistro := '|C195' +                                                                            // 01 - REG.
                         '|'+ mCNPJ_CPF +                                                                     // 02 - CNPJ /CPF.
                         '|'+ tItens2.FieldByName('CSTCOFINS').AsString+                                      // 03 - CST COFINS.
                         '|'+ tItens2.FieldByName('Natureza_Codigo').AsString+                                // 03 - Código fiscal de operação e prestação.
                         '|'+ FormatFloat('0.00', tItens2.FieldByName('Valor_Total').AsCurrency) +            // 05 - Valor do item.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 06 - Valor do desconto comercial / Exclusão.
                         '|'+ FormatFloat('0.00', 0) +                                                        // 07 - Valor da base de cálculo do COFINS.
                         '|'+ FormatFloat('#0.0000', tItens2.FieldByName('Aliquota_COFINS').AsFloat) +        // 08 - Alíquota do COFINS (em percentual).
                         '|'+                                                                                 // 09 - Quantidade – Base de cálculo COFINS.
                         '|'+                                                                                 // 10 - Alíquota do COFINS (em reais).
                         '|'+ FormatFloat('0.00', 0) +                                                        // 11 - Valor do COFINS
                         '|'+ trim(tItens2.FieldByName('Conta_Contabil').AsString)+                           // 12 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );
            tItens2.Next;
            Inc(mQtdeRegC195);
            Inc(mQtdeBlocoC);

            Progresso4('Registro: C195...', 0);
      End;
end;

{* REGISTRO C199 -  Informações de importação *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC199(Codigo_Item, Empresa: Integer);
begin
      tItens2.SQL.Clear;
      If Empresa = 0 then
         tItens2.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens2.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens2.SQL.Add('SELECT Codigo_Mercadoria,');
      tItens2.SQL.Add('       DI,');
      tItens2.SQL.Add('       SUM(Valor_PIS) AS Valor_PIS,');
      tItens2.SQL.Add('       SUM(Valor_COFINS) AS Valor_COFINS');
      tItens2.SQL.Add('FROM   NotasItens');
      tItens2.SQL.Add('WHERE (Codigo_Mercadoria = :pCodigo) AND (Data BETWEEN :pDataIni AND :pDataFim) AND (LTRIM(RTRIM(DI)) <> '''') ');
      tItens2.SQL.Add('GROUP BY Codigo_Mercadoria, DI');
      tItens2.ParamByName('pCodigo').AsInteger := Codigo_Item;
      tItens2.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
      tItens2.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
      //tItens2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC199_'+InttoStr(Empresa)+'.SQL');
      tItens2.Open;

      If tItens2.RecordCount > 0 then begin
          Progresso4('Registro: C199...', tItens2.RecordCount);

          Inc(mLinha);
          mRegistro := '|C199' +                                                                          // 01 - REG.
                       '|0'+                                                                              // 02 - Documento de importação
                       '|'+ tItens2.FieldByName('DI').AsString +                                          // 03 - Número do documento de importação.
                       '|'+ FormatFloat('#0.00', tItens2.FieldByName('Valor_PIS').AsCurrency)+            // 04 - Valor do PIS importação.
                       '|'+ FormatFloat('#0.00', tItens2.FieldByName('Valor_COFINS').AsCurrency)+         // 05 - Valor da COFINS Importação.
                       '|'+                                                                               // 06 - Número do Ato Concessório do regime Drawback.
                       '|';
          Say( mLinha, 000, Arquivo, mRegistro );

          Inc(mQtdeBlocoC);
          Inc(mQtdeRegC199);

          Progresso4('Registro: C199...', 0);
      End;    
end;

{* REGISTRO C500: NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06) *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC500(Empresa: Integer);
begin
      tNotas.SQL.Clear;
      If Empresa = 0 then
         tNotas.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tNotas.SQL.Add('SELECT Fornecedor,');
      tNotas.SQL.Add('       Modelo,');
      tNotas.SQL.Add('       ''00'' AS Situacao,');
      tNotas.SQL.Add('       Serie,');
      tNotas.SQL.Add('       SubSerie,');
      tNotas.SQL.Add('       Nota,');
      tNotas.SQL.Add('       Data_Emissao,');
      tNotas.SQL.Add('       Data_Entrada,');
      tNotas.SQL.Add('       Valor_TotalNota,');
      tNotas.SQL.Add('       0 AS ICMS_Acumulado,');
      tNotas.SQL.Add('       Valor_PIS,');
      tNotas.SQL.Add('       Valor_COFINS,');
      tNotas.SQL.Add('       NFe_cNF');
      tNotas.SQL.Add('FROM   NotasTerceiros');
      tNotas.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Modelo = ''06'' OR Modelo = ''6'') AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0) AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
      tNotas.SQL.Add('      AND (SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1');
      tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC500_'+InttoStr(Empresa)+'.SQL');
      tNotas.Open;

      Progresso3('Nota fiscal de Conta de Energia Elétrica', tNotas.RecordCount);

      While (not tNotas.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|C500' +                                                                          // 01 - REG.
                         '|'+ tNotas.FieldByName('Fornecedor').AsString+'F' +                               // 02 - Código do fornecedor.
                         '|'+ tNotas.FieldByName('Modelo').AsString +                                       // 03 - Modelo da nota fiscal.
                         '|'+ tNotas.FieldByName('Situacao').AsString +                                     // 04 - Código da situação da nota fiscal.
                         '|'+ tNotas.FieldByName('Serie').AsString +                                        // 05 - Série da nota fiscal.
                         '|'+ tNotas.FieldByName('SubSerie').AsString +                                     // 06 - Sub-Série da nota fiscal.
                         '|'+ tNotas.FieldByName('Nota').AsString +                                         // 07 - Número da nota fiscal.
                         '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Emissao').AsString) +          // 08 - Data de emissão da nota fiscal.
                         '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Entrada').AsString) +          // 09 - Data de entrada da nota fiscal.
                         '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +      // 10 - Valor Total da nota fiscal.
                         '|'+ FormatFloat('#0.00', tNotas.FieldByName('ICMS_Acumulado').AsCurrency) +       // 11 - Valor do ICMS acumulado.
                         '|'+                                                                               // 12 - Código da informação complementar do documento fiscal.
                         '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_PIS').AsCurrency) +            // 13 - Valor do PIS.
                         '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_COFINS').AsCurrency) +         // 14 - Valor da COFINS.
                         '|'+ tNotas.FieldByName('NFe_cNF').AsString +                                      // 15 - Chave da NFe.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeBlocoC);
            Inc(mQtdeRegC500);

            If Funcoes.Cancelado = false then
               RegistroC501(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Fornecedor').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, Empresa);
            If Funcoes.Cancelado = false then
               RegistroC505(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Fornecedor').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, Empresa);

            tNotas.Next;

            Progresso3('Registro: C500...', 0);
      End;

      Janela_ProcessamentoSPED.Progresso.Position := Janela_ProcessamentoSPED.Progresso.Position + 3;
      Application.ProcessMessages;
end;

{* REGISTRO C501: COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 06, 28 e 29) – PIS/PASEP *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC501(Nota:Integer; Fornecedor: Integer; DataEmissao: TDateTime; Empresa:Integer);
begin
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
      
      tItens.SQL.Add('SELECT CST_PIS,');
      tItens.SQL.Add('       Valor_Liquido,');
      tItens.SQL.Add('       ''04'' AS Codigo_BC,');
      tItens.SQL.Add('       CASE WHEN ISNULL(Consumo_Energia, 0) > 0 THEN ISNULL(Consumo_Energia, 0) ELSE Valor_Liquido END AS BCPIS,');
      tItens.SQL.Add('       Aliquota_PIS,');
      tItens.SQL.Add('       Valor_PIS,');
      tItens.SQL.Add('       (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE Nt.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor)) AS Conta_Contabil');
      tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
      tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data_Emissao = :pDataEmissao) AND (Fornecedor = :pFornecedor)');
      tItens.ParamByName('pNota').AsInteger       := Nota;
      tItens.ParamByName('pDataEmissao').AsDate   := DataEmissao;
      tItens.ParamByName('pFornecedor').AsInteger := Fornecedor;
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC501_'+InttoStr(Empresa)+'.SQL');
      tItens.Open;

      Progresso4('Registro: C501...', tItens.RecordCount);

      While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|C501' +                                                                          // 01 - REG.
                         '|'+ tItens.FieldByName('CST_PIS').AsString +                                      // 02 - Código da Situação Tributária referente ao PIS/PASEP.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_Liquido').AsCurrency) +        // 03 - Valor total dos itens.
                         '|'+ tItens.FieldByName('Codigo_BC').AsString +                                    // 04 - Código da Base de Cálculo do Crédito.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('BCPIS').AsCurrency) +                // 05 - Valor da base de cálculo do PIS/PASEP.
                         '|'+ FormatFloat('#0.0000', tItens.FieldByName('Aliquota_PIS').AsFloat) +          // 06 - Alíquota do PIS/PASEP (em percentual).
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_PIS').AsCurrency) +            // 07 - Valor do PIS/PASEP.
                         '|'+ tItens.FieldByName('Conta_Contabil').AsString +                               // 08 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeBlocoC);
            Inc(mQtdeRegC501);
            tItens.Next;

            Progresso4('Registro: C501...', 0);
      End;
end;

{* REGISTRO C505: COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 06, 28 e 29) – COFINS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC505(Nota:Integer; Fornecedor: Integer; DataEmissao: TDateTime; Empresa: Integer);
begin
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens.SQL.Add('SELECT CST_COFINS,');
      tItens.SQL.Add('       Valor_Liquido,');
      tItens.SQL.Add('       ''04'' AS Codigo_BC,');
      tItens.SQL.Add('       CASE WHEN ISNULL(Consumo_Energia, 0) > 0 THEN ISNULL(Consumo_Energia, 0) ELSE Valor_Liquido END AS BCCOFINS,');
      tItens.SQL.Add('       Aliquota_COFINS,');
      tItens.SQL.Add('       Valor_COFINS,');
      tItens.SQL.Add('       (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE Nt.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor)) AS Conta_Contabil');
      tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
      tItens.SQL.Add('WHERE  (Nota = :pNota) AND (Data_Emissao = :pDataEmissao) AND (Fornecedor = :pFornecedor)');
      tItens.ParamByName('pNota').AsInteger       := Nota;
      tItens.ParamByName('pDataEmissao').AsDate   := DataEmissao;
      tItens.ParamByName('pFornecedor').AsInteger := Fornecedor;
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGC505_'+InttoStr(Empresa)+'.SQL');
      tItens.Open;

      Progresso4('Registro: C505...', tItens.RecordCount);

      While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|C505' +                                                                          // 01 - REG.
                         '|'+ tItens.FieldByName('CST_COFINS').AsString +                                   // 02 - Código da Situação Tributária referente a COFINS.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_Liquido').AsCurrency) +        // 03 - Valor total dos itens.
                         '|'+ tItens.FieldByName('Codigo_BC').AsString +                                    // 04 - Código da Base de Cálculo do Crédito.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('BCCOFINS').AsCurrency) +             // 05 - Valor da base de cálculo da COFINS.
                         '|'+ FormatFloat('#0.0000', tItens.FieldByName('Aliquota_COFINS').AsFloat) +       // 06 - Alíquota da COFINS (em percentual).
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_COFINS').AsCurrency) +         // 07 - Valor da COFINS.
                         '|'+ tItens.FieldByName('Conta_Contabil').AsString +                               // 08 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeBlocoC);
            Inc(mQtdeRegC505);
            tItens.Next;

            Progresso4('Registro: C505...', 0);
      End;
end;

{* REGISTRO C990: ENCERRAMENTO DO BLOCO C *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroC990;
begin
      Progresso1('Encerramento do BLOCO C', 1);

      Inc(mLinha);
      Inc(mQtdeRegC990);
      Inc(mQtdeBlocoC);

      mRegistro := '|C990' +                       // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoC)+     // 02 - Quantidade de registro do bloco C.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Progresso2('Registro: C990');
end;

{* REGISTRO D001 -  Abertura do bloco D *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroD001;
begin
      Progresso1('Abertura do BLOCO D', 1);

      // Matriz.
      tNotas.SQL.Clear;
      tNotas.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tNotas.SQL.Add('SELECT COUNT(*) AS Movimento');
      tNotas.SQL.Add('INTO  #Temp');
      tNotas.SQL.Add('FROM   NotasTerceiros');
      tNotas.SQL.Add('WHERE (MONTH(Data_Entrada) = :pMes) AND (YEAR(Data_Entrada) = :pAno) AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0) AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0) AND (Modelo IN(''07'',''08'',''8B'',''09'',''10'',''11'',''26'',''27'',''57''))');
      tNotas.SQL.Add('  AND (SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1');

      // Filiais.
      mSQLMatriz := tNotas.SQL.Text;

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('NotasTerceiros'    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros'    , mSQLMatriz);
            mSQLFilial := RemoveCaracter('ReferenciasFiscais', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais', mSQLFilial);
            mSQLFilial := RemoveCaracter('INTO  #Temp', '', mSQLFilial);
            mSQLFilial := RemoveCaracter('USE '+ Dados.EmpresasBanco_Dados.AsString, '', mSQLFilial);
            tNotas.SQL.Add('UNION ALL');
            tNotas.SQL.Add(mSQLFilial);
            tEmpresas.Next;
      End;
      tNotas.SQL.Add('SELECT SUM(Movimento) AS Movimento FROM #Temp');
      tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGD001.SQL');
      tNotas.Open;
      
      i := 1;
      If tNotas.FieldByName('Movimento').AsInteger > 0 then i := 0;

      Progresso1('Abertura do BLOCO D', 1);

      Inc(mLinha);
      mRegistro := '|D001' +                       // 01 - REG.
                   '|'+ InttoStr(i) +              // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';

      Say( mLinha, 000, Arquivo, mRegistro );
      Inc(mQtdeBlocoD);
      Inc(mQtdeRegD001);

      If i = 0 then If Funcoes.Cancelado = false then RegistroD010;

      Progresso2('Registro: D001');
end;

{* REGISTRO D010: IDENTIFICAÇÃO DO ESTABELECIMENTO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroD010;
begin
      Progresso3('Identificação do Estabelecimento', tEmpresas.RecordCount+1);

      // Matriz.
      Inc(mLinha);
      mRegistro := '|D010' +                                            // 01 - REG.
                   '|'+ Dados.Empresas.FieldByName('CNPJ').AsString +   // 02 - CNPJ DO Estabelecimento.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      If Funcoes.Cancelado = false then RegistroD100(0);

      Inc(mQtdeBlocoD);
      Inc(mQtdeRegD010);

      Progresso3('Registro: D010...', tEmpresas.RecordCount+1);

      // Filiais.
      tEmpresas.First;
      While not tEmpresas.Eof do begin
            tNotas.SQL.Clear;
            tNotas.SQL.Add('SELECT COUNT(*) AS QtdeNotas FROM ' + tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros NT WHERE(Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
            tNotas.SQL.Add('       AND (ISNULL(Provisoria, 0) = 0) AND (ISNULL(Desdobramento, 0) = 0) AND ((SELECT Apuracao_PISCOFINS FROM '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) = 1)');
            tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
            tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
            //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGD010_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
            tNotas.Open;
            If tNotas.FieldByName('QtdeNotas').AsInteger > 0 then begin
               Inc(mLinha);
               mRegistro := '|D010' +                                            // 01 - REG.
                            '|'+ tEmpresas.FieldByName('CNPJ').AsString +        // 02 - CNPJ DO Estabelecimento.
                            '|';
               Say( mLinha, 000, Arquivo, mRegistro );

               If Funcoes.Cancelado = false then RegistroD100(tEmpresas.FieldByName('Codigo').AsInteger);

               Inc(mQtdeBlocoD);
               Inc(mQtdeRegD010);

               Progresso3('Registro: D010...', 0);
            End;
            tEmpresas.Next;
      End;
end;

{* REGISTRO D100 - Transporte *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroD100(Empresa: Integer);
begin
      tNotas.SQL.Clear;
      If Empresa = 0 then
         tNotas.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tNotas.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tNotas.SQL.Add('SELECT 0 AS Tipo_Operacao,');
      tNotas.SQL.Add('       ''1'' AS Tipo_Emissao,');
      tNotas.SQL.Add('       Fornecedor AS Beneficiario,');
      tNotas.SQL.Add('       Modelo,');
      tNotas.SQL.Add('       ''00'' AS Situacao,');
      tNotas.SQL.Add('       Serie,');
      tNotas.SQL.Add('       SubSerie,');
      tNotas.SQL.Add('       Nota,');
      tNotas.SQL.Add('       NFe_cNF AS Chave_NFe,');
      tNotas.SQL.Add('       Data_Emissao,');
      tNotas.SQL.Add('       Data_Entrada,');
      tNotas.SQL.Add('       Valor_TotalNota,');
      tNotas.SQL.Add('       ISNULL(Valor_TotalDescontos, 0) AS Desconto_Valor,');
      tNotas.SQL.Add('       9 AS Modalidade_Frete,');
      tNotas.SQL.Add('       Valor_TotalNota AS Total_Servico,');
      tNotas.SQL.Add('       Valor_BCICMSOper,');
      tNotas.SQL.Add('       Valor_ICMSOper,');
      tNotas.SQL.Add('       Valor_OutrasICMS,');
      tNotas.SQL.Add('       Valor_TotalProdutos,');
      tNotas.SQL.Add('       (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) AS Conta_Contabil');
      tNotas.SQL.Add('FROM   NotasTerceiros');
      tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0) AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
      tNotas.SQL.Add('      AND Modelo IN(''07'',''08'',''8B'',''09'',''10'',''11'',''26'',''27'',''57'')');
      tNotas.SQL.Add('      AND (SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1');
      tNotas.SQL.Add('ORDER BY Data_Emissao');
      tNotas.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
      tNotas.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGD100_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
      tNotas.Open;

      Progresso3('Notas de Transporte', tNotas.RecordCount);

      While (not tNotas.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|D100' +                                                                               // 01 - REG.
                         '|'+ tNotas.FieldByName('Tipo_Operacao').AsString +                                     // 02 - Indicador do tipo de operação.
                         '|'+ tNotas.FieldByName('Tipo_Emissao').AsString +                                      // 03 - Indicador do emitente do documento fiscal.
                         '|'+ tNotas.FieldByName('Beneficiario').AsString+'F' +                                  // 04 - Código do participante.
                         '|'+ tNotas.FieldByName('Modelo').AsString +                                            // 05 - Código dO modelo do documentos fiscal.
                         '|'+ tNotas.FieldByName('Situacao').AsString +                                          // 06 - Código de situação do documentos fiscal.
                         '|'+ tNotas.FieldByName('Serie').AsString +                                             // 07 - Série do documento fiscal.
                         '|'+ tNotas.FieldByName('SubSerie').AsString +                                          // 08 - Sub-Série do documento fiscal.
                         '|'+ tNotas.FieldByName('Nota').AsString +                                              // 09 - Número da nota fiscal.
                         '|'+ tNotas.FieldByName('Chave_NFe').AsString +                                         // 10 - Chave da nota eletrônica de serviço.
                         '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Emissao').AsString) +               // 11 - Data de Emissão da nota fiscal.
                         '|'+ RemoveCaracter('/','',tNotas.FieldByName('Data_Entrada').AsString) +               // 12 - Data da Entrda / Saída.
                         '|'+                                                                                    // 13 - Tipo de conhecimento eletônico.
                         '|'+                                                                                    // 14 - Chave da CT-e.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_TotalNota').AsCurrency) +          // 15 - Total da Nota.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Desconto_Valor').AsCurrency) +           // 16 - Valor do desconto.
                         '|'+ tNotas.FieldByName('Modalidade_Frete').AsString +                                  // 17 - Modalidade de Frete.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_TotalProdutos').AsCurrency) +      // 18 - Total das mercadorias.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_BCICMSOper').AsCurrency)+          // 19 - Valor da base de cálculo do ICMS.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_ICMSOper').AsCurrency)+            // 20 - Valor do ICMS.
                         '|'+ FormatFloat('#0.00'  ,tNotas.FieldByName('Valor_OutrasICMS').AsCurrency)+          // 21 - Valor não tributadas de ICMS.
                         '|'+                                                                                    // 22 - Código da informação complementar do documento fiscal.
                         '|'+ tNotas.FieldByName('Conta_Contabil').AsString+                                     // 23 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            If Funcoes.Cancelado = false then RegistroD101(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, tNotas.FieldByName('Beneficiario').AsInteger, Empresa);
            If Funcoes.Cancelado = false then RegistroD105(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, tNotas.FieldByName('Beneficiario').AsInteger, Empresa);

            Inc(mQtdeBlocoD);
            Inc(mQtdeRegD100);

            tNotas.Next;

            Progresso3('Registro: D100...', 0);
      End;
end;

{* REGISTRO D101: COMPLEMENTO DO DOCUMENTO DE TRANSPORTE PIS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroD101(Nota:Integer; DataEmissao: TDateTime; Fornecedor: Integer; Empresa: Integer);
begin
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens.SQL.Add('SELECT  Valor_Liquido');
      tItens.SQL.Add('       ,CST_PIS');
      tItens.SQL.Add('       ,(SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
      tItens.SQL.Add('       ,Valor_BCPIS AS BCPIS');
      tItens.SQL.Add('       ,Aliquota_PIS');
      tItens.SQL.Add('       ,Valor_PIS');
      tItens.SQL.Add('       ,Natureza_Frete = (SELECT Natureza_Frete FROM NotasTerceiros NT WHERE NT.Nota = :pNota AND NT.Data_Emissao = :pDataEmissao AND NT.Fornecedor = :pFornecedor)');
      tItens.SQL.Add('       ,(SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE Nt.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor)) AS Conta_Contabil');
      tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
      tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data_Emissao = :pDataEmissao) AND (Fornecedor = :pFornecedor)');
      tItens.ParamByName('pNota').AsInteger       := Nota;
      tItens.ParamByName('pDataEmissao').AsDate   := DataEmissao;
      tItens.ParamByName('pFornecedor').AsInteger := Fornecedor;
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGD101_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
      tItens.Open;

      Progresso4('Registro: D101...', tItens.RecordCount);

      While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|D101' +                                                                          // 01 - REG.
                         '|'+ tItens.FieldByName('Natureza_Frete').AsString +                               // 02 - Indicador da Natureza do Frete Contratado.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_Liquido').AsCurrency) +        // 03 - Valor total dos itens.
                         '|'+ tItens.FieldByName('CST_PIS').AsString +                                      // 04 - CST PIS.tal dos itens.
                         '|'+ PoeZero(2, tItens.FieldByName('Natureza_BC').AsInteger)+                      // 05 - Natureza da B.C. créditos.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('BCPIS').AsCurrency) +                // 06 - Valor da base de cálculo do PIS.
                         '|'+ FormatFloat('#0.0000', tItens.FieldByName('Aliquota_PIS').AsFloat) +          // 06 - Alíquota do PIS (em percentual).
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_PIS').AsCurrency) +            // 07 - Valor do PIS.
                         '|'+ tItens.FieldByName('Conta_Contabil').AsString +                               // 08 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeBlocoD);
            Inc(mQtdeRegD101);
            tItens.Next;

            Progresso4('Registro: D101...', 0);
      End;
end;

{* REGISTRO D105: COMPLEMENTO DO DOCUMENTO DE TRANSPORTE COFINS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroD105(Nota:Integer; DataEmissao: TDateTime; Fornecedor: Integer; Empresa:Integer);
begin
      tItens.SQL.Clear;
      If Empresa = 0 then
         tItens.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
      else
         tItens.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);

      tItens.SQL.Add('SELECT  Valor_Liquido');
      tItens.SQL.Add('       ,CST_COFINS');
      tItens.SQL.Add('       ,Natureza_BC = (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal))');
      tItens.SQL.Add('       ,BCCOFINS = Valor_BCCOFINS');
      tItens.SQL.Add('       ,Aliquota_COFINS');
      tItens.SQL.Add('       ,Valor_COFINS');
      tItens.SQL.Add('       ,Natureza_Frete = (SELECT Natureza_Frete FROM NotasTerceiros NT WHERE NT.Nota = :pNota AND NT.Data_Emissao = :pDataEmissao AND NT.Fornecedor = :pFornecedor)');
      tItens.SQL.Add('       ,(SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE Nt.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor)) AS Conta_Contabil');
      tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
      tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data_Emissao = :pDataEmissao) AND (Fornecedor = :pFornecedor)');
      tItens.ParamByName('pNota').AsInteger       := Nota;
      tItens.ParamByName('pDataEmissao').AsDate   := DataEmissao;
      tItens.ParamByName('pFornecedor').AsInteger := Fornecedor;
      //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGD105_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
      tItens.Open;

      Progresso4('Registro: D105...', tItens.RecordCount);

      While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|D105' +                                                                          // 01 - REG.
                         '|'+ tItens.FieldByName('Natureza_Frete').AsString +                               // 02 - Indicador da Natureza do Frete Contratado.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_Liquido').AsCurrency) +        // 03 - Valor total dos itens.
                         '|'+ tItens.FieldByName('CST_COFINS').AsString +                                   // 04 - CST COFINS.
                         '|'+ PoeZero(2, tItens.FieldByName('Natureza_BC').AsInteger) +                     // 05 - Natureza da B.C. créditos.
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('BCCOFINS').AsCurrency) +             // 06 - Valor da base de cálculo do COFINS.
                         '|'+ FormatFloat('#0.0000', tItens.FieldByName('Aliquota_COFINS').AsFloat) +       // 07 - Alíquota da COFINS (em percentual).
                         '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_COFINS').AsCurrency) +         // 08 - Valor da COFINS.
                         '|'+ tItens.FieldByName('Conta_Contabil').AsString +                               // 09 - Código da conta analítica contábil debitada/creditada.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeBlocoD);
            Inc(mQtdeRegD105);
            tItens.Next;

            Progresso4('Registro: D105...', 0);
      End;
end;

{* REGISTRO D990: ENCERRAMENTO DO BLOCO D *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroD990;
begin
      Progresso1('Encerramento do BLOCO D', 1);

      Inc(mLinha);
      Inc(mQtdeRegD990);
      Inc(mQtdeBlocoD);
      mRegistro := '|D990' +                      // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoD)+    // 02 - Quantidade de registro do bloco D.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Progresso2('Registro: D990...');
end;

{* BLOCO F: DEMAIS DOCUMENTOS E OPERAÇÕES - ABERTURA DO BLOCO F *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroF001;
begin
      Progresso1('Abertura do Bloco F', 1);
      
      // Matriz.
      tPagarReceber.SQL.Clear;
      tPagarReceber.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tPagarReceber.SQL.Add('SELECT Qtde = (SELECT COUNT(*) FROM PagarReceber PR WHERE (SELECT ISNULL(CST_PIS, '''') FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) <> '''' ');
         tPagarReceber.SQL.Add('               AND YEAR(Data_Documento) = :pAno AND MONTH(Data_Documento) = :pMes AND Provisorio <> 1 ) ');
         If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
            tPagarReceber.SQL.Add('              + (SELECT COUNT(*) FROM Adicoes AD WHERE (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI and Apuracao_PISCOFINS = 1) BETWEEN :pDataIni AND :pDataFim');
            tPagarReceber.SQL.Add('                 AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' ');
            tPagarReceber.SQL.Add('                 AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0)');
         End;
      end else begin
         tPagarReceber.SQL.Add('SELECT Qtde = (SELECT COUNT(*) FROM PagarReceber PR WHERE (SELECT ISNULL(CST_PIS, '''') FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) <> '''' ');
         tPagarReceber.SQL.Add('               AND YEAR(Data_Documento) = :pAno AND MONTH(Data_Documento) = :pMes AND Provisorio <> 1 ) ');
         If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
            tPagarReceber.SQL.Add('            + (SELECT COUNT(*) FROM Adicoes AD WHERE (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI and Apuracao_PISCOFINS = 1) BETWEEN :pDataIni AND :pDataFim');
            tPagarReceber.SQL.Add('               AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' ');
            tPagarReceber.SQL.Add('               AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0)');
         End;
      End;
      tPagarReceber.SQL.Add('INTO #Temp');

      // Filiais.
      mSQLMatriz := tPagarReceber.SQL.Text;

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('PagarReceber'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber'       , mSQLMatriz);
            mSQLFilial := RemoveCaracter('Adicoes '           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Adicoes '           , mSQLFilial);
            mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
            mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLFilial);
            If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
               mSQLFilial := RemoveCaracter('ClassificacaoFinanceira', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLFilial);
            End;
            mSQLFilial := RemoveCaracter('INTO #Temp', '', mSQLFilial);
            mSQLFilial := RemoveCaracter('USE '+Dados.Empresas.FieldByName('Banco_Dados').AsString, '', mSQLFilial);

            tPagarReceber.SQL.Add('UNION');
            tPagarReceber.SQL.Add(mSQLFilial);
            tEmpresas.Next;
      End;
      tPagarReceber.SQL.Add('SELECT SUM(Qtde) AS Qtde FROM #Temp');
      tPagarReceber.SQL.Add('DROP TABLE #Temp');
      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tPagarReceber.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
         tPagarReceber.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      End;
      tPagarReceber.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tPagarReceber.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      //tPagarReceber.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGF001.SQL');
      tPagarReceber.Open;

      i := 0;
      If tPagarReceber.FieldByName('Qtde').AsInteger = 0 then i := 1;

      Inc(mLinha);
      mRegistro := '|F001' +                       // 01 - REG.
                   '|'+ InttoStr(i) +              // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeBlocoF);
      Inc(mQtdeRegF001);

      If i = 0 then If Funcoes.Cancelado = false then RegistroF010;

      Progresso2('Registro: F001');
end;

{* REGISTRO F010: IDENTIFICAÇÃO DO ESTABELECIMENTO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroF010;
begin
      Progresso2('Identificação do Estabelecimento');

      tPagarReceber.SQL.Clear;
      tPagarReceber.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tPagarReceber.SQL.Add('SELECT  Classificacao');
      tPagarReceber.SQL.Add('       ,Valor_Operacao');
      tPagarReceber.SQL.Add('       ,Data_Vencimento');
      tPagarReceber.SQL.Add('       ,Fornecedor');

      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tPagarReceber.SQL.Add('       ,(SELECT Aliquota_PIS    FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_PIS');
         tPagarReceber.SQL.Add('       ,(SELECT Aliquota_COFINS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_COFINS');
         tPagarReceber.SQL.Add('       ,(SELECT CST_PIS         FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_PIS');
         tPagarReceber.SQL.Add('       ,(SELECT CST_COFINS      FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_COFINS');
         tPagarReceber.SQL.Add('       ,(SELECT BCCredito       FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Codigo_BC');
         tPagarReceber.SQL.Add('       ,(SELECT Tipo_Operacao   FROM Cybersoft_Cadastros.dbo.CSTPIS    WHERE(Codigo = (SELECT CST_PIS    FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)))) AS Tipo_OperacaoPIS');
         tPagarReceber.SQL.Add('       ,(SELECT Tipo_Operacao   FROM Cybersoft_Cadastros.dbo.CSTCOFINS WHERE(Codigo = (SELECT CST_COFINS FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)))) AS Tipo_OperacaoCOFINS');
         tPagarReceber.SQL.Add('       ,CASE WHEN Fornecedor  >    0 THEN CAST(Fornecedor AS VARCHAR(6))+''F'' ');
         tPagarReceber.SQL.Add('             WHEN Cliente     >    0 THEN CAST(Cliente AS VARCHAR(6))+''C'' ');
         tPagarReceber.SQL.Add('             WHEN Orgao      <> '''' THEN Orgao+''O'' ');
         tPagarReceber.SQL.Add('        END AS Beneficiario');
         tPagarReceber.SQL.Add('       ,Codigo_Mercadoria = null');
         tPagarReceber.SQL.Add('       ,Indicador_Origem  = 0');
         tPagarReceber.SQL.Add('       ,Conta_Contabil = CASE WHEN PagarReceber.Tipo = ''R'' THEN');
         tPagarReceber.SQL.Add('                              CASE WHEN (SELECT Provisao_ContaC FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> '''' THEN');
         tPagarReceber.SQL.Add('                                   (SELECT Provisao_ContaC FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              ELSE');
         tPagarReceber.SQL.Add('                                   (SELECT Pagamento_Conta FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              END');
         tPagarReceber.SQL.Add('                         ELSE');
         tPagarReceber.SQL.Add('                              CASE WHEN (SELECT Provisao_ContaD FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> '''' THEN');
         tPagarReceber.SQL.Add('                                  (SELECT Provisao_ContaD FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              ELSE');
         tPagarReceber.SQL.Add('                                  (SELECT Pagamento_Conta FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              END');
         tPagarReceber.SQL.Add('                         END');
         tPagarReceber.SQL.Add('FROM PagarReceber');
         tPagarReceber.SQL.Add('WHERE ((SELECT ISNULL(CST_PIS, '''') FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> '''')');
         tPagarReceber.SQL.Add('      AND (YEAR(Data_Documento) = :pAno) AND (MONTH(Data_Documento) = :pMes) AND (Provisorio <> 1)');
      end else begin
         tPagarReceber.SQL.Add('       ,(SELECT Aliquota_PIS    FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_PIS');
         tPagarReceber.SQL.Add('       ,(SELECT Aliquota_COFINS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Aliquota_COFINS');
         tPagarReceber.SQL.Add('       ,(SELECT CST_PIS         FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_PIS');
         tPagarReceber.SQL.Add('       ,(SELECT CST_COFINS      FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CST_COFINS');
         tPagarReceber.SQL.Add('       ,(SELECT BCCredito       FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Codigo_BC');
         tPagarReceber.SQL.Add('       ,(SELECT Tipo_Operacao   FROM Cybersoft_Cadastros.dbo.CSTPIS    WHERE(Codigo = (SELECT CST_PIS    FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)))) AS Tipo_OperacaoPIS');
         tPagarReceber.SQL.Add('       ,(SELECT Tipo_Operacao   FROM Cybersoft_Cadastros.dbo.CSTCOFINS WHERE(Codigo = (SELECT CST_COFINS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)))) AS Tipo_OperacaoCOFINS');
         tPagarReceber.SQL.Add('       ,CASE WHEN Fornecedor  >    0 THEN CAST(Fornecedor AS VARCHAR(6))+''F'' ');
         tPagarReceber.SQL.Add('             WHEN Cliente     >    0 THEN CAST(Cliente AS VARCHAR(6))+''C'' ');
         tPagarReceber.SQL.Add('             WHEN Orgao      <> '''' THEN Orgao+''O'' ');
         tPagarReceber.SQL.Add('        END AS Beneficiario');
         tPagarReceber.SQL.Add('       ,Codigo_Mercadoria = null');
         tPagarReceber.SQL.Add('       ,Indicador_Origem  = 0');
         tPagarReceber.SQL.Add('       ,Conta_Contabil = CASE WHEN PagarReceber.Tipo = ''R'' THEN');
         tPagarReceber.SQL.Add('                              CASE WHEN (SELECT Provisao_ContaC FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> '''' THEN');
         tPagarReceber.SQL.Add('                                   (SELECT Provisao_ContaC FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              ELSE');
         tPagarReceber.SQL.Add('                                   (SELECT Pagamento_Conta FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              END');
         tPagarReceber.SQL.Add('                         ELSE');
         tPagarReceber.SQL.Add('                              CASE WHEN (SELECT Provisao_ContaD FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> '''' THEN');
         tPagarReceber.SQL.Add('                                  (SELECT Provisao_ContaD FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              ELSE');
         tPagarReceber.SQL.Add('                                  (SELECT Pagamento_Conta FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao))');
         tPagarReceber.SQL.Add('                              END');
         tPagarReceber.SQL.Add('                         END');
         tPagarReceber.SQL.Add('FROM PagarReceber');
         tPagarReceber.SQL.Add('WHERE ((SELECT ISNULL(CST_PIS, '''') FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> '''')');
         tPagarReceber.SQL.Add('      AND (YEAR(Data_Documento) = :pAno) AND (MONTH(Data_Documento) = :pMes) AND (Provisorio <> 1)');
      End;

      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tPagarReceber.SQL.Add('UNION ALL');
         tPagarReceber.SQL.Add('SELECT  Classificacao       = ''D.I, ''+ SUBSTRING(DI,1,2)+''/''+SUBSTRING(DI,3,7)+''-''+SUBSTRING(DI,10,1)');
         tPagarReceber.SQL.Add('       ,Valor_Operacao      = (Valor_UnitarioReal + (case when (select Frete from Cybersoft_Cadastros.dbo.INCOTERMS where Codigo = (SELECT INCOTERMS FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 then');
         tPagarReceber.SQL.Add('                                                         ((SELECT (Frete /Peso_Liquido) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * Peso_Liquido) else 0 end +');
         tPagarReceber.SQL.Add('                                                     case when (select Seguro from Cybersoft_Cadastros.dbo.INCOTERMS where Codigo = (SELECT INCOTERMS FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 then');
         tPagarReceber.SQL.Add('                                                         ((SELECT (Seguro/FOB) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * Valor_SemAdValorem) else 0 end)');
         tPagarReceber.SQL.Add('                               )* Quantidade');
         tPagarReceber.SQL.Add('       ,Data_Vencimento     = (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)');
         tPagarReceber.SQL.Add('       ,Fornecedor          = Exportador');
         tPagarReceber.SQL.Add('       ,Aliquota_PIS        = (SELECT PIS_Nota         FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
         tPagarReceber.SQL.Add('       ,Aliquota_COFINS     = (SELECT COFINS_Nota      FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
         tPagarReceber.SQL.Add('       ,CST_PIS             = (SELECT CST_PIS          FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)');
         tPagarReceber.SQL.Add('       ,CST_COFINS          = (SELECT CST_COFINS       FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)');
         tPagarReceber.SQL.Add('       ,Codigo_BC           = (SELECT Codigo_BCCredito FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)');
         tPagarReceber.SQL.Add('       ,Tipo_OperacaoPIS    = (SELECT Tipo_Operacao    FROM Cybersoft_Cadastros.dbo.CSTPIS    WHERE Codigo = (SELECT CST_PIS    FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI))');
         tPagarReceber.SQL.Add('       ,Tipo_OperacaoCOFINS = (SELECT Tipo_Operacao    FROM Cybersoft_Cadastros.dbo.CSTCOFINS WHERE Codigo = (SELECT CST_COFINS FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI))');
         tPagarReceber.SQL.Add('       ,Beneficiario        = CAST(Exportador AS VARCHAR(6))+''F'' ');
         tPagarReceber.SQL.Add('       ,Codigo_Mercadoria   = CAST((SELECT Codigo FROM Produtos WHERE Codigo = Codigo_Mercadoria) AS VARCHAR(15))+''P'' ');
         tPagarReceber.SQL.Add('       ,Indicador_Origem    = 1');
         tPagarReceber.SQL.Add('       ,Conta_Contabil = (SELECT Conta_Despesas FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)');
         tPagarReceber.SQL.Add('FROM  Adicoes AD');
         tPagarReceber.SQL.Add('WHERE (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) BETWEEN :pDataIni AND :pDataFim');
         tPagarReceber.SQL.Add('  AND ISNULL((SELECT Apuracao_PISCOFINS FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI), 0) = 1');
         tPagarReceber.SQL.Add('  AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' ');
         tPagarReceber.SQL.Add('  AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0');
      End;
      tPagarReceber.SQL.Add('ORDER BY Classificacao');
      tPagarReceber.ParamByName('pAno').AsInteger  := cAno.AsInteger;
      tPagarReceber.ParamByName('pMes').AsInteger  := cMes.ItemIndex + 1;
      
      If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
         tPagarReceber.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
         tPagarReceber.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
      End;   
      //tPagarReceber.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGF010_Matriz.SQL');
      tPagarReceber.Open;

      // Matriz.
      If tPagarReceber.RecordCount > 0 then begin
         Inc(mLinha);
         mRegistro := '|F010' +                                                   // 01 - REG.
                      '|'+ Trim(Dados.Empresas.FieldByName('CNPJ').AsString)+     // 02 - Número de inscrição do estabelecimento no CNPJ.
                      '|';
         Say( mLinha, 000, Arquivo, mRegistro );
         Inc(mQtdeBlocoF);
         Inc(mQtdeRegF010);

         If Funcoes.Cancelado = false then RegistroF100;
         If Funcoes.Cancelado = false then RegistroF700(0);
      End;

      // Filiais.
      mSQLMatriz := tPagarReceber.SQL.Text;

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('USE '+ Dados.EmpresasBanco_Dados.AsString, 'USE '+ tEmpresas.FieldByName('Banco_Dados').AsString, mSQLMatriz);
            tPagarReceber.SQL.Clear;
            tPagarReceber.SQL.Add(mSQLFilial);
            tPagarReceber.ParamByName('pAno').AsInteger  := cAno.AsInteger;
            tPagarReceber.ParamByName('pMes').AsInteger  := cMes.ItemIndex + 1;
            If Dados.EmpresasPISCOFINS_F100.AsBoolean then begin
               tPagarReceber.ParamByName('pDataIni').AsDate := StrtoDate(mDataIni);
               tPagarReceber.ParamByName('pDataFim').AsDate := StrtoDate(mDataFim);
            End;
            //tPagarReceber.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGF010_Filial'+tEmpresas.FieldByName('Numero_Filial').AsString+'.SQL');
            tPagarReceber.Open;

            If tPagarReceber.RecordCount > 0 then begin
               Inc(mLinha);
               mRegistro := '|F010' +                                              // 01 - REG.
                            '|'+ Trim(tEmpresas.FieldByName('CNPJ').AsString)+     // 02 - Número de inscrição do estabelecimento no CNPJ.
                            '|';
               Say( mLinha, 000, Arquivo, mRegistro );
               Inc(mQtdeBlocoF);
               Inc(mQtdeRegF010);

               If Funcoes.Cancelado = false then RegistroF100;
               If Funcoes.Cancelado = false then RegistroF700(0);
            End;

            tEmpresas.Next;
      End;
end;

{* REGISTRO F100: DEMAIS DOCUMENTOS E OPERAÇÕES GERADORAS DE CONTRIBUIÇÃO E CRÉDITOS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroF100;
Var
   mCodigoBC: String;
begin
     Progresso3('Demais documentos e Operações Geradoras de Créditos', tPagarReceber.RecordCount);

     While (not tPagarReceber.Eof) and (Funcoes.Cancelado = false) do begin
           mCodigoBC := PoeZero(2, tPagarReceber.FieldByName('Codigo_BC').AsInteger);
           If mCodigoBC = '00' then mCodigoBC := '';

           Inc(mLinha);
           mRegistro := '|F100'+                                                                                                                                                 // 01 - REG.
                        '|'+ Trim(tPagarReceber.FieldByName('Tipo_OperacaoCOFINS').AsString) +                                                                                   // 02 - Tipo de operação.
                        '|'+ tPagarReceber.FieldByName('Beneficiario').AsString +                                                                                                // 03 - Código do participante.
                        '|'+ tPagarReceber.FieldByName('Codigo_Mercadoria').AsString +                                                                                           // 04 - Código do item.
                        '|'+ RemoveCaracter('/','',tPagarReceber.FieldByName('Data_Vencimento').AsString) +                                                                      // 05 - Data da Operação.
                        '|'+ FormatFloat('#0.00', tPagarReceber.FieldByName('Valor_Operacao').AsCurrency) +                                                                      // 06 - Valor Operação / Item.
                        '|'+ tPagarReceber.FieldByName('CST_PIS').AsString +                                                                                                     // 07 - CST PIS.
                        '|'+ FormatFloat('#0.00', tPagarReceber.FieldByName('Valor_Operacao').AsCurrency) +                                                                      // 08 - Valor B.C. PIS.
                        '|'+ FormatFloat('#0.00', tPagarReceber.FieldByName('Aliquota_PIS').AsFloat) +                                                                           // 09 - Aliquota do PIS.
                        '|'+ FormatFloat('#0.00', Percentual(tPagarReceber.FieldByName('Valor_Operacao').AsCurrency, tPagarReceber.FieldByName('Aliquota_PIS').AsFloat)) +       // 10 - Valor do PIS.
                        '|'+ tPagarReceber.FieldByName('CST_COFINS').AsString +                                                                                                  // 11 - CST COFINS.
                        '|'+ FormatFloat('#0.00', tPagarReceber.FieldByName('Valor_Operacao').AsCurrency) +                                                                      // 12 - Valor B.C. COFINS
                        '|'+ FormatFloat('#0.00', tPagarReceber.FieldByName('Aliquota_COFINS').AsFloat) +                                                                        // 13 - Aliquota do COFINS.
                        '|'+ FormatFloat('#0.00', Percentual(tPagarReceber.FieldByName('Valor_Operacao').AsCurrency, tPagarReceber.FieldByName('Aliquota_COFINS').AsFloat)) +    // 14 - Valor da COFINS.
                        '|'+ mCodigoBC +                                                                                                                                         // 15 - Código da Base de Cálculo dos Créditos.
                        '|'+ tPagarReceber.FieldByName('Indicador_Origem').AsString +                                                                                            // 16 - Indicador da origem do crédito.
                        '|'+ tPagarReceber.FieldByName('Conta_Contabil').AsString +                                                                                              // 17 - Código da conta analítica contábil debitada/creditada.
                        '|'+                                                                                                                                                     // 18 - Código do Centro de Custos.
                        '|'+ tPagarReceber.FieldByName('Classificacao').AsString +                                                                                               // 19 - Descrição do Documento/Operação.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoF);
           Inc(mQtdeRegF100);

           tPagarReceber.Next;
           
           Progresso3('Registro: F100...', 0);
     End;
end;

{* REGISTRO F700: DEDUÇÕES DIVERSAS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroF700(Empresa: Integer);
begin
     tApuracao.SQL.Clear;
     If Empresa = 0 then
        tApuracao.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString)
     else
        tApuracao.SQL.Add('USE ' + tEmpresas.FieldByName('Banco_Dados').AsString);
         
     tApuracao.SQL.Add('SELECT ISNULL((SELECT SUM((Valor_Total * (Aliquota_PIS/100))-(Valor_Total * (Aliquota_PISRed/100)) ) FROM NotasItens WHERE(Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
     tApuracao.SQL.Add('       AND (CSTPIS <= ''05'' OR CSTPIS = ''49'') AND (ISNULL(Aliquota_PISRed, 0) > 0)), 0) AS Outras_DeducoesPIS,');
     tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
     tApuracao.SQL.Add('       AND (CSTPIS <= ''05'' OR CSTPIS = ''49'') AND (ISNULL(Aliquota_PISRed, 0) > 0)), 0) AS BC_Deducoes,');
     tApuracao.SQL.Add('       ISNULL((SELECT SUM((Valor_Total * (Aliquota_COFINS/100))-(Valor_Total * (Aliquota_COFINSRed/100)) ) FROM NotasItens WHERE(Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
     tApuracao.SQL.Add('       AND (CSTCOFINS <= ''05'' OR CSTCOFINS = ''49'') AND (ISNULL(Aliquota_COFINSRed, 0) > 0)), 0) AS Outras_DeducoesCOFINS');
     tApuracao.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tApuracao.ParamByName('pAno').AsInteger := cAno.AsInteger;
     //tApuracao.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGF700_'+tEmpresas.FieldByName('Codigo').AsString+'.SQL');
     tApuracao.Open;

     Progresso3('Demais documentos e Operações Geradoras de Créditos', tPagarReceber.RecordCount);

     While (not tApuracao.Eof) and (Funcoes.Cancelado = false) do begin
           Inc(mLinha);
           mRegistro := '|F700'+                                                                                // 01 - REG.
                        '|99'+                                                                                  // 02 - Indicador de Origem de Deduções Diversas.
                        '|0'+                                                                                   // 03 - Indicador de Origem de Deduções Diversas.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('Outras_DeducoesPIS').AsCurrency) +     // 04 - Valor a Deduzir - PIS/PASEP.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('Outras_DeducoesCOFINS').AsCurrency) +  // 05 - Valor a Deduzir – Cofins.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('BC_Deducoes').AsCurrency) +            // 06 - Valor da Base de Cálculo da Operação que ensejou o Valor a Deduzir informado nos Campos 04 e 05.
                        '|'+ Dados.EmpresasCNPJ.Value +                                                         // 09 - CNPJ da Pessoa Jurídica relacionada à Operação que ensejou o Valor a Deduzir informado nos Campos 04 e 05.
                        '|'+                                                                                    // 08 - Informações Complementares do Documento/Operação que ensejou o Valor a Deduzir informado nos Campos 04 e 05.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );
           
           Inc(mQtdeBlocoF);
           Inc(mQtdeRegF700);

           tApuracao.Next;

           Progresso3('Registro: F700...', 0);
     End;
end;

{* REGISTRO F990: ENCERRAMENTO DO BLOCO F *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroF990;
begin
      Progresso1('Encerramento do BLOCO F', 1);

      Inc(mLinha);
      Inc(mQtdeRegF990);
      Inc(mQtdeBlocoF);
      
      mRegistro := '|F990' +                     // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoF)+   // 02 - Quantidade de registro do bloco D.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro);

      Progresso2('F990');
end;

{* BLOCO I: OPERAÇÕES DAS INSTITUIÇÕES FINANCEIRAS, SEGURADORAS, ENTIDADES DE PREVIDENCIA PRIVADA, OPERADORAS DE PLANOS DE ASSISTÊNCIA À SAÚDE E DEMAIS PESSOAS JURÍDICAS REFERIDAS }
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroI001;
begin
      Progresso1('Abertura do BLOCO I', 1);
      Inc(mLinha);
      mRegistro := '|I001' +                       // 01 - REG.
                   '|1' +                          // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeBlocoI);
      Inc(mQtdeRegI001);

      Progresso2('Registro: F001');
End;

{* REGISTRO I990: ENCERRAMENTO DO BLOCO I *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroI990;
begin
      Progresso1('Encerramento do BLOCO I', 1);

      Inc(mLinha);
      Inc(mQtdeRegI990);
      Inc(mQtdeBlocoI);

      mRegistro := '|I990' +                           // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoI)+         // 02 - Quantidade de registro do bloco I.
                   '|';
      Say(mLinha, 000, Arquivo, mRegistro);
                                                              
      Progresso2('I990');
end;

{* REGISTRO M001: ABERTURA DO BLOCO M *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM001;
Var
    mBlocoM: String;
begin
      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT ( SELECT COUNT(*) FROM NotasFiscais   NF WHERE(NF.Saida_Entrada = 0) AND (NF.Cancelada <> 1) AND (YEAR(NF.Data_Emissao) = :pAno AND MONTH(NF.Data_Emissao) = :pMes)');
      tNotas.SQL.Add('                                                AND (Apuracao_PISCOFINS = 1) )+');
      tNotas.SQL.Add('       ( SELECT COUNT(*) FROM NotasTerceiros NT WHERE(ISNULL(NT.Provisoria, 0) = 0)  AND (ISNULL(NT.Desdobramento, 0) = 0) AND (YEAR(NT.Data_Entrada) = :pAno AND MONTH(NT.Data_Entrada) = :pMes)');
      tNotas.SQL.Add('                                                 AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)) = 1) )+');
      tNotas.SQL.Add('       ( SELECT COUNT(*) FROM NotasServico   NS WHERE(YEAR(NS.Data_Emissao) = :pAno AND MONTH(NS.Data_Emissao) = :pMes) AND (NS.Cancelada <> 1)');
      tNotas.SQL.Add('                                                 AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = NS.Referencia_Fiscal)) = 1) )');
      tNotas.SQL.Add('       AS Qtde');

      // Filiais.
      mSQLMatriz := tNotas.SQL.Text;

      tEmpresas.First;
      While not tEmpresas.Eof do begin
            mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
            mSQLFilial := RemoveCaracter('NotasTerceiros,'    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros,'    , mSQLFilial);
            mSQLFilial := RemoveCaracter('NotasServico,'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico,'      , mSQLFilial);
            mSQLFilial := RemoveCaracter('TiposNota'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
            mSQLFilial := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais' , mSQLFilial);
            tNotas.SQL.Add('UNION ALL');
            tNotas.SQL.Add(mSQLFilial);
            tEmpresas.Next;
      End;
      tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
      tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM001.SQL');
      tNotas.Open;

      i := 1;
      If tNotas.FieldByName('Qtde').AsInteger > 0 then i := 0;

      Progresso1('Abertura do BLOCO M', 1);

      mBlocoM := InttoStr(cBlocoM.ItemIndex);
      //If cBlocoM.ItemIndex = 1 then mBlocoM := '1';

      Inc(mLinha);
      mRegistro := '|M001' +                       // 01 - REG.
                   '|'+ mBlocoM +                  // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeBlocoM);
      Inc(mQtdeRegM001);

      If cBlocoM.ItemIndex = 0 then begin
         If Funcoes.Cancelado = false then RegistroM100;
         If Funcoes.Cancelado = false then RegistroM200;
         If Funcoes.Cancelado = false then RegistroM400;
         If Funcoes.Cancelado = false then RegistroM500;
         If Funcoes.Cancelado = false then RegistroM600;
         If Funcoes.Cancelado = false then RegistroM800;
      End;
      Progresso2('Registro: M001');
end;

{* REGISTRO M100: CRÉDITO DE PIS/PASEP RELATIVO AO PERÍODO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM100;
Var
    mCampo13: String;
    mCampo14: Real;
    mCampo15: Real;
begin
     // Credito vinculado à receita "tributada" no mercado interno.
     tApuracao.SQL.Clear;
     tApuracao.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
     tApuracao.SQL.Add('SELECT ''101'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS = :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('INTO #Temp');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS = :pAliquota)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''102'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS <> :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS <> :pAliquota) AND (Aliquota_PIS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''108'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasItens.Aliquota_PIS)),0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasItens');
     tApuracao.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_PIS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');

     // Credito vinculado à receita "não tributada" no mercado interno.
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''201'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS = :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS = :pAliquota)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''202'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS <> :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS <> :pAliquota) AND (Aliquota_PIS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''208'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1)');
     tApuracao.SQL.Add('                                    AND (SELECT Receita FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasItens.Aliquota_PIS)),0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasItens');
     tApuracao.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_PIS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');

     // Credito vinculado à receita "Exportação".
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''301'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS = :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS = :pAliquota)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''302'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS <> :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS <> :pAliquota) AND (Aliquota_PIS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''308'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasItens.Aliquota_PIS)),0),');
     tApuracao.SQL.Add('       Vinculado_PIS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasItens');
     tApuracao.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_PIS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_PIS');

     // Filiais.
     mSQLMatriz := tApuracao.SQL.Text;
     mSQLFilial := '';

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasItens'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'         , mSQLFilial);
           mSQLFilial := RemoveCaracter('TiposNota'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
           mSQLFilial := RemoveCaracter('NotasTerceirosItens', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens', mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais' , mSQLFilial);
           mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO #Temp', '', mSQLFilial);
           mSQLFilial := RemoveCaracter('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString, '', mSQLFilial);
           
           tApuracao.SQL.Add('UNION ALL');
           tApuracao.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tApuracao.SQL.Add('UPDATE #Temp SET Vinculado_PIS = CASE WHEN Receita_PIS <= Credito_PIS THEN Receita_PIS ELSE Credito_PIS END');
     tApuracao.SQL.Add('SELECT Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_PIS,');
     tApuracao.SQL.Add('       SUM(BC_PIS) AS BC_PIS,');
     tApuracao.SQL.Add('       SUM(Credito_PIS) AS Credito_PIS,');
     tApuracao.SQL.Add('       SUM(Receita_PIS) AS Receita_PIS,');
     tApuracao.SQL.Add('       SUM(Vinculado_PIS) AS Vinculado_PIS');
     tApuracao.SQL.Add('FROM #Temp');
     tApuracao.SQL.Add('WHERE Vinculado_PIS > 0');
     tApuracao.SQL.Add('GROUP BY Tipo_Credito, Aliquota_PIS');
     tApuracao.SQL.Add('ORDER  BY Tipo_Credito');
     tApuracao.SQL.Add('DROP TABLE #Temp');
     tApuracao.ParamByName('pMes').AsInteger    := cMes.ItemIndex + 1;
     tApuracao.ParamByName('pAno').AsInteger    := cAno.AsInteger;

     //Pegando a alíquota base na tabela de majoração de acordo com o regime da empresa.
     Dados.Majoracao.SQL.Clear;
     Dados.Majoracao.SQL.Add('SELECT * FROM Majoracao');
     Dados.Majoracao.SQL.Add('WHERE Descricao       = ''PIS'' ');
     Dados.Majoracao.SQL.Add('AND   Regime_Apuracao = :pRegime');
     Dados.Majoracao.SQL.Add('AND   Tipo            = ''B'' ');
     Dados.Majoracao.SQL.Add('AND   Data_Inicio    <= :pDataIni');
     Dados.Majoracao.SQL.Add('AND   ISNULL(Data_Final, GETDATE()) >= :pDataFim');
     Dados.Majoracao.ParamByName('pRegime').AsString  := Dados.EmpresasRegime.AsString;
     Dados.Majoracao.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
     Dados.Majoracao.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
     Dados.Majoracao.Open;

     tApuracao.ParamByName('pAliquota').AsFloat := Dados.MajoracaoEntrada.AsFloat;

     //tApuracao.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM100A.SQL');
     tApuracao.Open;

     //----------------------------------------------------------------------[ REGISTRO 105 ]-----------------------------------------------------------------------------------
     // Credito vinculado à receita "tributada" no mercado interno.
     tApuracao2.SQL.Clear;
     tApuracao2.SQL.Add('SELECT ''101'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS = :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_PIS AS CSTPIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('INTO #Temp');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS = :pAliquota)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''102'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS <> :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_PIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS <> :pAliquota) AND (Aliquota_PIS > 0)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''108'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasItens.Aliquota_PIS)),0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CSTPIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) )) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasItens');
     tApuracao2.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_PIS > 0)');
     // Credito vinculado à receita "não tributada" no mercado interno.
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''201'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS = :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_PIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS = :pAliquota)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''202'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS <> :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_PIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS <> :pAliquota) AND (Aliquota_PIS > 0)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''208'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1)');
     tApuracao2.SQL.Add('                                    AND (SELECT Receita FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasItens.Aliquota_PIS)),0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CSTPIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) )) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasItens');
     tApuracao2.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_PIS > 0)');
     // Credito vinculado à receita "Exportação".
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''301'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS = :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_PIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS = :pAliquota)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''302'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_PIS <> :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasTerceirosItens.Aliquota_PIS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_PIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_PIS <> :pAliquota) AND (Aliquota_PIS > 0)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''308'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_PIS,');
     tApuracao2.SQL.Add('       (Valor_PIS * Quantidade) AS Credito_PIS,');
     tApuracao2.SQL.Add('       Receita_PIS = ISNULL((SELECT SUM(Valor_PIS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_PIS = NotasItens.Aliquota_PIS)),0),');
     tApuracao2.SQL.Add('       Vinculado_PIS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CSTPIS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) )) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasItens');
     tApuracao2.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_PIS > 0)');

     // Filiais.
     mSQLMatriz := tApuracao2.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasItens'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'         , mSQLFilial);
           mSQLFilial := RemoveCaracter('TiposNota'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
           mSQLFilial := RemoveCaracter('NotasTerceirosItens', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens', mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais' , mSQLFilial);
           mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO #Temp', '', mSQLFilial);

           tApuracao2.SQL.Add('UNION ALL');
           tApuracao2.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tApuracao2.SQL.Add('UPDATE #Temp SET Vinculado_PIS = CASE WHEN Receita_PIS <= Credito_PIS THEN Receita_PIS ELSE Credito_PIS END');
     tApuracao2.SQL.Add('SELECT Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_PIS,');
     tApuracao2.SQL.Add('       Natureza_BC,');
     tApuracao2.SQL.Add('       CSTPIS,');
     tApuracao2.SQL.Add('       SUM(BC_PIS)        AS BC_PIS,');
     tApuracao2.SQL.Add('       SUM(Credito_PIS)   AS Credito_PIS,');
     tApuracao2.SQL.Add('       SUM(Receita_PIS)   AS Receita_PIS,');
     tApuracao2.SQL.Add('       SUM(Vinculado_PIS) AS Vinculado_PIS');
     tApuracao2.SQL.Add('FROM #Temp');
     tApuracao2.SQL.Add('WHERE Vinculado_PIS > 0');
     tApuracao2.SQL.Add('GROUP BY Tipo_Credito, Natureza_BC, CSTPIS, Aliquota_PIS');
     tApuracao2.SQL.Add('ORDER  BY Tipo_Credito');
     tApuracao2.ParamByName('pMes').AsInteger    := cMes.ItemIndex + 1;
     tApuracao2.ParamByName('pAno').AsInteger    := cAno.AsInteger;
     tApuracao2.ParamByName('pAliquota').AsFloat := Dados.MajoracaoEntrada.AsFloat;
     //tApuracao2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM100B.SQL');
     tApuracao2.Open;

     mCreditoPIS     := 0;
     mCreditoPISUtil := 0;

     Progresso3('Crédito de PIS relativo ao Período', tApuracao.RecordCount);

     While (not tApuracao.Eof) and (Funcoes.Cancelado = false) do begin
           If tApuracao.FieldByName('Receita_PIS').AsCurrency <= tApuracao.FieldByName('Credito_PIS').AsCurrency  then begin
              mCampo13 := '1';
              mCampo14 := tApuracao.FieldByName('Receita_PIS').AsCurrency;
           end else begin
              mCampo13 := '0';
              mCampo14 := tApuracao.FieldByName('Credito_PIS').AsCurrency;
           End;

           mCampo15 := tApuracao.FieldByName('Credito_PIS').AsCurrency - mCampo14;

           Inc(mLinha);
           mRegistro := '|M100'+                                                                          // 01 - REG.
                        '|'+ PoeZero(2, tApuracao.FieldByName('Tipo_Credito').AsInteger) +                // 02 - Tipo de operação.
                        '|'+ '0' +                                                                        // 03 - Indicador de Crédito Oriundo de:.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('BC_PIS').Value) +                // 04 - Valor da Base de Cálculo do Crédito.
                        '|'+ FormatFloat('#0.0000', tApuracao.FieldByName('Aliquota_PIS').Value) +        // 05 - Alíquota do PIS.
                        '|'+                                                                              // 06 - Quantidade – Base de cálculo PIS.
                        '|'+                                                                              // 07 - Aliquota do PIS (Reais).
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('Credito_PIS').AsCurrency) +      // 08 - Valor total do crédito apurado no período.
                        '|0,00'+                                                                          // 09 - Valor total dos ajustes de acréscimo.
                        '|0,00'+                                                                          // 10 - Valor total dos ajustes de redução.
                        '|0,00'+                                                                          // 11 - Valor total do crédito diferido no período.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('Credito_PIS').AsCurrency) +      // 12 - Valor Total do Crédito Disponível relativo ao Período (08+09–10–11).
                        '|'+ mCampo13 +                                                                   // 13 - Indicador de opção de utilização do crédito disponível no período.
                        '|'+ FormatFloat('#0.00', mCampo14) +                                             // 14 - Valor do Crédito disponível, descontado da contribuição apurada no próprio período.
                        '|'+ FormatFloat('#0.00', mCampo15) +                                             // 15 - Saldo de créditos a utilizar em períodos futuros.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           mCreditoPIS     := mCreditoPIS     + tApuracao.FieldByName('Credito_PIS').AsCurrency;
           mCreditoPISUtil := mCreditoPISUtil + mCampo14;

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM100);

           If Funcoes.Cancelado = false then RegistroM105(tApuracao.FieldByName('Tipo_Credito').AsString, tApuracao.FieldByName('Aliquota_PIS').AsFloat);

           tApuracao.Next;

           Progresso3('Registro: M100...', tApuracao2.RecordCount);
     End;
end;

{* DETALHAMENTO DA BASE DE CALCULO DO CRÉDITO APURADO NO PERÍODO – PIS/PASEP *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM105(TipoCredito: String; Aliquota: Real);
begin
     Progresso4('Registro: M105...', tApuracao2.RecordCount);

     tApuracao2.First;
     While (not tApuracao2.Eof) and (not Funcoes.Cancelado) do begin
           If (tApuracao2.FieldByName('Tipo_Credito').AsString = TipoCredito) and (tApuracao2.FieldByName('Aliquota_PIS').AsFloat = Aliquota) then begin
              Inc(mLinha);
              mRegistro := '|M105'+                                                                       // 01 - REG.
                           '|' + PoeZero(2, tApuracao2.FieldByName('Natureza_BC').AsInteger) +            // 02 - Código da Base de Cálculo do Crédito apurado no período.
                           '|' + tApuracao2.FieldByName('CSTPIS').AsString +                              // 03 - Código da Situação Tributária referente ao crédito de PIS/Pasep.
                           '|' + FormatFloat('#0.00', tApuracao2.FieldByName('BC_PIS').Value) +           // 04 - Valor Total da Base de Cálculo escriturada nos documentos e operações.
                           '|' +                                                                          // 05 - Parcela do Valor Total da Base de Cálculo informada no Campo 04.
                           '|' + FormatFloat('#0.00', tApuracao2.FieldByName('BC_PIS').AsCurrency) +      // 06 - Valor Total da Base de Cálculo do Crédito, vinculada a receitas com incidência não-cumulativa (Campo 04–Campo 05).
                           '|' + FormatFloat('#0.00', tApuracao2.FieldByName('BC_PIS').AsCurrency) +      // 07 - Valor da Base de Cálculo do Crédito, vinculada ao tipo de Crédito escriturado em M100.
                           '|' +                                                                          // 08 - Quantidade Total da Base de Cálculo do Crédito apurado  em Unidade de Medida.
                           '|' +                                                                          // 09 - Parcela da base de cálculo do crédito em quantidade (campo 08).
                           '|' +                                                                          // 10 - Descrição do crédito.
                           '|';
              Say( mLinha, 000, Arquivo, mRegistro );

              Inc(mQtdeBlocoM);
              Inc(mQtdeRegM105);
           End;
           tApuracao2.Next;

           Progresso4('Registro: M105...', 0);
     End;
end;

{* REGISTRO M200: CONSOLIDAÇÃO DA CONTRIBUIÇÃO PARA O PIS/PASEP DO PERÍODO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM200;
Var
   mValorContrib: Real;
   mValorDevido : Real;
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT CAST(ISNULL((SELECT SUM(((Valor_PIS * CASE WHEN Quantidade > 0 THEN Quantidade ELSE 1 END)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END )*CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END )');
     tItens.SQL.Add('       FROM NotasItens WHERE(Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes)');
     tItens.SQL.Add('       AND (Apuracao_PISCOFINS = 1)  AND (Cancelada <> 1) AND (CSTPIS <= ''05'' OR CSTPIS = ''49'')), 0) +');
     tItens.SQL.Add('       ISNULL((SELECT SUM(Valor_Servico * (Aliquota_PIS/100)) FROM NotasServico WHERE(YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1)');
     tItens.SQL.Add('                                                 AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1)');
     tItens.SQL.Add('                                                 AND ((SELECT CSTPIS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) <= ''05'' OR (SELECT CSTPIS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = ''05'')');
     tItens.SQL.Add('       ), 0) AS DECIMAL(18,2)) AS Valor_PIS,');
     tItens.SQL.Add('       ISNULL((SELECT SUM(Valor_PIS * Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)  AND (Cancelada <> 1)');
     tItens.SQL.Add('       AND (CSTPIS <= ''05'' OR CSTPIS = ''49'')), 0) AS Valor_Credito,');
     tItens.SQL.Add('       ISNULL((SELECT SUM((Valor_PIS * Quantidade)-(Valor_Total * (Aliquota_PIS/100)) ) FROM NotasItens WHERE(Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)');
     tItens.SQL.Add('       AND (Cancelada <> 1) AND (CSTPIS <= ''05'' OR CSTPIS = ''49'') AND (ISNULL(Aliquota_PIS, 0) > 0)), 0) AS Outras_Deducoes');
     tItens.SQL.Add('INTO  #TEMP');

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasItens'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'        , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasServico'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'      , mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO  #TEMP'       , '', mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;
     tItens.SQL.Add('SELECT SUM(Valor_PIS) AS Valor_PIS, SUM(Valor_Credito) AS Valor_Credito, SUM(Outras_Deducoes) AS Outras_Deducoes FROM #Temp');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM200.SQL');
     titens.Open;

     If (mCreditoPIS > tItens.FieldByName('Valor_PIS').AsCurrency) then mCreditoPIS := tItens.FieldByName('Valor_PIS').AsCurrency;
     mValorContrib := tItens.FieldByName('Valor_PIS').AsCurrency - mCreditoPISUtil;
     If mValorContrib < 0 then mValorContrib := mValorContrib * -1;
     mValorDevido  := mValorContrib;

     Progresso3('Consolidação da Contribuição p/PIS', 1);

     Inc(mLinha);
     mRegistro := '|M200'+                                                                          // 01 - REG.
                  '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_PIS').AsCurrency) +           // 02 - Valor Total da Contribuição Não Cumulativa do Período.
                  '|'+ FormatFloat('#0.00', mCreditoPISUtil) +                                      // 03 - Valor do Crédito Descontado, Apurado no Próprio Período da Escrituração.
                  '|0,00'+                                                                          // 04 - Valor do Crédito Descontado, Apurado em Período de Apuração Anterior.
                  '|'+ FormatFloat('#0.00', mValorContrib) +                                        // 05 - Valor Total da Contribuição Não Cumulativa Devida (02–03-04).
                  '|0,00'+                                                                          // 06 - Valor Retido na Fonte Deduzido no Período.
                  '|0,00'+                                                                          // 07 - Outras Deduções no Período.
                  '|'+ FormatFloat('#0.00', mValorDevido) +                                         // 08 - Valor da Contribuição Não Cumulativa a Recolher/Pagar (05–06-07).
                  '|0,00'+                                                                          // 09 - Valor Total da Contribuição Cumulativa do Período.
                  '|0,00'+                                                                          // 10 - Valor Retido na Fonte Deduzido no Período.
                  '|0,00'+                                                                          // 11 - Outras Deduções no Período.
                  '|0,00'+                                                                          // 12 - Valor da Contribuição Cumulativa a Recolher/Pagar (09-10–11).
                  '|'+ FormatFloat('#0.00', mValorDevido) +                                         // 13 - Valor Total da Contribuição a Recolher/Pagar no Período (08+12).
                  '|';
     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeBlocoM);
     Inc(mQtdeRegM200);

     If mValorDevido > 0 then If Funcoes.Cancelado = false then RegistroM205;
     If tItens.RecordCount > 0 then If Funcoes.Cancelado = false then RegistroM210;

     Progresso3('Consolidação da Contribuição p/PIS', 0);
end;

{* REGISTRO M205: CONTRIBUIÇÃO PARA O PIS/PASEP A RECOLHER – DETALHAMENTO POR CÓDIGO DE RECEITA  *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM205;
begin
     Progresso4('Registro: M205...', tItens.RecordCount);

     Inc(mLinha);
     mRegistro := '|M205'+        // 01 - REG.
                  '|08' +         // 02 - Número do campo do registro “M200” (Campo 08 (contribuição não cumulativa) ou Campo 12.
                  '|' +           // 03 - Código da receita referente à contribuição a recolher, detalhada neste registro.
                  '|0,00'+        // 04 - Valor do Débito correspondente ao código do Campo 03, conforme informação na DCTF.
                  '|';
     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeBlocoM);
     Inc(mQtdeRegM205);
end;

{* REGISTRO M210: DETALHAMENTO DA CONTRIBUIÇÃO PARA O PIS/PASEP DO PERÍODO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM210;
var
   mVAlor:Real;
begin
     tItens.SQL.Clear;
     //tItens.SQL.Add('SELECT CSTPIS AS Codigo,');
     tItens.SQL.Add('SELECT ''01'' AS Codigo,');
     tItens.SQL.Add('       ROUND(Aliquota_PIS, 2) AS Aliquota_PIS,');
     tItens.SQL.Add('       (Valor_PIS * Quantidade) AS Valor_PIS,');
     tItens.SQL.Add('       CASE WHEN Valor_PIS > 0 AND Aliquota_PIS > 0 THEN CAST((Valor_PIS * Quantidade) / (Aliquota_PIS/100) AS DECIMAL(18,2)) ELSE 0 END AS Valor_BC,');
     tItens.SQL.Add('       (ROUND(Valor_PIS, 2) * Quantidade) AS Valor_Credito,');
     tItens.SQL.Add('       ROUND(Valor_Total, 2) AS Valor_ReceitaBruta,');
     tItens.SQL.Add('       0 AS Saldo_Anterior,');
     tItens.SQL.Add('       (Valor_Total * (Aliquota_PIS/100))-(Valor_Total * (Aliquota_PIS/100)) AS Outras_Deducoes');
     tItens.SQL.Add('INTO   #Temp');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE  (Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1)');
     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT ''01'' AS Codigo,');
     tItens.SQL.Add('       ROUND(Aliquota_PIS, 2) AS Aliquota_PIS,');
     tItens.SQL.Add('       (Valor_Servico * (Aliquota_PIS/100)) AS Valor_PIS,');
     tItens.SQL.Add('       CAST(((Valor_Servico * (Aliquota_PIS/100)) / (Aliquota_PIS/100)) AS DECIMAL(18,2)) AS Valor_BC,');
     tItens.SQL.Add('       ROUND((Valor_Servico * (Aliquota_PIS/100)), 2) AS Valor_Credito,');
     tItens.SQL.Add('       ROUND(Valor_Servico, 2) AS Valor_ReceitaBruta,');
     tItens.SQL.Add('       0 AS Saldo_Anterior,');
     tItens.SQL.Add('       (Valor_Servico * (Aliquota_PIS/100))-(Valor_Servico * (Aliquota_PIS/100)) AS Outras_Deducoes');
     tItens.SQL.Add('FROM   NotasServico');
     tItens.SQL.Add('WHERE  (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1 )');

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasItens'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'        , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasServico'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'      , mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO   #Temp' , '' , mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tItens.SQL.Add('DELETE FROM #Temp WHERE Valor_PIS = 0');
     tItens.SQL.Add('SELECT Codigo,');
     tItens.SQL.Add('       Aliquota_PIS,');
     tItens.SQL.Add('       SUM(Valor_PIS) AS Valor_PIS,');
     tItens.SQL.Add('       SUM(Valor_BC) AS Valor_BC,');
     tItens.SQL.Add('       SUM(Valor_Credito) AS Valor_Credito,');
     tItens.SQL.Add('       SUM(Valor_ReceitaBruta) AS Valor_ReceitaBruta,');
     tItens.SQL.Add('       SUM(Saldo_Anterior) AS Saldo_Anterior,');
     tItens.SQL.Add('       SUM(Outras_Deducoes) AS Outras_Deducoes');
     tItens.SQL.Add('FROM #Temp');
     tItens.SQL.Add('GROUP BY Codigo, Aliquota_PIS');
     tItens.SQL.Add('ORDER BY Codigo');
     tItens.ParamByName('pMes').AsInteger       := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger       := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM210.SQL');
     titens.Open;

     Progresso4('Registro: M210...', tItens.RecordCount);

     While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
           Inc(mLinha);
           mValor := tItens.FieldByName('Valor_PIS').AsCurrency;
           mRegistro := '|M210'+                                                                                // 01 - REG.
                        '|'+ tItens.FieldByName('Codigo').AsString +                                            // 02 - Código da contribuição social apurada no período.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_ReceitaBruta').AsCurrency) +        // 03 - Valor da Receita Bruta.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_BC').AsCurrency) +                  // 04 - Valor da Base de Cálculo da Contribuição.
                        '|'+ FormatFloat('#0.0000', tItens.FieldByName('Aliquota_PIS').AsFloat) +               // 05 - Alíquota do PIS/PASEP (em percentual).
                        '|'+                                                                                    // 06 - Quantidade – Base de cálculo PIS.
                        '|'+                                                                                    // 07 - Alíquota do PIS (em reais).
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_PIS').AsCurrency)+                  // 08 - Valor total da contribuição social apurada.
                        '|0,00'+                                                                                // 09 - Valor total dos ajustes de acréscimo.
                        '|0,00'+                                                                                // 10 - Valor total dos ajustes de redução.
                        '|0,00'+                                                                                // 11 - Valor da contribuição a diferir no período.
                        '|0,00'+                                                                                // 12 - Valor da contribuição diferida em períodos anteriores.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_PIS').AsCurrency)+                  // 13 - Valor Total da Contribuição do Período (08+09–10–11+12).
                        '|0.00'+                                                                                // 14 - Valor da contribuição a diferir no período.
                        '|0.00'+                                                                                // 15 - Valor da contribuição diferida em períodos.
                        '|'+FormatFloat('#0.00', mValor)+                                                       // 16 - Valor Total da Contribuição do Período (11 + 12 –13 – 14+15).
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM210);
           
           tItens.Next;

           Progresso4('Registro: M210...', 0);
     End;
end;

{* REGISTRO M400: RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – PIS/PASEP *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM400;
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT CSTPIS,');
     tItens.SQL.Add('       Valor_PIS AS Total_PIS');
     tItens.SQL.Add('INTO   #Temp');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE  (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (CSTPIS IN(''04'', ''05'', ''06'', ''07'', ''08'', ''09'') ) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1)');
     tItens.SQL.Add('UNION ALL');

     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tItens.SQL.Add('SELECT (SELECT CST_PIS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTPIS,');
        tItens.SQL.Add('      Valor_Total AS Total_PIS');
        tItens.SQL.Add('FROM  PagarReceber');
        tItens.SQL.Add('WHERE (YEAR(Data_Vencimento) = :pAno AND MONTH(Data_Vencimento) = :pMes) AND ((SELECT CST_PIS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) IN(''04'', ''05'', ''06'', ''07'', ''08'', ''09'') )');
     end else begin
        tItens.SQL.Add('SELECT (SELECT CST_PIS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTPIS,');
        tItens.SQL.Add('      Valor_Total AS Total_PIS');
        tItens.SQL.Add('FROM  PagarReceber');
        tItens.SQL.Add('WHERE (YEAR(Data_Vencimento) = :pAno AND MONTH(Data_Vencimento) = :pMes) AND ((SELECT CST_PIS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) IN(''04'', ''05'', ''06'', ''07'', ''08'', ''09'') )');
     End;

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasItens'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'  , mSQLMatriz);
           mSQLFilial := RemoveCaracter('PagarReceber', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber', mSQLFilial);

           If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              mSQLFilial := RemoveCaracter('ClassificacaoFinanceira', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLFilial);
           End;

           mSQLFilial := RemoveCaracter('INTO   #Temp', '', mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;
     tItens.SQL.Add('SELECT CSTPIS, SUM(Total_PIS) AS Total_PIS');
     tItens.SQL.Add('FROM #Temp');
     tItens.SQL.Add('GROUP BY CSTPIS');
     tItens.SQL.Add('ORDER BY CSTPIS');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM400.SQL');
     titens.Open;

     Progresso4('Registro: M400...', tItens.RecordCount);

     While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
           Inc(mLinha);
           mRegistro := '|M400'+                                                                          // 01 - REG.
                        '|'+ Trim(tItens.FieldByName('CSTPIS').AsString) +                                // 02 - Código da CST do PIS.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Total_PIS').AsCurrency) +           // 03 - Valor total da receita bruta do período.
                        '|'+                                                                              // 04 - Código da conta analítica contábil debitada/creditada.
                        '|'+                                                                              // 05 - Descrição Complementar da Natureza da Receita.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM400);

           RegistroM410(Trim(tItens.FieldByName('CSTPIS').AsString));

           tItens.Next;

           Progresso4('Registro: M400...', 0);
     End;
end;

{* REGISTRO M410: DETALHAMENTO DAS RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – PIS/PASEP }
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM410(CST: String);
begin
     tItens.SQL.Clear;
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tItens.SQL.Add('SELECT (SELECT Natureza_Receita FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Natureza_Receita,');
        tItens.SQL.Add('       (SELECT CST_PIS          FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTPIS,');
     end else begin
        tItens.SQL.Add('SELECT (SELECT Natureza_Receita FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Natureza_Receita,');
        tItens.SQL.Add('       (SELECT CST_PIS          FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTPIS,');
     End;
     tItens.SQL.Add('       Valor_Total,');
     tItens.SQL.Add('       NULL AS Conta,');
     tItens.SQL.Add('       NULL AS Complemento');
     tItens.SQL.Add('INTO #TEMP');
     tItens.SQL.Add('FROM   PagarReceber');
     tItens.SQL.Add('WHERE (MONTH(Data_Vencimento) = :pMes AND YEAR(Data_Vencimento) = :pAno)');
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tItens.SQL.Add('  AND (SELECT CST_PIS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) = :pCST');
     end else begin
        tItens.SQL.Add('  AND (SELECT CST_PIS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) = :pCST');
     End;
     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT '''' AS Natureza_Receita,');
     tItens.SQL.Add('       CSTPIS,');
     tItens.SQL.Add('       Valor_Total,');
     tItens.SQL.Add('       NULL AS Conta,');
     tItens.SQL.Add('       NULL AS Complemento');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE (MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (CSTPIS = :pCST)');

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('PagarReceber', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber', mSQLMatriz);
           If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              mSQLFilial := RemoveCaracter('ClassificacaoFinanceira' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLMatriz);
           End;
           mSQLFilial := RemoveCaracter('NotasItens'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'  , mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO #TEMP', '', mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tItens.SQL.Add('SELECT Natureza_Receita,');
     tItens.SQL.Add('       CSTPIS,');
     tItens.SQL.Add('       SUM(Valor_Total) AS Valor_Total,');
     tItens.SQL.Add('       Conta,');
     tItens.SQL.Add('       Complemento');
     tItens.SQL.Add('FROM #TEMP');
     tItens.SQL.Add('GROUP BY Natureza_Receita, CSTPIS, Conta, Complemento');
     tItens.SQL.Add('DROP TABLE #TEMP');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tItens.ParamByName('pCST').AsString  := CST;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM410.SQL');
     titens.Open;

     Progresso4('Registro: M410...', tItens.RecordCount);

     While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
           Inc(mLinha);
           mRegistro := '|M410'+                                                                          // 01 - REG.
                        '|'+ Trim(tItens.FieldByName('Natureza_Receita').AsString) +                      // 02 - Código da Natureza da Receita.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_Total').AsCurrency) +         // 03 - Valor da receita bruta no período, relativo a natureza da receita.
                        '|'+                                                                              // 04 - Código da conta analítica contábil debitada/creditada.
                        '|'+                                                                              // 05 - Descrição Complementar da Natureza da Receita.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM410);

           tItens.Next;

           Progresso4('Registro: M410...', 0);
     End;
end;

{* REGISTRO M500: CRÉDITO DE COFINS RELATIVO AO PERÍODO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM500;
Var
    mCampo13: String;
    mCampo14: Real;
    mCampo15: Real;
begin
     tApuracao.SQL.Clear;
     tApuracao.SQL.Add('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString);
     tApuracao.SQL.Add('SELECT ''101'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS = :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('INTO #Temp');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS = :pAliquota)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''102'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS <> :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS <> :pAliquota) AND (Aliquota_COFINS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''108'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasItens.Aliquota_COFINS)),0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasItens');
     tApuracao.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_COFINS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');

     // Credito vinculado à receita "não tributada" no mercado interno.
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''201'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS = :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS = :pAliquota)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''202'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS <> :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS <> :pAliquota) AND (Aliquota_COFINS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''208'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1)');
     tApuracao.SQL.Add('                                    AND (SELECT Receita FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasItens.Aliquota_COFINS)),0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasItens');
     tApuracao.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_COFINS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');

     // Credito vinculado à receita "Exportação".
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''301'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS = :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS = :pAliquota)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''302'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END, 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS <> :pAliquota)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS <> :pAliquota) AND (Aliquota_COFINS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');
     tApuracao.SQL.Add('UNION ALL');
     tApuracao.SQL.Add('SELECT ''308'' AS Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(ROUND((Valor_PIS * Quantidade)/(Aliquota_PIS/100), 2)) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM((((Valor_PIS * Quantidade) / (Aliquota_PIS/100)) * (Aliquota_COFINS/100))) AS Credito_COFINS,');
     tApuracao.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao.SQL.Add('                             FROM   NotasItens NI');
     tApuracao.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasItens.Aliquota_COFINS)),0),');
     tApuracao.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money)');
     tApuracao.SQL.Add('FROM   NotasItens');
     tApuracao.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_COFINS > 0)');
     tApuracao.SQL.Add('GROUP BY Aliquota_COFINS');

     // Filiais.
     mSQLMatriz := tApuracao.SQL.Text;
     mSQLFilial := '';

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasItens'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'         , mSQLFilial);
           mSQLFilial := RemoveCaracter('TiposNota'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
           mSQLFilial := RemoveCaracter('NotasTerceirosItens', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens', mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais' , mSQLFilial);
           mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO #Temp', '', mSQLFilial);
           mSQLFilial := RemoveCaracter('USE ' + Dados.Empresas.FieldByName('Banco_Dados').AsString, '', mSQLFilial);

           tApuracao.SQL.Add('UNION ALL');
           tApuracao.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tApuracao.SQL.Add('UPDATE #Temp SET Vinculado_COFINS = CASE WHEN Receita_COFINS <= Credito_COFINS THEN Receita_COFINS ELSE Credito_COFINS END');
     tApuracao.SQL.Add('SELECT Tipo_Credito,');
     tApuracao.SQL.Add('       Aliquota_COFINS,');
     tApuracao.SQL.Add('       SUM(BC_COFINS) AS BC_COFINS,');
     tApuracao.SQL.Add('       SUM(Credito_COFINS) AS Credito_COFINS,');
     tApuracao.SQL.Add('       SUM(Receita_COFINS) AS Receita_COFINS,');
     tApuracao.SQL.Add('       SUM(Vinculado_COFINS) AS Vinculado_COFINS');
     tApuracao.SQL.Add('FROM #Temp');
     tApuracao.SQL.Add('WHERE Vinculado_COFINS > 0');
     tApuracao.SQL.Add('GROUP BY Tipo_Credito, Aliquota_COFINS');
     tApuracao.SQL.Add('ORDER  BY Tipo_Credito');
     tApuracao.SQL.Add('DROP TABLE #Temp');
     tApuracao.ParamByName('pMes').AsInteger    := cMes.ItemIndex + 1;
     tApuracao.ParamByName('pAno').AsInteger    := cAno.AsInteger;

     //Pegando a alíquota base na tabela de majoração de acordo com o regime da empresa.
     Dados.Majoracao.SQL.Clear;
     Dados.Majoracao.SQL.Add('SELECT * FROM Majoracao');
     Dados.Majoracao.SQL.Add('WHERE Descricao       = ''COFINS'' ');
     Dados.Majoracao.SQL.Add('AND   Regime_Apuracao = :pRegime');
     Dados.Majoracao.SQL.Add('AND   Tipo            = ''B'' ');
     Dados.Majoracao.SQL.Add('AND   Data_Inicio    <= :pDataIni');
     Dados.Majoracao.SQL.Add('AND   ISNULL(Data_Final, GETDATE()) >= :pDataFim');
     Dados.Majoracao.ParamByName('pRegime').AsString  := Dados.EmpresasRegime.AsString;
     Dados.Majoracao.ParamByName('pDataIni').AsDate   := StrtoDate(mDataIni);
     Dados.Majoracao.ParamByName('pDataFim').AsDate   := StrtoDate(mDataFim);
     Dados.Majoracao.Open;

     tApuracao.ParamByName('pAliquota').AsFloat := Dados.MajoracaoEntrada.AsFloat;

     //tApuracao.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM100A.SQL');
     tApuracao.Open;

     //--------------------------------------------------------------------------------[ REGISTRO 505 ]------------------------------------------------------------------------------------------
     tApuracao2.SQL.Clear;
     // Credito vinculado à receita "tributada" no mercado interno.
     tApuracao2.SQL.Add('SELECT ''101'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS = :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_COFINS AS CSTCOFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('INTO #Temp');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS = :pAliquota)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''102'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS <> :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_COFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS <> :pAliquota) AND (Aliquota_COFINS > 0)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''108'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasItens.Aliquota_COFINS)),0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CSTCOFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) )) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasItens');
     tApuracao2.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_COFINS > 0)');

     // Credito vinculado à receita "não tributada" no mercado interno.
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''201'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS = :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_COFINS AS CSTCOFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS = :pAliquota)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''202'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS <> :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''COMPRA INTERNA'' OR (ISNULL(NI.Processo, '''') = '''') ) AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_COFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS <> :pAliquota) AND (Aliquota_COFINS > 0)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''208'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS <> 1) AND (NI.Cancelada <> 1)');
     tApuracao2.SQL.Add('                                    AND (SELECT Receita FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''IMPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasItens.Aliquota_COFINS)),0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CSTCOFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) )) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasItens');
     tApuracao2.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_COFINS > 0)');

     // Credito vinculado à receita "Exportação".
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''301'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS = :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_COFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS = :pAliquota)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''302'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1) AND (NI.Aliquota_COFINS <> :pAliquota)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasTerceirosItens.Aliquota_COFINS) ), 0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CST_COFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasTerceirosItens');
     tApuracao2.SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Aliquota_COFINS <> :pAliquota) AND (Aliquota_COFINS > 0)');
     tApuracao2.SQL.Add('UNION ALL');
     tApuracao2.SQL.Add('SELECT ''308'' AS Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       CAST((Valor_PIS * Quantidade)/CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END AS DECIMAL(18,2)) AS BC_COFINS,');
     tApuracao2.SQL.Add('       (((Valor_PIS * Quantidade)   /CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END) * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Credito_COFINS,');
     tApuracao2.SQL.Add('       Receita_COFINS = ISNULL((SELECT SUM(Valor_COFINS * Quantidade)');
     tApuracao2.SQL.Add('                             FROM   NotasItens NI');
     tApuracao2.SQL.Add('                             WHERE  (NI.Saida_Entrada = 1) AND (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes) AND (NI.Apuracao_PISCOFINS = 1) AND (NI.Cancelada <> 1)');
     tApuracao2.SQL.Add('                                    AND ((SELECT Tipo FROM ProcessosDocumentos WHERE(Processo = NI.Processo)) = ''EXPORTAÇÃO'') AND (NI.Aliquota_COFINS = NotasItens.Aliquota_COFINS)),0),');
     tApuracao2.SQL.Add('       Vinculado_COFINS = CAST(0 AS Money),');
     tApuracao2.SQL.Add('       CSTCOFINS,');
     tApuracao2.SQL.Add('       (SELECT Tipo_Credito FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) )) AS Natureza_BC');
     tApuracao2.SQL.Add('FROM   NotasItens');
     tApuracao2.SQL.Add('WHERE  (Saida_Entrada = 0) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1) AND (Aliquota_COFINS > 0)');

     // Filiais.
     mSQLMatriz := tApuracao2.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasItens'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'         , mSQLFilial);
           mSQLFilial := RemoveCaracter('TiposNota'          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
           mSQLFilial := RemoveCaracter('NotasTerceirosItens', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens', mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais' , mSQLFilial);
           mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO #Temp', '', mSQLFilial);

           tApuracao2.SQL.Add('UNION ALL');
           tApuracao2.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tApuracao2.SQL.Add('UPDATE #Temp SET Vinculado_COFINS = CASE WHEN Receita_COFINS <= Credito_COFINS THEN Receita_COFINS ELSE Credito_COFINS END');
     tApuracao2.SQL.Add('SELECT Tipo_Credito,');
     tApuracao2.SQL.Add('       Aliquota_COFINS,');
     tApuracao2.SQL.Add('       Natureza_BC,');
     tApuracao2.SQL.Add('       CSTCOFINS,');
     tApuracao2.SQL.Add('       SUM(BC_COFINS)        AS BC_COFINS,');
     tApuracao2.SQL.Add('       SUM(Credito_COFINS)   AS Credito_COFINS,');
     tApuracao2.SQL.Add('       SUM(Receita_COFINS)   AS Receita_COFINS,');
     tApuracao2.SQL.Add('       SUM(Vinculado_COFINS) AS Vinculado_COFINS');
     tApuracao2.SQL.Add('FROM #Temp');
     tApuracao2.SQL.Add('WHERE Vinculado_COFINS > 0');
     tApuracao2.SQL.Add('GROUP BY Tipo_Credito, Natureza_BC, CSTCOFINS, Aliquota_COFINS');
     tApuracao2.SQL.Add('ORDER  BY Tipo_Credito');
     tApuracao2.ParamByName('pMes').AsInteger    := cMes.ItemIndex + 1;
     tApuracao2.ParamByName('pAno').AsInteger    := cAno.AsInteger;
     tApuracao2.ParamByName('pAliquota').AsFloat := Dados.MajoracaoEntrada.AsFloat;
     //tApuracao2.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM100B.SQL');
     tApuracao2.Open;

     mCreditoCOFINS     := 0;
     mCreditoCOFINSUtil := 0;

     Progresso3('Crédito de COFINS relativo ao Período', tApuracao.RecordCount);

     While (not tApuracao.Eof) and (Funcoes.Cancelado = false) do begin
           If tApuracao.FieldByName('Receita_COFINS').AsCurrency <= tApuracao.FieldByName('Credito_COFINS').AsCurrency  then begin
              mCampo13 := '1';
              mCampo14 := tApuracao.FieldByName('Receita_COFINS').AsCurrency;
           end else begin
              mCampo13 := '0';
              mCampo14 := tApuracao.FieldByName('Credito_COFINS').AsCurrency;
           End;

           mCampo15 := tApuracao.FieldByName('Credito_COFINS').AsCurrency - mCampo14;

           Inc(mLinha);
           mRegistro := '|M500'+                                                                          // 01 - REG.
                        '|'+ Trim(tApuracao.FieldByName('Tipo_Credito').AsString) +                       // 02 - Tipo de operação.
                        '|'+ '0' +                                                                        // 03 - Indicador de Crédito Oriundo de:.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('BC_COFINS').AsCurrency) +        // 04 - Valor da Base de Cálculo do Crédito.
                        '|'+ FormatFloat('#0.0000', tApuracao.FieldByName('Aliquota_COFINS').Value) +     // 05 - Alíquota do COFINS.
                        '|'+                                                                              // 06 - Quantidade – Base de cálculo COFINS.
                        '|'+                                                                              // 07 - Aliquota do COFINS (Reais).
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('Credito_COFINS').AsCurrency) +   // 08 - Valor total do crédito apurado no período.
                        '|0,00'+                                                                          // 09 - Valor total dos ajustes de acréscimo.
                        '|0,00'+                                                                          // 10 - Valor total dos ajustes de redução.
                        '|0,00'+                                                                          // 11 - Valor total do crédito diferido no período.
                        '|'+ FormatFloat('#0.00', tApuracao.FieldByName('Credito_COFINS').AsCurrency) +   // 12 - Valor Total do Crédito Disponível relativo ao Período (08+09–10–11).
                        '|'+ mCampo13 +                                                                   // 13 - Indicador de opção de utilização do crédito disponível no período.
                        '|'+ FormatFloat('#0.00', mCampo14) +                                             // 14 - Valor do Crédito disponível, descontado da contribuição apurada no próprio período.
                        '|'+ FormatFloat('#0.00', mCampo15) +                                             // 15 - Saldo de créditos a utilizar em períodos futuros.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           mCreditoCOFINS     := mCreditoCOFINS + tApuracao.FieldByName('Credito_COFINS').AsCurrency;
           mCreditoCOFINSUtil := RoundTo(mCreditoCOFINSUtil + mCampo14, -6);

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM500);

           If Funcoes.Cancelado = false then RegistroM505(tApuracao.FieldByName('Tipo_Credito').AsString, tApuracao.FieldByName('Aliquota_COFINS').AsFloat);

           tApuracao.Next;

           Progresso3('Registro: M500', 0);
     End;
end;

{* DETALHAMENTO DA BASE DE CALCULO DO CRÉDITO APURADO NO PERÍODO – COFINS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM505(TipoCredito: String; Aliquota: Real);
begin
     Progresso4('Registro: M505', tApuracao2.RecordCount);

     tApuracao2.First;
     While (not tApuracao2.Eof) and (not Funcoes.Cancelado) do begin
           If (tApuracao2.FieldByName('Tipo_Credito').AsString = TipoCredito) and (tApuracao2.FieldByName('Aliquota_COFINS').AsFloat = Aliquota) then begin
              Inc(mLinha);
              mRegistro := '|M505'+                                                                       // 01 - REG.
                           '|' + PoeZero(2, tApuracao2.FieldByName('Natureza_BC').AsInteger) +            // 02 - Código da Base de Cálculo do Crédito apurado no período.
                           '|' + tApuracao2.FieldByName('CSTCOFINS').AsString +                           // 03 - Código da Situação Tributária referente ao crédito de PIS/Pasep.
                           '|' + FormatFloat('#0.00', tApuracao2.FieldByName('BC_COFINS').AsCurrency) +   // 04 - Valor Total da Base de Cálculo escriturada nos documentos e operações.
                           '|' +                                                                          // 05 - Parcela do Valor Total da Base de Cálculo informada no Campo 04.
                           '|' + FormatFloat('#0.00', tApuracao2.FieldByName('BC_COFINS').AsCurrency) +   // 06 - Valor Total da Base de Cálculo do Crédito, vinculada a receitas com incidência não-cumulativa (Campo 04–Campo 05).
                           '|' + FormatFloat('#0.00', tApuracao2.FieldByName('BC_COFINS').AsCurrency) +   // 07 - Valor da Base de Cálculo do Crédito, vinculada ao tipo de Crédito escriturado em M100.
                           '|' +                                                                          // 08 - Quantidade Total da Base de Cálculo do Crédito apurado  em Unidade de Medida.
                           '|' +                                                                          // 09 - Parcela da base de cálculo do crédito em quantidade (campo 08).
                           '|' +                                                                          // 10 - Descrição do crédito.
                           '|';
              Say( mLinha, 000, Arquivo, mRegistro );
              
              Inc(mQtdeBlocoM);
              Inc(mQtdeRegM505);
           End;

           tApuracao2.Next;

           Progresso4('Registro: M505', 0);
     End;
end;

{* REGISTRO M600: CONSOLIDAÇÃO DA CONTRIBUIÇÃO PARA A SEGURIDADE SOCIAL - COFINS DO PERÍODO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM600;
Var
   mValorDevido : Real;
   mValorContrib: Real;
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT CAST(ISNULL((SELECT SUM(((Valor_PIS * Quantidade)/ CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END)* CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) FROM NotasItens WHERE(Saida_Entrada = 1)');
     tItens.SQL.Add('       AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)  AND (Cancelada <> 1)');
     tItens.SQL.Add('       AND (CSTCOFINS <= ''05'' OR CSTCOFINS = ''49'')), 0) +');
     tItens.SQL.Add('       ISNULL((SELECT SUM(Valor_Servico * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) FROM NotasServico WHERE(YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1)');
     tItens.SQL.Add('       AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1)');
     tItens.SQL.Add('       AND ((SELECT CSTCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) <= ''05'' OR (SELECT CSTCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = ''05'')');
     tItens.SQL.Add('       ), 0) AS DECIMAL(18,2)) AS Valor_COFINS,');
     tItens.SQL.Add('       ISNULL((SELECT SUM(((Valor_PIS * Quantidade)/ CASE WHEN Aliquota_PIS > 0 THEN (Aliquota_PIS/100) ELSE 1 END)*CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) FROM NotasItens WHERE(Saida_Entrada = 0)');
     tItens.SQL.Add('       AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1)  AND (Cancelada <> 1)');
     tItens.SQL.Add('       AND (CSTPIS <= ''05'' OR CSTPIS = ''49'')), 0) AS Valor_Credito,');
     tItens.SQL.Add('       ISNULL((SELECT SUM((Valor_COFINS * Quantidade)-(Valor_Total * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) ) FROM NotasItens WHERE(Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes)');
     tItens.SQL.Add('       AND (Apuracao_PISCOFINS = 1)');
     tItens.SQL.Add('       AND (Cancelada <> 1) AND (CSTCOFINS <= ''05'' OR CSTCOFINS = ''49'') AND (ISNULL(Aliquota_COFINS, 0) > 0)), 0) AS Outras_Deducoes');
     tItens.SQL.Add('INTO  #TEMP');

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasItens'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'        , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasServico'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'      , mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO  #TEMP'       , '', mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tItens.SQL.Add('SELECT SUM(Valor_COFINS) AS Valor_COFINS, SUM(Valor_Credito) AS Valor_Credito, SUM(Outras_Deducoes) AS Outras_Deducoes FROM #Temp');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM600.SQL');
     titens.Open;

     If (mCreditoCOFINS > tItens.FieldByName('Valor_COFINS').AsCurrency) then mCreditoCOFINS := tItens.FieldByName('Valor_COFINS').AsCurrency;
     mValorContrib := tItens.FieldByName('Valor_COFINS').AsCurrency - mCreditoCOFINSUtil;
     If mValorContrib < 0 then mValorContrib := mValorContrib * -1;
     mValorDevido  := mValorContrib;

     Progresso3('Consolidação da Contribuição (COFINS)', tItens.RecordCount);

     Inc(mLinha);
     mRegistro := '|M600'+                                                                          // 01 - REG.
                  '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_COFINS').Value) +             // 02 - Valor Total da Contribuição Não Cumulativa do Período.
                  '|'+ FormatFloat('#0.00', mCreditoCOFINSUtil) +                                   // 03 - Valor do Crédito Descontado, Apurado no Próprio Período da Escrituração.
                  '|0,00'+                                                                          // 04 - Valor do Crédito Descontado, Apurado em Período de Apuração Anterior.
                  '|'+ FormatFloat('#0.00', mValorContrib) +                                        // 05 - Valor Total da Contribuição Não Cumulativa Devida (02–03-04).
                  '|0,00'+                                                                          // 06 - Valor Retido na Fonte Deduzido no Período.
                  '|0,00'+                                                                          // 07 - Outras Deduções no Período.
                  '|'+ FormatFloat('#0.00', mValorDevido) +                                         // 08 - Valor da Contribuição Não Cumulativa a Recolher/Pagar (05–06-07).
                  '|0,00'+                                                                          // 09 - Valor Total da Contribuição Cumulativa do Período.
                  '|0,00'+                                                                          // 10 - Valor Retido na Fonte Deduzido no Período.
                  '|0,00'+                                                                          // 11 - Outras Deduções no Período.
                  '|0,00'+                                                                          // 12 - Valor da Contribuição Cumulativa a Recolher/Pagar (09-10–11).
                  '|'+FormatFloat('#0.00', mValorDevido ) +                                         // 13 - Valor Total da Contribuição a Recolher/Pagar no Período (08+12).
                  '|';
     Say( mLinha, 000, Arquivo, mRegistro );
     
     Inc(mQtdeBlocoM);
     Inc(mQtdeRegM600);

     If mValorDevido > 0 then If Funcoes.Cancelado = false then RegistroM605;
     If tItens.RecordCount > 0 then If Funcoes.Cancelado = false then RegistroM610;

     Progresso3('Registro: M600...', 0);
end;

{* REGISTRO M605: CONTRIBUIÇÃO PARA O COFINS A RECOLHER – DETALHAMENTO POR CÓDIGO DE RECEITA  *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM605;
begin
     Progresso4('Registro: M605...', tItens.RecordCount);

     Inc(mLinha);
     mRegistro := '|M605'+        // 01 - REG.
                  '|08' +         // 02 - Número do campo do registro “M200” (Campo 08 (contribuição não cumulativa) ou Campo 12.
                  '|' +           // 03 - Código da receita referente à contribuição a recolher, detalhada neste registro.
                  '|0,00'+        // 04 - Valor do Débito correspondente ao código do Campo 03, conforme informação na DCTF.
                  '|';
     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeBlocoM);
     Inc(mQtdeRegM605);
end;

{* REGISTRO M610: DETALHAMENTO DA CONTRIBUIÇÃO PARA A SEGURIDADE SOCIAL - COFINS DO PERÍODO *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM610;
begin
     tItens.SQL.Clear;
     //tItens.SQL.Add('SELECT CSTCOFINS AS Codigo,');
     tItens.SQL.Add('SELECT ''01'' AS Codigo,');
     tItens.SQL.Add('       ROUND(Aliquota_COFINS, 2) AS Aliquota_COFINS,');
     tItens.SQL.Add('       (Valor_COFINS * Quantidade) AS Valor_COFINS,');
     tItens.SQL.Add('       CASE WHEN Valor_PIS > 0 THEN CAST((Valor_PIS * Quantidade) / CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END AS DECIMAL(18,2)) ELSE 0 END AS Valor_BC,');
     tItens.SQL.Add('       (ROUND(Valor_COFINS, 2) * Quantidade) AS Valor_Credito,');
     tItens.SQL.Add('       ROUND(Valor_Total, 2) AS Valor_ReceitaBruta,');
     tItens.SQL.Add('       0 AS Saldo_Anterior,');
     tItens.SQL.Add('       (Valor_Total * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END)-(Valor_Total * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Outras_Deducoes');
     tItens.SQL.Add('INTO   #Temp');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE  (Saida_Entrada = 1) AND (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1)');
     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT ''01'' AS Codigo,');
     tItens.SQL.Add('       ROUND(Aliquota_COFINS, 2) AS Aliquota_COFINS,');
     tItens.SQL.Add('       (Valor_Servico * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS Valor_COFINS,');
     tItens.SQL.Add('       CAST(((Valor_Servico * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) / CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END) AS DECIMAL(18,2)) AS Valor_BC,');
     tItens.SQL.Add('       ROUND((Valor_Servico * CASE WHEN Aliquota_COFINS > 0 THEN (Aliquota_COFINS/100) ELSE 1 END), 2) AS Valor_Credito,');
     tItens.SQL.Add('       ROUND(Valor_Servico, 2) AS Valor_ReceitaBruta,');
     tItens.SQL.Add('       0 AS Saldo_Anterior,');
     tItens.SQL.Add('       (Valor_Servico * (Aliquota_COFINS/100))-(Valor_Servico * (Aliquota_COFINS/100)) AS Outras_Deducoes');
     tItens.SQL.Add('FROM   NotasServico');
     tItens.SQL.Add('WHERE  (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND ((SELECT Apuracao_PISCOFINS FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1 )');

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasItens'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'        , mSQLMatriz);
           mSQLFilial := RemoveCaracter('NotasServico'      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'      , mSQLFilial);
           mSQLFilial := RemoveCaracter('ReferenciasFiscais', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais', mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO   #Temp' , '' , mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tItens.SQL.Add('DELETE FROM #Temp WHERE Valor_COFINS = 0');
     tItens.SQL.Add('SELECT Codigo,');
     tItens.SQL.Add('       Aliquota_COFINS,');
     tItens.SQL.Add('       SUM(Valor_COFINS) AS Valor_COFINS,');
     tItens.SQL.Add('       SUM(Valor_BC) AS Valor_BC,');
     tItens.SQL.Add('       SUM(Valor_Credito) AS Valor_Credito,');
     tItens.SQL.Add('       SUM(Valor_ReceitaBruta) AS Valor_ReceitaBruta,');
     tItens.SQL.Add('       SUM(Saldo_Anterior) AS Saldo_Anterior,');
     tItens.SQL.Add('       SUM(Outras_Deducoes) AS Outras_Deducoes');
     tItens.SQL.Add('FROM #Temp');
     tItens.SQL.Add('GROUP BY Codigo, Aliquota_COFINS');
     tItens.SQL.Add('ORDER BY Codigo');
     tItens.ParamByName('pMes').AsInteger       := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger       := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM610.SQL');
     titens.Open;

     Progresso4('Registro: M610...', tItens.RecordCount);

     While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
           Inc(mLinha);
           mRegistro := '|M610'+                                                                          // 01 - REG.
                        '|'+ tItens.FieldByName('Codigo').AsString +                                      // 02 - Código da contribuição social apurada no período.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_ReceitaBruta').AsCurrency) +  // 03 - Valor da Receita Bruta.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_BC').Value) +                 // 04 - Valor da Base de Cálculo da Contribuição.
                        '|'+ FormatFloat('#0.0000', tItens.FieldByName('Aliquota_COFINS').AsFloat) +      // 05 - Alíquota da COFINS (em percentual).
                        '|'+                                                                              // 06 - Quantidade – Base de cálculo PIS.
                        '|'+                                                                              // 07 - Alíquota do PIS (em reais).
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_COFINS').AsCurrency) +        // 08 - Valor total da contribuição social apurada.
                        '|0,00'+                                                                          // 09 - Valor total dos ajustes de acréscimo.
                        '|'+ FormatFloat('#0.00', 0)+                                                     // 10 - Valor total dos ajustes de redução.
                        '|0,00'+                                                                          // 11 - Valor da contribuição a diferir no período.
                        '|0,00'+                                                                          // 12 - Valor da contribuição diferida em períodos anteriores.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_COFINS').AsCurrency) +        // 13 - Valor Total da Contribuição do Período (08+09–10–11+12).
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM610);
           
           tItens.Next;
           
           Progresso4('Registro: M610...', 0);
     End;
end;

{* RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – COFINS *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM800;
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT CSTCOFINS,');
     tItens.SQL.Add('       Valor_COFINS AS Total_COFINS');
     tItens.SQL.Add('INTO   #TEMP');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE  (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (CSTCOFINS IN(''04'', ''05'', ''06'', ''07'', ''08'', ''09'') ) AND (Apuracao_PISCOFINS = 1) AND (Cancelada <> 1)');
     tItens.SQL.Add('UNION ALL');

     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tItens.SQL.Add('SELECT (SELECT CST_COFINS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTCOFINS,');
        tItens.SQL.Add('      Valor_Total AS Total_COFINS');
        tItens.SQL.Add('FROM  PagarReceber');
        tItens.SQL.Add('WHERE (YEAR(Data_Vencimento) = :pAno AND MONTH(Data_Vencimento) = :pMes) AND ((SELECT CST_COFINS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) IN(''04'', ''05'', ''06'', ''07'', ''08'', ''09'') )');
     end else begin
        tItens.SQL.Add('SELECT (SELECT CST_COFINS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTCOFINS,');
        tItens.SQL.Add('      Valor_Total AS Total_COFINS');
        tItens.SQL.Add('FROM  PagarReceber');
        tItens.SQL.Add('WHERE (YEAR(Data_Vencimento) = :pAno AND MONTH(Data_Vencimento) = :pMes) AND ((SELECT CST_COFINS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) IN(''04'', ''05'', ''06'', ''07'', ''08'', ''09'') )');
     End;

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('NotasItens'             , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'             , mSQLMatriz);
           mSQLFilial := RemoveCaracter('PagarReceber'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber'           , mSQLFilial);

           If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              mSQLFilial := RemoveCaracter('ClassificacaoFinanceira', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLFilial);
           End;

           mSQLFilial := RemoveCaracter('INTO   #TEMP', '', mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;
     tItens.SQL.Add('SELECT CSTCOFINS, SUM(Total_COFINS) AS Total_COFINS');
     tItens.SQL.Add('FROM #TEMP');
     tItens.SQL.Add('GROUP BY CSTCOFINS');
     tItens.SQL.Add('ORDER BY CSTCOFINS');
     tItens.SQL.Add('DROP TABLE #TEMP');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM800.SQL');
     titens.Open;

     Progresso4('Registro: M800...', tItens.RecordCount);

     While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
           Inc(mLinha);
           mRegistro := '|M800'+                                                                          // 01 - REG.
                        '|'+ Trim(tItens.FieldByName('CSTCOFINS').AsString) +                             // 02 - Código da CST da COFINS
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Total_COFINS').AsCurrency) +        // 03 - Valor total da receita bruta do período.
                        '|'+                                                                              // 04 - Código da conta analítica contábil debitada/creditada.
                        '|'+                                                                              // 05 - Descrição Complementar da Natureza da Receita.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM800);

           RegistroM810(Trim(tItens.FieldByName('CSTCOFINS').AsString));

           tItens.Next;

           Progresso4('Registro: M800...', 0);
     End;
end;

{* REGISTRO M810: DETALHAMENTO DAS RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – COFINS }
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM810(CST: String);
begin
     tItens.SQL.Clear;
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tItens.SQL.Add('SELECT (SELECT Natureza_Receita FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Natureza_Receita,');
        tItens.SQL.Add('       (SELECT CST_COFINS       FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTCOFINS,');
     end else begin
        tItens.SQL.Add('SELECT (SELECT Natureza_Receita FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Natureza_Receita,');
        tItens.SQL.Add('       (SELECT CST_COFINS       FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS CSTCOFINS,');
     End;
     tItens.SQL.Add('       Valor_Total,');
     tItens.SQL.Add('       NULL AS Conta,');
     tItens.SQL.Add('       NULL AS Complemento');
     tItens.SQL.Add('INTO #TEMP');
     tItens.SQL.Add('FROM   PagarReceber');
     tItens.SQL.Add('WHERE (MONTH(Data_Vencimento) = :pMes AND YEAR(Data_Vencimento) = :pAno)');

     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tItens.SQL.Add('  AND (SELECT CST_COFINS FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) = :pCST');
     end else begin
        tItens.SQL.Add('  AND (SELECT CST_COFINS FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) = :pCST');
     End;
     
     tItens.SQL.Add('UNION ALL');
     tItens.SQL.Add('SELECT '''' AS Natureza_Receita,');
     tItens.SQL.Add('       CSTCOFINS,');
     tItens.SQL.Add('       Valor_Total,');
     tItens.SQL.Add('       NULL AS Conta,');
     tItens.SQL.Add('       NULL AS Complemento');
     tItens.SQL.Add('FROM   NotasItens');
     tItens.SQL.Add('WHERE (MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (CSTCOFINS = :pCST)');

     // Filiais.
     mSQLMatriz := tItens.SQL.Text;

     tEmpresas.First;
     While not tEmpresas.Eof do begin
           mSQLFilial := RemoveCaracter('PagarReceber', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber', mSQLMatriz);
           If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              mSQLFilial := RemoveCaracter('ClassificacaoFinanceira' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLMatriz);
           End;
           mSQLFilial := RemoveCaracter('NotasItens'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'  , mSQLFilial);
           mSQLFilial := RemoveCaracter('INTO #TEMP', '', mSQLFilial);
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add(mSQLFilial);
           tEmpresas.Next;
     End;

     tItens.SQL.Add('SELECT Natureza_Receita,');
     tItens.SQL.Add('       CSTCOFINS,');
     tItens.SQL.Add('       SUM(Valor_Total) AS Valor_Total,');
     tItens.SQL.Add('       Conta,');
     tItens.SQL.Add('       Complemento');
     tItens.SQL.Add('FROM #TEMP');
     tItens.SQL.Add('GROUP BY Natureza_Receita, CSTCOFINS, Conta, Complemento');
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tItens.ParamByName('pCST').AsString  := CST;
     //tItens.SQL.SaveToFile('c:\temp\SPED_PISCOFINS_REGM810.SQL');
     titens.Open;

     Progresso4('Registro: M810...', tItens.RecordCount);

     While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
           Inc(mLinha);
           mRegistro := '|M810'+                                                                          // 01 - REG.
                        '|'+ Trim(tItens.FieldByName('Natureza_Receita').AsString) +                      // 02 - Código da Natureza da Receita.
                        '|'+ FormatFloat('#0.00', tItens.FieldByName('Valor_Total').AsCurrency) +         // 03 - Valor da receita bruta no período, relativo a natureza da receita.
                        '|'+                                                                              // 04 - Código da conta analítica contábil debitada/creditada.
                        '|'+                                                                              // 05 - Descrição Complementar da Natureza da Receita.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeBlocoM);
           Inc(mQtdeRegM810);

           tItens.Next;

           Progresso4('Registro: M810...', 0);
     End;
end;

{* REGISTRO M990: ENCERRAMENTO DO BLOCO M *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroM990;
begin
      Progresso1('Encerramento do BLOCO M', 1);

      Inc(mLinha);
      Inc(mQtdeBlocoM);
      Inc(mQtdeRegM990);
      mRegistro := '|M990' +                       // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoM)+     // 02 - Quantidade de registro do bloco D.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro);

      Progresso2('Registro: M990...');
end;

{* REGISTRO P001: ABERTURA DO BLOCO P *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroP001;
begin
      Progresso1('Abertura do BLOCO P', 1);

      Inc(mLinha);
      mRegistro := '|P001' +                       // 01 - REG.
                   '|1'+                           // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeBlocoP);
      Inc(mQtdeRegP001);
      
      Progresso2('Registro: P001');
end;

{* REGISTRO P990: ENCERRAMENTO DO BLOCO P *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.RegistroP990;
begin
      Progresso1('Encerramento do BLOCO P', 1);

      Inc(mLinha);
      Inc(mQtdeBlocoP);
      Inc(mQtdeRegP990);
      mRegistro := '|P990' +                                              // 01 - REG.
                   '|'+ InttoStr(mQtdeBlocoP)+                            // 02 - Quantidade de registro do bloco D.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro);

      Progresso2('Registro: P990...');
end;


{* REGISTRO 1001 - ABERTURA DO BLOCO 1. * }
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro1001;
begin
      Progresso1('Abertura do BLOCO 1', 1);

      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|1001|1|' );                              // 01 - REG.

      Inc(mQtdeReg1001);
      Inc(mQtdeBloco1);

      Progresso2('Registro: 1001...');
end;

{* REGISTRO 1990: ENCERRAMENTO DO BLOCO 1 *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro1990;
begin
      Progresso1('Encerramento do BLOCO 1', 1);

      Inc(mLinha);
      Inc(mQtdeReg1990);
      Inc(mQtdeBloco1);
      
      mRegistro := '|1990' +                                                // 01 - REG.
                   '|'+ InttoStr(mQtdeBloco1)+                              // 02 - Quantidade de registro do bloco D.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro);

      Progresso2('Registro: 1990...');
end;

{* REGISTRO 9001: ABERTURA DO BLOCO 9 *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro9001;
begin
      Progresso1('Abertura do BLOCO 9', 1);

      Inc(mLinha);
      mRegistro := '|9001' +                                                // 01 - REG.
                   '|0' +                                                   // 02 - Indicador de movimento 0-Com Dados / 1-Sem Dados.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro);

      Inc(mQtdeReg9001);
      Inc(mQtdeBloco9);

      Progresso2('Registro: 9001...');
end;

{* REGISTRO 9990: ENCERRAMENTO DO BLOCO 9 *}
procedure TUtilitarios_ExportaSPED_PISCOFINS.Registro9990;
begin
      Progresso1('Encerramento do BLOCO 9', 1);

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
      If mQtdeReg0100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0100|'+Trim(InttoStr(mQtdeReg0100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0110|'+Trim(InttoStr(mQtdeReg0110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0111 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0111|'+Trim(InttoStr(mQtdeReg0111))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0120 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0120|'+Trim(InttoStr(mQtdeReg0120))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0140 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0140|'+Trim(InttoStr(mQtdeReg0140))+'|' );
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

      If mQtdeReg0190 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0190|'+Trim(InttoStr(mQtdeReg0190))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0200|'+Trim(InttoStr(mQtdeReg0200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0205 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0205|'+Trim(InttoStr(mQtdeReg0205))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0206 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0206|'+Trim(InttoStr(mQtdeReg0206))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0208 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0208|'+Trim(InttoStr(mQtdeReg0208))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0400 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0400|'+Trim(InttoStr(mQtdeReg0400))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0450 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0450|'+Trim(InttoStr(mQtdeReg0450))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0500 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0500|'+Trim(InttoStr(mQtdeReg0500))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0600 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0600|'+Trim(InttoStr(mQtdeReg0600))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0900 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0900|'+Trim(InttoStr(mQtdeReg0900))+'|' );
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

      // Registros do Bloco A.
      If mQtdeRegA001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A001|'+Trim(InttoStr(mQtdeRegA001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A010|'+Trim(InttoStr(mQtdeRegA010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A100|'+Trim(InttoStr(mQtdeRegA100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A110|'+Trim(InttoStr(mQtdeRegA110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA111 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A111|'+Trim(InttoStr(mQtdeRegA111))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA120 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A120|'+Trim(InttoStr(mQtdeRegA120))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA170 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A170|'+Trim(InttoStr(mQtdeRegA170))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegA990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|A990|'+Trim(InttoStr(mQtdeRegA990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco C.
      If mQtdeRegC001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C001|'+Trim(InttoStr(mQtdeRegC001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C010|'+Trim(InttoStr(mQtdeRegC010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C100|'+Trim(InttoStr(mQtdeRegC100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C110|'+Trim(InttoStr(mQtdeRegC110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC111 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C111|'+Trim(InttoStr(mQtdeRegC111))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC120 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C120|'+Trim(InttoStr(mQtdeRegC120))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC170 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C170|'+Trim(InttoStr(mQtdeRegC170))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC180 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C180|'+Trim(InttoStr(mQtdeRegC180))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC181 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C181|'+Trim(InttoStr(mQtdeRegC181))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC185 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C185|'+Trim(InttoStr(mQtdeRegC185))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC188 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C188|'+Trim(InttoStr(mQtdeRegC188))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC190 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C190|'+Trim(InttoStr(mQtdeRegC190))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC191 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C191|'+Trim(InttoStr(mQtdeRegC191))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC195 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C195|'+Trim(InttoStr(mQtdeRegC195))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC198 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C198|'+Trim(InttoStr(mQtdeRegC198))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC199 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C199|'+Trim(InttoStr(mQtdeRegC199))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC380 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C380|'+Trim(InttoStr(mQtdeRegC380))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC381 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C381|'+Trim(InttoStr(mQtdeRegC381))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC385 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C385|'+Trim(InttoStr(mQtdeRegC385))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC395 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C395|'+Trim(InttoStr(mQtdeRegC395))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC396 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C396|'+Trim(InttoStr(mQtdeRegC396))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC400 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C400|'+Trim(InttoStr(mQtdeRegC400))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC405 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C405|'+Trim(InttoStr(mQtdeRegC405))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC481 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C481|'+Trim(InttoStr(mQtdeRegC481))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC485 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C485|'+Trim(InttoStr(mQtdeRegC485))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC489 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C489|'+Trim(InttoStr(mQtdeRegC489))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC490 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C490|'+Trim(InttoStr(mQtdeRegC490))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC491 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C491|'+Trim(InttoStr(mQtdeRegC491))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC495 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C495|'+Trim(InttoStr(mQtdeRegC495))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC499 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C499|'+Trim(InttoStr(mQtdeRegC499))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC500 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C500|'+Trim(InttoStr(mQtdeRegC500))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC501 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C501|'+Trim(InttoStr(mQtdeRegC501))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC505 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C505|'+Trim(InttoStr(mQtdeRegC505))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC600 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C600|'+Trim(InttoStr(mQtdeRegC600))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC601 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C601|'+Trim(InttoStr(mQtdeRegC601))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC605 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C605|'+Trim(InttoStr(mQtdeRegC605))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC609 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C609|'+Trim(InttoStr(mQtdeRegC609))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C990|'+Trim(InttoStr(mQtdeRegC990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco D.
      If mQtdeRegD001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D001|'+Trim(InttoStr(mQtdeRegD001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D010|'+Trim(InttoStr(mQtdeRegD010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D100|'+Trim(InttoStr(mQtdeRegD100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD101 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D101|'+Trim(InttoStr(mQtdeRegD101))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD105 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D105|'+Trim(InttoStr(mQtdeRegD105))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD111 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D111|'+Trim(InttoStr(mQtdeRegD111))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D200|'+Trim(InttoStr(mQtdeRegD200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD201 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D201|'+Trim(InttoStr(mQtdeRegD201))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD205 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D205|'+Trim(InttoStr(mQtdeRegD205))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD209 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D209|'+Trim(InttoStr(mQtdeRegD209))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD300 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D300|'+Trim(InttoStr(mQtdeRegD300))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD309 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D309|'+Trim(InttoStr(mQtdeRegD309))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD350 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D350|'+Trim(InttoStr(mQtdeRegD350))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD359 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D359|'+Trim(InttoStr(mQtdeRegD359))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD500 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D500|'+Trim(InttoStr(mQtdeRegD500))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD501 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D501|'+Trim(InttoStr(mQtdeRegD501))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD505 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D505|'+Trim(InttoStr(mQtdeRegD505))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD509 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D509|'+Trim(InttoStr(mQtdeRegD509))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD600 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D600|'+Trim(InttoStr(mQtdeRegD600))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD601 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D601|'+Trim(InttoStr(mQtdeRegD601))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD605 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D605|'+Trim(InttoStr(mQtdeRegD605))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD609 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D609|'+Trim(InttoStr(mQtdeRegD609))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D990|'+Trim(InttoStr(mQtdeRegD990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco F.
      If mQtdeRegF001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F001|'+Trim(InttoStr(mQtdeRegF001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F010|'+Trim(InttoStr(mQtdeRegF010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F100|'+Trim(InttoStr(mQtdeRegF100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF111 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F111|'+Trim(InttoStr(mQtdeRegF111))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF120 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F120|'+Trim(InttoStr(mQtdeRegF120))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF129 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F129|'+Trim(InttoStr(mQtdeRegF129))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF130 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E200|'+Trim(InttoStr(mQtdeRegF130))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF139 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F139|'+Trim(InttoStr(mQtdeRegF139))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF150 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F150|'+Trim(InttoStr(mQtdeRegF150))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F200|'+Trim(InttoStr(mQtdeRegF200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF205 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F205|'+Trim(InttoStr(mQtdeRegF205))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF210 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F210|'+Trim(InttoStr(mQtdeRegF210))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF211 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F211|'+Trim(InttoStr(mQtdeRegF211))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF600 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F600|'+Trim(InttoStr(mQtdeRegF600))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF700 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F700|'+Trim(InttoStr(mQtdeRegF700))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF800 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F800|'+Trim(InttoStr(mQtdeRegF800))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegF990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|F990|'+Trim(InttoStr(mQtdeRegF990))+'|' );
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
      If mQtdeRegI990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|I990|'+Trim(InttoStr(mQtdeRegI990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco M.
      If mQtdeRegM001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M001|'+Trim(InttoStr(mQtdeRegM001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M100|'+Trim(InttoStr(mQtdeRegM100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM105 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M105|'+Trim(InttoStr(mQtdeRegM105))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M110|'+Trim(InttoStr(mQtdeRegM110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M200|'+Trim(InttoStr(mQtdeRegM200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM205 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M205|'+Trim(InttoStr(mQtdeRegM200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM210 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M210|'+Trim(InttoStr(mQtdeRegM210))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM211 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M211|'+Trim(InttoStr(mQtdeRegM211))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM220 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M220|'+Trim(InttoStr(mQtdeRegM220))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM230 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M230|'+Trim(InttoStr(mQtdeRegM230))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM300 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M300|'+Trim(InttoStr(mQtdeRegM300))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM350 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M350|'+Trim(InttoStr(mQtdeRegM350))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM400 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M400|'+Trim(InttoStr(mQtdeRegM400))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM410 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M410|'+Trim(InttoStr(mQtdeRegM410))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM500 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M500|'+Trim(InttoStr(mQtdeRegM500))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM505 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M505|'+Trim(InttoStr(mQtdeRegM505))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM510 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M510|'+Trim(InttoStr(mQtdeRegM510))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM600 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M600|'+Trim(InttoStr(mQtdeRegM600))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM605 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M605|'+Trim(InttoStr(mQtdeRegM605))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM610 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M610|'+Trim(InttoStr(mQtdeRegM610))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM611 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M611|'+Trim(InttoStr(mQtdeRegM611))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM620 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M620|'+Trim(InttoStr(mQtdeRegM620))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM630 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M630|'+Trim(InttoStr(mQtdeRegM630))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM700 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M700|'+Trim(InttoStr(mQtdeRegM700))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM800 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M800|'+Trim(InttoStr(mQtdeRegM800))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM810 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M810|'+Trim(InttoStr(mQtdeRegM810))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegM990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|M990|'+Trim(InttoStr(mQtdeRegM990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco M.
      If mQtdeRegP001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|P001|'+Trim(InttoStr(mQtdeRegP001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegP990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|P990|'+Trim(InttoStr(mQtdeRegP990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco 1.
      If mQtdeReg1001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1001|'+Trim(InttoStr(mQtdeReg1001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1010|'+Trim(InttoStr(mQtdeReg1010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1020 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1020|'+Trim(InttoStr(mQtdeReg1020))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1100|'+Trim(InttoStr(mQtdeReg1100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1101 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1101|'+Trim(InttoStr(mQtdeReg1101))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1102 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1102|'+Trim(InttoStr(mQtdeReg1102))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1200|'+Trim(InttoStr(mQtdeReg1200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1210 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1210|'+Trim(InttoStr(mQtdeReg1210))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1220 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1220|'+Trim(InttoStr(mQtdeReg1220))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1300 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1300|'+Trim(InttoStr(mQtdeReg1300))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1500 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1500|'+Trim(InttoStr(mQtdeReg1500))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1501 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1501|'+Trim(InttoStr(mQtdeReg1501))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1502 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1502|'+Trim(InttoStr(mQtdeReg1502))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1600 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1600|'+Trim(InttoStr(mQtdeReg1600))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1610 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1610|'+Trim(InttoStr(mQtdeReg1610))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1620 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1620|'+Trim(InttoStr(mQtdeReg1620))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1700 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1700|'+Trim(InttoStr(mQtdeReg1700))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1800 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1800|'+Trim(InttoStr(mQtdeReg1800))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1809 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1809|'+Trim(InttoStr(mQtdeReg1809))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1990|'+Trim(InttoStr(mQtdeReg1990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      Inc(mQtdeReg9900);
      Inc(mQtdeBloco9);
      Say( mLinha, 000, Arquivo, '|9900|9001|1|' );
      Inc(mLinha);

      Inc(mQtdeReg9900, 3);
      Inc(mQtdeBloco9, 2);
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

      Say( mLinha, 000, Arquivo, '|9999|'+Trim(InttoStr(mQtdeBloco0+mQtdeBlocoA+mQtdeBlocoC+mQtdeBlocoD+mQtdeBlocoF+mQtdeBlocoI+mQtdeBlocoM+mQtdeBlocoP+mQtdeBloco1+mQtdeBloco9))+'|'+#13+#10 );
      Inc(mLinha);

      Progresso2('Registro: 9999...');
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.cIncidenciaClick(Sender: TObject);
begin
      cMetodo.Enabled := cIncidencia.ItemIndex <> 1;
      If cIncidencia.ItemIndex = 1 then cMetodo.ItemIndex := -1;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.bSintegraClick(Sender: TObject);
Var
    mValidador : String;
begin
      mValidador := Dados.ConfiguracaoPasta_SPEDFiscal.Value;
      ShellExecute(Handle, 'Open', PChar(mValidador), '', '', SW_ShowNormal);
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.ZeraVariaveis;
begin
    // Bloco 0.
    mQtdeReg0000 := 0;
    mQtdeReg0001 := 0;
    mQtdeReg0100 := 0;  
    mQtdeReg0110 := 0;
    mQtdeReg0111 := 0;
    mQtdeReg0140 := 0;
    mQtdeReg0150 := 0;
    mQtdeReg0190 := 0;
    mQtdeReg0200 := 0;
    mQtdeReg0205 := 0;
    mQtdeReg0206 := 0;
    mQtdeReg0208 := 0;
    mQtdeReg0400 := 0;
    mQtdeReg0450 := 0;
    mQtdeReg0500 := 0;
    mQtdeReg0600 := 0;
    mQtdeReg0900 := 0;
    mQtdeReg0990 := 0;
    mQtdeBloco0  := 0;

    // Bloco A.
    mQtdeRegA001 := 0;
    mQtdeRegA010 := 0;
    mQtdeRegA100 := 0;
    mQtdeRegA110 := 0;
    mQtdeRegA111 := 0;
    mQtdeRegA120 := 0;
    mQtdeRegA170 := 0;
    mQtdeRegA990 := 0;
    mQtdeBlocoA  := 0;

    // Bloco C.
    mQtdeRegC001 := 0;
    mQtdeRegC010 := 0;
    mQtdeRegC100 := 0;
    mQtdeRegC110 := 0;
    mQtdeRegC111 := 0;
    mQtdeRegC120 := 0;
    mQtdeRegC170 := 0;
    mQtdeRegC180 := 0;
    mQtdeRegC181 := 0;
    mQtdeRegC185 := 0;
    mQtdeRegC188 := 0;
    mQtdeRegC190 := 0;
    mQtdeRegC191 := 0;
    mQtdeRegC195 := 0;
    mQtdeRegC198 := 0;
    mQtdeRegC199 := 0;
    mQtdeRegC380 := 0;
    mQtdeRegC381 := 0;
    mQtdeRegC385 := 0;
    mQtdeRegC395 := 0;
    mQtdeRegC396 := 0;
    mQtdeRegC400 := 0;
    mQtdeRegC405 := 0;
    mQtdeRegC481 := 0;
    mQtdeRegC485 := 0;
    mQtdeRegC489 := 0;
    mQtdeRegC490 := 0;
    mQtdeRegC491 := 0;
    mQtdeRegC495 := 0;
    mQtdeRegC499 := 0;
    mQtdeRegC500 := 0;
    mQtdeRegC501 := 0;
    mQtdeRegC505 := 0;
    mQtdeRegC600 := 0;
    mQtdeRegC601 := 0;
    mQtdeRegC605 := 0;
    mQtdeRegC609 := 0;
    mQtdeRegC990 := 0;
    mQtdeBlocoC  := 0;

    // Bloco D.
    mQtdeRegD001 := 0;
    mQtdeRegD010 := 0;
    mQtdeRegD100 := 0;
    mQtdeRegD101 := 0;
    mQtdeRegD105 := 0;
    mQtdeRegD111 := 0;
    mQtdeRegD200 := 0;
    mQtdeRegD201 := 0;
    mQtdeRegD205 := 0;
    mQtdeRegD209 := 0;
    mQtdeRegD300 := 0;
    mQtdeRegD309 := 0;
    mQtdeRegD350 := 0;
    mQtdeRegD359 := 0;
    mQtdeRegD500 := 0;
    mQtdeRegD501 := 0;
    mQtdeRegD505 := 0;
    mQtdeRegD509 := 0;
    mQtdeRegD600 := 0;
    mQtdeRegD601 := 0;
    mQtdeRegD605 := 0;
    mQtdeRegD609 := 0;
    mQtdeRegD990 := 0;
    mQtdeBlocoD  := 0;

    // Bloco F.
    mQtdeRegF001 := 0;
    mQtdeRegF010 := 0;
    mQtdeRegF100 := 0;
    mQtdeRegF111 := 0;
    mQtdeRegF120 := 0;
    mQtdeRegF129 := 0;
    mQtdeRegF130 := 0;
    mQtdeRegF139 := 0;
    mQtdeRegF150 := 0;
    mQtdeRegF200 := 0;
    mQtdeRegF205 := 0;
    mQtdeRegF210 := 0;
    mQtdeRegF211 := 0;
    mQtdeRegF600 := 0;
    mQtdeRegF700 := 0;
    mQtdeRegF800 := 0;
    mQtdeRegF990 := 0;
    mQtdeBlocoF  := 0;

    // Bloco I.
    mQtdeRegI001 := 0;
    mQtdeRegI990 := 0;
    mQtdeBlocoI  := 0;

    // Bloco M.
    mQtdeRegM001 := 0;
    mQtdeRegM100 := 0;
    mQtdeRegM105 := 0;
    mQtdeRegM110 := 0;
    mQtdeRegM200 := 0;
    mQtdeRegM205 := 0;
    mQtdeRegM210 := 0;
    mQtdeRegM211 := 0;
    mQtdeRegM220 := 0;
    mQtdeRegM230 := 0;
    mQtdeRegM300 := 0;
    mQtdeRegM350 := 0;
    mQtdeRegM400 := 0;
    mQtdeRegM410 := 0;
    mQtdeRegM500 := 0;
    mQtdeRegM505 := 0;
    mQtdeRegM510 := 0;
    mQtdeRegM600 := 0;
    mQtdeRegM605 := 0;
    mQtdeRegM610 := 0;
    mQtdeRegM611 := 0;
    mQtdeRegM620 := 0;
    mQtdeRegM630 := 0;
    mQtdeRegM700 := 0;
    mQtdeRegM800 := 0;
    mQtdeRegM810 := 0;
    mQtdeRegM990 := 0;
    mQtdeBlocoM  := 0;

    // Bloco P.
    mQtdeRegM001 := 0;
    mQtdeBlocoM  := 0;

    // Bloco 1.
    mQtdeReg1001 := 0;
    mQtdeReg1010 := 0;
    mQtdeReg1020 := 0;
    mQtdeReg1100 := 0;
    mQtdeReg1101 := 0;
    mQtdeReg1102 := 0;
    mQtdeReg1200 := 0;
    mQtdeReg1210 := 0;
    mQtdeReg1220 := 0;
    mQtdeReg1300 := 0;
    mQtdeReg1500 := 0;
    mQtdeReg1501 := 0;
    mQtdeReg1502 := 0;
    mQtdeReg1600 := 0;
    mQtdeReg1610 := 0;
    mQtdeReg1620 := 0;
    mQtdeReg1700 := 0;
    mQtdeReg1800 := 0;
    mQtdeReg1809 := 0;
    mQtdeReg1990 := 0;
    mQtdeBloco1  := 0;

    // Bloco 9.
    mQtdeReg9001 := 0;
    mQtdeReg9900 := 0;
    mQtdeReg9990 := 0;
    mQtdeReg9999 := 0;
    mQtdeBloco9  := 0;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.Progresso1(Registro: String; RegTotal: Integer);
begin
      //cMsg.Lines.Add(Registro);
      Janela_ProcessamentoSPED.Progresso.Position  := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption   := Registro;
      Janela_ProcessamentoSPED.Progresso2.Position := 0;
      Janela_ProcessamentoSPED.Progresso2.Max      := RegTotal;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.Progresso2(Registro: String);
begin
      //cMsg.Lines.Add(Registro);
      Janela_ProcessamentoSPED.lRegistro.Caption   := Registro;
      Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.Progresso3(Registro: String; RegTotal: Integer);
begin
      //cMsg.Lines.Add(Registro);
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro2.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso3.Position := 0;
         Janela_ProcessamentoSPED.Progresso3.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
      End;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.Progresso4(Registro: String; RegTotal: Integer);
begin
      //cMsg.Lines.Add(Registro);
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro3.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso4.Position := 0;
         Janela_ProcessamentoSPED.Progresso4.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso4.Position := Janela_ProcessamentoSPED.Progresso4.Position + 1;
      End;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_PISCOFINS.bImprimirClick(Sender: TObject);
var
  Prn: TextFile;
  i  : word;
  Strings: TStrings;
begin
     Strings := cMsg.Lines;

     Janela_Processamento                    := TJanela_Processamento.Create(Self);
     Janela_Processamento.lProcesso.Caption  := 'Imprimindo Erros...';
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.max      := Strings.Count -1;
     Janela_Processamento.Show;

     AssignPrn(Prn);
     Try
        Rewrite(Prn);
        Try
           for i := 0 to Strings.Count -1 do begin
               Writeln(Prn, Strings.Strings[i]);
               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Application.ProcessMessages;
           End;
        finally
           CloseFile(Prn);
        end;
     except on EInOutError do
         MessageDlg('Error na impressao de texto.', mtError, [mbOk], 0);
  end;

  Janela_Processamento.Close;
end;

end.
