unit frmImpressao_Faturamento_Duplicatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl,
  ATXPtask, RXCtrls, Buttons, Mask, Funcoes, DB, MaskUtils;

type
  TImpressao_Faturamento_Duplicatas = class(TForm)
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    XPPanel1: TXPPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    TabEnter1: TTabEnter;
    BitBtn1: TBitBtn;
    bSelTodas: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSelTodasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo     : TextFile;
    mNomeArq    : String;
    mExtenso    : String;
  end;

var
  Impressao_Faturamento_Duplicatas: TImpressao_Faturamento_Duplicatas;

implementation

uses frmDMFiscal, frmDados, frmJanela_Processamento,
  frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_Duplicatas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Faturamento_Duplicatas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_Faturamento_Duplicatas.Release;
      Impressao_Faturamento_Duplicatas := nil;
end;

procedure TImpressao_Faturamento_Duplicatas.FormShow(Sender: TObject);
begin
        With Dados, dmFiscal do begin
             Duplicatas.SQL.Clear;
             Duplicatas.SQL.Add('SELECT * FROM Duplicatas ORDER BY Duplicata DESC, Data_Vencimento');
             Duplicatas.Open;
             Empresas.SQL.Clear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
             Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa; 
             Empresas.Open;
        End;
end;

procedure TImpressao_Faturamento_Duplicatas.bSelTodasClick(Sender: TObject);
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

procedure TImpressao_Faturamento_Duplicatas.BitBtn1Click(Sender: TObject);
Var
    mSel    : Integer;
    mPagina : Integer;
begin
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

                Clientes.Locate('Codigo', FaturaCliente.Value, [loCaseInsensitive]);
                Municipios.Locate('Codigo', ClientesMunicipio_Codigo.Value, [loCaseInsensitive]);
                Estados.Locate('Codigo', ClientesEstado.Value, [loCaseInsensitive]);
                Fatura.SQL.Clear;
                Fatura.SQL.Add('SELECT * FROM Fatura WHERE (Fatura = :pFatura)');
                Fatura.ParamByName('pFatura').AsInteger := DuplicatasFatura.AsInteger;
                Fatura.Open;

                Inc(mPagina);
                mNomeArq := Trim(ConfiguracaoPasta_Impressao.Value)+'\'+Trim(EmpresasRazao_Social.AsString)+'\Impressao';
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
                             mExtenso := '('+ValorExtenso(DuplicatasValor.Value)+')';
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
end;

procedure TImpressao_Faturamento_Duplicatas.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

end.
