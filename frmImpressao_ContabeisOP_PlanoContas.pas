unit frmImpressao_ContabeisOP_PlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, MaskUtils, DB, INIFiles, ppBands,
  ppClass, ppDBPipe, ppReport, ppCtrls, ppPrnabl, ppVar, ppParameter, ComObj, ppDB, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ContabeisOP_PlanoContas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cImpressora: TRadioGroup;
    cOrdem: TRadioGroup;
    rPlanoContas: TppReport;
    ppPlanoContas: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppEmpresas: TppDBPipeline;
    ppDBText1: TppDBText;
    lTitulo: TppLabel;
    lItem: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppParameterList1: TppParameterList;
    ppLabel6: TppLabel;
    lData: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    Grupo: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    lNatureza: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine4: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    GroupBox1: TGroupBox;
    cSalto: TCheckBox;
    cNegrito: TCheckBox;
    cMaiusculo: TCheckBox;
    cExcel: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bVisualizarClick(Sender: TObject);
    procedure PlanoContas_MTC;
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure rPlanoContasBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimeExcel;
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha    : Integer;
    mPagina   : Integer;
    Arquivo   : TextFile;
    mNomeArq  : String;
    mGrupo    : String;
    mNatureza : String;
  end;

var
  Impressao_ContabeisOP_PlanoContas: TImpressao_ContabeisOP_PlanoContas;

implementation

uses frmDMContab, frmDados, frmImpressao_Visualizar, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ContabeisOP_PlanoContas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ContabeisOP_PlanoContas.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_PLANOCONTAS', 'Ordem'         , cOrdem.ItemIndex );
      aINI.WriteInteger( 'IMPRESSAO_PLANOCONTAS', 'Impressora'    , 1);
      aINI.WriteBool   ( 'IMPRESSAO_PLANOCONTAS', 'Salto'         , cSalto.Checked );
      aINI.WriteBool   ( 'IMPRESSAO_PLANOCONTAS', 'Negrito'       , cNegrito.Checked );
      aINI.WriteBool   ( 'IMPRESSAO_PLANOCONTAS', 'Maiusculo'     , cMaiusculo.Checked );
      aINI.Free;

      LimpaMemoria;
      Impressao_ContabeisOP_PlanoContas.Release;
      Impressao_ContabeisOP_PlanoContas := nil;
end;

procedure TImpressao_ContabeisOP_PlanoContas.bVisualizarClick(Sender: TObject);
begin
      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas ');
           If cOrdem.ItemIndex = 0 then begin
              PlanoContas.SQL.Add('ORDER BY Conta, Descricao')
           end else begin
              PlanoContas.SQL.Add('WHERE (Sintetica = 0)');
              PlanoContas.SQL.Add('ORDER BY SUBSTRING(Conta,1,5), Descricao');
           End;
           PlanoContas.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
      End;

      If cExcel.Checked = false then begin
         If cImpressora.ItemIndex = 0 then
            PlanoContas_MTC
         else begin
            if FileExists(Dados.EmpresasLogo.Value) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            end;
            //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            rPlanoContas.Print;
            rPlanoContas.FreeOnRelease;
         End;
      end else begin
         ImprimeExcel;
      End;
end;

procedure TImpressao_ContabeisOP_PlanoContas.PlanoContas_MTC;
Var
    mConta    : String;
    mCentro   : Integer;
