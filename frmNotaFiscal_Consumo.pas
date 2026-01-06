unit frmNotaFiscal_Consumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  DBCtrls, Mask, Buttons, RXDBCtrl, DB, Grids, DBGrids;

type
  TNotaFiscal_Consumo = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bItens: TButton;
    Panel2: TPanel;
    cNatureza: TDBLookupComboBox;
    cFornecedor: TDBLookupComboBox;
    cNota: TDBEdit;
    cCodigoNatureza: TDBEdit;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    TabEnter1: TTabEnter;
    cDataEmissao: TDBDateEdit;
    cDataEntrada: TDBDateEdit;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    lNome: TStaticText;
    StaticText11: TStaticText;
    StaticText2: TStaticText;
    StaticText18: TStaticText;
    cTotalProdutos: TDBEdit;
    StaticText23: TStaticText;
    cTotalNota: TDBEdit;
    StaticText13: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    StaticText14: TStaticText;
    cBaseICMS: TDBEdit;
    StaticText15: TStaticText;
    cValorICMS: TDBEdit;
    StaticText3: TStaticText;
    cAliquotaICMS: TDBEdit;
    StaticText4: TStaticText;
    cIsentasICMS: TDBEdit;
    StaticText5: TStaticText;
    cOutrasICMS: TDBEdit;
    StaticText7: TStaticText;
    cTotalDescontos: TDBEdit;
    StaticText8: TStaticText;
    cTotalLiquido: TDBEdit;
    StaticText9: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoNaturezaExit(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure cTotalProdutosExit(Sender: TObject);
    procedure cBaseICMSExit(Sender: TObject);
    procedure cAliquotaICMSExit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_Consumo: TNotaFiscal_Consumo;

implementation

uses frmDados, frmDMFiscal, frmNotaFiscal_ConsumoItens;

{$R *.dfm}

procedure TNotaFiscal_Consumo.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_Consumo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        With Dados, dmFiscal do begin
             NotasConsumo.Close;
             Fornecedores.Close;
             Transportadores.Close;
             Configuracao.Close;
             ProcessosDOC.Close;
             Natureza.Close;
             ProcessosDOC.Close;
             TiposDocumentos.Close;
        End;
        Release;
        NotaFiscal_Consumo := nil;
end;

procedure TNotaFiscal_Consumo.FormShow(Sender: TObject);
begin
        With Dados, dmFiscal do begin
             NotasConsumo.SQL.Clear;
             NotasConsumo.SQL.Add('SELECT * FROM NotasConsumo WHERE Processo IS NULL');
             NotasConsumo.Open;
             Fornecedores.Open;
             Transportadores.Open;
             Configuracao.Open;
             ProcessosDOC.SQL.Clear;
             ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
             ProcessosDOC.Open;
             Natureza.SQL.Clear;
             Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo >= :pIni and Codigo <= :pFim) ORDER BY Descricao');
             Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
             Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
             Natureza.Open;
             Dados.ProcessosDOC.Open;
             Dados.TiposDocumentos.Open;
        End;
end;

procedure TNotaFiscal_Consumo.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         bItens.Enabled := False;
         Panel2.Enabled := True;
         cNota.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         dmFiscal.NotasConsumo.Refresh;
         bItens.Enabled := True;
         Panel2.Enabled := False;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Consumo.cCodigoNaturezaExit(Sender: TObject);
begin
      Dados.Natureza.Locate('Codigo', cCodigoNatureza.Text, [loCaseInsensitive]);
end;

procedure TNotaFiscal_Consumo.bItensClick(Sender: TObject);
begin
        NotaFiscal_ConsumoItens := TNotaFiscal_ConsumoItens.Create(Self);
        NotaFiscal_ConsumoItens.ShowModal;
end;

procedure TNotaFiscal_Consumo.cTotalProdutosExit(Sender: TObject);
begin
        With dmFiscal do Begin
             NotasConsumoValor_TotalNota.Value := NotasConsumoValor_TotalProdutos.Value;
             NotasConsumoValor_BCICMS.Value    := NotasConsumoValor_TotalProdutos.Value;
             NotasConsumoValor_ICMS.Value      := NotasConsumoValor_BCICMS.Value * (NotasConsumoAliquota_ICMS.Value/100);
        End;
end;

procedure TNotaFiscal_Consumo.cBaseICMSExit(Sender: TObject);
begin
      dmFiscal.NotasConsumoValor_ICMS.Value := dmFiscal.NotasConsumoValor_BCICMS.Value * (dmFiscal.NotasConsumoAliquota_ICMS.Value/100);
end;

procedure TNotaFiscal_Consumo.cAliquotaICMSExit(Sender: TObject);
begin
      dmFiscal.NotasConsumoValor_ICMS.Value := dmFiscal.NotasConsumoValor_BCICMS.Value * (dmFiscal.NotasConsumoAliquota_ICMS.Value/100);
end;

procedure TNotaFiscal_Consumo.DBComboBox1Exit(Sender: TObject);
begin
        With dmFiscal do Begin
             cTotalNota.Enabled      := True;
             cTotalProdutos.Enabled  := True;
             cBaseICMS.Enabled       := True;
             cValorICMS.Enabled      := True;
             cAliquotaICMS.Enabled   := True;
             cTotalDescontos.Enabled := True;
             cTotalLiquido.Enabled   := True;
             If NotasConsumoTipo.Value = 'NF' then begin
                cTotalNota.Enabled      := False;
                cTotalProdutos.Enabled  := False;
                cBaseICMS.Enabled       := False;
                cValorICMS.Enabled      := False;
                cAliquotaICMS.Enabled   := False;
                cTotalDescontos.Enabled := False;
                cTotalLiquido.Enabled   := False;
               End;
        End;
end;

end.
