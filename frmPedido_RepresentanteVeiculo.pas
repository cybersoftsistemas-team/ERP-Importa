unit frmPedido_RepresentanteVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, MemDS, DBAccess, MSAccess, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TPedido_RepresentanteVeiculo = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    bLimpar: TButton;
    tMotoristas: TMSQuery;
    bCancel: TButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    StaticText13: TStaticText;
    StaticText4: TStaticText;
    StaticText8: TStaticText;
    GroupBox2: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText9: TStaticText;
    GroupBox3: TGroupBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText10: TStaticText;
    cRG: TEdit;
    cCPF: TEdit;
    cPlacaVei: TEdit;
    cUFVei: TEdit;
    cANTTVei: TEdit;
    cPlacaReb: TEdit;
    cUFReb: TEdit;
    cANTTReb: TEdit;
    cNome: TComboBox;
    cLacreVei: TMemo;
    cLacreReb: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure cNomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_RepresentanteVeiculo: TPedido_RepresentanteVeiculo;

implementation

{$R *.dfm}

uses frmDados, frmPedidosRepresentantes_PedidoNF;

procedure TPedido_RepresentanteVeiculo.bCancelClick(Sender: TObject);
begin
    close;
end;

procedure TPedido_RepresentanteVeiculo.bLimparClick(Sender: TObject);
begin
     cNome.Text := '';
     cRG.Clear;
     cCPF.Clear;
     cPlacaVei.Clear;
     cUFVei.Clear;
     cANTTVei.Clear;
     cLacreVei.Clear;
     cPlacaReb.Clear;
     cUFReb.Clear;
     cANTTReb.Clear;
     cLacreReb.Clear;
end;

procedure TPedido_RepresentanteVeiculo.bSairClick(Sender: TObject);
begin
     with PedidosRepresentantes_PedidoNF do begin
          mNomeMot  := cNome.text;
          mRGMot    := cRG.Text;
          mCPFMot   := cCPF.Text;
          mPlacaVei := cPlacaVei.text;
          mUFVei    := cUFVei.text;
          mANTTVei  := cANTTVei.text;
          mLacreVei := cLacreVei.text;
          mPlacaReb := cPlacaReb.text;
          mUFReb    := cUFReb.text;
          mANTTReb  := cANTTReb.text;
          mLacreReb := cLacreReb.text;
     end;
     close;
end;

procedure TPedido_RepresentanteVeiculo.cNomeChange(Sender: TObject);
begin
      with tMotoristas do begin
           if locate('Nome', cNome.Text, [locaseinsensitive]) then begin
              cRG.Text       := fieldbyname('RG').AsString;
              cCPF.Text      := fieldbyname('CPF').AsString;
              cPlacaVei.Text := fieldbyname('PlacaVei').AsString;
              cUFVei.Text    := fieldbyname('UFVei').AsString;
              cANTTVei.Text  := fieldbyname('ANTTVei').AsString;
              cLacreVei.Text := fieldbyname('LacreVei').AsString;
              cPlacaReb.Text := fieldbyname('PlacaReb').AsString;
              cUFReb.Text    := fieldbyname('UFReb').AsString;
              cANTTReb.Text  := fieldbyname('ANTTReb').AsString;
              cLacreReb.Text := fieldbyname('LacreReb').AsString;
           end;
      end;
end;

procedure TPedido_RepresentanteVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Pedido_RepresentanteVeiculo.Release;
      Pedido_RepresentanteVeiculo := nil;
end;

procedure TPedido_RepresentanteVeiculo.FormShow(Sender: TObject);
begin
     bLimparClick(self);
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

end.
