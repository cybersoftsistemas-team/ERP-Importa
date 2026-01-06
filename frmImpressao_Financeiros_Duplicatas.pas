unit frmImpressao_Financeiros_Duplicatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, RXCtrls, Buttons,
  Funcoes, DB, MaskUtils, ppReport, ppPrnabl, ppCtrls, ppBands, ppDBPipe, ppMemo, DBAccess, MSAccess, ppParameter,
  DateUtils, ppRegion, Grids, ppDesignLayer, ppStrtch, ppClass, ppCache, ppProd, MemDS, ppDB, ppComm, ppRelatv;

type
  TImpressao_Financeiros_Duplicatas = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TBitBtn;
    bSelTodas: TButton;
    cImpressora: TRadioGroup;
    ppFatura: TppDBPipeline;
    ppEmpresas: TppDBPipeline;
    ppClientes: TppDBPipeline;
    tDuplicatas: TMSQuery;
    dstDuplicatas: TDataSource;
    ppDuplicatas: TppDBPipeline;
    bPesquisa: TButton;
    tPesquisa: TMSQuery;
    cPromissoria: TCheckBox;
    rDuplicata: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel37: TppLabel;
    ppShape24: TppShape;
    ppLine16: TppLine;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppShape25: TppShape;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel41: TppLabel;
    ppShape26: TppShape;
    ppLine19: TppLine;
    ppDBText24: TppDBText;
    ppDBText29: TppDBText;
    ppLine20: TppLine;
    ppLabel42: TppLabel;
    ppLine21: TppLine;
    ppLabel43: TppLabel;
    ppShape27: TppShape;
    ppLine22: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape28: TppShape;
    ppLabel47: TppLabel;
    ppLabel55: TppLabel;
    ppDBText30: TppDBText;
    lEnderecoCliente: TppLabel;
    ppLabel63: TppLabel;
    ppDBText31: TppDBText;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDBText32: TppDBText;
    ppLabel67: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText35: TppDBText;
    ppLabel70: TppLabel;
    ppDBText36: TppDBText;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppLabel71: TppLabel;
    cTexto: TppMemo;
    ppDBText37: TppDBText;
    lVencimento: TppLabel;
    ppShape31: TppShape;
    ppDBText38: TppDBText;
    lEndereco1: TppLabel;
    lEndereco2: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText39: TppDBText;
    lInscricao: TppDBText;
    ppLabel77: TppLabel;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    lTelefones: TppLabel;
    ppLabel79: TppLabel;
    ppDBText43: TppDBText;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine35: TppLine;
    ppLabel83: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    lExtenso: TppMemo;
    pRegiao: TppRegion;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel84: TppLabel;
    ppShape34: TppShape;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppShape35: TppShape;
    ppLabel87: TppLabel;
    ppLine36: TppLine;
    ppLabel88: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel89: TppLabel;
    ppLine39: TppLine;
    ppLabel90: TppLabel;
    ppLine40: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLine41: TppLine;
    ppLabel93: TppLabel;
    ppShape36: TppShape;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLine42: TppLine;
    ppLabel96: TppLabel;
    ppLine43: TppLine;
    ppLabel97: TppLabel;
    ppLine44: TppLine;
    ppLabel98: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel99: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    lDataExtenso: TppLabel;
    ppDBText49: TppDBText;
    lCPFCNPJ: TppDBText;
    lValorExtenso: TppMemo;
    lVencimentoDia: TppLabel;
    lVencimentoMes: TppLabel;
    lVencimentoAno: TppLabel;
    ppLabel104: TppLabel;
    ppDBText51: TppDBText;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    lPagavelEm: TppLabel;
    lLinha: TppLine;
    ppLabel1: TppLabel;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSelTodasClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure rDuplicataBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo  : TextFile;
    mNomeArq : String;
    mExtenso : String;
    mPesquisa: String;
  end;

var
  Impressao_Financeiros_Duplicatas: TImpressao_Financeiros_Duplicatas;

implementation

uses frmDMFiscal, frmDados, frmJanela_Processamento, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Financeiros_Duplicatas.bSairClick(Sender: TObject);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Close;
end;

procedure TImpressao_Financeiros_Duplicatas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Impressao_Financeiros_Duplicatas.Release;
      Impressao_Financeiros_Duplicatas := nil;
end;

procedure TImpressao_Financeiros_Duplicatas.FormShow(Sender: TObject);
begin
        With Dados, dmFiscal do begin
             Duplicatas.SQL.Clear;
             Duplicatas.SQL.Add('SELECT * FROM Duplicatas ORDER BY Duplicata, Data_Vencimento');
             Duplicatas.Open;

             Empresas.SQL.Clear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
             Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa; 
             Empresas.Open;
        End;
