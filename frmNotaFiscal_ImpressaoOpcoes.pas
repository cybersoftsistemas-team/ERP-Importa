unit frmNotaFiscal_ImpressaoOpcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, RXSpin, RXCtrls, Mask, Spin,
  VrControls, VrSlideShow, VrSystem, FUNCOES, Grids,
  Vcl.ExtCtrls, VrBlinkLed, RxCurrEdit;

type
  TNotaFiscal_ImpressaoOpcoes = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    lInicio: TLabel;
    bImprimir: TButton;
    bSair: TButton;
    cUltima: TCurrencyEdit;
    cFormulario: TRxSpinEdit;
    cNota: TRxSpinEdit;
    Panel1: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Cabeca: TImage;
    Image2: TImage;
    lImpressao: TRxLabel;
    Led: TVrBlinkLed;
    Label1: TLabel;
    bCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure cNotaTopClick(Sender: TObject);
    procedure cNotaBottomClick(Sender: TObject);
    procedure cFormularioBottomClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_ImpressaoOpcoes: TNotaFiscal_ImpressaoOpcoes;

implementation

uses frmDados;

{$R *.dfm}

procedure TNotaFiscal_ImpressaoOpcoes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Release;
      NotaFiscal_ImpressaoOpcoes := nil;
end;

procedure TNotaFiscal_ImpressaoOpcoes.RadioButton1Click(Sender: TObject);
begin
       lInicio.Enabled := False;
       cFormulario.Enabled := False;
       cNota.Enabled   := False;
end;

procedure TNotaFiscal_ImpressaoOpcoes.RadioButton2Click(Sender: TObject);
begin
       lInicio.Enabled := True;
       cFormulario.Enabled := True;
       cNota.Enabled   := True;
end;

procedure TNotaFiscal_ImpressaoOpcoes.cNotaTopClick(Sender: TObject);
begin
     If cNota.Value > cNota.MaxValue then cNota.Value := cNota.MaxValue;
end;

procedure TNotaFiscal_ImpressaoOpcoes.cNotaBottomClick(Sender: TObject);
begin
       If cNota.Value < cNota.MinValue then cNota.Value := cNota.MinValue;
end;

procedure TNotaFiscal_ImpressaoOpcoes.cFormularioBottomClick(Sender: TObject);
begin
       If cFormulario.Value < 1 then cFormulario.Value := 1;
end;

procedure TNotaFiscal_ImpressaoOpcoes.bImprimirClick(Sender: TObject);
Var
    mArquivo   : TextFile;
    mImpressora: TextFile;
    mNomeArq   : String;
    mLinha     : String;
    mNota      :  Integer;
    mLin       : Integer;
    mForm      : Integer;
    mCar       : Integer;
    mDirecao   : Boolean;
    mLetra     : Integer;
    mImpressao : String;
    i          : Integer;
begin
     mNota := cNota.AsInteger;
     mForm := cFormulario.AsInteger;
     Memo1.Clear;
     Memo2.Clear;
     Memo3.Clear;
     Memo1.Top := 466;
     Memo2.Top := 466;
     Memo3.Top := 466;
     mLin      := 0;
     Led.EnableBlinking := True;
     While mNota <= cUltima.AsInteger do begin
           mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF'+PoeZero(6,mNota)+'_FRM'+PoeZero(3,mForm)+'.TXT';
           If FileExists(mNomeArq) then begin
              AssignFile(mArquivo, mNomeArq);
              Reset(mArquivo);
              AssignFile( mImpressora, Trim(Dados.ConfiguracaoCaminho_Impressora.Value) );
              ReWrite(mImpressora);

              mDirecao := True;
              While not Eof (mArquivo) do begin
                    ReadLn ( mArquivo, mLinha );
                    WriteLn( mImpressora, mLinha );

                    If Length(Trim(mLinha)) <> 0 then begin
                       lImpressao.Caption := '';
                       mLetra := 1;
                       If mDirecao = True then begin
                          For mCar := 2 to Length(TrimRight(mLinha)) do begin
                              Application.ProcessMessages;
                              Cabeca.Left := mCar*4;
                              Cabeca.Repaint;
                              lImpressao.Caption := Copy( mLinha, 1, mLetra );
                              lImpressao.Repaint;
                              Inc(mLetra);
                              For i := 1 to 200 do lImpressao.Caption := lImpressao.Caption;
                          End;
                          mDirecao := False;
                       End else begin
                          lImpressao.Caption := '';
                          mImpressao := Replicate(' ',210);
                          For mCar := Length(TrimRight(mLinha)) Downto 2 do begin
                              Application.ProcessMessages;
                              Cabeca.Left := mCar*4;
                              Cabeca.Repaint;
                              Delete( mImpressao, mCar, 1 );
                              Insert( Copy(mLinha, mCar, 1), mImpressao, mCar );
                              lImpressao.Caption := mImpressao;
                              lImpressao.Repaint;
                              For i := 1 to 200 do lImpressao.Caption := lImpressao.Caption;
                          End;
                          mDirecao := True;
                       End;
                    End else begin
                       //Retorno da cabeca de impressão.
                       lImpressao.Caption := '';
                       If Cabeca.Left > 2 then begin
                          For mCar := Cabeca.Left Downto 2 do begin
                              Application.ProcessMessages;
                              Cabeca.Left := mCar;
                              Cabeca.Repaint;
                          End;
                       End;
                       mDirecao := True;
                    End;

                    If Odd(mLin) then begin
                       Memo2.Lines.Add(' O |');
                       Memo3.Lines.Add('| O ');
                    End else begin
                       Memo2.Lines.Add('   |');
                       Memo3.Lines.Add('|  ');
                    End;
                    Memo1.Lines.Add(mLinha);
                    Inc(mLin);
                    If Memo1.Top >= 8 then Memo1.Top := Memo1.Top - 6;
                    If Memo2.Top >= 8 then Memo2.Top := Memo2.Top - 6;
                    If Memo3.Top >= 8 then Memo3.Top := Memo3.Top - 6;
                    Memo1.Repaint;
                    Memo2.Repaint;
                    Memo3.Repaint;
              End;
              Memo1.Lines.Add('');
              Memo1.Lines.Add('');
              Memo1.Lines.Add( Replicate('-', 230));
              Memo1.Lines.Add('');
              Memo1.Lines.Add('');
              If Memo1.Top >= 8 then Memo1.Top := 8;
              If Memo2.Top >= 8 then Memo2.Top := 8;
              If Memo3.Top >= 8 then Memo3.Top := 8;
              CloseFile(mArquivo);
              CloseFile(mImpressora);
              Inc(mForm);
           End else begin
              mForm := 1;
              Inc(mNota);
           End;
     End;
     lImpressao.Caption := '';
     For mCar := Cabeca.Left Downto 2 do begin
         Application.ProcessMessages;
         Cabeca.Left := mCar;
         Cabeca.Repaint;
     End;
     Led.EnableBlinking := False;
end;

procedure TNotaFiscal_ImpressaoOpcoes.FormShow(Sender: TObject);
begin
       lImpressao.Caption := '';
end;

procedure TNotaFiscal_ImpressaoOpcoes.bSairClick(Sender: TObject);
begin
       Close;
end;

end.
