Unit frmImpressao_FiscaisOP_Inventario_P7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Mask, RXSpin, Vcl.ExtCtrls, RXCtrls,
  Buttons, INIFiles, Funcoes, MaskUtils, DBCtrls, ppCtrls, ppPrnabl, ppClass, ppBands, ppReport, ppDBPipe,
  ppMemo, ppVar, ComObj, RxToolEdit, ppDesignLayer, ppDB, ppParameter, ppStrtch, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_FiscaisOP_Inventario_P7 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cData: TDateEdit;
    StaticText2: TStaticText;
    cImpressora: TRadioGroup;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    StaticText6: TStaticText;
    tNotasItens: TMSQuery;
    tNotasTerceirosItens: TMSQuery;
    StaticText3: TStaticText;
    cPaginaIni: TRxSpinEdit;
    rInventario: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    lTitulo: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    lFolha: TppLabel;
    lPeriodo: TppLabel;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppShape1: TppShape;
    pEmpresa: TppDBPipeline;
    ppDBText17: TppDBText;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    pInventario: TppDBPipeline;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    lDescricao: TppMemo;
    ppLine34: TppLine;
    ppLabel36: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine1: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine17: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine18: TppLine;
    ppDBText4: TppDBText;
    cInventario: TRadioGroup;
    tTotais: TMSQuery;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    lGrupo: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBCalc2: TppDBCalc;
    lTotalGrupo: TppDBCalc;
    lLabelTotalPro: TppLabel;
    lLabelTotalTer: TppLabel;
    lTotalProprio: TppVariable;
    lTotalTerceiros: TppVariable;
    ppShape2: TppShape;
    lInventario: TppLabel;
    cProduto: TRxDBLookupCombo;
    cCodigo: TMaskEdit;
    cExcel: TCheckBox;
    cNegativo: TCheckBox;
    cOrdem: TRadioGroup;
    lLabelTotalOut: TppLabel;
    lTotalOutros: TppVariable;
    tProcessos: TMSQuery;
    cDataSaida: TDateEdit;
    StaticText1: TStaticText;
    cPositivo: TCheckBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cIPI: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ModeloP7;
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rInventarioBeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cNegativoClick(Sender: TObject);
    procedure cPositivoClick(Sender: TObject);
    procedure cDataExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha    : Integer;
    mPagina   : Integer;
    Arquivo   : TextFile;
    mNomeArq  : String;
  end;

var
  Impressao_FiscaisOP_Inventario_P7: TImpressao_FiscaisOP_Inventario_P7;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento,frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_Inventario_P7.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cData.Date            := aINI.ReadDate   ('IMPRESSAO_Inventario','Data'      , Date);
      cDataSaida.Date       := aINI.ReadDate   ('IMPRESSAO_Inventario','DataSaida' , Date);
      cNCM.Text             := aINI.ReadString ('IMPRESSAO_Inventario','NCM'       , '');
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_Inventario','Impressora', 1);
      cInventario.ItemIndex := aINI.ReadInteger('IMPRESSAO_Inventario','Inventario', 0);
      cOrdem.ItemIndex      := aINI.ReadInteger('IMPRESSAO_Inventario','Ordem'     , 0);
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_Inventario','Excel'     , false);
      cNegativo.Checked     := aINI.ReadBool   ('IMPRESSAO_Inventario','Negativo'  , false);
      cPositivo.Checked     := aINI.ReadBool   ('IMPRESSAO_Inventario','Positivo'  , false);
      cCodigo.Text          := aINI.ReadString ('IMPRESSAO_Inventario','Codigo'    , '');
      aINI.Free;

      cImpressora.ItemIndex := 1;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ( 'IMPRESSAO_Inventario','Data'      , cData.Date);
      aINI.WriteDate   ( 'IMPRESSAO_Inventario','DataSaida' , cDataSaida.Date);
      aINI.WriteString ( 'IMPRESSAO_Inventario','NCM'       , cNCM.Text);
      aINI.WriteInteger( 'IMPRESSAO_Inventario','Impressora', 1);
      aINI.WriteInteger( 'IMPRESSAO_Inventario','Inventario', cInventario.ItemIndex);
      aINI.WriteInteger( 'IMPRESSAO_Inventario','Ordem'     , cOrdem.ItemIndex);
      aINI.WriteBool   ( 'IMPRESSAO_Inventario','Excel'     , cExcel.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_Inventario','Negativo'  , cNegativo.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_Inventario','Positivo'  , cPositivo.Checked);
      aINI.WriteString ( 'IMPRESSAO_Inventario','Codigo'    , cCodigo.Text);
      aINI.Free;

      Impressao_FiscaisOP_Inventario_P7.Release;
      Impressao_FiscaisOP_Inventario_P7 := nil;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.ModeloP7;