end;

procedure TImpressao_Financeiros_Duplicatas.bSelTodasClick(Sender: TObject);
begin
      If bSelTodas.Tag = 0 then begin
         Grade.SelectAll;
         bSelTodas.Tag     := 1;
         bSelTodas.Caption := 'Desmarcar &Todas';
         bSelTodas.Hint    := '  Desmarca todas as duplicatas selecionadas  ';
      End else begin
         Grade.UnselectAll;
         bSelTodas.Tag     := 0;
         bSelTodas.Caption := 'Selecionar &Todas';
         bSelTodas.Hint    := '  Seleciona todas as duplicatas  ';
      End;
end;

procedure TImpressao_Financeiros_Duplicatas.bImprimirClick(Sender: TObject);
Var
    mSel    : Integer;
    mPagina : Integer;
begin
       If Grade.SelectedRows.Count = 0 then begin
          ShowMessage('Nenhum registro selecionado para impressão!');
          Abort;
       End;

       lLinha.Visible := False;
       With Dados, dmFiscal do begin
           // Pega os registros selecionados para impressão.
           tDuplicatas.SQL.Clear;
           tDuplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE Duplicata IN(');
           Duplicatas.First;
           For mSel := 0 to Grade.SelectedRows.Count-1 do begin
               Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
               If mSel = (Grade.SelectedRows.Count-1) then
                  tDuplicatas.SQL.Add(QuotedStr(DuplicatasDuplicata.AsString) )
               else
                  tDuplicatas.SQL.Add(QuotedStr(DuplicatasDuplicata.AsString)+',' );
           End;
           tDuplicatas.SQL.Add(')');
           tDuplicatas.Open;
           tDuplicatas.First;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Codigo = :pCodigo)');
           Municipios.ParamByName('pCodigo').AsString := EmpresasMunicipio_Codigo.AsString;
           Municipios.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
           Clientes.Open;

           Estados.Open;
           Estados.Locate('Codigo', ClientesEstado.AsString, [loCaseInsensitive]);

           Fatura.SQL.Clear;
           Fatura.SQL.Add('SELECT * FROM Fatura ORDER BY Fatura');
           Fatura.Open;
       End;


        If cImpressora.ItemIndex = 0 then begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max       := Grade.SelCount;
           Janela_Processamento.Progresso.Position  := 0;
           Janela_Processamento.Show;
           mPagina := 0;
           With Dados, dmFiscal do begin
                Clientes.Open;
                Municipios.Open;
                Estados.Open;
                ImpDuplicata.SQL.Clear;
                ImpDuplicata.SQL.Add('SELECT * FROM ImpressaoDuplicata WHERE (Imprime = 1) ORDER BY Linha, Coluna');
                ImpDuplicata.Open;
                Configuracao.Open;

                For mSel := 0 to Grade.SelectedRows.Count-1 do begin
                    Janela_Processamento.lProcesso.Caption := 'Imprimindo duplicatas:'+dmFiscal.DuplicatasDuplicata.Value;
                    Application.ProcessMessages;
                    Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

                    Municipios.Locate('Codigo', ClientesMunicipio_Codigo.Value, [loCaseInsensitive]);
                    Estados.Locate('Codigo', ClientesEstado.Value, [loCaseInsensitive]);
                    Fatura.SQL.Clear;
                    Fatura.SQL.Add('SELECT * FROM Fatura WHERE (Fatura = :pFatura)');
                    Fatura.ParamByName('pFatura').AsInteger := DuplicatasFatura.AsInteger;
                    Fatura.Open;

                    Inc(mPagina);
                    mNomeArq := Trim(ConfiguracaoPasta_Impressao.Value)+'\'+Trim(EmpresasRazao_Social.AsString);
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
                    mNomeArq := mNomeArq+'\Impressao';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\DUPLICATA_F'+PoeZero(4, mPagina)+'.TXT';

                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);
                    Write(Arquivo, mComprime17);

                    LinhaAtual  := 1;
                    ColunaAtual := 0;

                    ImpDuplicata.First;
                    While not ImpDuplicata.Eof do begin
                          If UpperCase(ImpDuplicataTabela.AsString) = 'CLIENTES' then begin
                             If UpperCase(ImpDuplicataCampo.AsString) <> 'ENDERECO' then
                                If UpperCase(ImpDuplicataCampo.AsString) <> 'INSCRICAO_ESTADUAL' then
                                   Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, FormatMaskText( ImpDuplicataMascara.AsString, RemoveAcentos(Clientes.FieldByName(ImpDuplicataCampo.AsString).AsString) ) )
                                else
                                   Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, FormatMaskText( EstadosMascara_Inscricao.AsString, RemoveAcentos(Clientes.FieldByName(ImpDuplicataCampo.AsString).AsString) ) )
                             else
                                Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, RemoveAcentos(ClientesRua.Value)+', Nr.'+ClientesRua_Numero.Value+' - '+RemoveAcentos(ClientesBairro.Value) );
                          end else begin
                             If UpperCase(ImpDuplicataCampo.AsString) <> 'EXTENSO' then begin
                                If UpperCase(ImpDuplicataTipo.AsString) <> 'CURRENCY' then begin
                                   If UpperCase(ImpDuplicataTabela.AsString) <> 'FATURA' then begin
                                      If ImpDuplicataMascara.AsString <> '' then
                                         Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, FormatMaskText( ImpDuplicataMascara.AsString, Duplicatas.FieldByName(ImpDuplicataCampo.AsString).AsString ) )
                                       else
                                         Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, Duplicatas.FieldByName(ImpDuplicataCampo.AsString).AsString )
                                   end else begin
                                      If ImpDuplicataMascara.AsString <> '' then
                                         Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, FormatMaskText( ImpDuplicataMascara.AsString, Fatura.FieldByName(ImpDuplicataCampo.AsString).AsString ) )
                                       else
                                         Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, Fatura.FieldByName(ImpDuplicataCampo.AsString).AsString )
                                   End;
                                end else begin
                                   If UpperCase(ImpDuplicataTabela.AsString) <> 'FATURA' then begin
                                      Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, PadR( FormatFloat(ImpDuplicataMascara.AsString, Duplicatas.FieldByName(ImpDuplicataCampo.AsString).AsCurrency),14) );
                                   end else begin
                                      Say( ImpDuplicataLinha.Value, ImpDuplicataColuna.Value, Arquivo, PadR( FormatFloat(ImpDuplicataMascara.AsString, Fatura.FieldByName(ImpDuplicataCampo.AsString).AsCurrency),14) );
                                   End;
                                End;
                             end else begin
                                 mExtenso := '('+ValorExtenso(DuplicatasValor.Value, true)+')';
                                 mExtenso := mExtenso + Replicate('*', (190-Length(mExtenso)) );
                                 Say( ImpDuplicataLinha.Value  , ImpDuplicataColuna.Value, Arquivo, UpperCase(Copy(mExtenso,  01, ImpDuplicataTamanho.Value)) );
                                 Say( ImpDuplicataLinha.Value+1, ImpDuplicataColuna.Value, Arquivo, UpperCase(Copy(mExtenso,  ImpDuplicataTamanho.Value+1, ImpDuplicataTamanho.Value)) );
                             end;
                          End;
                          ImpDuplicata.Next;
                    End;

                    WriteLn( Arquivo, mEjeta);
                    CloseFile(Arquivo);
                End;
                Janela_Processamento.Close;
                Screen.Cursor := crDefault;

                // Gerando a visualização do arquivo.
                Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
                Impressao_Visualizar.mNome    := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.Value+'\Impressao\DUPLICATA_F';
                Impressao_Visualizar.mArquivo := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.Value+'\Impressao\DUPLICATA_F0001.TXT';
                Impressao_Visualizar.mTitulo  := 'Duplicatas a receber';
                Impressao_Visualizar.mPaginas := mPagina;
                Impressao_Visualizar.mPag     := 1;
                Impressao_Visualizar.ShowModal;

                // Deletando os arquivos texto gerados.
                Janela_Processamento := TJanela_Processamento.Create(Self);
                DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+(Dados.EmpresasRazao_Social.AsString)+'\Impressao\DUPLICATA_F', mPagina);
           End;
        end else begin
           With Dados, dmFiscal do begin
                pRegiao.Visible := cPromissoria.Checked;
                if FileExists(Dados.EmpresasLogo.Value) then begin
                   iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
                end;
                //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
                rDuplicata.Print;
                rDuplicata.FreeOnRelease;
                rDuplicata.Reset;
           End;
        End
