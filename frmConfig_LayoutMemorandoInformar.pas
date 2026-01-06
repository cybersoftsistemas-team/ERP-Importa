unit frmConfig_LayoutMemorandoInformar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Buttons, Vcl.ExtCtrls, DBCtrls, RXSpin, Funcoes, Mask;

type
  TConfig_LayoutMemorandoInformar = class(TForm)
    Panel1: TPanel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cLinha: TRxSpinEdit;
    cColuna: TRxSpinEdit;
    StaticText5: TStaticText;
    cTamanho: TRxSpinEdit;
    StaticText6: TStaticText;
    cMascara: TDBEdit;
    StaticText7: TStaticText;
    DBEdit1: TDBEdit;
    StaticText8: TStaticText;
    DBComboBox1: TDBComboBox;
    StaticText9: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    bOK: TButton;
    bCancelar: TButton;
    DBEdit3: TDBEdit;
    StaticText10: TStaticText;
    procedure bOKClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_LayoutMemorandoInformar: TConfig_LayoutMemorandoInformar;

implementation

uses frmDados;

{$R *.dfm}

procedure TConfig_LayoutMemorandoInformar.bOKClick(Sender: TObject);
begin
        Dados.ImpressaoMemorandoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoMemorandoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoMemorandoTamanho.Value := cTamanho.AsInteger;
        Dados.ImpressaoMemorando.Post;
        Close;
end;

procedure TConfig_LayoutMemorandoInformar.SpeedButton1Click(Sender: TObject);
begin
        Dados.ImpressaoMemorandoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoMemorandoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoMemorandoTamanho.Value := cTamanho.AsInteger;
        Dados.ImpressaoMemorando.Post;
        Dados.ImpressaoMemorando.Prior;
        Dados.ImpressaoMemorando.Edit;
        cLinha.Value   := Dados.ImpressaoMemorandoLinha.Value;
        cColuna.Value  := Dados.ImpressaoMemorandoColuna.Value;
        cTamanho.Value := Dados.ImpressaoMemorandoTamanho.Value;
end;

procedure TConfig_LayoutMemorandoInformar.SpeedButton2Click(Sender: TObject);
begin
        Dados.ImpressaoMemorandoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoMemorandoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoMemorandoTamanho.Value := cTamanho.AsInteger;
        Dados.ImpressaoMemorando.Post;
        Dados.ImpressaoMemorando.Next;
        Dados.ImpressaoMemorando.Edit;
        cLinha.Value   := Dados.ImpressaoMemorandoLinha.Value;
        cColuna.Value  := Dados.ImpressaoMemorandoColuna.Value;
        cTamanho.Value := Dados.ImpressaoMemorandoTamanho.Value;
end;

procedure TConfig_LayoutMemorandoInformar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Config_LayoutMemorandoInformar.Release;
     Config_LayoutMemorandoInformar := nil;
end;

procedure TConfig_LayoutMemorandoInformar.FormShow(Sender: TObject);
begin
        Dados.ImpressaoMemorando.Edit;
        cLinha.Value   := Dados.ImpressaoMemorandoLinha.Value;
        cColuna.Value  := Dados.ImpressaoMemorandoColuna.Value;
        cTamanho.Value := Dados.ImpressaoMemorandoTamanho.Value;
end;

procedure TConfig_LayoutMemorandoInformar.bCancelarClick(Sender: TObject);
begin
        Dados.ImpressaoMemorando.Cancel;
        Close;
end;

end.

