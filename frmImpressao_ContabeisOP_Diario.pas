unit frmImpressao_ContabeisOP_Diario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RXSpin, Vcl.ExtCtrls, RXCtrls, INIFiles, DB, Funcoes, DateUtils,
  ppBands, ppReport, DBAccess, MSAccess, ppDBPipe, ppMemo, ppCtrls, ppVar,
  Mask, RxToolEdit, MemDS, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ContabeisOP_Diario = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cImpressora: TRadioGroup;
    GroupBox1: TGroupBox;
    cMaiusculo: TCheckBox;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText3: TStaticText;
    cPagina: TRxSpinEdit;
    StaticText1: TStaticText;
    cDiario: TRxSpinEdit;
    StaticText4: TStaticText;
    rDiario: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    lTitulo: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppHistoricos: TppDBPipeline;
    tLancamentos: TMSQuery;
    pLancamentos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    ppDBMemo1: TppDBMemo;
    ppShape1: TppShape;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine15: TppLine;
    ppLabel17: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    iLogo: TppImage;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLabel10: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine5: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure Diario_MTC;
    procedure Cabecalho;
    procedure RodaPe;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha     : Integer;
    mPagina    : Integer;
    mPaginaIni : Integer;
    Arquivo    : TextFile;
    mNomeArq   : String;
    mGrupo     : String;
    mNatureza  : String;
    mCentro    : Integer;
  end;

var
  Impressao_ContabeisOP_Diario: TImpressao_ContabeisOP_Diario;

implementation

uses frmDados, frmDMContab, frmMenu_Principal, frmJanela_Processamento, frmImpressao_Visualizar;

{$R *.dfm}

procedure TImpressao_ContabeisOP_Diario.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
//      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_DIARIO', 'Impressora'    , 1 );
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_DIARIO', 'Data_Inicial'  , Date );
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_DIARIO', 'Data_Final'    , Date );
      cMaiusculo.Checked    := aINI.ReadBool   ('IMPRESSAO_DIARIO', 'Maiusculo'     , True );
      aINI.Free;

      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           
           cPagina.AsInteger := EmpresasDiario_Pagina.AsInteger+1;
           cDiario.AsInteger := EmpresasDiario_Numero.AsInteger;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
           Historicos.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0)' );
           PlanoContas.Open;
      End;
end;

procedure TImpressao_ContabeisOP_Diario.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ContabeisOP_Diario.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
//      aINI.WriteInteger( 'IMPRESSAO_DIARIO', 'Impressora'    , cImpressora.ItemIndex );
      aINI.WriteDate   ( 'IMPRESSAO_DIARIO', 'Data_Inicial'  , cDataIni.Date );
      aINI.WriteDate   ( 'IMPRESSAO_DIARIO', 'Data_Final'    , cDataFim.Date );
      aINI.WriteBool   ( 'IMPRESSAO_DIARIO', 'Maiusculo'     , cMaiusculo.Checked );
      aINI.Free;

      With Dados do begin
           Empresas.Edit;
                    EmpresasDiario_Pagina.Value := mPagina;
                    EmpresasDiario_Numero.Value := cDiario.AsInteger;
           Empresas.Post;         
      End;

      LimpaMemoria;
      Impressao_ContabeisOP_Diario.Release;
      Impressao_ContabeisOP_Diario := nil;
end;

