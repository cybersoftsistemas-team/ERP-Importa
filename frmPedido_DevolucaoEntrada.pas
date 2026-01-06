unit frmPedido_DevolucaoEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, mdTabEnter, DBCtrls, Vcl.StdCtrls,
  Mask, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids, RXDBCtrl;

type
  TPedido_DevolucaoEntrada = class(TForm)
    Image2: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    XPPanel1: TXPPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cTipoNota: TDBLookupComboBox;
    StaticText10: TStaticText;
    cObservacao: TDBMemo;
    cNotaReferencia: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText2: TStaticText;
    DBEdit8: TDBEdit;
    cEntrada_Saida: TEdit;
    StaticText22: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    TabEnter1: TTabEnter;
    Referencia: TMSQuery;
    ReferenciaNumero: TIntegerField;
    ReferenciaEmpresa: TSmallintField;
    ReferenciaData_Emissao: TDateTimeField;
    tPedido: TMSQuery;
    tPedidoNumero: TIntegerField;
    StaticText12: TStaticText;
    cCodigoNatureza: TDBEdit;
    cNatureza: TDBLookupComboBox;
    lNatureza: TStaticText;
    cNaturezaOrigem: TMaskEdit;
    cDescricaoOrigem: TMaskEdit;
    GroupBox1: TGroupBox;
    Grade: TRxDBGrid;
    GroupBox2: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_DevolucaoEntrada: TPedido_DevolucaoEntrada;

implementation

uses frmDados, frmPedido_NotaRefComplementar, frmDMFiscal,
  frmPedido_NotaRefDevolucao;

{$R *.dfm}

procedure TPedido_DevolucaoEntrada.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TPedido_DevolucaoEntrada.FormShow(Sender: TObject);
begin
       With Dados do Begin
            TipoNota.Open;
            Clientes.Open;
            Configuracao.Open;
            Fornecedores.Open;
            Natureza.SQL.Clear;
            Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) ORDER BY Descricao');
            Natureza.Open;

            Pedidos.SQL.Clear;
            Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE Devolucao = 1' );
            Pedidos.Open;
       End;
       With dmFiscal do begin
            NotasItens.SQL.Clear;
            NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota');
            NotasItens.ParamByName('pNota').AsInteger := Dados.PedidosNota_Referencia.Value;
            NotasItens.Open;
       End;
end;

procedure TPedido_DevolucaoEntrada.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then Begin
            Dados.PedidosDevolucao.Value := True;
            Pedido_NotaRefDevolucao := TPedido_NotaRefDevolucao.Create(Self);
            Pedido_NotaRefDevolucao.ShowModal;
            If (Dados.Pedidos.State <> dsEdit) and (Dados.Pedidos.State <> dsInsert) then begin
                Panel2.Enabled := False;
                Screen.Cursor := crDefault;
                Abort;
            End;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cObservacao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Dados.Pedidos.Refresh;
         Panel2.Enabled := False;
      End;
      If Dados.PedidosSaida_Entrada.Value = 0 then begin
         cEntrada_Saida.Text := 'ENTRADA';
         lnatureza.Caption   := 'Natureza na Entrada';
      end else begin
         cEntrada_Saida.Text := ' SAÍDA ';
         lnatureza.Caption   := 'Natureza na Saída';
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoEntrada.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     dmFiscal.NotasItens.Close;
     Dados.TipoNota.Open;
     Dados.Clientes.Open;
     Dados.Configuracao.Open;
     Dados.Fornecedores.Open;
     dmFiscal.NotasItens.Open;
     Dados.Natureza.Close;
     Dados.Pedidos.Close;
     Release;
     Pedido_DevolucaoEntrada := nil;
end;

end.
