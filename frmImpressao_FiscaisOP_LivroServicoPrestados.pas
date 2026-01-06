unit frmImpressao_FiscaisOP_LivroServicoPrestados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, MaskUtils, Vcl.StdCtrls, Mask,
   INIFiles, Funcoes, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppParameter, ppReport, ppVar,
  MemDS, RxToolEdit, ppDesignLayer, ppDB, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FiscaisOP_LivroServicoPrestados = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText1: TStaticText;
    cImpressora: TRadioGroup;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    rServico: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    pEmpresas: TppDBPipeline;
    pNotas: TppDBPipeline;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    pPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppDBText5: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppLine6: TppLine;
    ppDBText6: TppDBText;
    ppLine7: TppLine;
    ppLabel10: TppLabel;
    ppLine8: TppLine;
    ppDBText7: TppDBText;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLine10: TppLine;
    ppDBText8: TppDBText;
    ppLine11: TppLine;
    ppLabel12: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppLine14: TppLine;
    ppDBText10: TppDBText;
    ppLine15: TppLine;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine17: TppLine;
    ppShape4: TppShape;
    ppLabel15: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    pISS: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSystemVariable1: TppSystemVariable;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    lMovimento: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Filtra;
    procedure Servico;
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure rServicoBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mImprimir  : Boolean;
    mLinha     : Integer;
    mPagina    : Integer;
    mNomeArq   : String;
    Arquivo    : TextFile;
    mTotalNota : Currency;
    mNaoTribut : Currency;
    mBaseCalc  : Currency;
    mTotalISS  : Currency;
  end;

var
  Impressao_FiscaisOP_LivroServicoPrestados: TImpressao_FiscaisOP_LivroServicoPrestados;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_LivroServicoPrestados.bSairClick( Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_LivroServicoPrestados.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_SERVICOS_PRESTADOS', 'Impressora'    , 1);
      aINI.WriteDate   ( 'IMPRESSAO_SERVICOS_PRESTADOS', 'DataIni'       , cDataIni.Date );
      aINI.WriteDate   ( 'IMPRESSAO_SERVICOS_PRESTADOS', 'DataFim'       , cDataFim.Date );
      aINI.Free;

      Dados.Clientes.MasterSource := nil;
      Dados.Clientes.MasterFields := '';
      Dados.Clientes.Close;
      tNotas.Close;
      Dados.Empresas.Close;
      Dados.Estados.Close;
      Dados.Configuracao.Close;

      LimpaMemoria;
      Impressao_FiscaisOP_LivroServicoPrestados.Release;
      Impressao_FiscaisOP_LivroServicoPrestados := nil;   
end;

procedure TImpressao_FiscaisOP_LivroServicoPrestados.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_SERVICOS_PRESTADOS', 'Impressora'    , 1 );
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_SERVICOS_PRESTADOS', 'DataIni'       , Date );
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_SERVICOS_PRESTADOS', 'DataFim'       , Date );
      aINI.Free;
end;

procedure TImpressao_FiscaisOP_LivroServicoPrestados.Filtra;
Begin
      If cDataIni.Date > cDataFim.Date then begin
         ShowMessage('Data Inicial não pode maior que a data final.');
         Abort;
      End;
      If (cDataIni.Text = '  /  /    ') or (cDataFim.Text = '  /  /    ') then begin
         ShowMessage('Data invalida.');
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT Data_Emissao, DAY(Data_Emissao) AS Dia, Numero, Modelo, Serie, Valor_Servico as Total_Nota, 0 AS Nao_Tributado, Valor_Servico AS Base_Calculo, Valor_ISS');
           tNotas.SQL.Add('FROM NotasServico');
           tNotas.SQL.Add('WHERE (Data_Emissao BETWEEN :pDataIni AND :pDataFim)' );
           tNotas.SQL.Add('ORDER BY Data_Emissao ASC' );
           tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tNotas.Open;
           {
           If tNotas.RecordCount = 0 then begin
              Screen.Cursor := crDefault;
              ShowMessage('Nenhum registro encontrado com o período informado!');
              Abort;
           End;
           }
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           
           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);
           Clientes.Open;
           Impostos.Open;
           Impostos.Locate('Codigo', 'ISS', [loCaseInsensitive]);
      End;

      lMovimento.Visible := tNotas.RecordCount = 0;

      If cImpressora.ItemIndex = 0 then begin
         Servico;
      End else begin
         rServico.Reset;
         rServico.Print;
         Screen.Cursor := crDefault;
      End;
      Screen.Cursor := crDefault;
end;