Var
    mDescricao : WideString;
    mLinhaMemo : Integer;
    mPos       : Integer;
    mQtdeLinha : Integer;
    mInteiro   : Real;
    mFracao    : Real;
    mTotalPro  : Currency;
    mTotalTer  : Currency;
    mTotalOut  : Currency;
    mTotalGeral: Currency;
    mGrupo     : String;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := dmFiscal.Inventario.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Preparando o livro de Inventario P7...';
      Janela_Processamento.Show;

      With Dados, dmFiscal do begin
           Configuracao.Open;
           mLinha      := 0;
           mPagina     := cPaginaIni.AsInteger;
           ColunaAtual := 0;
           LinhaAtual  := 0;
           mTotalPro   := 0;
           mTotalTer   := 0;
           mTotalOut   := 0;
           mTotalGeral := 0;
           mGrupo      := InventarioInventario.AsString;

           Inventario.First;

           While (not Inventario.Eof) and (Funcoes.Cancelado = False) do begin
                 // Cabeçalho do relatorio.
                 If mLinha = 0 then begin
                    mNomeArq    := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
                    mNomeArq := mNomeArq +'\Impressao';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq    := mNomeArq+'\LIVRO_InventarioP7_PG'+PoeZero(4, mPagina)+'.TXT';

                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    // Impressão do cabeçalho.
                    Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                    Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE INVENTARIO');
                    Say( mLinha+01, 160, Arquivo, '³' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA        : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 160, Arquivo, '³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSC.ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) );
                    Say( mLinha+04,  53, Arquivo, '                CNPJ : '+FormatMaskText('99.999.999/9999-99;0; ', EmpresasCNPJ.Value) );
                    Say( mLinha+04, 160, Arquivo, '³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA        : '+ PoeZero(3,mPagina) );
                    Say( mLinha+05,  53, Arquivo, 'ESTOQUE EXISTENTE EM : '+cData.Text );
                    Say( mLinha+05, 160, Arquivo, '³' );
                    Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+07,   0, Arquivo, '³ CLASSIFICACAO ³                                  DISCRIMINACAO                                   ³ UNIDADE ³   QUANTIDADE   ³             VALORES             ³');
                    Say( mLinha+08,   0, Arquivo, '³    FISCAL     ³                                                                                  ³         ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+09,   0, Arquivo, '³               ³                                                                                  ³         ³                ³    UNITARIO    ³      TOTAL     ³');
                    Say( mLinha+10,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Say( mLinha+11,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                    //If InventarioInventario.AsString = 'P' then begin
                    If mGrupo = 'P' then begin
                       Say( mLinha+12,   0, Arquivo, '³                                                                         MERCADORIA PROPRIA                                                                    ³')
                    End;
                    If mGrupo = 'T' then begin
                       Say( mLinha+12,   0, Arquivo, '³                                                                  MERCADORIA EM PODER DE TERCEIROS                                                             ³');
                    End;
                    If mGrupo = 'Z' then begin
                       Say( mLinha+12,   0, Arquivo, '³                                                             MERCADORIA DE TERCEIROS EM PODER DA EMPRESA                                                       ³');
                    End;
                    Say( mLinha+13,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,14);
                    Inc(mPagina);
                 End;

                 // Imprimindo linha de itens.
                 // Remove caracteres de controle como quebra de linha. . .
                 mDescricao := Trim(InventarioDescricao.AsString);
                 mDescricao := RemoveCaracter(#13, '', mDescricao);
                 mDescricao := RemoveCaracter(#12, '', mDescricao);
                 mDescricao := RemoveCaracter(#10, '', mDescricao);

                 // Remove o código do produto de importação do SISCOMEX.
                 mDescricao := RemoveCaracter('<{'+InventarioCodigo.AsString+'}>', '', mDescricao);
                 mInteiro   := Int(Length(mDescricao)/80);
                 mFracao    := Frac(Length(mDescricao)/80);
                 mQtdeLinha := 0;
                 If (mInteiro > 0) and (mFracao > 0) then mQtdeLinha := Round(mInteiro+1);
                 If Length(mDescricao) <= 80 then mQtdeLinha := 1;
                 If mQtdeLinha < 1 then mQtdeLinha := 1;

                 Say( mLinha,   0, Arquivo, '|  '+FormatMaskText('####.##.##;0', InventarioNCM.Value) );

                 mPos := 1;
                 For mLinhaMemo := 1 to mQtdeLinha do begin
                    If mLinhaMemo > 1 then Say( mLinha, 0, Arquivo, '|' );
                    Say( mLinha,  16, Arquivo, '| '+Copy(mDescricao,mPos,80) );
                    If mLinhaMemo < mQtdeLinha then begin
                       Say( mLinha,  99, Arquivo, '|' );
                       Say( mLinha, 109, Arquivo, '|' );
                       Say( mLinha, 126, Arquivo, '|' );
                       Say( mLinha, 143, Arquivo, '|' );
                       Say( mLinha, 160, Arquivo, '|' );
                       Inc(mLinha);
                    End;
                    Inc(mPos,80);
                 End;
                 Say( mLinha,  99, Arquivo, '|   '+InventarioUnidade.Value );
                 Say( mLinha, 109, Arquivo, '| ' + PadR(FormatFloat('##,###,##0.000', InventarioQuantidade.AsFloat),14) );
                 Say( mLinha, 126, Arquivo, '| ' + PadR(FormatFloat('##,###,##0.000', InventarioValor_Unitario.AsCurrency),14) );
                 Say( mLinha, 143, Arquivo, '| ' + PadR(FormatFloat('###,###,##0.00', InventarioValor_Total.AsCurrency),14) );
                 Say( mLinha, 160, Arquivo, '|' );
                 Inc(mLinha);

                 If InventarioInventario.AsString = 'P' then mTotalPro := mTotalPro + InventarioValor_Total.AsCurrency;
                 If InventarioInventario.AsString = 'T' then mTotalTer := mTotalTer + InventarioValor_Total.AsCurrency;
                 If InventarioInventario.AsString = 'Z' then mTotalOut := mTotalOut + InventarioValor_Total.AsCurrency;
                 mTotalGeral := mTotalGeral + InventarioValor_Total.AsCurrency;

                 Inventario.Next;

                 If (InventarioInventario.AsString <> mGrupo) or (Inventario.Eof) then begin
                    If mGrupo = 'P' then begin
                       Say( mLinha  ,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                       Say( mLinha+1,   0, Arquivo, '³                                                      TOTAL DE MERCADORIAS PROPRIAS                                                           ³');
                       Say( mLinha+1, 145, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalPro),14));
                    End;
                    If mGrupo = 'T' then begin
                       Say( mLinha  ,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                       Say( mLinha+1,   0, Arquivo, '³                                               TOTAL DE MERCADORIAS EM PODER DE TERCEIROS                                                     ³');
                       Say( mLinha+1, 145, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalTer),14));
                    End;
                    If mGrupo = 'Z' then begin
                       Say( mLinha  ,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                       Say( mLinha+1,   0, Arquivo, '³                                               TOTAL DE MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA                                          ³');
                       Say( mLinha+1, 145, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalOut),14));
                    End;
                    Say( mLinha+1, 160, Arquivo, '³' );
                    Say( mLinha+2,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha, 4);

                    If not Inventario.Eof then begin
                       Say( mLinha, 0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                       Inc(mLinha, 1);
                       mGrupo := InventarioInventario.AsString;
                    End;
                 End;

                 // Quebra de pagina.
                 If (mLinha >= 60) or (Inventario.Eof) then begin
                    If not Inventario.Eof then begin
                       Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                       Inc(mLinha,2);
                    End;

                    If Inventario.Eof then begin
                       If cInventario.ItemIndex = 2 then begin
                          Say( mLinha  , 92, Arquivo, '* TOTAL MERCADORIAS PROPRIAS                        : '+ PadR(FormatFloat('###,###,##0.00', mTotalPro),14) );
                          Say( mLinha+1, 92, Arquivo, '* TOTAL MERCADORIAS EM PODER DE TERCEIROS           : '+ PadR(FormatFloat('###,###,##0.00', mTotalTer),14) );
                          Say( mLinha+2, 92, Arquivo, '* TOTAL MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA: '+ PadR(FormatFloat('###,###,##0.00', mTotalOut),14) );
                       End;
                       Say( mLinha+3, 92, Arquivo,    '* TOTAL GERAL                                       : '+ PadR(FormatFloat('###,###,##0.00', mTotalGeral),14) );
                       Inc(mLinha, 4);
                    End;
                    Say( mLinha,0, Arquivo, Chr(12) );
                    mLinha      := 0;
                    LinhaAtual  := 0;
                    ColunaAtual := 0;
                    CloseFile(Arquivo);
                 end;

                 Janela_Processamento.lProcesso.Caption  := 'Preparando o livro de Inventario P7...Pagina '+PoeZero(4,mPagina);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
      End;

      Janela_Processamento.Close;
      
      If not FileExists(mNomeArq) then begin
         mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_InventarioP7_PG'+PoeZero(4, mPagina)+'.txt';
         If FileExists(mNomeArq) then DeleteFile(mNomeArq);
         AssignFile(Arquivo, mNomeArq);
         ReWrite(Arquivo);

         // Impressão do cabeçalho.
         Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
         Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
         Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE INVENTARIO');
         Say( mLinha+01, 160, Arquivo, '³' );
         Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
         Say( mLinha+03,   0, Arquivo, '³ FIRMA        : '+ Dados.EmpresasRazao_Social.AsString );
         Say( mLinha+03, 160, Arquivo, '³' );
         Say( mLinha+04,   0, Arquivo, '³ INSC.ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) );
         Say( mLinha+04,  53, Arquivo, '                CNPJ : '+FormatMaskText('99.999.999/9999-99;0; ', Dados.EmpresasCNPJ.Value) );
         Say( mLinha+04, 160, Arquivo, '³' );
         Say( mLinha+05,   0, Arquivo, '³ FOLHA        : '+ PoeZero(3,mPagina) );
         Say( mLinha+05,  53, Arquivo, 'ESTOQUE EXISTENTE EM : '+cData.Text );
         Say( mLinha+05, 160, Arquivo, '³' );
         Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
         Say( mLinha+07,   0, Arquivo, '³ CLASSIFICACAO ³                                  DISCRIMINACAO                                   ³ UNIDADE ³   QUANTIDADE   ³             VALORES             ³');
         Say( mLinha+08,   0, Arquivo, '³    FISCAL     ³                                                                                  ³         ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
         Say( mLinha+09,   0, Arquivo, '³               ³                                                                                  ³         ³                ³    UNITARIO    ³      TOTAL     ³');
         Say( mLinha+10,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
         Inc(mLinha,11);
         CloseFile(Arquivo);
      End;

      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
      mNomeArq := mNomeArq +'\Impressao';

      mNomeArq := mNomeArq+'\LIVRO_InventarioP7_PG';

      Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
      Impressao_Visualizar.mNome    := mNomeArq;
      Impressao_Visualizar.mArquivo := mNomeArq + PoeZero(4, cPaginaIni.AsInteger)+'.TXT';
      Impressao_Visualizar.mTitulo  := 'LIVRO REGISTRO DE INVENTARIO - (Modelo P7)';
      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := cPaginaIni.AsInteger;
      Impressao_Visualizar.ShowModal;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(mNomeArq, mPagina);
End;

procedure TImpressao_FiscaisOP_Inventario_P7.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      If DataLimpa(cDataSaida.Text) then cDataSaida.Date := cData.Date;

      With dmFiscal, Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           
           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           // Selecionando os produtos para impressão.
           Produtos.Close;
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ');
           If cNCM.Text <> '' then begin
              Produtos.SQL.Add('WHERE (NCM = :pNCM)' );
              Produtos.ParamByName('pNCM').AsString := cNCM.Text;
           end;
           If cProduto.Text <> '' then begin
              Produtos.SQL.Add('WHERE (Descricao_Reduzida = :pProduto)' );
              Produtos.ParamByName('pProduto').AsString := cProduto.Text;
           end;
           Produtos.Open;

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
              If cData.Date < StrtoDate('01/01/2014') then begin
                 Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa,0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                 Inventario.SQL.Add('                        AND (Movimenta_Inventario=1) AND (Data<=:pData)) /');
              end else begin
                 Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0)');
                 Inventario.SQL.Add('                        AND (Movimenta_Inventario=1) AND (Data<=:pData)) /');
              End;
              Inventario.SQL.Add('                        (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario=1) AND (Data<=:pData)), 4,0), 0) +');
              Inventario.SQL.Add('                        (ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) AND (Data_Entrada <= :pData)');
              Inventario.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4,0), 0)/');
              Inventario.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Quantidade,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) AND (Data_Entrada <= :pData)');
              Inventario.SQL.Add('                        AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4, 0), 1) ),');
              Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
              Inventario.SQL.Add('       NULL  AS Tipo_Item,');
              Inventario.SQL.Add('       ''P'' AS Inventario,');
              Inventario.SQL.Add('       ''P'' AS Participante,');
              Inventario.SQL.Add('       '' '' AS Tipo,');
              Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
              Inventario.SQL.Add('       '' '' AS IE,');
              Inventario.SQL.Add('       '' '' AS Estado');
              Inventario.SQL.Add('INTO #Temp');
              Inventario.SQL.Add('FROM Produtos');
              Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

              If Trim(cProduto.Text) <> '' then begin
                 Inventario.SQL.Add('AND (Codigo = :pCodigo)');
                 Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
              End;
              If Trim(cNCM.Text) <> '' then begin
                 Inventario.SQL.Add('AND (NCM = :pNCM) ');
                 Inventario.ParamByName('pNCM').AsString := cNCM.Text;
              End;
              if cIPI.ItemIndex = 1 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) > 0 OR ISNULL(Valor_IPI, 0) > 0)');
              end;
              if cIPI.ItemIndex = 2 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) = 0 AND ISNULL(Valor_IPI, 0) = 0)');
              end;

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
              Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pDataSaida)');
              Inventario.SQL.Add('              AND Finalidade_Mercadoria = 4)');
              Inventario.SQL.Add('            /(SELECT SUM(Quantidade)  FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pDataSaida)');
              Inventario.SQL.Add('            AND Finalidade_Mercadoria = 4), 4, 0)');
              Inventario.SQL.Add('       AS Valor_Unitario,');
              Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
              Inventario.SQL.Add('       NULL  AS Tipo_Item,');
              Inventario.SQL.Add('       ''T'' AS Inventario,');
              Inventario.SQL.Add('       ''T'' AS Participante,');
              Inventario.SQL.Add('       '' '' AS Tipo,');
              Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
              Inventario.SQL.Add('       '' '' AS IE,');
              Inventario.SQL.Add('       '' '' AS Estado');
              Inventario.SQL.Add('FROM   Produtos');
              Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

              If Trim(cProduto.Text) <> '' then begin
                 Inventario.SQL.Add('AND (Codigo = :pCodigo)');
                 Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
              End;
              If Trim(cNCM.Text) <> '' then begin
                 Inventario.SQL.Add('AND (NCM = :pNCM) ');
                 Inventario.ParamByName('pNCM').AsString := cNCM.Text;
              End;
              if cIPI.ItemIndex = 1 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) > 0 OR ISNULL(Valor_IPI, 0) > 0)');
              end;
              if cIPI.ItemIndex = 2 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) = 0 AND ISNULL(Valor_IPI, 0) = 0)');
              end;

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
              If cData.Date < StrtoDate('01/01/2014') then begin
                 Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa, 0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario=1)');
              end else begin
                 Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa*Quantidade,0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1)');
                 Inventario.SQL.Add('       AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario=1)');
              End;
              Inventario.SQL.Add('                        AND (Data<=:pData)) / (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Data<=:pData)), 4,0), 0) +');
              Inventario.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 0)');
              Inventario.SQL.Add('                        AND (Data_Entrada <= :pData) AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4, 0), 0),');
              Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
              Inventario.SQL.Add('       NULL  AS Tipo_Item,');
              Inventario.SQL.Add('       ''Z'' AS Inventario,');
              Inventario.SQL.Add('       ''T'' AS Participante,');
              Inventario.SQL.Add('       '' '' AS Tipo,');
              Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
              Inventario.SQL.Add('       '' '' AS IE,');
              Inventario.SQL.Add('       '' '' AS Estado');
              Inventario.SQL.Add('FROM   Produtos');
              Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

              If Trim(cProduto.Text) <> '' then begin
                 Inventario.SQL.Add('AND (Codigo = :pCodigo)');
                 Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
              End;
              If Trim(cNCM.Text) <> '' then begin
                 Inventario.SQL.Add('AND (NCM = :pNCM) ');
                 Inventario.ParamByName('pNCM').AsString := cNCM.Text;
              End;
              if cIPI.ItemIndex = 1 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) > 0 OR ISNULL(Valor_IPI, 0) > 0)');
              end;
              if cIPI.ItemIndex = 2 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) = 0 AND ISNULL(Valor_IPI, 0) = 0)');
              end;
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
              Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)+');
              Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1)');
              Inventario.SQL.Add('                        AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) <> 5) AND (Data_Entrada <= :pData)), 0) -');
              Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1)');
              Inventario.SQL.Add('                        AND (Finalidade_Mercadoria <> 5) AND (Data <= :pDataSaida)), 0) -');
              Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pDataSaida) AND (Inventario = 1)), 0)');
              Inventario.SQL.Add('       ), 3) AS Quantidade,');
              Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData))/');
              Inventario.SQL.Add('       (SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData)), 4, 0) AS Valor_Unitario,');
              Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
              Inventario.SQL.Add('       NULL  AS Tipo_Item,');
              Inventario.SQL.Add('       ''P'' AS Inventario,');
              Inventario.SQL.Add('       ''P'' AS Participante,');
              Inventario.SQL.Add('       '' '' AS Tipo,');
              Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
              Inventario.SQL.Add('       '' '' AS IE,');
              Inventario.SQL.Add('       '' '' AS Estado');
              Inventario.SQL.Add('INTO #Temp');
              Inventario.SQL.Add('FROM Produtos');
              Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

              If Trim(cProduto.Text) <> '' then begin
                 Inventario.SQL.Add('AND (Codigo = :pCodigo)');
                 Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
              End;
              If Trim(cNCM.Text) <> '' then begin
                 Inventario.SQL.Add('AND (NCM = :pNCM) ');
                 Inventario.ParamByName('pNCM').AsString := cNCM.Text;
              End;
              if cIPI.ItemIndex = 1 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) > 0 OR ISNULL(Valor_IPI, 0) > 0)');
              end;
              if cIPI.ItemIndex = 2 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) = 0 AND ISNULL(Valor_IPI, 0) = 0)');
              end;

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
              Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('              AND Finalidade_Mercadoria = 4)');
              Inventario.SQL.Add('            /(SELECT SUM(Quantidade)  FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('            AND Finalidade_Mercadoria = 4), 4, 0)');
              Inventario.SQL.Add('       AS Valor_Unitario,');
              Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
              Inventario.SQL.Add('       NULL  AS Tipo_Item,');
              Inventario.SQL.Add('       ''T'' AS Inventario,');
              Inventario.SQL.Add('       ''T'' AS Participante,');
              Inventario.SQL.Add('       '' '' AS Tipo,');
              Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
              Inventario.SQL.Add('       '' '' AS IE,');
              Inventario.SQL.Add('       '' '' AS Estado');
              Inventario.SQL.Add('FROM   Produtos');
              Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

              If Trim(cProduto.Text) <> '' then begin
                 Inventario.SQL.Add('AND (Codigo = :pCodigo)');
                 Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
              End;
              If Trim(cNCM.Text) <> '' then begin
                 Inventario.SQL.Add('AND (NCM = :pNCM) ');
                 Inventario.ParamByName('pNCM').AsString := cNCM.Text;
              End;
              if cIPI.ItemIndex = 1 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) > 0 OR ISNULL(Valor_IPI, 0) > 0)');
              end;
              if cIPI.ItemIndex = 2 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) = 0 AND ISNULL(Valor_IPI, 0) = 0)');
              end;

              // Mercadoria de terceiros em poder da empresa.
              Inventario.SQL.Add('UNION ALL');
              Inventario.SQL.Add('SELECT Codigo,');
              Inventario.SQL.Add('       Codigo_Fabricante,');
              Inventario.SQL.Add('       NCM,');
              Inventario.SQL.Add('       Descricao,');
              Inventario.SQL.Add('       Unidade,');
              Inventario.SQL.Add('       ROUND((');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pDataSaida)');
              Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
              Inventario.SQL.Add('       ), 3) AS Quantidade,');
              Inventario.SQL.Add('       (');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('                       AND Finalidade_Mercadoria = 5), 0) -');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('        AND Finalidade_Mercadoria = 5), 0)');
              Inventario.SQL.Add('       ) / ');
              Inventario.SQL.Add('       NULLIF(');
              Inventario.SQL.Add('       (');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('                       AND Finalidade_Mercadoria = 5), 0) -');
              Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
              Inventario.SQL.Add('                       AND Finalidade_Mercadoria = 5), 0)');
              Inventario.SQL.Add('       ), 0) AS Valor_Unitario,');
              Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
              Inventario.SQL.Add('       NULL  AS Tipo_Item,');
              Inventario.SQL.Add('       ''Z'' AS Inventario,');
              Inventario.SQL.Add('       ''T'' AS Participante,');
              Inventario.SQL.Add('       '' '' AS Tipo,');
              Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
              Inventario.SQL.Add('       '' '' AS IE,');
              Inventario.SQL.Add('       '' '' AS Estado');
              Inventario.SQL.Add('FROM   Produtos');
              Inventario.SQL.Add('WHERE (Codigo IS NOT NULL)');

              If Trim(cProduto.Text) <> '' then begin
                 Inventario.SQL.Add('AND (Codigo = :pCodigo)');
                 Inventario.ParamByName('pCodigo').AsInteger := StrtoInt(cCodigo.Text);
              End;
              If Trim(cNCM.Text) <> '' then begin
                 Inventario.SQL.Add('AND (NCM = :pNCM) ');
                 Inventario.ParamByName('pNCM').AsString := cNCM.Text;
              End;
              if cIPI.ItemIndex = 1 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) > 0 OR ISNULL(Valor_IPI, 0) > 0)');
              end;
              if cIPI.ItemIndex = 2 then begin
                 Inventario.SQL.Add('  AND (ISNULL(Aliquota_IPI, 0) = 0 AND ISNULL(Valor_IPI, 0) = 0)');
              end;
           End;

           Inventario.SQL.Add('UPDATE #Temp SET Valor_Total = Valor_Unitario * Quantidade WHERE Quantidade <> 0');
           Inventario.SQL.Add('TRUNCATE TABLE Inventario');
           Inventario.SQL.Add('INSERT INTO Inventario SELECT * FROM #Temp WHERE Quantidade <> 0');
           If cInventario.ItemIndex = 0 then Inventario.SQL.Add(' AND (Inventario = ''P'') ');
           If cInventario.ItemIndex = 1 then Inventario.SQL.Add(' AND (Inventario = ''T'') ');

           Inventario.SQL.Add('SELECT * FROM Inventario');
           If cNegativo.Checked = true then Inventario.SQL.Add('WHERE(Quantidade < 0)');
           If cPositivo.Checked = true then Inventario.SQL.Add('WHERE(Quantidade > 0)');
           If cOrdem.ItemIndex = 0 then Inventario.SQL.Add('ORDER BY Inventario, NCM');
           If cOrdem.ItemIndex = 1 then Inventario.SQL.Add('ORDER BY Inventario, Codigo');
           If cOrdem.ItemIndex = 2 then Inventario.SQL.Add('ORDER BY Inventario, CAST(Descricao AS VARCHAR(500))');
           Inventario.SQL.Add('DROP TABLE #TEMP');
           Inventario.ParamByName('pData').AsDateTime      := cData.Date;
           Inventario.ParamByName('pDataSaida').AsDateTime := cDataSaida.Date;
           //If EmpresasDistribuidora.AsBoolean = true  then Inventario.SQL.SaveToFile('c:\temp\Inventario_Distribuidor.sql');
           //If EmpresasDistribuidora.AsBoolean = false then Inventario.SQL.SaveToFile('c:\temp\Inventario_Importadora.sql');
           Inventario.Open;

           Screen.Cursor := crDefault;
      End;

      If cExcel.Checked = false then begin
         lTitulo.Caption := 'REGISTRO DE INVENTARIO';
         if cIPI.ItemIndex = 1 then begin
            lTitulo.Caption := 'REGISTRO DE INVENTARIO (PRODUTOS COM IPI)'
         end;
         if cIPI.ItemIndex = 2 then begin
            lTitulo.Caption := 'REGISTRO DE INVENTARIO (PRODUTOS SEM IPI)'
         end;

         If cImpressora.ItemIndex = 0 then begin
            ModeloP7;
         End else begin
            Screen.Cursor := crDefault;
            rInventario.Print;
            rInventario.Reset;
         End;
      end else begin
         ExportaEXCEL;
      End;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_Inventario_P7.rInventarioBeforePrint(Sender: TObject);
