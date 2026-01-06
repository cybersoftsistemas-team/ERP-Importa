unit frmPedido_Visualizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, FUNCOES, Clipbrd, RXSpin, RxRichEd,
  Mask, VrControls, VrDisplay;

type
  TPedido_Visualizar = class(TForm)
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
    VrDisplay1: TVrDisplay;
    cMemo: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bCopiarClick(Sender: TObject);
    procedure cFontesChange(Sender: TObject);
    procedure cTamanhoChange(Sender: TObject);
    procedure cMemoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cMemoClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_Visualizar: TPedido_Visualizar;

implementation

uses frmDados, frmPedido;

{$R *.dfm}

procedure TPedido_Visualizar.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TPedido_Visualizar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       Pedido_Visualizar.Release;
       Pedido_Visualizar := nil;
end;

procedure TPedido_Visualizar.FormShow(Sender: TObject);
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

      Caption := 'Visualização de Pedidos de Nota Fiscal.';
      Barra.Panels[0].Text := ' Tipo:ENTRADA';
      If Pedido.mSai_Entra <> 0 then
         Caption := ' Tipo:SAÍDA';
      Barra.Panels[1].Text := ' Pedido Nº:'+ PoeZero(6,Dados.PedidosNumero.Value);

      mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\PD_Saida'+PoeZero(6,Dados.PedidosNumero.Value)+'_F'+PoeZero(2,mPagina)+'.TXT';

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
            cMemo.Lines.Add(Replicate('-',198));

            Inc(mPagina);
            mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\PD_Saida'+PoeZero(6,Dados.PedidosNumero.Value)+'_F'+PoeZero(2,mPagina)+'.TXT';
            If FileExists(mNomeArq) = False then Break;
      End;
      Barra.Panels[2].Text := ' Formulários:'+InttoStr(mPagina-1);
end;

procedure TPedido_Visualizar.bSelecionarClick(Sender: TObject);
begin
       cMemo.SelectAll;
       cMemo.Setfocus;
end;

procedure TPedido_Visualizar.bCopiarClick(Sender: TObject);
begin
     Clipboard.AsText := cMemo.SelText;
end;

procedure TPedido_Visualizar.cFontesChange(Sender: TObject);
begin
       cMemo.Font.Name := cFontes.Items[cFontes.ItemIndex];
end;

procedure TPedido_Visualizar.cTamanhoChange(Sender: TObject);
begin
       cMemo.Font.Size := cTamanho.AsInteger;
end;


procedure TPedido_Visualizar.cMemoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
Var
    mLinha : Integer;
begin
      With cMemo do begin
           mLinha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[3].Text := ' Linha:'+ InttoStr(mLinha);
           Barra.Panels[4].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mLinha, 0));
      end;
end;

procedure TPedido_Visualizar.cMemoClick(Sender: TObject);
Var
    mLinha : Integer;
begin
      With cMemo do begin
           mLinha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[3].Text := ' Linha:'+ InttoStr(mLinha);
           Barra.Panels[4].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mLinha, 0));
      end;
end;

procedure TPedido_Visualizar.FormPaint(Sender: TObject);
begin
      cMemo.Width    := vrDisplay1.Width - 20;

end;

end.
