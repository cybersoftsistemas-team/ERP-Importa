unit frmPedidos_ItensOutras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids,
  RXDBCtrl, Mask, mdTabEnter;

type
  TPedidos_ItensOutras = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    XPPanel1: TXPPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    gItens: TGroupBox;
    GradeItens: TRxDBGrid;
    Panel2: TPanel;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cQuantidade: TDBEdit;
    cValorTotal: TDBEdit;
    cProduto: TDBLookupComboBox;
    cCodigo: TDBEdit;
    DBEdit1: TDBEdit;
    StaticText7: TStaticText;
    StaticText13: TStaticText;
    DBEdit4: TDBEdit;
    GroupBox6: TGroupBox;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    DBEdit23: TDBEdit;
    StaticText31: TStaticText;
    DBEdit24: TDBEdit;
    StaticText32: TStaticText;
    DBEdit25: TDBEdit;
    cCSTICMS: TEdit;
    TabEnter1: TTabEnter;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedidos_ItensOutras: TPedidos_ItensOutras;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TPedidos_ItensOutras.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TPedidos_ItensOutras.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedidos_ItensOutras.Release;
      Pedidos_ItensOutras := nil;
end;

procedure TPedidos_ItensOutras.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedidos_ItensOutras.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados, dmFiscal do begin
             PedidosItens.SQL.Clear;
             PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
             PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             PedidosItens.Open;

             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
             Produtos.Open;

             CSTTabelaB.SQL.Clear;
             CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
             CSTTabelaB.Open;

             CSTIPI.SQL.Clear;
             CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Classificacao');
             CSTIPI.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TPedidos_ItensOutras.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedidos_ItensOutras.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
{
      With Dados, dmFiscal do begin
           // Código de situação tributaria do ICMS (tabela B)
           mCST := '';
           If PedidosItensValor_ICMSOper.Value <> 0 then mCST := mCST + '+O' else mCST := mCST + '-O';  // ICMS Operacional.
           If NCMICMS_Reducao.Value            <> 0 then mCST := mCST + '+R' else mCST := mCST + '-R';  // Reducao de base.
           If TipoNotaSaida_Entrada.Value = 0 then begin
              mCST := mCST + '-S';                                                                                              // ICMS ST na Entrada.
           end else begin
              If NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat <> 0 then mCST := mCST + '+S' else mCST := mCST + '-S';  // ICMS ST na Saida.
           End;
           If NCMICMS_Isento.Value = True                                                    then mCST := '+I';
           If TipoNotaNao_Tributada_ICMS.Value = True                                        then mCST := '+NT';
           If NCMICMS_Suspensao.Value = True                                                 then mCST := '+SUS';
           If (ProcessosDOCICMS_Diferido.Value = True) and (TipoNotaSaida_Entrada.Value = 0) then mCST := '+D';

           If CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
              mCST := '<>';
              CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
           End;

           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
           PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
      End;
}      
end;

end.