begin
      lPeriodo.Caption := cDataSaida.Text;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.ppDetailBand1BeforePrint(Sender: TObject);
begin
     lDescricao.Text := RemoveCaracter('<{'+Trim(dmFiscal.Inventario.FieldByName('Codigo').AsString)+'}>', '', dmFiscal.Inventario.FieldByName('Descricao').AsString);
end;

procedure TImpressao_FiscaisOP_Inventario_P7.ppHeaderBand1BeforePrint(Sender: TObject);
begin
      lFolha.Caption := InttoStr(cPaginaIni.AsInteger + (rInventario.PageNo)-1);
end;

procedure TImpressao_FiscaisOP_Inventario_P7.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
     If dmFiscal.InventarioInventario.AsString = 'P' then begin
        lGrupo.Text         := '* TOTAL MERCADORIAS PRÓPRIAS';
        lTotalProprio.Value :=  lTotalGrupo.Value;
     End;
     If dmFiscal.InventarioInventario.AsString = 'T' then begin
        lGrupo.Text           := '* TOTAL MERCADORIAS EM PODER DE TERCEIROS';
        lTotalTerceiros.Value :=  lTotalGrupo.Value;
     End;
     If dmFiscal.InventarioInventario.AsString = 'Z' then begin
        lGrupo.Text        := '* TOTAL MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA';
        lTotalOutros.Value :=  lTotalGrupo.Value;
     End;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
     If dmFiscal.InventarioInventario.AsString = 'P' then begin
        lInventario.Text := 'MERCADORIAS PRÓPRIAS';
     End;
     If dmFiscal.InventarioInventario.AsString = 'T' then begin
        lInventario.Text := 'MERCADORIAS EM PODER DE TERCEIROS';
     End;
     If dmFiscal.InventarioInventario.AsString = 'Z' then begin
        lInventario.Text := 'MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA';
     End;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.ppSummaryBand1BeforePrint(Sender: TObject);