end;

procedure TImpressao_Financeiros_Duplicatas.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Financeiros_Duplicatas.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Fatura', mPesquisa);

     tPesquisa.SQL.Clear;
     tPesquisa.SQL.Add('SELECT Fatura FROM Duplicatas WHERE(Fatura = :pFatura)');
     tPesquisa.ParamByName('pFatura').AsString := mPesquisa;
     tPesquisa.Open;

     If tPesquisa.RecordCount = 0 then begin
        ShowMessage('Nenhuma duplicata encontrada com o número informado.');
        Abort;
     End;

     dmFiscal.Duplicatas.Locate('Fatura', tPesquisa.FieldByName('Fatura').AsString, [loCaseInsensitive]);
     Grade.SelectedRows.CurrentRowSelected := true;
     Grade.SetFocus;
end;

procedure TImpressao_Financeiros_Duplicatas.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
      dmFiscal.Fatura.Locate('Fatura', tDuplicatas.FieldByName('Fatura').Value, [loCaseInsensitive]);
      Dados.Clientes.Locate('Codigo', dmFiscal.FaturaCliente.Value, [loCaseInsensitive] );
      lEnderecoCliente.Caption := Dados.ClientesRua.Value + ', Nº '+Dados.ClientesRua_Numero.AsString;
      If tDuplicatas.FieldByName('Vencimento').Value = '' then
         lVencimento.Text := tDuplicatas.FieldByName('Data_Vencimento').AsString
      else
         lVencimento.Text := tDuplicatas.FieldByName('Vencimento').AsString;


      If Dados.ConfiguracaoExtenso_Maiusculo.Value = True then
         mExtenso := ValorExtenso2(tDuplicatas.FieldbyName('Valor_Liquido').Value, true, 2)
      else
         mExtenso := ValorExtenso2(tDuplicatas.FieldbyName('Valor_Liquido').Value, true, 0);

      lExtenso.Text := '(' + mExtenso + ')'+Replicate('*', (217-Length(mExtenso)));

      // Nota Promissoria.
      lDataExtenso.Caption := AnsiUpperCase(DataExtenso2(tDuplicatas.FieldByName('Data_Vencimento').AsDateTime));
      lValorExtenso.Text   := '(' + mExtenso + ')'+Replicate('*', (266-Length(mExtenso)));
      lVencimentoDia.Text  := InttoStr(DayOf(tDuplicatas.FieldByName('Data_Vencimento').AsDateTime));
      lVencimentoMes.Text  := AnsiUpperCase(NomeMes(MonthOf(tDuplicatas.FieldByName('Data_Vencimento').AsDateTime)));
      lVencimentoAno.Text  := InttoStr(YearOf(tDuplicatas.FieldByName('Data_Vencimento').AsDateTime));
      If Trim(Dados.ClientesCNPJ.Text) <> '' then lCPFCNPJ.Caption := 'CNPJ' ELSE lCPFCNPJ.Caption := 'CPF';
      lPagavelEm.Caption   := AnsiUpperCase(Trim(Dados.MunicipiosNome.Value) + '/'+Trim(Dados.EmpresasEstado.Value));
