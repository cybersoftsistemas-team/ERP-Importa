unit frmNotaFiscal_ImpEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl;

type
  TNotaFiscal_ImpEntrada = class(TForm)
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    XPPanel1: TXPPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bTudo: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bTudoClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_ImpEntrada: TNotaFiscal_ImpEntrada;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TNotaFiscal_ImpEntrada.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TNotaFiscal_ImpEntrada.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.Pedidos.Close;
      dmFiscal.AIDF.Close;
      Release;
      NotaFiscal_ImpEntrada := nil;
end;

procedure TNotaFiscal_ImpEntrada.FormShow(Sender: TObject);
begin
      With Dados do Begin
           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE Saida_Entrada = 0');
           Pedidos.Open;
      End;
      dmFiscal.AIDF.Open;
end;

procedure TNotaFiscal_ImpEntrada.bTudoClick(Sender: TObject);
begin
       If bTudo.Caption = '&Tudo' then begin
          bTudo.Caption := '&Nenhum';
          Grade.SelectAll;
       end else begin
          bTudo.Caption := '&Tudo';
          Grade.UnselectAll;
       end;
end;

procedure TNotaFiscal_ImpEntrada.bImprimirClick(Sender: TObject);
begin
       If Grade.SelCount = 0 then ShowMessage('Não há nenhum pedido selecionado para a impressão!');
end;

end.
