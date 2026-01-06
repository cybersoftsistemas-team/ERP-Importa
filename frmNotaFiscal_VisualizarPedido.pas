unit frmNotaFiscal_VisualizarPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, FUNCOES, Clipbrd, RXSpin, RxRichEd;

type
  TNotaFiscal_VisualizarPedido = class(TForm)
    Panel1: TPanel;
    bCopiar: TButton;
    bSair: TButton;
    bImprimir: TButton;
    Barra: TStatusBar;
    bSelecionar: TButton;
    cFontes: TComboBox;
    Label1: TLabel;
    cTamanho: TRxSpinEdit;
    Label2: TLabel;
    cMemo: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bCopiarClick(Sender: TObject);
    procedure cFontesChange(Sender: TObject);
    procedure cTamanhoChange(Sender: TObject);
    procedure cMemoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cMemoClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_VisualizarPedido: TNotaFiscal_VisualizarPedido;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TNotaFiscal_VisualizarPedido.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TNotaFiscal_VisualizarPedido.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       LimpaMemoria;
       NotaFiscal_VisualizarPedido.Release;
       NotaFiscal_VisualizarPedido := nil;
end;

procedure TNotaFiscal_VisualizarPedido.FormShow(Sender: TObject);
Var
    mNomeArq : String;
    mPagina  : Integer;
    mArquivo : TextFile;
    mLinha   : String;
begin
      cMemo.Clear;
      cFontes.Items  := Screen.Fonts;
      cFontes.Text   := cMemo.Font.Name;
      cTamanho.Value := cMemo.Font.Size;
      mPagina        := 1;

      Caption              := 'Visualização de Nota Fiscal de Serviço.';
      Barra.Panels[0].Text := ' Tipo:Serviço';
      Barra.Panels[1].Text := ' Nota Nº:'+ PoeZero(6,dmFiscal.NotasServicoNumero.Value);

      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
      mNomeArq := mNomeArq+'\Impressao\NFSERVICO'+PoeZero(6, dmFiscal.NotasServicoNumero.Value)+'_FRM001.txt';

      While True do begin
            AssignFile(mArquivo, mNomeArq);
            Reset(mArquivo);
            While not Eof (mArquivo) do begin
                  ReadLn(mArquivo, mLinha);
                  cMemo.Lines.Add(mLinha);
            End;
            CloseFile(mArquivo);
            cMemo.Lines.Add('');
            cMemo.Lines.Add('');
//            cMemo.Lines.Add(Replicate('*',198));

            Inc(mPagina);
            mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\PD_Saida'+PoeZero(6,Dados.PedidosNumero.Value)+'_P'+PoeZero(2,mPagina)+'.TXT';
            If FileExists(mNomeArq) = False then Break;
      End;
      Barra.Panels[2].Text := ' Formulários:'+InttoStr(mPagina-1);
end;

procedure TNotaFiscal_VisualizarPedido.bSelecionarClick(Sender: TObject);
begin
       cMemo.SelectAll;
       cMemo.Setfocus;
end;

procedure TNotaFiscal_VisualizarPedido.bCopiarClick(Sender: TObject);
begin
     Clipboard.AsText := cMemo.SelText;
end;

procedure TNotaFiscal_VisualizarPedido.cFontesChange(Sender: TObject);
begin
       cMemo.Font.Name := cFontes.Items[cFontes.ItemIndex];
end;

procedure TNotaFiscal_VisualizarPedido.cTamanhoChange(Sender: TObject);
begin
       cMemo.Font.Size := cTamanho.AsInteger;
end;


procedure TNotaFiscal_VisualizarPedido.cMemoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
Var
    mLinha : Integer;
begin
      With cMemo do begin
           mLinha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[3].Text := ' Linha:'+ InttoStr(mLinha);
           Barra.Panels[4].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mLinha, 0));
      end;
end;

procedure TNotaFiscal_VisualizarPedido.cMemoClick(Sender: TObject);
Var
    mLinha : Integer;
begin
      With cMemo do begin
           mLinha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[3].Text := ' Linha:'+ InttoStr(mLinha);
           Barra.Panels[4].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mLinha, 0));
      end;
end;

procedure TNotaFiscal_VisualizarPedido.bImprimirClick(Sender: TObject);
Var
   mArquivo: TextFile;
   i : Integer;
begin
     AssignFile(mArquivo, Dados.ConfiguracaoCaminho_Impressora.AsString);
     Rewrite(mArquivo);

     For i := 0 to cMemo.Lines.Count -1 do begin
         WriteLn(mArquivo, cMemo.Lines[I]);
     End;    
     CloseFile(mArquivo);
end;

end.