procedure TImpressao_FiscaisOP_LivroServicoPrestados.Servico;
begin

      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro registro de serviços...';
      Janela_Processamento.Show;
      tNotas.First;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha      := 0;
           mPagina     := 0;
           LinhaAtual  := 0;
           ColunaAtual := 0;
           mTotalNota  := 0;
           mBaseCalc   := 0;
           mNaoTribut  := 0;
           mTotalISS   := 0;

           tNotas.First;

           While (not tNotas.Eof) and (FUNCOES.Cancelado = False) do begin
                 // Cabeçalho do relatorio.
                 If mLinha = 0 then begin
                    Inc(mPagina);
                    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2_PG'+PoeZero(4, mPagina)+'.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
                    Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE PRESTACOES DE SERVICOS');
                    Say( mLinha+01, 133, Arquivo, '³' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA             : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 133, Arquivo, '³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSCRICAO ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) + '                    CNPJ: '+FormatMaskText('99.999.999/9999-99;0; ', EmpresasCNPJ.Value) );
                    Say( mLinha+04, 133, Arquivo, '³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA             : '+ PoeZero(3,mPagina)+'                          PERIODO: '+cDataIni.Text+ ' a '+cDataFim.Text );
                    Say( mLinha+05, 133, Arquivo, '³' );
                    Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+07,   0, Arquivo, '³ DIA ³  NOTA   ³ MODELO ³ SERIE ³   VALOR NOTA   ³ NAO TRIBUTADOS ³  BASE CALCULO  ³                    OBSERVACOES                 ³');
                    Say( mLinha+08,   0, Arquivo, 'ÃÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,09);                                                  
                 End;                                                                 
                 
                 // Imprimindo linha de itens.
                 Say( mLinha,   0, Arquivo, '|  ' +PoeZero(2, tNotas.FieldByName('Dia').AsInteger ) );
                 Say( mLinha,  06, Arquivo, '| ' +PoeZero(7, tNotas.FieldByName('Numero').AsInteger) );
                 Say( mLinha,  16, Arquivo, '| ' +tNotas.FieldByName('Modelo').AsString );
                 Say( mLinha,  25, Arquivo, '| ' +Copy(tNotas.FieldByName('Serie').AsString,1,3) );
                 Say( mLinha,  33, Arquivo, '| ' +PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Total_Nota').AsCurrency), 14) );
                 Say( mLinha,  50, Arquivo, '| ' +PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Nao_Tributado').AsCurrency), 14) );
                 Say( mLinha,  67, Arquivo, '| ' +PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Base_Calculo').AsCurrency), 14) );
                 Say( mLinha,  84, Arquivo, '|' );
                 Say( mLinha, 133, Arquivo, '|' );

                 mTotalNota  := mTotalNota + tNotas.FieldByName('Total_Nota').AsCurrency;
                 mBaseCalc   := mBaseCalc  + tNotas.FieldByName('Base_Calculo').AsCurrency;
                 mNaoTribut  := mNaoTribut + tNotas.FieldByName('Nao_Tributado').AsCurrency;
                 mTotalISS   := mTotalISS  + tNotas.FieldByName('Valor_ISS').AsCurrency;

                 tNotas.Next;
                 Inc(mLinha);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;

                 If (mLinha >= 60) or (tNotas.Eof) then begin
                    Say( mLinha  ,  0, Arquivo, 'ÃÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+1,  0, Arquivo, '³          TOTAIS                ³ ' +PadR(FormatFloat('###,###,##0.00', mTotalNota), 14) ) ;
                    Say( mLinha+1, 50, Arquivo, '³ ' +PadR(FormatFloat('###,###,##0.00', mNaoTribut), 14) ) ;
                    Say( mLinha+1, 67, Arquivo, '³ ' +PadR(FormatFloat('###,###,##0.00', mBaseCalc), 14) ) ;
                    Say( mLinha+1, 84, Arquivo, '³ //////////////////////////////////////////////');
                    Say( mLinha+1,133, Arquivo, '³' );
                    Say( mLinha+2,  0, Arquivo, '³          VALOR DO ISS ('+PadR(FormatFloat('#0.00', Impostos.FieldByName('Valor').AsFloat), 5)+'%) ³ '+PadR(FormatFloat('###,###,##0.00', mTotalISS), 14));
                    Say( mLinha+2, 50, Arquivo, '³ ' ) ;
                    Say( mLinha+2, 67, Arquivo, '³ ' ) ;
                    Say( mLinha+2, 84, Arquivo, '³ //////////////////////////////////////////////');
                    Say( mLinha+2,133, Arquivo, '³' );
                    Say( mLinha+3,  0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    mLinha := 0;
                    CloseFile(Arquivo);
                 End;
                 Application.ProcessMessages;

           End;
      End;
      Janela_Processamento.Close;
      
      If mImprimir <> True then begin
         Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
         Impressao_Visualizar.mNome    := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2_PG';
         Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
         Impressao_Visualizar.mArquivo := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2_PG0001.TXT';
         Impressao_Visualizar.mTitulo  := 'REGISTRO DE SAIDAS - (Modelo P2)';
         Impressao_Visualizar.mPaginas := mPagina;
         Impressao_Visualizar.mPag     := 1;
         Impressao_Visualizar.ShowModal;
      end;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2_PG', mPagina);
End;

procedure TImpressao_FiscaisOP_LivroServicoPrestados.FormCreate( Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_LivroServicoPrestados.bImprimirClick(Sender: TObject);
begin
      mImprimir := False;
      Filtra;
end;

procedure TImpressao_FiscaisOP_LivroServicoPrestados.rServicoBeforePrint(Sender: TObject);
begin
      pPeriodo.Text := cDataIni.Text + ' á ' + cDataFim.Text;
      pISS.Text     := 'VALOR DO ISS ('+PadR(FormatFloat('#0.00', Dados.Impostos.FieldByName('Valor').AsFloat), 5)+'%)';
end;

end.


