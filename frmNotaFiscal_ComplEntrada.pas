unit frmNotaFiscal_ComplEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, DBCtrls, Mask,
  RXDBCtrl, mdTabEnter, DB, MemDS, DBAccess, MSAccess;

type
  TNotaFiscal_ComplEntrada = class(TForm)
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
    lNome: TStaticText;
    StaticText8: TStaticText;
    lDesconto: TStaticText;
    StaticText3: TStaticText;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText10: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBMemo1: TDBMemo;
    TabEnter1: TTabEnter;
    cNotaReferencia: TDBEdit;
    DBEdit2: TDBEdit;
    Referencia: TMSQuery;
    ReferenciaNumero: TIntegerField;
    ReferenciaEmpresa: TSmallintField;
    ReferenciaData_Emissao: TDateTimeField;
    StaticText2: TStaticText;
    DBEdit8: TDBEdit;
    tPedido: TMSQuery;
    tPedidoNumero: TIntegerField;
    StaticText6: TStaticText;
    DBEdit9: TDBEdit;
    StaticText11: TStaticText;
    DBEdit10: TDBEdit;
    cEntrada_Saida: TEdit;
    StaticText12: TStaticText;
    lClienteForn: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText22: TStaticText;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    cNome: TDBLookupComboBox;
    cCodigoNatureza: TDBEdit;
    cNatureza: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_ComplEntrada: TNotaFiscal_ComplEntrada;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal, frmNotaFiscal_ComplReferencia;

{$R *.dfm}

procedure TNotaFiscal_ComplEntrada.FormShow(Sender: TObject);
begin
       With Dados do Begin
            TipoNota.Open;
            Clientes.Open;
            Configuracao.Open;
            Fornecedores.Open;
            Natureza.SQL.Clear;
            Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo >= :pIni and Codigo <= :pFim) ORDER BY Descricao');
            If PedidosSaida_Entrada.Value = 0 then begin
               Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
               Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
               cEntrada_Saida.Text  := 'ENTRADA';
               lClienteForn.Caption := 'Fornecedor';
               cNome.ListSource     := Dados.dsFornecedores;
               cNome.DataField      := 'Fornecedor_Codigo';
            end else begin
               Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.Value;
               Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.Value;
               cEntrada_Saida.Text := ' SAÍDA ';
               lClienteForn.Caption := 'Cliente';
               cNome.ListSource     := Dados.dsClientes;
               cNome.DataField      := 'Cliente_Codigo';
            End;
            Natureza.Open;

            Pedidos.SQL.Clear;
            Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE Complementar = 1' );
            Pedidos.Open;
       End;
end;

procedure TNotaFiscal_ComplEntrada.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TNotaFiscal_ComplEntrada.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       With Dados do Begin
            TipoNota.Close;
            Pedidos.Close;
            Clientes.Close;
            Fornecedores.Close;
            Natureza.Close;
       End;     
       NotaFiscal_ComplEntrada.Release;
       NotaFiscal_ComplEntrada := nil;
end;

procedure TNotaFiscal_ComplEntrada.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then Begin
            Dados.PedidosComplementar.Value := True;
            NotaFiscal_ComplReferencia := TNotaFiscal_ComplReferencia.Create(Self);
            NotaFiscal_ComplReferencia.ShowModal;
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
         cTipoNota.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Dados.Pedidos.Refresh;
         Panel2.Enabled := False;
      End;

      If Dados.PedidosSaida_Entrada.Value = 0 then begin
         cEntrada_Saida.Text  := 'ENTRADA';
         lClienteForn.Caption := 'Fornecedor';
         cNome.ListSource     := Dados.dsFornecedores;
         cNome.DataField      := 'Fornecedor_Codigo';
      end else begin
         cEntrada_Saida.Text := ' SAÍDA ';
         lClienteForn.Caption := 'Cliente';
         cNome.ListSource     := Dados.dsClientes;
         cNome.DataField      := 'Cliente_Codigo';
      End;

      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_ComplEntrada.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbPost then begin
         If Dados.Pedidos.State = dsInsert then begin
            tPedido.Open;
            Dados.PedidosNumero.Value  := (tPedidoNumero.Value + 1);
            Dados.PedidosEmpresa.Value := Menu_Principal.mEmpresa;
            tPedido.Close;
         End;
      End;
end;

end.