begin
      lLabelTotalTer.Visible  := cInventario.ItemIndex = 2;
      lTotalTerceiros.Visible := cInventario.ItemIndex = 2;
      lLabelTotalPro.Visible  := cInventario.ItemIndex = 2;
      lTotalProprio.Visible   := cInventario.ItemIndex = 2;
      lLabelTotalOut.Visible  := cInventario.ItemIndex = 2;
      lTotalOutros.Visible    := cInventario.ItemIndex = 2;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.cCodigoChange(Sender: TObject);
begin
      Try
         If Dados.Produtos.Locate('Codigo', StrtoInt(cCodigo.Text), [loCaseInsensitive]) = true then
            cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger
         else
            cProduto.KeyValue := 0;
      Except
         ShowMessage('Código do produto inválido !');
      End;
end;

// Envia informações para o excel.
procedure TImpressao_FiscaisOP_Inventario_P7.ExportaEXCEL;
var
   mPlanilha      : Variant;
   mLinha         : Integer;
   mTotalQtdePro  : Real;
   mTotalPro      : Currency;
   mTotalTer      : Currency;
   mTotalQtdeTer  : Real;
   mTotalOut      : Currency;
   mTotalQtdeOut  : Real;
   mTotalQtdeGeral: Real;
   mTotalGeral    : Currency;
   mDescricao     : WideString;
   mTipo          : String;
   mProcessos     : WideString;
