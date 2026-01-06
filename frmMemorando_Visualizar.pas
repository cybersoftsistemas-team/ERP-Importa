unit frmMemorando_Visualizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, FUNCOES, Clipbrd, RXSpin, RxRichEd, Vcl.Mask ;

type
  TMemorando_Visualizar = class(TForm)
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
    mMemoIni : Integer;
    mNomeArq : String;
    mPagina  : Integer;
    mArquivo : TextFile;
    mLinha   : String;
  end;

var
  Memorando_Visualizar: TMemorando_Visualizar;

implementation

uses frmDados;

{$R *.dfm}

procedure TMemorando_Visualizar.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TMemorando_Visualizar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       LimpaMemoria;
       Memorando_Visualizar.Release;
       Memorando_Visualizar := nil;
end;

procedure TMemorando_Visualizar.FormShow(Sender: TObject);
begin
      cMemo.Clear;
      cFontes.Items  := Screen.Fonts;
      cFontes.Text   := cMemo.Font.Name;
      cTamanho.Value := cMemo.Font.Size;
      mPagina        := 1;

      Caption              := 'Visualização do Memorando de Exportação.';
      Barra.Panels[0].Text := ' Tipo:MEMORANDO';
      Barra.Panels[1].Text := ' Memorando Nº:'+ PoeZero(6, mMemoIni );

      Dados.Configuracao.Open;
      mNomeArq := Dados.ConfiguracaoPasta_Impressao.AsString+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
      mNomeArq := mNomeArq+'\MEMO'+PoeZero(6,Dados.MemorandoNumero.Value)+'_FRM'+PoeZero(3,mPagina)+'.TXT';

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
            //cMemo.Lines.Add(Replicate('-',198));

            Inc(mPagina);

            //mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\'+Dados.EmpresasBanco_Dados.AsString+'\MEMO'+PoeZero(6, mMemoIni)+'_FRM'+PoeZero(3,mPagina)+'.TXT';
            mNomeArq := Dados.ConfiguracaoPasta_Impressao.AsString +'\'+Dados.EmpresasRazao_Social.AsString;
            If Dados.EmpresasMatriz_Filial.AsBoolean = true then
               mNomeArq := mNomeArq + '_Matriz'
            else
               mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

            If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
            mNomeArq := mNomeArq+'\MEMO'+PoeZero(6,Dados.MemorandoNumero.Value)+'_FRM'+PoeZero(3,mPagina)+'.TXT';

            If FileExists(mNomeArq) = False then Break;
      End;
      Barra.Panels[2].Text := ' Formulários:'+InttoStr(mPagina-1);
end;

procedure TMemorando_Visualizar.bSelecionarClick(Sender: TObject);
begin
       cMemo.SelectAll;
       cMemo.Setfocus;
end;

procedure TMemorando_Visualizar.bCopiarClick(Sender: TObject);
begin
     Clipboard.AsText := cMemo.SelText;
end;

procedure TMemorando_Visualizar.cFontesChange(Sender: TObject);
begin
       cMemo.Font.Name := cFontes.Items[cFontes.ItemIndex];
end;

procedure TMemorando_Visualizar.cTamanhoChange(Sender: TObject);
begin
       cMemo.Font.Size := cTamanho.AsInteger;
end;


procedure TMemorando_Visualizar.cMemoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
Var
    mLinha : Integer;
begin
      With cMemo do begin
           mLinha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[3].Text := ' Linha:'+ InttoStr(mLinha);
           Barra.Panels[4].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mLinha, 0));
      end;
end;

procedure TMemorando_Visualizar.cMemoClick(Sender: TObject);
Var
    mLinha : Integer;
begin
      With cMemo do begin
           mLinha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[3].Text := ' Linha:'+ InttoStr(mLinha);
           Barra.Panels[4].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mLinha, 0));
      end;
end;

procedure TMemorando_Visualizar.bImprimirClick(Sender: TObject);
Var
   i, c: Integer;
begin
      AssignFile(mArquivo, Dados.ConfiguracaoCaminho_Impressora.AsString);
      Rewrite(mArquivo);

      c := 0;
      For i := 0 to cMemo.Lines.Count -1 do begin
          WriteLn(mArquivo, cMemo.Lines[i]);
          inc(c);
          if c = 66 then begin
             //Write(mArquivo, #27, #103, #12);
            Write(mArquivo, #27, #67 , Char(67));
             c := 0;
          end;   
      End;
      CloseFile(mArquivo);
end;

end.
