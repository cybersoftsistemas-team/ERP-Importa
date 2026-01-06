unit frmPedido_EndEntregaRetirada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls, Mask;

type
  TPedido_EndEntregaRetirada = class(TForm)
    bOK: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox9: TGroupBox;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText65: TStaticText;
    DBLookupComboBox12: TDBLookupComboBox;
    cMunicipioEntregaNome: TDBLookupComboBox;
    StaticText66: TStaticText;
    StaticText67: TStaticText;
    DBEdit51: TDBEdit;
    StaticText114: TStaticText;
    DBEdit81: TDBEdit;
    StaticText120: TStaticText;
    DBEdit84: TDBEdit;
    StaticText121: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit85: TDBEdit;
    StaticText122: TStaticText;
    DBEdit86: TDBEdit;
    StaticText123: TStaticText;
    StaticText124: TStaticText;
    DBEdit87: TDBEdit;
    StaticText125: TStaticText;
    DBEdit88: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    StaticText126: TStaticText;
    StaticText127: TStaticText;
    StaticText128: TStaticText;
    StaticText129: TStaticText;
    StaticText130: TStaticText;
    StaticText131: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    StaticText132: TStaticText;
    StaticText133: TStaticText;
    DBEdit94: TDBEdit;
    StaticText135: TStaticText;
    DBEdit96: TDBEdit;
    StaticText136: TStaticText;
    DBLookupComboBox17: TDBLookupComboBox;
    DBEdit97: TDBEdit;
    StaticText137: TStaticText;
    DBEdit98: TDBEdit;
    StaticText138: TStaticText;
    StaticText139: TStaticText;
    DBEdit99: TDBEdit;
    StaticText140: TStaticText;
    DBEdit100: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_EndEntregaRetirada: TPedido_EndEntregaRetirada;

implementation



{$R *.dfm}

procedure TPedido_EndEntregaRetirada.bOKClick(Sender: TObject);
begin
     close;
end;

end.
