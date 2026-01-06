unit frmPedidosRepresentantes_FiltroFat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPedidosRepresentantes_FiltroFat = class(TForm)
    gDest: TRadioGroup;
    gCli: TRadioGroup;
    gICMSOp: TRadioGroup;
    gICMSSt: TRadioGroup;
    gTrans: TRadioGroup;
    Panel1: TPanel;
    bSair: TButton;
    bFiltrar: TButton;
    bLimpar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bLimparClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PedidosRepresentantes_FiltroFat: TPedidosRepresentantes_FiltroFat;

implementation

{$R *.dfm}

uses frmPedido_RepresentantesSimp;

procedure TPedidosRepresentantes_FiltroFat.bFiltrarClick(Sender: TObject);
begin
      with Pedido_RepresentantesSimp do begin
           mDest   := gDest.ItemIndex;
           mCli    := gCli.ItemIndex; 
           mICMSOp := gICMSOp.ItemIndex;
           mICMSSt := gICMSSt.ItemIndex;
           mTrans  := gTrans.ItemIndex;
      end;
      close;
end;

procedure TPedidosRepresentantes_FiltroFat.bLimparClick(Sender: TObject);
begin
      gDest.ItemIndex   := 0;
      gCli.ItemIndex    := 0;
      gICMSOp.ItemIndex := 0;
      gICMSSt.ItemIndex := 0;
      gTrans.ItemIndex  := 0;      
      with Pedido_RepresentantesSimp do begin
           mDest   := gDest.ItemIndex;
           mCli    := gCli.ItemIndex; 
           mICMSOp := gICMSOp.ItemIndex;
           mICMSSt := gICMSSt.ItemIndex;
           mTrans  := gTrans.ItemIndex;
      end;
      close;
end;

procedure TPedidosRepresentantes_FiltroFat.bSairClick(Sender: TObject);
begin
      close;
end;

procedure TPedidosRepresentantes_FiltroFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     PedidosRepresentantes_FiltroFat.release;
     PedidosRepresentantes_FiltroFat:= nil
end;

end.