begin
       With dmFiscal do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := Inventario.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible := false;
            mPlanilha.Range['A3','H3'].Interior.Color    := RGB(255, 255, 140);
            mPlanilha.Range['A3','H3'].Interior.Pattern  := 1;
            mPlanilha.Range['A3','H3'].Font.Bold         := true;
            mPlanilha.Range['A3','H3'].Font.Color        := clBlack;
            mPlanilha.Range['A3','H3'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A3','H3'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A3','H3'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Cells[3,01] := 'NCM';
            mPlanilha.Cells[3,02] := 'DESCRIÇÃO';
            mPlanilha.Cells[3,03] := 'CÓDIGO';
            mPlanilha.Cells[3,04] := 'UNIDADE';
            mPlanilha.Cells[3,05] := 'QUANTIDADE';
            mPlanilha.Cells[3,06] := 'VLR.UNITÁRIO';
            mPlanilha.Cells[3,07] := 'VLR.TOTAL';
            mPlanilha.Cells[3,08] := 'PROCESSO(S)';

            mPlanilha.Range['A3','H3'].HorizontalAlignment := 3;
            mPlanilha.Range['A3','H3'].VerticalAlignment   := 2;
            mPlanilha.Range['A3','H3'].Font.Size           := 10;

            If Inventario.FieldByName('Inventario').AsString = 'P' then begin
               mPlanilha.Cells[4,01] := 'MERCADORIA PRÓPRIA';
            End;
            If Inventario.FieldByName('Inventario').AsString = 'T' then begin
               mPlanilha.Cells[4,01] := 'MERCADORIA EM PODER DE TERCEIROS';
            End;
            If Inventario.FieldByName('Inventario').AsString = 'Z' then begin
               mPlanilha.Cells[4,01] := 'MERCADORIA DE TERCEIROS EM PODER DA EMPRESA';
            End;

            mPlanilha.Range['A4','H4'].Font.Bold           := true;
            mPlanilha.Range['A4','H4'].Font.Size           := 10;
            mPlanilha.Range['A4','H4'].Mergecells          := True;
            mPlanilha.Range['A4','H4'].HorizontalAlignment := 3;
            mPlanilha.Range['A4','H4'].Interior.Color      := clMoneyGreen;
            mPlanilha.Range['A4','H4'].Borders.LineStyle   := 1;
            mPlanilha.Range['A4','H4'].Borders.Weight      := 2;
            mPlanilha.Range['A4','H4'].Borders.Color       := RGB(0,0,0);

            mTotalPro       := 0;
            mTotalTer       := 0;
            mTotalOut       := 0;
            mTotalGeral     := 0;
            mTotalQtdePro   := 0;
            mTotalQtdeTer   := 0;
            mTotalQtdeGeral := 0;
            mLinha          := 5;
            mTipo           := Inventario.FieldByName('Inventario').AsString;

            While (not Inventario.Eof) and (not Funcoes.Cancelado) do  Begin
                  mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].ColumnWidth         := 80;
                  mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].WrapText            := true;
                  mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].VerticalAlignment   := 1;
                  mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 3;
                  mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size           := 10;

                  mDescricao := Trim(InventarioDescricao.AsString);
                  mDescricao := RemoveCaracter(#13, '', mDescricao);
                  mDescricao := RemoveCaracter(#12, '', mDescricao);
                  mDescricao := RemoveCaracter(#10, '', mDescricao);
                  mDescricao := RemoveCaracter('<{'+InventarioCodigo.AsString+'}>', '', mDescricao);

                  tProcessos.SQL.Clear;
                  tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasItens WHERE (Codigo_Mercadoria = :pCodigo)');
                  tProcessos.SQL.Add('UNION');
                  tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasTerceirosItens WHERE (Codigo_Mercadoria = :pCodigo)');
                  tProcessos.ParamByName('pCodigo').AsInteger := Inventario.FieldByName('Codigo').AsInteger;
                  tProcessos.Open;

                  mProcessos := '';
                  While not tProcessos.Eof do begin
                        mProcessos := mProcessos + tProcessos.FieldByName('Processo').AsString+', ';
                        tProcessos.Next;
                  End;
                  mProcessos := Copy(mProcessos, 1, Length(mProcessos)-2);

                  mPlanilha.Cells[mLinha,01] := Inventario.FieldByName('NCM').AsString;
                  mPlanilha.Cells[mLinha,02] := mDescricao;
                  mPlanilha.Cells[mLinha,03] := Inventario.FieldByName('Codigo').AsString;
                  mPlanilha.Cells[mLinha,04] := Inventario.FieldByName('Unidade').AsString;
                  mPlanilha.Cells[mLinha,05] := Inventario.FieldByName('Quantidade').AsFloat;
                  mPlanilha.Cells[mLinha,06] := Inventario.FieldByName('Valor_Unitario').AsCurrency;
                  mPlanilha.Cells[mLinha,07] := Inventario.FieldByName('Valor_Total').AsCurrency;
                  mPlanilha.Cells[mLinha,08] := mProcessos;

                  mPlanilha.Cells[mLinha,01].NumberFormat := '#####.##.##';
                  mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
                  mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';

                  If Inventario.FieldByName('Inventario').AsString = 'P' then begin
                     mTotalQtdePro := mTotalQtdePro + Inventario.FieldByName('Quantidade').AsFloat;
                     mTotalPro     := mTotalPro     + Inventario.FieldByName('Valor_Total').AsCurrency;
                  End;
                  If Inventario.FieldByName('Inventario').AsString = 'T' then begin
                     mTotalQtdeTer := mTotalQtdeTer + Inventario.FieldByName('Quantidade').AsFloat;
                     mTotalTer     := mTotalTer     + Inventario.FieldByName('Valor_Total').AsCurrency;
                  End;
                  If Inventario.FieldByName('Inventario').AsString = 'Z' then begin
                     mTotalQtdeOut := mTotalQtdeOut + Inventario.FieldByName('Quantidade').AsFloat;
                     mTotalOut     := mTotalOut     + Inventario.FieldByName('Valor_Total').AsCurrency;
                  End;
                  
                  mTotalQtdeGeral := mTotalQtdeGeral + Inventario.FieldByName('Quantidade').AsFloat;
                  mTotalGeral     := mTotalGeral     + Inventario.FieldByName('Valor_Total').AsCurrency;

                  Inventario.Next;

                  If (Inventario.FieldByName('Inventario').AsString <> mTipo) or (Inventario.Eof) then begin
                     If mTipo = 'P' then begin
                        Inc(mLinha);
                        mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS PRÓPRIAS';
                        mPlanilha.Cells[mLinha,05] := mTotalQtdePro;
                        mPlanilha.Cells[mLinha,07] := mTotalPro;
                     End;
                     If mTipo = 'T' then begin
                        Inc(mLinha);
                        mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS EM TERCEIROS';
                        mPlanilha.Cells[mLinha,05] := mTotalQtdeTer;
                        mPlanilha.Cells[mLinha,07] := mTotalTer;
                     End;
                     If mTipo = 'Z' then begin
                        Inc(mLinha);
                        mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA';
                        mPlanilha.Cells[mLinha,05] := mTotalQtdeOut;
                        mPlanilha.Cells[mLinha,07] := mTotalOut;
                     End;

                     mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
                     mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
                     mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
                     mPlanilha.Range['C3','G3'].VerticalAlignment   := 2;
                     mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
                     mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                     mTipo := Inventario.FieldByName('Inventario').AsString;

                     If not Inventario.Eof then begin
                        Inc(mLinha);

                        If mTipo = 'T' then begin
                           mPlanilha.Cells[mLinha,01] := 'MERCADORIA EM PODER DE TERCEIROS';
                        End;
                        If mTipo = 'Z' then begin
                           mPlanilha.Cells[mLinha,01] := 'MERCADORIA DE TERCEIROS EM PODER DA EMPRESA';
                        End;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Bold := true;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size           := 10;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells          := True;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].HorizontalAlignment := 3;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color      := clMoneyGreen;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle   := 1;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Weight      := 2;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Color       := RGB(0,0,0);
                     End;
                  End;

                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            End;

            Inc(mLinha, 3);
            mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS PRÓPRIAS';
            mPlanilha.Cells[mLinha,05] := mTotalQtdePro;
            mPlanilha.Cells[mLinha,07] := mTotalPro;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS EM PODER DE TERCEIROS';
            mPlanilha.Cells[mLinha,05] := mTotalQtdeTer;
            mPlanilha.Cells[mLinha,07] := mTotalTer;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA';
            mPlanilha.Cells[mLinha,05] := mTotalQtdeOut;
            mPlanilha.Cells[mLinha,07] := mTotalOut;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL GERAL';
            mPlanilha.Cells[mLinha,05] := mTotalQtdeGeral;
            mPlanilha.Cells[mLinha,07] := mTotalGeral;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';

            mPlanilha.Range['C3','G3'].VerticalAlignment   := 2;
            mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
//               KillTask('Excel.exe');    // Microsoft Excel
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            End;

            mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;

            mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
            mPlanilha.Range['A1','A1'].Font.Size  := 14;
            mPlanilha.Range['A1','A1'].Font.Bold  := true;
            mPlanilha.Range['A1','H1'].Mergecells := True;
            mPlanilha.Range['A1','H1'].HorizontalAlignment := 3;

            mPlanilha.Cells[2,01] := 'Inventario - Período de '+cData.Text;
            if cIPI.ItemIndex = 1 then begin
               mPlanilha.Cells[2,01] := 'Inventario - Período de '+cData.Text + '  (Produtos com IPI)';
            end;
            if cIPI.ItemIndex = 2 then begin
               mPlanilha.Cells[2,01] := 'Inventario - Período de '+cData.Text + '  (Produtos sem IPI)';
            end;

            mPlanilha.Range['A2','A2'].Font.Size  := 10;
            mPlanilha.Range['A2','H2'].Mergecells := True;
            mPlanilha.Range['A2','H2'].HorizontalAlignment := 3;
       End;
       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.cNegativoClick(Sender: TObject);
begin
      If cNegativo.Checked = true then cPositivo.Checked := false;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.cPositivoClick(Sender: TObject);
begin
      If cPositivo.Checked = true then cNegativo.Checked := false;
end;

procedure TImpressao_FiscaisOP_Inventario_P7.cDataExit(Sender: TObject);
begin
      If DataLimpa(cDataSaida.Text) then cDataSaida.Date := cData.Date;
end;

end.
