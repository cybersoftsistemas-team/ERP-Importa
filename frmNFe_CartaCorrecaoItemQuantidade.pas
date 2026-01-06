unit frmNFe_CartaCorrecaoItemQuantidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, RxLookup, system.UITypes,
  Mask, RxCurrEdit, RxToolEdit;

type
    TNFe_CartaCorrecaoItemQuantidade = class(TForm)
    StaticText20: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cQtdeNova: TCurrencyEdit;
    Button1: TButton;
    Button2: TButton;
    cUnidadeAtual: TRxDBLookupCombo;
    cUnidadeNova: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NFe_CartaCorrecaoItemQuantidade: TNFe_CartaCorrecaoItemQuantidade;

implementation

uses frmDMFiscal;

{$R *.dfm}

procedure TNFe_CartaCorrecaoItemQuantidade.Button1Click(Sender: TObject);
begin
      Close;
end;

procedure TNFe_CartaCorrecaoItemQuantidade.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     NFe_CartaCorrecaoItemQuantidade.Release;
     NFe_CartaCorrecaoItemQuantidade := nil;
end;

procedure TNFe_CartaCorrecaoItemQuantidade.Button2Click(Sender: TObject);
begin
      With dmFiscal do begin
           If cUnidadeNova.Text = cUnidadeAtual.Text then begin
              MessageDlg('Unidade de medida Original e Nova são iguais!', mtInformation, [mbOK], 0);
              cUnidadeNova.SetFocus;
              Abort;
           End;
           If Trim(cUnidadeNova.Text) = '' then begin
              MessageDlg('Unidade de medida Nova deve ser informada!', mtInformation, [mbOK], 0);
              cUnidadeNova.SetFocus;
              Abort;
           End;
           If cQtdeNova.Value = NotasItensQuantidade.Value then begin
              MessageDlg('Quantidades Original e Nova são iguais!', mtInformation, [mbOK], 0);
              cQtdeNova.SetFocus;
              Abort;
           End;
           If cQtdeNova.Value <= 0 then begin
              MessageDlg('Valor inválido para a Nova quantidade!', mtInformation, [mbOK], 0);
              cQtdeNova.SetFocus;
              Abort;
           End;

           NotasItens.Edit;
                      NotasItensUnidade_Original.Value    := NotasItensUnidade_Medida.Value;
                      NotasItensUnidade_Medida.Value      := cUnidadeNova.KeyValue;
                      NotasItensQuantidade_Original.Value := NotasItensQuantidade.Value;
                      NotasItensQuantidade.Value          := cQtdeNova.Value;
           Notasitens.Post;
      End;

      Close;
end;

end.