procedure TImpressao_ContabeisOP_Diario.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do begin
           with tLancamentos do begin
                SQL.Clear;
                SQL.Add('SELECT Data');
                SQL.Add('      ,Numero');
                SQL.Add('      ,Conta_Debito');
                SQL.Add('      ,Conta_Credito');
                SQL.Add('      ,Historico_Codigo');
                SQL.Add('      ,Valor');
                SQL.Add('      ,(SELECT Descricao FROM PlanoContas WHERE(Codigo = Lancamentos.Conta_Debito))  AS Nome_ContaD');
                SQL.Add('      ,(SELECT Descricao FROM PlanoContas WHERE(Codigo = Lancamentos.Conta_Credito)) AS Nome_ContaC');
                SQL.Add('      ,CASE WHEN Historico_Codigo <> 0 THEN');
                SQL.Add('           (SELECT LTRIM(RTRIM(Descricao)) FROM HistoricoPadrao WHERE(Codigo = Lancamentos.Historico_Codigo))+'' ''+CAST(Historico_Complemento AS Varchar(200))');
                SQL.Add('       ELSE');
                SQL.Add('           LTRIM(RTRIM(CAST(Historico_Complemento AS Varchar(200))))');
                SQL.Add('       END AS Historico_Texto');
                SQL.Add('FROM Lancamentos');
                SQL.Add('WHERE (Data BETWEEN :pDataIni AND :pDataFim)');
                SQL.Add('and  Contabilizar = 1');
                SQL.Add('ORDER BY Data, Numero');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                //SQL.SaveToFile('c:\temp\Livro_Diario.sql');
                Open;
                If RecordCount = 0 then begin
                   ShowMessage('Não há movimento para o período solicitado!');
                   Abort;
                End;
           end;
           Historicos.Open;
      End;
      Screen.Cursor := crDefault;

//      If cImpressora.ItemIndex = 0 then
//         Diario_MTC
//      else begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         lTitulo.Caption := 'Livro Diário do mês de '+Trim(NomeMes(MonthOf(cDataFim.Date)))+'/'+InttoStr(YearOf(cDataFim.Date));
         rDiario.Print;
         rDiario.FreeOnRelease;
//      End;
end;

procedure TImpressao_ContabeisOP_Diario.Diario_MTC;
Var
    mTotalDeb
   ,mTotalCre
   ,mTotalDeb_Dia
   ,mTotalCre_Dia: Currency;
    mHistorico
   ,mRisco : String;

    mFracao
   ,mInteiro : Real;

    mDia
   ,i
   ,mPos
   ,mHist
   ,mResto
   ,mColuna
   ,mFinal: Integer;
