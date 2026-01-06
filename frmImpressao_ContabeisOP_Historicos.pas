unit frmImpressao_ContabeisOP_Historicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, IniFiles, ppVar, ppCtrls, ppBands,
  ppReport, DB, Funcoes, ppDBPipe, myChkBox, ppDB, ppParameter, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ContabeisOP_Historicos = class(TForm)
    Panel1: TPanel;
    cImpressora: TRadioGroup;
    cOrdem: TRadioGroup;
    rHistoricos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    lTitulo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    lData: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine4: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppHistoricos: TppDBPipeline;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppEmpresas: TppDBPipeline;
    GroupBox1: TGroupBox;
    cMaiusculo: TCheckBox;
    iLogo: TppImage;
    bSair: TButton;
    bImprimir: TButton;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Historicos_MTC;
    procedure rHistoricosBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }

    { Public declarations }
    mLinha   : Integer;
    mPagina  : Integer;
    mNomeArq : String;
    Arquivo  : TextFile;
  end;

var
  Impressao_ContabeisOP_Historicos: TImpressao_ContabeisOP_Historicos;

implementation

uses frmDados, frmDMContab, frmJanela_Processamento, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ContabeisOP_Historicos.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_HISTORICOS', 'Ordem'         , cOrdem.ItemIndex );
      aINI.WriteInteger( 'IMPRESSAO_HISTORICOS', 'Impressora'    , 1);
      aINI.WriteBool   ( 'IMPRESSAO_HISTORICOS', 'Maiusculo'     , cMaiusculo.Checked );
      aINI.Free;

      LimpaMemoria;
      Impressao_ContabeisOP_Historicos.Release;
      Impressao_ContabeisOP_Historicos := nil;
end;

procedure TImpressao_ContabeisOP_Historicos.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cOrdem.ItemIndex      := aINI.ReadInteger('IMPRESSAO_HISTORICOS', 'Ordem'         , 0 );
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_HISTORICOs', 'Impressora'    , 1 );
      cMaiusculo.Checked    := aINI.ReadBool   ('IMPRESSAO_HISTORICOs', 'Maiusculo'     , True );
      aINI.Free;
end;

procedure TImpressao_ContabeisOP_Historicos.Historicos_MTC;
Var
    mCentro: Integer;
begin
      Screen.Cursor := crSQLWait;
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := dmContab.PlanoContas.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo os Históricos Padrões...';
      Janela_Processamento.Show;
      With dmContab, Dados do begin
           mLinha  := 0;
           mPagina := 1;

           While (not Historicos.Eof) and (Cancelado = False) do begin
                 If mLinha = 0 then begin
                    LinhaAtual  := 0;
                    ColunaAtual := 0;
                    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
                    mNomeArq := mNomeArq +'\Impressao';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\HISTORICOS_PG'+PoeZero(4, mPagina)+'.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);
                    Write(Arquivo, mComprime17 );  // Pitch 17ppp

                    mCentro := Round( (140-Length(Trim(EmpresasRazao_Social.Value)))/2 );
                    Say( mLinha  ,  0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
                    Say( mLinha+1,  0, Arquivo, '|' );
                    Say( mLinha+1, mCentro, Arquivo, mNegrito+Trim(EmpresasRazao_Social.Value)+mClaro);
                    Say( mLinha+1,143, Arquivo, '|' );
                    If cOrdem.ItemIndex = 0 then
                    Say( mLinha+2,  0, Arquivo, '|                                                        HISTORICOS ORDEM NUMERICA                                                         |' )
                    else
                    Say( mLinha+2,  0, Arquivo, '|                                                       HISTORICOS ORDEM ALFABETICA                                                        |' );
                    Say( mLinha+3,  0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ´' );
                    Say( mLinha+4,  0, Arquivo, '|     CODIGO     |                                                    DESCRICAO                                              | COMPLEMENTO |' );
                    Say( mLinha+5,  0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
                    Inc(mLinha, 6);
                 End;

                 Say( mLinha,  7, Arquivo, PoeZero(4, HistoricosCodigo.Value) );
                 Say( mLinha, 19, Arquivo, HistoricosDescricao.Value );
                 If HistoricosComplemento.Value = True then
                    Say( mLinha, 134, Arquivo, 'C' );

                 Inc(mLinha);

                 Historicos.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;

                 If (mLinha > 60) or (Historicos.Eof) then begin
                    mLinha := 61;
                    Say( mLinha  ,  0, Arquivo, 'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ' );
                    Say( mLinha+1,  0, Arquivo, 'Cybersoft Sistemas  | '+ EmpresasContador_Nome.Value+' - '+EmpresasContador_CRC.Value+'     |                  ' + DataExtenso( MunicipiosNome.Value, Date) );
                    Say( mLinha+1,126, Arquivo, '|  PAGINA:'+PoeZero(3, mPagina) );
                    Say( mLinha+1,150, Arquivo, mEjeta );
                    If not Historicos.Eof then Inc(mPagina);
                    mLinha := 0;
                    CloseFile(Arquivo);
                 End;
           End;
      End;
      Janela_Processamento.Close;
      Screen.Cursor := crDefault;

      // Gerando a visualização do arquivo.
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
      mNomeArq := mNomeArq +'\Impressao';

      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq := mNomeArq+'\HISTORICOS_PG';

      Impressao_Visualizar          := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.mNome    := mNomeArq;
      Impressao_Visualizar.mArquivo := mNomeArq;
      If cOrdem.ItemIndex = 0 then Impressao_Visualizar.mTitulo := 'Historicos ordem numérico';
      If cOrdem.ItemIndex = 1 then Impressao_Visualizar.mTitulo := 'Historicos ordem alfabetica';
      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := 1;
      Impressao_Visualizar.ShowModal;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(mNomeArq, mPagina);
end;

procedure TImpressao_ContabeisOP_Historicos.rHistoricosBeforePrint(Sender: TObject);
begin
      lData.Caption := DataExtenso( Dados.MunicipiosNome.Value, Date );
      If cOrdem.ItemIndex = 0 then
         lTitulo.Caption := 'Históricos - Ordem Numerica'
      else
         lTitulo.Caption := 'Históricos - Ordem Alfabetica';
end;

procedure TImpressao_ContabeisOP_Historicos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ContabeisOP_Historicos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ContabeisOP_Historicos.bImprimirClick(Sender: TObject);
begin
      With Dados, dmContab do begin
           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ');
           If cOrdem.ItemIndex = 0 then begin
              Historicos.SQL.Add('ORDER BY Codigo, Descricao')
           end else begin
              Historicos.SQL.Add('ORDER BY Descricao, Codigo');
           End;
           Historicos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
      End;

      If cImpressora.ItemIndex = 0 then
         Historicos_MTC
      else begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rHistoricos.Print;
         rHistoricos.FreeOnRelease;
      End;
end;

end.