end;

procedure TImpressao_Financeiros_Duplicatas.rDuplicataBeforePrint(Sender: TObject);
begin
      lLinha.Visible := False;
      With Dados, dmFiscal do begin
           Fatura.Locate('Fatura', tDuplicatas.FieldByName('Fatura').AsInteger, [loCaseInsensitive]);
           Clientes.Locate('Codigo', dmFiscal.FaturaCliente.Value, [loCaseInsensitive] );


           lInscricao.DisplayFormat := EstadosMascara_Inscricao.AsString;
           lEndereco1.Caption       := Trim(EmpresasRua.Value) + ', Nº '+Trim(EmpresasRua_Numero.AsString)+' - '+Trim(EmpresasBairro.AsString);
           lEndereco2.Caption       := Trim(MunicipiosNome.Value) + ' ('+Trim(EmpresasEstado.Value)+') - CEP:'+EmpresasCEP.Value;
           lTelefones.Caption       := 'Tel:'+FormatMaskText('(##) #########;0',EmpresasTelefone1.Value)+ ' / '+ FormatMaskText('(##) #########;0',EmpresasTelefone2.Value) + '     Fax:'+FormatMaskText('(##) #########;0',EmpresasFax.Value);
           cTexto.Lines.Clear;
           cTexto.Lines.Add('RECONHEÇO (EMOS) A EXATIDÃO DESTA DUPLICATA DE VENDA MERCANTIL, NA IMPORTÂNCIA ACIMA QUE PAGAREI (EMOS) Á '+ Trim(EmpresasRazao_Social.AsString) + ', OU A SUA ORDEM NA PRAÇA DE VENCIMENTO INDICADO.');
      End;
end;

end.