begin
      Screen.Cursor := crSQLWait;
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := dmContab.PlanoContas.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o plano de contas...';
      Janela_Processamento.Show;
      
      With dmContab, Dados do begin
           mLinha  := 0;
           mPagina := 1;
           mGrupo  := Copy(PlanoContasConta.Value,1,1);

           While (not PlanoContas.Eof) and (Cancelado = False) do begin
                 If mLinha = 0 then begin
                    LinhaAtual  := 0;
                    ColunaAtual := 0;
                    mNomeArq := Trim(ConfiguracaoPasta_Impressao.Value)+'\'+EmpresasRazao_Social.AsString;
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
                    mNomeArq := mNomeArq +'\Impressao';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\PLANOCONTAS_PG'+PoeZero(4, mPagina)+'.TXT';
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
                       Say( mLinha+2,  0, Arquivo, '|                                                         PLANO DE CONTAS NUMERICO                                                         |' )
                    else
                       Say( mLinha+2,  0, Arquivo, '|                                                        PLANO DE CONTAS ALFABETICO                                                        |' );
                    Say( mLinha+3,  0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ´' );
                    Say( mLinha+4,  0, Arquivo, '|     CONTA      |   CODIGO    |                                                  NOME                                          | NATUREZA |' );
                    Say( mLinha+5,  0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ' );
                    Inc(mLinha, 6);
                 End;

                 mConta    := FormatMaskText(EmpresasMascara_PlanoContas.Value+';0', PlanoContasConta.AsVariant)+' ';
                 mConta    := Copy( mConta,1, Pos(' ', mConta) );
                 mConta    := Trim(mConta);

                 If PlanoContasNatureza.Value = 'D' then mNatureza := 'DEVEDORA' else mNatureza := 'CREDORA';

                 If PlanoContasSintetica.Value = False then begin
                    If cMaiusculo.Checked = True then
                       Say( mLinha,  2, Arquivo, mConta + '        ' + PlanoContasCodigo.AsString + '                 ' + UpperCase(Copy(PlanoContasDescricao.Value,1,60)) )
                    else
                       Say( mLinha,  2, Arquivo, mConta + '        ' + PlanoContasCodigo.AsString + '                 ' + Copy(PlanoContasDescricao.Value,1,60) );
                    Say( mLinha, 131, Arquivo, mNatureza );
                 end else begin
                    If cNegrito.Checked = True then
                       Say( mLinha,  2, Arquivo, mNegrito+mConta + '        ' + '      '                   + '                 ' + Copy(PlanoContasDescricao.Value,1,60)+mClaro )
                    else
                       Say( mLinha,  2, Arquivo, mConta + '        ' + '      '                   + '                 ' + Copy(PlanoContasDescricao.Value,1,60) );
                    Say( mLinha, 135, Arquivo, mNatureza );
                 End;

                 PlanoContas.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;

                 If PlanoContasSintetica.Value = True then Inc(mLinha,2) else Inc(mLinha);

                 If (mLinha > 60) or (PlanoContas.Eof) or ( (cSalto.Checked = True) and (Copy(PlanoContasConta.Value,1,1) <> mGrupo) ) then begin
                    If Copy(PlanoContasConta.Value,1,1) <> mGrupo then mGrupo := Copy(PlanoContasConta.Value,1,1);
                    mLinha := 61;
                    Say( mLinha  ,  0, Arquivo, 'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ' );
                    Say( mLinha+1,  0, Arquivo, 'Cybersoft Sistemas                                       '+ DataExtenso( MunicipiosNome.Value, Date) );
                    Say( mLinha+1,129, Arquivo, 'PAGINA:'+PoeZero(3, mPagina) );
                    Say( mLinha+1,150, Arquivo, mEjeta );
                    If not PlanoContas.Eof then Inc(mPagina);
                    mLinha := 0;
                    CloseFile(Arquivo);
                 End;
           End;
      End;
      Janela_Processamento.Close;
      Screen.Cursor := crDefault;

      // Gerando a visualização do arquivo.
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
      mNomeArq := mNomeArq +'\Impressao';

      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq := mNomeArq+'\PLANOCONTAS_PG';

      Impressao_Visualizar          := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.mNome    := mNomeArq;
      Impressao_Visualizar.mArquivo := mNomeArq+'0001.TXT';
      If cOrdem.ItemIndex = 0 then Impressao_Visualizar.mTitulo  := 'Plano de Contas Numérico';
      If cOrdem.ItemIndex = 1 then Impressao_Visualizar.mTitulo  := 'Plano de Contas Alfabetico';
      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := 1;
      Impressao_Visualizar.ShowModal;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(mNomeArq, mPagina);
end;


procedure TImpressao_ContabeisOP_PlanoContas.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cOrdem.ItemIndex      := aINI.ReadInteger('IMPRESSAO_PLANOCONTAS', 'Ordem'         , 0 );
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_PLANOCONTAS', 'Impressora'    , 1 );
      cSalto.Checked        := aINI.ReadBool   ('IMPRESSAO_PLANOCONTAS', 'Salto'         , True );
      cNegrito.Checked      := aINI.ReadBool   ('IMPRESSAO_PLANOCONTAS', 'Negrito'       , True );
      cMaiusculo.Checked    := aINI.ReadBool   ('IMPRESSAO_PLANOCONTAS', 'Maiusculo'     , True );
      aINI.Free;
end;

procedure TImpressao_ContabeisOP_PlanoContas.ppDetailBand1BeforePrint(Sender: TObject);
Var
    mConta : String;
begin
     lItem.Caption := '';
     With Dados, dmContab do begin
          If (PlanoContasSintetica.Value = True) and (cNegrito.Checked = True) then
             lItem.Font.Style := [fsBold]
          else
             lItem.Font.Style := [];

          mConta := FormatMaskText(EmpresasMascara_PlanoContas.Value+';0', PlanoContasConta.AsVariant)+' ';

          If Pos('. ', mConta) > 0 then mConta := Copy(mConta, 1, Pos('. ', mConta)-1);
          
          mConta        := Trim(mConta)+Space( Length(EmpresasMascara_PlanoContas.Value)-Length(Trim(mConta)) );
          lItem.Caption := mConta;

          If PlanoContasNatureza.Value = 'D' then lNatureza.Caption := 'DEVEDORA' else lNatureza.Caption := 'CREDORA';

          If cMaiusculo.Checked = False then begin
             If PlanoContasSintetica.Value = False then
                lItem.Caption := lItem.Caption + '     ' + PlanoContasCodigo.AsString+ '                   ' + PlanoContasDescricao.Value
             else
                lItem.Caption := lItem.Caption + '     ' + '                             ' + PlanoContasDescricao.Value;
          End else begin
             If PlanoContasSintetica.Value = False then
                lItem.Caption := lItem.Caption + '     ' + PlanoContasCodigo.AsString+ '                   ' + UpperCase(PlanoContasDescricao.Value)
             else
                lItem.Caption := lItem.Caption + '     ' + '                            ' + UpperCase(PlanoContasDescricao.Value);
          End;
     End;
end;

procedure TImpressao_ContabeisOP_PlanoContas.ppFooterBand1BeforePrint(Sender: TObject);
begin
      lData.Caption := DataExtenso( Dados.MunicipiosNome.Value, Date)
end;

procedure TImpressao_ContabeisOP_PlanoContas.rPlanoContasBeforePrint(Sender: TObject);
begin
      Grupo.Report.Groups[0].NewPage := cSalto.Checked;
      If cOrdem.ItemIndex = 0 then
         lTitulo.Caption := 'Plano de Contas Numerico'
      else
         lTitulo.Caption := 'Plano de Contas Alfabetico'
end;

procedure TImpressao_ContabeisOP_PlanoContas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

// Envia informações para o excel.
procedure TImpressao_ContabeisOP_PlanoContas.ImprimeExcel;
var
   mPlanilha  : Variant;
//   mEmprestimo: String;
   mLinha     : Integer;
   mConta     : String;
begin
       With dmContab do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := PlanoContas.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible                            := false;
            mPlanilha.Range['A3','D3'].Interior.Color    := RGB(54, 96, 146);
            mPlanilha.Range['A3','D3'].Interior.Pattern  := 1;
            mPlanilha.Range['A3','D3'].Font.Bold         := true;
            mPlanilha.Range['A3','D3'].Font.Color        := clWhite;
            mPlanilha.Range['A3','D3'].Font.Size         := 8;
            mPlanilha.Range['A3','D3'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A3','D3'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A3','D3'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Range['A3','D3'].HorizontalAlignment := 3;

            mPlanilha.Cells[3,01] := 'CONTA';
            mPlanilha.Cells[3,02] := 'CÓDIGO';
            mPlanilha.Cells[3,03] := 'DESCRIÇÃO';
            mPlanilha.Cells[3,04] := 'NATUREZA';

            mPlanilha.Cells[03,01].ColumnWidth := 15;
            mPlanilha.Cells[03,02].ColumnWidth := 10;
            mPlanilha.Cells[03,03].ColumnWidth := 70;
            mPlanilha.Cells[03,04].ColumnWidth := 10;

            mLinha := 4;

            While (not PlanoContas.Eof) and (not Funcoes.Cancelado) do  Begin
                  mPlanilha.Range['A'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 2;
                  //mPlanilha.Cells[mLinha,01] := PlanoContas.FieldByName('Conta').AsString;
                  mConta := FormatMaskText(Dados.EmpresasMascara_PlanoContas.Value+';0', PlanoContasConta.AsVariant)+' ';
                  mConta := Copy( mConta,1, Pos(' ', mConta) );
                  mConta := Trim(mConta);

                  mPlanilha.Cells[mLinha,01] := mConta;
                  mPlanilha.Cells[mLinha,02] := PlanoContas.FieldByName('Codigo').AsString;
                  mPlanilha.Cells[mLinha,03] := PlanoContas.FieldByName('Descricao').AsString;
                  If PlanoContas.FieldByName('Natureza').AsString = 'D' then
                     mPlanilha.Cells[mLinha,04] := 'Devedora'
                  else
                     mPlanilha.Cells[mLinha,04] := 'Credora';

                  PlanoContas.Next;

                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            End;

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
//               KillTask('Excel.exe');    // Microsoft Excel
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            End;

            //mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;

            mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
            mPlanilha.Range['A1','D1'].Font.Size  := 14;
            mPlanilha.Range['A1','D1'].Font.Bold  := true;
            mPlanilha.Range['A1','D1'].Mergecells := True;
            mPlanilha.Range['A1','D2'].HorizontalAlignment := 3;
            mPlanilha.Cells[2,01] := 'Plano de Contas';
            mPlanilha.Range['A2','D2'].Mergecells := True;

            Janela_Processamento.Close;
            mPlanilha.Visible := true;
       End;
end;

End.
