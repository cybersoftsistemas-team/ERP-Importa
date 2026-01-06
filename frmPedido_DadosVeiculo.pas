unit frmPedido_DadosVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, Mask, Data.DB, MemDS, DBAccess, MSAccess;

type
  TPedido_DadosVeiculo = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    bLimpar: TButton;
    tMotoristas: TMSQuery;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    StaticText13: TStaticText;
    StaticText4: TStaticText;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText8: TStaticText;
    cNome: TDBComboBox;
    GroupBox2: TGroupBox;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    StaticText9: TStaticText;
    GroupBox3: TGroupBox;
    StaticText5: TStaticText;
    DBEdit6: TDBEdit;
    StaticText6: TStaticText;
    DBEdit7: TDBEdit;
    StaticText7: TStaticText;
    DBEdit8: TDBEdit;
    StaticText10: TStaticText;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cNomeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_DadosVeiculo: TPedido_DadosVeiculo;

implementation

uses frmDados;

{$R *.dfm}

procedure TPedido_DadosVeiculo.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_DadosVeiculo.cNomeExit(Sender: TObject);
begin
      with Dados, tMotoristas do begin
           if locate('Nome', cNome.Text, [locaseinsensitive]) then begin
              PedidosTransporte_RGMotorista.value   := fieldbyname('RG').AsString;
              PedidosTransporte_cpfMotorista.value  := fieldbyname('CPF').AsString;
              PedidosTransporte_Placa.value         := fieldbyname('PlacaVei').AsString;
              PedidosTransporte_PlacaUF.value       := fieldbyname('UFVei').AsString;
              PedidosTransporte_CodigoANTT.value    := fieldbyname('ANTTVei').AsString;
              PedidosTransporte_Lacre.value         := fieldbyname('LacreVei').AsString;
              PedidosReboque_Placa.value            := fieldbyname('PlacaReb').AsString;
              PedidosReboque_UF.value               := fieldbyname('UFReb').AsString;
              PedidosReboque_ANTT.value             := fieldbyname('ANTTReb').AsString;
              PedidosReboque_Lacre.value            := fieldbyname('LacreReb').AsString;
           end;
      end;
end;

procedure TPedido_DadosVeiculo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedido_DadosVeiculo.Release;
      Pedido_DadosVeiculo := nil;
end;

procedure TPedido_DadosVeiculo.FormShow(Sender: TObject);
begin
     with tMotoristas do begin
          sql.clear;
          sql.add('select distinct');
          sql.add('       Nome     = isnull(Transporte_NomeMotorista, '''')');
          sql.add('      ,RG       = isnull(Transporte_RGMotorista, '''')');
          sql.add('      ,CPF      = isnull(Transporte_CPFMotorista, '''')');
          sql.add('      ,PlacaVei = isnull(Transporte_Placa, '''')');
          sql.add('      ,UFVei    = isnull(Transporte_PlacaUF, '''')');
          sql.add('      ,ANTTVei  = isnull(Transporte_CodigoANTT, '''')');
          sql.add('      ,LacreVei = isnull(cast(Transporte_Lacre as varchar(200)), '''')');
          sql.add('      ,PlacaReb = isnull(Reboque_Placa, '''')');
          sql.add('      ,UFReb    = isnull(Reboque_UF, '''')');
          sql.add('      ,ANTTReb  = isnull(Reboque_ANTT, '''')');
          sql.add('      ,LacreReb = isnull(cast(Reboque_Lacre as varchar(200)), '''')');
          sql.add('from NotasFiscais');
          sql.add('where isnull(Transporte_NomeMotorista, '''') <> '''' ');
          sql.add('union all');
          sql.add('select distinct');
          sql.add('       Nome     = isnull(Transporte_NomeMotorista, '''')');
          sql.add('      ,RG       = isnull(Transporte_RGMotorista, '''')');
          sql.add('      ,CPF      = isnull(Transporte_CPFMotorista, '''')');
          sql.add('      ,PlacaVei = isnull(Transporte_Placa, '''')');
          sql.add('      ,UFVei    = isnull(Transporte_PlacaUF, '''')');
          sql.add('      ,ANTTVei  = isnull(Transporte_CodigoANTT, '''')');
          sql.add('      ,LacreVei = isnull(cast(Transporte_Lacre as varchar(200)), '''')');
          sql.add('      ,PlacaReb = isnull(Reboque_Placa, '''')');
          sql.add('      ,UFReb    = isnull(Reboque_UF, '''')');
          sql.add('      ,ANTTReb  = isnull(Reboque_ANTT, '''')');
          sql.add('      ,LacreReb = isnull(cast(Reboque_Lacre as varchar(200)), '''')');
          sql.add('from Pedidos');
          sql.add('where isnull(Transporte_NomeMotorista, '''') <> '''' ');
          //sql.SaveToFile('c:\temp\Dados_Veiculo.sql');
          open;
          first;
          cNome.Items.Clear;
          while not eof do begin
                cNome.Items.add(fieldbyname('Nome').asstring);
                next;
          end;
     end;
end;

procedure TPedido_DadosVeiculo.bLimparClick(Sender: TObject);
begin
     with Dados do begin
          PedidosTransporte_NomeMotorista.Clear;
          PedidosTransporte_RGMotorista.Clear;
          PedidosTransporte_cpfMotorista.Clear;
          PedidosTransporte_Placa.Clear;
          PedidosTransporte_PlacaUF.Clear;
          PedidosTransporte_CodigoANTT.Clear;
          PedidosTransporte_Lacre.Clear;
          PedidosReboque_Placa.Clear;
          PedidosReboque_UF.Clear;
          PedidosReboque_ANTT.Clear;
          PedidosReboque_Lacre.Clear;
     end;
end;


end.
