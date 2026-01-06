unit frmConfig_TipoNotaInformar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Mask, Vcl.ExtCtrls, RXSpin, mdTabEnter, Buttons;

type
  TConfig_TipoNotaInformar = class(TForm)
    Panel1: TPanel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cLinha: TRxSpinEdit;
    TabEnter1: TTabEnter;
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
    procedure bCancelarClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_TipoNotaInformar: TConfig_TipoNotaInformar;

implementation

uses frmDados;

{$R *.dfm}

procedure TConfig_TipoNotaInformar.bCancelarClick(Sender: TObject);
begin
        Dados.Impressao.Cancel;
        Close;
end;

procedure TConfig_TipoNotaInformar.bOKClick(Sender: TObject);
begin
        Dados.ImpressaoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoTamanho.Value := cTamanho.AsInteger;
        Dados.Impressao.Post;
        Close;
end;

procedure TConfig_TipoNotaInformar.FormShow(Sender: TObject);
begin
        Dados.Impressao.Edit;
        cLinha.Value   := Dados.ImpressaoLinha.Value;
        cColuna.Value  := Dados.ImpressaoColuna.Value;
        cTamanho.Value := Dados.ImpressaoTamanho.Value;
end;

procedure TConfig_TipoNotaInformar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Release;
     Config_TipoNotaInformar := nil;
end;

procedure TConfig_TipoNotaInformar.SpeedButton1Click(Sender: TObject);
begin
        Dados.ImpressaoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoTamanho.Value := cTamanho.AsInteger;
        Dados.Impressao.Post;
        Dados.Impressao.Prior;
        Dados.Impressao.Edit;
        cLinha.Value   := Dados.ImpressaoLinha.Value;
        cColuna.Value  := Dados.ImpressaoColuna.Value;
        cTamanho.Value := Dados.ImpressaoTamanho.Value;
end;

procedure TConfig_TipoNotaInformar.SpeedButton2Click(Sender: TObject);
begin
        Dados.ImpressaoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoTamanho.Value := cTamanho.AsInteger;
        Dados.Impressao.Post;
        Dados.Impressao.Next;
        Dados.Impressao.Edit;
        cLinha.Value   := Dados.ImpressaoLinha.Value;
        cColuna.Value  := Dados.ImpressaoColuna.Value;
        cTamanho.Value := Dados.ImpressaoTamanho.Value;
end;


end.
