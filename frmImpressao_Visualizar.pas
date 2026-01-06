unit frmImpressao_Visualizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, FUNCOES, Clipbrd, RXCtrls, Buttons,
  RXSpin, Vcl.Mask;

type
  TImpressao_Visualizar = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Barra: TStatusBar;
    cFontes: TComboBox;
    Label1: TLabel;
    cTamanho: TRxSpinEdit;
    Label2: TLabel;
    bAnterior: TRxSpeedButton;
    bProxima: TRxSpeedButton;
    bUltima: TRxSpeedButton;
    bPrimeira: TRxSpeedButton;
    bSelecionar: TSpeedButton;
    bCopiar: TSpeedButton;
    bImprimir: TSpeedButton;
    cMemo: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cFontesChange(Sender: TObject);
    procedure cTamanhoChange(Sender: TObject);
    procedure cMemoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cMemoClick(Sender: TObject);
    procedure cMemoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ImprimePagina;
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Carrega;
    procedure bPrimeiraClick(Sender: TObject);
    procedure bUltimaClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure bProximaClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bCopiarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mArquivo : String;
    mNome    : String;
    mTitulo  : String;
    mPaginas : Integer;
    mPag     : Integer;
    mPagIni  : Integer;
  end;

var
  Impressao_Visualizar: TImpressao_Visualizar;

implementation

uses frmDados, frmJanela_Processamento;


{$R *.dfm}

procedure TImpressao_Visualizar.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TImpressao_Visualizar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Impressao_Visualizar.Release;
      Impressao_Visualizar := nil;
end;

procedure TImpressao_Visualizar.FormShow(Sender: TObject);
begin
      cMemo.Clear;
      cFontes.Items      := Screen.Fonts;
      cFontes.Text       := cMemo.Font.Name;
      cTamanho.Value     := cMemo.Font.Size;
      Barra.Panels[0].Text := ' Relatório:'+mTitulo;
      Barra.Panels[4].Text := ' Porta de Impressora:'+Dados.ConfiguracaoCaminho_Impressora.Value;

      Carrega;
      
      cMemo.Lines.Add('');
      cMemo.Lines.Add('');

      mPagIni              := mPag;
      Barra.Panels[1].Text := ' Paginas: '+InttoStr(mPagIni)+'/'+InttoStr(mPaginas);
end;

procedure TImpressao_Visualizar.cFontesChange(Sender: TObject);
begin
       cMemo.Font.Name := cFontes.Items[cFontes.ItemIndex];
end;

procedure TImpressao_Visualizar.cTamanhoChange(Sender: TObject);
begin
       cMemo.Font.Size := cTamanho.AsInteger;
end;


procedure TImpressao_Visualizar.cMemoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
Var
  mPos_Linha : Integer;
begin
      With cMemo do begin
           mPos_Linha           := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[2].Text := ' Linha:'+ InttoStr(mPos_Linha);
           Barra.Panels[3].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mPos_Linha, 0));
           Barra.Repaint;
      end;
end;

procedure TImpressao_Visualizar.cMemoClick(Sender: TObject);
Var
    mPos_Linha : Integer;
begin
      With cMemo do begin
           mPos_Linha := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[2].Text := ' Linha:'+ InttoStr(mPos_Linha);
           Barra.Panels[3].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mPos_Linha, 0));
      end;
end;

procedure TImpressao_Visualizar.cMemoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
Var
    mPos_Linha : Integer;
begin
      With cMemo do begin
           mPos_Linha           := Perform(EM_LINEFROMCHAR,SelStart, 0);
           Barra.Panels[2].Text := ' Linha:'+ InttoStr(mPos_Linha);
           Barra.Panels[3].Text := ' Coluna:'+ InttoStr(SelStart - Perform(EM_LINEINDEX, mPos_Linha, 0));
           Barra.Repaint;
      end;

end;

procedure TImpressao_Visualizar.Carrega;
Var
    mLinha   : String;
    mImprime : TextFile;