begin
      Screen.Cursor := crAppStart;
      With dmContab, Dados do begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := tLancamentos.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro diario nº '+PoeZero(3,cDiario.AsInteger);
           Janela_Processamento.Show;

           mLinha        := 0;
           mPagina       := cPagina.AsInteger;
           mPaginaIni    := cPagina.AsInteger;
           mTotalDeb     := 0;
           mTotalCre     := 0;
           mTotalDeb_Dia := 0;
           mTotalCre_Dia := 0;
           mDia          := DayOf(tLancamentos.FieldByName('Data').Value);

           Cabecalho;

           While (not tLancamentos.Eof) and (Cancelado = False) do begin
                 mHistorico := RemoveCaracterXML(Trim(tLancamentos.FieldByName('Historico_Texto').AsString));
                 mInteiro := Int(Length(mHistorico) / 40);
                 mFracao  := Frac(Length(mHistorico)/ 40);
                 mHist    := 0;
                 If (mInteiro > 0) and (mFracao > 0) then mHist := Round(mInteiro+1);
                 If Length(Trim(mHistorico)) <= 40 then mHist := 1;
                 If mHist < 1 then mHist := 1;

                 Say( mLinha,   2, Arquivo, DatetoStr(tLancamentos.FieldByName('Data').Value) );
                 Say( mLinha,  13, Arquivo, PoeZero(5,tLancamentos.FieldByName('Numero').Value) );

                 If tLancamentos.FieldByName('Conta_Debito').Value <> '' then begin
                    PlanoContas.Locate('Codigo', tLancamentos.FieldByName('Conta_Debito').Value, [loCaseInsensitive]);
                    Say( mLinha,  20, Arquivo, PlanoContasConta.Value );
                    If cMaiusculo.Checked = False then
                       Say( mLinha,  30, Arquivo, Copy(PlanoContasDescricao.Value, 1, 32) )
                    else
                       Say( mLinha,  30, Arquivo, UpperCase(Copy(PlanoContasDescricao.Value, 1, 32)) );

                    mTotalDeb_Dia := mTotalDeb_Dia + tLancamentos.FieldByName('Valor').Value;
                    mTotalDeb     := mTotalDeb     + tLancamentos.FieldByName('Valor').Value;
                 End;

                 If tLancamentos.FieldByName('Conta_Credito').Value <> '' then begin
                    PlanoContas.Locate('Codigo', tLancamentos.FieldByName('Conta_Credito').Value, [loCaseInsensitive]);
                    Say( mLinha, 63, Arquivo, PlanoContasConta.Value );
                    If cMaiusculo.Checked = False then
                       Say( mLinha,  73, Arquivo, Copy(PlanoContasDescricao.Value, 1, 32) )
                    else
                       Say( mLinha,  73, Arquivo, UpperCase(Copy(PlanoContasDescricao.Value, 1, 32)) );

                    mTotalCre_Dia := mTotalCre_Dia + tLancamentos.FieldByName('Valor').Value;
                    mTotalCre     := mTotalCre     + tLancamentos.FieldByName('Valor').Value;
                 End;

                 mPos := 1;
                 For i := 1 to mHist do begin
                     Say( mLinha,  106, Arquivo, Trim(Copy(mHistorico, mPos, 40)) );
                     Inc(mPos,40);
                     If i < mHist then Inc(mLinha);
                 End;
                 Say( mLinha, 147, Arquivo, Padr(FormatFloat('#,###,###,##0.00', tLancamentos.FieldByName('Valor').Value), 16) );
                 Inc(mLinha);

                 tLancamentos.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;

                 If mDia <> DayOf(tLancamentos.FieldByName('Data').Value) then begin
                    If mLinha >= 58 then begin
                       mLinha := 61;
                       RodaPe;
                       Inc(mPagina);
                       mLinha := 0;
                       CloseFile(Arquivo);
                       Cabecalho;
                    End;
                    mDia := DayOf(tLancamentos.FieldByName('Data').Value);
                    Inc(mLinha);
                    Say( mLinha, 95, Arquivo, '* TOTAL DOS DEBITOS................................:'+Padr(FormatFloat('#,###,###,##0.00', mTotalDeb_Dia), 16) );
                    Inc(mLinha);
                    Say( mLinha, 95, Arquivo, '* TOTAL DOS CREDITOS...............................:'+Padr(FormatFloat('#,###,###,##0.00', mTotalCre_Dia), 16) );
                    mTotalDeb_Dia := 0;
                    mTotalCre_Dia := 0;

                    Inc(mLinha,2);
                 End;

                 If (mLinha > 59) then begin
                    mLinha := 61;
                    RodaPe;
                    Inc(mPagina);
                    mLinha := 0;
                    CloseFile(Arquivo);
                    Cabecalho;
                 End;
           End;
           If tLancamentos.Eof then begin
              Inc(mLinha);
              If mLinha >= 58 then begin
                 mLinha := 61;
                 RodaPe;
                 Inc(mPagina);
                 mLinha := 0;
                 CloseFile(Arquivo);
                 Cabecalho;
              End;
              Say( mLinha, 95, Arquivo, '* TOTAL DOS DEBITOS................................:'+Padr(FormatFloat('#,###,###,##0.00', mTotalDeb_Dia), 16) );
              Inc(mLinha);
              Say( mLinha, 95, Arquivo, '* TOTAL DOS CREDITOS...............................:'+Padr(FormatFloat('#,###,###,##0.00', mTotalCre_Dia), 16) );
              Inc(mLinha,2);
              If mLinha >= 58 then begin
                 mLinha := 61;
                 RodaPe;
                 Inc(mPagina);
                 mLinha := 0;
                 CloseFile(Arquivo);
                 Cabecalho;
              End;
              Say( mLinha, 95, Arquivo, '* TOTAL GERAL DO DEBITOS...........................:'+Padr(FormatFloat('#,###,###,##0.00', mTotalDeb), 16) );
              Inc(mLinha);
              Say( mLinha, 95, Arquivo, '* TOTAL GERAL DOS CREDITOS.........................:'+Padr(FormatFloat('#,###,###,##0.00', mTotalCre), 16) );

              // Desenha o traçado de fim de pagina caso haja espaço no final da pagina.
              Inc(mLinha,2);
              If (60 - mLinha) >= 3 then begin
                 mResto  := (60-mLinha);
                 mRisco  := Replicate('_', ( (120-mResto) div 2 ) );
                 mColuna :=  (166-((Length(mRisco)*2)+mResto)) Div 2 ;
                 Say( mLinha, mColuna, Arquivo, mRisco );
                 Inc(mLinha);
                 Inc(mColuna, Length(mRisco));
                 For mFinal := mLinha to (60-1) do begin
                     Say( mLinha, mColuna, Arquivo, '\' );
                     Inc(mColuna);
                     Inc(mLinha);
                 End;
                 Say( mLinha, mColuna, Arquivo, '\'+mRisco );
              End;

              mLinha := 61;
              RodaPe;
              CloseFile(Arquivo);
           End;

      End;
      Janela_Processamento.Close;
      Screen.Cursor := crDefault;

      cPagina.AsInteger := mPagina+1;
      // Gerando a visualização do arquivo.
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
      mNomeArq := mNomeArq +'\Impressao\DIARIO_PG';

      Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.mNome    := mNomeArq;
      Impressao_Visualizar.mArquivo := mNomeArq+PoeZero(4,mPaginaIni)+'.TXT';
      Impressao_Visualizar.mTitulo  := 'Livro Diario';
      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := mPaginaIni;
      Impressao_Visualizar.ShowModal;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(mNomeArq, mPagina);
End;

procedure TImpressao_ContabeisOP_Diario.Cabecalho;
Var
   mMes : String;
Begin
      LinhaAtual  := 0;
      ColunaAtual := 0;
      mNomeArq    := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
      mNomeArq := mNomeArq +'\Impressao';
         
      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq    := mNomeArq+'\DIARIO_PG'+PoeZero(4, mPagina)+'.TXT';
      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);
      Write(Arquivo, mComprime15 );  // Pitch 17ppp

      mCentro := Round( (162-Length(Trim(Dados.EmpresasRazao_Social.Value)))/2 );
      Say( mLinha  ,  0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
      Say( mLinha+1,  0, Arquivo, '|' );
      Say( mLinha+1, mCentro, Arquivo, mNegrito+Trim(Dados.EmpresasRazao_Social.Value)+mClaro);
      Say( mLinha+1,166, Arquivo, '|' );
      Say( mLinha+2,  0, Arquivo, '|' );
      mCentro := Round( (162-Length('LIVRO DIARIO Nr. 0000'))/2 );
      Say( mLinha+2,  mCentro, Arquivo, 'LIVRO DIARIO Nr. '+PoeZero(4, cDiario.AsInteger) ) ;
      Say( mLinha+2,162, Arquivo, '|' );
      If MonthOf(cDataIni.Date) = MonthOf(cDataFim.Date) then begin
         mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+'/'+InttoStr(YearOf(cDataFim.Date));
      End else begin
         mMes := Trim(NomeMes(MonthOf(cDataIni.Date)))+' a '+Trim(NomeMes(MonthOf(cDataFim.Date))) + ' de '+InttoStr(YearOf(cDataFim.Date))+' ';
      End;
      mCentro := Round( (162-Length(mMes))/2 );
      Say( mLinha+3,  0, Arquivo, '|' );
      Say( mLinha+3, mCentro, Arquivo, mMes);
      Say( mLinha+3,162, Arquivo, '|' );
      Say( mLinha+4,  0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´' );
      Say( mLinha+5,  0, Arquivo, '|    LANCAMENTO   |                                        CONTA                                        |                                        |                |' );
      Say( mLinha+6,  0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                 HISTORICO              |      VALOR     |' );
      Say( mLinha+7,  0, Arquivo, '|   DATA   | NUM. |                  DEBITO                  |                 CREDITO                  |                                        |                |' );
      Say( mLinha+8,  0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
      Inc(mLinha, 9);
end;

procedure TImpressao_ContabeisOP_Diario.RodaPe;
Begin
      Say( mLinha  ,  0, Arquivo, 'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ' );
      Say( mLinha+1,  0, Arquivo, ' Cybersoft Sistemas | '+ RemoveAcentos(DataExtenso( Dados.MunicipiosNome.Value, Date))+'          |' );
      Say( mLinha+1,151, Arquivo, '| PAGINA:'+PoeZero(3, mPagina) );
      Say( mLinha  ,150, Arquivo, mEjeta );
end;


procedure TImpressao_ContabeisOP_Diario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

End.
