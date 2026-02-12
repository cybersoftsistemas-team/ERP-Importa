unit frmUtilitarios_ExportaSPED_Fiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, RXSpin,
  Vcl.ExtCtrls, RXCtrls, Funcoes, DateUtils, INIFiles, Shellapi, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TUtilitarios_ExportaSPED_Fiscal = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    bSintegra: TButton;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cNomeArquivo: TEdit;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    StaticText3: TStaticText;
    cVersao: TCurrencyEdit;
    StaticText1: TStaticText;
    cFinalidade: TRadioGroup;
    tNotas: TMSQuery;
    tItens: TMSQuery;
    tDescricaoItem: TMSQuery;
    tFatura: TMSQuery;
    tDuplicatas: TMSQuery;
    tAjustes: TMSQuery;
    tSaldoICMS: TMSQuery;
    tOutros: TMSQuery;
    tNotasTerceirosItens: TMSQuery;
    tInventario: TMSQuery;
    tNotas2: TMSQuery;
    tItens2: TMSQuery;
    tProdutos: TMSQuery;
    tExporta: TMSQuery;
    tCIAP: TMSQuery;
    tTotalInventario: TMSQuery;
    cInventario: TRadioGroup;
    tContas: TMSQuery;
    cMotivo: TRadioGroup;
    tNotas3: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tEstoque: TMSQuery;
    tFichaInventario: TMSQuery;
    cBloco1: TRadioGroup;
    cGrupo1: TGroupBox;
    cReg1100: TCheckBox;
    cReg1200: TCheckBox;
    cReg1300: TCheckBox;
    cReg1390: TCheckBox;
    cReg1400: TCheckBox;
    cReg1500: TCheckBox;
    cReg1601: TCheckBox;
    cReg1700: TCheckBox;
    cReg1800: TCheckBox;
    cReg1960: TCheckBox;
    cReg1970: TCheckBox;
    cReg1980: TCheckBox;
    cEstoque: TRadioGroup;
    tFichaEstoque: TMSQuery;
    tTotalEstoque: TMSQuery;
    cReg1250: TCheckBox;
    tInfComp: TMSQuery;
    tBeneficios: TMSQuery;
    tTemp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSintegraClick(Sender: TObject);

    // BLOCO 0.
    procedure Registro0000;
    procedure Registro0001;
    procedure Registro0002;
    procedure Registro0005;
    procedure Registro0015;
    procedure Registro0100;
    procedure Registro0150;
    procedure Registro0190;
    procedure Registro0200;
    procedure Registro0300;
    procedure Registro0305;
    procedure Registro0400;
    procedure Registro0450;
    procedure Registro0460;
    procedure Registro0500;
    procedure Registro0600;
    procedure Registro0990;

    // BLOCO B.
    procedure RegistroB001;
    procedure RegistroB990;

    // BLOCO C.
    procedure RegistroC001;
    procedure RegistroC100;
    procedure RegistroC101;
    procedure RegistroC105;
    procedure RegistroC110;
    procedure RegistroC113(Nota:Integer);
    procedure RegistroC120(Nota:Integer; Data:TDate);
    procedure RegistroC140;
    procedure RegistroC141;
    procedure RegistroC160(Nota:Integer);
    procedure RegistroC170(Nota:Integer; Fornecedor: Integer);
    procedure RegistroC172;
    procedure RegistroC175(Nota:Integer);
    procedure RegistroC177(Nota:Integer);
    procedure RegistroC178;
    procedure RegistroC190(Nota: Integer; Emitente: Integer; TipoNF:Integer; Data_Emi: TDate; pFornecedor: Integer);
    procedure RegistroC195;
    procedure RegistroC197(Nota: Integer; Emitente: Integer; TipoNF:Integer; Data_Emi: TDate; pFornecedor: Integer);
    procedure RegistroC500;
    procedure RegistroC510(Nota: Integer; Data:TDate; Emitente: Integer);
    procedure RegistroC590(Nota: Integer; Data:TDate; Emitente: Integer);
    procedure RegistroC990;

    // BLOCO D.
    procedure RegistroD001;
    procedure RegistroD100;
    procedure RegistroD110(Nota:Integer);
    procedure RegistroD190(Nota:Integer;Emissao:TDate;CFOP:string;Fornecedor:integer);
    procedure RegistroD195;
    procedure RegistroD197(Nota: Integer; Emitente: Integer; TipoNF:Integer; Data_Emi: TDate; pFornecedor: Integer);
    procedure RegistroD500;
    procedure RegistroD590(Nota:Integer; Fornecedor: Integer);
    procedure RegistroD990;

    // BLOCO E.
    // Apuração ICMS
    procedure RegistroE001;
    procedure RegistroE100;
    procedure RegistroE110;
    procedure RegistroE111;
    procedure RegistroE116;
    procedure RegistroE200;
    procedure RegistroE210(pfEstado: String);
    procedure RegistroE220(pfEstado: String);
    procedure RegistroE250(pfEstado: String);
    procedure RegistroE300;
    procedure RegistroE310(Estado: String);
    procedure RegistroE316(Estado: String);

    // Apuração IPI.
    procedure RegistroE500;
    procedure RegistroE510;
    procedure RegistroE520;
    procedure RegistroE530;
    procedure RegistroE990;

    // BLOCO G.
    procedure RegistroG001;
    procedure RegistroG110;
    procedure RegistroG125;
    procedure RegistroG126;
    procedure RegistroG130;
    procedure RegistroG140;
    procedure RegistroG990;

    // BLOCO H.
    procedure RegistroH001;
    procedure RegistroH005;
    procedure RegistroH010;
    procedure RegistroH990;

    // BLOCO K.
    procedure RegistroK001;
    procedure RegistroK010;
    procedure RegistroK100;
    procedure RegistroK200;
    {
    procedure RegistroK220;
    procedure RegistroK230;
    procedure RegistroK235;
    procedure RegistroK250;
    procedure RegistroK255;
    }
    procedure RegistroK990;

    // BLOCO 1.
    procedure Registro1001;
    procedure Registro1010;
    procedure Registro1100;
    procedure Registro1105(pMemo: Integer);
    procedure Registro1110(pCodigo, pProcesso: string);
    procedure Registro1400;
    procedure Registro1601;
    procedure Registro1900;
    procedure Registro1910;
    procedure Registro1920;
    procedure Registro1926;
    procedure Registro1990;
    procedure Registro9001;
    procedure Registro9900;

    procedure InventarioAntigo;
    procedure EstoqueAntigo;

    procedure Progresso1(Registro: String; RegTotal: Integer);
    procedure Progresso2(Registro: String);
    procedure Progresso3(Registro: String; RegTotal: Integer);
    procedure Progresso4(Registro: String; RegTotal: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
     mLinha       : Integer;
     Arquivo      : TextFile;
     mNomeArq     : String;
     mDataIni     : String;
     mDataFim     : String;
     mCPF         : String;
     mCNPJ        : String;
     mRegistro    : String;
     mQtdeBloco0  : Integer;
     mQtdeBlocoB  : Integer;
     mQtdeBlocoC  : Integer;
     mQtdeBlocoD  : Integer;
     mQtdeBlocoE  : Integer;
     mQtdeBlocoH  : Integer;
     mQtdeBlocoK  : Integer;
     mQtdeBlocoG  : Integer;
     mQtdeBloco1  : Integer;
     mQtdeBloco9  : Integer;
     mDataInventI : TDate;
     mDataInventF : TDate;
     mDataEstoqueI: TDate;
     mDataEstoqueF: TDate;
     mDataCIAPI   : TDate;
     mDataCIAPF   : TDate;
     mDataEstoque : TDate;
     mTotalInvent : Currency;
     mSaldoApurado: Currency;
     mItem        : Integer;

     // Bloco 0.
     mQtdeReg0000 : Integer;
     mQtdeReg0001 : Integer;
     mQtdeReg0002 : Integer;
     mQtdeReg0005 : Integer;
     mQtdeReg0015 : Integer;
     mQtdeReg0100 : Integer;
     mQtdeReg0150 : Integer;
     mQtdeReg0175 : Integer;
     mQtdeReg0176 : Integer;
     mQtdeReg0190 : Integer;
     mQtdeReg0200 : Integer;
     mQtdeReg0205 : Integer;
     mQtdeReg0300 : Integer;
     mQtdeReg0305 : Integer;
     mQtdeReg0400 : Integer;
     mQtdeReg0450 : Integer;
     mQtdeReg0460 : Integer;
     mQtdeReg0600 : Integer;
     mQtdeReg0500 : Integer;
     mQtdeReg0990 : Integer;

     // Bloco B.
     mQtdeRegB001 : Integer;
     mQtdeRegB990 : Integer;

     // Bloco C.
     mQtdeRegC001 : Integer;
     mQtdeRegC100 : Integer;
     mQtdeRegC105 : Integer;
     mQtdeRegC101 : Integer;
     mQtdeRegC110 : Integer;
     mQtdeRegC113 : Integer;
     mQtdeRegC120 : Integer;
     mQtdeRegC140 : Integer;
     mQtdeRegC141 : Integer;
     mQtdeRegC160 : Integer;
     mQtdeRegC170 : Integer;
     mQtdeRegC172 : Integer;
     mQtdeRegC175 : Integer;
     mQtdeRegC177 : Integer;
     mQtdeRegC178 : Integer;
     mQtdeRegC190 : Integer;
     mQtdeRegC195 : Integer;
     mQtdeRegC197 : Integer;
     mQtdeRegC500 : Integer;
     mQtdeRegC510 : Integer;
     mQtdeRegC590 : Integer;
     mQtdeRegC990 : Integer;

     // Bloco D.
     mQtdeRegD001 : Integer;
     mQtdeRegD100 : Integer;
     mQtdeRegD110 : Integer;
     mQtdeRegD190 : Integer;
     mQtdeRegD195 : Integer;
     mQtdeRegD197 : Integer;
     mQtdeRegD500 : Integer;
     mQtdeRegD590 : Integer;
     mQtdeRegD990 : Integer;

     // Bloco E.
     mQtdeRegE001 : Integer;
     mQtdeRegE100 : Integer;
     mQtdeRegE110 : Integer;
     mQtdeRegE111 : Integer;
     mQtdeRegE116 : Integer;
     mQtdeRegE200 : Integer;
     mQtdeRegE210 : Integer;
     mQtdeRegE220 : Integer;
     mQtdeRegE250 : Integer;
     mQtdeRegE300 : Integer;
     mQtdeRegE310 : Integer;
     mQtdeRegE316 : Integer;
     mQtdeRegE500 : Integer;
     mQtdeRegE510 : Integer;
     mQtdeRegE520 : Integer;
     mQtdeRegE530 : Integer;
     mQtdeRegE990 : Integer;

     // Bloco G.
     mQtdeRegG001 : Integer;
     mQtdeRegG110 : Integer;
     mQtdeRegG125 : Integer;
     mQtdeRegG126 : Integer;
     mQtdeRegG130 : Integer;
     mQtdeRegG140 : Integer;
     mQtdeRegG990 : Integer;

     // Bloco H.
     mQtdeRegH001 : Integer;
     mQtdeRegH005 : Integer;
     mQtdeRegH010 : Integer;
     mQtdeRegH990 : Integer;

     // Bloco K.
     mQtdeRegK001 : Integer;
     mQtdeRegK010 : Integer;
     mQtdeRegK100 : Integer;
     mQtdeRegK200 : Integer;
     mQtdeRegK220 : Integer;
     mQtdeRegK230 : Integer;
     mQtdeRegK235 : Integer;
     mQtdeRegK250 : Integer;
     mQtdeRegK255 : Integer;
     mQtdeRegK990 : Integer;

     // Bloco 1.
     mQtdeReg1001 : Integer;
     mQtdeReg1100 : Integer;
     mQtdeReg1010 : Integer;
     mQtdeReg1105 : Integer;
     mQtdeReg1110 : Integer;
     mQtdeReg1400 : Integer;
     mQtdeReg1600 : Integer;
     mQtdeReg1601 : Integer;
     mQtdeReg1900 : Integer;
     mQtdeReg1910 : Integer;
     mQtdeReg1920 : Integer;
     mQtdeReg1926 : Integer;
     mQtdeReg1990 : Integer;
     mQtdeReg9001 : Integer;
     mQtdeReg9900 : Integer;
  end;

var
  Utilitarios_ExportaSPED_Fiscal: TUtilitarios_ExportaSPED_Fiscal;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmImpressao_Visualizar, frmJanela_ProcessamentoSPED;

{$R *.dfm}

procedure TUtilitarios_ExportaSPED_Fiscal.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaSPED_Fiscal.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
   i   : Integer;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('SPED_FISCAL', 'Arquivo'   , 'CYBERSOFT_SPED_FISCAL');
      aINI.WriteInteger('SPED_FISCAL', 'Versao'    , cVersao.AsInteger);
      aINI.WriteInteger('SPED_FISCAL', 'Finalidade', cFinalidade.ItemIndex);
      aINI.WriteInteger('SPED_FISCAL', 'Inventario', cInventario.ItemIndex);
      aINI.WriteInteger('SPED_FISCAL', 'Estoque'   , cEstoque.ItemIndex);
      aINI.WriteInteger('SPED_FISCAL', 'Mes'       , cMes.ItemIndex);
      aINI.WriteInteger('SPED_FISCAL', 'Ano'       , cAno.AsInteger);
      aINI.WriteInteger('SPED_FISCAL', 'Motivo'    , cMotivo.ItemIndex);
      aINI.WriteInteger('SPED_FISCAL', 'Bloco1'    , cBloco1.ItemIndex);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1100'   , cReg1100.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1200'   , cReg1200.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1300'   , cReg1300.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1390'   , cReg1390.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1400'   , cReg1400.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1500'   , cReg1500.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1601'   , cReg1601.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1700'   , cReg1700.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1800'   , cReg1800.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1960'   , cReg1960.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1970'   , cReg1970.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1980'   , cReg1980.Checked);
      aINI.WriteBool   ('SPED_FISCAL', 'Reg1250'   , cReg1250.Checked);
      aINI.Free;

      For i := 0 to ComponentCount -1 do begin
          If Components[i] is TMSQuery then  begin
             TMSQuery(Components[i]).Close;
          End;
      End;

      FecharTabelas(Dados, dmFiscal, nil, nil);

      LimpaMemoria;
      Utilitarios_ExportaSPED_Fiscal.Release;
      Utilitarios_ExportaSPED_Fiscal := nil;
End;

procedure TUtilitarios_ExportaSPED_Fiscal.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      With Dados do begin
           Configuracao.Open;
           cAno.Value     := YearOf(Date);
           cMes.ItemIndex := MonthOf(Date)-2;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cNomeArquivo.Text     := aINI.ReadString ('SPED_FISCAL', 'Arquivo'   , 'CYBERSOFT_SPED_FISCAL' );
      cVersao.Value         := aINI.ReadInteger('SPED_FISCAL', 'Versao'    , 0);
      cFinalidade.ItemIndex := aINI.ReadInteger('SPED_FISCAL', 'Finalidade', 0);
      cInventario.ItemIndex := aINI.ReadInteger('SPED_FISCAL', 'Inventario', 0);
      cEstoque.ItemIndex    := aINI.ReadInteger('SPED_FISCAL', 'Estoque'   , 0);
      cMes.ItemIndex        := aINI.ReadInteger('SPED_FISCAL', 'Mes'       , MonthOf(Date)-1);
      cAno.Value            := aINI.ReadInteger('SPED_FISCAL', 'Ano'       , YearOf(Date));
      cMotivo.ItemIndex     := aINI.ReadInteger('SPED_FISCAL', 'Motivo'    , 0);
      cBloco1.ItemIndex     := aINI.ReadInteger('SPED_FISCAL', 'Bloco1'    , 0);
      cReg1100.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1100'   , false);
      cReg1200.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1200'   , false);
      cReg1300.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1300'   , false);
      cReg1390.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1390'   , false);
      cReg1400.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1400'   , false);
      cReg1500.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1500'   , false);
      cReg1601.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1601'   , false);
      cReg1700.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1700'   , false);
      cReg1800.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1800'   , false);
      cReg1960.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1960'   , false);
      cReg1970.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1970'   , false);
      cReg1980.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1980'   , false);
      cReg1250.Checked      := aINI.ReadBool   ('SPED_FISCAL', 'Reg1250'   , false);
      aINI.Free;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.bSintegraClick(Sender: TObject);
Var
    mValidador : String;
begin
      mValidador := Dados.ConfiguracaoPasta_SPEDFiscal.Value;
      ShellExecute(Handle, 'Open', PChar(mValidador), '', '', SW_ShowNormal);
end;

procedure TUtilitarios_ExportaSPED_Fiscal.bGerarClick(Sender: TObject);
var
  mErros: widestring;
begin
      if trim(cVersao.text) = '' then begin
        MessageDlg('Campo "Versão" é obrogatório.', mtError, [mbOK], 0);
        cVersao.SetFocus;
        Abort;
     end;

     // Zerando os contadores de registros.
     mQtdeBloco0 := 0;
     mQtdeBlocoB := 0;
     mQtdeBlocoC := 0;
     mQtdeBlocoD := 0;
     mQtdeBlocoE := 0;
     mQtdeBlocoG := 0;
     mQtdeBlocoH := 0;
     mQtdeBlocoK := 0;
     mQtdeBloco1 := 0;
     mQtdeBloco9 := 0;

     // Bloco 0.
     mQtdeReg0000 := 0;
     mQtdeReg0001 := 0;
     mQtdeReg0005 := 0;
     mQtdeReg0015 := 0;
     mQtdeReg0100 := 0;
     mQtdeReg0150 := 0;
     mQtdeReg0175 := 0;
     mQtdeReg0190 := 0;
     mQtdeReg0200 := 0;
     mQtdeReg0205 := 0;
     mQtdeReg0300 := 0;
     mQtdeReg0305 := 0;
     mQtdeReg0400 := 0;
     mQtdeReg0450 := 0;
     mQtdeReg0460 := 0;
     mQtdeReg0500 := 0;
     mQtdeReg0600 := 0;
     mQtdeReg0990 := 0;

     // Bloco B.
     mQtdeRegB001 := 0;
     mQtdeRegB990 := 0;

     // Bloco C.
     mQtdeRegC001 := 0;
     mQtdeRegC100 := 0;
     mQtdeRegC101 := 0;
     mQtdeRegC105 := 0;
     mQtdeRegC110 := 0;
     mQtdeRegC113 := 0;
     mQtdeRegC120 := 0;
     mQtdeRegC140 := 0;
     mQtdeRegC141 := 0;
     mQtdeRegC160 := 0;
     mQtdeRegC170 := 0;
     mQtdeRegC172 := 0;
     mQtdeRegC175 := 0;
     mQtdeRegC177 := 0;
     mQtdeRegC178 := 0;
     mQtdeRegC190 := 0;
     mQtdeRegC195 := 0;
     mQtdeRegC197 := 0;
     mQtdeRegC500 := 0;
     mQtdeRegC510 := 0;
     mQtdeRegC590 := 0;
     mQtdeRegC990 := 0;

     // Bloco D.
     mQtdeRegD001 := 0;
     mQtdeRegD100 := 0;
     mQtdeRegD110 := 0;
     mQtdeRegD190 := 0;
     mQtdeRegD195 := 0;
     mQtdeRegD197 := 0;
     mQtdeRegD500 := 0;
     mQtdeRegD590 := 0;
     mQtdeRegD990 := 0;

     // Bloco E.
     mQtdeRegE001 := 0;
     mQtdeRegE100 := 0;
     mQtdeRegE110 := 0;
     mQtdeRegE111 := 0;
     mQtdeRegE116 := 0;
     mQtdeRegE200 := 0;
     mQtdeRegE210 := 0;
     mQtdeRegE220 := 0;
     mQtdeRegE250 := 0;
     mQtdeRegE300 := 0;
     mQtdeRegE310 := 0;
     mQtdeRegE316 := 0;
     mQtdeRegE500 := 0;
     mQtdeRegE510 := 0;
     mQtdeRegE520 := 0;
     mQtdeRegE530 := 0;
     mQtdeRegE990 := 0;

     // Bloco G.
     mQtdeRegG001 := 0;
     mQtdeRegG110 := 0;
     mQtdeRegG125 := 0;
     mQtdeRegG126 := 0;
     mQtdeRegG130 := 0;
     mQtdeRegG140 := 0;
     mQtdeRegG990 := 0;

     // Bloco H.
     mQtdeRegH001 := 0;
     mQtdeRegH005 := 0;
     mQtdeRegH010 := 0;
     mQtdeRegH990 := 0;

     // Bloco K.
     mQtdeRegK001 := 0;
     mQtdeRegK010 := 0;
     mQtdeRegK100 := 0;
     mQtdeRegK200 := 0;
     mQtdeRegK220 := 0;
     mQtdeRegK230 := 0;
     mQtdeRegK235 := 0;
     mQtdeRegK250 := 0;
     mQtdeRegK255 := 0;
     mQtdeRegK990 := 0;

     // Bloco 1.
     mQtdeReg1001 := 0;
     mQtdeReg1010 := 0;
     mQtdeReg1100 := 0;
     mQtdeReg1105 := 0;
     mQtdeReg1110 := 0;
     mQtdeReg1400 := 0;
     mQtdeReg1600 := 0;
     mQtdeReg1601 := 0;
     mQtdeReg1900 := 0;
     mQtdeReg1910 := 0;
     mQtdeReg1920 := 0;
     mQtdeReg1926 := 0;
     mQtdeReg1990 := 0;
     mQtdeReg9001 := 0;
     mQtdeReg9900 := 0;

     // Verifica se todos os itens tem o codigo do "Tipo_Item".
     mErros := '';
     with tTemp do begin
          sql.Clear;
          sql.Add('select Codigo from Produtos where Tipo_Item is null');
          open;
          first;
          while not eof do begin
                mErros := mErros + fieldbyname('Codigo').AsString + ', ';
                next;
          end;
          if trim(mErros) <> '' then begin
             Cursor := crDefault;
             if messagedlg('Atenção!'+#13+#13+'O seguintes produtos estão sem o código "Tipo Item (SPED)" no cadastro: '+mErros+#13+#13+'Deseja gerar o SPED FISCAL mesmo assim?', mtWarning, [mbyes, mbCancel], 0) = mrCancel then begin
                Abort;
             end;
          end;
     end;
     
     Screen.Cursor := crSQLWait;
     With Dados,dmFiscal do Begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
          Fornecedores.Open;

          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes');
          Clientes.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios');
          Municipios.Open;
          Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

          with IncentivosFiscais do begin 
               sql.Clear;
               sql.Add('select * from IncentivosFiscais where Nome = :pInc');
               parambyname('pInc').value := Empresas.FieldByName('Incentivo_Fiscal').AsString;
               open;
          end;

          // Coloca Zera "0" no campo 'Aliquota_ICMSOper para conteudo = "NULL".
          NotasTerceirosItens.SQL.Clear;
          NotasTerceirosItens.SQL.Add('UPDATE NotasTerceirosItens SET Aliquota_ICMSOper = 0 WHERE Aliquota_ICMSOper IS NULL');
          NotasTerceirosItens.Execute;
          NotasTerceirosItens.SQL.Clear;
          NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens');

          // Monta o caminho e o nome do arquivo texto.
          mNomeArq := Trim(ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(stringreplace(EmpresasRazao_Social.AsString, '/', '',[rfReplaceAll]));
          If EmpresasMatriz_Filial.AsBoolean = true then
             mNomeArq := mNomeArq + '_Matriz'
          else
             mNomeArq := mNomeArq + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

          If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
          mNomeArq := mNomeArq+'\'+cNomeArquivo.Text+'_'+Trim(cMes.Text)+cAno.Text+'_0001.txt';

          
          If FileExists(mNomeArq) then begin 
             try
                closefile(Arquivo);
             except

             end;
             DeleteFile(mNomeArq);
          end;
          AssignFile(Arquivo, mNomeArq);
          ReWrite(Arquivo);

          LinhaAtual   := 0;
          ColunaAtual  := 0;
          mLinha       := 0;
          mDataIni     := '01/' + PoeZero(2,cMes.ItemIndex+1) +'/'+ PoeZero(4, cAno.AsInteger);
          mDataCIAPI   := StrtoDate(mDataIni);
          mDataCIAPF   := UltimoDiaMes(StrtoDate(mDataIni));
          mDataEstoque := UltimoDiaMes(StrtoDate(mDataIni));

          //INVENTARIO.
          // Mensal.
          If cInventario.ItemIndex = 0 then begin
             mDataInventI := StrtoDate(mDataIni);
             mDataInventF := UltimoDiaMes(StrtoDate(mDataIni));
          End;
          // Trimestral.
          if cInventario.ItemIndex = 1 then begin
             if (cMes.ItemIndex+1) in[3,4,5] then begin
                 mDataInventI := StrtoDate('01/01/'+ PoeZero(4, cAno.AsInteger));
                 mDataInventF := UltimoDiaMes(StrtoDate('01/03/'+ PoeZero(4, cAno.AsInteger)));
             end;
             if (cMes.ItemIndex+1) in[6,7,8] then begin
                 mDataInventI := StrtoDate('01/04/'+ PoeZero(4, cAno.AsInteger));
                 mDataInventF := UltimoDiaMes(StrtoDate('01/06/'+ PoeZero(4, cAno.AsInteger)));
             end;
             if (cMes.ItemIndex+1) in[9,10,11] then begin
                 mDataInventI := StrtoDate('01/07/'+ PoeZero(4, cAno.AsInteger));
                 mDataInventF := UltimoDiaMes(StrtoDate('01/09/'+ PoeZero(4, cAno.AsInteger)));
             end;
             if (cMes.ItemIndex+1) in[1,2] then begin
                 mDataInventI := StrtoDate('01/10/'+ PoeZero(4, cAno.AsInteger-1));
                 mDataInventF := UltimoDiaMes(StrtoDate('01/12/'+ PoeZero(4, cAno.AsInteger-1)));
             end;
             if (cMes.ItemIndex+1) in[12] then begin
                 mDataInventI := StrtoDate('01/10/'+ PoeZero(4, cAno.AsInteger));
                 mDataInventF := UltimoDiaMes(StrtoDate('01/12/'+ PoeZero(4, cAno.AsInteger)));
             end;
          end;

          // Anual.
          If cInventario.ItemIndex = 2 then begin
             mDataInventI := StrtoDate('01/01/2000');
             mDataInventF := strtodate('31/12/'+inttostr(cAno.AsInteger-1));
          End;

          // ESTOQUE.
          // Mensal.
          If cEstoque.ItemIndex = 0 then begin
             mDataEstoqueI := StrtoDate(mDataIni);
             mDataEstoqueF := UltimoDiaMes(StrtoDate(mDataIni));
          End;
          // Trimestral.
          If cEstoque.ItemIndex = 1 then begin
             if (cMes.ItemIndex+1) in[3,4,5] then begin
                 mDataEstoqueI := StrtoDate('01/01/'+ PoeZero(4, cAno.AsInteger));
                 mDataEstoqueF := UltimoDiaMes(StrtoDate('01/03/'+ PoeZero(4, cAno.AsInteger)));
             end;
             if (cMes.ItemIndex+1) in[6,7,8] then begin
                 mDataEstoqueI := StrtoDate('01/04/'+ PoeZero(4, cAno.AsInteger));
                 mDataEstoqueF := UltimoDiaMes(StrtoDate('01/06/'+ PoeZero(4, cAno.AsInteger)));
             end;
             if (cMes.ItemIndex+1) in[9,10,11] then begin
                 mDataEstoqueI := StrtoDate('01/07/'+ PoeZero(4, cAno.AsInteger));
                 mDataEstoqueF := UltimoDiaMes(StrtoDate('01/09/'+ PoeZero(4, cAno.AsInteger)));
             end;
             if (cMes.ItemIndex+1) in[1,2] then begin
                 mDataEstoqueI := StrtoDate('01/10/'+ PoeZero(4, cAno.AsInteger-1));
                 mDataEstoqueF := UltimoDiaMes(StrtoDate('01/12/'+ PoeZero(4, cAno.AsInteger-1)));
             end;
             if (cMes.ItemIndex+1) in[12] then begin
                 mDataEstoqueI := StrtoDate('01/10/'+ PoeZero(4, cAno.AsInteger));
                 mDataEstoqueF := UltimoDiaMes(StrtoDate('01/12/'+ PoeZero(4, cAno.AsInteger)));
             end;
          End;
          // Anual.
          If cEstoque.ItemIndex = 2 then begin
             mDataEstoqueI := StrtoDate('01/01/2000');
             mDataEstoqueF := UltimoDiaMes(strtodate('31/12/'+inttostr(cAno.AsInteger-1)));
          End;

          mDataFim := DatetoStr( UltimoDiaMes(StrtoDate(mDataIni)) );
          mDataIni := RemoveCaracter('/','',mDataIni);
          mDataFim := RemoveCaracter('/','',mDataFim);
          
          Janela_ProcessamentoSPED                    := TJanela_ProcessamentoSPED.Create(Self);
          Janela_ProcessamentoSPED.Progresso.Position := 0;
          Janela_ProcessamentoSPED.Progresso.max      := 73;          // Quantidade de registros.
          Janela_ProcessamentoSPED.lProcesso.Caption  := 'Gerando...'+cNomeArquivo.Text;
          Janela_ProcessamentoSPED.lRegistro.Caption  := 'Apurando Saldo de Inventario...';
          Janela_ProcessamentoSPED.Show;
          Application.ProcessMessages;

          // Apura o saldo do inventario do mês.
          If cInventario.ItemIndex <> 3 then begin
             If EmpresasMenu_Inventario.AsBoolean then begin
                with tFichainventario do begin
                     SQL.Clear;
                     SQL.Add('-- MERCADORIA PRÓPRIA.');
                     SQL.Add('SELECT  FI1.Codigo');
                     SQL.Add('       ,FI1.UM');
                     SQL.Add('       ,Historico = ''MERCADORIA NA PRÓPRIA EMPRESA'' ');
                     SQL.Add('       ,Estoque = ''0-EMPRESA'' ');
                     SQL.Add('       ,FI1.ES');
                     SQL.Add('       ,FI1.Destinatario_Codigo');
                     SQL.Add('       ,FI1.Qtde_Saldo');
                     SQL.Add('       ,FI1.Unitario_Saldo');
                     SQL.Add('       ,FI1.Total_Saldo');
                     SQL.Add('       ,Tipo = CASE WHEN Emissor = ''P'' AND ES = ''E'' THEN ''F'' ');
                     SQL.Add('                    WHEN Emissor = ''P'' AND ES = ''S'' THEN ''C'' ');
                     SQL.Add('                    WHEN Emissor = ''T'' THEN ''F'' ');
                     SQL.Add('               END');
                     SQL.Add('       ,Tipo_Item = (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo)');
                     SQL.Add('INTO   #TEMP');
                     SQL.Add('FROM   FichaInventario FI1');
                     SQL.Add('WHERE  Data IN(SELECT MAX(FI2.Data) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
                     SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
                     SQL.Add('UNION ALL');
                     SQL.Add('SELECT  FI1.Codigo');
                     SQL.Add('       ,FI1.UM');
                     SQL.Add('       ,Historico = ''MERCADORIA PRÓPRIA EM PODER TERCEIROS'' ');
                     SQL.Add('       ,Estoque = ''1-ARMAZEM'' ');
                     SQL.Add('       ,FI1.ES');
                     SQL.Add('       ,FI1.Destinatario_Codigo');
                     SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Saida-FI2.Qtde_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Saida -FI2.Qtde_Entrada)  FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData), 0), 0)');
                     SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Tipo = CASE WHEN Emissor = ''P'' AND ES = ''E'' THEN ''F'' ');
                     SQL.Add('                    WHEN Emissor = ''P'' AND ES = ''S'' THEN ''C'' ');
                     SQL.Add('                    WHEN Emissor = ''T'' THEN ''F'' ');
                     SQL.Add('               END');
                     SQL.Add('       ,Tipo_Item = (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo)');
                     SQL.Add('FROM   FichaInventario FI1');
                     SQL.Add('WHERE  FI1.Estoque = ''1-ARMAZEM'' ');
                     SQL.Add('  AND  FI1.Registro IS NOT NULL');
                     SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''1-ARMAZEM'' GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
                     SQL.Add('UNION ALL');
                     SQL.Add('SELECT  FI1.Codigo');
                     SQL.Add('       ,FI1.UM');
                     SQL.Add('       ,Historico = ''MERCADORIA DE TERCEIROS EM PODER DA EMPRESA'' ');
                     SQL.Add('       ,Estoque = ''2-TERCEIROS'' ');
                     SQL.Add('       ,FI1.ES');
                     SQL.Add('       ,FI1.Destinatario_Codigo');
                     SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData), 0), 0)');
                     SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Tipo = CASE WHEN Emissor = ''P'' AND ES = ''E'' THEN ''F'' ');
                     SQL.Add('                    WHEN Emissor = ''P'' AND ES = ''S'' THEN ''C'' ');
                     SQL.Add('                    WHEN Emissor = ''T'' THEN ''F'' ');
                     SQL.Add('               END');
                     SQL.Add('       ,Tipo_Item = (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo)');
                     SQL.Add('FROM   FichaInventario FI1');
                     SQL.Add('WHERE  FI1.Estoque = ''2-TERCEIROS'' ');
                     SQL.Add('  AND  FI1.Registro IS NOT NULL');
                     SQL.Add('  AND  FI1.Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''2-TERCEIROS'' GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('SELECT *');
                     SQL.Add('FROM #TEMP');
                     SQL.Add('WHERE round(Qtde_Saldo, 3) > 0');
                     SQL.Add('ORDER BY Estoque, Codigo');
                     SQL.Add('DROP TABLE #TEMP');
                     ParamByName('pData').AsDate := mDataInventF;
                     //SQL.SaveToFile('c:\temp\SPED_FISCAL_FichaInventario.sql');
                     Open;
                end;
                
                // Apurando o total do Inventario.
                with tTotalInventario do begin
                     SQL.Clear;
                     SQL.Add('-- MERCADORIA PRÓPRIA.');
                     SQL.Add('SELECT  Estoque = ''0-EMPRESA'' ');
                     SQL.Add('       ,FI1.Qtde_Saldo');
                     SQL.Add('       ,FI1.Unitario_Saldo');
                     SQL.Add('       ,FI1.Total_Saldo');
                     SQL.Add('INTO   #TEMP');
                     SQL.Add('FROM   FichaInventario FI1');
                     SQL.Add('WHERE  Data IN(SELECT MAX(FI2.Data) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
                     SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
                     SQL.Add('UNION ALL');
                     SQL.Add('SELECT  Estoque = ''1-ARMAZEM'' ');
                     SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Saida-FI2.Qtde_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Saida -FI2.Qtde_Entrada)  FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData), 0), 0)');
                     SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('FROM   FichaInventario FI1');
                     SQL.Add('WHERE  FI1.Estoque = ''1-ARMAZEM'' ');
                     SQL.Add('  AND  FI1.Registro IS NOT NULL');
                     SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''1-ARMAZEM'' GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
                     SQL.Add('UNION ALL');
                     SQL.Add('SELECT  Estoque = ''2-TERCEIROS'' ');
                     SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData), 0), 0)');
                     SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('FROM   FichaInventario FI1');
                     SQL.Add('WHERE  FI1.Estoque = ''2-TERCEIROS'' ');
                     SQL.Add('  AND  FI1.Registro IS NOT NULL');
                     SQL.Add('  AND  FI1.Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''2-TERCEIROS'' GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('SELECT Total = SUM(Total_Saldo)');
                     SQL.Add('FROM #TEMP');
                     SQL.Add('WHERE Qtde_Saldo > 0 ');
                     SQL.Add('DROP TABLE #TEMP');
                     ParamByName('pData').AsDate := mDataInventF;
                     //SQL.SaveToFile('c:\temp\SPED_TotalInventario.sql');
                     Open;
                     mTotalInvent := FieldByName('Total').AsCurrency;
                end;
             end else begin
                InventarioAntigo;
             end;
          End;

          // Apura o saldo do estoque do mês.
          If cEstoque.ItemIndex <> 3 then begin
             If EmpresasMenu_Inventario.AsBoolean then begin
                with tFichaEstoque do begin
                     SQL.Clear;
                     SQL.Add('-- MERCADORIA PRÓPRIA.');
                     SQL.Add('SELECT  FI1.Codigo');
                     SQL.Add('       ,FI1.UM');
                     SQL.Add('       ,Historico = ''MERCADORIA NA PRÓPRIA EMPRESA'' ');
                     SQL.Add('       ,Estoque = ''0-EMPRESA'' ');
                     SQL.Add('       ,FI1.ES');
                     SQL.Add('       ,FI1.Destinatario_Codigo');
                     SQL.Add('       ,FI1.Qtde_Saldo');
                     SQL.Add('       ,FI1.Unitario_Saldo');
                     SQL.Add('       ,FI1.Total_Saldo');
                     SQL.Add('       ,Tipo = CASE WHEN Emissor = ''P'' AND ES = ''E'' THEN ''F'' ');
                     SQL.Add('                    WHEN Emissor = ''P'' AND ES = ''S'' THEN ''C'' ');
                     SQL.Add('                    WHEN Emissor = ''T'' THEN ''F'' ');
                     SQL.Add('               END');
                     SQL.Add('       ,Tipo_Item = (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo)');
                     SQL.Add('INTO   #TEMP');
                     SQL.Add('FROM   FichaEstoque FI1');
                     SQL.Add('WHERE  Data IN(SELECT MAX(FI2.Data) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
                     SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
                     SQL.Add('UNION ALL');
                     SQL.Add('SELECT  FI1.Codigo');
                     SQL.Add('       ,FI1.UM');
                     SQL.Add('       ,Historico = ''MERCADORIA PRÓPRIA EM PODER TERCEIROS'' ');
                     SQL.Add('       ,Estoque = ''1-ARMAZEM'' ');
                     SQL.Add('       ,FI1.ES');
                     SQL.Add('       ,FI1.Destinatario_Codigo');
                     SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Saida-FI2.Qtde_Entrada) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Saida -FI2.Qtde_Entrada)  FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData), 0), 0)');
                     SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Tipo = CASE WHEN Emissor = ''P'' AND ES = ''E'' THEN ''F'' ');
                     SQL.Add('                    WHEN Emissor = ''P'' AND ES = ''S'' THEN ''C'' ');
                     SQL.Add('                    WHEN Emissor = ''T'' THEN ''F'' ');
                     SQL.Add('               END');
                     SQL.Add('       ,Tipo_Item = (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo)');
                     SQL.Add('FROM   FichaEstoque FI1');
                     SQL.Add('WHERE  FI1.Estoque = ''1-ARMAZEM'' ');
                     SQL.Add('  AND  FI1.Registro IS NOT NULL');
                     SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''1-ARMAZEM'' GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
                     SQL.Add('UNION ALL');
                     SQL.Add('SELECT  FI1.Codigo');
                     SQL.Add('       ,FI1.UM');
                     SQL.Add('       ,Historico = ''MERCADORIA DE TERCEIROS EM PODER DA EMPRESA'' ');
                     SQL.Add('       ,Estoque = ''2-TERCEIROS'' ');
                     SQL.Add('       ,FI1.ES');
                     SQL.Add('       ,FI1.Destinatario_Codigo');
                     SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData), 0), 0)');
                     SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
                     SQL.Add('       ,Tipo = CASE WHEN Emissor = ''P'' AND ES = ''E'' THEN ''F'' ');
                     SQL.Add('                    WHEN Emissor = ''P'' AND ES = ''S'' THEN ''C'' ');
                     SQL.Add('                    WHEN Emissor = ''T'' THEN ''F'' ');
                     SQL.Add('               END');
                     SQL.Add('       ,Tipo_Item = (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo)');
                     SQL.Add('FROM   FichaEstoque FI1');
                     SQL.Add('WHERE  FI1.Estoque = ''2-TERCEIROS'' ');
                     SQL.Add('  AND  FI1.Registro IS NOT NULL');
                     SQL.Add('  AND  FI1.Item IN(SELECT MAX(FI2.Item) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''2-TERCEIROS'' GROUP BY Codigo)');
                     SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                     SQL.Add('SELECT *');
                     SQL.Add('FROM #TEMP');
                     SQL.Add('WHERE round(Qtde_Saldo, 3) > 0');
                     SQL.Add('ORDER BY Estoque, Codigo');
                     SQL.Add('DROP TABLE #TEMP');
                     ParamByName('pData').AsDate := mDataEstoqueF;
                     //SQL.SaveToFile('c:\temp\SPED_FISCAL_FichaEstoque.sql');
                     Open;
                end;
             end else begin
                EstoqueAntigo;
             end;
          End;

          // BLOCO 0: (Abertura, Identificação e Referências).
          Registro0000;
          Registro0001;
                      if Empresas.FieldByName('Tipo_Atividade').AsInteger = 0 then begin
                         Registro0002;
                      end;
                      Registro0005;
                      Registro0015;
                      Registro0100;
                      Registro0150;
                                  //Registro0175;
                      Registro0190;
                      Registro0200;
                                  //Registro0205;
                                  //Registro0206;
                                  //Registro0220;
                      Registro0300;
                                  //Registro0305
                      Registro0400;
                      Registro0450;
                      Registro0460;
                      Registro0500;
                      Registro0600;
          Registro0990;

          // BLOCO C: (ESCRITURAÇÃO E APURAÇÃO DO ISS).
          RegistroB001;
          RegistroB990;

          // BLOCO C: (Documentos Fiscais I – Mercadorias (ICMS/IPI).
          RegistroC001;
                      RegistroC100;
                                  //RegistroC101;
                                  //RegistroC105;
                                  //RegistroC110;
                                                 //RegistroC111;
                                                 //RegistroC112;
                                                 //RegistroC113;
                                                 //RegistroC114;
                                                 //RegistroC115;
                                  //RegistroC120;
                                  //RegistroC130;
                                  //RegistroC140;
                                                 //RegistroC141;
                                  //RegistroC160;
                                  //RegistroC165;
                                  //RegistroC170;
                                                //RegistroC171;
                                                //RegistroC172;
                                                //RegistroC173;
                                                //RegistroC174;
                                                //RegistroC175;
                                                //RegistroC176;
                                                //RegistroC177;
                                                //RegistroC178;
                                                //RegistroC179;
                                  //RegistroC190;
                                                //RegistroC195;
                                                               //RegistroC197;
                      RegistroC500;
                                  //RegistroC510;
                                                //RegistroC590;
                      //RegistroC600;
                                  //RegistroC601;
                                  //RegistroC610;
                                  //RegistroC690;
                      //RegistroC700;
                                  //RegistroC790;
                                                 //RegistroC791;
          RegistroC990;

          // BLOCO D: (Documentos Fiscais II – Serviços (ICMS).
          RegistroD001;
                       RegistroD100;
                                  //RegistroD110;
                                                 //RegistroD120;
                                  //RegistroD130;
                                  //RegistroD140;
                                  //RegistroD150;
                                  //RegistroD160;
                                                 //RegistroD161;
                                                 //RegistroD162;
                                  //RegistroD170;
                                  //RegistroD180;
                                  //RegistroD190;
                       //RegistroD400;
                                  //RegistroD410;
                                                 //RegistroD411;
                                  //RegistroD420;
                       RegistroD500;
                                  //RegistroD510;
                                  //RegistroD530;
                                  //RegistroD590;
                       //RegistroD600;
                                  //RegistroD610;
                                  //RegistroD690;
                       //RegistroD695;
                                  //RegistroD696;
                                                 //RegistroD697;
          RegistroD990;

          // BLOCO E: (Apuração do ICMS e do IPI).
          // ICMS.
          RegistroE001;
                      //RegistroE100;
                                  //RegistroE110;
                                                 //RegistroE111;
                                                                //RegistroE112;
                                                                //RegistroE113;
                                                 //RegistroE115;
                                                 //RegistroE116;
                      //RegistroE200;
                                  //RegistroE210;
                                                 //RegistroE220;
                                                 //RegistroE240;
                                                 //RegistroE240;
                                                 //RegistroE250;
                      //RegistroE300;
                                  //RegistroE310;

          // IPI.
                      //RegistroE500;
                                  //RegistroE510;
                                  //RegistroE520;
                                              //RegistroE530;
          RegistroE990;

          // BLOCO G: CIAP.
          RegistroG001;
                      //RegistroG110;
                                    // RegistroG125;
                                                   // RegistroG130;
                                                                  // RegistroG140;

          RegistroG990;

          // BLOCO H: Inventario fisico.
          RegistroH001;
                      //RegistroH005;
                                     //RegistroH010
          RegistroH990;

          // BLOCO K: Controle da produção e do estoque.
          RegistroK001;
                      //RegistroK010;
                      //RegistroK100;
                                     //RegistroK200;
                                     //RegistroK220;
                                     //RegistroK230;
                                                   //RegistroK235;
                                     //RegistroK250;
                                                   //RegistroK255;
          RegistroK990;

          // BLOCO 1: OUTRAS INFORMAÇÕES.
          Registro1001;
                    if cBloco1.ItemIndex = 0 then begin
                       //Registro1010;
                       //Registro1100;
                                  //Registro1105;
                                            //Registro1110;
                    end;

          if cReg1400.Checked then Registro1400;
          if cReg1601.Checked then Registro1601;

          Registro1900;
          Registro1990;

          // BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL.
          Registro9001;
          Registro9900;

          try
             closefile(Arquivo);
          except

          end;

          Janela_ProcessamentoSPED.Close;
          Screen.Cursor := crDefault;

          If Funcoes.Cancelado then begin
             ShowMessage('Operação cancelada pelo usuário, Arquivo incompleto.');
             Abort;
          End;

          Impressao_Visualizar                 := TImpressao_Visualizar.Create(Self);
          Impressao_Visualizar.cMemo.Font.Name := 'Courier New';
          Impressao_Visualizar.mArquivo        := Copy(mNomeArq, 1, Pos('_0001', mNomeArq));
          Impressao_Visualizar.mNome           := Copy(mNomeArq, 1, Pos('_0001', mNomeArq));
          Impressao_Visualizar.mTitulo         := 'Registro de envio ao SPED FISCAL';
          Impressao_Visualizar.mPaginas        := 1;
          Impressao_Visualizar.mPag            := 1;
          Impressao_Visualizar.ShowModal;
     end;
end;

{* REGISTRO 0000 -  "Abertura do Arquivo digital e identificacao da entidade. * }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0000;
begin
      Progresso1('Registro: 0000...', 1);

      With Dados, dmFiscal do begin
           mRegistro := '|0000' +                                                                 // 01 - REG.
                        '|'+ PoeZero(3, cVersao.AsInteger )  +                                    // 02 - Codigo Versao Layout.
                        '|'+ InttoStr(cFinalidade.ItemIndex) +                                    // 03 - Codigo da finalidade do arquivo.
                        '|'+ mDataIni +                                                           // 04 - Data inicial dos dados.
                        '|'+ mDataFim +                                                           // 05 - Data final dos dados.
                        '|'+ Trim(EmpresasRazao_Social.Value) +                                   // 06 - Nome empresarial da entidade.
                        '|'+ EmpresasCNPJ.Value +                                                 // 07 - CNPJ da entidade.
                        '|'+                                                                      // 08 - CPF.
                        '|'+ EmpresasEstado.Value +                                               // 09 - Estado da empresa.
                        '|'+ Trim(EmpresasIE.Value) +                                             // 10 - Inscricao estadual.
                        '|'+ PoeZero(7, EmpresasMunicipio_Codigo.AsInteger)+                      // 11 - Codigo do Municipio da tabela do IBGE.
                        '|'+ Trim(EmpresasIM.AsString);                                           // 12 - Inscricao Municipal.
           If EmpresasInscricao_SUFRAMA.Value <> '' then
              mRegistro := mRegistro + '|'+PoeZero(9,EmpresasInscricao_SUFRAMA.AsInteger)         // 13 - Inscricao SUFRAMA.
           else
              mRegistro := mRegistro + '|';
           mRegistro := mRegistro + '|' + Trim(EmpresasPerfil_SPED.AsString) +                    // 14 - Perfil apresentação.
                                    '|' + Trim(EmpresasTipo_Atividade.AsString)+'|';              // 15 - Tipo de atividade.
           Say( mLinha, 000, Arquivo, mRegistro );
           Inc(mQtdeBloco0);
           Inc(mQtdeReg0000);
      End;
end;

{* REGISTRO 0001 - ABERTURA DO BLOCO 0. * }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0001;
begin
      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|0001' );                                   // 01 - REG.
      Say( mLinha, 004, Arquivo, '|0|' );                                     // 02 - Indicador de movimento.
      Inc(mQtdeReg0001);
      Inc(mQtdeBloco0);
end;

{* REGISTRO 0002 - CLASSIFICAÇÃO DO ESTABELECIMENTO INDUSTRIAL OU EQUIPARADO A INDUSTRIAL. * }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0002;
begin
      Inc(mLinha);
      Say( mLinha, 000, Arquivo, '|0002' );                                                                        // 01 - REG.
      Say( mLinha, 004, Arquivo, '|'+ Dados.Empresas.FieldByName('Classificacao_ContribIPI').AsString + '|' );     // 02 - Informar a classificação do estabelecimento.
      Inc(mQtdeReg0002);
      Inc(mQtdeBloco0);
end;

{* REGISTRO 0005 - DADOS COMPLEMENTARES DA ENTIDADE. *}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0005;
begin
      With Dados, dmFiscal do begin
           Inc(mLinha);
           mRegistro := '';
           mRegistro := '|0005' +                                             // 01 - REG.
                        '|'+ Trim(EmpresasRazao_Social.Value) +               // 02 - Nome Fantasia da empresa.
                        '|'+ EmpresasCEP.AsString +                           // 03 - CEP.
                        '|'+ Trim(EmpresasRua.Value) +                        // 04 - Nome da Rua.
                        '|'+ Trim(EmpresasRua_Numero.AsString) +              // 05 - Nome da Rua.
                        '|'+ Trim(EmpresasComplemento.Value) +                // 06 - Dados complementares.
                        '|'+ Trim(EmpresasBairro.Value) +                     // 07 - Bairro em que o imvoel esta situado.
                        '|'+ Trim(EmpresasTelefone1.AsString) +               // 08 - Numero do Telefone (DDD+Numero).
                        '|'+ Trim(EmpresasFAX.AsString) +                     // 09 - Numero do FAX (DDD+Numero).
                        '|'+ Trim(EmpresasEMail.AsString)+'|';                // 10 - Numero do FAX (DDD+Numero).

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeReg0005);
           Inc(mQtdeBloco0);

           Application.ProcessMessages;
      End;
end;

{* REGISTRO 0015 - DADOS DO CONTRIBUINTE SUBSTITUTO. *}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0015;
begin
       With Dados, dmFiscal do begin
            ICMS.SQL.Clear;
            ICMS.SQL.Add('SELECT *');
            ICMS.SQL.Add('FROM ICMS');
            ICMS.SQL.Add('WHERE (LTRIM(RTRIM(Inscricao)) <> '''') ');
            ICMS.SQL.Add('  AND (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE NotasFiscais.Estado = ICMS.UF AND YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes AND Cancelada <> 1 AND Nfe_Denegada <> 1) > 0');
            ICMS.ParamByName('pAno').AsInteger := cAno.AsInteger;
            ICMS.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
            ICMS.Open;

            If ICMS.RecordCount <> 0 then begin
               Inc(mLinha);
               mRegistro := '';
               mRegistro := '|0015' +                                           // 01 - REG.
                            '|'+ ICMSUF.Value +                                 // 02 - Sigla da Unidade da federação
                            '|'+ Trim(ICMSInscricao.Value)+'|';                 // 03 - Inscrição estadual do contribuinte substituto.
               Say( mLinha, 000, Arquivo, mRegistro );

               Inc(mQtdeReg0015);
               Inc(mQtdeBloco0);
            End;
       End;
end;

{* REGISTRO 0100 - DADOS DO CONTABILISTA. *}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0100;
begin
      With Dados, dmFiscal do begin
           Inc(mLinha);
           mCPF := RemoveCaracter('-','', EmpresasContador_CPF.Value);
           mCPF := RemoveCaracter('.','', mCPF);
           mRegistro := '|0100' +                                                    // 01 - REG.
                        '|'+ Trim(EmpresasContador_Nome.Value) +                     // 02 - Nome.
                        '|'+ Trim(mCPF) +                                            // 03 - CPF.
                        '|'+ Trim(EmpresasContador_CRC.Value) +                      // 04 - CRC.
                        '|'+ Trim(EmpresasContador_CNPJ.Value) +                     // 05 - CNPJ.
                        '|'+ Trim(EmpresasContador_CEP.Value) +                      // 06 - CEP.
                        '|'+ Trim(Copy(EmpresasContador_Rua.Value, 1, 60)) +         // 07 - Rua.
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
end;

{* REGISTRO 0150 - CADASTRO DO PARTICIPANTE. *}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0150;
var
   cod:integer;
   lista
  ,mIE:wideString;
   mDataI
  ,mDataF:TDate;
begin
      mDataI := strtodate('01/' + PoeZero(2,cMes.ItemIndex+1) +'/'+ PoeZero(4, cAno.AsInteger));
      mDataF := UltimoDiaMes(mDataI);

      With Dados, dmFiscal do begin
           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT DISTINCT Cliente_Codigo AS Codigo,');
           tNotas.SQL.Add('                ''C'' AS Tipo,');
           tNotas.SQL.Add('                Clientes.Nome,');
           tNotas.SQL.Add('                Clientes.CPF,');
           tNotas.SQL.Add('                Clientes.CNPJ,');
           tNotas.SQL.Add('                Clientes.Inscricao_Estadual,');
           tNotas.SQL.Add('                Clientes.Municipio_Codigo,');
           tNotas.SQL.Add('                ISNULL(Clientes.Pais, 0) AS Pais, ');
           tNotas.SQL.Add('                Clientes.SUFRAMA,');
           tNotas.SQL.Add('                Clientes.Rua,');
           tNotas.SQL.Add('                Clientes.Rua_Numero,');
           tNotas.SQL.Add('                Clientes.Bairro');
           tNotas.SQL.Add('INTO #Temp');
           tNotas.SQL.Add('FROM NotasFiscais, Clientes');
           tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cliente_Codigo <> 0) AND (Clientes.Codigo = NotasFiscais.Cliente_Codigo) AND (Cancelada <> 1) AND (ISNULL(NFe_Denegada,0) = 0)' );
           tNotas.SQL.Add('UNION');
           tNotas.SQL.Add('SELECT DISTINCT Fornecedor_Codigo,');
           tNotas.SQL.Add('                ''F'',');
           tNotas.SQL.Add('                Fornecedores.Nome,');
           tNotas.SQL.Add('                Fornecedores.CPF,');
           tNotas.SQL.Add('                Fornecedores.CNPJ,');
           tNotas.SQL.Add('                Fornecedores.Inscricao_Estadual,');
           tNotas.SQL.Add('                Fornecedores.Municipio_Codigo,');
           tNotas.SQL.Add('                ISNULL(Fornecedores.Pais, 0), Fornecedores.SUFRAMA, Fornecedores.Rua, Fornecedores.Rua_Numero, Fornecedores.Bairro');
           tNotas.SQL.Add('FROM NotasFiscais, Fornecedores');
           tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Fornecedor_Codigo <> 0) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo) AND (ISNULL(NFe_Denegada,0) = 0)' );
           tNotas.SQL.Add('UNION');
           tNotas.SQL.Add('SELECT DISTINCT Fornecedor,');
           tNotas.SQL.Add('                ''F'',');
           tNotas.SQL.Add('                Fornecedores.Nome,');
           tNotas.SQL.Add('                Fornecedores.CPF,');
           tNotas.SQL.Add('                Fornecedores.CNPJ,');
           tNotas.SQL.Add('                Fornecedores.Inscricao_Estadual,');
           tNotas.SQL.Add('                Fornecedores.Municipio_Codigo,');
           tNotas.SQL.Add('                ISNULL(Fornecedores.Pais, 0), Fornecedores.SUFRAMA, Fornecedores.Rua, Fornecedores.Rua_Numero, Fornecedores.Bairro');
           tNotas.SQL.Add('FROM NotasTerceiros, Fornecedores');
           tNotas.SQL.Add('WHERE ( YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Fornecedores.Codigo = NotasTerceiros.Fornecedor) AND (ISNULL(Provisoria, 0) <> 1) AND (ISNULL(Desdobramento, 0) <> 1)' );
           tNotas.SQL.Add('AND   ISNULL(Servico, '''') = '''' ');
           tNotas.SQL.Add('UNION');
           tNotas.SQL.Add('SELECT DISTINCT Fornecedor,');
           tNotas.SQL.Add('                ''F'',');
           tNotas.SQL.Add('                Fornecedores.Nome,');
           tNotas.SQL.Add('                Fornecedores.CPF,');
           tNotas.SQL.Add('                Fornecedores.CNPJ,');
           tNotas.SQL.Add('                Fornecedores.Inscricao_Estadual,');
           tNotas.SQL.Add('                Fornecedores.Municipio_Codigo,');
           tNotas.SQL.Add('                ISNULL(Fornecedores.Pais, 0), Fornecedores.SUFRAMA, Fornecedores.Rua, Fornecedores.Rua_Numero, Fornecedores.Bairro');
           tNotas.SQL.Add('FROM NotasTerceiros, Fornecedores');
           tNotas.SQL.Add('WHERE ( YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Fornecedores.Codigo = NotasTerceiros.Fornecedor) AND (ISNULL(Provisoria, 0) <> 1) AND (ISNULL(Desdobramento, 0) <> 1)' );
           tNotas.SQL.Add('AND ISNULL(Servico, '''') <> '''' ');
           tNotas.SQL.Add('AND Modelo IN(''07'',''08'',''8B'',''09'',''10'',''11'',''26'',''27'',''57'', ''67'') ');

           // INVENTARIO.
           if EmpresasMenu_Inventario.AsBoolean then begin
              if cInventario.ItemIndex <> 3 then begin
                 tFichaInventario.First;
                 lista := '';
                 cod   := 0;
                 while not tFichaInventario.eof do begin
                       if tFichaInventario.FieldByName('Tipo').asString = 'F' then begin
                          if (cod <> tFichaInventario.FieldByName('Destinatario_Codigo').Asinteger) and (copy(tFichaInventario.FieldByName('Estoque').Asstring,1,1) <> '0') then begin
                             if Trim(Lista) <> '' then Lista := Lista + ',';
                             lista := lista + tFichaInventario.FieldByName('Destinatario_Codigo').AsString;
                             cod   := tFichaInventario.FieldByName('Destinatario_Codigo').Asinteger;
                          end;
                       end;
                       tFichaInventario.Next;
                 end;
                 if Trim(Lista) <> '' then begin
                    Lista := '('+Lista+')';
                    tNotas.SQL.Add('UNION ALL');
                    tNotas.SQL.Add('SELECT Codigo');
                    tNotas.SQL.Add('      ,''F''');
                    tNotas.SQL.Add('      ,Nome');
                    tNotas.SQL.Add('      ,CPF');
                    tNotas.SQL.Add('      ,CNPJ');
                    tNotas.SQL.Add('      ,Inscricao_Estadual');
                    tNotas.SQL.Add('      ,Municipio_Codigo');
                    tNotas.SQL.Add('      ,Pais');
                    tNotas.SQL.Add('      ,SUFRAMA');
                    tNotas.SQL.Add('      ,Rua');
                    tNotas.SQL.Add('      ,Rua_Numero');
                    tNotas.SQL.Add('      ,Bairro');
                    tNotas.SQL.Add('FROM   Fornecedores');
                    tNotas.SQL.Add('WHERE  Codigo IN '+lista);
                 end;
                 tFichaInventario.First;
                 lista := '';
                 cod   := 0;
                 while not tFichaInventario.eof do begin
                       if tFichaInventario.FieldByName('Tipo').asString = 'C' then begin
                          if (cod <> tFichaInventario.FieldByName('Destinatario_Codigo').Asinteger) and (copy(tFichaInventario.FieldByName('Estoque').Asstring,1,1) <> '0') then begin
                             if Trim(Lista) <> '' then Lista := Lista + ',';
                             lista := lista + tFichaInventario.FieldByName('Destinatario_Codigo').AsString;
                             cod   := tFichaInventario.FieldByName('Destinatario_Codigo').Asinteger;
                          end;
                       end;
                       tFichaInventario.Next;
                 end;
                 if Trim(Lista) <> '' then begin
                    Lista := '('+Lista+')';
                    tNotas.SQL.Add('UNION ALL');
                    tNotas.SQL.Add('SELECT Codigo');
                    tNotas.SQL.Add('      ,''C''');
                    tNotas.SQL.Add('      ,Nome');
                    tNotas.SQL.Add('      ,CPF');
                    tNotas.SQL.Add('      ,CNPJ');
                    tNotas.SQL.Add('      ,Inscricao_Estadual');
                    tNotas.SQL.Add('      ,Municipio_Codigo');
                    tNotas.SQL.Add('      ,Pais');
                    tNotas.SQL.Add('      ,SUFRAMA');
                    tNotas.SQL.Add('      ,Rua');
                    tNotas.SQL.Add('      ,Rua_Numero');
                    tNotas.SQL.Add('      ,Bairro');
                    tNotas.SQL.Add('FROM   Clientes');
                    tNotas.SQL.Add('WHERE  Codigo IN '+lista);
                 end;
              end;

              // ESTOQUE.
              If cEstoque.ItemIndex <> 3 then begin
                 tFichaEstoque.First;
                 lista := '';
                 cod   := 0;
                 while not tFichaEstoque.eof do begin
                       if tFichaEstoque.FieldByName('Tipo').asString = 'F' then begin
                          if (cod <> tFichaEstoque.FieldByName('Destinatario_Codigo').Asinteger) and (copy(tFichaEstoque.FieldByName('Estoque').Asstring,1,1) <> '0') then begin
                             if Trim(Lista) <> '' then Lista := Lista + ',';
                             lista := lista + tFichaEstoque.FieldByName('Destinatario_Codigo').AsString;
                             cod   := tFichaEstoque.FieldByName('Destinatario_Codigo').Asinteger;
                          end;
                       end;
                       tFichaEstoque.Next;
                 end;
                 if Trim(Lista) <> '' then begin
                    Lista := '('+Lista+')';
                    tNotas.SQL.Add('UNION ALL');
                    tNotas.SQL.Add('SELECT Codigo');
                    tNotas.SQL.Add('      ,''F''');
                    tNotas.SQL.Add('      ,Nome');
                    tNotas.SQL.Add('      ,CPF');
                    tNotas.SQL.Add('      ,CNPJ');
                    tNotas.SQL.Add('      ,Inscricao_Estadual');
                    tNotas.SQL.Add('      ,Municipio_Codigo');
                    tNotas.SQL.Add('      ,Pais');
                    tNotas.SQL.Add('      ,SUFRAMA');
                    tNotas.SQL.Add('      ,Rua');
                    tNotas.SQL.Add('      ,Rua_Numero');
                    tNotas.SQL.Add('      ,Bairro');
                    tNotas.SQL.Add('FROM   Fornecedores');
                    tNotas.SQL.Add('WHERE  Codigo IN '+lista);
                 end;
                 tFichaEstoque.First;
                 lista := '';
                 cod   := 0;
                 while not tFichaEstoque.eof do begin
                       if tFichaEstoque.FieldByName('Tipo').asString = 'C' then begin
                          if (cod <> tFichaEstoque.FieldByName('Destinatario_Codigo').Asinteger) and (copy(tFichaEstoque.FieldByName('Estoque').Asstring,1,1) <> '0') then begin
                             if Trim(Lista) <> '' then Lista := Lista + ',';
                             lista := lista + tFichaEstoque.FieldByName('Destinatario_Codigo').AsString;
                             cod   := tFichaEstoque.FieldByName('Destinatario_Codigo').Asinteger;
                          end;
                       end;
                       tFichaEstoque.Next;
                 end;
                 if Trim(Lista) <> '' then begin
                    Lista := '('+Lista+')';
                    tNotas.SQL.Add('UNION ALL');
                    tNotas.SQL.Add('SELECT Codigo');
                    tNotas.SQL.Add('      ,''C''');
                    tNotas.SQL.Add('      ,Nome');
                    tNotas.SQL.Add('      ,CPF');
                    tNotas.SQL.Add('      ,CNPJ');
                    tNotas.SQL.Add('      ,Inscricao_Estadual');
                    tNotas.SQL.Add('      ,Municipio_Codigo');
                    tNotas.SQL.Add('      ,Pais');
                    tNotas.SQL.Add('      ,SUFRAMA');
                    tNotas.SQL.Add('      ,Rua');
                    tNotas.SQL.Add('      ,Rua_Numero');
                    tNotas.SQL.Add('      ,Bairro');
                    tNotas.SQL.Add('FROM  Clientes');
                    tNotas.SQL.Add('WHERE Codigo IN '+lista);
                 end;
              end;
           end else begin
              If cInventario.ItemIndex <> 3 then begin
                 tNotas.SQL.Add('UNION ALL');
                 tNotas.SQL.Add('SELECT DISTINCT Participante,');
                 tNotas.SQL.Add('                Tipo,');
                 tNotas.SQL.Add('                (SELECT Nome                FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CPF                 FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CNPJ                FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Inscricao_Estadual  FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Municipio_Codigo    FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                ISNULL((SELECT Pais FROM Fornecedores WHERE(Codigo = Participante)),0),');
                 tNotas.SQL.Add('                (SELECT SUFRAMA             FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua                 FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua_Numero          FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Bairro              FROM Fornecedores WHERE(Codigo = Participante))');
                 tNotas.SQL.Add('FROM  Inventario');
                 tNotas.SQL.Add('WHERE ISNULL(Participante, 0) <> 0 AND (Tipo = ''F'')');
                 tNotas.SQL.Add('UNION ALL');
                 tNotas.SQL.Add('SELECT DISTINCT Participante,');
                 tNotas.SQL.Add('                Tipo,');
                 tNotas.SQL.Add('                (SELECT Nome                FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CPF                 FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CNPJ                FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Inscricao_Estadual  FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Municipio_Codigo    FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                ISNULL((SELECT Pais FROM Clientes WHERE(Codigo = Participante)),0),');
                 tNotas.SQL.Add('                (SELECT SUFRAMA             FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua                 FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua_Numero          FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Bairro              FROM Clientes WHERE(Codigo = Participante))');
                 tNotas.SQL.Add('FROM  Inventario');
                 tNotas.SQL.Add('WHERE ISNULL(Participante, 0) <> 0 AND (Tipo = ''C'')');
              End;
              If cEstoque.ItemIndex <> 3 then begin
                 tNotas.SQL.Add('UNION ALL');
                 tNotas.SQL.Add('SELECT DISTINCT Participante,');
                 tNotas.SQL.Add('                Tipo,');
                 tNotas.SQL.Add('                (SELECT Nome                FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CPF                 FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CNPJ                FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Inscricao_Estadual  FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Municipio_Codigo    FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                ISNULL((SELECT Pais         FROM Fornecedores WHERE(Codigo = Participante)),0),');
                 tNotas.SQL.Add('                (SELECT SUFRAMA             FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua                 FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua_Numero          FROM Fornecedores WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Bairro              FROM Fornecedores WHERE(Codigo = Participante))');
                 tNotas.SQL.Add('FROM  Estoque');
                 tNotas.SQL.Add('WHERE ISNULL(Participante, 0) <> 0 AND (Tipo = ''F'')');
                 tNotas.SQL.Add('UNION ALL');
                 tNotas.SQL.Add('SELECT DISTINCT Participante,');
                 tNotas.SQL.Add('                Tipo,');
                 tNotas.SQL.Add('                (SELECT Nome                FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CPF                 FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT CNPJ                FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Inscricao_Estadual  FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Municipio_Codigo    FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                ISNULL((SELECT Pais FROM Clientes WHERE(Codigo = Participante)),0),');
                 tNotas.SQL.Add('                (SELECT SUFRAMA             FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua                 FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Rua_Numero          FROM Clientes WHERE(Codigo = Participante)),');
                 tNotas.SQL.Add('                (SELECT Bairro              FROM Clientes WHERE(Codigo = Participante))');
                 tNotas.SQL.Add('FROM  Estoque');
                 tNotas.SQL.Add('WHERE ISNULL(Participante, 0) <> 0 AND (Tipo = ''C'')');
              end;
           end;

           if (cBloco1.ItemIndex = 0) and (cReg1601.Checked) then begin
              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT DISTINCT ME.Fornecedor_Codigo');
              tNotas.SQL.Add('               ,Tipo   = ''F'' ');
              tNotas.SQL.Add('               ,ME.Fornecedor_Nome');
              tNotas.SQL.Add('               ,NULL');
              tNotas.SQL.Add('               ,Fornecedor_CNPJ');
              tNotas.SQL.Add('               ,Fornecedor_Inscricao');
              tNotas.SQL.Add('               ,(SELECT Municipio_Codigo FROM Fornecedores WHERE Codigo = Fornecedor_Codigo)');
              tNotas.SQL.Add('               ,(SELECT Pais FROM Fornecedores WHERE Codigo = Fornecedor_Codigo)');
              tNotas.SQL.Add('               ,NULL');
              tNotas.SQL.Add('               ,(SELECT Rua FROM Fornecedores WHERE Codigo = Fornecedor_Codigo)');
              tNotas.SQL.Add('               ,(SELECT Rua_Numero FROM Fornecedores WHERE Codigo = Fornecedor_Codigo)');
              tNotas.SQL.Add('               ,(SELECT Bairro FROM Fornecedores WHERE Codigo = Fornecedor_Codigo)');
              tNotas.SQL.Add('FROM MemorandoExportacao ME');
              tNotas.SQL.Add('WHERE Processo IN( SELECT Processo FROM MemorandoExportacao ME WHERE MONTH(ME.Data_Emissao) = :pMes AND YEAR(ME.Data_Emissao) = :pAno');
              tNotas.SQL.Add('                   AND (SELECT Natureza_Exportacao FROM ProcessosDocumentos PD WHERE PD.Processo = ME.Processo) = 0)');
           end;
           
           if cReg1601.Checked then begin  // 08: 07 - 1601 - Realizou vendas com Cartão de Crédito ou de débito.
              tNotas.SQL.Add('union all');
              tNotas.SQL.Add('select Fornecedor_Codigo = prb.Banco');
              tNotas.SQL.Add('      ,Tipo              = ''B'' ');
              tNotas.SQL.Add('      ,Fornecedor_Nome   = (select Nome from Bancos where Codigo = prb.Banco)');
              tNotas.SQL.Add('      ,null');
              tNotas.SQL.Add('      ,(select CNPJ                from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select Inscricao_Estadual  from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select Municipio_Codigo    from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select Pais                from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select SUFRAMA             from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select Rua                 from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select Rua_Numero          from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('      ,(select Bairro              from Fornecedores where Codigo = (select Conta_Fornecedor from Bancos bc where bc.Codigo = prb.Banco))');
              tNotas.SQL.Add('from  PagarReceberBaixas prb');
              tNotas.SQL.Add('inner join PagarReceber pr on pr.Numero = prb.Numero');
              tNotas.SQL.Add('inner join ClassificacaoFinanceira cf on cf.Codigo = pr.Classificacao');
              tNotas.SQL.Add('where prb.data between :pDataIni and :pDataFim');
              tNotas.SQL.Add('and   prb.Tipo = ''R'' ');
              tNotas.SQL.Add('and   isnull(prb.Banco, 0)> 0');
              tNotas.SQL.Add('and   cf.Tipo_Documento in(''NF'', ''NFS'')');
              tNotas.ParamByName('pDataIni').AsDate := mDataI;
              tNotas.ParamByName('pDataFim').AsDate := mDataF;
           end;
           
           tNotas.SQL.Add('select distinct * from #Temp');
           tNotas.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tNotas.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           //tNotas.SQL.SaveToFile('c:\temp\SPED_FISCAL_Registro0150.SQL');
           tNotas.Open;

           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0150...';

           If tNotas.RecordCount <> 0 then begin
              tNotas.First;
              While (not tNotas.Eof) and (not Funcoes.Cancelado) do begin
                    Inc(mLinha);

                    mCPF  := RemoveCaracter('-','', tNotas.FieldByName('CPF').AsString);
                    mCPF  := RemoveCaracter('.','', mCPF);
                    mCNPJ := RemoveCaracter('-','',tNotas.FieldByName('CNPJ').AsString);
                    mCNPJ := RemoveCaracter('.','', mCNPJ);
                    mIE   := RemoveCaracter('.','', tNotas.FieldByName('Inscricao_Estadual').AsString);
                    mIE   := RemoveCaracter('-','', mIE);

                    mRegistro := '';
                    mRegistro := '|0150' +                                                                                     // 01 - REG.
                                 '|'+ Trim(tNotas.FieldByName('Codigo').AsString)+Trim(tNotas.FieldByName('Tipo').AsString) +  // 02 - Código de indentificação do participante.
                                 '|'+ Trim(tNotas.FieldByName('Nome').AsString) +                                              // 03 - Nome do cliente.
                                 '|'+ tNotas.FieldByName('Pais').AsString +                                                    // 04 - Codigo do País.
                                 '|'+ Trim(mCNPJ) +                                                                            // 05 - CNPJ.
                                 '|'+ Trim(mCPF) +                                                                             // 06 - CPF.
                                 '|'+ Trim(mIE) +                                                                              // 07 - Inscrição estadual.
                                 '|'+ Trim(tNotas.FieldByName('Municipio_Codigo').AsString) +                                  // 08 - Codigo do município.
                                 '|'+ Trim(tNotas.FieldByName('SUFRAMA').AsString)+                                            // 09 - Codigo SUFRAMA.
                                 '|'+ Trim(tNotas.FieldByName('Rua').AsString)+                                                // 10 - Endereço.
                                 '|'+ Trim(tNotas.FieldByName('Rua_Numero').AsString)+                                         // 11 - Numero do imovel
                                 '|'+                                                                                          // 12 - Complemento.
                                 '|'+ Trim(tNotas.FieldByName('Bairro').AsString)+                                             // 13 - Bairro.
                                 '|';
                    Say( mLinha, 000, Arquivo, mRegistro );

                    Inc(mQtdeReg0150);
                    Inc(mQtdeBloco0);

                    tNotas.Next;
                    Application.ProcessMessages;
                    Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
              End;
           End;
      End;
end;

{* REGISTRO 0190 - IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA *}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0190;
begin
      With Dados, dmFiscal do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT DISTINCT Unidade_Medida = Unidade_Medida COLLATE SQL_Latin1_General_CP1_CI_AS');
           tItens.SQL.Add('INTO   #TEMP');
           tItens.SQL.Add('FROM   NotasTerceirosItens, NotasTerceiros');
           tItens.SQL.Add('WHERE (YEAR(NotasTerceirosItens.Data_Entrada) = :pAno AND MONTH(NotasTerceirosItens.Data_Entrada) = :pMes) AND (NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceiros.Provisoria <> 1)');
           tItens.SQL.Add('      AND NotasTerceiros.Modelo IN(''01'', ''1B'', ''04'', ''55'')' );
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT DISTINCT ''UN'' FROM NotasTerceiros');
           tItens.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Servico IS NOT NULL) AND (Provisoria <> 1) AND (ISNULL(Desdobramento,0) = 0)');
           If not EmpresasMenu_Inventario.AsBoolean then begin
              If cInventario.ItemIndex <> 3 then begin
                 tItens.SQL.Add('UNION ALL');
                 tItens.SQL.Add('SELECT DISTINCT Unidade');
                 tItens.SQL.Add('FROM   Inventario');
                 tItens.SQL.Add('WHERE  (Unidade IS NOT NULL)');
              End;
              If cEstoque.ItemIndex <> 3 then begin
                 tItens.SQL.Add('UNION ALL');
                 tItens.SQL.Add('SELECT DISTINCT Unidade');
                 tItens.SQL.Add('FROM   Estoque');
                 tItens.SQL.Add('WHERE  (Unidade IS NOT NULL)');
              End;
           end else begin
              if cInventario.ItemIndex <> 3 then begin
                 tItens.SQL.Add('UNION ALL');
                 tItens.SQL.Add('SELECT DISTINCT UM');
                 tItens.SQL.Add('FROM   FichaInventario FI1');
                 tItens.SQL.Add('WHERE  Data IN(SELECT MAX(FI2.Data) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pDataInv GROUP BY Codigo)');
                 tItens.SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pDataInv GROUP BY Codigo)');
                 tItens.SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                 tItens.SQL.Add('  AND  Qtde_Saldo > 0');
                 tItens.ParamByName('pDataInv').AsDate := mDataInventF;
              end;
              if cEstoque.ItemIndex <> 3 then begin
                 tItens.SQL.Add('UNION ALL');
                 tItens.SQL.Add('SELECT DISTINCT UM');
                 tItens.SQL.Add('FROM   FichaEstoque FI1');
                 tItens.SQL.Add('WHERE  Data IN(SELECT MAX(FI2.Data) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pDataEst GROUP BY Codigo)');
                 tItens.SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pDataEst GROUP BY Codigo)');
                 tItens.SQL.Add('  AND  Qtde_Saldo > 0');
                 tItens.SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');
                 tItens.ParamByName('pDataEst').Value := mDataEstoqueF;
              end;
           end;

           if cBloco1.ItemIndex = 0 then begin
              tItens.SQL.Add('UNION ALL');
              tItens.SQL.Add('SELECT Unidade_Medida');
              tItens.SQL.Add('FROM  NotasItens NI');
              tItens.SQL.Add('WHERE Processo IN( SELECT Processo FROM MemorandoExportacao ME WHERE MONTH(ME.Data_Emissao) = :pMes AND YEAR(ME.Data_Emissao) = :pAno');
              tItens.SQL.Add('                   AND (SELECT Natureza_Exportacao FROM ProcessosDocumentos PD WHERE PD.Processo = ME.Processo) = 0)');
              tItens.SQL.Add('AND   Saida_Entrada = 1');
              tItens.SQL.Add('AND   ISNULL(Cancelada, 0) = 0');
              tItens.SQL.Add('AND   ISNULL(NI.Nfe_Denegada, 0) = 0');
              tItens.SQL.Add('AND   ISNULL(Movimenta_Estoque, 0) = 1');
           end;

           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT Unidade_Medida');
           tItens.SQL.Add('from  NotasItens NI, NotasFiscais NF');
           tItens.SQL.Add('where NF.Numero = NI.Nota');
           tItens.SQL.Add('and   NF.Data_Emissao = NI.Data');
           tItens.SQL.Add('and   year(Data) = :pAno');
           tItens.SQL.Add('and   month(Data) = :pMes');
           tItens.SQL.Add('and   NF.Incentivo_Fiscal  = ''FUNDAP'' ');
           tItens.SQL.Add('and   NI.Valor_ICMSOper > 0');
           tItens.SQL.Add('and   NF.Cancelada <> 1');
           tItens.SQL.Add('and   NF.Nfe_Denegada <> 1');

           tItens.SQL.Add('SELECT DISTINCT Unidade_Medida');
           tItens.SQL.Add('               ,Descricao = (SELECT MAX(Descricao) FROM Cybersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = Unidade_Medida)');
           tItens.SQL.Add('FROM   #TEMP');
           tItens.SQL.Add('WHERE ISNULL(Unidade_Medida, '''') <> '''' ');
           tItens.SQL.Add('ORDER  BY Unidade_Medida');
           tItens.SQL.Add('DROP TABLE #TEMP');
           tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           //tItens.SQL.SavetoFile('c:\temp\SPED_FISCAL_Registro0190.sql');
           tItens.Open;
           
           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0190...';

           While (not tItens.Eof) and (not Funcoes.Cancelado)  do begin
                 Inc(mLinha);

                 mRegistro := '|0190' +                                                       // 01 - REG.
                              '|'+ Trim(tItens.FieldByName('Unidade_Medida').AsString) +      // 02 - Codigo da unidade de memdida.
                              '|'+ Trim(tItens.FieldByName('Descricao').AsString)+'|';        // 03 - Descrição da unidade de memdida.

                 Say(mLinha, 000, Arquivo, mRegistro);

                 Inc(mQtdeReg0190);
                 Inc(mQtdeBloco0);

                 tItens.Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           End;
      End;
end;

{* REGISTRO 0200 - TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS).*}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0200;
Var
   mDescricao: WideString;
   mCodigo: Integer;
begin
      With Dados, dmFiscal do begin
           with tItens do begin
                sql.clear;
                sql.add('select Codigo_Mercadoria AS Codigo,');
                sql.add('       Produtos.Codigo_Fabricante,');
                sql.add('       Produtos.Descricao_Reduzida,');
                sql.add('       CAST(Descricao_Mercadoria AS VARCHAR(5000)) COLLATE SQL_Latin1_General_CP1_CI_AS AS Descricao,');
                sql.add('       Unidade_Medida COLLATE SQL_Latin1_General_CP1_CI_AS AS Unidade,');
                sql.add('       CASE WHEN ISNULL(NotasTerceirosItens.NCM, '''') = '''' THEN ''99999999'' ELSE NotasTerceirosItens.NCM END COLLATE SQL_Latin1_General_CP1_CI_AS AS NCM,');
                sql.add('       0 AS ICMS,');
                sql.add('       Produtos.Tipo_Item,');
                sql.add('       QTDE = 1');
                sql.add('into #Temp');
                sql.add('from NotasTerceirosItens, Produtos, NotasTerceiros');
                sql.add('where (year(NotasTerceirosItens.Data_Entrada) = :pAno and month(NotasTerceirosItens.Data_Entrada) = :pMes) and (NotasTerceiros.Nota = NotasTerceirosItens.Nota) and (NotasTerceiros.Data_Emissao = NotasTerceirosItens.Data_Emissao)');
                sql.add('and (Provisoria <> 1) and (Produtos.Codigo = NotasTerceirosItens.Codigo_Mercadoria)');
                sql.add('and NotasTerceiros.Modelo in(''01'', ''1B'', ''04'', ''55'')');

                if cInventario.ItemIndex <> 3 then begin
                   sql.add('-- MERCADORIA PRÓPRIA.');
                   sql.add('union all');
                   sql.add('select FI1.Codigo');
                   sql.add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Produtos.Codigo = FI1.Codigo)');
                   sql.add('      ,Historico = '''' ');
                   sql.add('      ,cast(FI1.Descricao as varchar(5000)) as Descricao');
                   sql.add('      ,fi1.UM');
                   sql.add('      ,NCM = (select NCM from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,0 as ICMS');
                   sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,QTDE = Qtde_Saldo');
                   sql.add('from FichaInventario FI1');
                   sql.add('where Data in(select max(fi2.Data) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Data <= :pDataI group by Codigo)');
                   sql.add('and Item in(select max(fi2.Item) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Data <= :pDataI group by Codigo)');
                   sql.add('and (select Tipo_Item from Produtos prd where prd.Codigo = fi1.Codigo) in(0,1,2,3,4,5,6,10)');
                   sql.add('and Qtde_Saldo > 0');
                   sql.add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
                   sql.add('union all');
                   sql.add('select FI1.Codigo');
                   sql.add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,Historico = '''' ');
                   sql.add('      ,cast(fi1.Descricao as varchar(5000)) as Descricao');
                   sql.add('      ,fi1.UM');
                   sql.add('      ,NCM = (select NCM from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,0 as ICMS');
                   sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,QTDE = (select sum(fi2.Qtde_Saida-fi2.Qtde_Entrada) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Estoque = ''1-ARMAZEM'' and fi2.Data <= :pDataI)');
                   sql.add('from FichaInventario fi1');
                   sql.add('where fi1.Estoque = ''1-ARMAZEM'' ');
                   sql.add('and fi1.Registro is not null');
                   sql.add('and Item in(select max(FI2.Item) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Data <= :pDataI and Estoque = ''1-ARMAZEM'' group by Codigo)');
                   sql.add('and (select Tipo_Item from Produtos prd where prd.Codigo = fi1.Codigo) in(0,1,2,3,4,5,6,10)');
                   sql.add('and (select sum(fi2.Qtde_Saida-fi2.Qtde_Entrada) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Estoque = ''1-ARMAZEM'' and fi2.Data <= :pDataI) > 0');
                   sql.add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
                   sql.add('union all');
                   sql.add('select FI1.Codigo');
                   sql.add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,Historico = '''' ');
                   sql.add('      ,cast(fi1.Descricao as varchar(5000)) as Descricao');
                   sql.add('      ,fi1.UM');
                   sql.add('      ,NCM = (select NCM from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,0 as ICMS');
                   sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,QTDE = (select sum(fi2.Qtde_Entrada -fi2.Qtde_Saida) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Estoque = ''2-TERCEIROS'' and fi2.Data <= :pDataI)');
                   sql.add('from   FichaInventario FI1');
                   sql.add('where  FI1.Estoque = ''2-TERCEIROS'' ');
                   sql.add('and  fi1.Registro is not null');
                   sql.add('and  fi1.Item in(select max(fi2.Item) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Data <= :pDataI and Estoque = ''2-TERCEIROS'' group by Codigo)');
                   sql.add('and (select Tipo_Item from Produtos prd where prd.Codigo = fi1.Codigo) in(0,1,2,3,4,5,6,10)');
                   sql.add('and (select sum(fi2.Qtde_Entrada-fi2.Qtde_Saida) from FichaInventario fi2 where fi2.Codigo = fi1.Codigo and fi2.Estoque = ''2-TERCEIROS'' and fi2.Data <= :pDataI) > 0');
                   sql.add('and isnull(Qtde_Saldo, 0) > 0');
                   paramByName('pDataI').AsDate := mDataInventF;
                end;
                // ficha de estoque.
                if cEstoque.ItemIndex <> 3 then begin
                   sql.add('-- MERCADORIA PRÓPRIA.');
                   sql.add('union all');
                   sql.add('select fi1.Codigo');
                   sql.add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,''''');
                   sql.add('      ,cast(FI1.Descricao as varchar(5000)) as Descricao');
                   sql.add('      ,fi1.UM');
                   sql.add('      ,NCM = (select NCM from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,0 as ICMS');
                   sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,QTDE = isnull(Qtde_Saldo, 0)');
                   sql.add('from FichaEstoque FI1');
                   sql.add('where Data in(select max(fi2.Data) from FichaEstoque fi2 where fi2.Codigo = fi1.Codigo and fi2.Data <= :pData group by Codigo)');
                   sql.add('and item in(select max(fi2.item) from fichaestoque fi2 where fi2.codigo = fi1.codigo and fi2.data <= :pData group by codigo)');
                   sql.add('and (select Tipo_Item from Produtos prd where prd.Codigo = fi1.Codigo) in(0,1,2,3,4,5,6,10)');
                   sql.add('and isnull(Qtde_Saldo, 0) > 0');
                   sql.add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
                   sql.add('union all');
                   sql.add('select fi1.Codigo');
                   sql.add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,''''');
                   sql.add('      ,cast(FI1.Descricao as varchar(5000)) as Descricao');
                   sql.add('      ,fi1.UM');
                   sql.add('      ,NCM = (select NCM from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,0 as ICMS');
                   sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,QTDE = (select sum(fi2.qtde_saida-fi2.qtde_entrada) from fichaestoque fi2 where fi2.codigo = fi1.codigo and fi2.estoque = ''1-armazem'' and fi2.data <= :pData)');
                   sql.add('from FichaEstoque fi1');
                   sql.add('where fi1.estoque = ''1-ARMAZEM'' ');
                   sql.add('and fi1.Registro is not null');
                   sql.add('and Item in(select max(fi2.Item) from FichaEstoque fi2 where fi2.Codigo = fi1.Codigo and fi2.Data <= :pData and Estoque = ''1-ARMAZEM'' group by Codigo)');
                   sql.add('and (select Tipo_Item from Produtos prd where prd.Codigo = fi1.Codigo) in(0,1,2,3,4,5,6,10)');
                   sql.add('and (select sum(fi2.Qtde_Saida-fi2.Qtde_Entrada) from FichaEstoque fi2 where fi2.Codigo = fi1.Codigo and fi2.Estoque = ''1-ARMAZEM'' and fi2.Data <= :pData) > 0');
                   sql.add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
                   sql.add('union all');
                   sql.add('select fi1.Codigo');
                   sql.add('      ,Codigo_Fabricante = (select Codigo_Fabricante from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,''''');
                   sql.add('      ,cast(FI1.Descricao as varchar(5000)) as Descricao');
                   sql.add('      ,fi1.UM');
                   sql.add('      ,NCM = (select NCM from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,0 as ICMS');
                   sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Produtos.Codigo = fi1.Codigo)');
                   sql.add('      ,QTDE = (select sum(fi2.qtde_entrada -fi2.qtde_saida) from fichaestoque fi2 where fi2.codigo = fi1.codigo and fi2.estoque = ''2-terceiros'' and fi2.data <= :pData)');
                   sql.add('from FichaEstoque fi1');
                   sql.add('where fi1.estoque = ''2-terceiros'' ');
                   sql.add('and fi1.registro is not null');
                   sql.add('and fi1.item in(select max(fi2.item) from fichaestoque fi2 where fi2.codigo = fi1.codigo and fi2.data <= :pData and estoque = ''2-terceiros'' group by codigo)');
                   sql.add('and (select tipo_item from produtos prd where prd.codigo = fi1.codigo) in(0,1,2,3,4,5,6,10)');
                   sql.add('and (select sum(fi2.qtde_entrada -fi2.qtde_saida) from fichaestoque fi2 where fi2.codigo = fi1.codigo and fi2.estoque = ''2-terceiros'' and fi2.data <= :pData) > 0');
                   sql.add('and isnull(Qtde_Saldo, 0) > 0');
                   parambyName('pData').AsDate := mDataEstoqueF;
                end;
                if cbloco1.ItemIndex = 0 then begin
                   sql.add('union all');
                   sql.add('select Codigo = Codigo_Mercadoria');
                   sql.add('      ,Codigo_Fabricante');
                   sql.add('      ,'''' ');
                   sql.add('      ,descricao = cast(descricao_mercadoria as varchar(5000)) collate sql_latin1_general_cp1_ci_as');
                   sql.add('      ,unidade   = unidade_medida');
                   sql.add('      ,ncm');
                   sql.add('      ,0 as icms');
                   sql.add('      ,tipo_item = (select tipo_item from produtos where codigo = ni.codigo_mercadoria)');
                   sql.add('      ,qtde = 1');
                   sql.add('from NotasItens ni');
                   sql.add('where processo in( select processo from MemorandoExportacao me where month(me.Data_Emissao) = :pMes and year(me.data_emissao) = :pAno');
                   sql.add('                   and (select Natureza_Exportacao from ProcessosDocumentos pd where pd.Processo = me.Processo) = 0)');
                   sql.add('and saida_entrada = 1');
                   sql.add('and isnull(cancelada, 0) = 0');
                   sql.add('and isnull(ni.nfe_denegada, 0) = 0');
                   sql.add('and isnull(movimenta_estoque, 0) = 1');
                end;
                sql.add('UNION ALL');
                sql.add('SELECT Codigo_Sistema,');
                sql.add('      (SELECT Codigo_Fabricante FROM Produtos WHERE(Produtos.Codigo = Imobilizado.Codigo_Sistema)),');
                sql.add('      '''',');
                sql.add('      (SELECT Descricao FROM Produtos WHERE(Produtos.Codigo = Imobilizado.Codigo_Sistema)),');
                sql.add('      (SELECT Unidade   FROM Produtos WHERE(Produtos.Codigo = Imobilizado.Codigo_Sistema)),');
                sql.add('      (SELECT NCM       FROM Produtos WHERE(Produtos.Codigo = Imobilizado.Codigo_Sistema)),');
                sql.add('      0,');
                sql.add('      (SELECT Tipo_Item FROM Produtos WHERE(Produtos.Codigo = Imobilizado.Codigo_Sistema)),');
                sql.add('      QTDE = 1');
                sql.add('FROM  Imobilizado');
                sql.add('where isnull(Fim_Apropriacao, '''') = '''' ');
                sql.add('or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno)');
                parambyName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
                parambyName('pAno').AsString := cAno.Text;

                // OUTRAS OBRIGAÇÕES TRIBUTÁRIAS, AJUSTES E INFORMAÇÕES DE VALORES PROVENIENTES DE DOCUMENTO FISCAL
                sql.add('----------------[OUTRAS OBRIGAÇÕES TRIBUTÁRIAS, AJUSTES E INFORMAÇÕES DE VALORES PROVENIENTES DE DOCUMENTO FISCAL]----------------');         
                sql.add('union all');
                sql.add('select Codigo = Codigo_Mercadoria');
                sql.add('      ,Codigo_Fabricante');
                sql.add('      ,'''' ');
                sql.add('      ,Descricao = CAST(Descricao_Mercadoria AS VARCHAR(5000)) COLLATE SQL_Latin1_General_CP1_CI_AS');
                sql.add('      ,Unidade   = Unidade_Medida');
                sql.add('      ,NCM');
                sql.add('      ,0 AS ICMS');
                sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Codigo = ni.Codigo_Mercadoria)');
                sql.add('      ,QTDE = 1');
                sql.add('from NotasItens ni');
                sql.add('where year(Data) = :pAno and Month(Data) = :pMes');
                sql.add('and Valor_ICMSOper > 0');
                sql.add('and (select isnull(Codigo_AjusteNFE, '''')+isnull(Codigo_AjusteNFS, '''') from Cybersoft_Cadastros.dbo.IncentivosFiscais ifs where ifs.Nome = (select Incentivo_Fiscal from NotasFiscais nf where nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data)) <> '''' ');                
                
                sql.add('union all');
                sql.add('select Codigo = Codigo_Mercadoria');
                sql.add('      ,Codigo_Fabricante = cast(Codigo_Mercadoria as varchar(10))');
                sql.add('      ,'''' ');
                sql.add('      ,Descricao = CAST(Descricao_Mercadoria AS VARCHAR(5000)) COLLATE SQL_Latin1_General_CP1_CI_AS');
                sql.add('      ,Unidade   = Unidade_Medida');
                sql.add('      ,NCM');
                sql.add('      ,0 AS ICMS');
                sql.add('      ,Tipo_Item = (select Tipo_Item from Produtos where Codigo = nti.Codigo_Mercadoria)');
                sql.add('      ,QTDE = 1');
                sql.add('from NotasTerceirosItens nti');
                sql.add('where year(Data_Entrada) = :pAno and Month(Data_Entrada) = :pMes');
                sql.add('and Valor_ICMSOper > 0');
                sql.add('and (select Codigo_AjusteNFE from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome=(select distinct Incentivo_Fiscal from NotasTerceiros nt where nt.Nota=nti.Nota and nt.Data_Emissao=nti.Data_Emissao and nt.Fornecedor=nti.Fornecedor))<>'''' ');
                sql.add('update #Temp set unidade = (select Unidade_Origem from Produtos where Codigo = #Temp.Codigo) where isnull(Unidade, '''') = '''' ');
                sql.add('select * from #Temp where QTDE > 0 order by Codigo');
                sql.add('drop table #temp');
                parambyName('pAno').AsInteger := cAno.AsInteger;
                parambyName('pMes').AsInteger := cMes.ItemIndex+1;
                //sql.savetoFile('c:\temp\SPED_FISCAL_REGISTRO0200.SQL');
                open;
           end;
           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0200...';

           mCodigo := 0;

           tItens.First;
           While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
                 If mCodigo <> tItens.FieldByName('Codigo').AsInteger then begin
                    mCodigo := tItens.FieldByName('Codigo').AsInteger;
                    Inc(mLinha);

                    NCM.SQL.Clear;
                    NCM.SQL.Add('SELECT * FROM NCM WHERE (NCM = :pNCM)');
                    NCM.ParamByName('pNCM').AsString := tItens.FieldByName('NCM').AsString;
                    NCM.Open;

                    // Remove caracteres de controle como quebra de linha...
                    mDescricao := Copy(Trim(tItens.FieldByName('Descricao').AsString), 1, 250);
                    mDescricao := RemoveCaracter(#13, '', mDescricao);
                    mDescricao := RemoveCaracter(#12, '', mDescricao);
                    mDescricao := RemoveCaracter(#10, '', mDescricao);
                    mDescricao := RemoveCaracter('|', '', mDescricao);

                    // Remove o código do produto de importação do SISCOMEX.
                    mDescricao := RemoveCaracter('<{'+tItens.FieldByName('Codigo').AsString+'}>', '', mDescricao);
                    mDescricao := Trim(mDescricao);
                    If Trim(mDescricao) = '' then mDescricao := tItens.FieldByName('Descricao_Reduzida').AsString;

                    mRegistro := '|0200' +                                                    // 01 - REG.
                                 '|'+ tItens.FieldByName('Codigo').AsString +                 // 02 - Codigo do Item.
                                 '|'+ mDescricao +                                            // 03 - Descrição do item.
                                 '|'+                                                         // 04 - Código de barras.
                                 '|'+                                                         // 05 - Codigo anterior do item.
                                 '|'+ Trim(tItens.FieldByName('Unidade').AsString) +          // 06 - Unidade de Medida.
                                 '|'+ PoeZero(2,tItens.FieldByName('Tipo_Item').AsInteger) +  // 07 - Tipo de Item.
                                 '|'+ Trim(tItens.FieldByName('NCM').AsString) +              // 08 - Codigo NCM.
                                 '|'+ Trim(NCM.FieldByName('Codigo_EXTIPI').AsString) +       // 09 - Codigo EX da TIPI.
                                 '|'+ Copy(NCM.FieldByName('NCM').AsString,1,2) +             // 10 - Código do gênero do item.
                                 '|'+                                                         // 11 - Código do serviço.
                                 '|'+ FormatFloat('#0.00', 0) +                               // 12 - Aliquota do ICMS.
                                 '|'+ NCM.FieldByName('CEST').AsString +                      // 13 - Código do gênero do item.
                                 '|';

                    Say( mLinha, 000, Arquivo, mRegistro );

                    Inc(mQtdeReg0200);
                    Inc(mQtdeBloco0);
                 End;

                 tItens.Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           End;
      End;
end;

{* REGISTRO 0300: CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0300;
begin
     with tCIAP do begin
//          sql.clear;
//          sql.add('select * from Imobilizado where isnull(Fim_Apropriacao, '''') = '''' or isnull(Fim_Apropriacao, '''') >= :pPeriodo');
//          ParamByName('pPeriodo').AsString := PoeZero(2, cMes.ItemIndex+1)+PoeZero(4, cAno.AsInteger);
//          Open;
           sql.Clear;
           sql.add('select * from Imobilizado');
           sql.Add('where isnull(Fim_Apropriacao, '''') = '''' ');
           sql.Add('or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno)');
           paramByName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
           paramByName('pAno').AsString := cAno.Text;
           open;
     end;
     while not tCIAP.Eof do begin
           Inc(mLinha);
           mRegistro := '|0300' +                                                                  // 01 - REG.
                        '|' + tCIAP.FieldByName('Codigo_Sistema').AsString +                       // 02 - Código individualizado do bem ou componente adotado no controle patrimonial do estabelecimento informante.
                        '|' + tCIAP.FieldByName('Tipo_Item').AsString +                            // 03 - Identificação do tipo de mercadoria: 1 = bem / 2 = componente.
                        '|' + RemoveCaracter('|', ' ',tCIAP.FieldByName('Descricao').AsString)+    // 04 - Descrição do bem ou componente.
                        '|' + tCIAP.FieldByName('Codigo_Principal').AsString +                     // 05 - Código do bem principal.
                        '|' + tCIAP.FieldByName('Conta_Numero').AsString +                         // 06 - Código da conta analítica de contabilização do bem ou componente.
                        '|' + tCIAP.FieldByName('Parcelas').AsString +                             // 07 - Número total de parcelas a serem apropriadas, segundo a legislação de cada unidade federada.
                        '|';

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeReg0300);
           Inc(mQtdeBloco0);

           if tCIAP.FieldByName('Tipo_Item').AsInteger = 1 then Registro0305;

           tCIAP.Next;
     end;
end;

{* REGISTRO 0305: INFORMAÇÃO SOBRE A UTILIZAÇÃO DO BEM }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0305;
begin
      Inc(mLinha);
      mRegistro := '|0305' +                                            // 01 - REG.
                   '|' + tCIAP.FieldByName('Centro_Custo').AsString +   // 02 - Código do centro de custo onde o bem está sendo ou será utilizado.
                   '|' + tCIAP.FieldByName('Funcao').AsString +         // 03 - Descrição sucinta da função do bem na atividade do estabelecimento.
                   '|' + tCIAP.FieldByName('Vida_Util').AsString +      // 04 - Vida útil estimada do bem, em número de meses.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg0305);
      Inc(mQtdeBloco0);
end;

{* REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0400;
Var
    mDescricao : WideString;
    mCodigo    : String;
begin
      With Dados, dmFiscal do begin
           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT DISTINCT(SUBSTRING(Natureza_Codigo,1,1)+''000'') AS Codigo');
           tNotas.SQL.Add('FROM NotasTerceiros');
           tNotas.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes)  AND (Provisoria <> 1) AND (NotasTerceiros.Modelo = :pModelo01 OR NotasTerceiros.Modelo = :pModelo1B OR NotasTerceiros.Modelo = :pModelo04 OR NotasTerceiros.Modelo = :pModelo55)');
           tNotas.SQL.Add('  AND (ISNULL(Desdobramento,0) = 0)');
           tNotas.SQL.Add('ORDER BY Codigo');
           tNotas.ParamByName('pAno').AsInteger     := cAno.AsInteger;
           tNotas.ParamByName('pMes').AsInteger     := cMes.ItemIndex+1;
           tNotas.ParamByName('pModelo01').AsString := '01';
           tNotas.ParamByName('pModelo1B').AsString := '1B';
           tNotas.ParamByName('pModelo04').AsString := '04';
           tNotas.ParamByName('pModelo55').AsString := '55';
           tNotas.Open;
           tNotas.First;

           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0400...';

           While (not tNotas.Eof) and (not Funcoes.Cancelado) do begin
                 If tNotas.FieldByName('Codigo').AsString <> mCodigo then begin
                    mCodigo := tNotas.FieldByName('Codigo').AsString ;

                    Natureza.SQL.Clear;
                    Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Codigo = :pCodigo)');
                    Natureza.ParamByName('pCodigo').AsString := tNotas.FieldByName('Codigo').AsString;
                    Natureza.Open;

                    Inc(mLinha);
                    mDescricao := RemoveAcentos( Trim(AnsiUpperCase(Natureza.FieldByName('Descricao_NF').AsString)) );
                    mRegistro  := '|0400' +                                               // 01 - REG.
                                  '|'+ Trim(tNotas.FieldByName('Codigo').AsString) +      // 02 - Codigo da Natureza.
                                  '|'+ mDescricao +'|';                                   // 03 - Descrição do item.

                    Say( mLinha, 000, Arquivo, mRegistro );

                    Inc(mQtdeReg0400);
                    Inc(mQtdeBloco0);
                 End;
                 tNotas.Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           End;
      End;
end;

{REGISTRO 0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0450;
Var
    mDescricao:WideString;
begin
      With Dados, dmFiscal do begin
           tInfComp.SQL.Clear;
           tInfComp.SQL.Add('SELECT Codigo = ''P''+CAST(Codigo AS VARCHAR(3))');
           tInfComp.SQL.Add('      ,Descricao');
           tInfComp.SQL.Add('INTO #TEMP');
           tInfComp.SQL.Add('FROM   TipoNota');
           tInfComp.SQL.Add('WHERE Codigo IN( SELECT Tipo_Nota');
           tInfComp.SQL.Add('                  FROM NotasFiscais');
           tInfComp.SQL.Add('                  WHERE (YEAR(Data_Emissao) = :pAno');
           tInfComp.SQL.Add('                  AND   MONTH(Data_Emissao) = :pMes)');
           tInfComp.SQL.Add('                  AND   Cancelada <> 1');
           tInfComp.SQL.Add('                  AND   Nfe_Denegada <> 1');
           tInfComp.SQL.Add('                  AND   (LTRIM(RTRIM(CAST(Inf_Complementares AS VARCHAR(500)))) <> '''' OR LTRIM(RTRIM(CAST(Inf_Complementares2 AS VARCHAR(500)))) <> ''''))');
           tInfComp.SQL.Add('UNION ALL');
           tInfComp.SQL.Add('SELECT Codigo = ''T''+CAST(Codigo AS VARCHAR(3))');
           tInfComp.SQL.Add('      ,Descricao');
           tInfComp.SQL.Add('FROM   ReferenciasFiscais');
           tInfComp.SQL.Add('WHERE Codigo IN( SELECT Referencia_Fiscal');
           tInfComp.SQL.Add('                  FROM NotasTerceiros');
           tInfComp.SQL.Add('                  WHERE (YEAR(Data_Entrada) = :pAno');
           tInfComp.SQL.Add('                  AND   MONTH(Data_Entrada) = :pMes)');
           tInfComp.SQL.Add('                  AND   ISNULL(Desdobramento,0) = 0');
           tInfComp.SQL.Add('                  AND   Provisoria <> 1');
           tInfComp.SQL.Add('                  AND   LTRIM(RTRIM(CAST(Observacoes AS VARCHAR(500)))) <> '''' )');
           tInfComp.SQL.Add('UNION ALL');
           tInfComp.SQL.Add('SELECT distinct Codigo = ''000000'' ');
           tInfComp.SQL.Add('      ,Descricao = DI');
           tInfComp.SQL.Add('FROM NotasItens');
           tInfComp.SQL.Add('WHERE (YEAR(Data) = :pAno');
           tInfComp.SQL.Add('AND   MONTH(Data) = :pMes)');
           tInfComp.SQL.Add('AND   Cancelada <> 1');
           tInfComp.SQL.Add('AND   Nfe_Denegada <> 1');
           tInfComp.SQL.Add('AND   ISNULL(DI, '''') <> '''' ');
           tInfComp.SQL.Add('ORDER BY Codigo');
           tInfComp.SQL.Add('SELECT Codigo');
           tInfComp.SQL.Add('      ,Descricao');
           tInfComp.SQL.Add('      ,Ordem = CAST(row_number() over (order by Codigo) as varchar(6))');
           tInfComp.SQL.Add('INTO #TEMP2');
           tInfComp.SQL.Add('FROM #TEMP');
           tInfComp.SQL.Add('UPDATE #TEMP2 SET Codigo = ''DI''+REPLICATE(''0'', 4 - LEN(Ordem))+Ordem');
           tInfComp.SQL.Add('WHERE Codigo = ''000000'' ');
           tInfComp.SQL.Add('TRUNCATE TABLE TEMPREG450');
           tInfComp.SQL.Add('INSERT INTO TEMPREG450 SELECT * FROM #TEMP2');
           tInfComp.SQL.Add('SELECT * FROM TEMPREG450');
           tInfComp.SQL.Add('DROP TABLE #TEMP, #TEMP2');
           tInfComp.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tInfComp.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           //tInfComp.SQL.SavetoFile('c:\temp\SPED_FISCAL_REGISTRO0450.SQL');
           tInfComp.Open;
           tInfComp.First;

           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tInfComp.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0450...';

           While (not tInfComp.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);
                 mDescricao := RemoveAcentos(Trim(AnsiUpperCase(Copy(tInfComp.FieldByName('Descricao').AsString, 1, 500))));
                 mDescricao := RemoveCaracter(#13, '', mDescricao);
                 mDescricao := RemoveCaracter(#12, '', mDescricao);
                 mDescricao := RemoveCaracter(#10, '', mDescricao);

                 mRegistro  := '|0450' +                                                                                                                                                   // 01 - REG.
                               '|'+ Trim(tInfComp.FieldByName('Codigo').AsString) +                                                                                                        // 02 - Codigo da informa.
                               '|'+ iif(tInfComp.FieldByName('Descricao').AsString = '<DI>', AnsiUpperCase(Ordinal(tInfComp.FieldByName('Ordem').AsString, 'F')) + 'DI', mDescricao) +'|'; // 03 - Descrição do informação complementar.

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeReg0450);
                 Inc(mQtdeBloco0);

                 tInfComp.Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           End;
      End;
end;

{REGISTRO 0460: TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0460;
Var
    mDescricao : WideString;
begin
      With Dados, dmFiscal do begin
           tBeneficios.SQL.Clear;
           tBeneficios.SQL.Add('Select Codigo = cast(Codigo as varchar(2))+''1'' ');
           tBeneficios.SQL.Add('      ,Codigo_Ajuste = Codigo_AjusteNFE');
           tBeneficios.SQL.Add('      ,Descricao     = Descricao_AjusteNFE');
           tBeneficios.SQL.Add('      ,Codigo_Beneficio');
           tBeneficios.SQL.Add('into #temp');
           tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
           tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFE, '''') <> '''' ');
           tBeneficios.SQL.Add('and  (select count(*) from NotasFiscais NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes and Saida_Entrada = 0) > 0');
           tBeneficios.SQL.Add('union all');
           tBeneficios.SQL.Add('Select Codigo = cast(Codigo as varchar(2))+''2'' ');
           tBeneficios.SQL.Add('      ,Codigo_Ajuste = Codigo_AjusteNFS');
           tBeneficios.SQL.Add('      ,Descricao     = Descricao_AjusteNFS');
           tBeneficios.SQL.Add('      ,Codigo_Beneficio');
           tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
           tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFS, '''') <> '''' ');
           tBeneficios.SQL.Add('and  (select count(*) from NotasFiscais NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes and Saida_Entrada = 1) > 0');
           tBeneficios.SQL.Add('union all');
           tBeneficios.SQL.Add('Select Codigo = cast(Codigo as varchar(2))+''1'' ');
           tBeneficios.SQL.Add('      ,Codigo_Ajuste = Codigo_AjusteNFE');
           tBeneficios.SQL.Add('      ,Descricao     = Descricao_AjusteNFE');
           tBeneficios.SQL.Add('      ,Codigo_Beneficio');
           tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
           tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFE, '''') <> '''' ');
           tBeneficios.SQL.Add('and  (select count(*) from NotasTerceiros NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Entrada) = :pAno and month(Data_Entrada) = :pMes and Tipo = ''NF'') > 0');
           tBeneficios.SQL.Add('union all');
           tBeneficios.SQL.Add('Select Codigo = cast(Codigo as varchar(2))+''3'' ');
           tBeneficios.SQL.Add('      ,Codigo_Ajuste = Codigo_AjusteCTR');
           tBeneficios.SQL.Add('      ,Descricao     = Descricao_AjusteCTR');
           tBeneficios.SQL.Add('      ,Codigo_Beneficio');
           tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
           tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFE, '''') <> '''' ');
           tBeneficios.SQL.Add('and  (select count(*) from NotasTerceiros NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Entrada) = :pAno and month(Data_Entrada) = :pMes and Tipo = ''CTR'') > 0');
           tBeneficios.SQL.Add('select distinct * from #temp order by Codigo');
           tBeneficios.SQL.Add('drop table #temp');
           tBeneficios.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tBeneficios.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           //tBeneficios.SQL.SaveToFile('c:\temp\SPED_FISCAL_0460.sql');
           tBeneficios.Open;
           tBeneficios.First;

           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tBeneficios.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0460...';

           while (not tBeneficios.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);
                 mRegistro  := '|0460' +                                                      // 01 - REG.
                               '|' + tBeneficios.FieldByName('Codigo').AsString +             // 02 - Codigo da observação do lançamento fiscal.
                               '|' + tBeneficios.FieldByName('Descricao').AsString +'|';      // 03 - Descrição observação.

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeReg0460);
                 Inc(mQtdeBloco0);

                 tBeneficios.Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           end;
      End;
end;

{REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0500;
begin
      with tContas do begin
//           sql.clear;
//           sql.add('select * from Imobilizado');
//           sql.add('where (isnull(Fim_Apropriacao, '''') = '''') or (isnull(Fim_Apropriacao, '''') >= :pPeriodo)');
//           paramByName('pPeriodo').AsString := PoeZero(2, cMes.ItemIndex+1)+PoeZero(4, cAno.AsInteger);
//           open;
           sql.Clear;
           sql.add('select * from Imobilizado');
           sql.Add('where isnull(Fim_Apropriacao, '''') = '''' ');
           sql.Add('or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno)');
           paramByName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
           paramByName('pAno').AsString := cAno.Text;
           open;

           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 0500...';

           while (not Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);
                 mRegistro  := '|0500' +                                                             // 01 - REG.
                               '|'+ RemoveCaracter('/', '',FieldByName('Data_Nota').AsString) +      // 02 - Data da inclusão/alteração.
                               '|'+ Trim(FieldByName('Conta_Natureza').AsString) +                   // 03 - Código da natureza da conta/grupo de contas.
                               '|'+ Trim(FieldByName('Conta_Tipo').AsString) +                       // 04 - Indicador do tipo de conta: S - Sintética (grupo de contas)/ A - Analítica (conta).
                               '|'+ Trim(FieldByName('Conta_Nivel').AsString) +                      // 05 - Nível da conta analítica/grupo de contas.
                               '|'+ Trim(FieldByName('Conta_Numero').AsString) +                     // 06 - Código da conta analítica/grupo de contas.
                               '|'+ Trim(FieldByName('Conta_Nome').AsString) +                       // 07 - Nome da conta analítica/grupo de contas.
                               '|';

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeReg0500);
                 Inc(mQtdeBloco0);
                 Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           end;
      end;
end;

{* REGISTRO 0600: CENTRO DE CUSTOS }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0600;
begin
      with tCIAP do begin
//           sql.clear;
//           sql.add('select Imobilizado.*, (select Descricao from CentroCusto where(Codigo = Imobilizado.Centro_Custo)) as Centro_CustoDescricao');
//           sql.add('from Imobilizado');
//           sql.add('where (isnull(Fim_Apropriacao, '''') = '''') or (isnull(Fim_Apropriacao, '''') >= :pPeriodo)');
//           paramByName('pPeriodo').AsString := PoeZero(2, cMes.ItemIndex+1)+PoeZero(4, cAno.AsInteger);
//           sql.SaveToFile('c:\temp\SPED_Fiscal_Registro0600.sql');
//           open;
           sql.Clear;
           sql.add('select Imobilizado.*, (select Descricao from CentroCusto where(Codigo = Imobilizado.Centro_Custo)) as Centro_CustoDescricao');
           sql.add('from Imobilizado');
           sql.Add('where isnull(Fim_Apropriacao, '''') = '''' ');
           sql.Add('or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno)');
           paramByName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
           paramByName('pAno').AsString := cAno.Text;
           //sql.SaveToFile('c:\temp\SPED_Fiscal_Registro0600.sql');
           open;
      end;
      with tTemp do begin
           sql.clear;
           sql.add('select distinct');
           sql.Add('       Data_Nota');
           sql.Add('      ,Centro_Custo');
           sql.Add('      ,Centro_CustoDescricao = (select Descricao from CentroCusto where Codigo = Imobilizado.Centro_Custo)');
           sql.add('from Imobilizado');
//           sql.add('where (isnull(Fim_Apropriacao, '''') = '''') or (isnull(Fim_Apropriacao, '''') >= :pPeriodo)');
//           paramByName('pPeriodo').AsString := PoeZero(2, cMes.ItemIndex+1)+PoeZero(4, cAno.AsInteger);
           sql.Add('where isnull(Fim_Apropriacao, '''') = '''' ');
           sql.Add('or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno)');
           paramByName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
           paramByName('pAno').AsString := cAno.Text;
           //sql.SaveToFile('c:\temp\SPED_Fiscal_Registro0600.sql');
           open;
           while not Eof do begin
                 Inc(mLinha);
                 mRegistro := '|0600' +                                                                // 01 - REG.
                              '|' + RemoveCaracter('/', '', FieldByName('Data_Nota').AsString) +       // 02 - Data da inclusão/alteração.
                              '|' + FieldByName('Centro_Custo').AsString +                             // 03 - Código do centro de custos.
                              '|' + FieldByName('Centro_CustoDescricao').AsString +                    // 04 - Nome do centro de custos.
                              '|';
                 Say( mLinha, 000, Arquivo, mRegistro );
                 
                 Inc(mQtdeReg0600);
                 Inc(mQtdeBloco0);
                 Next;
           end;
      end;
end;

{REGISTRO 0990: ENCERRAMENTO DO BLOCO 0}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro0990;
begin
       Inc(mQtdeReg0990);
       Inc(mQtdeBloco0);
       Inc(mLinha);
       mRegistro  := '|0990' +                        // 01 - REG.
                     '|'+ InttoStr(mQtdeBloco0)+'|';  // 02 - Quantidade de Linhas do BLOCO 0.
       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO B001: ABERTURA DO BLOCO B}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroB001;
begin
       Inc(mQtdeRegB001);
       Inc(mQtdeBlocoB);
       Inc(mLinha);
       mRegistro := '|B001';                   // 01 - REG.
       mRegistro := mRegistro + '|1|';         // 02 - Quantidade de Linhas do BLOCO 0.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO B990: ENCERRAMENTO DO BLOCO B}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroB990;
begin
       Inc(mQtdeRegB990);
       Inc(mQtdeBlocoB);
       Inc(mLinha);
       mRegistro  := '|B990' +                           // 01 - REG.
                     '|'+ InttoStr(mQtdeBlocoB)+'|';     // 02 - Quantidade de Linhas do BLOCO B.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO C001: ABERTURA DO BLOCO C}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC001;
begin
       tNotas.SQL.Clear;
       tNotas.SQL.Add('SELECT Numero FROM NotasFiscais');
       tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND Nfe_Denegada <> 1' );
       tNotas.SQL.Add('UNION ALL');
       tNotas.SQL.Add('SELECT Nota FROM NotasTerceiros');
       tNotas.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes)  AND (Provisoria <> 1) AND (ISNULL(Desdobramento, 0) = 0)' );
       tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
       tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
       tNotas.Open;

       Inc(mLinha);
       mRegistro := '|C001';                   // 01 - REG.
       If tNotas.RecordCount = 0 then
          mRegistro := mRegistro + '|1|'       // 02 - Quantidade de Linhas do BLOCO 0.
       else
          mRegistro := mRegistro + '|0|';

       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegC001);
       Inc(mQtdeBlocoC);
end;

{REGISTRO C100: NOTA FISCAL}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC100;
Var
    mSituacao, mPart, mModelo: String;
begin
     with tNotas do begin
          sql.clear;
          sql.add('SELECT Saida_Entrada AS Tipo,');
          sql.add('       0 AS Emitente,');
          sql.add('       Cliente_Codigo AS Cliente,');
          sql.add('       Fornecedor_Codigo AS Fornecedor,');
          sql.add('       Modelo,');
          sql.add('       Serie,');
          sql.add('       Complementar,');
          sql.add('       Ajuste,');
          sql.add('       NFe_Denegada,');
          sql.add('       Numero,');
          sql.add('       NFe_cNF,');
          sql.add('       Data_Emissao,');
          sql.add('       Data_EntradaSaida,');
          sql.add('       Valor_TotalNota,');
          sql.add('       Modalidade_Pgto,');
          sql.add('       Total_Descontos,');
          sql.add('       Valor_TotalProdutos,');
          sql.add('       Modalidade_Frete,');
          sql.add('       Total_Frete,');
          sql.add('       Valor_Seguro,');
          sql.add('       Valor_OutrasDespesas,');
          sql.add('       BCICMS                 = CASE WHEN ISNULL(ICMS_Destacar, 0) = 0 THEN BCICMS                 ELSE 0 END,');
          sql.add('       Valor_ICMS             = CASE WHEN ISNULL(ICMS_Destacar, 0) = 0 THEN Valor_ICMS             ELSE 0 END,');
          sql.add('       BCICMS_Substitutivo    = CASE WHEN ISNULL(ICMS_Destacar, 0) = 0 THEN BCICMS_Substitutivo    ELSE 0 END,');
          sql.add('       ValorICMS_Substitutivo = CASE WHEN ISNULL(ICMS_Destacar, 0) = 0 THEN ValorICMS_Substitutivo ELSE 0 END,');
          sql.add('       Valor_TotalIPI,');
          sql.add('       NotasFiscais.Valor_PIS,');
          sql.add('       NotasFiscais.Valor_COFINS,');
          sql.add('       Cancelada,');
          sql.add('       Operacao_Veiculo,');
          sql.add('       Estado,');
          sql.add('       Tipo_Nota,');
          sql.add('       ISNULL(CONVERT(VARCHAR(8000), Inf_Complementares), '''')+ISNULL(CONVERT(VARCHAR(8000), Inf_Complementares2) , '''') AS Inf_Complementares,');
          sql.add('       DI,');
          sql.add('       Valor_PISImp    = (SELECT Valor_PIS    FROM ProcessosDocumentos PD WHERE PD.Processo = NotasFiscais.Processo AND PD.Numero_Declaracao = NotasFiscais.DI),');
          sql.add('       Valor_COFINSImp = (SELECT Valor_COFINS FROM ProcessosDocumentos PD WHERE PD.Processo = NotasFiscais.Processo AND PD.Numero_Declaracao = NotasFiscais.DI),');
          sql.add('       0 AS Servico,');
          sql.add('       FCP_ValorDest,');
          sql.add('       FCP_ICMSDest,');
          sql.add('       FCP_ICMSOrig,');
          sql.add('       Codigo_Tipo    = ''P''+CAST(Tipo_Nota AS VARCHAR(3)),');
          sql.add('       Descricao_Tipo = (SELECT Descricao FROM TipoNota TN WHERE TN.Codigo = NotasFiscais.Tipo_Nota),');
          sql.add('       Beneficio      = case when Saida_Entrada = 0 then');
          sql.add('                            (select cast(Codigo as varchar(2))+''1'' from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal )');
          sql.add('                        else');
          sql.add('                            (select cast(Codigo as varchar(2))+''2'' from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal )');
          sql.add('                        end,');
          sql.add('       Beneficio_Cod = case when Saida_Entrada = 0 then');
          sql.add('                            (select Codigo_AjusteNFE from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal )');
          sql.add('                       else');
          sql.add('                            (select Codigo_AjusteNFS from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal )');
          sql.add('                       end,');
          sql.add('       Beneficio_Desc = case when Saida_Entrada = 0 then');
          sql.add('                            (select Descricao_AjusteNFE from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal )');
          sql.add('                        else');
          sql.add('                            (select Descricao_AjusteNFS from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal )');
          sql.add('                        end,');
          sql.add('       Tipo_Pagamento,');
          sql.add('       Importacao');
          sql.add('FROM   NotasFiscais');
          sql.add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes)' );
          sql.add('and   isnull(Nfe_Denegada, 0) = 0');
          sql.add('UNION ALL');
          sql.add('SELECT 0,');
          sql.add('       1,');
          sql.add('       0,');
          sql.add('       Fornecedor,');
          sql.add('       Modelo,');
          sql.add('       Serie,');
          sql.add('       Complementar,');
          sql.add('       0,');
          sql.add('       0,');
          sql.add('       Nota,');
          sql.add('       NFe_cNF,');
          sql.add('       Data_Emissao,');
          sql.add('       Data_Entrada,');
          sql.add('       Valor_TotalNota,');
          sql.add('       Modalidade_Pgto,');
          sql.add('       Valor_TotalDescontos,');
          sql.add('       Valor_TotalProdutos,');
          sql.add('       Modalidade_Frete,');
          sql.add('       0,');
          sql.add('       0,');
          sql.add('       0,');
          sql.add('       Valor_BCICMSOper,');
          sql.add('       Valor_ICMSOper,');
          sql.add('       Valor_BCICMSSub,');
          sql.add('       Valor_ICMSSub,');
          sql.add('       Valor_TotalIPI,');
          sql.add('       0,');
          sql.add('       0,');
          sql.add('       0,');
          sql.add('       null,');
          sql.add('       Estado,');
          sql.add('       0,');
          sql.add('       ISNULL(CONVERT(VARCHAR(8000), Observacoes),'''') AS Inf_Complementares,');
          sql.add('       null,');
          sql.add('       0,');
          sql.add('       0,');
          sql.add('       CASE WHEN Servico IS NOT NULL THEN 1 ELSE 0 END,');
          sql.add('       0 AS FCP_ValorDest,');
          sql.add('       0 AS FCP_ICMSDest,');
          sql.add('       0 AS FCP_ICMSOrig,');
          sql.add('       Codigo_Tipo    = ''T''+CAST(Referencia_Fiscal AS VARCHAR(3)),');
          sql.add('       Descricao_Tipo = (SELECT Descricao FROM ReferenciasFiscais RF WHERE RF.Codigo = NotasTerceiros.Referencia_Fiscal),');
          sql.add('       Beneficio      = (select cast(Codigo as varchar(2))+''2'' from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal),');
          sql.add('       Beneficio_Cod  = (select Codigo_AjusteNFE from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal),');
          sql.add('       Beneficio_Desc = (select Descricao_AjusteNFE from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal),');
          sql.add('       Tipo_Pagamento = 0,');
          sql.add('       Importacao = 0');
          sql.add('FROM NotasTerceiros');
          sql.add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (ISNULL(Provisoria, 0) <> 1) AND (ISNULL(Desdobramento, 0) = 0)');
          sql.add('  AND ISNULL(SERVICO, '''') = '''' ');
          sql.add('  AND Modelo IN(''1'', ''01'', ''1B'', ''4'', ''04'', ''55'')');
          paramByName('pAno').AsInteger     := cAno.AsInteger;
          paramByName('pMes').AsInteger     := cMes.ItemIndex+1;
          //sql.savetofile('c:\temp\SPED_FISCAL_RegistroC100.SQL');
          open;
          First;
     end;
     with Dados, ModalidadesPgto do begin
          sql.Clear;
          SQL.Add('select * from ModalidadesPagamento');
          Open;
     end;

     Janela_ProcessamentoSPED.Progresso2.Position := 0;
     Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: C100...';

     While (not tNotas.Eof) and (not Funcoes.Cancelado) do begin
           mSituacao := '00';         // 00 - Documento regular.
           {
           If not DataLimpa(tNotas.FieldByName('Data_EntradaSaida').AsString) then begin
              If MonthOf(tNotas.FieldByName('Data_EntradaSaida').AsDateTime) <> MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime) then begin
                 mSituacao := '01';   // 01 - Escrituração extemporânea de documento regular.
              End;
           End;
           }
           If tNotas.FieldByName('Cancelada').Value = 1 then begin
              mSituacao := '02'; // 02 - Documento cancelado
           end else begin
              If tNotas.FieldByName('Nfe_Denegada').Value = 1 then mSituacao := '04';  // 04 - NF-e, NFC-e ou CT-e - denegado.
              If tNotas.FieldByName('Complementar').Value = 1 then mSituacao := '06';  // 06 - Documento Fiscal Complementar.
           End;

           Dados.ModalidadesPgto.Locate('Codigo', tNotas.FieldbyName('Modalidade_Pgto').AsInteger, [loCaseInsensitive]);

           If tNotas.FieldByName('Fornecedor').AsInteger = 0 then
              mPart := Trim(tNotas.FieldByName('Cliente').AsString)+'C'
           else
              mPart := Trim(tNotas.FieldByName('Fornecedor').AsString)+'F';

           Inc(mLinha);

           If (mSituacao = '02') or (mSituacao = '03') then begin
               mRegistro := '|C100'+                                                                                // 01
                            '|' +Trim(tNotas.FieldByName('Tipo').AsString) +                                        // 02
                            '|' +Trim(tNotas.FieldByName('Emitente').AsString) +                                    // 03
                            '|' +                                                                                   // 04
                            '|' +Trim(tNotas.FieldbyName('Modelo').AsString) +                                      // 05
                            '|' +mSituacao +                                                                        // 06
                            '|' +Trim(tNotas.FieldByName('Serie').AsString) +                                       // 07
                            '|' +Trim(tNotas.FieldByName('Numero').AsString) +                                      // 08
                            '|' +Trim(tNotas.FieldByName('Nfe_cNF').AsString) +                                     // 09
                            '|' +                                                                                   // 10
                            '|' +                                                                                   // 11
                            '|' +                                                                                   // 12
                            '|' +                                                                                   // 13
                            '|' +                                                                                   // 14
                            '|' +                                                                                   // 15 Abatimento não tributado e não comercial Ex.desconto ICMS nas remessas para ZFM.
                            '|' +                                                                                   // 16
                            '|' +                                                                                   // 17
                            '|' +                                                                                   // 18
                            '|' +                                                                                   // 19
                            '|' +                                                                                   // 20
                            '|' +                                                                                   // 21
                            '|' +                                                                                   // 22
                            '|' +                                                                                   // 23
                            '|' +                                                                                   // 24
                            '|' +                                                                                   // 25
                            '|' +                                                                                   // 26
                            '|' +                                                                                   // 27
                            '|' +                                                                                   // 28
                            '||';                                                                                   // 29

               Say( mLinha, 000, Arquivo, mRegistro );
               Inc(mQtdeRegC100);
               Inc(mQtdeBlocoC);
           end else begin
               mRegistro := '|C100'+                                                                                // 01 - REG.
                            '|'+ Trim(tNotas.FieldByName('Tipo').AsString) +                                        // 02 - Indicador do tipo de operação.
                            '|'+ Trim(tNotas.FieldByName('Emitente').AsString) +                                    // 03 - Indicador do emitente do documento fiscal.
                            '|'+ mPart +                                                                            // 04 - Codigo do Participante.
                            '|'+ Trim(tNotas.FieldbyName('Modelo').AsString) +                                      // 05 - Modelo do documento.
                            '|'+ mSituacao +                                                                        // 06 - Situacao da NF.
                            '|'+ Trim(tNotas.FieldByName('Serie').AsString) +                                       // 07 - Serie da NF.
                            '|'+ Trim(tNotas.FieldByName('Numero').AsString) +                                      // 08 - Numero da NF.
                            '|'+ Trim(tNotas.FieldByName('Nfe_cNF').AsString) +                                     // 09 - Chave da Nota Fiscal Eletrônica.
                            '|'+ Trim(RemoveCaracter('/', '', tNotas.FieldByName('Data_Emissao').AsString)) +       // 10 - Data emissao da NF.
                            '|'+ Trim(RemoveCaracter('/', '', tNotas.FieldByName('Data_Emissao').AsString))+        // 11 - Data Entrada/Saida da NF.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +           // 12 - Valor total da NF.
                            '|'+ tNotas.FieldByName('Tipo_Pagamento').asstring +                                    // 13 - Forma de Pagamento.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Total_Descontos').AsCurrency) +           // 14 - Total dos descontos.
                            '|0,00' +                                                                               // 15 - Desconto ICMS.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalProdutos').AsCurrency) +       // 16 - Total dos produtos.
                            '|'+ Trim(InttoStr(tNotas.FieldByName('Modalidade_Frete').AsInteger)) +                 // 17 - Indicador do tipo do frete.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Total_Frete').AsCurrency) +               // 18 - Total do Frete.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_Seguro').AsCurrency) +              // 19 - Total do Seguro.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_OutrasDespesas').AsCurrency) +      // 20 - Valor despesas.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('BCICMS').AsCurrency) +                    // 21 - B.C.ICMS Operacional.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_ICMS').AsCurrency) +                // 22 - Valor ICMS Operacional.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('BCICMS_Substitutivo').AsCurrency) +       // 23 - B.C. ICMS Substitutivo.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency) +    // 24 - Valor ICMS Substitutivo.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalIPI').AsCurrency) +            // 25 - Valor IPI.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_PIS').AsCurrency) +                 // 26 - Valor PIS.
                            '|'+ FormatFloat('#0.00', tNotas.FieldByName('Valor_COFINS').AsCurrency) +              // 27 - Valor COFINS.
                            '|'+ '0,00' +                                                                           // 28 - Valor PIS Substituicao.
                            '|'+ '0,00|';                                                                           // 29 - Valor COFINS Substituicao.

               Say( mLinha, 000, Arquivo, mRegistro );
               Inc(mQtdeRegC100);
               Inc(mQtdeBlocoC);

               If tNotas.FieldByName('FCP_ICMSDest').Value > 0 then begin
                  RegistroC101;
               End;
               If (tNotas.FieldByName('ValorICMS_Substitutivo').AsInteger <> 0) and (Trim(tNotas.FieldByName('Operacao_Veiculo').AsString) <> '') then begin
                  RegistroC105;
               End;
               mModelo := Trim(tNotas.FieldbyName('Modelo').AsString);
               if (Trim(tNotas.FieldbyName('Inf_Complementares').AsString) <> '') and (tNotas.FieldbyName('Cancelada').Value <> 1) and (tNotas.FieldbyName('Nfe_Denegada').Value <> 1) then begin
                  If (mModelo = '1') or (mModelo = '01') or (mModelo = '1B') or (mModelo = '4') or (mModelo = '04') or (mModelo = '55') then
                     RegistroC110;
               end;
               // REGISTRO C120 - Dados de importaão - Entradas, DI.
               if (mSituacao = '00') and (tNotas.FieldByName('Tipo').asinteger = 0) then begin
                  RegistroC120(tNotas.FieldByName('Numero').AsInteger, tNotas.FieldByName('Data_Emissao').asDateTime);
               end;
               If tNotas.FieldByName('Emitente').AsInteger = 1 then begin
                  If tNotas.FieldByName('Modalidade_Pgto').AsInteger <> 0 then RegistroC140;
                  If (Trim(tNotas.FieldByName('Nfe_cNF').AsString) = '')  then RegistroC160(tNotas.FieldByName('Numero').AsInteger);
                  RegistroC170(tNotas.FieldByName('Numero').AsInteger, tNotas.FieldByName('Fornecedor').AsInteger);
               End;
               If (mModelo = '1') or (mModelo = '01') or (mModelo = '1B') or (mModelo = '4') or (mModelo = '04') or (mModelo = '55') then begin
                  RegistroC190(tNotas.FieldByName('Numero').AsInteger, tNotas.FieldByName('Emitente').AsInteger, tNotas.FieldByName('Tipo_Nota').AsInteger, tNotas.FieldByName('Data_Emissao').AsDateTime, tNotas.FieldByName('Fornecedor').AsInteger);
               end;
               if tNotas.FieldbyName('Beneficio_Cod').Asstring <> '' then begin
                  RegistroC195;
                  RegistroC197(tNotas.FieldByName('Numero').AsInteger
                              ,tNotas.FieldByName('Emitente').AsInteger
                              ,tNotas.FieldByName('Tipo_Nota').AsInteger
                              ,iif(tNotas.FieldByName('Emitente').Asinteger = 0, tNotas.FieldByName('Data_Emissao').AsDateTime, tNotas.FieldByName('Data_EntradaSaida').AsDateTime)
                              ,tNotas.FieldByName('Fornecedor').AsInteger);
               end;
           End;

           tNotas.Next;
           Application.ProcessMessages;
           Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
     end;
end;

{REGISTRO C101: INFORMAÇÃO COMPLEMENTAR DOS DOCUMENTOS FISCAIS QUANDO DAS OPERAÇÕES INTERESTADUAIS DESTINADAS A CONSUMIDOR FINAL NÃO CONTRIBUINTE.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC101;
begin
      Inc(mLinha);
      mRegistro  := '|C101' +                                                                     // 01 - REG.
                    '|'+ FormatFloat('#0.00', tNotas.FieldByName('FCP_ValorDest').AsCurrency) +   // 02 - Valor total relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino.
                    '|'+ FormatFloat('#0.00', tNotas.FieldByName('FCP_ICMSDest').AsCurrency) +    // 03 - Valor total do ICMS Interestadual para a UF de destino.
                    '|'+ FormatFloat('#0.00', tNotas.FieldByName('FCP_ICMSOrig').AsCurrency)+     // 04 - Valor total do ICMS Interestadual para a UF do remetente.
                    '|';

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegC101);
      Inc(mQtdeBlocoC);
end;

{REGISTRO C105: OPERAÇÕES COM ICMS ST RECOLHIDO PARA UF DIVERSA DO DESTINATÁRIO DO DOCUMENTO FISCAL (CÓDIGO 55).}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC105;
begin
       Inc(mLinha);
       mRegistro  := '|C105' +                                                 // 01 - REG.
                     '|1' +                                                    // 02 - Indicador do tipo de operação.
                     '|'+ tNotas.FieldByName('Estado').AsString+'|';           // 03 - Sigla da UF de destino do ICMS_ST.

       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegC105);
       Inc(mQtdeBlocoC);
end;

{REGISTRO C110: INFORMAÇÃO COMPLEMENTAR DA NOTA FISCAL }
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC110;
Var
    mDescricao : WideString;
begin
      Inc(mLinha);
      mDescricao := RemoveAcentos(Trim(AnsiUpperCase(Copy(tNotas.FieldByName('Inf_Complementares').AsString, 1, 255))));
      mDescricao := RemoveAcentos(Trim(AnsiUpperCase(Copy(tNotas.FieldByName('Inf_Complementares').AsString, 1, 255))));
      mDescricao := RemoveCaracter(#13, '', mDescricao);
      mDescricao := RemoveCaracter(#12, '', mDescricao);
      mDescricao := RemoveCaracter(#10, '', mDescricao);
      mDescricao := RemoveCaracter(#9 , '', mDescricao);
      mDescricao := RemoveCaracter('|', '', mDescricao);
      mRegistro  := '|C110' +                                                   // 01 - REG.
                    '|'+ Trim(tNotas.FieldByName('Codigo_Tipo').AsString) +     // 02 - Codigo da informa.
                    '|'+ Copy(mDescricao,1, 255) +                              // 03 - Descrição do informação complementar.
                    '|';

      Say( mLinha, 000, Arquivo, mRegistro );
      Inc(mQtdeRegC110);
      Inc(mQtdeBlocoC);

      tNotas3.sql.clear;
      tNotas3.SQL.add('select distinct Descricao = DI');
      tNotas3.SQL.add('               ,Codigo = (select Codigo from TEMPREG450 tp where ltrim(rtrim(tp.Descricao)) = ltrim(rtrim(NotasItens.DI)))');
      tNotas3.SQL.add('from NotasItens');
      tNotas3.SQL.add('where Nota = :pNota');
      tNotas3.SQL.add('and   isnull(DI, '''') <> '''' ');
      tNotas3.SQL.add('order by di');
      tNotas3.ParamByName('pNota').AsInteger := tNotas.FieldByName('Numero').AsInteger;
      //tNotas3.sql.SaveToFile('c:\temp\SPED_FISCAL_C110.sql');
      tNotas3.Open;
      if tNotas3.RecordCount > 0 then begin
         while not tNotas3.eof do begin
               Inc(mLinha);
               mRegistro  := '|C110' +                                                  // 01 - REG.
                             '|'+ Trim(tNotas3.FieldByName('Codigo').AsString) +        // 02 - Codigo da informa.
                             '|'+ tNotas3.FieldByName('Descricao').AsString +           // 03 - Descrição do informação complementar.
                             '|';

               Say( mLinha, 000, Arquivo, mRegistro );
               Inc(mQtdeRegC110);
               Inc(mQtdeBlocoC);

               tNotas3.Next;
         end;
      end;
end;

{REGISTRO C113: DOCUMENTO FISCAL REFERENCIADO}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC113(Nota:Integer);
begin
      With Dados, dmFiscal do begin
           tNotas2.SQL.Clear;
           tNotas2.SQL.Add('SELECT * FROM NotasFiscais');
           tNotas2.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Nota_Referencia > 0) AND (Numero = :pNota)');
           tNotas2.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tNotas2.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tNotas2.ParamByName('pNota').AsInteger := Nota;
           tNotas2.Open;
           tNotas2.First;

           Inc(mLinha);
           mRegistro  := '|C113' +                                                                                                                     // 01 - REG.
                         '|'+ Trim(tNotas2.FieldByName('Saida_Entrada').AsString) +                                                                    // 02 - Tipo Entrada / Saida.
                         '|0' +                                                                                                                        // 03 - Emitente 0-Proprio / 1-Terceiros.
                         '|' + Trim( InttoStr(tNotas2.FieldByName('Fornecedor_Codigo').AsInteger+tNotas2.FieldByName('Cliente_Codigo').AsInteger) ) +  // 04 - Cliente / Fornecedor.
                         '|' + Trim( tNotas2.FieldByName('Modelo').AsString) +                                                                         // 05 - Modelo da NF.
                         '|' + Trim( tNotas2.FieldByName('Serie').AsString) +                                                                          // 06 - Serie da NF.
                         '|' +                                                                                                                         // 07 - SubSerie da NF.
                         '|' + Trim( tNotas2.FieldByName('Numero').AsString ) +                                                                        // 08 - Numero da NF.
                         '|' + RemoveCaracter('/', '', tNotas2.FieldByName('Data_Emissao').AsString)+'|';                                              // 09 - Data emissao da NF.

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegC113);
           Inc(mQtdeBlocoC);
      End;
end;

{REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC120(Nota: integer; Data: TDate);
begin
     with tOutros do begin
          sql.clear;
          sql.add('select DI');
          sql.add('      ,Valor_PIS    = sum(Valor_PIS)');
          sql.add('      ,Valor_COFINS = sum(Valor_COFINS)');
          sql.add('from NotasItens');
          sql.add('where Nota = :pNota');
          sql.add('and Data = :pData');
          sql.add('group by DI');
          parambyname('pNota').value := Nota;
          parambyname('pData').asdatetime := Data;
          //sql.savetofile('c:\temp\REGISTROC120.sql');
          open;

          if recordcount > 0 then begin
             Inc(mLinha);
             mRegistro := '|C120' +                                                                // 01 - REG.
                          '|0' +                                                                   // 02 - Tipo Importacao DI/DI Simplificada.
                          '|' + FieldByName('DI').AsString +                                       // 03 - Numero da DI.
                          '|' + FormatFloat('#0.00', FieldByName('Valor_PIS').AsCurrency) +        // 04 - Valor do PIS Importacao.
                          '|' + FormatFloat('#0.00', FieldByName('Valor_COFINS').AsCurrency) +     // 05 - Valor da COFINS Importacao.
                          '|' +                                                                    // 06 - Número do Ato Concessório do regime Drawback.
                          '|';
             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegC120);
             Inc(mQtdeBlocoC);
          end;
     end;
end;

{REGISTRO C140: FATURA (CÓDIGO 01)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC140;
begin
      With Dados, dmFiscal do begin
           tFatura.SQL.Clear;
           tFatura.SQL.Add('SELECT * FROM Fatura');
           tFatura.SQL.Add('WHERE (YEAR(Data_Nota) = :pAno AND MONTH(Data_Nota) = :pMes) AND (Nota = :pNota) AND (Forma_Pgto > 0)');
           tFatura.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tFatura.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tFatura.ParamByName('pNota').AsInteger := tNotas.FieldByName('Numero').AsInteger;
           tFatura.Open;
           tFatura.First;

           ModalidadesPgto.Open;

           While (not tFatura.Eof) and (not Funcoes.Cancelado) do begin
                 ModalidadesPgto.Locate('Codigo', tFatura.FieldByName('Forma_Pgto').AsInteger, [loCaseInsensitive]);
                 Inc(mLinha);
                 mRegistro  := '|C140' +                                                                          // 01 - REG.
                               '|0'+                                                                              // 02 - Tipo emissao 0-Propria / 1-Terceiros.
                               '|00' +                                                                            // 03 - Tipo de titulo.
                               '|' +                                                                              // 04 - Descricao complementar.
                               '|' + Trim(tFatura.FieldByName('Fatura').AsString) +                               // 05 - Numero da Fatura.
                               '|' + Trim(ModalidadesPgto.FieldByName('Numero_Parcelas').AsString) +              // 06 - Numero de Parcelas.
                               '|' + FormatFloat('#0.00', tFatura.FieldByName('Valor_Total').AsCurrency) + '|';   // 07 - Valor da Fatura.

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegC140);
                 Inc(mQtdeBlocoC);

                 RegistroC141;

                 tFatura.Next;
           End;
      End;
end;

{REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC141;
Var
    mParcela : Integer;
begin
      With Dados, dmFiscal do begin
           tDuplicatas.SQL.Clear;
           tDuplicatas.SQL.Add('SELECT Duplicatas.Duplicata, Duplicatas.Data_Vencimento, Duplicatas.Valor, Fatura.Fatura ');
           tDuplicatas.SQL.Add('FROM Duplicatas, Fatura ');
           tDuplicatas.SQL.Add('WHERE (YEAR(Fatura.Data_Nota) = :pAno AND MONTH(Fatura.Data_Nota) = :pMes) AND (Fatura.Nota > 0) AND (Fatura.Forma_Pgto > 0) AND (Duplicatas.Fatura = :pFatura)');
           tDuplicatas.SQL.Add('ORDER BY Duplicata');
           tDuplicatas.ParamByName('pAno').AsInteger    := cAno.AsInteger;
           tDuplicatas.ParamByName('pMes').AsInteger    := cMes.ItemIndex+1;
           tDuplicatas.ParamByName('pFatura').AsInteger := tFatura.FieldByName('Fatura').AsInteger;
           tDuplicatas.Open;
           tDuplicatas.First;

           mParcela := 1;
           While (not tDuplicatas.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);
                 mRegistro  := '|C141' +                                                                                 // 01 - REG.
                               '|' + Trim(InttoStr(mParcela)) +                                                          // 02 - Numero da Parcela.
                               '|' + RemoveCaracter('/', '', tDuplicatas.FieldByName('Data_Vencimento').AsString) +      // 03 - Vencimento.
                               '|' + FormatFloat('#0.00', tDuplicatas.FieldByName('Valor').AsCurrency) + '|';            // 04 - Valor da Duplicata.

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegC141);
                 Inc(mQtdeBlocoC);

                 tDuplicatas.Next;
           End;
      End;
end;

{REGISTRO C160: VOLUMES TRANSPORTADOS (CÓDIGO 01 E 04) - EXCETO COMBUSTÍVEIS.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC160(Nota:Integer);
begin
      With Dados, dmFiscal do begin
           tNotas2.SQL.Clear;
           tNotas2.SQL.Add('SELECT Transportador_Codigo, SUM(Volume_Quantidade) AS Volumes, SUM(Volume_PesoBruto) AS Peso_Bruto, SUM(Volume_PesoLiquido) AS Peso_Liquido');
           tNotas2.SQL.Add('FROM NotasFiscais');
           tNotas2.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Transportador_Codigo <> 0) AND (Saida_Entrada = 1) AND (Cancelada <> 1) AND Nfe_Denegada <> 1 AND (Numero = :pNota)');
           tNotas2.SQL.Add('GROUP BY Transportador_Codigo');
           tNotas2.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tNotas2.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tNotas2.ParamByName('pNota').AsInteger := Nota;
           tNotas2.Open;

           If tNotas2.RecordCount <> 0 then begin
              Inc(mLinha);
              mRegistro  := '|C160' +                                                                                 // 01 - REG.
                            '|' + Trim(tNotas2.FieldByName('Transportador_Codigo').AsString) +                        // 02 - Codigo do participante.
                            '|' +                                                                                     // 03 - Placa do veiculo.
                            '|' + tNotas2.FieldByName('Volumes').AsString  +                                          // 04 - Quantidade de volumes.
                            '|' + FormatFloat('########0.00', tNotas2.FieldByName('Peso_Bruto').AsFloat) +            // 05 - Peso bruto.
                            '|' + FormatFloat('########0.00', tNotas2.FieldByName('Peso_Liquido').AsFloat) +          // 06 - Peso liquido.
                            '||';                                                                                     // 07 - UF da placa do veiculo.

              Say( mLinha, 000, Arquivo, mRegistro );

              Inc(mQtdeRegC160);
              Inc(mQtdeBlocoC);
           End;
      End;
end;

{REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC170(Nota:Integer; Fornecedor: Integer);
Var
   mDescricao : WideString;
begin
      With Dados, dmFiscal do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Nota,');
           tItens.SQL.Add('       Item,');
           tItens.SQL.Add('       NotasItens.Codigo_Mercadoria,');
           tItens.SQL.Add('       CAST(NotasItens.Descricao_Mercadoria AS VARCHAR(5000)) AS Descricao_Mercadoria,');
           tItens.SQL.Add('       Quantidade,');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       Valor_Total,');
           tItens.SQL.Add('       (RTRIM(NotasItens.CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST_ICMS,');
           tItens.SQL.Add('       NotasFiscais.Natureza_Codigo,');
           tItens.SQL.Add('       Valor_BCICMSOper = CASE WHEN ISNULL(NotasFiscais.ICMS_Destacar, 0) = 0 THEN NotasItens.Valor_BCICMSOper  ELSE 0 END,');
           tItens.SQL.Add('       Aliquota_ICMSOper= CASE WHEN ISNULL(NotasFiscais.ICMS_Destacar, 0) = 0 THEN NotasItens.Aliquota_ICMSOper ELSE 0 END,');
           tItens.SQL.Add('       Valor_ICMSOper   = CASE WHEN ISNULL(NotasFiscais.ICMS_Destacar, 0) = 0 THEN NotasItens.Valor_ICMSOper    ELSE 0 END,');
           tItens.SQL.Add('       Valor_BCICMSSub  = CASE WHEN ISNULL(NotasFiscais.ICMS_Destacar, 0) = 0 THEN NotasItens.Valor_BCICMSSub   ELSE 0 END,');
           tItens.SQL.Add('       Aliquota_ICMSSub = CASE WHEN ISNULL(NotasFiscais.ICMS_Destacar, 0) = 0 THEN NotasItens.Aliquota_ICMSSub  ELSE 0 END,');
           tItens.SQL.Add('       Valor_ICMSSub    = CASE WHEN ISNULL(NotasFiscais.ICMS_Destacar, 0) = 0 THEN NotasItens.Valor_ICMSSub     ELSE 0 END,');
           tItens.SQL.Add('       CSTIPI,');
           tItens.SQL.Add('       (SELECT Enquadramento_IPI FROM NCM WHERE(NCM.NCM = NotasItens.NCM)) AS Enquadramento_IPI,');
           tItens.SQL.Add('       NotasItens.Aliquota_IPI,');
           tItens.SQL.Add('       Total_IPI,');
           tItens.SQL.Add('       CSTPIS,');
           tItens.SQL.Add('       NotasItens.Aliquota_PIS,');
           tItens.SQL.Add('       NotasItens.Valor_PIS,');
           tItens.SQL.Add('       CSTCOFINS,');
           tItens.SQL.Add('       NotasItens.Aliquota_COFINS,');
           tItens.SQL.Add('       NotasItens.Valor_COFINS,');
           tItens.SQL.Add('       Produtos.ClasseEnquadra_IPI,');
           tItens.SQL.Add('       Produtos.Valor_IPI AS Enquadra_ValorIPI,');
           tItens.SQL.Add('       Produtos.Quantidade_Unidade,');
           tItens.SQL.Add('       Valor_Desconto = isnull(Desconto_Valor, 0)');
           tItens.SQL.Add('FROM   NotasItens, NotasFiscais, Produtos');
           tItens.SQL.Add('WHERE  (YEAR(Data) = :pAno AND MONTH(Data) = :pMes) AND (Nota = :pNota) AND (NotasFiscais.Numero = NotasItens.Nota) AND (Produtos.Codigo = NotasItens.Codigo_Mercadoria) AND (NotasFiscais.Fornecedor_Codigo = :pFornecedor)');
           tItens.SQL.Add('UNION  ALL');
           tItens.SQL.Add('SELECT NotasTerceirosItens.Nota,');
           tItens.SQL.Add('       Item,');
           tItens.SQL.Add('       NotasTerceirosItens.Codigo_Mercadoria,');
           tItens.SQL.Add('       CAST(NotasTerceirosItens.Descricao_Mercadoria AS VARCHAR(5000)) AS Descricao_Mercadoria,');
           tItens.SQL.Add('       NotasTerceirosItens.Quantidade,');
           tItens.SQL.Add('       NotasTerceirosItens.Unidade_Medida,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_Liquido, ');
           tItens.SQL.Add('       (RTRIM(NotasTerceirosItens.CodigoTrib_TabA)+RTRIM(NotasTerceirosItens.CodigoTrib_TabB)) AS CST_ICMS,');
           tItens.SQL.Add('       NotasTerceirosItens.Natureza_Codigo,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_BCICMSOper,');
           tItens.SQL.Add('       NotasTerceirosItens.Aliquota_ICMSOper,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_ICMSOper,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_BCICMSSub, ');
           tItens.SQL.Add('       NotasTerceirosItens.Aliquota_ICMSSub,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_ICMSSub,');
           tItens.SQL.Add('       NotasTerceirosItens.CST_IPI,');
           tItens.SQL.Add('       (SELECT Enquadramento_IPI FROM NCM WHERE(NCM.NCM = NotasTerceirosItens.NCM)),');
           tItens.SQL.Add('       NotasTerceirosItens.Aliquota_IPI,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_IPI,');
           tItens.SQL.Add('       NotasTerceirosItens.CST_PIS,');
           tItens.SQL.Add('       NotasTerceirosItens.Aliquota_PIS, ');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_PIS,');
           tItens.SQL.Add('       NotasTerceirosItens.CST_COFINS,');
           tItens.SQL.Add('       NotasTerceirosItens.Aliquota_COFINS,');
           tItens.SQL.Add('       NotasTerceirosItens.Valor_COFINS,');
           tItens.SQL.Add('       Produtos.ClasseEnquadra_IPI,');
           tItens.SQL.Add('       Produtos.Valor_IPI,');
           tItens.SQL.Add('       Produtos.Quantidade_Unidade,');
           tItens.SQL.Add('       Valor_Desconto = isnull(Valor_Desconto, 0)');
           tItens.SQL.Add('FROM   NotasTerceirosItens, NotasTerceiros, Produtos');
           tItens.SQL.Add('WHERE  (YEAR(NotasTerceirosItens.Data_Entrada) = :pAno AND MONTH(NotasTerceirosItens.Data_Entrada) = :pMes) AND (NotasTerceirosItens.Nota = :pNota AND NotasTerceirosItens.Fornecedor = :pFornecedor)');
           tItens.SQL.Add('       AND (ISNULL(NotasTerceiros.Provisoria, 0) <> 1)');
           tItens.SQL.Add('       AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)');
           tItens.SQL.Add('       AND (NotasTerceirosItens.Nota = NotasTerceiros.Nota AND YEAR(NotasTerceiros.Data_Entrada) = :pAno AND MONTH(NotasTerceiros.Data_Entrada) = :pMes) AND ');
           tItens.SQL.Add('       (NotasTerceiros.Fornecedor = NotasTerceirosItens.Fornecedor) AND (Produtos.Codigo = NotasTerceirosItens.Codigo_Mercadoria)');
           tItens.SQL.Add('       AND (NotasTerceiros.Modelo = ''01'' OR NotasTerceiros.Modelo = ''1'' OR NotasTerceiros.Modelo = ''1B'' OR NotasTerceiros.Modelo = ''04'' OR NotasTerceiros.Modelo = ''55'' )');
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT NotasTerceiros.Nota,');
           tItens.SQL.Add('       1,');
           tItens.SQL.Add('       Servico,');
           tItens.SQL.Add('       ''SERVICOS'',');
           tItens.SQL.Add('       1,');
           tItens.SQL.Add('       ''UN'',');
           tItens.SQL.Add('       Valor_TotalLiquido,');
           tItens.SQL.Add('       ''041'',');
           tItens.SQL.Add('       NotasTerceiros.Natureza_Codigo,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       0');
           tItens.SQL.Add('FROM   NotasTerceiros');
           tItens.SQL.Add('WHERE  (YEAR(NotasTerceiros.Data_Entrada) = :pAno AND MONTH(NotasTerceiros.Data_Entrada) = :pMes) AND (Nota = :pNota) AND (Servico IS NOT NULL) AND (NotasTerceiros.Provisoria <> 1)');
           tItens.SQL.Add('ORDER  BY Nota,Item');
           tItens.ParamByName('pAno').AsInteger        := cAno.AsInteger;
           tItens.ParamByName('pMes').AsInteger        := cMes.ItemIndex+1;
           tItens.ParamByName('pNota').AsInteger       := Nota;
           tItens.ParamByName('pFornecedor').AsInteger := Fornecedor;
           //tItens.SQL.SaveToFile('c:\temp\SPED_FISCAL_C170_'+InttoStr(Nota)+'.SQL');
           tItens.Open;

           mItem := 0;

           While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);

                 // Limpando codigos de controle da descrição do item.
                 mDescricao := Copy(Trim(tItens.FieldByName('Descricao_Mercadoria').AsString),1,200);
                 mDescricao := RemoveCaracter(#13, '', mDescricao);
                 mDescricao := RemoveCaracter(#12, '', mDescricao);
                 mDescricao := RemoveCaracter(#10, '', mDescricao);
                 mDescricao := RemoveCaracter('|', '', mDescricao);
                 mDescricao := RemoveCaracter('<{'+Trim(tItens.FieldByName('Codigo_Mercadoria').AsString)+'}>', '', mDescricao);
                 mDescricao := Trim(mDescricao);

                 Inc(mItem);
                 mRegistro  := '|C170' +                                                                       // 01 - REG.
                               '|' + PoeZero(3, mItem) +                                                       // 02 - Numero sequencia do item.
                               '|' + Trim(tItens.FieldByName('Codigo_Mercadoria').AsString) +                  // 03 - Codigo da mercadoria.
                               '|' + mDescricao +                                                              // 04 - Descrição da mercadoria.
                               '|' + FormatFloat('0.00000', tItens.FieldByName('Quantidade').AsFloat) +        // 05 - Quantidade do item.
                               '|' + Trim(tItens.FieldByName('Unidade_Medida').AsString) +                     // 06 - Unidade de medida.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Total').AsCurrency) +       // 07 - Valor total do item.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Desconto').AsCurrency) +    // 08 - Valor do desconto comercial.
                               '|0' +                                                                          // 09 - Movimentação
                               '|' + Trim(tItens.FieldByName('CST_ICMS').AsString) +                           // 10 - CST do ICMS.
                               '|' + Trim(tItens.FieldByName('Natureza_Codigo').AsString) +                    // 11 - Código Fiscal de Operação e Prestação.
                               '|' + Copy(tItens.FieldByName('Natureza_Codigo').AsString,1,1)+'000'+           // 12 - Código da natureza da operação.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency) +  // 13 - Valor da B.C.ICMS Operacional.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat) +    // 14 - Aliquota do ICMS Operacional.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_ICMSOper').AsCurrency) +    // 15 - Valor do ICMS Operacional.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency) +   // 16 - Valor da B.C.ICMS Substitutivo.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Aliquota_ICMSSub').AsFloat) +     // 17 - Aliquota do ICMS Substitutivo.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_ICMSSub').AsCurrency) +     // 18 - Valor do ICMS Substitutivo.
                               '|' + Trim(Empresas.FieldByName('Apuracao_IPI').AsString) +                     // 19 - Periodo de apuração do IPI.
                               '|' + Trim(tItens.FieldByName('CSTIPI').AsString) +                             // 20 - CST do IPI.
                               '|' +                                                                           // 21 - Código de enquadramento legal do IPI.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Total').AsCurrency) +       // 22 - Valor da B.C. IPI.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Aliquota_IPI').AsFloat) +         // 23 - Aliquota do IPI.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Total_IPI').AsCurrency) +         // 24 - Valor do IPI.
                               '|' + Trim(tItens.FieldByName('CSTPIS').AsString) +                             // 25 - CST do PIS.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Total').AsCurrency) +       // 26 - Valor da B.C.PIS.
                               '|' + Trim(tItens.FieldByName('Aliquota_PIS').AsString) +                       // 27 - Aliquota do PIS.
                               '|' +                                                                           // 28 - Quantidade do PIS.
                               '|' +                                                                           // 29 - Aliquota do PIS em reais.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_PIS').AsCurrency) +         // 30 - Valor do PIS.
                               '|' + Trim(tItens.FieldByName('CSTCOFINS').AsString) +                          // 31 - CST da COFINS.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_Total').AsCurrency) +       // 32 - Valor da B.C.da COFINS.
                               '|' + Trim(tItens.FieldByName('Aliquota_COFINS').AsString) +                    // 33 - Aliquota do COFINS
                               '|' +                                                                           // 34 - Quantidade da COFINS
                               '|' +                                                                           // 35 - Aliquota do COFINS em reais.
                               '|' + FormatFloat('0.00', tItens.FieldByName('Valor_COFINS').AsCurrency) +      // 36 - Valor da COFINS.
                               '|' +                                                                           // 37 - Código da conta contabil.
                               '||';                                                                           // 38 - Valor Abatimento não tributado e não comercial Ex.desconto ICMS nas remessas para ZFM.
                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegC170);
                 Inc(mQtdeBlocoC);

                 RegistroC175(tItens.FieldByName('Nota').AsInteger);
                 RegistroC177(tItens.FieldByName('Nota').AsInteger);
                 If (Trim(tItens.FieldByName('ClasseEnquadra_IPI').AsString) <> '') and (tNotas.FieldByName('Tipo').AsInteger = 1) then RegistroC178;

                 tItens.Next;
           End;
      End;
end;

{REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01).}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC172;
begin
       Inc(mLinha);
       mRegistro  := '|C172' +                                                                          // 01 - REG.
                     '|' + FormatFloat('#0.00', tNotas.FieldByName('Total_Nota').AsCurrency) +          // 02 - B.C. do ISSQN.
                     '|' + FormatFloat('#0.00', tNotas.FieldByName('Aliquota_ISS').AsFloat) +           // 03 - Aliquita do ISSQN.
                     '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_ISS').AsCurrency) + '|';      // 04 - Valor do ISSQN.

       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegC172);
       Inc(mQtdeBlocoC);
end;

{REGISTRO C175: OPERAÇÕES COM VEÍCULOS NOVOS}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC175(Nota:Integer);
begin
      With Dados, dmFiscal do begin
           tItens2.SQL.Clear;
           tItens2.SQL.Add('SELECT NotasItens.Nota, NotasFiscais.Operacao_Veiculo, Clientes.CNPJ, Clientes.Estado, Produtos.Codigo_Fabricante AS Chassi');
           tItens2.SQL.Add('FROM NotasItens, NotasFiscais, Clientes, Produtos');
           tItens2.SQL.Add('WHERE  (NotasItens.Veiculo = 1) AND (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (NotasFiscais.Numero = NotasItens.Nota) AND (NotasFiscais.Cliente_Codigo = Clientes.Codigo) AND ');
           tItens2.SQL.Add('       (NotasItens.Codigo_Mercadoria = Produtos.Codigo) AND (NotasItens.Cancelada <> 1) AND NotasFiscais.Nfe_Denegada <> 1 AND (NotasItens.Nota = :pNota)');
           tItens2.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tItens2.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tItens2.ParamByName('pNota').AsInteger := Nota;
           tItens2.Open;
           tItens2.First;

           While (not tItens2.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);
                 mRegistro  := '|C175' +                                                           // 01 - REG.
                               '|' + tItens2.FieldByName('Operacao_Veiculo').AsString +            // 02 - Indicador do tipo de operação com veículo.
                               '|' + tItens2.FieldByName('CNPJ').AsString  +                       // 03 - CNPJ da concessionario.
                               '|' + tItens2.FieldByName('Estado').AsString +                      // 04 - UF da concessionaria.
                               '|' + tItens2.FieldByName('Chassi').AsString + '|';                 // 05 - Chassi do veiculo.

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegC175);
                 Inc(mQtdeBlocoC);

                 tItens2.Next;
           End;
      End;
end;

{REGISTRO C177: OPERAÇÕES COM PRODUTOS SUJEITOS A SELO DE CONTROLE IPI.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC177(Nota:Integer);
begin
      With Dados, dmFiscal do begin
           tItens2.SQL.Clear;
           tItens2.SQL.Add('SELECT DISTINCT NotasItens.NCM, NCM.Selo_IPI FROM NotasItens, NCM');
           tItens2.SQL.Add('WHERE  (YEAR(NotasItens.Data) = :pAno AND MONTH(NotasItens.Data) = :pMes) AND (NotasItens.Cancelada <> 1) AND (NCM.NCM = NotasItens.NCM) AND (NCM.Selo_IPI IS NOT NULL) AND (Nota = :pNota)');
           tItens2.SQL.Add('AND    (SELECT NFe_Denegada FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data) <> 1');
           tItens2.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tItens2.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tItens2.ParamByName('pNota').AsInteger := Nota;
           tItens2.Open;
           tItens2.First;

           While (not tItens2.Eof) and (not Funcoes.Cancelado) do begin
                 Inc(mLinha);
                 mRegistro  := '|C177' +                                                 // 01 - REG.
                               '|' + tItens2.FieldByName('Selo_IPI').AsString +          // 02 - Codigo do selo do IPI.
                               '|' + tItens2.FieldByName('0').AsString + '|';            // 03 - Quantidade de selo aplicada.

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegC177);
                 Inc(mQtdeBlocoC);

                 tItens2.Next;
           End;
      End;
end;

{REGISTRO C178: OPERAÇÕES COM PRODUTOS SUJEITOS À TRIBUTAÇÀO DE IPI POR UNIDADE OU QUANTIDADE DE PRODUTO.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC178;
begin
       Inc(mLinha);
       mRegistro  := '|C178' +                                                                          // 01 - REG.
                     '|' + tItens.FieldByName('ClasseEnquadra_IPI').AsString +                          // 02 - Codigo de euquadramento do IPI.
                     '|' + FormatFloat('#0.00', tItens.FieldByName('Enquadra_ValorIPI').AsCurrency) +   // 04 - Valor do IPI por unidade.
                     '|' + Trim(tItens.FieldByName('Quantidade_Unidade').AsString) + '|';               // 04 - Quantidade por unidade.

       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegC178);
       Inc(mQtdeBlocoC);
end;

{REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01,1B,04,55)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC190(Nota:Integer; Emitente:Integer; TipoNF:Integer; Data_Emi: TDate; pFornecedor: Integer);
Var
   mCST: String;
   mSQL: WideString;
begin
     with Dados, TipoNota do begin
          sql.Clear;
          sql.Add('select * from TipoNota where Codigo = :pCodigo');
          parambyname('pCodigo').AsInteger := TipoNF;
          open;
     end;
     with tNotas2 do begin
          if Emitente = 0 then begin
             SQL.Clear;
             SQL.Add('SELECT Nota');
             SQL.Add('      ,Valor_Total');
             SQL.Add('      ,Valor_ICMSSub');
             SQL.Add('      ,Total_IPI');
             SQL.Add('      ,Valor_II');
             SQL.Add('      ,Valor_Despesa');
             SQL.Add('      ,Quantidade');
             SQL.Add('      ,CodigoTrib_TabA');
             SQL.Add('      ,CodigoTrib_TabB');
             SQL.Add('      ,Aliquota_ICMSOper');
             SQL.Add('      ,Valor_BCICMSOper');
             SQL.Add('      ,Valor_ICMSOper');
             SQL.Add('      ,Valor_BCICMSSub');
             SQL.Add('      ,Valor_ICMSReducao');
             SQL.Add('      ,(SELECT Quantidade_Unidade FROM Produtos     WHERE(Codigo = NotasItens.Codigo_Mercadoria)) AS Quantidade_Unidade');
             SQL.Add('      ,(SELECT Natureza_Codigo    FROM NotasFiscais WHERE(Numero = NotasItens.Nota) AND (Data_Emissao = NotasItens.Data)) AS Natureza_Codigo');
             SQL.Add('      ,Valor_PIS');
             SQL.Add('      ,Valor_COFINS');
             SQL.Add('      ,Valor_Frete');
             SQL.Add('      ,Desconto_Valor = (Desconto_Valor * Quantidade)');
             SQL.Add('      ,Valor_ICMSMono');
             SQL.Add('      ,Valor_ICMSMonoRet');
             SQL.Add('INTO #Temp');
             SQL.Add('FROM NotasItens');
             SQL.Add('WHERE (YEAR(NotasItens.Data) = :pAno AND MONTH(NotasItens.Data) = :pMes) AND (NotasItens.Nota = :pNota)');
             SQL.Add('SELECT Natureza_Codigo,');
             SQL.Add('       Aliquota_ICMSOper,');

             // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
             mSQL := '';
             If Pos('Pedidos_[Valor_TotalProdutos]', Dados.TipoNotaCalculo_TotalPedido.AsString) > 0 then begin
                mSQL := '       SUM(ISNULL(Valor_Total, 0)';
             end;
             If Pos('Pedidos_[Valor_OutrasDespesas]', Dados.TipoNotaCalculo_TotalPedido.AsString) > 0 then begin
                {
                if trim(mSQL) = '' then begin
                   mSQL := '       SUM(ISNULL(((Valor_Despesa * Quantidade) * Quantidade_Unidade), 0)';
                end else begin
                   mSQL := mSQL + ' + ((Valor_Despesa * Quantidade) * Quantidade_Unidade)';
                end;
                }
                if trim(mSQL) = '' then begin
                   mSQL := '       SUM(ISNULL(((Valor_Despesa * Quantidade)), 0)';
                end else begin
                   mSQL := mSQL + ' + ((Valor_Despesa * Quantidade))';
                end;
                If Pos('Pedidos_[Valor_PIS]', Dados.TipoNotaCalculo_OutrasDespesas.AsString) > 0 then
                   mSQL := mSQL + ' + ISNULL(Valor_PIS, 0)';
                If Pos('Pedidos_[Valor_COFINS]', Dados.TipoNotaCalculo_OutrasDespesas.AsString) > 0 then
                   mSQL := mSQL + ' + ISNULL(Valor_COFINS, 0)';
             End;
             If Pos('Pedidos_[Valor_ICMS]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                mSQL := mSQL + ' + ISNULL(Valor_ICMSOPer, 0)';
             If Pos('Pedidos_[ValorICMS_Substitutivo]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                mSQL := mSQL + ' + ISNULL(Valor_ICMSSub, 0)';
             If (Pos('Pedidos_[Valor_Frete]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) or (Pos('Pedidos_[Total_Frete]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) then
                mSQL := mSQL + ' + ISNULL(Valor_Frete, 0)';
             If Pos('Pedidos_[Valor_Seguro]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                mSQL := mSQL + ' + ISNULL(Valor_Seguro, 0)';
             If Pos('Pedidos_[Valor_TotalII]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                mSQL := mSQL + ' + (ISNULL(Valor_II, 0) * Quantidade)';
             If Pos('Pedidos_[Valor_TotalIPI]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                mSQL := mSQL + ' + ISNULL(Total_IPI, 0)';
             If (Pos('Valor_PIS', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) or (Pos('NCM_[PIS]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) or (Pos('PagarReceber_PIS', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) then
                mSQL := mSQL + ' + ISNULL(Valor_PIS, 0)';
             If (Pos('Valor_COFINS', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) or (Pos('NCM_[COFINS]', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) or (Pos('PagarReceber_COFINS', Dados.TipoNotaCalculo_TotalPedido.AsString ) > 0) then
                mSQL := mSQL + ' + ISNULL(Valor_COFINS, 0)';
             If Pos('Pedidos_[Valor_ICMSMono]', Dados.TipoNotaCalculo_TotalPedido.AsString) > 0 then
                mSQL := mSQL + ' + ISNULL(Valor_ICMSMono, 0) ';
             If Pos('Pedidos_[Valor_ICMSMonoRet]', Dados.TipoNotaCalculo_TotalPedido.AsString) > 0 then
                mSQL := mSQL + ' + ISNULL(Valor_ICMSMonoRet, 0) ';
             If Pos('Desconto', Dados.TipoNotaCalculo_TotalPedido.AsString) > 0 then
                mSQL := mSQL + ' - ISNULL(Desconto_Valor, 0) ';

             mSQL := mSQL + ') AS Valor_TotalNota,';
             SQL.Add(mSQL);

             SQL.Add('       SUM(Valor_BCICMSOper)  AS BCICMS,');
             SQL.Add('       SUM(Valor_ICMSOper)    AS Valor_ICMS,');
             SQL.Add('       SUM(Valor_BCICMSSub)   AS BCICMS_Substitutivo,');
             SQL.Add('       SUM(Valor_ICMSSub)     AS ValorICMS_Substitutivo,');
             SQL.Add('       SUM(Total_IPI)         AS Valor_TotalIPI,');
             SQL.Add('       SUM(Valor_Total)       AS Valor_TotalProdutos,');
             SQL.Add('       SUM(Valor_ICMSReducao) AS Valor_ICMSReducao,');
             SQL.Add('       SUM(Valor_Frete)       AS Valor_Frete,');
             SQL.Add('       SUM(Desconto_Valor)    AS Valor_Desconto,');
             SQL.Add('       RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB) AS CST');
             SQL.Add('FROM   #Temp');
             SQL.Add('WHERE  (Nota = :pNota)');
             SQL.Add('GROUP BY RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB), Natureza_Codigo, Aliquota_ICMSOper');
             //SQL.SaveToFile('c:\Temp\SPED_FISCAL_C190_Nota_'+InttoStr(Nota)+'_Propria.SQL');
          end else begin
             SQL.Clear;
             SQL.Add('SELECT Natureza_Codigo,');
             SQL.Add('       Aliquota_ICMSOper,');
             SQL.Add('       SUM(Valor_Liquido+ISNULL(Valor_IPI,0)+ISNULL(Valor_ICMSSub,0)) AS Valor_TotalNota,');
             SQL.Add('       SUM(Valor_BCICMSOper) AS BCICMS,');
             SQL.Add('       SUM(Valor_ICMSOper) AS Valor_ICMS,');
             SQL.Add('       SUM(Valor_BCICMSSub)   AS BCICMS_Substitutivo,');
             SQL.Add('       SUM(Valor_ICMSSubOrig) AS ValorICMS_Substitutivo,');
             SQL.Add('       SUM(Valor_IPI) AS Valor_TotalIPI,');
             SQL.Add('       SUM(Valor_Liquido) AS Valor_TotalProdutos,');
             SQL.Add('       0 AS Valor_ICMSReducao,');
             SQL.Add('       RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB) AS CST');
             SQL.Add('FROM   NotasTerceirosItens');
             SQL.Add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Nota = :pNota) AND (Data_Emissao = :pDataEmi) AND (Fornecedor = :pFornecedor)');
             SQL.Add('GROUP BY RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB), Natureza_Codigo, Aliquota_ICMSOper');
             //SQL.SaveToFile('c:\Temp\SPED_FISCAL_C190_Nota_'+InttoStr(Nota)+'_Terceiros.SQL');
             ParamByName('pDataEmi').AsDate       := Data_Emi;
             ParamByName('pFornecedor').AsInteger := pFornecedor;
          end;

          ParamByName('pAno').AsInteger  := cAno.AsInteger;
          ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
          ParamByName('pNota').AsInteger := Nota;
          Open;

          if RecordCount <> 0 then begin
             while not Eof do begin
                   mCST := '000';
                   if Trim(FieldByName('CST').AsString) <> '' then
                      mCST := FieldByName('CST').Value;

                   inc(mLinha);
                   mRegistro := '|C190' +                                                                          // 01 - REG.
                                '|' + mCST +                                                                       // 02 - Código da Situação Tributária.
                                '|' + FieldByName('Natureza_Codigo').AsString +                                    // 03 - Código Fiscal de Operação.
                                '|' + FormatFloat('#0.00', FieldByName('Aliquota_ICMSOper').AsFloat) +             // 04 - Alíquota do ICMS.
                                '|' + FormatFloat('#0.00', FieldByName('Valor_TotalNota').AsCurrency) +            // 05 - Valor da operação na combinação de CST_ICMS.
                                '|' + FormatFloat('#0.00', FieldByName('BCICMS').AsCurrency) +                     // 06 - B.C. ICMS.
                                '|' + FormatFloat('#0.00', FieldByName('Valor_ICMS').AsCurrency) +                 // 07 - Valor do ICMS.
                                '|' + FormatFloat('#0.00', FieldByName('BCICMS_Substitutivo').AsCurrency) +        // 08 - B.C. do ICMS da substituição tributária.
                                '|' + FormatFloat('#0.00', FieldByName('ValorICMS_Substitutivo').AsCurrency) +     // 09 - Valor do ICMS da substituição tributária.
                                '|' + FormatFloat('#0.00', FieldByName('Valor_ICMSReducao').AsCurrency) +          // 10 - Valor da redução do ICMS.
                                '|' + FormatFloat('#0.00', FieldByName('Valor_TotalIPI').AsCurrency) +             // 11 - Valor do IPI.
                                '|' +                                                                              // 12 - Codigo Descrição observação.
                                '|';
                   Say(mLinha, 000, Arquivo, mRegistro);
                   next;
                   inc(mQtdeRegC190);
                   inc(mQtdeBlocoC);
             end;
          end;
     end;
end;

{REGISTRO C195: OBSERVAÇÕES DO LANÇAMENTO FISCAL (CÓDIGO 01, 1B, 04, 55 E 65)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC195;
begin
     Inc(mLinha);
     mRegistro  := '|C195' +                                                      // 01 - REG.
                   '|' + tNotas.FieldByName('Beneficio').AsString +               // 02 - Código da observação do lançamento fiscal.
                   '|' + tNotas.FieldByName('Beneficio_Desc').AsString + '|';     // 03 - Descrição complementar do código de observação.

     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeRegC195);
     Inc(mQtdeBlocoC);
end;

{REGISTRO C197: OUTRAS OBRIGAÇÕES TRIBUTÁRIAS, AJUSTES E INFORMAÇÕES DE VALORES PROVENIENTES DE DOCUMENTO FISCAL}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC197(Nota: Integer; Emitente: Integer; TipoNF:Integer; Data_Emi: TDate; pFornecedor: Integer);
begin
     tItens2.SQL.clear;
     try
         if Emitente = 0 then begin
            tItens2.SQL.add('select Valor_BCICMSOper = sum(Valor_BCICMSOper)');
            tItens2.SQL.add('      ,Aliquota_ICMSOper');
            tItens2.SQL.add('      ,Valor_ICMSOper = sum(Valor_ICMSOper)');
            tItens2.SQL.add('      ,Valor_ICMSSub = sum(Valor_ICMSSub)');
            tItens2.SQL.add('      ,Codigo_Mercadoria');
            tItens2.SQL.add('from NotasItens');
            tItens2.SQL.add('where Nota = :pNota');
            tItens2.SQL.add('and Data = :pData');
            tItens2.SQL.add('and Valor_ICMSOper > 0');
            tItens2.SQL.add('group by Aliquota_ICMSOper, Codigo_Mercadoria');
            tItens2.SQL.add('order by Aliquota_ICMSOper');
         end else begin
            tItens2.SQL.add('select Valor_BCICMSOper = sum(Valor_BCICMSOper)');
            tItens2.SQL.add('      ,Aliquota_ICMSOper');
            tItens2.SQL.add('      ,Valor_ICMSOper = sum(Valor_ICMSOper)');
            tItens2.SQL.add('      ,Valor_ICMSSub = sum(Valor_ICMSSub)');
            tItens2.SQL.add('      ,Codigo_Mercadoria');
            tItens2.SQL.add('from NotasTerceirosItens');
            tItens2.SQL.add('where Nota = :pNota');
            tItens2.SQL.add('and Data_Entrada = :pData');
            tItens2.SQL.add('and Fornecedor = :pForn');
            tItens2.SQL.add('and Valor_ICMSOper > 0');
            tItens2.SQL.add('group by Aliquota_ICMSOper, Codigo_Mercadoria');
            tItens2.SQL.add('order by Aliquota_ICMSOper');
            tItens2.ParamByName('pForn').asinteger := pFornecedor;
         end;
         tItens2.ParamByName('pNota').asinteger := Nota;
         tItens2.ParamByName('pData').asDate    := Data_Emi;
         //tItens2.sql.savetofile('c:\temp\REGISTROC197_NF'+inttostr(Nota)+'.sql');
         tItens2.Open;
     except
         showmessage('ERRO NA NOTA FISCAL '+inttostr(Nota)+' DE '+datetostr(Data_Emi));
     end;

     Janela_ProcessamentoSPED.Progresso3.Position := 0;
     Janela_ProcessamentoSPED.Progresso3.Max      := tItens2.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: C197...';

     while not tItens2.eof do begin
           Inc(mLinha);
           mRegistro  := '|C197' +                                                                            // 01 - REG.
                         '|' + tNotas.FieldByName('Beneficio_Cod').AsString +                                 // 02 - Código do ajustes/benefício/incentivo.
                         '|' +                                                                                // 03 - Descrição complementar do ajuste do documento fiscal.
                         '|' + tItens2.FieldByName('Codigo_Mercadoria').asstring +                            // 04 - Código do item (campo 02 do Registro 0200).
                         '|' + FormatFloat('#0.00', tItens2.FieldByName('Valor_BCICMSOper').Ascurrency) +     // 05 - Base de cálculo do ICMS ou do ICMS ST.
                         '|' + FormatFloat('#0.00', tItens2.FieldByName('Aliquota_ICMSOper').Ascurrency) +    // 06 - Alíquota do ICMS.
                         '|' + FormatFloat('#0.00', tItens2.FieldByName('Valor_ICMSOper').Ascurrency) +       // 07 - Valor do ICMS ou do ICMS ST.
                         '|' +                                                                                // 08 - Outros valores.
                         '|';

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegC197);
           Inc(mQtdeBlocoC);

           Application.ProcessMessages;
           Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
           tItens2.Next;
     end;
end;

{REGISTRO C500: NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC500;
begin
     Janela_ProcessamentoSPED.Progresso2.Position := 0;
     Janela_ProcessamentoSPED.Progresso2.Max      := tItens2.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: C500...';

     tNotas.SQL.Clear;
     tNotas.SQL.Add('SELECT *');
     tNotas.SQL.Add('      ,Indicador_IE   = '''' ');
     tNotas.SQL.Add('      ,Codigo_Mun     = '''' ');
     tNotas.SQL.Add('      ,Conta_Contabil = (SELECT Conta_TotalNota_D FROM ReferenciasFiscais WHERE Codigo = NotasTerceiros.Referencia_Fiscal)');
     tNotas.SQL.Add('FROM NotasTerceiros');
     tNotas.SQL.Add('WHERE (YEAR(NotasTerceiros.Data_Entrada) = :pAno AND MONTH(NotasTerceiros.Data_Entrada) = :pMes)');
     tNotas.SQL.Add('  AND NotasTerceiros.Modelo IN(''06'', ''66'')');
     tNotas.SQL.Add('  AND NotasTerceiros.Provisoria <> 1');
     tNotas.SQL.Add('  AND ISNULL(Desdobramento,0) = 0' );
     tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
     //tNotas.SQL.SaveToFile('c:\temp\SPED_FISCAL_C500.SQL');
     tNotas.Open;

     while not tNotas.Eof do begin
           Inc(mLinha);
           mRegistro := '|C500' +                                                                                  // 01 - REG.
                        '|0' +                                                                                     // 02 - 0 - Entrada / 1 - Saida.
                        '|1' +                                                                                     // 03 - 0 - Propria / 1 - Terceiros.
                        '|' + Trim(tNotas.FieldByName('Fornecedor').AsString+'F') +                                // 04 - Codigo do participante.
                        '|' + Trim(tNotas.FieldByName('Modelo').AsString ) +                                       // 05 - Codigo do modelo.
                        '|00' +                                                                                    // 06 - Situação do documento.
                        '|' + Trim(tNotas.FieldByName('Serie').AsString) +                                         // 07 - Serie.
                        '|' + Trim(tNotas.FieldByName('SubSerie').AsString) +                                      // 08 - Sub-Serie.
                        '|02' +                                                                                    // 09 - Tipo de consumo.
                        '|' + Trim(tNotas.FieldByName('Nota').AsString) +                                          // 10 - Numero da Nota.
                        '|' + Trim(RemoveCaracter('/', '', tNotas.FieldByName('Data_Emissao').AsString)) +         // 11 - Data emissao da NF.`
                        '|' + Trim(RemoveCaracter('/', '', tNotas.FieldByName('Data_Entrada').AsString)) +         // 12 - Data entrada.
                        '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +             // 13 - Valor total da nota.
                        '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalDescontos').AsCurrency) +        // 14 - Valor total dos descontos.
                        '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +             // 15 - Valor total consumido.
                        '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +             // 16 - Valor total serviço não tributados.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 17 - Valor total serviço não tributados.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 18 - Despesas acessorias.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 19 - BC.ICMS.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 20 - Valor Acumulado do ICMS.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 21 - Valor Acumulado da BCICMS ST.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 22 - Valor retido ICMS ST.
                        '|' + iif(tNotas.FieldByName('Observacoes').asstring = '', '', 'T'+tNotas.FieldByName('Referencia_Fiscal').asstring) +  // 23 - Codigo de inf.complementar.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 24 - Valor PIS.
                        '|' + FormatFloat('#0.00', 0 ) +                                                           // 25 - Valor COFINS.
                        '|' +                                                                                      // 26 - Código de tipo de Ligação: 1-Monofásico/ 2-Bifásico/ 3-Trifásico.
                        '|' +                                                                                      // 27 - Código de grupo de tensão:
                        '|' + Trim(tNotas.FieldByName('Nfe_cNF').AsString) +                                       // 28 - Chave da Nota Fiscal de Energia Elétrica ELETRÔNICA.
                        '|' +                                                                                      // 29 - Finalidade da emissão do documento eletrônico. 1–Normal /2-Substituição /3–Normal com ajuste.
                        '|' +                                                                                      // 30 - Chave da nota referenciada.
                        '|' + Trim(tNotas.FieldByName('Indicador_IE').AsString) +                                  // 31 - Indicador do Destinatário/Acessante.
                        '|' + Trim(tNotas.FieldByName('Codigo_Mun').AsString) +                                    // 32 - Código do município do destinatário conforme a tabela do IBGE.
                        '|' + Trim(tNotas.FieldByName('Conta_Contabil').AsString) +                                // 33 - Código da conta analítica contábil debitada/creditada.
                        '|' +                                                                                      // 34 - Código do modelo do documento fiscal referenciado, conforme a Tabela 4.1.1
                        '|' +                                                                                      // 35 - Código de autenticação digital do registro (Convênio 115/2003).
                        '|' +                                                                                      // 36 - Série do documento fiscal referenciado.
                        '|' +                                                                                      // 37 - Número do documento fiscal referenciado.
                        '|' +                                                                                      // 38 - Mês e ano da emissão do documento fiscal referenciado.
                        '|' +                                                                                      // 39 - Energia injetada.
                        '|' +                                                                                      // 40 - Outras deduções.
                        '|';

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegC500);
           Inc(mQtdeBlocoC);

           RegistroC590(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Data_Entrada').AsDateTime, tNotas.FieldByName('Fornecedor').AsInteger);

           tNotas.Next;

           Application.ProcessMessages;
           Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
     end;
end;

{REGISTRO C510: Itens da Nota Fiscal}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC510(Nota: Integer; Data:TDate; Emitente: Integer);
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT * FROM NotasTerceirosItens ');
     tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = :pFornecedor)' );
     tItens.ParamByName('pNota').AsInteger       := Nota;
     tItens.ParamByName('pData').AsDate          := Data;
     tItens.ParamByName('pFornecedor').AsInteger := Emitente;
     tItens.Open;

     While not tItens.Eof do begin
           Inc(mLinha);
           mRegistro  := '|C510' +                                                                                                          // 01 - REG.
                         '|' + tItens.FieldByName('Item').AsString +                                                                        // 02 - Número sequencial do item no documento fiscal.
                         '|' + tItens.FieldByName('Codigo_Mercadoria').AsString +                                                           // 03 - Código do item.
                         '|' + '0601' +                                                                                                     // 04 - Código de classificação do item de energia elétrica: 601= Consumo.
                         '|' + FormatFloat('#0.000', tItens.FieldByName('Quantidade').AsFloat) +                                            // 05 - Quantidade do item.
                         '|' + tItens.FieldByName('Unidade_Medida').AsString +                                                              // 06 - Unidade do item.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Liquido').AsCurrency) +                                       // 07 - Valor do Item.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Desconto').AsCurrency) +                                      // 08 - Valor total do desconto.
                         '|' + Trim(tItens.FieldByName('CodigoTrib_TabA').AsString) + Trim(tItens.FieldByName('CodigoTrib_TabB').AsString)+ // 09 - CST ICMS.
                         '|' + Trim(tNotas.FieldByName('Natureza_Codigo').AsString) +                                                       // 10 - Código Fiscal de Operação e Prestação.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency) +                                    // 11 - Valor da base de cálculo do ICMS.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Aliquota_ICMSOper').AsFloat) +                                     // 12 - Aliquota do ICMS Operacional.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Valor_ICMSOper').AsCurrency) +                                     // 13 - Valor do ICMS creditado/debitado.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Valor_BCICMSSub').AsCurrency) +                                    // 14 - Valor da base de cálculo referente à substituição tributária.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Aliquota_ICMSSub').AsCurrency) +                                   // 15 - Alíquota do ICMS da substituição tributária na unidade da federação de destino.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Valor_ICMSSub').AsCurrency) +                                      // 16 - Valor do ICMS referente à substituição tributária.
                         '|' + '1' +                                                                                                        // 17 - Indicador do tipo de receita: 0-Receita Pópria / 1-Receita de Terceiros.
                         '|' + tItens.FieldByName('Fornecedor').AsString+'F' +                                                              // 18 - Código do participante receptor da receita.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Valor_PIS').AsCurrency) +                                          // 19 - Valor do PIS.
                         '|' + FormatFloat('#0.00' , tItens.FieldByName('Valor_COFINS').AsCurrency) +                                       // 20 - Valor da COFINS.
                         '|' +                                                                                                              // 21 - Codigo contabil.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegC510);
            Inc(mQtdeBlocoC);

            tItens.Next;

            Application.ProcessMessages;
            Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
     End;
end;

{REGISTRO C590: REGISTRO ANALÍTICO DO DOCUMENTO }
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC590(Nota: Integer; Data:TDate; Emitente: Integer);
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT LTRIM(RTRIM(CodigoTrib_TabA))+LTRIM(RTRIM(CodigoTrib_TabB)) AS CST,');
     tItens.SQL.Add('       Natureza_Codigo AS CFOP,');
     tItens.SQL.Add('       Aliquota_ICMSOper,');
     tItens.SQL.Add('       ISNULL(SUM(Valor_Liquido), 0)    AS Valor_Operacao,');
     tItens.SQL.Add('       ISNULL(SUM(Valor_BCICMSOper), 0) AS Valor_BCICMSOper,');
     tItens.SQL.Add('       ISNULL(SUM(Valor_ICMSOper), 0)   AS Valor_ICMSOper,');
     tItens.SQL.Add('       ISNULL(SUM(Valor_BCICMSSub), 0)  AS Valor_BCICMSSub,');
     tItens.SQL.Add('       ISNULL(SUM(Valor_ICMSSub), 0)    AS Valor_ICMSSub,');
     tItens.SQL.Add('       0 AS Valor_Reducao');
     tItens.SQL.Add('FROM NotasTerceirosItens');
     tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = :pFornecedor)' );
     tItens.SQL.Add('GROUP BY LTRIM(RTRIM(CodigoTrib_TabA))+LTRIM(RTRIM(CodigoTrib_TabB)), Natureza_Codigo, Aliquota_ICMSOper');
     tItens.ParamByName('pNota').AsInteger       := Nota;
     tItens.ParamByName('pData').AsDate          := Data;
     tItens.ParamByName('pFornecedor').AsInteger := Emitente;
     //tItens.SQL.SaveToFile('c:\temp\SPED_FISCAL_C590.sql');
     tItens.Open;

     while not tItens.Eof do begin
           Inc(mLinha);
           mRegistro  := '|C590' +                                                                                  // 01 - REG.
                         '|' + tItens.FieldByName('CST').AsString +                                                 // 02 - Código da Situação Tributária.
                         '|' + tItens.FieldByName('CFOP').AsString +                                                // 03 - Código Fiscal de Operação e Prestação.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat) +              // 04 - Aliquota do ICMS.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Operacao').AsCurrency) +              // 05 - Valor Operação.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency) +            // 06 - Valor da base de cálculo do ICMS.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_ICMSOper').AsCurrency) +              // 07 - Valor do ICMS.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency) +             // 08 - Valor da base de cálculo do ICMS" da substituição.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_ICMSSub').AsCurrency) +               // 09 - valor creditado/debitado do ICMS da substituição.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Reducao').AsCurrency) +               // 10 - Valor não tributado em função da redução da base de cálculo do ICMS.
                         '|' +                                                                                      // 11 - Observação.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegC590);
            Inc(mQtdeBlocoC);

            tItens.Next;

            Application.ProcessMessages;
            Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
     end;
end;

{REGISTRO C990: ENCERRAMENTO DO BLOCO C}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroC990;
begin
       Inc(mQtdeRegC990);
       Inc(mQtdeBlocoC);
       Inc(mLinha);
       mRegistro  := '|C990' +                           // 01 - REG.
                     '|'+ InttoStr(mQtdeBlocoC)+'|';     // 02 - Quantidade de Linhas do BLOCO C.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO D001: ABERTURA DO BLOCO D}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD001;
begin
       tNotas.SQL.Clear;
       tNotas.SQL.Add('SELECT * FROM NotasTerceiros');
       tNotas.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (ISNULL(Desdobramento, 0) = 0)');
       tNotas.SQL.Add('  AND (Modelo IN(''07'',''08'',''8B'',''09'',''10'',''11'',''21'', ''22'',''26'',''27'',''57'', ''67'')) AND (Provisoria <> 1)' );
       tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
       tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
       tNotas.Open;

       Inc(mLinha);
       mRegistro := '|D001';                   // 01 - REG.
       If tNotas.RecordCount = 0 then
          mRegistro := mRegistro + '|1|'       // 02 - Com/Sem dados informados.
       else
          mRegistro := mRegistro + '|0|';

       Say( mLinha, 000, Arquivo, mRegistro );
       Inc(mQtdeRegD001);
       Inc(mQtdeBlocoD);
end;

{REGISTRO D100: NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO DE CARGAS}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD100;
begin
       tNotas.SQL.Clear;
       tNotas.SQL.Add('SELECT *');
       tNotas.SQL.Add('      ,Beneficio      = (select cast(Codigo as varchar(2))+''2'' from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal)');
       tNotas.SQL.Add('      ,Beneficio_Cod  = (select Codigo_AjusteCTR from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal)');
       tNotas.SQL.Add('      ,Beneficio_Desc = (select Descricao_AjusteCTR from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS where IFS.Nome = Incentivo_Fiscal)');
       tNotas.sql.add('FROM   NotasTerceiros');
       tNotas.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Modelo IN(''07'',''08'',''8B'',''09'',''10'',''11'',''26'',''27'',''57'', ''67'')) AND (NotasTerceiros.Provisoria <> 1)' );
       tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
       tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
       //tNotas.sql.savetofile('c:\temp\REGISTROD100.sql');
       tNotas.Open;
       tNotas.First;

       Janela_ProcessamentoSPED.Progresso2.Position := 0;
       Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
       Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: D100...';

       While (not tNotas.Eof) and (not Funcoes.Cancelado) do begin
             Inc(mLinha);
             mRegistro := '|D100' +                                                                                                                             // 01 - REG.
                          '|0' +                                                                                                                                // 02 - Indicador do tipo de operação.
                          '|1' +                                                                                                                                // 03 - Indicador do emitente do documento fiscal.
                          '|' + Trim(InttoStr(tNotas.FieldByName('Fornecedor').AsInteger))+'F' +                                                                // 04 - Codigo do Participante.
                          '|' + Trim(tNotas.FieldbyName('Modelo').AsString) +                                                                                   // 05 - Modelo do documento.
                          '|00' +                                                                                                                               // 06 - Situacao da NF.
                          '|' + Trim(tNotas.FieldByName('Serie').AsString) +                                                                                    // 07 - Serie da NF.
                          '|' + Trim(tNotas.FieldByName('SubSerie').AsString) +                                                                                 // 08 - SubSerie da NF.
                          '|' + Trim(tNotas.FieldByName('Nota').AsString) +                                                                                     // 09 - Numero da NF.
                          '|' + Trim(tNotas.FieldByName('NFe_cNF').AsString) +                                                                                  // 10 - Chave da Nota Fiscal Eletrônica.
                          '|' + Trim(RemoveCaracter('/', '', tNotas.FieldByName('Data_Emissao').AsString)) +                                                    // 11 - Data emissao da NF.`
                          '|' + Trim(RemoveCaracter('/', '', tNotas.FieldByName('Data_Entrada').AsString)) +                                                    // 12 - Data Entrada/Saida da NF.
                          '|' +                                                                                                                                 // 13 - Tipo.
                          '|' +                                                                                                                                 // 14 - Chave CT-e.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +                                                        // 15 - Valor total da NF.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalDescontos').AsCurrency) +                                                   // 16 - Total dos descontos.
                          '|2' +                                                                                                                                // 17 - Tipo de frete Emitente/Destinatio/Terceiros/Sem frete.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +                                                        // 18 - Total prestação de serviço.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_BCICMSOper').AsCurrency) +                                                       // 19 - B.C.ICMS Operacional.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_ICMSOper').AsCurrency) +                                                         // 20 - Valor ICMS Operacional.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_IsentasICMS').AsCurrency+tNotas.FieldByName('Valor_OutrasICMS').AsCurrency) +    // 21 - Não tributados.
                          '|' + iif(trim(tNotas.fieldbyname('Observacoes').asstring) <> '', 'T'+tNotas.FieldByName('Referencia_Fiscal').asstring, '') +        // 22 - Código de informação complementar.
                          '|' +                                                                                                                                 // 23 - Código da conta analítica contábil debitada/creditada.
                          '|' + tNotas.FieldByName('Municipio_Origem').AsString +                                                                               // 24 - Código do município de origem do serviço.
                          '|' + tNotas.FieldByName('Municipio_Destino').AsString +                                                                              // 25 - Código do município de Destino.
                          '|';
             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegD100);
             Inc(mQtdeBlocoD);

             If (Trim(tNotas.FieldByName('Modelo').AsString) = '07') or (Trim(tNotas.FieldByName('Modelo').AsString) = '7') then
                 RegistroD110(tNotas.FieldByName('Nota').AsInteger);

             RegistroD190(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Data_Emissao').Asdatetime, tNotas.FieldByName('Natureza_Codigo').Asstring, tNotas.FieldByName('Fornecedor').AsInteger);

             if tNotas.FieldbyName('Beneficio_Cod').Asstring <> '' then begin
                RegistroD195;
                RegistroD197(tNotas.FieldByName('Nota').AsInteger
                            ,1
                            ,tNotas.FieldByName('Referencia_Fiscal').AsInteger
                            ,tNotas.FieldByName('Data_Entrada').AsDateTime
                            ,tNotas.FieldByName('Fornecedor').AsInteger);
             end;


             tNotas.Next;
             Application.ProcessMessages;
             Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
       end;
end;

{REGISTRO D110: ITENS DO DOCUMENTO - NOTA FISCAL DE SERVIÇOS DE TRANSPORTE (CÓDIGO 07)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD110(Nota:Integer);
begin
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Item, Codigo_Mercadoria, Valor_Liquido FROM NotasTerceirosItens');
      tItens.SQL.Add('WHERE (YEAR(NotasTerceirosItens.Data_Entrada) = :pAno AND MONTH(NotasTerceirosItens.Data_Entrada) = :pMes) AND (NotasTerceirosItens.Nota = :pNota)' );
      tItens.ParamByName('pAno').AsInteger  := cAno.AsInteger;
      tItens.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
      tItens.ParamByName('pNota').AsInteger := Nota;
      tItens.Open;
      tItens.First;

      Janela_ProcessamentoSPED.Progresso2.Position := 0;
      Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
      Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: D110...';

      While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
            Inc(mLinha);
            mRegistro := '|D110' +                                                                                 // 01 - REG.
                         '|' + Trim(tItens.FieldByName('Item').AsString) +                                         // 02 - Ordem de sequencia do item.
                         '|' + Trim(tItens.FieldByName('Codigo_Mercadoria').AsString) +                            // 03 - Codigo da mercadoria.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Liquido').AsCurrency) +              // 04 - Valor total do serviço.
                         '|0,00|';                                                                                 // 05 - Outros Valores.
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegD110);
            Inc(mQtdeBlocoD);

            tItens.Next;
            Application.ProcessMessages;
            Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
      End;
end;

{REGISTRO D190:REGISTRO ANALÍTICO DOS DOCUMENTOS (CÓDIGO 07, 08, 8B, 09, 10, 11, 26, 27, 57, 67).}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD190(Nota:Integer;Emissao:TDate;CFOP:string;Fornecedor:integer);
begin
       tItens.SQL.Clear;
       tItens.SQL.Add('SELECT RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB) AS CSTICMS, Natureza_Codigo, Aliquota_ICMSOper, Valor_BCICMSOper, Valor_ICMSOper, Valor_Liquido AS Valor_Total');
       tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
       tItens.SQL.add('WHERE  NTI.Nota            = :pNota' );
       tItens.SQL.Add('AND    NTI.Data_Emissao    = :pEmissao');
       tItens.SQL.Add('AND    NTI.Natureza_Codigo = :pCFOP');
       tItens.SQL.Add('AND    NTI.Fornecedor      = :pForn');
       tItens.SQL.Add('AND    YEAR(Data_Entrada)  = :pAno AND MONTH(Data_Entrada) = :pMes');
       tItens.SQL.Add('ORDER BY Nota, Item');
       tItens.ParamByName('pAno').AsInteger  := cAno.AsInteger;
       tItens.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
       tItens.ParamByName('pNota').AsInteger := Nota;
       tItens.ParamByName('pEmissao').AsDate := Emissao;
       tItens.ParamByName('pCFOP').Asstring  := CFOP;
       tItens.ParamByName('pForn').Asinteger := Fornecedor;
       //tItens.SQL.SaveToFile('c:\temp\SPED_FISCAL_RegistroD190_'+InttoStr(Nota)+'.sql');
       tItens.Open;
       tItens.First;

       Janela_ProcessamentoSPED.Progresso2.Position := 0;
       Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
       Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: D190...';

       While (not tItens.Eof) and (not Funcoes.Cancelado) do begin
             Inc(mLinha);
             mRegistro := '|D190' +                                                                                 // 01 - REG.
                          '|' + Trim(tItens.FieldByName('CSTICMS').AsString) +                                      // 02 - CST ICMS.
                          '|' + Trim(tItens.FieldByName('Natureza_Codigo').AsString) +                              // 03 - CFOP.
                          '|' + Trim(tItens.FieldByName('Aliquota_ICMSOper').AsString) +                            // 04 - Aliquota ICMS Operacional.
                          '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Total').AsCurrency) +                // 05 - VL_OPR.
                          '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency) +           // 06 - B.C.ICMS.
                          '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_ICMSOper').AsCurrency) +             // 07 - Valor ICMS.
                          '|' + FormatFloat('#0.00', 0) +                                                           // 08 - Valor ICMS Redução.
                          '||';                                                                                     // 09 - Valor ICMS Redução.
             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegD190);
             Inc(mQtdeBlocoD);

             tItens.Next;
             Application.ProcessMessages;
             Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
       end;
end;

{REGISTRO D195: OBSERVAÇÕES DO LANÇAMENTO FISCAL (CÓDIGO 07, 08, 8B, 09, 10, 11, 26, 27, 57, 63 e 67)}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD195;
begin
     Inc(mLinha);
     mRegistro  := '|D195' +                                                      // 01 - REG.
                   '|' + tNotas.FieldByName('Beneficio').AsString +               // 02 - Código da observação do lançamento fiscal.
                   '|' + tNotas.FieldByName('Beneficio_Desc').AsString + '|';     // 03 - Descrição complementar do código de observação.

     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeRegD195);
     Inc(mQtdeBlocoD);
end;

{REGISTRO C197: OUTRAS OBRIGAÇÕES TRIBUTÁRIAS, AJUSTES E INFORMAÇÕES DE VALORES PROVENIENTES DE DOCUMENTO FISCAL}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD197(Nota: Integer; Emitente: Integer; TipoNF:Integer; Data_Emi: TDate; pFornecedor: Integer);
begin
     tItens2.SQL.clear;
     tItens2.SQL.add('select Valor_BCICMSOper = sum(Valor_BCICMSOper)');
     tItens2.SQL.add('      ,Aliquota_ICMSOper');
     tItens2.SQL.add('      ,Valor_ICMSOper = sum(Valor_ICMSOper)');
     tItens2.SQL.add('      ,Valor_ICMSSub = sum(Valor_ICMSSub)');
     tItens2.SQL.add('from NotasTerceirosItens');
     tItens2.SQL.add('where Nota = :pNota');
     tItens2.SQL.add('and Data_Entrada = :pData');
     tItens2.SQL.add('and Fornecedor = :pForn');
     tItens2.SQL.add('and Valor_ICMSOper > 0');
     tItens2.SQL.add('group by Aliquota_ICMSOper');
     tItens2.SQL.add('order by Aliquota_ICMSOper');
     tItens2.ParamByName('pForn').asinteger := pFornecedor;
     tItens2.ParamByName('pNota').asinteger := Nota;
     tItens2.ParamByName('pData').asDate    := Data_Emi;
     //tItens2.sql.savetofile('c:\temp\REGISTROD197_NF'+inttostr(Nota)+'.sql');
     tItens2.Open;

     Janela_ProcessamentoSPED.Progresso3.Position := 0;
     Janela_ProcessamentoSPED.Progresso3.Max      := tItens2.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: D197...';

     while not tItens2.eof do begin
           Inc(mLinha);
           mRegistro  := '|D197' +                                                                            // 01 - REG.
                         '|' + tNotas.FieldByName('Beneficio_Cod').AsString +                                 // 02 - Código do ajustes/benefício/incentivo.
                         '|' +                                                                                // 03 - Descrição complementar do ajuste do documento fiscal.
                         '|' +                                                                                // 04 - Código do item (campo 02 do Registro 0200).
                         '|' + FormatFloat('#0.00', tItens2.FieldByName('Valor_BCICMSOper').Ascurrency) +     // 05 - Base de cálculo do ICMS ou do ICMS ST.
                         '|' + FormatFloat('#0.00', tItens2.FieldByName('Aliquota_ICMSOper').Ascurrency) +    // 06 - Alíquota do ICMS.
                         '|' + FormatFloat('#0.00', tItens2.FieldByName('Valor_ICMSOper').Ascurrency) +       // 07 - Valor do ICMS ou do ICMS ST.
                         '|' +                                                                                // 08 - Outros valores.
                         '|';

           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegD197);
           Inc(mQtdeBlocoD);

           Application.ProcessMessages;
           Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
           tItens2.Next;
     end;
end;

{REGISTRO D500: NOTA FISCAL DE SERVIÇO DE COMUNICAÇÃO (CÓDIGO 21) E NOTA FISCAL DE SERVIÇO DE TELECOMUNICAÇÃO (CÓDIGO 22).}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD500;
begin
       with tNotas do begin
            sql.clear;
            sql.add('SELECT Fornecedor');
            sql.add('      ,Modelo');
            sql.add('      ,Serie');
            sql.add('      ,SubSerie');
            sql.add('      ,Nota');
            sql.add('      ,Data_Emissao');
            sql.add('      ,Data_Entrada');
            sql.add('      ,Valor_TotalNota');
            sql.add('      ,Valor_TotalDescontos');
            sql.add('      ,Valor_BCICMSOper');
            sql.add('      ,Valor_ICMSOper');
            sql.add('      ,Valor_PIS');
            sql.add('      ,Valor_COFINS');
            sql.add('      ,Natureza_Codigo');
            sql.add('      ,Referencia_Fiscal');
            sql.add('      ,Observacoes');
            sql.add('FROM   NotasTerceiros, Cybersoft_Cadastros.dbo.Natureza');
            sql.add('WHERE  (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Cybersoft_Cadastros.dbo.Natureza.Codigo = NotasTerceiros.Natureza_Codigo)');
            sql.add('  AND (NotasTerceiros.Modelo IN(''21'', ''22''))');
            sql.add('  AND (NotasTerceiros.Provisoria <> 1)');
            sql.add('ORDER  BY Nota');
            paramByName('pAno').AsInteger := cAno.AsInteger;
            paramByName('pMes').AsInteger := cMes.ItemIndex+1;
            //sql.SaveToFile('c:\temp\SPED_FISCAL_D500.SQL');
            open;
            first;
       end;

       Janela_ProcessamentoSPED.Progresso2.Position := 0;
       Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
       Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: D500...';

       While (not tNotas.Eof) and (not Funcoes.Cancelado) do begin
             Inc(mLinha);
             mRegistro := '|D500' +                                                                                 // 01 - REG.
                          '|0' +                                                                                    // 02 - Tipo de Operação: 0-Aquisição / 1-Prestação.
                          '|1' +                                                                                    // 03 - emitente do documento fiscal: 0-Proprio / 1-Terceiros.
                          '|' + Trim(tNotas.FieldByName('Fornecedor').AsString+'F') +                               // 04 - Participante.
                          '|' + Trim(tNotas.FieldByName('Modelo').AsString) +                                       // 05 - Modelo.
                          '|00' +                                                                                   // 06 - Situação do documento.
                          '|' + Trim(tNotas.FieldByName('Serie').AsString) +                                        // 07 - Serie.
                          '|' + Trim(tNotas.FieldByName('SubSerie').AsString) +                                     // 08 - SubSerie.
                          '|' + Trim(Copy(tNotas.FieldByName('Nota').AsString, 1,9)) +                              // 09 - Numero da Nota Fiscal.
                          '|' + RemoveCaracter('/', '', tNotas.FieldByName('Data_Emissao').AsString)+               // 10 - Data emissao da NF.
                          '|' + RemoveCaracter('/', '', tNotas.FieldByName('Data_Entrada').AsString)+               // 11 - Data entrada da NF.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +            // 12 - Total da NF.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalDescontos').AsCurrency) +       // 13 - Total dos descontos da NF.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency) +            // 14 - Total da prestação de serviços.
                          '|' + FormatFloat('#0.00', 0) +                                                           // 15 - Total do serviços não tributados ICMS.
                          '|' + FormatFloat('#0.00', 0) +                                                           // 16 - Total do serviços cobrados terceiros.
                          '|' + FormatFloat('#0.00', 0) +                                                           // 17 - Valor de outras despesas.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_BCICMSOper').AsCurrency) +           // 18 - B.C.ICMS.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_ICMSOper').AsCurrency) +             // 19 - Valor ICMS.
                          '|' + iif(tNotas.FieldByName('Observacoes').asstring = '', '', 'T'+tNotas.FieldByName('Referencia_Fiscal').asstring) +  // 23 - Codigo de inf.complementar.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_PIS').AsCurrency) +                  // 21 - Valor do PIS.
                          '|' + FormatFloat('#0.00', tNotas.FieldByName('Valor_COFINS').AsCurrency) +               // 22 - Valor do COFINS.
                          '|' +                                                                                     // 23 - Código da conta analítica contabil.
                          '|' + '1' +                                                                               // 24 - Código do Tipo de Assinante.
                          '|';
             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegD500);
             Inc(mQtdeBlocoD);

             RegistroD590(tNotas.FieldByName('Nota').AsInteger, tNotas.FieldByName('Fornecedor').AsInteger);

             tNotas.Next;
             Application.ProcessMessages;
             Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
       end;
end;

{REGISTRO D590: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 21 E 22).}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD590(Nota:Integer; Fornecedor:Integer);
begin
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST, NotasTerceirosItens.Natureza_Codigo AS CFOP, NotasTerceirosItens.Aliquota_ICMSOper AS ALIQ_ICMS, SUM(Valor_Liquido) AS VL_OPR,');
      tItens.SQL.Add('       SUM(NotasTerceirosItens.Valor_BCICMSOper) AS VL_BC_ICMS, SUM(NotasTerceirosItens.Valor_ICMSOper) AS VL_ICMS, SUM(NotasTerceirosItens.Valor_BCICMSSub) AS VL_BC_ICMS_ST, SUM(NotasTerceirosItens.Valor_ICMSSub) AS VL_ICMS_ST,');
      tItens.SQL.Add('       0 AS VL_RED_BC');
      tItens.SQL.Add('FROM   NotasTerceirosItens');
      tItens.SQL.Add('WHERE  (YEAR(NotasTerceirosItens.Data_Entrada) = :pAno AND MONTH(NotasTerceirosItens.Data_Entrada) = :pMes) AND (NotasTerceirosItens.Nota = :pNota) AND (Fornecedor = :pFornecedor) ');
      tItens.SQL.Add('       AND (((SELECT Modelo FROM NotasTerceiros WHERE(NotasTerceiros.Nota = NotasTerceirosItens.Nota) AND (NotasTerceiros.Data_Entrada = NotasTerceirosItens.Data_Entrada) AND (NotasTerceiros.Fornecedor = NotasTerceirosItens.Fornecedor)) = :pModelo21)');
      tItens.SQL.Add('        OR ((SELECT Modelo FROM NotasTerceiros WHERE(NotasTerceiros.Nota = NotasTerceirosItens.Nota) AND (NotasTerceiros.Data_Entrada = NotasTerceirosItens.Data_Entrada) AND (NotasTerceiros.Fornecedor = NotasTerceirosItens.Fornecedor)) = :pModelo22))');
      tItens.SQL.Add('       AND ((SELECT Provisoria FROM NotasTerceiros WHERE(NotasTerceiros.Nota = NotasTerceirosItens.Nota) AND (NotasTerceiros.Data_Entrada = NotasTerceirosItens.Data_Entrada) AND (NotasTerceiros.Fornecedor = NotasTerceirosItens.Fornecedor)) <> 1)');
      tItens.SQL.Add('GROUP  BY (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)), NotasTerceirosItens.Aliquota_ICMSOper, NotasTerceirosItens.Natureza_Codigo');
      tItens.ParamByName('pAno').AsInteger        := cAno.AsInteger;
      tItens.ParamByName('pMes').AsInteger        := cMes.ItemIndex+1;
      tItens.ParamByName('pNota').AsInteger       := Nota;
      tItens.ParamByName('pFornecedor').AsInteger := Fornecedor;
      tItens.ParamByName('pModelo21').AsString    := '21';
      tItens.ParamByName('pModelo22').AsString    := '22';
      //tItens.SQL.SaveToFile('c:\temp\SPED_FISCAL_D590_'+inttostr(nota)+'_'+inttostr(Fornecedor)+'.SQL');
      tItens.Open;
      tItens.First;

      While (not tItens.Eof) and (Funcoes.Cancelado = false) do begin
            Inc(mLinha);
            mRegistro := '|D590' +                                                                                 // 01 - REG.
                         '|' + tItens.FieldByName('CST').AsString +                                                // 02 - CST ICMS.
                         '|' + tItens.FieldByName('CFOP').AsString +                                               // 03 - CFOP.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('ALIQ_ICMS').AsCurrency) +                  // 04 - Aliquota do ICMS.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('VL_OPR').AsCurrency) +                     // 05 - Valor da Operação.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('VL_BC_ICMS').AsCurrency) +                 // 06 - BC ICMS.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('VL_ICMS').AsCurrency) +                    // 07 - Valor do ICMS.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('VL_BC_ICMS_ST').AsCurrency) +              // 08 - B.C.ICMS Substitutivo.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('VL_ICMS_ST').AsCurrency) +                 // 09 - Valor ICMS Substitutivo.
                         '|' + FormatFloat('#0.00', tItens.FieldByName('VL_RED_BC').AsCurrency) +                  // 10 - Redução da BC.
                         '||';                                                                                     // 11 - Codigo da Observação.
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegD590);
            Inc(mQtdeBlocoD);
            tItens.Next;
      End;
end;

{REGISTRO D990: ENCERRAMENTO DO BLOCO D}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroD990;
begin
       Inc(mQtdeRegD990);
       Inc(mQtdeBlocoD);
       Inc(mLinha);
       mRegistro  := '|D990' +                            // 01 - REG.
                      '|'+ InttoStr(mQtdeBlocoD)+'|';     // 02 - Quantidade de Linhas do BLOCO D.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO E001: ABERTURA DO BLOCO E}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE001;
begin
       tNotas.SQL.Clear;
       tNotas.SQL.Add('SELECT Valor_ICMS FROM NotasFiscais');
       tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Valor_ICMS <> 0)' );
       tNotas.SQL.Add('UNION ALL' );
       tNotas.SQL.Add('SELECT Valor_ICMSOper FROM NotasTerceiros');
       tNotas.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Valor_ICMSOper <> 0) AND (NotasTerceiros.Provisoria <> 1) AND (ISNULL(Desdobramento,0) = 0)' );
       tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
       tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
       //tNotas.SQL.SaveToFile('c:\temp\SPED_FISCAL_RegistroE001_ICMS.sql');
       tNotas.Open;

       tNotas2.SQL.Clear;
       tNotas2.SQL.Add('SELECT Valor_TotalIPI FROM NotasFiscais');
       tNotas2.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Valor_ICMS <> 0)' );
       tNotas2.SQL.Add('UNION ALL' );
       tNotas2.SQL.Add('SELECT Valor_TotalIPI FROM NotasTerceiros');
       tNotas2.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Valor_ICMSOper <> 0) AND (NotasTerceiros.Provisoria <> 1) AND (ISNULL(Desdobramento,0) = 0)' );
       tNotas2.ParamByName('pAno').AsInteger := cAno.AsInteger;
       tNotas2.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
       //tNotas2.SQL.SaveToFile('c:\temp\SPED_FISCAL_RegistroE001_IPI.sql');
       tNotas2.Open;

       tNotas3.SQL.Clear;
       tNotas3.SQL.Add('SELECT ValorICMS_Substitutivo FROM NotasFiscais');
       tNotas3.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (ValorICMS_Substitutivo <> 0)' );
       tNotas3.SQL.Add('UNION ALL' );
       tNotas3.SQL.Add('SELECT Valor_ICMSSub FROM NotasTerceiros');
       tNotas3.SQL.Add('WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Valor_ICMSSub <> 0) AND (NotasTerceiros.Provisoria <> 1) AND (ISNULL(Desdobramento,0) = 0)' );
       tNotas3.ParamByName('pAno').AsInteger := cAno.AsInteger;
       tNotas3.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
       //tNotas3.SQL.SaveToFile('c:\temp\SPED_FISCAL_RegistroE001_IPI.sql');
       tNotas3.Open;

       Inc(mLinha);

       mRegistro := '|E001';                         // 01 - REG.
       if (tNotas.RecordCount = 0) and (tNotas2.RecordCount = 0) and (Dados.EmpresasTipo_Atividade.Asinteger = 1) then
          mRegistro := mRegistro + '|1|'             // 02 - Quantidade de Linhas do BLOCO E.
       else begin
          mRegistro := mRegistro + '|0|';
       end;
       Say( mLinha, 000, Arquivo, mRegistro );

       RegistroE100;
       RegistroE200;
       RegistroE300;
       RegistroE500;

       Inc(mQtdeRegE001);
       Inc(mQtdeBlocoE);
end;

{REGISTRO E100: PERÍODO DA APURAÇÃO DO ICMS.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE100;
begin
      Inc(mLinha);
      mRegistro := '|E100' +                         // 01 - REG.
                   '|'+ mDataIni +                   // 02 - Data inicial da apuração.
                   '|'+ mDataFim +                   // 03 - Data final da apuração.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      RegistroE110;

      Inc(mQtdeRegE100);
      Inc(mQtdeBlocoE);
end;

{REGISTRO E110: APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE110;
Var
    mCreditos
   ,mSaldoTransp
   ,mEstornoCred
   ,mEstornoDeb
   ,mOutrosCred
   ,mOutrosDeb
   ,mDeducoes
   ,mDebFUNDAP
   ,mCredFUNDAP: Currency;
begin
     tNotas.SQL.Clear;
     tNotas.SQL.Add('SELECT Total_Debitos   = SUM(ROUND(Valor_ICMS, 2))');
     tNotas.SQL.Add('      ,Ajustes_Debitos = 0');
     tNotas.SQL.Add('      ,Total_Produtos  = SUM(Valor_TotalProdutos)');
     tNotas.SQL.Add('FROM  NotasFiscais');
     tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND ISNULL(Cancelada, 0) <> 1 AND ISNULL(NFe_Denegada, 0) <> 1 AND Saida_Entrada = 1');
     tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
     tNotas.Open;

     tAjustes.SQL.Clear;
     tAjustes.SQL.Add('SELECT  Outros_Debitos   = ISNULL(SUM(CASE WHEN Tipo_Ajuste = 0 THEN ROUND(Valor,2) END), 0)');
     tAjustes.SQL.Add('       ,Estorno_Creditos = ISNULL(SUM(CASE WHEN Tipo_Ajuste = 1 THEN ROUND(Valor,2) END), 0)');
     tAjustes.SQL.Add('       ,Outros_Creditos  = ISNULL(SUM(CASE WHEN Tipo_Ajuste = 2 THEN ROUND(Valor,2) END), 0)');
     tAjustes.SQL.Add('       ,Estorno_Debitos  = ISNULL(SUM(CASE WHEN Tipo_Ajuste = 3 THEN ROUND(Valor,2) END), 0)');
     tAjustes.SQL.Add('       ,Deducoes         = ISNULL(SUM(CASE WHEN Tipo_Ajuste = 4 THEN ROUND(Valor,2) END), 0)');
     tAjustes.SQL.Add('FROM Estorno');
     tAjustes.SQL.Add('WHERE (YEAR(Data) = :pAno AND MONTH(Data) = :pMes)');
     tAjustes.ParamByName('pAno').AsInteger  := cAno.AsInteger;
     tAjustes.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
     tAjustes.Open;

     mOutrosDeb   := tAjustes.FieldByName('Outros_Debitos').AsCurrency;
     mEstornoCred := tAjustes.FieldByName('Estorno_Creditos').AsCurrency;
     mOutrosCred  := tAjustes.FieldByName('Outros_Creditos').AsCurrency;
     mEstornoDeb  := tAjustes.FieldByName('Estorno_Debitos').AsCurrency;
     mDeducoes    := tAjustes.FieldByName('Deducoes').AsCurrency;

     tAjustes.SQL.Clear;
     tAjustes.SQL.Add('SELECT ICMS = ISNULL((SELECT SUM(ROUND(Valor_ICMS, 2))     FROM NotasFiscais   WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (NotasFiscais.Saida_Entrada = 0) AND (ISNULL(Cancelada ,0) = 0)), 0) +');
     tAjustes.SQL.Add('              ISNULL((SELECT SUM(ROUND(Valor_ICMSOper, 2)) FROM NotasTerceiros WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (ISNULL(NotasTerceiros.Provisoria, 0) = 0) AND (ISNULL(NotasTerceiros.Desdobramento, 0) = 0)), 0)');
     tAjustes.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tAjustes.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
     //tAjustes.SQL.SaveToFile('c:\Temp\SPED FISCAL Creditos_E110.sql');
     tAjustes.Open;

     mCreditos := tAjustes.FieldByName('ICMS').AsCurrency;

     tAjustes.SQL.Clear;
     tAjustes.SQL.Add('SELECT Credito_FUNDAP = ISNULL((SELECT SUM(ROUND(Valor_ICMS, 2))');
     tAjustes.SQL.Add('                                FROM  NotasFiscais');
     tAjustes.SQL.Add('                                WHERE YEAR(Data_Emissao) = :pAno');
     tAjustes.SQL.Add('                                AND MONTH(Data_Emissao) = :pMes');
     tAjustes.SQL.Add('                                AND NotasFiscais.Saida_Entrada = 0');
     tAjustes.SQL.Add('                                AND Incentivo_Fiscal = ''FUNDAP'' ');
     tAjustes.SQL.Add('                                AND ISNULL(Cancelada ,0) = 0), 0) +');
     tAjustes.SQL.Add('                        ISNULL((SELECT SUM(ROUND(Valor_ICMSOper, 2))');
     tAjustes.SQL.Add('                                FROM NotasTerceiros');
     tAjustes.SQL.Add('                                WHERE YEAR(Data_Entrada) = :pAno');
     tAjustes.SQL.Add('                                AND   MONTH(Data_Entrada) = :pMes');
     tAjustes.SQL.Add('                                AND   Incentivo_Fiscal = ''FUNDAP'' ');
     tAjustes.SQL.Add('                                AND ISNULL(NotasTerceiros.Provisoria, 0) = 0');
     tAjustes.SQL.Add('                                AND ISNULL(NotasTerceiros.Desdobramento, 0) = 0), 0)');
     tAjustes.SQL.Add('       ,Debito_FUNDAP = ISNULL((SELECT SUM(ROUND(Valor_ICMS, 2))');
     tAjustes.SQL.Add('                                FROM NotasFiscais');
     tAjustes.SQL.Add('                                WHERE YEAR(Data_Emissao) = :pAno');
     tAjustes.SQL.Add('                                AND MONTH(Data_Emissao) = :pMes');
     tAjustes.SQL.Add('                                AND NotasFiscais.Saida_Entrada = 1');
     tAjustes.SQL.Add('                                AND Incentivo_Fiscal = ''FUNDAP'' ');
     tAjustes.SQL.Add('                                AND ISNULL(Cancelada ,0) = 0), 0)');
     tAjustes.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tAjustes.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
     //tAjustes.SQL.SaveToFile('c:\Temp\SPED FISCAL Creditos_FUNDAP_E110.sql');
     tAjustes.Open;

     mCredFUNDAP := tAjustes.FieldByName('Credito_FUNDAP').AsCurrency;
     mDebFUNDAP  := tAjustes.FieldByName('Debito_FUNDAP').AsCurrency;


     // Buscando o saldo credor do periodo anterior na tabela "SaldoICMS."
     tSaldoICMS.SQL.Clear;
     tSaldoICMS.SQL.Add('SELECT SUM(Saldo) AS Saldo FROM SaldoICMS WHERE (Mes_Ano = :pMes_Ano)');
     If cMes.ItemIndex = 0 then
        tSaldoICMS.ParamByName('pMes_Ano').AsString := '12'+InttoStr(cAno.AsInteger-1)
     else
        tSaldoICMS.ParamByName('pMes_Ano').AsString := PoeZero(2,cMes.ItemIndex)+InttoStr(cAno.AsInteger);

     tSaldoICMS.Open;

     Janela_ProcessamentoSPED.Progresso2.Position := 0;
     Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E110...';

     mSaldoApurado := (tNotas.FieldByName('Total_Debitos').AsCurrency + mEstornoCred + mOutrosDeb) - (mCreditos + mEstornoDeb + tSaldoICMS.FieldByName('Saldo').AsCurrency + mOutrosCred + mDebFUNDAP);
     mSaldoTransp  := (tNotas.FieldByName('Total_Debitos').AsCurrency + mCredFUNDAP + mOutrosdeb + mEstornoCred) - (mCreditos + mDebFUNDAP + mOutrosCred + mEstornoDeb + tSaldoICMS.FieldByName('Saldo').AsCurrency + mDeducoes);
     mSaldoApurado := iif(mSaldoApurado < 0, 0, mSaldoApurado);
     mSaldoTransp  := iif(mSaldoTransp  < 0, mSaldoTransp  *-1, 0);

     Inc(mLinha);
     mRegistro := '|E110' +                                                                               // 01 - REG.
                  '|' + FormatFloat('#0.00', tNotas.FieldByName('Total_Debitos').AsCurrency) +            // 02 - Total dos Debitos.
                  '|' + FormatFloat('#0.00', mCredFUNDAP) +                                               // 03 - Ajustes de debitos do documento fiscal.
                  '|' + FormatFloat('#0.00', mOutrosDeb) +                                                // 04 - Total dos Ajustes de debitos.
                  '|' + FormatFloat('#0.00', mEstornoCred) +                                              // 05 - Estornos a Creditos.
                  '|' + FormatFloat('#0.00', mCreditos) +                                                 // 06 - Total dos creditos.
                  '|' + FormatFloat('#0.00', mDebFUNDAP) +                                                // 07 - Ajustes de creditos do documento fiscal.
                  '|' + FormatFloat('#0.00', mOutrosCred) +                                               // 08 - Total dos Ajustes de Creditos.
                  '|' + FormatFloat('#0.00', mEstornoDeb) +                                               // 09 - Estornos a Debitos.
                  '|' + FormatFloat('#0.00', tSaldoICMS.FieldByName('Saldo').AsCurrency) +                // 10 - Saldo do período anterior.
                  '|' + FormatFloat('#0.00', mSaldoApurado) +                                             // 11 - Saldo apurado.
                  '|' + FormatFloat('#0.00', mDeducoes ) +                                                // 12 - Total das deduções.
                  '|' + FormatFloat('#0.00', mSaldoApurado ) +                                            // 13 - Total ICMS a recolher.
                  '|' + FormatFloat('#0.00', mSaldoTransp ) +                                             // 14 - Total saldo credor a transportar.
                  '|' + FormatFloat('#0.00', 0 ) +                                                        // 15 - Valores recolhidos ou a recolher.
                  '|';
     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeRegE110);
     Inc(mQtdeBlocoE);

     RegistroE111;
     RegistroE116;
end;

{REGISTRO E111: AJUSTE/BENEFÍCIO/INCENTIVO DA APURAÇÃO DO ICMS.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE111;
Var
    mCodigoAjuste : String;
begin
     tAjustes.SQL.Clear;
     tAjustes.SQL.Add('SELECT * FROM Estorno');
     tAjustes.SQL.Add('WHERE  (YEAR(Data) = :pAno AND MONTH(Data) = :pMes)');
     tAjustes.ParamByName('pAno').AsInteger  := cAno.AsInteger;
     tAjustes.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
     tAjustes.Open;

     If tAjustes.RecordCount > 0 then begin
        while not tAjustes.Eof do begin
              //mCodigoAjuste := UpperCase(Trim(Dados.EmpresasEstado.Value))+'0'+Trim(tAjustes.FieldByName('Tipo_Ajuste').AsString)+'9999';
              mCodigoAjuste := tAjustes.FieldByName('Codigo_Ajuste').AsString;

              Inc(mLinha);
              mRegistro := '|E111' +                                                                         // 01 - REG.
                           '|' + mCodigoAjuste +                                                             // 02 - Código da obrigação a recolher.
                           '|' + tAjustes.FieldByName('Observacao').AsString +                               // 03 - Descrição complementar.
                           '|' + FormatFloat('#0.00', tAjustes.FieldByName('Valor').AsCurrency)+             // 04 - Valor do ajuste.
                           '|';

              Say( mLinha, 000, Arquivo, mRegistro );

              Inc(mQtdeRegE111);
              Inc(mQtdeBlocoE);
              tAjustes.Next;
        end;
     End;
end;

{REGISTRO E116: OBRIGAÇÕES DO ICMS A RECOLHER – OPERAÇÕES PRÓPRIAS.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE116;
Var
    mVencimento: String;
    mDiaICMS: Integer;
begin
     with Dados do begin
          if IncentivosFiscais.Locate('Nome', Empresas.FieldByName('Incentivo_Fiscal').Value, [loCaseInsensitive]) then begin
//             if trim(IncentivosFiscaisCodigo_Receita.AsString) <> '' then begin
                with tNotas2 do begin
                     sql.clear;
                     sql.add('select sum(Valor_ICMS) as Valor_ICMS, sum(valor_totalprodutos) as Total_Produtos from NotasFiscais');
                     sql.add('where  (year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes) and (Cancelada <> 1) and Nfe_Denegada <> 1');
                     parambyname('pAno').AsInteger := cAno.AsInteger;
                     parambyname('pMes').AsInteger := cMes.ItemIndex+1;
                     open;
                end;
                Janela_ProcessamentoSPED.Progresso2.Position := 0;
                Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
                Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E116...';
                mVencimento := '';
                //Dados.IncentivosFiscais.Locate('Nome', EmpresasIncentivo_Fiscal.Value, [loCaseInsensitive]);
                mDiaICMS  := IncentivosFiscaisVencimento_ICMS.Value;
                If cMes.ItemIndex < 11 then
                   mVencimento := PoeZero(2,mDiaICMS)+'/'+PoeZero(2,cMes.ItemIndex+2)+'/'+PoeZero(4,cAno.AsInteger)
                else
                   mVencimento := PoeZero(2,mDiaICMS)+'/01/'+PoeZero(4,cAno.AsInteger+1);

                mVencimento := RemoveCaracter('/','',mVencimento);
                Inc(mLinha);
                mRegistro := '|E116' +                                                                  // 01 - REG.
                             '|000' +                                                                   // 02 - Código da obrigação a recolher.
                             '|' + FormatFloat('#0.00', mSaldoApurado )+                                // 03 - Valor da obrigação a recolher.
                             '|' + mVencimento +                                                        // 04 - Data do vencimento da obrigação.
                             '|' + IncentivosFiscaisCodigo_Receita.AsString+                            // 05 - Código de receita.
                             '|' +                                                                      // 06 - Número do processo ou alto de infração.
                             '|' +                                                                      // 07 - Indicador da origem do processo.
                             '|' +                                                                      // 08 - Descrição resumida do processo que embasou o lançamento.
                             '|' +                                                                      // 09 - Descrição complementar das obrigações a recolher.
                             '|' + PoeZero(2, cMes.ItemIndex+1) + PoeZero(4, cAno.AsInteger)+           // 10 - Informe o mês de referência no formato “mmaaaa”.
                             '|';
                Say( mLinha, 000, Arquivo, mRegistro );
                Inc(mQtdeRegE116);
                Inc(mQtdeBlocoE);
                Application.ProcessMessages;
                Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
             //end;
          end;
     end;
end;

{REGISTRO E200: PERÍODO DA APURAÇÃO DO ICMS SUBSTITUTIVO.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE200;
begin
      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT Estado');
      tNotas.SQL.Add('INTO   #TEMP');
      tNotas.SQL.Add('FROM   NotasFiscais');
      tNotas.SQL.Add('WHERE  (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND Nfe_Denegada <> 1 AND (Saida_Entrada = 1) AND (ValorICMS_Substitutivo > 0)');
      tNotas.SQL.Add('GROUP BY Estado');
      tNotas.SQL.Add('UNION ALL');
      tNotas.SQL.Add('SELECT Estado');
      tNotas.SQL.Add('FROM   NotasTerceiros');
      tNotas.SQL.Add('WHERE  (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Valor_ICMSSub > 0) AND ISNULL(Desdobramento, 0) = 0 AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0,2)');
      tNotas.SQL.Add('GROUP BY Estado');
      tNotas.SQL.Add('SELECT DISTINCT Estado FROM #TEMP ORDER BY Estado');
      tNotas.SQL.Add('DROP TABLE #TEMP');
      tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
      //tNotas.SQL.SaveToFile('c:\temp\SPED_FISCAL_REG_E200.SQL');
      tNotas.Open;

      Janela_ProcessamentoSPED.Progresso2.Position := 0;
      Janela_ProcessamentoSPED.Progresso2.Max      := tNotas.RecordCount;
      Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E200...';

      tNotas.First;
      While not tNotas.Eof do begin
            Inc(mLinha);
            mRegistro := '|E200' +                                       // 01 - REG.
                         '|'+ tNotas.FieldByName('Estado').AsString +    // 02 - Sigla da unidade da federação a que se refere a apuração do ICMS ST
                         '|'+ mDataIni +                                 // 03 - Data inicial da apuração.
                         '|'+ mDataFim +                                 // 04 - Data final da apuração.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegE200);
            Inc(mQtdeBlocoE);

            RegistroE210(tNotas.FieldByName('Estado').AsString);

            tNotas.Next;
            Application.ProcessMessages;
            Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
      End;
end;

{REGISTRO E210: APURAÇÃO DO ICMS – SUBSTITUIÇÃO TRIBUTÁRIA.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE210(pfEstado: String);
Var
    mInformacao : String;
    mSaldoDev   : Real;
    mSaldoTrans : Real;
begin
       tNotas2.SQL.Clear;
       tNotas2.SQL.Add('SELECT (SELECT Estado                      FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1) AND (Estado = :pEstado) GROUP BY Estado) AS Estado,');
       tNotas2.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1) AND (Estado = :pEstado)');
       tNotas2.SQL.Add('       GROUP BY Estado) AS ICMS_SubDebito,');
       tNotas2.SQL.Add('       ISNULL((SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 0) AND (Estado = :pEstado)');
       tNotas2.SQL.Add('               AND (ISNULL(Devolucao,0) = 1 AND Natureza_Codigo IN(''1410'',''1411'',''1414'',''1415'', ''1660'', ''1661'', ''1662'', ''2410'', ''2411'', ''2414'', ''2415'', ''2660'', ''2661'',''2662'')) GROUP BY Estado), 0) + ');
       tNotas2.SQL.Add('       ISNULL((SELECT SUM(Valor_ICMSSub) FROM NotasTerceiros WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Estado = :pEstado) AND (ISNULL(Desdobramento, 0) = 0)');
       tNotas2.SQL.Add('               AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0,2) GROUP BY Estado), 0) AS ICMS_SubDevol,');
       tNotas2.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 0) AND (Estado = :pEstado) AND ((ISNULL(Devolucao,0) = 0)');
       tNotas2.SQL.Add('               AND Natureza_Codigo IN(''1410'',''1411'',''1414'',''1415'', ''1660'', ''1661'', ''1662'', ''2410'', ''2411'', ''2414'', ''2415'', ''2660'', ''2661'',''2662'')) GROUP BY Estado) AS ICMS_SubCredito');
       tNotas2.ParamByName('pAno').AsInteger  := cAno.AsInteger;
       tNotas2.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
       tNotas2.ParamByName('pEstado').AsString := pfEstado;
       //tNotas2.SQL.SaveToFile('c:\temp\SPED_FISCAL_REG_E210.SQL');
       tNotas2.Open;

       If tNotas2.RecordCount = 0 then mInformacao := '0' else mInformacao := '1';

       // Campos: 08 + 09 + 10 - (03 + 04 + 05 + 06 + 07)
       mSaldoDev    := (tNotas2.FieldByName('ICMS_SubDebito').AsCurrency +  0 +  0) - (0 + tNotas2.FieldByName('ICMS_SubDevol').AsCurrency + 0 + tNotas2.FieldByName('ICMS_SubCredito').AsCurrency + 0);
       mSaldoTrans  := 0;
       If mSaldoDev < 0 then begin
          mSaldoTrans := mSaldoDev * -1;
          mSaldoDev   := 0;
       End;

       Inc(mLinha);
       mRegistro := '|E210' +                                                                               // 01 - REG.
                    '|' + mInformacao +                                                                     // 02 - Indicador de movimento.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 03 - Saldo credor do periodo anterior.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('ICMS_SubDevol').AsCurrency) +           // 04 - Valor total do ICMS ST de devolução de mercadorias.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 05 - Valor total do ICMS ST de ressarcimentos.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('ICMS_SubCredito').AsCurrency) +         // 06 - Valor total de Ajustes "Outros créditos ST" e “Estorno de débitos ST”.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 07 - Valor total dos ajustes a crédito de ICMS ST,provenientes de ajustes do documento fiscal.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('ICMS_SubDebito').AsCurrency) +          // 08 - Valor Total do ICMS retido por Substituição Tributária.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 09 - Valor Total dos ajustes "Outros débitos ST" " e “Estorno de créditos ST”.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 10 - Valor total dos ajustes a débito de ICMS ST, provenientes de ajustes do documento fiscal.
                    '|' + FormatFloat('#0.00', mSaldoDev) +                                                 // 11 - Valor total de "Saldo devedor antes das deduções". (08 + 09 + 10) - (03 + 04 + 05 + 06 + 07).
                    '|' + FormatFloat('#0.00', 0) +                                                         // 12 - Valor total dos ajustes "Deduções ST".
                    '|' + FormatFloat('#0.00', mSaldoDev) +                                                 // 13 - Imposto a recolher ST (11-12).
                    '|' + FormatFloat('#0.00', mSaldoTrans) +                                               // 14 - Saldo credor de ST a transportar para o período seguinte.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 15 - Valores recolhidos ou a recolher, extra apuração.
                    '|';
       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegE210);
       Inc(mQtdeBlocoE);

       //RegistroE220(pfEstado);
       RegistroE250(pfEstado);
end;

{REGISTRO E220: AJUSTE/BENEFÍCIO/INCENTIVO DA APURAÇÃO DO ICMS SUBSTITUIÇÃO TRIBUTÁRIA.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE220(pfEstado: String);
Var
    mInformacao : String;
    mSaldoDev   : Real;
    mSaldoTrans : Real;
begin
       tNotas2.SQL.Clear;
       tNotas2.SQL.Add('SELECT (SELECT Estado                      FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1) AND (Estado = :pEstado) GROUP BY Estado) AS Estado,');
       tNotas2.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1) AND (Estado = :pEstado)');
       tNotas2.SQL.Add('       GROUP BY Estado) AS ICMS_SubDebito,');
       tNotas2.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 0) AND (Estado = :pEstado)');
       tNotas2.SQL.Add('               AND Natureza_Codigo NOT IN(''1410'',''1411'',''1414'',''1415'', ''1660'', ''1661'', ''1662'', ''2410'', ''2411'', ''2414'', ''2415'', ''2660'', ''2661'',''2662'') GROUP BY Estado) + ');
       tNotas2.SQL.Add('       (SELECT SUM(Valor_ICMSSub) FROM NotasTerceiros WHERE (YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes) AND (Estado = :pEstado) AND (ISNULL(Desdobramento, 0) = 0)');
       tNotas2.SQL.Add('               AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0,2) GROUP BY Estado) AS ICMS_SubCredito,');
       tNotas2.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 0) AND (Estado = :pEstado) AND (Devolucao = 1)');
       tNotas2.SQL.Add('               AND Natureza_Codigo IN(''1410'',''1411'',''1414'',''1415'', ''1660'', ''1661'', ''1662'', ''2410'', ''2411'', ''2414'', ''2415'', ''2660'', ''2661'',''2662'') GROUP BY Estado) AS ICMS_SubDevol');
       tNotas2.ParamByName('pAno').AsInteger  := cAno.AsInteger;
       tNotas2.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
       tNotas2.ParamByName('pEstado').AsString := pfEstado;
       //tNotas2.SQL.SaveToFile('c:\temp\SPED_FISCAL_REG_E210.SQL');
       tNotas2.Open;

       If tNotas2.RecordCount = 0 then mInformacao := '0' else mInformacao := '1';

       //  Campos: 08 + 09 + 10 - (03 + 04 + 05 + 06 + 07)
       mSaldoDev    := (tNotas2.FieldByName('ICMS_SubDebito').AsCurrency +  0 +  0) - (0 + tNotas2.FieldByName('ICMS_SubDevol').AsCurrency + 0 + tNotas2.FieldByName('ICMS_SubCredito').AsCurrency + 0);
       mSaldoTrans  := 0;
       If mSaldoDev < 0 then begin
          mSaldoTrans := mSaldoDev * -1;
          mSaldoDev   := 0;
       End;

       Inc(mLinha);
       mRegistro := '|E220' +                                                                               // 01 - REG.
                    '|' + mInformacao +                                                                     // 02 - Indicador de movimento.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 03 - Saldo credor do periodo anterior.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('ICMS_SubDevol').AsCurrency) +           // 04 - Valor total do ICMS ST de devolução de mercadorias.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 05 - Valor total do ICMS ST de ressarcimentos.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('ICMS_SubCredito').AsCurrency) +         // 06 - Valor total de Ajustes "Outros créditos ST" e “Estorno de débitos ST”.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 07 - Valor total dos ajustes a crédito de ICMS ST,provenientes de ajustes do documento fiscal.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('ICMS_SubDebito').AsCurrency) +          // 08 - Valor Total do ICMS retido por Substituição Tributária.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 09 - Valor Total dos ajustes "Outros débitos ST" " e “Estorno de créditos ST”.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 10 - Valor total dos ajustes a débito de ICMS ST, provenientes de ajustes do documento fiscal.
                    '|' + FormatFloat('#0.00', mSaldoDev) +                                                 // 11 - Valor total de "Saldo devedor antes das deduções". (08 + 09 + 10) - (03 + 04 + 05 + 06 + 07).
                    '|' + FormatFloat('#0.00', 0) +                                                         // 12 - Valor total dos ajustes "Deduções ST".
                    '|' + FormatFloat('#0.00', mSaldoDev) +                                                 // 13 - Imposto a recolher ST (11-12).
                    '|' + FormatFloat('#0.00', mSaldoTrans) +                                               // 14 - Saldo credor de ST a transportar para o período seguinte.
                    '|' + FormatFloat('#0.00', 0) +                                                         // 15 - Valores recolhidos ou a recolher, extra apuração.
                    '|';
       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegE210);
       Inc(mQtdeBlocoE);

       RegistroE250(pfEstado);
end;

{REGISTRO E250: OBRIGAÇÕES DO ICMS A RECOLHER – SUBSTITUIÇÃO TRIBUTÁRIA.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE250(pfEstado: String);
Var
    mCodigoICMS   : String;
    mCodigoReceita: String;
    mVencimento   : String;
    mSaldoDev     : Real;
begin
       tNotas3.SQL.Clear;
       tNotas3.SQL.Add('SELECT (SELECT Estado                      FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1) AND (Estado = :pEstado) GROUP BY Estado) AS Estado,');
       tNotas3.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 1) AND (Estado = :pEstado)');
       tNotas3.SQL.Add('       GROUP BY Estado) AS ICMS_SubDebito,');
       tNotas3.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Saida_Entrada = 0) AND (Estado = :pEstado) AND (Devolucao <> 1)');
       tNotas3.SQL.Add('       GROUP BY Estado) AS ICMS_SubCredito');
       tNotas3.ParamByName('pAno').AsInteger   := cAno.AsInteger;
       tNotas3.ParamByName('pMes').AsInteger   := cMes.ItemIndex+1;
       tNotas3.ParamByName('pEstado').AsString := pfEstado;
       tNotas3.Open;

       Dados.ICMS.SQL.Clear;
       Dados.ICMS.SQL.Add('SELECT * FROM ICMS WHERE(UF = :pUF)');
       Dados.ICMS.ParamByName('pUF').AsString := pfEstado;
       Dados.ICMS.Open;

       Janela_ProcessamentoSPED.Progresso2.Position := 0;
       Janela_ProcessamentoSPED.Progresso2.Max      := tNotas3.RecordCount;
       Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E250...';

       mSaldoDev := (tNotas2.FieldByName('ICMS_SubDebito').AsCurrency +  0 +  0) - (0 + tNotas2.FieldByName('ICMS_SubDevol').AsCurrency + 0 + tNotas2.FieldByName('ICMS_SubCredito').AsCurrency + 0);
       If mSaldoDev < 0 then mSaldoDev := 0;

       tNotas3.First;
       While not tNotas3.Eof do begin
             If (Dados.EmpresasEstado.AsString <> tNotas3.FieldByName('Estado').AsString) then begin
                mCodigoICMS    := '999';
                mVencimento    := '01/'+PoeZero(2, cMes.ItemIndex+1)+'/'+PoeZero(4, cAno.AsInteger);
                mCodigoReceita := Dados.ICMSICMSSub_ReceitaFora.AsString;
             end else begin
                mCodigoICMS    := '002';
                mVencimento    := '01/'+PoeZero(2, cMes.ItemIndex+1)+'/'+PoeZero(4, cAno.AsInteger);
                mVencimento    := DatetoStr(StrtoDate(mVencimento) + Dados.IncentivosFiscaisVencimento_ICMSSub.AsInteger);
                mCodigoReceita := Dados.ICMSICMSSub_ReceitaDentro.AsString;
             End;

             Inc(mLinha);
             mRegistro := '|E250' +                                                                                      // 01 - REG.
                          '|' + mCodigoICMS +                                                                            // 02 - Código da obrigação a recolher, conforme a Tabela 5.4.
                          '|' + FormatFloat('#0.00', mSaldoDev) +                                                        // 03 - Valor da obrigação ICMS ST a recolher.
                          '|' + Trim(RemoveCaracter('/', '', mVencimento))+                                              // 04 - Data de vencimento da obrigação.
                          '|' + mCodigoReceita +                                                                         // 05 - Código de receita referente à obrigação, próprio da unidade da federação do contribuinte substituído.
                          '|' + '' +                                                                                     // 06 - Número do processo ou auto de infração ao qual a obrigação está vinculada, se houver.
                          '|' + '' +                                                                                     // 07 - Indicador da origem do processo: 0- SEFAZ / 1- Justiça Federal / 2- Justiça Estadual /9- Outros.
                          '|' + '' +                                                                                     // 08 - Descrição resumida do processo que embasou o lançamento.
                          '|' + '';                                                                                      // 09 - Descrição complementar das obrigações a recolher.
                          if (cAno.AsInteger > 2010) then begin
                             mRegistro := mRegistro + '|' + PoeZero(2, cMes.ItemIndex+1) + PoeZero(4, cAno.AsInteger);   // 10 - Informe o mês de referência no formato “mmaaaa”.
                          end;
                          mRegistro := mRegistro + '|';                                                                  // 10 - Informe o mês de referência no formato “mmaaaa”.

             Say( mLinha, 000, Arquivo, mRegistro );

             Inc(mQtdeRegE250);
             Inc(mQtdeBlocoE);
             tNotas3.Next;
             Application.ProcessMessages;
             Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
       End;
end;

{REGISTRO E300: PERÍODO DE APURAÇÃO DO ICMS DIFERENCIAL DE ALÍQUOTA – UF ORIGEM/DESTINO EC 87/15.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE300;
begin
       tNotas.SQL.Clear;
       tNotas.SQL.Add('SELECT UF           = Destinatario_Estado');
       tNotas.SQL.Add('      ,FCP_ICMSDest = SUM(FCP_ICMSDest)');
       tNotas.SQL.Add('FROM   NotasFiscais');
       tNotas.SQL.Add('WHERE  Data_Emissao BETWEEN :pDataIni AND :pDataFim');
       tNotas.SQL.Add('AND    Cancelada <> 1');
       tNotas.SQL.Add('AND    NFe_Denegada <> 1');
       tNotas.SQL.Add('AND    Estado <> ''EX'' ');
       tNotas.SQL.Add('AND    (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1');
       tNotas.SQL.Add('AND    (SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) <> Estado');
       tNotas.SQL.Add('GROUP  BY Destinatario_Estado');
       tNotas.SQL.Add('UNION ALL');
       tNotas.SQL.Add('SELECT UF = (SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
       tNotas.SQL.Add('      ,(SELECT SUM(DIFAL_ValorOrig) FROM NotasFiscais WHERE Saida_Entrada = 1 AND Data_Emissao BETWEEN :pDataIni and :pDataFim AND Cancelada <> 1 AND Nfe_Denegada <> 1)');
       tNotas.ParamByName('pDataIni').AsDate   := mDataCIAPI;
       tNotas.ParamByName('pDataFim').AsDate   := mDataCIAPF;
       tNotas.ParamByName('pEmpresa').AsInteger:= Menu_Principal.mEmpresa;
       //tNotas.SQL.SavetoFile('c:\temp\SPED_FISCAL_RegistroE300.sql');
       tNotas.Open;

       if tNotas.RecordCount > 0 then begin
          while not tNotas.Eof do begin
                If (tNotas.FieldByName('FCP_ICMSDest').AsFloat > 0) or (tNotas.FieldByName('UF').AsString = Dados.EmpresasEstado.AsString) then begin
                   Inc(mLinha);
                   mRegistro := '|E300' +                                          // 01 - REG.
                                '|' + tNotas.FieldByName('UF').AsString +          // 02 - UF a que se refere a apuração do ICMS Diferencial de Alíquota da UF de Origem/Destino.
                                '|' + mDataIni +                                   // 03 - Data inicial da apuração.
                                '|' + mDataFim +                                   // 04 - Data final da apuração.
                                '|' ;
                   Say( mLinha, 000, Arquivo, mRegistro );

                   RegistroE310(tNotas.FieldByName('UF').AsString);

                   Inc(mQtdeRegE300);
                   Inc(mQtdeBlocoE);
                end;
                tNotas.Next;
          end;
       end;
end;

//REGISTRO E310: APURAÇÃO DO ICMS DIFERENCIAL DE ALÍQUOTA – UF ORIGEM/DESTINO EC 87/15.
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE310(Estado: String);
//var
   //mValorRecol,
   //mSaldoDevAnt: Real;
begin
       {
       tNotas2.SQL.Clear;
       tNotas2.SQL.Add('SELECT DIFAL_CredAnt     = 0');
       tNotas2.SQL.Add('      ,DIFAL_DebitosOrig = (SELECT SUM(DIFAL_ValorOrig) FROM NotasFiscais WHERE Saida_Entrada = 1 AND Data_Emissao BETWEEN :pDataIni AND :pDataFim AND Cancelada <> 1 AND Nfe_Denegada <> 1');
       tNotas2.SQL.Add('                            AND (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1)');
       tNotas2.SQL.Add('      ,DIFAL_DebitosDest = SUM(FCP_ICMSDest)');
       tNotas2.SQL.Add('      ,DIFAL_OutrosDeb   = 0');
       tNotas2.SQL.Add('      ,FCP_Dest          = SUM(FCP_ValorDest)');
       tNotas2.SQL.Add('      ,DIFAL_Cred        = 0');
       tNotas2.SQL.Add('      ,FCP_Cred          = 0');
       tNotas2.SQL.Add('      ,DIFAL_OutrosCred  = 0');
       tNotas2.SQL.Add('      ,Saldo_DevAnt      = 0');
       tNotas2.SQL.Add('      ,DIFAL_Deducoes    = 0');
       tNotas2.SQL.Add('      ,Valor_Recol       = 0');
       tNotas2.SQL.Add('      ,Saldo_Transp      = 0');
       tNotas2.SQL.Add('      ,Deb_Esp           = 0');
       tNotas2.SQL.Add('FROM   NotasFiscais');
       tNotas2.SQL.Add('WHERE  Saida_Entrada = 1');
       tNotas2.SQL.Add('  AND  Data_Emissao BETWEEN :pDataIni AND :pDataFim');
       tNotas2.SQL.Add('  AND  Estado = :pEstado');
       tNotas2.SQL.Add('  AND  Cancelada <> 1');
       tNotas2.SQL.Add('  AND  NFe_Denegada <> 1');
       tNotas2.SQL.Add('  AND  (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1');
       tNotas2.ParamByName('pDataIni').AsDate  := mDataCIAPI;
       tNotas2.ParamByName('pDataFim').AsDate  := mDataCIAPF;
       tNotas2.ParamByName('pEstado').AsString := Estado;
       //tNotas2.SQL.SavetoFile('c:\temp\SPED_FISCAL_RegistroE310.sql');
       tNotas2.Open;

       Inc(mLinha);
       mRegistro := '|E310' +                                                                                         // 01 - REG.
                    '|1' +                                                                                            // 02 - Indicador de movimento: 0 – Sem operações / 1 – Com operações de ICMS Diferencial.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_CredAnt').Value);                           // 03 - Valor do "Saldo credor de período anterior.

       if Estado <> Dados.EmpresasEstado.AsString then begin
          mRegistro    := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosDest').AsFloat);    // 04 - Valor total dos débitos por "Saídas e prestações.

          mSaldoDevAnt := (tNotas2.FieldByName('DIFAL_DebitosDest').AsFloat + tNotas2.FieldByName('DIFAL_OutrosDeb').AsFloat + tNotas2.FieldByName('FCP_Dest').AsFloat) -
                          (tNotas2.FieldByName('DIFAL_CredAnt').AsFloat+ tNotas2.FieldByName('DIFAL_Cred').AsFloat + tNotas2.FieldByName('DIFAL_OutrosCred').AsFloat + tNotas2.FieldByName('FCP_Cred').AsFloat)
       end else begin
          mRegistro    := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosOrig').AsFloat);    // 04 - Valor total dos débitos por "Saídas e prestações.

          mSaldoDevAnt := (tNotas2.FieldByName('DIFAL_DebitosOrig').AsFloat + tNotas2.FieldByName('DIFAL_OutrosDeb').AsFloat + tNotas2.FieldByName('FCP_Dest').AsFloat) -
                          (tNotas2.FieldByName('DIFAL_CredAnt').AsFloat + tNotas2.FieldByName('DIFAL_Cred').AsFloat + tNotas2.FieldByName('DIFAL_OutrosCred').AsFloat + tNotas2.FieldByName('FCP_Cred').AsFloat);
       end;

       mValorRecol := mSaldoDevAnt - tNotas2.FieldByName('DIFAL_Deducoes').AsFloat;
       If mValorRecol < 0 then mValorRecol := 0;

       mRegistro := mRegistro +
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_OutrosDeb').AsCurrency) +      // 05 - Valor Total dos ajustes "Outros débitos ICMS.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Dest').AsCurrency) +             // 06 - Valor total dos débitos FCP por "Saídas e prestações”.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_Cred').AsCurrency) +           // 07 - Valor total dos créditos do ICMS.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Cred').AsCurrency) +             // 08 - Valor total dos créditos FCP por Entradas.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_OutrosCred').AsCurrency) +     // 09 - Valor total de Ajustes "Outros créditos ICMS.
                    '|' + FormatFloat('#0.00', mSaldoDevAnt) +                                           // 10 - Valor total de Saldo devedor ICMS.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_Deducoes').AsCurrency) +       // 11 - Valor total dos ajustes "Deduções ICMS.
                    '|' + FormatFloat('#0.00', mValorRecol) +                                            // 12 - Valor recolhido ou a recolher referente a FCP.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('Saldo_Transp').AsCurrency) +         // 13 - Saldo credor a transportar para o período seguinte referente a FCP.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('Deb_Esp').AsCurrency) +              // 14 - Valores recolhidos ou a recolher, extraapuração.
                    '|';
       Say( mLinha, 000, Arquivo, mRegistro );
       }
       tNotas2.SQL.Clear;
       tNotas2.SQL.Add('SELECT DIFAL_CredAnt     = 0');
       tNotas2.SQL.Add('      ,DIFAL_DebitosOrig = (SELECT SUM(DIFAL_ValorOrig) FROM NotasFiscais WHERE Saida_Entrada = 1 AND Data_Emissao BETWEEN :pDataIni AND :pDataFim AND Cancelada <> 1 AND Nfe_Denegada <> 1');
       tNotas2.SQL.Add('                            AND (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1)');
       tNotas2.SQL.Add('      ,DIFAL_DebitosDest = SUM(FCP_ICMSDest)');
       tNotas2.SQL.Add('      ,DIFAL_OutrosDeb   = 0');
       tNotas2.SQL.Add('      ,FCP_Dest          = SUM(FCP_ValorDest)');
       tNotas2.SQL.Add('      ,DIFAL_Cred        = 0');
       tNotas2.SQL.Add('      ,FCP_Cred          = 0');
       tNotas2.SQL.Add('      ,DIFAL_OutrosCred  = 0');
       tNotas2.SQL.Add('      ,Saldo_DevAnt      = 0');
       tNotas2.SQL.Add('      ,DIFAL_Deducoes    = 0');
       tNotas2.SQL.Add('      ,Valor_Recol       = 0');
       tNotas2.SQL.Add('      ,Saldo_Transp      = 0');
       tNotas2.SQL.Add('      ,Deb_Esp           = 0');
       tNotas2.SQL.Add('      ,FCP_SaldoDeb_Esp  = 0');
       tNotas2.SQL.Add('FROM   NotasFiscais');
       tNotas2.SQL.Add('WHERE  Saida_Entrada = 1');
       tNotas2.SQL.Add('  AND  Data_Emissao BETWEEN :pDataIni AND :pDataFim');
       tNotas2.SQL.Add('  AND  Estado = :pEstado');
       tNotas2.SQL.Add('  AND  Cancelada <> 1');
       tNotas2.SQL.Add('  AND  NFe_Denegada <> 1');
       tNotas2.SQL.Add('  AND  (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1');
       tNotas2.ParamByName('pDataIni').AsDate  := mDataCIAPI;
       tNotas2.ParamByName('pDataFim').AsDate  := mDataCIAPF;
       tNotas2.ParamByName('pEstado').AsString := Estado;
       //tNotas2.SQL.SavetoFile('c:\temp\SPED_FISCAL_RegistroE310.sql');
       tNotas2.Open;

       Inc(mLinha);
       mRegistro := '|E310' +                                                                                         // 01 - REG.
                    '|1' +                                                                                            // 02 - Indicador de movimento: 0 – Sem operações / 1 – Com operações de ICMS Diferencial.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_CredAnt').Value);                           // 03 - Valor do "Saldo credor de período anterior.

       if Estado <> Dados.EmpresasEstado.AsString then begin
          mRegistro    := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosDest').AsFloat);    // 04 - Valor total dos débitos por "Saídas e prestações.

          //mSaldoDevAnt := (tNotas2.FieldByName('DIFAL_DebitosDest').AsFloat + tNotas2.FieldByName('DIFAL_OutrosDeb').AsFloat + tNotas2.FieldByName('FCP_Dest').AsFloat) -
          //                (tNotas2.FieldByName('DIFAL_CredAnt').AsFloat+ tNotas2.FieldByName('DIFAL_Cred').AsFloat + tNotas2.FieldByName('DIFAL_OutrosCred').AsFloat + tNotas2.FieldByName('FCP_Cred').AsFloat)
       end else begin
          mRegistro    := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosOrig').AsFloat);    // 04 - Valor total dos débitos por "Saídas e prestações.

          //mSaldoDevAnt := (tNotas2.FieldByName('DIFAL_DebitosOrig').AsFloat + tNotas2.FieldByName('DIFAL_OutrosDeb').AsFloat + tNotas2.FieldByName('FCP_Dest').AsFloat) -
          //                (tNotas2.FieldByName('DIFAL_CredAnt').AsFloat + tNotas2.FieldByName('DIFAL_Cred').AsFloat + tNotas2.FieldByName('DIFAL_OutrosCred').AsFloat + tNotas2.FieldByName('FCP_Cred').AsFloat);
       end;

       //mValorRecol := mSaldoDevAnt - tNotas2.FieldByName('DIFAL_Deducoes').AsFloat;
       //If mValorRecol < 0 then mValorRecol := 0;

       mRegistro := mRegistro +
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_OutrosDeb').AsCurrency) +      // 05 - Total dos ajustes "Outros débitos ICMS.
                    //'|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Dest').AsCurrency) +             // 06 - Total dos créditos do ICMS referente ao diferencial de alíquota devido à UF de Origem/Destino.
                    '|' + FormatFloat('#0.00', 0) +                                                      // 06 - Total dos créditos do ICMS referente ao diferencial de alíquota devido à UF de Origem/Destino.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_OutrosCred').AsCurrency);      // 07 - Total de Ajustes "Outros créditos.

                     if Estado <> Dados.EmpresasEstado.AsString then begin
                        mRegistro := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosDest').AsFloat);    // 08 - Total de “Saldo devedor ICMS Diferencial de Alíquota da UF de Origem/Destino antes das deduções”.
                     end else begin
                        mRegistro := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosOrig').AsFloat);    // 08 - Total de “Saldo devedor ICMS Diferencial de Alíquota da UF de Origem/Destino antes das deduções”.
                     end;

       mRegistro := mRegistro +
                    '|' + FormatFloat('#0.00', 0);                                                       // 09 - Valor total dos ajustes "Deduções ICMS.

                    if Estado <> Dados.EmpresasEstado.AsString then begin
                       mRegistro := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosDest').AsFloat);    // 10 - Valor recolhido ou a recolher referente ao ICMS Diferencial de Alíquota da UF de Origem/Destino.
                    end else begin
                       mRegistro := mRegistro + '|' + FormatFloat('#0.00', tNotas2.FieldByName('DIFAL_DebitosOrig').AsFloat);    // 10 - Valor recolhido ou a recolher referente ao ICMS Diferencial de Alíquota da UF de Origem/Destino.
                    end;

       mRegistro := mRegistro +
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('Saldo_Transp').AsCurrency) +         // 11 - Saldo credor a transportar para o período seguinte referente a FCP.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('Deb_Esp').AsCurrency) +              // 12 - Valores recolhidos ou a recolher, extraapuração.
                    '|' + FormatFloat('#0.00', 0) +                                                      // 13 - Valor do "Saldo credor de período anterior – FCP".
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Dest').AsCurrency) +             // 14 - Valor total dos débitos FCP por "Saídas e prestações”.
                    '|' + FormatFloat('#0.00', 0) +                                                      // 15 - Valor total dos ajustes "Outros débitos FCP" e “Estorno de créditos FCP”.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Cred').AsCurrency) +             // 16 - Valor total dos créditos FCP por Entradas.
                    '|' + FormatFloat('#0.00', 0) +                                                      // 17 - Valor total dos créditos FCP por Entradas.
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Dest').AsCurrency) +             // 18 - Valor total de Saldo devedor FCP antes das deduções.
                    '|' + FormatFloat('#0.00', 0) +                                                      // 19 - Valor total das deduções "FCP".
                    '|' + FormatFloat('#0.00', tNotas2.FieldByName('FCP_Dest').AsCurrency) +             // 20 - Valor recolhido ou a recolher referente ao CP (18–19).
                    '|' + FormatFloat('#0.00', 0) +                                                      // 21 - Saldo credor a transportar para o período seguinte referente ao FCP.
                    '|' + FormatFloat('#0.00', 0) +                                                      // 22 - Valores recolhidos ou a recolher, extraapuração - FCP.
                    '|';
       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegE310);
       Inc(mQtdeBlocoE);

       RegistroE316(Estado);

       tNotas2.Next;
end;

// REGISTRO E316: OBRIGAÇÕES DO ICMS RECOLHIDO OU A RECOLHER – DIFERENCIAL DE ALÍQUOTA UF ORIGEM/DESTINO EC 87/15.
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE316(Estado: String);
var
   mValorRecol,
   mSaldoDevAnt: Real;
begin
       if Estado <> Dados.EmpresasEstado.AsString then begin
          tNotas3.SQL.Clear;
          tNotas3.SQL.Add('SELECT DIFAL_CredAnt     = 0');
          tNotas3.SQL.Add('      ,DIFAL_DebitosDest = FCP_ICMSDest');
          tNotas3.SQL.Add('      ,DIFAL_OutrosDeb   = 0');
          tNotas3.SQL.Add('      ,FCP_Dest          = FCP_ValorDest');
          tNotas3.SQL.Add('      ,DIFAL_Cred        = 0');
          tNotas3.SQL.Add('      ,FCP_Cred          = 0');
          tNotas3.SQL.Add('      ,DIFAL_OutrosCred  = 0');
          tNotas3.SQL.Add('      ,Saldo_DevAnt      = 0');
          tNotas3.SQL.Add('      ,DIFAL_Deducoes    = 0');
          tNotas3.SQL.Add('      ,Valor_Recol       = 0');
          tNotas3.SQL.Add('      ,Saldo_Transp      = 0');
          tNotas3.SQL.Add('      ,Deb_Esp           = 0');
          tNotas3.SQL.Add('      ,Data_Venc         = Data_Emissao');
          tNotas3.SQL.Add('      ,Codigo_Rec        = (SELECT GNRE_DIFAL FROM ICMS WHERE UF = :pEstado)');
          tNotas3.SQL.Add('      ,Codigo_Receita    = (select Codigo_Receita from Cybersoft_Cadastros.dbo.IncentivosFiscais where Nome = (select Incentivo_Fiscal from Cybersoft_Cadastros.dbo.Empresas where codigo = :pCod))');
          tNotas3.SQL.Add('FROM   NotasFiscais');
          tNotas3.SQL.Add('WHERE  Saida_Entrada = 1');
          tNotas3.SQL.Add('  AND  Data_Emissao BETWEEN :pDataIni AND :pDataFim');
          tNotas3.SQL.Add('  AND  Estado = :pEstado');
          tNotas3.SQL.Add('  AND  Cancelada <> 1');
          tNotas3.SQL.Add('  AND  NFe_Denegada <> 1');
          tNotas3.SQL.Add('  AND  (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1');
          tNotas3.ParamByName('pDataIni').AsDate  := mDataCIAPI;
          tNotas3.ParamByName('pDataFim').AsDate  := mDataCIAPF;
          tNotas3.ParamByName('pEstado').AsString := Estado;
          tNotas3.ParamByName('pCod').Asinteger   := Menu_Principal.mEmpresa;
          //tNotas3.SQL.SaveToFile('c:\temp\SPED_FISCAL_RegistroE316_Fora.sql');
          tNotas3.Open;
          if trim(tNotas3.FieldByName('Codigo_Receita').AsString) <> '' then begin
             While not tNotas3.Eof do begin
                   mSaldoDevAnt := (tNotas3.FieldByName('DIFAL_DebitosDest').AsFloat + tNotas3.FieldByName('DIFAL_OutrosDeb').AsFloat + tNotas3.FieldByName('FCP_Dest').AsFloat) -
                                   (tNotas3.FieldByName('DIFAL_CredAnt').AsFloat+ tNotas3.FieldByName('DIFAL_Cred').AsFloat + tNotas3.FieldByName('DIFAL_OutrosCred').AsFloat + tNotas3.FieldByName('FCP_Cred').AsFloat);
                   mValorRecol := mSaldoDevAnt - tNotas3.FieldByName('DIFAL_Deducoes').AsFloat;
                   Inc(mLinha);
                   mRegistro := '|E316' +                                                                                                                      // 01 - REG.
                                '|000' +                                                                                                                       // 02 - Código da obrigação recolhida ou a recolher.
                                '|' + FormatFloat('#0.00', mValorRecol) +                                                                                      // 03 - Valor da obrigação recolhida ou a recolher.
                                '|' + Trim(RemoveCaracter('/', '', tNotas3.FieldByName('Data_Venc').AsString)) +                                               // 04 - Data de vencimento da obrigação.
                                '|' + tNotas3.FieldByName('Codigo_Receita').AsString +                                                                         // 05 - Código de receita referente à obrigação, próprio da unidade da federação.
//                                '|' + tNotas3.FieldByName('Codigo_Rec').AsString +                                                                             // 05 - Código de receita referente à obrigação, próprio da unidade da federação.
                                '|' +                                                                                                                          // 06 - Número do processo ou auto de infração.
                                '|' +                                                                                                                          // 07 - Indicador da origem do processo.
                                '|' +                                                                                                                          // 08 - Descrição resumida do processo que embasou o lançamento.
                                '|' +                                                                                                                          // 09 - Descrição complementar das obrigações recolhidas ou a recolher.
                                '|' + PoeZero(2, MonthOf(tNotas3.FieldByName('Data_Venc').Value))+InttoStr(YearOf(tNotas3.FieldByName('Data_Venc').Value)) +   // 10 - Informe o mês de referência no formato “mmaaaa”.
                                '|' ;
                   Say( mLinha, 000, Arquivo, mRegistro );
                   Inc(mQtdeRegE316);
                   Inc(mQtdeBlocoE);
                   tNotas3.Next;
             end;
          end;
       end else begin
          tNotas3.SQL.Clear;
          tNotas3.SQL.Add('SELECT DIFAL_CredAnt     = 0');
          tNotas3.SQL.Add('      ,DIFAL_DebitosOrig = (SELECT SUM(DIFAL_ValorOrig) FROM NotasFiscais WHERE Saida_Entrada = 1 AND Data_Emissao BETWEEN :pDataIni AND :pDataFim AND Cancelada <> 1 AND Nfe_Denegada <> 1');
          tNotas3.SQL.Add('                           AND (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1)');
          tNotas3.SQL.Add('      ,DIFAL_DebitosDest = SUM(FCP_ICMSDest)');
          tNotas3.SQL.Add('      ,DIFAL_OutrosDeb   = 0');
          tNotas3.SQL.Add('      ,FCP_Dest          = SUM(FCP_ValorDest)');
          tNotas3.SQL.Add('      ,DIFAL_Cred        = 0');
          tNotas3.SQL.Add('      ,FCP_Cred          = 0');
          tNotas3.SQL.Add('      ,DIFAL_OutrosCred  = 0');
          tNotas3.SQL.Add('      ,Saldo_DevAnt      = 0');
          tNotas3.SQL.Add('      ,DIFAL_Deducoes    = 0');
          tNotas3.SQL.Add('      ,Valor_Recol       = 0');
          tNotas3.SQL.Add('      ,Saldo_Transp      = 0');
          tNotas3.SQL.Add('      ,Deb_Esp           = 0');
          tNotas3.SQL.Add('      ,Data_Venc         = :pDataFim');
          tNotas3.SQL.Add('      ,Codigo_Rec        = (SELECT GNRE_DIFAL FROM ICMS WHERE UF = :pEstado)');
          tNotas3.SQL.Add('      ,Codigo_Receita    = (select Codigo_Receita from Cybersoft_Cadastros.dbo.IncentivosFiscais where Nome = (select Incentivo_Fiscal from Cybersoft_Cadastros.dbo.Empresas where codigo = :pCod))');
          tNotas3.SQL.Add('FROM   NotasFiscais');
          tNotas3.SQL.Add('WHERE  Saida_Entrada = 1');
          tNotas3.SQL.Add('  AND  Data_Emissao BETWEEN :pDataIni AND :pDataFim');
          tNotas3.SQL.Add('  AND  Estado = :pEstado');
          tNotas3.SQL.Add('  AND  Cancelada <> 1');
          tNotas3.SQL.Add('  AND  NFe_Denegada <> 1');
          tNotas3.SQL.Add('  AND  (SELECT Consumidor_Final FROM Clientes WHERE Codigo = Cliente_Codigo) = 1');
          tNotas3.ParamByName('pDataIni').AsDate  := mDataCIAPI;
          tNotas3.ParamByName('pDataFim').AsDate  := mDataCIAPF;
          tNotas3.ParamByName('pEstado').AsString := Estado;
          tNotas3.ParamByName('pCod').Asinteger   := Menu_Principal.mEmpresa;
          //tNotas3.SQL.SavetoFile('c:\temp\SPED_FISCAL_RegistroE316_Dentro.sql');
          tNotas3.Open;

          if trim(tNotas3.FieldByName('Codigo_Receita').AsString) <> '' then begin
             mSaldoDevAnt := (tNotas3.FieldByName('DIFAL_DebitosOrig').AsFloat + tNotas3.FieldByName('DIFAL_OutrosDeb').AsFloat + tNotas3.FieldByName('FCP_Dest').AsFloat) -
                             (tNotas3.FieldByName('DIFAL_CredAnt').AsFloat + tNotas3.FieldByName('DIFAL_Cred').AsFloat + tNotas3.FieldByName('DIFAL_OutrosCred').AsFloat + tNotas3.FieldByName('FCP_Cred').AsFloat);
             mValorRecol := mSaldoDevAnt - tNotas3.FieldByName('DIFAL_Deducoes').AsFloat;
             Inc(mLinha);
             mRegistro := '|E316' +                                                                                                                      // 01 - REG.
                          '|000' +                                                                                                                       // 02 - Código da obrigação recolhida ou a recolher.
                          '|' + FormatFloat('#0.00', mValorRecol) +                                                                                      // 03 - Valor da obrigação recolhida ou a recolher.
                          '|' + Trim(RemoveCaracter('/', '', tNotas3.FieldByName('Data_Venc').AsString)) +                                               // 04 - Data de vencimento da obrigação.
                          '|' + tNotas3.FieldByName('Codigo_Receita').AsString +                                                                         // 05 - Código de receita referente à obrigação, próprio da unidade da federação.
//                          '|' + tNotas3.FieldByName('Codigo_Rec').AsString +                                                                             // 05 - Código de receita referente à obrigação, próprio da unidade da federação.
                          '|' +                                                                                                                          // 06 - Número do processo ou auto de infração.
                          '|' +                                                                                                                          // 07 - Indicador da origem do processo.
                          '|' +                                                                                                                          // 08 - Descrição resumida do processo que embasou o lançamento.
                          '|' +                                                                                                                          // 09 - Descrição complementar das obrigações recolhidas ou a recolher.
                          '|' + PoeZero(2, MonthOf(tNotas3.FieldByName('Data_Venc').Value))+InttoStr(YearOf(tNotas3.FieldByName('Data_Venc').Value)) +   // 10 - Informe o mês de referência no formato “mmaaaa”.
                          '|' ;
             Say( mLinha, 000, Arquivo, mRegistro );
             Inc(mQtdeRegE316);
             Inc(mQtdeBlocoE);
          end;
       end;
end;

{REGISTRO E500: PERÍODO DA APURAÇÃO DO IPI.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE500;
begin
       Inc(mLinha);
       mRegistro := '|E500' +                                          // 01 - REG.
                    '|' + Trim(Dados.EmpresasApuracao_IPI.AsString) +  // 02 - Periodo de apuração do IPI.
                    '|' + mDataIni +                                   // 03 - Data inicial da apuração.
                    '|' + mDataFim +                                   // 04 - Data final da apuração.
                    '|' ;
       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegE500);
       Inc(mQtdeBlocoE);

       RegistroE510;
       RegistroE520;
end;

{REGISTRO E510: CONSOLIDAÇÃO DOS VALORES DO IPI.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE510;
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT NotasItens.Nota,');
     tItens.SQL.Add('       NotasItens.Data,');
     tItens.SQL.Add('       NotasFiscais.Natureza_Codigo AS CFOP,');
     tItens.SQL.Add('       NotasItens.CSTIPI AS CST,');
     tItens.SQL.Add('       NotasFiscais.Valor_TotalNota AS Valor_Contabil,');
     tItens.SQL.Add('       NotasItens.Total_IPI AS Total_IPI,');
     tItens.SQL.Add('       NotasItens.Valor_BCIPI AS BCIPI');
     tItens.SQL.Add('INTO   #TEMP');
     tItens.SQL.Add('FROM   NotasItens, NotasFiscais');
     tItens.SQL.Add('WHERE  YEAR(Data) = :pAno AND MONTH(Data) = :pMes AND NotasFiscais.Numero = NotasItens.Nota AND NotasItens.Total_IPI > 0 AND NotasItens.Cancelada <> 1 AND NotasFiscais.Nfe_Denegada <> 1');
     tItens.SQL.Add('UNION  ALL');
     tItens.SQL.Add('SELECT NTI.Nota,');
     tItens.SQL.Add('       NTI.Data_Entrada,');
     tItens.SQL.Add('       NTI.Natureza_Codigo AS CFOP,');
     tItens.SQL.Add('       NTI.CST_IPI AS CST,');
     tItens.SQL.Add('       NT.Valor_TotalNota AS Valor_Contabil,');
     tItens.SQL.Add('       NTI.Valor_IPI AS Total_IPI,');
     tItens.SQL.Add('       NTI.Valor_BCIPI AS BCIPI');
     tItens.SQL.Add('FROM   NotasTerceirosItens NTI, NotasTerceiros NT');
     tItens.SQL.Add('WHERE  (YEAR(NTI.Data_Entrada) = :pAno AND MONTH(NTI.Data_Entrada) = :pMes) AND (NT.Nota = NTI.Nota AND NTI.Data_Entrada = NT.Data_Entrada AND NT.Fornecedor = NTI.Fornecedor) AND (ISNULL(NT.Desdobramento, 0) = 0) AND (NTI.Valor_IPI <> 0)');
     tItens.SQL.Add('SELECT CFOP, CST, SUM(Valor_Contabil) AS Valor_Contabil, SUM(Total_IPI) AS Total_IPI, SUM(BCIPI) AS BCIPI FROM #TEMP GROUP BY CFOP, CST');
     tItens.SQL.Add('ORDER  BY CFOP');
     tItens.SQL.Add('DROP TABLE #TEMP');
     tItens.ParamByName('pAno').AsInteger := cAno.AsInteger;
     tItens.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
     //tItens.SQL.SavetoFile('c:\Temp\SPED_FISCAL_RegistroE510.sql');
     tItens.Open;

     Janela_ProcessamentoSPED.Progresso2.Position := 0;
     Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E510...';

     tItens.First;
     While not tItens.Eof do begin
           Inc(mLinha);
           mRegistro := '|E510' +                                                                               // 01 - REG.
                        '|' + tItens.FieldByName('CFOP').AsString +                                             // 02 - CFOP.
                        '|' + tItens.FieldByName('CST').AsString +                                              // 03 - CST IPI.
                        '|' + FormatFloat('#0.00', tItens.FieldByName('Valor_Contabil').AsCurrency) +           // 04 - Valor Contabil.
                        '|' + FormatFloat('#0.00', tItens.FieldByName('BCIPI').AsCurrency) +                    // 05 - BC.IPI.
                        '|' + FormatFloat('#0.00', tItens.FieldByName('Total_IPI').AsCurrency) +                // 06 - Valor do IPI.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           tItens.Next;

           Inc(mQtdeRegE510);
           Inc(mQtdeBlocoE);

           Application.ProcessMessages;
           Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
     End;
end;

{REGISTRO E520: APURAÇÃO DO IPI.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE520;
Var
    mOutrosDebitos  : Currency;
    mOutrosCreditos : Currency;
    mSaldoTransp    : Currency;
    mRecolher       : Currency;
begin
      With Dados, dmFiscal do begin
           SaldoIPI.SQL.Clear;
           SaldoIPI.SQL.Add('SELECT * FROM SaldoIPI WHERE (Mes_Ano = :pMes_Ano)');

           If cMes.ItemIndex = 0 then
              SaldoIPI.ParamByName('pMes_Ano').AsString := '12'+InttoStr(cAno.AsInteger-1)
           else
              SaldoIPI.ParamByName('pMes_Ano').AsString := PoeZero(2,cMes.ItemIndex)+InttoStr(cAno.AsInteger);
           SaldoIPI.Open;

           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT SUM(ROUND(Valor_TotalIPI,2)) AS Total_IPI');
           tNotas.SQL.Add('FROM   NotasFiscais');
           tNotas.SQL.Add('WHERE  YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes AND NotasFiscais.Cancelada <> 1 AND NotasFiscais.Nfe_Denegada <> 1 AND Saida_Entrada = 1');
           tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           tNotas.Open;

           tAjustes.SQL.Clear;
           tAjustes.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_TotalIPI) FROM NotasFiscais   WHERE YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes AND NotasFiscais.Cancelada <> 1 AND NotasFiscais.Nfe_Denegada <> 1 AND Saida_Entrada = 0), 0) +');
           tAjustes.SQL.Add('       ISNULL((SELECT SUM(Valor_TotalIPI) FROM NotasTerceiros WHERE YEAR(Data_Entrada) = :pAno AND MONTH(Data_Entrada) = :pMes AND ISNULL(Desdobramento, 0) = 0), 0) AS Total_IPI');
           tAjustes.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tAjustes.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           tAjustes.Open;

           mSaldoTransp := tAjustes.FieldByName('Total_IPI').AsCurrency - tNotas.FieldByName('Total_IPI').AsCurrency;
           If mSaldoTransp < 0 then mSaldoTransp := 0;

           tOutros.SQL.Clear;
           tOutros.SQL.Add('SELECT SUM(Valor) AS Outros_Debitos FROM OutrosValoresIPI');
           tOutros.SQL.Add('WHERE (Debito_Credito = 1) AND (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno)' );
           tOutros.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tOutros.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           tOutros.Open;
           mOutrosDebitos := tOutros.FieldByName('Outros_Debitos').AsCurrency;

           tOutros.SQL.Clear;
           tOutros.SQL.Add('SELECT SUM(Valor) AS Outros_Creditos FROM OutrosValoresIPI');
           tOutros.SQL.Add('WHERE (Debito_Credito = 0) AND (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno)' );
           tOutros.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           tOutros.ParamByName('pAno').AsInteger := cAno.AsInteger;
           tOutros.Open;
           mOutrosCreditos := tOutros.FieldByName('Outros_Creditos').AsCurrency;

           mRecolher := (tNotas.FieldByName('Total_IPI').AsCurrency + mOutrosDebitos) - (SaldoIPISaldo.AsCurrency+ tAjustes.FieldByName('Total_IPI').AsCurrency + mOutrosCreditos);
           If mRecolher < 0 then begin
              mSaldoTransp :=mRecolher * -1;
              mRecolher    := 0;
           End;

           Janela_ProcessamentoSPED.Progresso2.Position := 0;
           Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E510...';

           Inc(mLinha);
           mRegistro := '|E520' +                                                                         // 01 - REG.
                        '|' + FormatFloat('#0.00', SaldoIPI.FieldByName('Saldo').AsCurrency) +            // 02 - Saldo anterior.
                        '|' + FormatFloat('#0.00', tNotas.FieldByName('Total_IPI').AsCurrency ) +         // 03 - Total dos Debitos.
                        '|' + FormatFloat('#0.00', tAjustes.FieldByName('Total_IPI').AsCurrency ) +       // 04 - Total dos Creditos.
                        '|' + FormatFloat('#0.00', mOutrosDebitos) +                                      // 05 - Outros debitos.
                        '|' + FormatFloat('#0.00', mOutrosCreditos) +                                     // 06 - Outros Creditos.
                        '|' + FormatFloat('#0.00', mSaldoTransp) +                                        // 07 - Saldo a transportar.
                        '|' + FormatFloat('#0.00', mRecolher ) +                                          // 08 - Saldo devedor a recolher.
                        '|';
           Say( mLinha, 000, Arquivo, mRegistro );

           Inc(mQtdeRegE520);
           Inc(mQtdeBlocoE);

           RegistroE530;
      End;
end;

{REGISTRO E530: AJUSTES DA APURAÇÃO DO IPI.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE530;
begin
      tOutros.SQL.Clear;
      tOutros.SQL.Add('SELECT * FROM OutrosValoresIPI');
      tOutros.SQL.Add('WHERE (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno)' );
      tOutros.SQL.Add('ORDER BY Numero' );
      tOutros.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tOutros.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
      tOutros.Open;

      Janela_ProcessamentoSPED.Progresso2.Position := 0;
      Janela_ProcessamentoSPED.Progresso2.Max      := tItens.RecordCount;
      Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: E530...';

      tOutros.First;
      While not tOutros.Eof do begin
            Inc(mLinha);
            mRegistro := '|E530' +                                                                        // 01 - REG.
                         '|' + Trim(tOutros.FieldByName('Debito_Credito').AsString) +                     // 02 - Indicador do ajuste.
                         '|' + FormatFloat('#0.00', tOutros.FieldByName('Valor').AsCurrency ) +           // 03 - Valor do ajuste.
                         '|' + PoeZero(3, tOutros.FieldByName('Codigo_Ajuste').AsInteger) +               // 04 - Código do ajuste (Tabela 4.5.4).
                         '|' + Trim(tOutros.FieldByName('Indicador_Origem').AsString) +                   // 05 - Indicador da origem do documento.
                         '|' + Trim(tOutros.FieldByName('Nota_Numero').AsString) +                        // 06 - Número do documento vinculado.
                         '|' + Trim(tOutros.FieldByName('Observacao').AsString) +                         // 07 - Número do documento vinculado.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeRegE530);
            Inc(mQtdeBlocoE);

            tOutros.Next;

            Application.ProcessMessages;
            Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
      End;
end;

{REGISTRO E990: ENCERRAMENTO DO BLOCO E}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroE990;
begin
       Inc(mQtdeRegE990);
       Inc(mQtdeBlocoE);
       Inc(mLinha);
       mRegistro  := '|E990' +                            // 01 - REG.
                      '|'+ InttoStr(mQtdeBlocoE)+'|';     // 02 - Quantidade de Linhas do BLOCO E.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO G001: ABERTURA DO BLOCO G}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG001;
begin
      with tCIAP do begin
           sql.Clear;
           sql.add('select * from Imobilizado');
           sql.Add('where isnull(Fim_Apropriacao, '''') = '''' ');
           sql.Add('or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno)');
           paramByName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
           paramByName('pAno').AsString := cAno.Text;
           open;
      end;

      Inc(mLinha);
      mRegistro := '|G001';                // 01 - REG.

      // 02 - Indicador de movimento: 0-com dados/ 1-SEM dados.
      If tCIAP.RecordCount > 0 then
         mRegistro := mRegistro + '|0|'
      else
         mRegistro := mRegistro + '|1|';

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegG001);
      Inc(mQtdeBlocoG);

      If tCIAP.RecordCount > 0 then RegistroG110;
end;

{REGISTRO G110: ICMS – ATIVO PERMANENTE – CIAP}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG110;
var
   mIndice: Real;
   mSaldo : Real;
begin
      tCIAP.SQL.Clear;
      tCIAP.SQL.Add('SELECT ISNULL(SUM(ICMS_Proprio+ICMS_Dif_Aliquota), 0) AS Saldo');
      tCIAP.SQL.Add('FROM   Imobilizado');
      tCIAP.SQL.Add('WHERE  (ISNULL(Fim_Apropriacao, '''') = '''') AND (Data_Nota < :pDataI) AND (Tipo_Movimentacao = ''SI'') ');
      tCIAP.ParamByName('pDataI').AsDate := mDataCIAPI;
      tCIAP.Open;
      mSaldo := tCIAP.FieldByName('Saldo').AsCurrency;

      tCIAP.SQL.Clear;
      tCIAP.SQL.Add('SELECT SUM(ICMS_Proprio+ICMS_Dif_Aliquota) AS Saldo_In_ICMS,');
      tCIAP.SQL.Add('       SUM(ICMS_Proprio)/48 AS Som_Parc,');
      tCIAP.SQL.Add('       (SELECT ISNULL(SUM(Valor_TotalProdutos), 0) FROM NotasFiscais WHERE(Saida_Entrada = 1) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Data_Emissao BETWEEN :pDataI AND :pDataF) AND (Valor_ICMS > 0)) AS Vl_Trib_Exp,');
      tCIAP.SQL.Add('       (SELECT ISNULL(SUM(Valor_TotalNota), 0)     FROM NotasFiscais WHERE(Saida_Entrada = 1) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Data_Emissao BETWEEN :pDataI AND :pDataF) AND (Valor_ICMS > 0)) AS Vl_Total,');
      tCIAP.SQL.Add('       0 AS SOM_ICMS_OC');
      tCIAP.SQL.Add('FROM   Imobilizado');
      tCIAP.SQL.Add('WHERE  (ISNULL(Fim_Apropriacao, '''') < (CAST(MONTH(Data_Nota) AS VARCHAR(2))+CAST(YEAR(Data_Nota) AS VARCHAR(4))))');
      tCIAP.ParamByName('pDataI').AsDate := mDataCIAPI;
      tCIAP.ParamByName('pDataF').AsDate := mDataCIAPF;
      //tCIAP.SQL.SavetoFile('c:\Temp\SPED_FISCAL_RegistroG110.sql');
      tCIAP.Open;

      mIndice := 0;
      If tCIAP.FieldByName('Vl_Trib_Exp').AsCurrency > 0 then begin
         mIndice := tCIAP.FieldByName('Vl_Trib_Exp').AsCurrency / tCIAP.FieldByName('Vl_Total').AsCurrency;
      End;

      Inc(mLinha);
      mRegistro := '|G110' +                                                                            // 01 - REG.
                   '|' + mDataIni +                                                                     // 02 - Data inicial a que a apuração se refere.
                   '|' + mDataFim +                                                                     // 03 - Data final a que a apuração se refere.
                   '|' + FormatFloat('#0.00'  , mSaldo) +                                               // 04 - Saldo inicial de ICMS do CIAP.
                   '|' + FormatFloat('#0.00'  , tCIAP.FieldByName('Som_Parc').AsCurrency) +             // 05 - Somatório das parcelas de ICMS passível de apropriação de cada bem.
                   '|' + FormatFloat('#0.00'  , tCIAP.FieldByName('Vl_Trib_Exp').AsCurrency) +          // 06 - Valor do somatório das saídas tributadas e saídas para exportação.
                   '|' + FormatFloat('#0.00'  , tCIAP.FieldByName('Vl_Total').AsCurrency) +             // 07 - Valor total de saídas.
                   '|' + FormatFloat('#0.0000', mIndice) +                                              // 08 - Índice de participação do valor do somatório das saídas tributadas e saídas para exportação.
                   '|' + FormatFloat('#0.00'  , tCIAP.FieldByName('Som_Parc').AsCurrency * mIndice) +   // 09 - Valor de ICMS a ser apropriado na apuração do ICMS.
                   '|' + FormatFloat('#0.00'  , 0) +                                                    // 10 - Valor de outros créditos a ser apropriado na Apuração do ICMS.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegG110);
      Inc(mQtdeBlocoG);

      If tCIAP.RecordCount > 0 then begin
         RegistroG125;
      End;
end;

{REGISTRO G125: MOVIMENTAÇÃO DE BEM OU COMPONENTE DO ATIVO IMOBILIZADO}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG125;
begin
      With Dados, dmFiscal do begin
           with tCIAP do begin
                {
                sql.clear;
                sql.add('SELECT * FROM Imobilizado');
                sql.add('WHERE (Saida_DataNota <= :pDataIni OR Saida_DataNota IS NULL)');
                sql.add('      AND (Fim_Apropriacao IS NULL OR Fim_Apropriacao = :pPeriodo)');
                sql.add('ORDER BY Codigo');
                paramByName('pDataIni').AsDate   := mDataCIAPI;
                paramByName('pPeriodo').AsString := PoeZero(2, cMes.ItemIndex+1)+PoeZero(4, cAno.AsInteger);
                //sql.SaveToFile('c:\temp\SPED_FISCAL_RegistroG125.sql');
                open;
                }
                sql.clear;
                sql.add('select *');
                sql.add('from Imobilizado');
                sql.add('where (Saida_DataNota >= :pDataIni or isnull(Saida_DataNota, '''') = '''')');
                sql.Add('and (isnull(Fim_Apropriacao, '''') = '''' or (substring(Fim_Apropriacao, 1, 2) >= :pMes and substring(Fim_Apropriacao, 3, 4) >= :pAno))');
                paramByName('pMes').AsString := poezero(2, cMes.ItemIndex+1);
                paramByName('pAno').AsString := cAno.Text;
                sql.add('order by Codigo');
                paramByName('pDataIni').AsDate   := mDataCIAPI;
                //sql.SaveToFile('c:\temp\SPED_FISCAL_RegistroG125.sql');
                open;
           end;

           While not tCIAP.Eof do begin
                 Inc(mLinha);
                 mRegistro := '|G125' +                                                                                                               // 01 - REG.
                              '|' + tCIAP.FieldByName('Codigo_Sistema').AsString +                                                                    // 02 - Código do bem.
                              '|' + RemoveCaracter('/', '', tCIAP.FieldByName('Data_Nota').AsString) +                                                // 03 - Data da movimentação ou saldo inicial.
                              '|' + tCIAP.FieldByName('Tipo_Movimentacao').AsString +                                                                 // 04 - Tipo de movimentação do bem ou componente.
                              '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Proprio').AsCurrency) +                                              // 05 - Valor do ICMS da Operação Própria na entrada do bem ou componente.
                              '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_ST').AsCurrency) +                                                   // 06 - Valor do ICMS da Oper. por Sub. Tributária.
                              '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Frete').AsCurrency) +                                                // 07 - Valor do ICMS sobre Frete do Conhecimento de Transporte.
                              '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Dif_Aliquota').AsCurrency) +                                         // 08 - Valor do ICMS - Diferencial de Alíquota, conforme Doc. de Arrecadação.
                              '|' + tCIAP.FieldByName('Apropriadas').AsString +                                                                       // 09 - Número da parcela do ICMS.
                              '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Proprio').AsCurrency / tCIAP.FieldByName('Parcelas').AsInteger) +    // 10 - Valor da parcela de ICMS passível de apropriação.
                              '|';
                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegG125);
                 Inc(mQtdeBlocoG);

                 If (tCIAP.FieldByName('Tipo_Movimentacao').AsString = 'MC') or (tCIAP.FieldByName('Tipo_Movimentacao').AsString = 'IM') or (tCIAP.FieldByName('Tipo_Movimentacao').AsString = 'IA') or (tCIAP.FieldByName('Tipo_Movimentacao').AsString = 'AT') then begin
                    RegistroG130;
                 End;

                 tCIAP.Next;
           End;
      End;
end;

{REGISTRO G126: OUTROS CRÉDITOS CIAP.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG126;
begin
      Inc(mLinha);
      mRegistro := '|G126' +                                                                         // 01 - REG.
                   '|' + mDataIni +                                                                  // 02 - Data inicial do período de apuração.
                   '|' + mDataFim +                                                                  // 03 - Data final do período de apuração.
                   '|' + '' +                                                                        // 04 - Número da parcela do ICMS.
                   '|' + FormatFloat('#0.00', 0) +                                                   // 05 - Valor da parcela de ICMS passível de apropriação.
                   '|' + FormatFloat('#0.00', 0) +                                                   // 06 - Valor do somatório das saídas tributadas e saídas para exportação.
                   '|' + FormatFloat('#0.00', 0) +                                                   // 07 - Valor total de saídas no período indicado neste registro.
                   '|' + FormatFloat('#0.00', 0) +                                                   // 08 - Índice de participação do valor do somatório das saídas tributadas.
                   '|' + FormatFloat('#0.00', 0) +                                                   // 09 - Valor de outros créditos de ICMS a ser apropriado na apuração.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegG126);
      Inc(mQtdeBlocoG);
end;

{REGISTRO G130: IDENTIFICAÇÃO DO DOCUMENTO FISCAL }
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG130;
begin
       Inc(mLinha);
       mRegistro := '|G130' +                                                                             // 01 - REG.
                    '|1' +                                                                                // 02 - Indicador do emitente do documento fiscal: 0- Emissão própria/1- Terceiros.
                    '|' + tCIAP.FieldByName('Fornecedor').AsString + 'F' +                                // 03 - Código do participante.
                    '|' + tCIAP.FieldByName('Modelo').AsString +                                          // 04 - Código do modelo de documento fiscal, conforme tabela.
                    '|' + tCIAP.FieldByName('Serie').AsString  +                                          // 05 - Série do documento fiscal.
                    '|' + tCIAP.FieldByName('Nota').AsString  +                                           // 06 - Número de documento fiscal.
                    '|' + tCIAP.FieldByName('Chave_Nota').AsString +                                      // 07 - Chave do documento fiscal eletrônico.
                    '|' + RemoveCaracter('/', '', tCIAP.FieldByName('Data_Nota').AsString) +              // 08 - Data da emissão do documento fiscal.
                    '|' +                                                                                 // 09 - Número do doc de arrecadação.
                    '|';
       Say( mLinha, 000, Arquivo, mRegistro );

       Inc(mQtdeRegG130);
       Inc(mQtdeBlocoG);

       RegistroG140;
end;

{REGISTRO G140: IDENTIFICAÇÃO DO ITEM DO DOCUMENTO FISCAL }
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG140;
begin
      Inc(mLinha);
      mRegistro := '|G140' +                                                                             // 01 - REG.
                   '|' + tCIAP.FieldByName('Ordem_Item').AsString +                                      // 02 - Número sequencial do item no documento fiscal.
                   '|' + tCIAP.FieldByName('Codigo_Sistema').AsString +                                  // 03 - Código correspondente do bem no documento fiscal.
                   '|' + FormatFloat('#0.00', tCIAP.FieldByName('Quantidade').asfloat) +                 // 04 - Quantidade, deste item da nota fiscal, que foi aplicada neste bem, expressa na mesma unidade constante no documento fiscal de entrada.
                   '|' + tCIAP.FieldByName('Unidade').AsString +                                         // 05 - Unidade do item constante no documento fiscal de entrada.
                   '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Proprio').AsCurrency) +            // 06 - Valor do ICMS da Operação Própria na entrada do item,proporcional à quantidade aplicada no bem ou componente.
                   '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_ST').AsCurrency) +                 // 07 - Valor do ICMS ST na entrada do item, proporcional à quantidade aplicada no bem ou componente.
                   '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Frete').AsCurrency) +              // 08 - Valor do ICMS sobre Frete do Conhecimento de Transporte na entrada do item, proporcional à quantidade aplicada no bem ou componente.
                   '|' + FormatFloat('#0.00', tCIAP.FieldByName('ICMS_Dif_Aliquota').AsCurrency) +       // 09 - Valor do ICMS Diferencial de Alíquota, na entrada do item, proporcional à quantidade aplicada no bem ou componente. 
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegG140);
      Inc(mQtdeBlocoG);
end;

{REGISTRO G990: ENCERRAMENTO DO BLOCO G}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroG990;
begin
       Inc(mQtdeRegG990);
       Inc(mQtdeBlocoG);
       Inc(mLinha);
       mRegistro  := '|G990' +                            // 01 - REG.
                      '|'+ InttoStr(mQtdeBlocoG)+'|';     // 02 - Quantidade de Linhas do BLOCO G.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO H001: ABERTURA DO BLOCO H.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroH001;
begin
      if Dados.EmpresasMenu_Inventario.AsBoolean then begin
         Inc(mLinha);
         mRegistro := '|H001';                   // 01 - REG.
         if (tFichaInventario.RecordCount > 0) and (cInventario.ItemIndex <> 3) then begin
            mRegistro := mRegistro + '|0|';
         end else begin
            mRegistro := mRegistro + '|1|'
         end;
         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegH001);
         Inc(mQtdeBlocoH);

         If (tFichaInventario.RecordCount > 0) and (cInventario.ItemIndex <> 3) then RegistroH005;
      end else begin
         Inc(mLinha);
         mRegistro := '|H001';                   // 01 - REG.
         if (dmFiscal.Inventario.RecordCount > 0) and (cInventario.ItemIndex <> 3) then begin
            mRegistro := mRegistro + '|0|';
         end else begin
            mRegistro := mRegistro + '|1|'
         end;
         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegH001);
         Inc(mQtdeBlocoH);

         if (dmFiscal.Inventario.RecordCount > 0) and (cInventario.ItemIndex <> 3) then RegistroH005;
      end;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.RegistroH005;
begin
      Inc(mLinha);
      mRegistro := '|H005' +                                                  // 01 - REG.
                   '|' + RemoveCaracter('/', '',DatetoStr(mDataInventF)) +    // 02 - Data do inventário.
                   '|' + FormatFloat('#0.00', mTotalInvent ) +                // 03 - Valor total do estoque.
                   '|' + FormatFloat('00', cMotivo.ItemIndex+1 ) +            // 04 - Motivo do Inventario.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegH005);
      Inc(mQtdeBlocoH);

      If mTotalInvent <> 0 then RegistroH010;
end;

{REGISTRO H010: INVENTÁRIO.}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroH010;
begin
     With Dados, dmFiscal do begin
        If EmpresasMenu_Inventario.AsBoolean then begin
           Janela_ProcessamentoSPED.Progresso3.Position := 0;
           Janela_ProcessamentoSPED.Progresso3.Max      := tFichaInventario.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: H010...';

           tFichaInventario.First;
           While not tFichaInventario.Eof do begin
                 Inc(mLinha);

                 mRegistro := '|H010' +                                                                              // 01 - REG.
                              '|' + Trim(tFichaInventario.FieldByName('Codigo').AsString) +                          // 02 - Codigo do item.
                              '|' + Trim(tFichaInventario.FieldByName('UM').AsString) +                              // 03 - Unidade do item.
                              '|' + FormatFloat('#0.00', tFichaInventario.FieldByName('Qtde_Saldo').Value ) +        // 04 - Quantidade do item.
                              '|' + FormatFloat('#0.0000', tFichaInventario.FieldByName('Unitario_Saldo').Value ) +  // 05 - Valor unitario do item.
                              '|' + FormatFloat('#0.00', tFichaInventario.FieldByName('Total_Saldo').Value ) +       // 06 - Valor do item.
                              '|' + Copy(tFichaInventario.FieldByName('Estoque').AsString, 1, 1);                    // 07 - Indicador de propriedade.

                              If Copy(tFichaInventario.FieldByName('Estoque').AsString, 1, 1) <> '0' then begin      // 08 - Participante (Mercadoria de terceiros).
                                 mRegistro := mRegistro + '|' + Trim(tFichaInventario.FieldByName('Destinatario_Codigo').AsString)+Trim(tFichaInventario.FieldByName('Tipo').AsString);
                              end else
                                 mRegistro := mRegistro + '|';

                              mRegistro := mRegistro +'|' + ''+                                                  // 09 - Descrição complementar.
                              '|' + Trim(Configuracao.FieldByName('Conta_Inventario').AsString)+                 // 10 - Conta contabil.
                              '|' + FormatFloat('#0.00', 0)+                                                     // 11 - Valor do item para efeitos do Imposto de Renda.
                              '|';

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegH010);
                 Inc(mQtdeBlocoH);

                 tFichaInventario.Next;

                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
           End;
        end else begin
           Janela_ProcessamentoSPED.Progresso3.Position := 0;
           Janela_ProcessamentoSPED.Progresso3.Max      := Inventario.RecordCount;
           Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: H010...';

           Inventario.First;
           While not Inventario.Eof do begin
                 Inc(mLinha);

                 mRegistro := '|H010' +                                                             // 01 - REG.
                              '|' + Trim(InventarioCodigo.AsString) +                               // 02 - Codigo do item.
                              '|' + Trim(InventarioUnidade.AsString) +                              // 03 - Unidade do item.
                              '|' + FormatFloat('#0.00', InventarioQuantidade.Value ) +             // 04 - Quantidade do item.
                              '|' + FormatFloat('#0.00', InventarioValor_Unitario.Value ) +         // 05 - Valor unitario do item.
                              '|' + FormatFloat('#0.00', InventarioValor_Total.Value );             // 06 - Valor do item.
                              If Inventario.FieldByName('Inventario').AsString = 'P' then begin     // 07 - Indicador de propriedade.
                                 mRegistro := mRegistro + '|' + '0';
                              end else begin
                                 mRegistro := mRegistro + '|' + '1';
                              End;
                              If Trim(Inventario.FieldByName('Tipo').AsString) <>  '' then          // 08 - Participante (Mercadoria de terceiros).
                                 mRegistro := mRegistro + '|' + Trim(Inventario.FieldByName('Participante').AsString)+Trim(Inventario.FieldByName('Tipo').AsString)
                              else
                                 mRegistro := mRegistro + '|';
                              mRegistro := mRegistro +
                              '|' + ''+                                                             // 09 - Descrição complementar.
                              '|' + Trim(Configuracao.FieldByName('Conta_Inventario').AsString)+    // 10 - Conta contabil.
                              '|' + FormatFloat('#0.00', 0)+                                        // 11 - Valor do item para efeitos do Imposto de Renda.
                              '|';

                 Say( mLinha, 000, Arquivo, mRegistro );

                 Inc(mQtdeRegH010);
                 Inc(mQtdeBlocoH);

                 Inventario.Next;
                 Application.ProcessMessages;
                 Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
           End;
        end;
     End;
end;

{REGISTRO H990: ENCERRAMENTO DO BLOCO H}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroH990;
begin
       Inc(mQtdeRegH990);
       Inc(mQtdeBlocoH);
       Inc(mLinha);
       mRegistro  := '|H990' +                            // 01 - REG.
                      '|'+ InttoStr(mQtdeBlocoH)+'|';     // 02 - Quantidade de Linhas do BLOCO H.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO K001: ABERTURA DO BLOCO K.}
{
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroK001;
begin
      Inc(mLinha);
      if cInventario.ItemIndex < 3 then begin
         tEstoque.SQL.Clear;
         tEstoque.SQL.Add('-- MERCADORIA PRÓPRIA.');
         tEstoque.SQL.Add('SELECT  FI1.Item');
         tEstoque.SQL.Add('       ,FI1.Data');
         tEstoque.SQL.Add('       ,FI1.Codigo');
         tEstoque.SQL.Add('       ,Historico = ''MERCADORIA NA PRÓPRIA EMPRESA'' ');
         tEstoque.SQL.Add('       ,Estoque = ''0'' ');
         tEstoque.SQL.Add('       ,FI1.Emissor');
         tEstoque.SQL.Add('       ,Participante = null');
         tEstoque.SQL.Add('       ,FI1.Qtde_Saldo');
         tEstoque.SQL.Add('INTO   #TEMP');
         tEstoque.SQL.Add('FROM   FichaEstoque FI1');
         tEstoque.SQL.Add('WHERE  FI1.Item = (SELECT MAX(FI2.Item) FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pDataFim)');
         tEstoque.SQL.Add('AND    (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');

         tEstoque.SQL.Add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
         tEstoque.SQL.Add('UNION ALL');
         tEstoque.SQL.Add('SELECT  FI1.Item');
         tEstoque.SQL.Add('       ,FI1.Data');
         tEstoque.SQL.Add('       ,FI1.Codigo');
         tEstoque.SQL.Add('       ,Historico = ''MERCADORIA PRÓPRIA EM PODER TERCEIROS'' ');
         tEstoque.SQL.Add('       ,Estoque = ''1'' ');
         tEstoque.SQL.Add('       ,FI1.Emissor');
         tEstoque.SQL.Add('       ,Participante = FI1.Destinatario_Codigo');
         tEstoque.SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Saida-FI2.Qtde_Entrada)  FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pDataFim)');
         tEstoque.SQL.Add('FROM   FichaEstoque FI1');
         tEstoque.SQL.Add('WHERE  FI1.Estoque = ''1-ARMAZEM'' ');
         tEstoque.SQL.Add('  AND  FI1.Item = (SELECT MAX(FI2.Item) FROM FichaEstoque FI2 WHERE FI2.Data <= :pDataFim AND FI2.Codigo = FI1.Codigo AND Estoque = ''1-ARMAZEM'')');
         tEstoque.SQL.Add('AND    (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');

         tEstoque.SQL.Add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
         tEstoque.SQL.Add('UNION ALL');
         tEstoque.SQL.Add('SELECT  FI1.Item');
         tEstoque.SQL.Add('       ,FI1.Data');
         tEstoque.SQL.Add('       ,FI1.Codigo');
         tEstoque.SQL.Add('       ,Historico = ''MERCADORIA DE TERCEIROS EM PODER DA EMPRESA'' ');
         tEstoque.SQL.Add('       ,Estoque = ''2'' ');
         tEstoque.SQL.Add('       ,FI1.Emissor');
         tEstoque.SQL.Add('       ,Participante = FI1.Destinatario_Codigo');
         tEstoque.SQL.Add('       ,Qtde_Saldo     = (SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida)  FROM FichaEstoque FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pDataFim)');
         tEstoque.SQL.Add('FROM   FichaEstoque FI1');
         tEstoque.SQL.Add('WHERE  FI1.Estoque = ''2-TERCEIROS'' ');
         tEstoque.SQL.Add('  AND  FI1.Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pDataFim AND Estoque = ''2-TERCEIROS'' GROUP BY Codigo)');
         tEstoque.SQL.Add('  AND (SELECT Tipo_Item FROM Produtos PRD WHERE PRD.Codigo = FI1.Codigo) IN(0,1,2,3,4,5,6,10)');

         tEstoque.SQL.Add('SELECT *');
         tEstoque.SQL.Add('FROM   #TEMP');
         tEstoque.SQL.Add('WHERE  Qtde_Saldo > 0');
         tEstoque.SQL.Add('ORDER BY Estoque,Data,Codigo');
         tEstoque.SQL.Add('DROP TABLE #TEMP');
         tEstoque.ParamByName('pDataFim').AsDate := mDataEstoque;
         //tEstoque.SQL.SavetoFile('c:\Temp\SPED_FISCAL_RegistroK001.sql');
         tEstoque.Open;
         if tEstoque.RecordCount > 0 then
            mRegistro := '|K001|0|'                   // 01 - REG.
         else
            mRegistro := '|K001|1|';
      end else begin
         mRegistro := '|K001|1|'
      end;

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegK001);
      Inc(mQtdeBlocoK);

      If (tEstoque.RecordCount > 0) then RegistroK100;
end;
}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroK001;
begin
      If Dados.EmpresasMenu_Inventario.AsBoolean then begin
         Inc(mLinha);
         mRegistro := '|K001';                   // 01 - REG.
         If (tFichaEstoque.RecordCount > 0) and (cEstoque.ItemIndex <> 3) then begin
            mRegistro := mRegistro + '|0|';
         end else begin
            mRegistro := mRegistro + '|1|'
         End;
         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegK001);
         Inc(mQtdeBlocoK);

         If (tFichaEstoque.RecordCount > 0) and (cEstoque.ItemIndex <> 3) then begin
            RegistroK010;
            RegistroK100;
         end;
      end else begin
         Inc(mLinha);
         mRegistro := '|K001';                   // 01 - REG.
         If (dmFiscal.Estoque.RecordCount > 0) and (cEstoque.ItemIndex <> 3) then begin
            mRegistro := mRegistro + '|0|';
         end else begin
            mRegistro := mRegistro + '|1|'
         End;
         Say( mLinha, 000, Arquivo, mRegistro );

         Inc(mQtdeRegK001);
         Inc(mQtdeBlocoK);

         If (dmFiscal.Estoque.RecordCount > 0) and (cEstoque.ItemIndex <> 3) then
            RegistroK100;
      end;
end;

{REGISTRO K010: LAYOUT DO ESTOQUE}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroK010;
begin
      Inc(mLinha);
      mRegistro := '|K010' +                                                       // 01 - REG.
                   '|' + Dados.Empresas.fieldbyname('Layout_Estoque').asstring+    // 02 - Indicador de tipo de leiaute adotado.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegK010);
      Inc(mQtdeBlocoK);
end;

{REGISTRO K100: PERÍODO DE APURAÇÃO DO ICMS/IPI}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroK100;
begin
      Inc(mLinha);
      mRegistro := '|K100' +                 // 01 - REG.
                   '|' + mDataIni +          // 02 - Data inicial da apuração.
                   '|' + mDataFim+'|';       // 03 - Data final da apuração.
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeRegK100);
      Inc(mQtdeBlocoK);

      RegistroK200;
end;

{REGISTRO K200: ESTOQUE ESCRITURADO}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroK200;
begin
      with Dados, dmFiscal do begin
           if EmpresasMenu_Inventario.AsBoolean then begin
              Janela_ProcessamentoSPED.Progresso2.Position := 0;
              Janela_ProcessamentoSPED.Progresso2.Max      := tFichaEstoque.RecordCount;
              Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: K200...';
              tFichaEstoque.First;
              while not tFichaEstoque.Eof do begin
                    Inc(mLinha);
                    mRegistro := '|K200' +                                                                           // 01 - REG.
                                 '|'+ RemoveCaracter('/', '',mDataFim) +                                             // 02 - Data do estoque final.
                                 '|'+ tFichaEstoque.FieldByName('Codigo').AsString +                                 // 03 - Código do produto.
                                 '|'+ FormatFloat('#0.000', tFichaEstoque.FieldByName('Qtde_Saldo').Value ) +        // 04 - Quantidade em estoque.
                                 '|'+ Copy(tFichaEstoque.FieldByName('Estoque').AsString, 1, 1);

                                 if Copy(tFichaEstoque.FieldByName('Estoque').AsString, 1, 1) <> '0' then begin      // 06 - Participante (Mercadoria de terceiros).
                                    mRegistro := mRegistro + '|' + Trim(tFichaEstoque.FieldByName('Destinatario_Codigo').AsString)+Trim(tFichaEstoque.FieldByName('Tipo').AsString);
                                 end else
                                    mRegistro := mRegistro + '|';
                    mRegistro := mRegistro + '|';

                    Say( mLinha, 000, Arquivo, mRegistro );

                    Inc(mQtdeRegK200);
                    Inc(mQtdeBlocoK);

                    tFichaEstoque.Next;
                    Application.ProcessMessages;
                    Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
              end;
           end else begin
              Janela_ProcessamentoSPED.Progresso2.Position := 0;
              Janela_ProcessamentoSPED.Progresso2.Max      := Estoque.RecordCount;
              Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: K200...';
              while not Estoque.Eof do begin
                    Inc(mLinha);
                    mRegistro := '|K200' +                                                                // 01 - REG.
                                 '|'+ RemoveCaracter('/', '',mDataFim) +                                  // 02 - Data do estoque final.
                                 '|'+ Estoque.FieldByName('Codigo').AsString +                            // 03 - Código do produto.
                                 '|'+ FormatFloat('#0.000', Estoque.FieldByName('Quantidade').Value );    // 04 - Quantidade em estoque.
                                 if Estoque.FieldByName('Estoque').AsString = 'P' then begin              // 05 - Indicador de propriedade.
                                    mRegistro := mRegistro + '|' + '0';
                                 end else begin
                                    mRegistro := mRegistro + '|' + '1';
                                 end;
                                 If Trim(Estoque.FieldByName('Tipo').AsString) <>  '' then          // 06 - Participante (Mercadoria de terceiros).
                                    mRegistro := mRegistro + '|' + Trim(Estoque.FieldByName('Participante').AsString)+Trim(Estoque.FieldByName('Tipo').AsString)
                                 else
                                    mRegistro := mRegistro + '|';
                    mRegistro := mRegistro + '|';

                    Say( mLinha, 000, Arquivo, mRegistro );

                    Inc(mQtdeRegK200);
                    Inc(mQtdeBlocoK);

                    Estoque.Next;
                    Application.ProcessMessages;
                    Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
              end;
           end;
      end;
end;

{REGISTRO K990: ENCERRAMENTO DO BLOCO K}
procedure TUtilitarios_ExportaSPED_Fiscal.RegistroK990;
begin
       Inc(mQtdeRegK990);
       Inc(mQtdeBlocoK);
       Inc(mLinha);
       mRegistro  := '|K990' +                            // 01 - REG.
                      '|'+ InttoStr(mQtdeBlocoK)+'|';     // 02 - Quantidade de Linhas do BLOCO H.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO 1001: ABERTURA DO BLOCO 1.}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1001;
begin
      { 
      tExporta.SQL.Clear;
      tExporta.SQL.Add('SELECT Numero');
      tExporta.SQL.Add('      ,Tipo_Declaracao = (SELECT Tipo_Declaracao FROM ProcessosDocumentos PD WHERE PD.Processo = ME.Processo)');
      tExporta.SQL.Add('      ,DE_Numero');
      tExporta.SQL.Add('      ,DE_Data');
      tExporta.SQL.Add('      ,Natureza_Exportacao = (SELECT Natureza_Exportacao FROM ProcessosDocumentos PD WHERE PD.Processo = ME.Processo)');
      tExporta.SQL.Add('      ,RE_Numero');
      tExporta.SQL.Add('      ,RE_Data');
      tExporta.SQL.Add('      ,CT_Numero');
      tExporta.SQL.Add('      ,CT_Data');
      tExporta.SQL.Add('      ,Data_Desembaraco  = (SELECT Data_DesembaracoDeclaracao FROM ProcessosDocumentos PD WHERE PD.Processo = ME.Processo)');
      tExporta.SQL.Add('      ,Tipo_Conhecimento = (SELECT Tipo_Conhecimento FROM ProcessosDocumentos PD WHERE PD.Processo = ME.Processo)');
      tExporta.SQL.Add('      ,Pais_Destino');
      tExporta.SQL.Add('FROM  MemorandoExportacao ME');
      tExporta.SQL.Add('WHERE (MONTH(ME.Data_Emissao) = :pMes) AND (YEAR(ME.Data_Emissao) = :pAno)');
      tExporta.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tExporta.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
      //tExporta.SQL.SaveToFile('c:\temp\SPED_FISCAL_Registro1001.sql');
      tExporta.Open;
      }
      tExporta.SQL.Clear;
      tExporta.SQL.Add('select Numero = Memorando_Exportacao');
      tExporta.SQL.Add('      ,Tipo_Declaracao');
      tExporta.SQL.Add('      ,DE_Numero = Numero_Declaracao');
      tExporta.SQL.Add('      ,DE_Data = Data_RegistroDeclaracao');
      tExporta.SQL.Add('      ,Natureza_Exportacao');
      tExporta.SQL.Add('      ,RE_Numero');
      tExporta.SQL.Add('      ,RE_Data = Data_RegistroDeclaracao');
      tExporta.SQL.Add('      ,CT_Numero');
      tExporta.SQL.Add('      ,CT_Data');
      tExporta.SQL.Add('      ,Data_Desembaraco  = Data_DesembaracoDeclaracao');
      tExporta.SQL.Add('      ,Tipo_Conhecimento');
      tExporta.SQL.Add('      ,Pais_Destino = Pais');
      tExporta.SQL.Add('from  ProcessosDocumentos pd');
      tExporta.SQL.Add('where Tipo = ''EXPORTAÇÃO'' ');
      tExporta.SQL.Add('and (select count(*) from NotasFiscais nf where nf.Processo = pd.Processo and nf.Cancelada <> 1 and nf.Nfe_Denegada <> 1 and Year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes) > 0');
      tExporta.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tExporta.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
      //tExporta.SQL.SaveToFile('c:\temp\SPED_FISCAL_Registro1001.sql');
      tExporta.Open;

      Inc(mLinha);
      mRegistro := '|1001|0|';
      Say( mLinha, 000, Arquivo, mRegistro );
      Inc(mQtdeReg1001);
      Inc(mQtdeBloco1);

      Registro1010;

      if tExporta.RecordCount > 0 then begin
         Registro1100;
      end;
end;

{REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1 }
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1010;
begin
     Janela_ProcessamentoSPED.Progresso2.Position := 0;
     Janela_ProcessamentoSPED.Progresso2.Max      := tExporta.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 1010...';

     Inc(mLinha);

     mRegistro := '|1010';                                                                             // 01: REG.
     if not cReg1100.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 02: 01 - 1100 - Ocorreu averbação (conclusão) de exportação no período.
     if not cReg1200.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 03: 02 - 1200 - Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz.
     if not cReg1300.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 04: 03 - 1300 - É comercio varejista de combustíveis.
     if not cReg1390.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 05: 04 - 1390 - Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante.
     if not cReg1400.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 06: 05 - 1400 - Existem informações a serem prestadas neste registro e o registro é obrigatório em sua Unidade da Federação.
     if not cReg1500.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 07: 06 - 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF.
     if not cReg1601.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 08: 07 - 1601 - Realizou vendas com Cartão de Crédito ou de débito.
     if not cReg1700.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 09: 08 - 1700 - É obrigatório em sua unidade da federação o controle de utilização de documentos fiscais em papel.
     if not cReg1800.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 10: 09 - 1800 - A empresa prestou serviços de transporte aéreo de cargas e de passageiros.
     if not cReg1960.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 11: 10 - 1960 - GIAF 1.
     if not cReg1970.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 12: 11 - 1970 - GIAF 3.
     if not cReg1980.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 13; 12 - 1980 - GIAF 4.
     if not cReg1250.Checked then mRegistro := mRegistro + '|N' else mRegistro := mRegistro + '|S';    // 14; 13 - 1250 - Possui informações consolidadas de saldos de restituição, ressarcimento e complementação do ICMS?.
     
     mRegistro := mRegistro + '|';

     Say( mLinha, 000, Arquivo, mRegistro );

     Inc(mQtdeReg1010);
     Inc(mQtdeBloco1);

     Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
end;

{REGISTRO 1100: REGISTRO DE INFORMAÇÕES SOBRE EXPORTAÇÃO.}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1100;
begin
     Janela_ProcessamentoSPED.Progresso2.Position := 0;
     Janela_ProcessamentoSPED.Progresso2.Max      := tExporta.RecordCount;
     Janela_ProcessamentoSPED.lRegistro.Caption   := 'Registro: 1100...';

     tExporta.First;
     While not tExporta.Eof do begin
           if tExporta.FieldByName('Natureza_Exportacao').AsInteger = 0 then begin
              Inc(mLinha);
              mRegistro := '|1100' +                                                                                  // 01 - REG.
                           '|' + tExporta.FieldByName('Tipo_Declaracao').AsString +                                   // 02 - Tipo de declaração.
                           '|' + tExporta.FieldByName('DE_Numero').AsString +                                         // 03 - Número da declaração.
                           '|' + Trim(RemoveCaracter('/', '', tExporta.FieldByName('DE_Data').AsString)) +            // 04 - Data da declaração.
                           '|' + tExporta.FieldByName('Natureza_Exportacao').AsString +                               // 05 - Natureza da Exportação.
                           '|' + ApenasNumeros(tExporta.FieldByName('RE_Numero').AsString) +                          // 06 - Nº do RE.
                           '|' + Trim(RemoveCaracter('/', '', tExporta.FieldByName('RE_Data').AsString)) +            // 07 - Data do RE.
                           '|' + Trim(RemoveCaracter('/', '', tExporta.FieldByName('CT_Numero').AsString)) +          // 08 - Número do conhecimento embarque.
                           '|' + Trim(RemoveCaracter('/', '', tExporta.FieldByName('CT_Data').AsString)) +            // 09 - Data do conhecimento embarque.
                           '|' + Trim(RemoveCaracter('/', '', tExporta.FieldByName('Data_Desembaraco').AsString)) +   // 10 - Data da averbação da Declaração.
                           '|' + PoeZero(2, tExporta.FieldByName('Tipo_Conhecimento').AsInteger) +                    // 11 - Tipo de conhecimento.
                           '|' + Copy(tExporta.FieldByName('Pais_Destino').AsString, 1,3) +                           // 12 - Código do País.
                           '|';
              Say( mLinha, 000, Arquivo, mRegistro );

              Inc(mQtdeReg1100);
              Inc(mQtdeBloco1);
              if tExporta.FieldByName('Natureza_Exportacao').AsInteger = 0 then begin
                 Registro1105(tExporta.FieldByName('Numero').AsInteger);
              end;

              Application.ProcessMessages;
              Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
           end;
           tExporta.Next;
     End;
end;

{REGISTRO 1105: DOCUMENTOS FISCAIS DE EXPORTAÇÃO.}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1105(pMemo: integer);
begin
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Nota');
      tItens.SQL.Add('      ,Data');
      tItens.SQL.Add('      ,Chave  = (SELECT NFe_cNF FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data)');
      tItens.SQL.Add('      ,Modelo = (SELECT Modelo  FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data)');
      tItens.SQL.Add('      ,Serie  = (SELECT Serie   FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data)');
      tItens.SQL.Add('      ,Codigo_Mercadoria');
      tItens.SQL.Add('      ,Processo');
      tItens.SQL.Add('FROM  NotasItens NI');
      tItens.SQL.Add('WHERE Processo = (SELECT Processo FROM MemorandoExportacao WHERE Numero = :pMemo)');
      tItens.SQL.Add('AND   Saida_Entrada = 1');
      tItens.SQL.Add('AND   ISNULL(Cancelada, 0) = 0');
      tItens.SQL.Add('AND   ISNULL(Nfe_Denegada, 0) = 0');
      tItens.SQL.Add('AND   ISNULL(Movimenta_Estoque, 0) = 1');
      tItens.SQL.Add('ORDER BY Nota, Item');
      tItens.ParamByName('pMemo').AsInteger := pMemo;
      //tItens.SQL.SaveToFile('c:\temp\SPED_FISCAL_REgistro1105.sql');
      tItens.Open;

      while not tItens.Eof do begin
            Inc(mLinha);
            mRegistro := '|1105' +                                                                      // 01 - REG.
                         '|' + PoeZero(2, tItens.FieldByName('Modelo').AsInteger)+                      // 02 - Modelo da Nota Fiscal.
                         '|' + tItens.FieldByName('Serie').AsString +                                   // 03 - Série da Nota Fiscal.
                         '|' + tItens.FieldByName('Nota').AsString +                                    // 04 - Número da Nota Fiscal.
                         '|' + tItens.FieldByName('Chave').AsString +                                   // 05 - Chave da Nota Fiscal Eletrônica.
                         '|' + Trim(RemoveCaracter('/', '', tItens.FieldByName('Data').AsString)) +     // 06 - Data da Nota Fiscal.
                         '|' + Trim(tItens.FieldByName('Codigo_Mercadoria').AsString) +                 // 07 - Codigo da mercadoria.
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Registro1110(tItens.FieldByName('Codigo_Mercadoria').AsString, tItens.FieldByName('Processo').AsString);

            Inc(mQtdeReg1105);
            Inc(mQtdeBloco1);
            tItens.Next;
      end;
end;

{REGISTRO 1110: DOCUMENTOS FISCAIS DE EXPORTAÇÃO.}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1110(pCodigo, pProcesso: string);
begin
      tNotasTerceirosItens.SQL.Clear;
      tNotasTerceirosItens.SQL.Add('SELECT Fornecedor');
      tNotasTerceirosItens.SQL.Add('      ,Nota');
      tNotasTerceirosItens.SQL.Add('      ,Data_Emissao');
      tNotasTerceirosItens.SQL.Add('      ,Chave  = (SELECT NFe_cNF FROM NotasTerceiros NF WHERE NF.Nota = NI.Nota AND NF.Data_Emissao = NI.Data_Emissao)');
      tNotasTerceirosItens.SQL.Add('      ,Modelo = (SELECT Modelo  FROM NotasTerceiros NF WHERE NF.Nota = NI.Nota AND NF.Data_Emissao = NI.Data_Emissao)');
      tNotasTerceirosItens.SQL.Add('      ,Serie =  (SELECT Serie   FROM NotasTerceiros NF WHERE NF.Nota = NI.Nota AND NF.Data_Emissao = NI.Data_Emissao)');
      tNotasTerceirosItens.SQL.Add('      ,Codigo_Mercadoria');
      tNotasTerceirosItens.SQL.Add('      ,Quantidade');
      tNotasTerceirosItens.SQL.Add('      ,Unidade_Medida');
      tNotasTerceirosItens.SQL.Add('FROM  NotasTerceirosItens NI');
      tNotasTerceirosItens.SQL.Add('WHERE Codigo_Mercadoria = :pCodigo');
      tNotasTerceirosItens.SQL.Add('AND   Processo = :pProcesso');
      tNotasTerceirosItens.SQL.Add('AND   Movimenta_Estoque = 1');
      tNotasTerceirosItens.SQL.Add('ORDER BY Nota, Item');
      tNotasTerceirosItens.ParamByName('pCodigo').AsString   := pCodigo;
      tNotasTerceirosItens.ParamByName('pProcesso').AsString := pProcesso;
      //tNotasTerceirosItens.SQL.SaveToFile('c:\temp\SPED_FISCAL_REgistro1110.sql');
      tNotasTerceirosItens.Open;

      while not tNotasTerceirosItens.Eof do begin
            Inc(mLinha);
            mRegistro := '|1110' +                                                                                          // 01 - REG.
                         '|' + tNotasTerceirosItens.FieldByName('Fornecedor').AsString + 'F' +                              // 02 - Fornecedor da Mercadoria.
                         '|' + tNotasTerceirosItens.FieldByName('Modelo').AsString +                                        // 03 - Modelo do documento fiscal.
                         '|' + tNotasTerceirosItens.FieldByName('Serie').AsString +                                         // 04 - Série documento fiscal.
                         '|' + tNotasTerceirosItens.FieldByName('Nota').AsString +                                          // 05 - Número da Nota Fiscal.
                         '|' + Trim(RemoveCaracter('/', '', tNotasTerceirosItens.FieldByName('Data_Emissao').AsString)) +   // 06 - Data da Nota Fiscal.
                         '|' + tNotasTerceirosItens.FieldByName('Chave').AsString +                                         // 07 - Chave da Nota Fiscal Eletrônica.
                         '|' + tExporta.FieldByName('Numero').AsString +                                                    // 08 - Número do Memorando de Exportação.
                         '|' + FormatFloat('0.000', tNotasTerceirosItens.FieldByName('Quantidade').AsFloat) +               // 09 - Quantidade do item efetivamente exportado.
                         '|' + tNotasTerceirosItens.FieldByName('Unidade_Medida').AsString +                                // 10 - Unidade do item (Campo 02 do registro 0190).
                         '|';
            Say( mLinha, 000, Arquivo, mRegistro );

            Inc(mQtdeReg1110);
            Inc(mQtdeBloco1);
            tNotasTerceirosItens.Next;
      end;
end;

{REGISTRO 1400: : INFORMAÇÃO SOBRE VALORES AGREGADOS}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1400;
begin
      Inc(mLinha);
      mRegistro := '|1400' +                                      // 01 - Texto fixo contendo "1400".
                   '|' +                                          // 02 - Código do item (Tabela própria da unidade da federação do Registro 0200.
                   '|' +                                          // 03 - Código do Município de origem/destino.
                   '|' + formatFloat('##0.00', 0) +               // 04 - Valor mensal correspondente ao município.
                   '|';
      Say( mLinha, 000, Arquivo, mRegistro );
      Inc(mQtdeReg1400);
      Inc(mQtdeBloco1);
end;

{REGISTRO 1601: OPERAÇÕES COM INSTRUMENTOS DE PAGAMENTOS ELETRÔNICOS}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1601;
var
   mDataI
  ,mDataF:TDate;
begin
//     if Bloco1_7.Checked  then begin
        mDataI := strtodate('01/' + PoeZero(2,cMes.ItemIndex+1) +'/'+ PoeZero(4, cAno.AsInteger));
        mDataF := UltimoDiaMes(mDataI);

        with tOutros do begin
             sql.clear;
             sql.Add('select Cod_Part_IP      = ltrim(rtrim(cast(prb.Banco as varchar(10))))+''B'' ');
             sql.Add('      ,Cod_Part_IT      = '''' ');
             sql.Add('      ,Valor_VS         = prb.Valor');
             sql.Add('      ,Valor_ISS        = iif(cf.Tipo_Documento = ''NFS'', prb.Valor, 0)');
             sql.Add('      ,Valor_OUTROS_VS  = case when (select nf.Valor_ICMS from NotasFiscais nf where nf.Numero = pr.Fiscal and nf.Data_Emissao = pr.Data_Documento) = 0 then prb.Valor else 0 end');
             sql.Add('      ,Valor_OUTROS_ISS = case when (select nf.Valor_ISS  from NotasServico nf where nf.Numero = pr.Fiscal and nf.Data_Emissao = pr.Data_Documento) = 0 then prb.Valor else 0 end');
             sql.Add('into #temp');
             sql.Add('from  PagarReceberBaixas prb');
             sql.Add('inner join PagarReceber pr on pr.Numero = prb.Numero');
             sql.Add('inner join ClassificacaoFinanceira cf on cf.Codigo = pr.Classificacao');
             sql.Add('where prb.data between :pDataIni and :pDataFim');
             sql.Add('and   prb.Tipo = ''R'' ');
             sql.Add('and   isnull(prb.Banco, 0)> 0');
             sql.Add('and   cf.Tipo_Documento in(''NF'', ''NFS'')');
             sql.Add('select Cod_Part_IP');
             sql.Add('      ,Cod_Part_IT');
             sql.Add('      ,Valor_VS     = sum(Valor_VS)');
             sql.Add('      ,Valor_ISS    = sum(Valor_ISS)');
             sql.Add('      ,Valor_Outros = sum(Valor_Outros_VS + Valor_Outros_ISS)');
             sql.Add('from #temp');
             sql.Add('group by Cod_Part_IP, Cod_Part_IT');
             sql.Add('drop table #temp');
             ParamByName('pDataIni').AsDate := mDataI;
             ParamByName('pDataFim').AsDate := mDataF;
             open;

             if recordcount > 0 then begin
                while not eof do begin
                      Inc(mLinha);
                      mRegistro := '|1601' +                                                                // 01 - REG.
                                   '|' + fieldbyname('Cod_Part_IP').AsString +                              // 02 - Código do participante (Instituição que efetuou o pagamento).
                                   '|' +                                                                    // 03 - Código do participante (Identificação do intermediador da transação).
                                   '|' + formatFloat('##0.00', fieldbyname('Valor_VS').Ascurrency) +        // 04 - Valor total bruto das vendas e/ou prestações de serviços .
                                   '|' + formatFloat('##0.00', fieldbyname('Valor_ISS').Ascurrency) +       // 05 - Valor total bruto das prestações de serviços.
                                   '|' + formatFloat('##0.00', fieldbyname('Valor_Outros').Ascurrency) +    // 06 - Valor total de operações deduzido dos valores dos campos TOT_VS e TOT_ISS.
                                   '|';
                      next;
                      Say( mLinha, 000, Arquivo, mRegistro );
                      Inc(mQtdeReg1601);
                      Inc(mQtdeBloco1);
                end;
             end;
        end;
//     end;
end;

{REGISTRO 1900: INDICADOR DE SUB-APURAÇÃO DO ICMS}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1900;
begin
     With Dados, dmFiscal do begin
          tBeneficios.SQL.Clear;
          tBeneficios.SQL.Add('Select Nome');
          tBeneficios.SQL.Add('      ,Codigo_Beneficio');
          tBeneficios.SQL.Add('into #temp');
          tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
          tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFE, '''') <> '''' ');
          tBeneficios.SQL.Add('and  (select count(*) from NotasFiscais NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes and Saida_Entrada = 0) > 0');
          tBeneficios.SQL.Add('union all');
          tBeneficios.SQL.Add('Select Nome');
          tBeneficios.SQL.Add('      ,Codigo_Beneficio');
          tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
          tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFS, '''') <> '''' ');
          tBeneficios.SQL.Add('and  (select count(*) from NotasFiscais NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes and Saida_Entrada = 1) > 0');
          tBeneficios.SQL.Add('union all');
          tBeneficios.SQL.Add('Select Nome');
          tBeneficios.SQL.Add('      ,Codigo_Beneficio');
          tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
          tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFE, '''') <> '''' ');
          tBeneficios.SQL.Add('and  (select count(*) from NotasTerceiros NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Entrada) = :pAno and month(Data_Entrada) = :pMes and Tipo = ''NF'') > 0');
          tBeneficios.SQL.Add('union all');
          tBeneficios.SQL.Add('Select Nome ');
          tBeneficios.SQL.Add('      ,Codigo_Beneficio');
          tBeneficios.SQL.Add('from Cybersoft_Cadastros.dbo.IncentivosFiscais IFS');
          tBeneficios.SQL.Add('where isnull(Codigo_AjusteNFE, '''') <> '''' ');
          tBeneficios.SQL.Add('and  (select count(*) from NotasTerceiros NF where NF.Incentivo_Fiscal = IFS.Nome and year(Data_Entrada) = :pAno and month(Data_Entrada) = :pMes and Tipo = ''CTR'') > 0');
          tBeneficios.SQL.Add('select distinct * from #temp order by Codigo_Beneficio');
          tBeneficios.SQL.Add('drop table #temp');
          tBeneficios.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tBeneficios.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
          //tBeneficios.SQL.SaveToFile('c:\temp\SPED_FISCAL_0460.sql');
          tBeneficios.Open;
          tBeneficios.First;

          if tBeneficios.RecordCount > 0 then begin
             while not tBeneficios.eof do begin
                   Inc(mLinha);
                   mRegistro := '|1900' +                                                            // 01 - REG.
                                '|'+ tBeneficios.fieldbyname('Codigo_Beneficio').asstring+           // 02 - Indicador de outra apuração do ICMS.
                                '|APURAÇÃO '+ uppercase(tBeneficios.fieldbyname('Nome').asstring)+   // 03 - Descrição complementar de Outra Apuração do ICMS.
                               '|';

                   Say( mLinha, 000, Arquivo, mRegistro );
                   Inc(mQtdeReg1900);
                   Inc(mQtdeBloco1);

                   tBeneficios.next;
             end;

             Registro1910;
             Registro1920;
             Registro1926;
          end;
     end;
end;

{REGISTRO 1910: PERÍODO DA SUB-APURAÇÃO DO ICMS}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1910;
begin
     Inc(mQtdeReg1910);
     Inc(mQtdeBloco1);
     Inc(mLinha);
     mRegistro  := '|1910' +                       // 01 - REG.
                   '|'+ mDataIni +                 // 02 - Data inicial da SUB-ação.
                   '|'+ mDataFim +                 // 03 - Data final da SUB-ação.
                   '|';

     Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO 1920: SUB-APURAÇÃO DO ICMS}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1920;
var
   mSaldo: real;
begin
      with tAjustes do begin
           sql.clear;
           sql.add('select Credito_ICMS = isnull((select sum(Valor_ICMS) from NotasFiscais where Incentivo_Fiscal = ''FUNDAP'' and Cancelada <> 1 and NFe_Denegada <> 1 and Valor_ICMS > 0');
           sql.Add('                              and Saida_Entrada = 0 and Year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes), 0) +');
           sql.add('                      isnull((select sum(Valor_ICMSOper) from NotasTerceiros where Incentivo_Fiscal = ''FUNDAP'' and Valor_ICMSOper > 0 and Year(Data_Entrada) = :pAno and month(Data_Entrada) = :pMes), 0)');
           sql.add('	    ,Debito_ICMS  = isnull((select sum(Valor_ICMS) from NotasFiscais   where Incentivo_Fiscal = ''FUNDAP'' and Cancelada <> 1 and NFe_Denegada <> 1 and Valor_ICMS     > 0');
           sql.Add('                              and Saida_Entrada = 1 and Year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes), 0)');
           ParamByName('pAno').AsInteger := cAno.AsInteger;
           ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
           //sql.savetofile('c:\temp\REGISTRO1920.sql');
           Open;
           mSaldo := tAjustes.FieldByName('Debito_ICMS').ascurrency - tAjustes.FieldByName('Credito_ICMS').AsCurrency;
         end;

         Inc(mLinha);
         mRegistro := '|1920' +                                                                   // 01 - REG.
                      '|' + FormatFloat('#0.00', tAjustes.FieldByName('Debito_ICMS').Value) +     // 02 - Valor total dos débitos por “Saídas e prestações com débito do imposto”.
                      '|0'+                                                                       // 03 - Valor total de “Ajustes a débito”.
                      '|0'+                                                                       // 04 - Valor total de Ajustes “Estornos de créditos”.
                      '|' + FormatFloat('#0.00', tAjustes.FieldByName('Credito_ICMS').Value) +    // 05 - Valor total dos créditos por “Entradas e aquisições com crédito do imposto”.
                      '|0'+                                                                       // 06 - Valor total de “Ajustes a crédito”.
                      '|0'+                                                                       // 07 - Valor total de Ajustes “Estornos de Débitos”.
                      '|0'+                                                                       // 08 - Valor total de “Saldo credor do período anterior”.
                      '|' + FormatFloat('#0.00', mSaldo) +                                        // 09 - Valor do saldo devedor apurado.
                      '|0'+                                                                       // 10 - Valor total de “Deduções”.
                      '|' + FormatFloat('#0.00', mSaldo) +                                        // 11 - Valor total de "ICMS a recolher (09-10).
                      '|0'+                                                                       // 12 - Valor total de “Saldo credor a transportar para o período seguinte”.
                      '|0'+                                                                       // 13 - Valores recolhidos ou a recolher, extraapuração.
                      '|';
      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg1920);
      Inc(mQtdeBloco1);
end;

{REGISTRO 1926: SUB-APURAÇÃO DO ICMS}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1926;
var
   mSaldo: real;
   mMes  : integer;
   mData : string;
begin
     mMes  := cMes.ItemIndex+1;
     mData := FormatFloat('00', Dados.Configuracao.FieldByName('Vencimento_ICMSFUNDAP').asinteger) + FormatFloat('00', iif(mMes < 12, mMes+ 1, 1)) + inttostr(iif(mMes = 12, cAno.asinteger+ 1, cAno.asinteger));

     with tAjustes do begin
          sql.clear;
          sql.add('select Codigo = (select Codigo_Recolher from Cybersoft_Cadastros.dbo.IncentivosFiscais where Nome = (select Incentivo_Fiscal from NotasFiscais where Numero = Nota and Data_Emissao = Data))');
          sql.add('      ,Credito_ICMS = case when Saida_Entrada = 0 then Valor_ICMSOper else 0 end');
          sql.add('      ,Debito_ICMS  = case when Saida_Entrada = 1 then Valor_ICMSOper else 0 end');
          sql.add('      ,Aliquota_ICMSOper');
          sql.add('      ,Codigo_Receita = case when Aliquota_ICMSOper > 4 then');
          sql.add('                            (select Codigo_Receita2 from Cybersoft_Cadastros.dbo.IncentivosFiscais where Nome = (select Incentivo_Fiscal from NotasFiscais where Numero = Nota and Data_Emissao = Data))');
          sql.add('                        else');
          sql.add('                            (select Codigo_Receita  from Cybersoft_Cadastros.dbo.IncentivosFiscais where Nome = (select Incentivo_Fiscal from NotasFiscais where Numero = Nota and Data_Emissao = Data))');
          sql.add('                        end');
          sql.add('into #temp');
          sql.add('from   NotasItens');
          sql.add('where  (select Incentivo_Fiscal from NotasFiscais where Numero = Nota and Data_Emissao = Data) = ''FUNDAP'' ');
          sql.add('  and  Valor_ICMSOper > 0');
          sql.add('  and  Saida_Entrada  = 1');
          sql.add('  and  year(Data)     = :pAno');
          sql.add('  and  month(Data)    = :pMes');
          sql.add('  and  Cancelada     <> 1');
          sql.add('  and  Nfe_Denegada  <> 1');
          sql.add('select Codigo');
          sql.add('      ,Debito_ICMS  = sum(Debito_ICMS)');
          sql.add('      ,Credito_ICMS = sum(Credito_ICMS)');
          sql.add('      ,Saldo        = sum(Debito_ICMS) - sum(Credito_ICMS)');
          sql.add('      ,Codigo_Receita');
          sql.add('from #temp');
          sql.add('group by Codigo, Aliquota_ICMSOper, Codigo_Receita');
          sql.add('drop table #temp');
          ParamByName('pAno').AsInteger := cAno.AsInteger;
          ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
          //sql.savetofile('c:\temp\REGISTRO1926.sql');
          Open;
          mSaldo := tAjustes.FieldByName('Debito_ICMS').ascurrency - tAjustes.FieldByName('Credito_ICMS').ascurrency;

          while not eof do begin
               Inc(mLinha);
               mRegistro  := '|1926' +                                                                // 01 Texto fixo contendo "1926".
                             '|' + FieldByName('Codigo').asstring +                                   // 02 Código da obrigação a recolher, conforme a Tabela 5.4
                             '|' + FormatFloat('#0.00', FieldByName('Saldo').Value) +                 // 03 Valor da obrigação a recolher
                             '|' + mData +                                                            // 04 Data de vencimento da obrigação.
                             '|' + FieldByName('Codigo_Receita').asstring +                           // 05 Código de receita referente à obrigação, próprio da unidade da federação, conforme legislação estadual.
                             '|' +                                                                    // 06 Número do processo ou auto de infração ao qual a obrigação está vinculada, se houver.
                             '|' +                                                                    // 07 Indicador da origem do processo:0- SEFAZ; 1- Justiça Federal; 2- Justiça Estadual; 9- Outros.
                             '|' +                                                                    // 08 Descrição resumida do processo que embasou o lançamento.
                             '|' +                                                                    // 09 Descrição complementar das obrigações a recolher.
                             '|' + formatfloat('00', mMes) + cAno.Text +                              // 10 Informe o mês de referência no formato “mmaaaa”.
                             '|';
               Say( mLinha, 000, Arquivo, mRegistro );

               Inc(mQtdeReg1926);
               Inc(mQtdeBloco1);
               next;
          end;
     end;
end;

{REGISTRO 1990: ENCERRAMENTO DO BLOCO 1}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro1990;
begin
       Inc(mQtdeReg1990);
       Inc(mQtdeBloco1);
       Inc(mLinha);
       mRegistro  := '|1990' +                            // 01 - REG.
                      '|'+ InttoStr(mQtdeBloco1)+'|';     // 02 - Quantidade de Linhas do BLOCO 1.

       Say( mLinha, 000, Arquivo, mRegistro );
end;

{REGISTRO 9001: ABERTURA DO BLOCO 9.}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro9001;
begin
      Inc(mLinha);
      mRegistro := '|9001';                   // 01 - REG.
      mRegistro := mRegistro + '|0|';         // 02 - Indicador de movimento (0-Com dados / 1-Sem dados).

      Say( mLinha, 000, Arquivo, mRegistro );

      Inc(mQtdeReg9001);
      Inc(mQtdeBloco9);
end;

{REGISTRO 9900: REGISTROS DO ARQUIVO.}
procedure TUtilitarios_ExportaSPED_Fiscal.Registro9900;
begin
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
      If mQtdeReg0002 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0002|'+Trim(InttoStr(mQtdeReg0002))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0005 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0005|'+Trim(InttoStr(mQtdeReg0005))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0015 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0015|'+Trim(InttoStr(mQtdeReg0015))+'|' );
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
      If mQtdeReg0150 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0150|'+Trim(InttoStr(mQtdeReg0150))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0175 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0175|'+Trim(InttoStr(mQtdeReg0175))+'|' );
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
      If mQtdeReg0300 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0300|'+Trim(InttoStr(mQtdeReg0300))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg0305 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0305|'+Trim(InttoStr(mQtdeReg0305))+'|' );
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
      If mQtdeReg0460 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0460|'+Trim(InttoStr(mQtdeReg0460))+'|' );
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
      If mQtdeReg0990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|0990|'+Trim(InttoStr(mQtdeReg0990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco B.
      If mQtdeRegB001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|B001|'+Trim(InttoStr(mQtdeRegB001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegB990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|B990|'+Trim(InttoStr(mQtdeRegB990))+'|' );
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
      If mQtdeRegC100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C100|'+Trim(InttoStr(mQtdeRegC100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC101 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C101|'+Trim(InttoStr(mQtdeRegC101))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC105 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C105|'+Trim(InttoStr(mQtdeRegC105))+'|' );
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
      If mQtdeRegC113 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C113|'+Trim(InttoStr(mQtdeRegC113))+'|' );
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
      If mQtdeRegC140 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C140|'+Trim(InttoStr(mQtdeRegC140))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC141 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C141|'+Trim(InttoStr(mQtdeRegC141))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC160 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C160|'+Trim(InttoStr(mQtdeRegC160))+'|' );
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
      If mQtdeRegC172 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C172|'+Trim(InttoStr(mQtdeRegC172))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC175 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C175|'+Trim(InttoStr(mQtdeRegC175))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC177 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C177|'+Trim(InttoStr(mQtdeRegC177))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC178 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C178|'+Trim(InttoStr(mQtdeRegC178))+'|' );
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
      If mQtdeRegC195 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C195|'+Trim(InttoStr(mQtdeRegC195))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC197 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C197|'+Trim(InttoStr(mQtdeRegC197))+'|' );
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
      If mQtdeRegC510 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C510|'+Trim(InttoStr(mQtdeRegC510))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegC590 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|C590|'+Trim(InttoStr(mQtdeRegC590))+'|' );
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
      If mQtdeRegD100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D100|'+Trim(InttoStr(mQtdeRegD100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D110|'+Trim(InttoStr(mQtdeRegD110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD190 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D190|'+Trim(InttoStr(mQtdeRegD190))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD195 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D195|'+Trim(InttoStr(mQtdeRegD195))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegD197 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D197|'+Trim(InttoStr(mQtdeRegD197))+'|' );
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
      If mQtdeRegD590 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|D590|'+Trim(InttoStr(mQtdeRegD590))+'|' );
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

      // Registros do Bloco E.
      If mQtdeRegE001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E001|'+Trim(InttoStr(mQtdeRegE001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E100|'+Trim(InttoStr(mQtdeRegE100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E110|'+Trim(InttoStr(mQtdeRegE110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE111 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E111|'+Trim(InttoStr(mQtdeRegE111))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE116 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E116|'+Trim(InttoStr(mQtdeRegE116))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E200|'+Trim(InttoStr(mQtdeRegE200))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE210 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E210|'+Trim(InttoStr(mQtdeRegE210))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE250 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E250|'+Trim(InttoStr(mQtdeRegE250))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE300 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E300|'+Trim(InttoStr(mQtdeRegE300))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE310 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E310|'+Trim(InttoStr(mQtdeRegE310))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE316 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E316|'+Trim(InttoStr(mQtdeRegE316))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE500 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E500|'+Trim(InttoStr(mQtdeRegE500))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE510 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E510|'+Trim(InttoStr(mQtdeRegE510))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE520 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E520|'+Trim(InttoStr(mQtdeRegE520))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE530 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E530|'+Trim(InttoStr(mQtdeRegE530))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegE990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|E990|'+Trim(InttoStr(mQtdeRegE990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco G.
      If mQtdeRegG001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G001|'+Trim(InttoStr(mQtdeRegG001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegG110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G110|'+Trim(InttoStr(mQtdeRegG110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegG125 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G125|'+Trim(InttoStr(mQtdeRegG125))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegG126 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G126|'+Trim(InttoStr(mQtdeRegG126))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegG130 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G130|'+Trim(InttoStr(mQtdeRegG130))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegG140 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G140|'+Trim(InttoStr(mQtdeRegG140))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegG990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|G990|'+Trim(InttoStr(mQtdeRegG990))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;

      // Registros do Bloco H.
      If mQtdeRegH001 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|H001|'+Trim(InttoStr(mQtdeRegH001))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegH005 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|H005|'+Trim(InttoStr(mQtdeRegH005))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegH010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|H010|'+Trim(InttoStr(mQtdeRegH010))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeRegH990 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|H990|'+Trim(InttoStr(mQtdeRegH990))+'|' );
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
      If mQtdeRegK010 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K010|'+Trim(InttoStr(mQtdeRegK010))+'|' );
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
      If mQtdeRegK200 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|K200|'+Trim(InttoStr(mQtdeRegK200))+'|' );
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
      If mQtdeReg1100 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1100|'+Trim(InttoStr(mQtdeReg1100))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1105 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1105|'+Trim(InttoStr(mQtdeReg1105))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1110 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1110|'+Trim(InttoStr(mQtdeReg1110))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1400 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1400|'+Trim(InttoStr(mQtdeReg1400))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1601 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1601|'+Trim(InttoStr(mQtdeReg1601))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1900 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1900|'+Trim(InttoStr(mQtdeReg1900))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1910 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1910|'+Trim(InttoStr(mQtdeReg1910))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1920 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1920|'+Trim(InttoStr(mQtdeReg1920))+'|' );
         Inc(mLinha);
         Inc(mQtdeReg9900);
         Inc(mQtdeBloco9);
      End;
      If mQtdeReg1926 > 0 then begin
         Say( mLinha, 000, Arquivo, '|9900|1926|'+Trim(InttoStr(mQtdeReg1926))+'|' );
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

      Say( mLinha, 000, Arquivo, '|9999|'+Trim(InttoStr(mQtdeBloco0+mQtdeBloco1+mQtdeBlocoB+mQtdeBlocoC+mQtdeBlocoD+mQtdeBlocoE+mQtdeBlocoG+mQtdeBlocoH+mQtdeBlocoK+mQtdeBloco9))+'|'+#13+#10 );
      Inc(mLinha);
end;

procedure TUtilitarios_ExportaSPED_Fiscal.Progresso1(Registro: String; RegTotal: Integer);
begin
      Janela_ProcessamentoSPED.Progresso.Position  := Janela_ProcessamentoSPED.Progresso.Position + 1;
      Janela_ProcessamentoSPED.lProcesso.Caption   := Registro;
      Janela_ProcessamentoSPED.Progresso2.Position := 0;
      Janela_ProcessamentoSPED.Progresso2.Max      := RegTotal;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.Progresso2(Registro: String);
begin
      Janela_ProcessamentoSPED.lRegistro.Caption   := Registro;
      Janela_ProcessamentoSPED.Progresso2.Position := Janela_ProcessamentoSPED.Progresso2.Position + 1;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.Progresso3(Registro: String; RegTotal: Integer);
begin
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro2.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso3.Position := 0;
         Janela_ProcessamentoSPED.Progresso3.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso3.Position := Janela_ProcessamentoSPED.Progresso3.Position + 1;
      End;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.Progresso4(Registro: String; RegTotal: Integer);
begin
      If RegTotal > 0 then begin
         Janela_ProcessamentoSPED.lRegistro3.Caption  := Registro;
         Janela_ProcessamentoSPED.Progresso4.Position := 0;
         Janela_ProcessamentoSPED.Progresso4.Max      := RegTotal;
      end else begin
         Janela_ProcessamentoSPED.Progresso4.Position := Janela_ProcessamentoSPED.Progresso4.Position + 1;
      End;
      Application.ProcessMessages;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.InventarioAntigo;
begin
       Screen.Cursor := crSQLWait;

       With dmFiscal, Dados do begin
            If cInventario.ItemIndex <> 3 then begin
               Empresas.SQL.Clear;
               Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
               Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               Empresas.Open;

               // EMPRESAS IMPORTADORAS.
               Inventario.SQL.Clear;

               If EmpresasDistribuidora.AsBoolean = false then begin
                  // Apurando o saldo do inventario - Mercadoria Própria
                  Inventario.SQL.Add('SELECT Codigo,');
                  Inventario.SQL.Add('       Codigo_Fabricante,');
                  Inventario.SQL.Add('       NCM,');
                  Inventario.SQL.Add('       Descricao,');
                  Inventario.SQL.Add('       Unidade,');
                  Inventario.SQL.Add('       ROUND((');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)), 0) +');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)+');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData)), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pDataSaida)), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pDataSaida) AND (Inventario = 1)), 0)');
                  Inventario.SQL.Add('       ), 3) AS Quantidade,');

                  If mDataInventF < StrtoDate('01/01/2014') then begin
                     Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa,0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                     Inventario.SQL.Add('                        AND (Movimenta_Inventario=1) AND (Data<=:pData)) /');
                     Inventario.SQL.Add('                        (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario=1) AND (Data<=:pData)), 4,0), 0) +');
                     Inventario.SQL.Add('                        (ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) AND (Data_Entrada <= :pData)');
                     Inventario.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4,0), 0)/');
                     Inventario.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Quantidade,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) AND (Data_Entrada <= :pData)');
                     Inventario.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4, 0), 1) ),');
                  end else begin
                     Inventario.SQL.Add('       Valor_Unitario = ( ( SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Saida_Entrada=0 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1 AND Data<=:pData )');
                     Inventario.SQL.Add('                         + ( SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario = 1 AND Inventario_Terceiros = 0 AND Data_Entrada<=:pData ');
                     Inventario.SQL.Add('                             AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 2, 3, 5, 6) ) )');
                     Inventario.SQL.Add('                         /');
                     Inventario.SQL.Add('                         NULLIF(((SELECT ISNULL(SUM(Quantidade),0) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1 AND Data<=:pData )');
                     Inventario.SQL.Add('                         +(SELECT ISNULL(SUM(Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario = 1 AND Inventario_Terceiros = 0 AND Data_Entrada<=:pData');
                     Inventario.SQL.Add('                           AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 2, 3, 5, 6)) ), 0),');
                  End;

                  Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                  Inventario.SQL.Add('       ''P'' AS Inventario,');
                  Inventario.SQL.Add('       0 AS Participante,');
                  Inventario.SQL.Add('       '' '' AS Tipo,');
                  Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Inventario.SQL.Add('       '' '' AS IE,');
                  Inventario.SQL.Add('       '' '' AS Estado');
                  Inventario.SQL.Add('INTO #Temp');
                  Inventario.SQL.Add('FROM Produtos');
                  Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria Própria em poder de terceiros.
                  Inventario.SQL.Add('UNION ALL');
                  Inventario.SQL.Add('SELECT Codigo,');
                  Inventario.SQL.Add('       Codigo_Fabricante,');
                  Inventario.SQL.Add('       NCM,');
                  Inventario.SQL.Add('       Descricao,');
                  Inventario.SQL.Add('       Unidade,');
                  Inventario.SQL.Add('       ROUND((');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND (Data_Entrada <= :pDataSaida)), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pDataSaida)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0)');
                  Inventario.SQL.Add('       ), 3) AS Quantidade,');
                  Inventario.SQL.Add('      Valor_Unitario = ((SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Saida_Entrada=0 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1');
                  Inventario.SQL.Add('                         AND Data<= :pDataSaida AND Finalidade_Mercadoria = 4 )');
                  Inventario.SQL.Add('                      + (SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario = 1 AND Inventario_Terceiros = 1 AND Data_Entrada<= :pDataSaida');
                  Inventario.SQL.Add('                         AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) = 4 ) )');
                  Inventario.SQL.Add('                      / NULLIF(((SELECT ISNULL(SUM(Quantidade),0) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1');
                  Inventario.SQL.Add('                        AND Data<= :pDataSaida AND Finalidade_Mercadoria = 4)');
                  Inventario.SQL.Add('                      + (SELECT ISNULL(SUM(Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario = 1 AND Inventario_Terceiros = 1 AND Data_Entrada<= :pDataSaida');
                  Inventario.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) = 4) ), 0),');
                  Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                  Inventario.SQL.Add('       ''T'' AS Inventario,');
                  Inventario.SQL.Add('       0 AS Participante,');
                  Inventario.SQL.Add('       '' '' AS Tipo,');
                  Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Inventario.SQL.Add('       '' '' AS IE,');
                  Inventario.SQL.Add('       '' '' AS Estado');
                  Inventario.SQL.Add('FROM   Produtos');
                  Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria de terceiros em poder da empresa.
                  Inventario.SQL.Add('UNION ALL');
                  Inventario.SQL.Add('SELECT Codigo,');
                  Inventario.SQL.Add('       Codigo_Fabricante,');
                  Inventario.SQL.Add('       NCM,');
                  Inventario.SQL.Add('       Descricao,');
                  Inventario.SQL.Add('       Unidade,');
                  Inventario.SQL.Add('       ROUND((');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data <= :pDataSaida)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                  Inventario.SQL.Add('       ), 3) AS Quantidade,');

                  If mDataInventF < StrtoDate('01/01/2014') then begin
                     Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa, 0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario=1)');
                     Inventario.SQL.Add('                        AND (Data<=:pData)) / (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data<=:pData)), 4,0), 0) +');
                     Inventario.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 0)');
                     Inventario.SQL.Add('                        AND (Data_Entrada <= :pData) AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4, 0), 0),');
                  end else begin
                     Inventario.SQL.Add('       Valor_Unitario = ((SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Movimenta_Inventario=1 AND Saida_Entrada=0 AND Cancelada<>1');
                     Inventario.SQL.Add('                         AND ISNULL(Nfe_Denegada, 0)=0 AND Movimenta_Inventario=1 AND Data<=:pData))');
                     Inventario.SQL.Add('                          +(SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario=1 AND Inventario_Terceiros = 0 AND Data_Entrada<=:pData');
                     Inventario.SQL.Add('                          AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 2, 3, 5, 6))');
                     Inventario.SQL.Add('                      / (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Movimenta_Inventario=1 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Data<=:pData),');
                  End;

                  Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                  Inventario.SQL.Add('       ''Z'' AS Inventario,');
                  Inventario.SQL.Add('       0 AS Participante,');
                  Inventario.SQL.Add('       '' '' AS Tipo,');
                  Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Inventario.SQL.Add('       '' '' AS IE,');
                  Inventario.SQL.Add('       '' '' AS Estado');
                  Inventario.SQL.Add('FROM   Produtos');
                  Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');
                  Inventario.ParamByName('pDataSaida').AsDateTime := mDataInventF;
               End;

               // EMPRESAS DISTRIBUIDORAS
               If EmpresasDistribuidora.AsBoolean = true then begin
                  // Apurando o saldo do inventario - Mercadoria Própria
                  Inventario.SQL.Add('SELECT Codigo,');
                  Inventario.SQL.Add('       Codigo_Fabricante,');
                  Inventario.SQL.Add('       NCM,');
                  Inventario.SQL.Add('       Descricao,');
                  Inventario.SQL.Add('       Unidade,');
                  Inventario.SQL.Add('       ROUND((');
                  Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)), 0) +');
                  Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)+');
                  Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1)');
                  Inventario.SQL.Add('                        AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) <> 5) AND (Data_Entrada <= :pData)), 0) -');
                  Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1)');
                  Inventario.SQL.Add('                        AND (Finalidade_Mercadoria <> 5) AND (Data <= :pData)), 0) -');
                  Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)');
                  Inventario.SQL.Add('       ), 3) AS Quantidade,');
                  Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData))/');
                  Inventario.SQL.Add('       (SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData)), 4, 0) AS Valor_Unitario,');
                  Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                  Inventario.SQL.Add('       ''P'' AS Inventario,');
                  Inventario.SQL.Add('       0 AS Participante,');
                  Inventario.SQL.Add('       '' '' AS Tipo,');
                  Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Inventario.SQL.Add('       '' '' AS IE,');
                  Inventario.SQL.Add('       '' '' AS Estado');
                  Inventario.SQL.Add('INTO #Temp');
                  Inventario.SQL.Add('FROM Produtos');
                  Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria Própria em poder de terceiros.
                  Inventario.SQL.Add('UNION ALL');
                  Inventario.SQL.Add('SELECT Codigo,');
                  Inventario.SQL.Add('       Codigo_Fabricante,');
                  Inventario.SQL.Add('       NCM,');
                  Inventario.SQL.Add('       Descricao,');
                  Inventario.SQL.Add('       Unidade,');
                  Inventario.SQL.Add('       ROUND((');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND (Data_Entrada <= :pData)), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0)');
                  Inventario.SQL.Add('       ), 3) AS Quantidade,');
                  Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('              AND Finalidade_Mercadoria = 4)');
                  Inventario.SQL.Add('            /(SELECT SUM(Quantidade)  FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('            AND Finalidade_Mercadoria = 4), 4, 0)');
                  Inventario.SQL.Add('       AS Valor_Unitario,');
                  Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                  Inventario.SQL.Add('       ''T'' AS Inventario,');
                  Inventario.SQL.Add('       0 AS Participante,');
                  Inventario.SQL.Add('       '' '' AS Tipo,');
                  Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Inventario.SQL.Add('       '' '' AS IE,');
                  Inventario.SQL.Add('       '' '' AS Estado');
                  Inventario.SQL.Add('FROM   Produtos');
                  Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria de terceiros em poder da empresa.
                  Inventario.SQL.Add('UNION ALL');
                  Inventario.SQL.Add('SELECT Codigo,');
                  Inventario.SQL.Add('       Codigo_Fabricante,');
                  Inventario.SQL.Add('       NCM,');
                  Inventario.SQL.Add('       Descricao,');
                  Inventario.SQL.Add('       Unidade,');
                  Inventario.SQL.Add('       ROUND((');
                  Inventario.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5)');
                  Inventario.SQL.Add('               AND (Data_Entrada <= :pData)), 0) +');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                  Inventario.SQL.Add('       ), 3) AS Quantidade,');
                  Inventario.SQL.Add('       (');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5)');
                  Inventario.SQL.Add('                AND (Data_Entrada <= :pData)), 0) +');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Inventario.SQL.Add('               AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('               AND Finalidade_Mercadoria = 5), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Inventario.SQL.Add('                AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('        AND Finalidade_Mercadoria = 5), 0)');
                  Inventario.SQL.Add('       ) / ');
                  Inventario.SQL.Add('       NULLIF(');
                  Inventario.SQL.Add('       (');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5)');
                  Inventario.SQL.Add('                AND (Data_Entrada <= :pData)), 0) +');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Inventario.SQL.Add('                AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                  Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Inventario.SQL.Add('                AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                  Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                  Inventario.SQL.Add('       ), 0) AS Valor_Unitario,');
                  Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                  Inventario.SQL.Add('       ''Z'' AS Inventario,');
                  Inventario.SQL.Add('       0 AS Participante,');
                  Inventario.SQL.Add('       '' '' AS Tipo,');
                  Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Inventario.SQL.Add('       '' '' AS IE,');
                  Inventario.SQL.Add('       '' '' AS Estado');
                  Inventario.SQL.Add('FROM   Produtos');
                  Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');
               End;

               Inventario.SQL.Add('UPDATE #Temp SET Valor_Total = Valor_Unitario * Quantidade WHERE Quantidade <> 0');
               Inventario.SQL.Add('TRUNCATE TABLE Inventario');
               Inventario.SQL.Add('INSERT INTO Inventario SELECT * FROM #Temp WHERE Quantidade <> 0');
               Inventario.SQL.Add('SELECT * FROM Inventario');
               Inventario.SQL.Add('DROP TABLE #TEMP');
               Inventario.ParamByName('pData').AsDateTime      := mDataInventF;
               //If EmpresasDistribuidora.AsBoolean = true  then Inventario.SQL.SaveToFile('c:\temp\SPED_Inventario_Distribuidor.sql');
               //If EmpresasDistribuidora.AsBoolean = false then Inventario.SQL.SaveToFile('c:\temp\SPED_Inventario_Importadora.sql');
               Inventario.Open;

               tTotalInventario.SQL.Clear;
               tTotalInventario.SQL.Add('SELECT SUM(Valor_Total) AS Total FROM Inventario');
               tTotalinventario.Open;

               mTotalInvent := tTotalInventario.FieldByName('Total').AsCurrency;

           end else begin
              Inventario.SQL.Clear;
              Inventario.SQL.Add('TRUNCATE TABLE Inventario');
              Inventario.Execute;
              Inventario.SQL.Clear;
              Inventario.SQL.Add('SELECT * FROM Inventario');
              Inventario.Open;
          End;
       End;

       Screen.Cursor := crDefault;
end;

procedure TUtilitarios_ExportaSPED_Fiscal.EstoqueAntigo;
begin
       Screen.Cursor := crSQLWait;

       With dmFiscal, Dados do begin
            If cEstoque.ItemIndex <> 3 then begin
               Empresas.SQL.Clear;
               Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
               Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               Empresas.Open;

               // EMPRESAS IMPORTADORAS.
               Estoque.SQL.Clear;

               If EmpresasDistribuidora.AsBoolean = false then begin
                  // Apurando o saldo do Estoque - Mercadoria Própria
                  Estoque.SQL.Add('SELECT Codigo,');
                  Estoque.SQL.Add('       Codigo_Fabricante,');
                  Estoque.SQL.Add('       NCM,');
                  Estoque.SQL.Add('       Descricao,');
                  Estoque.SQL.Add('       Unidade,');
                  Estoque.SQL.Add('       ROUND((');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)), 0) +');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Estoque = 1)), 0)+');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1) AND (Data_Entrada <= :pData)), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pDataSaida)), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pDataSaida) AND (Estoque = 1)), 0)');
                  Estoque.SQL.Add('       ), 3) AS Quantidade,');

                  If mDataEstoqueF < StrtoDate('01/01/2014') then begin
                     Estoque.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa,0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                     Estoque.SQL.Add('                        AND (Movimenta_Estoque=1) AND (Data<=:pData)) /');
                     Estoque.SQL.Add('                        (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque=1) AND (Data<=:pData)), 4,0), 0) +');
                     Estoque.SQL.Add('                        (ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1) AND (Estoque_Terceiros = 0) AND (Data_Entrada <= :pData)');
                     Estoque.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4,0), 0)/');
                     Estoque.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Quantidade,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1) AND (Estoque_Terceiros = 0) AND (Data_Entrada <= :pData)');
                     Estoque.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4, 0), 1) ),');
                  end else begin
                     Estoque.SQL.Add('       Valor_Unitario = ( ( SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Saida_Entrada=0 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Estoque=1 AND Data<=:pData )');
                     Estoque.SQL.Add('                         + ( SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Estoque = 1 AND Estoque_Terceiros = 0 AND Data_Entrada<=:pData ');
                     Estoque.SQL.Add('                             AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 2, 3, 5, 6) ) )');
                     Estoque.SQL.Add('                         /');
                     Estoque.SQL.Add('                         NULLIF(((SELECT ISNULL(SUM(Quantidade),0) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Estoque=1 AND Data<=:pData )');
                     Estoque.SQL.Add('                         +(SELECT ISNULL(SUM(Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Estoque = 1 AND Estoque_Terceiros = 0 AND Data_Entrada<=:pData');
                     Estoque.SQL.Add('                           AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 2, 3, 5, 6)) ), 0),');
                  End;

                  Estoque.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Estoque.SQL.Add('       NULL  AS Tipo_Item,');
                  Estoque.SQL.Add('       ''P'' AS Estoque,');
                  Estoque.SQL.Add('       0 AS Participante,');
                  Estoque.SQL.Add('       '' '' AS Tipo,');
                  Estoque.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Estoque.SQL.Add('       '' '' AS IE,');
                  Estoque.SQL.Add('       '' '' AS Estado');
                  Estoque.SQL.Add('INTO #Temp');
                  Estoque.SQL.Add('FROM Produtos');
                  Estoque.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria Própria em poder de terceiros.
                  Estoque.SQL.Add('UNION ALL');
                  Estoque.SQL.Add('SELECT Codigo,');
                  Estoque.SQL.Add('       Codigo_Fabricante,');
                  Estoque.SQL.Add('       NCM,');
                  Estoque.SQL.Add('       Descricao,');
                  Estoque.SQL.Add('       Unidade,');
                  Estoque.SQL.Add('       ROUND((');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 4), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Estoque_Terceiros = 1) AND (Data_Entrada <= :pDataSaida)), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pDataSaida)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 4), 0)');
                  Estoque.SQL.Add('       ), 3) AS Quantidade,');
                  Estoque.SQL.Add('      Valor_Unitario = ((SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Saida_Entrada=0 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Estoque=1');
                  Estoque.SQL.Add('                         AND Data<= :pDataSaida AND Finalidade_Mercadoria = 4 )');
                  Estoque.SQL.Add('                      + (SELECT ISNULL(SUM(Valor_Inventario*Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Estoque = 1 AND Estoque_Terceiros = 1 AND Data_Entrada<= :pDataSaida');
                  Estoque.SQL.Add('                         AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) = 4 ) )');
                  Estoque.SQL.Add('                      / NULLIF(((SELECT ISNULL(SUM(Quantidade),0) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Estoque=1');
                  Estoque.SQL.Add('                        AND Data<= :pDataSaida AND Finalidade_Mercadoria = 4)');
                  Estoque.SQL.Add('                      + (SELECT ISNULL(SUM(Quantidade),0) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Estoque = 1 AND Estoque_Terceiros = 1 AND Data_Entrada<= :pDataSaida');
                  Estoque.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) = 4) ), 0),');
                  Estoque.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Estoque.SQL.Add('       NULL  AS Tipo_Item,');
                  Estoque.SQL.Add('       ''T'' AS Estoque,');
                  Estoque.SQL.Add('       0 AS Participante,');
                  Estoque.SQL.Add('       '' '' AS Tipo,');
                  Estoque.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Estoque.SQL.Add('       '' '' AS IE,');
                  Estoque.SQL.Add('       '' '' AS Estado');
                  Estoque.SQL.Add('FROM   Produtos');
                  Estoque.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria de terceiros em poder da empresa.
                  Estoque.SQL.Add('UNION ALL');
                  Estoque.SQL.Add('SELECT Codigo,');
                  Estoque.SQL.Add('       Codigo_Fabricante,');
                  Estoque.SQL.Add('       NCM,');
                  Estoque.SQL.Add('       Descricao,');
                  Estoque.SQL.Add('       Unidade,');
                  Estoque.SQL.Add('       ROUND((');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data <= :pDataSaida)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                  Estoque.SQL.Add('       ), 3) AS Quantidade,');

                  If mDataEstoqueF < StrtoDate('01/01/2014') then begin
                     Estoque.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa, 0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque=1)');
                     Estoque.SQL.Add('                        AND (Data<=:pData)) / (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data<=:pData)), 4,0), 0) +');
                     Estoque.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Estoque_Terceiros = 0)');
                     Estoque.SQL.Add('                        AND (Data_Entrada <= :pData) AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4, 0), 0),');
                  end else begin
                     Estoque.SQL.Add('       Valor_Unitario = ((SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Movimenta_Estoque=1 AND Saida_Entrada=0 AND Cancelada<>1');
                     Estoque.SQL.Add('                         AND ISNULL(Nfe_Denegada, 0)=0 AND Movimenta_Estoque=1 AND Data<=:pData))');
                     Estoque.SQL.Add('                          +(SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Estoque=1 AND Estoque_Terceiros = 0 AND Data_Entrada<=:pData');
                     Estoque.SQL.Add('                          AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 2, 3, 5, 6))');
                     Estoque.SQL.Add('                      / (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Movimenta_Estoque=1 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Data<=:pData),');
                  End;

                  Estoque.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Estoque.SQL.Add('       NULL  AS Tipo_Item,');
                  Estoque.SQL.Add('       ''Z'' AS Estoque,');
                  Estoque.SQL.Add('       0 AS Participante,');
                  Estoque.SQL.Add('       '' '' AS Tipo,');
                  Estoque.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Estoque.SQL.Add('       '' '' AS IE,');
                  Estoque.SQL.Add('       '' '' AS Estado');
                  Estoque.SQL.Add('FROM   Produtos');
                  Estoque.SQL.Add('WHERE (Codigo IS NOT NULL)');
                  Estoque.ParamByName('pDataSaida').AsDateTime := mDataEstoqueF;
               End;

               // EMPRESAS DISTRIBUIDORAS
               If EmpresasDistribuidora.AsBoolean = true then begin
                  // Apurando o saldo do Estoque - Mercadoria Própria
                  Estoque.SQL.Add('SELECT Codigo,');
                  Estoque.SQL.Add('       Codigo_Fabricante,');
                  Estoque.SQL.Add('       NCM,');
                  Estoque.SQL.Add('       Descricao,');
                  Estoque.SQL.Add('       Unidade,');
                  Estoque.SQL.Add('       ROUND((');
                  Estoque.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)), 0) +');
                  Estoque.SQL.Add('         ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Estoque = 1)), 0)+');
                  Estoque.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1)');
                  Estoque.SQL.Add('                        AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) <> 5) AND (Data_Entrada <= :pData)), 0) -');
                  Estoque.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1)');
                  Estoque.SQL.Add('                        AND (Finalidade_Mercadoria <> 5) AND (Data <= :pData)), 0) -');
                  Estoque.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pData) AND (Estoque = 1)), 0)');
                  Estoque.SQL.Add('       ), 3) AS Quantidade,');
                  Estoque.SQL.Add('       ROUND((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Estoque = 1) AND (Data_Entrada <= :pData))/');
                  Estoque.SQL.Add('       (SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Estoque = 1) AND (Data_Entrada <= :pData)), 4, 0) AS Valor_Unitario,');
                  Estoque.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Estoque.SQL.Add('       NULL  AS Tipo_Item,');
                  Estoque.SQL.Add('       ''P'' AS Estoque,');
                  Estoque.SQL.Add('       0 AS Participante,');
                  Estoque.SQL.Add('       '' '' AS Tipo,');
                  Estoque.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Estoque.SQL.Add('       '' '' AS IE,');
                  Estoque.SQL.Add('       '' '' AS Estado');
                  Estoque.SQL.Add('INTO #Temp');
                  Estoque.SQL.Add('FROM Produtos');
                  Estoque.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria Própria em poder de terceiros.
                  Estoque.SQL.Add('UNION ALL');
                  Estoque.SQL.Add('SELECT Codigo,');
                  Estoque.SQL.Add('       Codigo_Fabricante,');
                  Estoque.SQL.Add('       NCM,');
                  Estoque.SQL.Add('       Descricao,');
                  Estoque.SQL.Add('       Unidade,');
                  Estoque.SQL.Add('       ROUND((');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 4), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Estoque_Terceiros = 1) AND (Data_Entrada <= :pData)), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 4), 0)');
                  Estoque.SQL.Add('       ), 3) AS Quantidade,');
                  Estoque.SQL.Add('       ROUND((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('              AND Finalidade_Mercadoria = 4)');
                  Estoque.SQL.Add('            /(SELECT SUM(Quantidade)  FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('            AND Finalidade_Mercadoria = 4), 4, 0)');
                  Estoque.SQL.Add('       AS Valor_Unitario,');
                  Estoque.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Estoque.SQL.Add('       NULL  AS Tipo_Item,');
                  Estoque.SQL.Add('       ''T'' AS Estoque,');
                  Estoque.SQL.Add('       0 AS Participante,');
                  Estoque.SQL.Add('       '' '' AS Tipo,');
                  Estoque.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Estoque.SQL.Add('       '' '' AS IE,');
                  Estoque.SQL.Add('       '' '' AS Estado');
                  Estoque.SQL.Add('FROM   Produtos');
                  Estoque.SQL.Add('WHERE (Codigo IS NOT NULL)');

                  // Mercadoria de terceiros em poder da empresa.
                  Estoque.SQL.Add('UNION ALL');
                  Estoque.SQL.Add('SELECT Codigo,');
                  Estoque.SQL.Add('       Codigo_Fabricante,');
                  Estoque.SQL.Add('       NCM,');
                  Estoque.SQL.Add('       Descricao,');
                  Estoque.SQL.Add('       Unidade,');
                  Estoque.SQL.Add('       ROUND((');
                  Estoque.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Estoque_Terceiros = 1) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5)');
                  Estoque.SQL.Add('               AND (Data_Entrada <= :pData)), 0) +');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                  Estoque.SQL.Add('       ), 3) AS Quantidade,');
                  Estoque.SQL.Add('       (');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Estoque_Terceiros = 1) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5)');
                  Estoque.SQL.Add('                AND (Data_Entrada <= :pData)), 0) +');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Estoque.SQL.Add('               AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('               AND Finalidade_Mercadoria = 5), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Estoque.SQL.Add('                AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('        AND Finalidade_Mercadoria = 5), 0)');
                  Estoque.SQL.Add('       ) / ');
                  Estoque.SQL.Add('       NULLIF(');
                  Estoque.SQL.Add('       (');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Estoque_Terceiros = 1) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5)');
                  Estoque.SQL.Add('                AND (Data_Entrada <= :pData)), 0) +');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Estoque.SQL.Add('                AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                  Estoque.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                  Estoque.SQL.Add('                AND (Movimenta_Estoque = 1) AND (Data <= :pData)');
                  Estoque.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                  Estoque.SQL.Add('       ), 0) AS Valor_Unitario,');
                  Estoque.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                  Estoque.SQL.Add('       NULL  AS Tipo_Item,');
                  Estoque.SQL.Add('       ''Z'' AS Estoque,');
                  Estoque.SQL.Add('       0 AS Participante,');
                  Estoque.SQL.Add('       '' '' AS Tipo,');
                  Estoque.SQL.Add('       ''00000000000000'' AS CNPJ,');
                  Estoque.SQL.Add('       '' '' AS IE,');
                  Estoque.SQL.Add('       '' '' AS Estado');
                  Estoque.SQL.Add('FROM   Produtos');
                  Estoque.SQL.Add('WHERE (Codigo IS NOT NULL)');
               End;

               Estoque.SQL.Add('UPDATE #Temp SET Valor_Total = Valor_Unitario * Quantidade WHERE Quantidade <> 0');
               Estoque.SQL.Add('TRUNCATE TABLE Estoque');
               Estoque.SQL.Add('INSERT INTO Estoque SELECT * FROM #Temp WHERE Quantidade <> 0');
               Estoque.SQL.Add('SELECT * FROM Estoque');
               Estoque.SQL.Add('DROP TABLE #TEMP');
               Estoque.ParamByName('pData').AsDateTime      := mDataEstoqueF;
               //If EmpresasDistribuidora.AsBoolean = true  then Estoque.SQL.SaveToFile('c:\temp\SPED_Estoque_Distribuidor.sql');
               //If EmpresasDistribuidora.AsBoolean = false then Estoque.SQL.SaveToFile('c:\temp\SPED_Estoque_Importadora.sql');
               Estoque.Open;

               tTotalEstoque.SQL.Clear;
               tTotalEstoque.SQL.Add('SELECT SUM(Valor_Total) AS Total FROM Estoque');
               tTotalEstoque.Open;

           end else begin
              Estoque.SQL.Clear;
              Estoque.SQL.Add('TRUNCATE TABLE Estoque');
              Estoque.Execute;
              Estoque.SQL.Clear;
              Estoque.SQL.Add('SELECT * FROM Estoque');
              Estoque.Open;
          End;
       End;

       Screen.Cursor := crDefault;
end;


end.