begin
      mArquivo := mNome + PoeZero(4, mPag)+'.TXT';
      cMemo.Clear;
      cMemo.Hide;
      If FileExists(mArquivo) then begin
         AssignFile(mImprime, mArquivo);
         Reset(mImprime);

         While not Eof (mImprime) do begin
               ReadLn(mImprime, mLinha);
               mLinha := RemoveCaracter(Chr(27)+Chr(33)+Chr(5), '',mLinha);
               mLinha := RemoveCaracter(Chr(27)+Chr(33)+Chr(4), '',mLinha);
               mLinha := RemoveCaracter( 'G', '',mLinha);
               mLinha := RemoveCaracter( 'H', '',mLinha);
               mLinha := RemoveCaracter(Chr(12), '',mLinha);
               cMemo.Lines.Add(mLinha);
         End;
         CloseFile(mImprime);
         cMemo.Lines.Add('');
         cMemo.Lines.Add('');
         cMemo.SelStart := Perform(EM_LINEINDEX, 0, 0);
         cMemo.Show;
      End;
      Barra.Panels[1].Text := ' Paginas: '+InttoStr(mPag)+'/'+InttoStr(mPaginas);
end;

procedure TImpressao_Visualizar.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If Key = VK_NEXT  then If mPag < mPaginas then begin
         Inc(mPag);
         Carrega;
      End;   
      If Key = VK_PRIOR then If mPag > 1 then begin
         Dec(mPag);
         Carrega;
      End;   
      If (ssCtrl in Shift) and (Key = VK_END) then begin
         mPag := mPaginas;
         Carrega;
      End;
      If (ssCtrl in Shift) and (Key = VK_HOME) then begin
         mPag := 1;
         Carrega;
      End;   
//      If (Key = VK_NEXT) OR (Key = VK_PRIOR) OR (Key = VK_END) OR (Key = VK_HOME) then Carrega;
end;

procedure TImpressao_Visualizar.bPrimeiraClick(Sender: TObject);
begin
        mPag := mPagIni;
        Carrega;
end;

procedure TImpressao_Visualizar.bUltimaClick(Sender: TObject);
begin
        mPag := mPaginas;
        Carrega;
end;

procedure TImpressao_Visualizar.bAnteriorClick(Sender: TObject);
begin
      If mPag > mPagIni then Dec(mPag);
      Carrega;
end;

procedure TImpressao_Visualizar.bProximaClick(Sender: TObject);
begin
      If mPag < mPaginas then Inc(mPag);
      Carrega;
end;

procedure TImpressao_Visualizar.bSelecionarClick(Sender: TObject);
begin
       cMemo.SelectAll;
       cMemo.Setfocus;
end;

procedure TImpressao_Visualizar.bCopiarClick(Sender: TObject);
begin
     Clipboard.AsText := cMemo.SelText;
end;

procedure TImpressao_Visualizar.bImprimirClick(Sender: TObject);
//Var
//    i:Integer;
begin
{
        PrintDialog1.FromPage := mPag;
        PrintDialog1.ToPage   := mPag;
        PrintDialog1.MaxPage  := mPaginas;

        // Enviando a(s) pagina(s) para a impressora.
        If PrintDialog1.Execute then begin
           If PrintDialog1.PrintRange = prAllPages then begin
              For i := mPagIni to mPaginas do begin
                  mArquivo := mNome + PoeZero(4, i)+'.TXT';
                  ImprimePagina;
              End;
           end else begin
              For i := PrintDialog1.FromPage to PrintDialog1.ToPage do begin
                  mArquivo := mNome + PoeZero(4, i)+'.TXT';
                  ImprimePagina;
              End;
           End;
        End;
}        
end;

procedure TImpressao_Visualizar.ImprimePagina;
Var
    mTexto   : String;
    mOrigem  : TextFile;
    mImprime : TextFile;
    mTam     : Integer;
begin
        mTam := 0;
        AssignFile( mOrigem, mArquivo );
        AssignFile( mImprime, Trim(Dados.ConfiguracaoCaminho_Impressora.Value) );
        Reset(mOrigem);
        ReWrite(mImprime);
        // Pegando a quantidade de linhas do arquivo texto.
        While not Eof (mOrigem) do begin
              ReadLn(mOrigem, mTexto);
              Inc(mTam);
        End;
        CloseFile(mOrigem);

        Janela_Processamento := TJanela_Processamento.Create(Self);
        Janela_Processamento.Progresso.Max      := mTam;
        Janela_Processamento.Progresso.Position := 0;
        Janela_Processamento.lProcesso.Caption  := 'Imprimindo pagina '+PoeZero(4, mPag);
        Janela_Processamento.Show;

        Reset(mOrigem);
        While not Eof (mOrigem) do begin
              ReadLn(mOrigem, mTexto);
              WriteLn( mImprime, mTexto );
              Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
              Application.ProcessMessages;
        End;
        Janela_Processamento.Close;
        CloseFile(mOrigem);
        CloseFile(mImprime);
end;



end.
