unit frmConfig_LayoutNotaServicoInformar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Buttons, Vcl.ExtCtrls, DBCtrls, RXSpin, Funcoes, Mask;

type
  TConfig_LayoutNotaServicoInformar = class(TForm)
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
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    bOK: TButton;
    bCancelar: TButton;
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
  Config_LayoutNotaServicoInformar: TConfig_LayoutNotaServicoInformar;

implementation

uses frmDados;

{$R *.dfm}

procedure TConfig_LayoutNotaServicoInformar.bOKClick(Sender: TObject);
begin
        Dados.ImpressaoServicoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoServicoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoServicoTamanho.Value := cTamanho.AsInteger;
        Dados.ImpressaoServico.Post;
        Close;
end;

procedure TConfig_LayoutNotaServicoInformar.SpeedButton1Click(Sender: TObject);
begin
        Dados.ImpressaoServicoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoServicoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoServicoTamanho.Value := cTamanho.AsInteger;
        Dados.ImpressaoServico.Post;
        Dados.ImpressaoServico.Prior;
        Dados.ImpressaoServico.Edit;
        cLinha.Value   := Dados.ImpressaoServicoLinha.Value;
        cColuna.Value  := Dados.ImpressaoServicoColuna.Value;
        cTamanho.Value := Dados.ImpressaoServicoTamanho.Value;
end;

procedure TConfig_LayoutNotaServicoInformar.SpeedButton2Click(Sender: TObject);
begin
        Dados.ImpressaoServicoLinha.Value   := cLinha.AsInteger;
        Dados.ImpressaoServicoColuna.Value  := cColuna.AsInteger;
        Dados.ImpressaoServicoTamanho.Value := cTamanho.AsInteger;
        Dados.ImpressaoServico.Post;
        Dados.ImpressaoServico.Next;
        Dados.ImpressaoServico.Edit;
        cLinha.Value   := Dados.ImpressaoServicoLinha.Value;
        cColuna.Value  := Dados.ImpressaoServicoColuna.Value;
        cTamanho.Value := Dados.ImpressaoServicoTamanho.Value;
end;

procedure TConfig_LayoutNotaServicoInformar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Config_LayoutNotaServicoInformar.Release;
     Config_LayoutNotaServicoInformar := nil;
end;

procedure TConfig_LayoutNotaServicoInformar.FormShow(Sender: TObject);
begin
        Dados.ImpressaoServico.Edit;
        cLinha.Value   := Dados.ImpressaoServicoLinha.Value;
        cColuna.Value  := Dados.ImpressaoServicoColuna.Value;
        cTamanho.Value := Dados.ImpressaoServicoTamanho.Value;
end;

procedure TConfig_LayoutNotaServicoInformar.bCancelarClick(
  Sender: TObject);
begin
        Dados.ImpressaoServico.Cancel;
        Close;
end;

end.
