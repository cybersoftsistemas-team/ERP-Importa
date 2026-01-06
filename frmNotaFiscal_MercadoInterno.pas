unit frmNotaFiscal_MercadoInterno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  DBCtrls, Mask, Buttons, RXDBCtrl, DB, Grids, DBGrids;

type
  TNotaFiscal_MercadoInterno = class(TForm)
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
    StaticText9: TStaticText;
    cProcesso: TDBComboBox;
    StaticText13: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    StaticText14: TStaticText;
    cBaseICMS: TDBEdit;
    StaticText15: TStaticText;
    cValorICMS: TDBEdit;
    StaticText4: TStaticText;
    cIsentasICMS: TDBEdit;
    StaticText5: TStaticText;
    cOutrasICMS: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox4: TGroupBox;
    StaticText18: TStaticText;
    cTotalProdutos: TDBEdit;
    StaticText23: TStaticText;
    cTotalNota: TDBEdit;
    StaticText7: TStaticText;
    cTotalDescontos: TDBEdit;
    StaticText8: TStaticText;
    cTotalLiquido: TDBEdit;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    DBMemo1: TDBMemo;
    StaticText24: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoNaturezaExit(Sender: TObject);
    procedure cTotalProdutosExit(Sender: TObject);
    procedure cBaseICMSExit(Sender: TObject);
    procedure cAliquotaICMSExit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure cFornecedorExit(Sender: TObject);
    procedure lNomeClick(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_MercadoInterno: TNotaFiscal_MercadoInterno;

implementation

uses frmDados, frmDMFiscal, frmNotaFiscal_MercadoInternoItens,
  frmMenu_Principal, frmCadastro_Fornecedores, frmCadastro_NaturezaOperacao;

{$R *.dfm}

procedure TNotaFiscal_MercadoInterno.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_MercadoInterno.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados, dmFiscal do begin
             NotasConsumo.SQL.Clear;
             NotasConsumo.SQL.Add('SELECT * FROM NotasConsumo WHERE Processo IS NOT NULL');
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
             ICMS.Open;
             
             ProcessosDOC.SQL.Clear;
             ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Imp_Exp <> 1');
             ProcessosDOC.Open;
             ProcessosDOC.First;
             While not ProcessosDoc.Eof do begin
                   cProcesso.Items.Add(ProcessosDOCProcesso.AsString);
                   ProcessosDOC.Next;
             End;
             ProcessosDOC.First;
             ICMS.Locate('UF', FornecedoresEstado.Value, [loCaseInsensitive] );
             Empresas.Open;
             Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_MercadoInterno.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      Dados.ICMS.Locate('UF', Dados.FornecedoresEstado.Value, [loCaseInsensitive] );
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then dmFiscal.NotasConsumoTipo.Value := 'NF';
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         bItens.Enabled := False;
         Panel2.Enabled := True;
         cProcesso.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         dmFiscal.NotasConsumo.Refresh;
         bItens.Enabled := True;
         Panel2.Enabled := False;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_MercadoInterno.cCodigoNaturezaExit(Sender: TObject);
begin
      Dados.Natureza.Locate('Codigo', cCodigoNatureza.Text, [loCaseInsensitive]);
end;

procedure TNotaFiscal_MercadoInterno.cTotalProdutosExit(Sender: TObject);
begin
        With dmFiscal do Begin
             NotasConsumoValor_TotalNota.Value := NotasConsumoValor_TotalProdutos.Value;
             NotasConsumoValor_BCICMS.Value    := NotasConsumoValor_TotalProdutos.Value;
             NotasConsumoValor_ICMS.Value      := NotasConsumoValor_BCICMS.Value * (NotasConsumoAliquota_ICMS.Value/100);
        End;
end;

procedure TNotaFiscal_MercadoInterno.cBaseICMSExit(Sender: TObject);
begin
      dmFiscal.NotasConsumoValor_ICMS.Value := dmFiscal.NotasConsumoValor_BCICMS.Value * (dmFiscal.NotasConsumoAliquota_ICMS.Value/100);
end;

procedure TNotaFiscal_MercadoInterno.cAliquotaICMSExit(Sender: TObject);
begin
      dmFiscal.NotasConsumoValor_ICMS.Value := dmFiscal.NotasConsumoValor_BCICMS.Value * (dmFiscal.NotasConsumoAliquota_ICMS.Value/100);
end;

procedure TNotaFiscal_MercadoInterno.DBComboBox1Exit(Sender: TObject);
begin
        With dmFiscal do Begin
             cTotalNota.Enabled      := True;
             cTotalProdutos.Enabled  := True;
             cBaseICMS.Enabled       := True;
             cValorICMS.Enabled      := True;
//             cAliquotaICMS.Enabled   := True;
             cTotalDescontos.Enabled := True;
             cTotalLiquido.Enabled   := True;
             If NotasConsumoTipo.Value = 'NF' then begin
                cTotalNota.Enabled      := False;
                cTotalProdutos.Enabled  := False;
                cBaseICMS.Enabled       := False;
                cValorICMS.Enabled      := False;
//                cAliquotaICMS.Enabled   := False;
                cTotalDescontos.Enabled := False;
                cTotalLiquido.Enabled   := False;
               End;
        End;
end;

procedure TNotaFiscal_MercadoInterno.bItensClick(Sender: TObject);
begin
        NotaFiscal_MercadoInternoItens := TNotaFiscal_MercadoInternoItens.Create(Self);
        NotaFiscal_MercadoInternoItens.Caption := Caption;
        NotaFiscal_MercadoInternoItens.ShowModal;
end;

procedure TNotaFiscal_MercadoInterno.cFornecedorExit(Sender: TObject);
begin
        Dados.ICMS.Locate('UF', Dados.FornecedoresEstado.Value, [loCaseInsensitive] );
end;

procedure TNotaFiscal_MercadoInterno.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      With Dados, dmFiscal do begin
           NCM.Close;
           ICMS.Close;
           NotasConsumo.Close;
           NotasConsumoItens.Close;
           Fornecedores.Close;
           Produtos.Close;
           Transportadores.Close;
           Configuracao.Close;
           ProcessosDOC.Close;
           Natureza.Close;
      End;
      Release;
      NotaFiscal_MercadoInterno := nil;
end;


procedure TNotaFiscal_MercadoInterno.lNomeClick(Sender: TObject);
begin
        Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
        Cadastro_Fornecedores.Caption := Caption;
        Cadastro_Fornecedores.ShowModal;
        Dados.Fornecedores.Open;
end;

procedure TNotaFiscal_MercadoInterno.StaticText6Click(Sender: TObject);
begin
        Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
        Cadastro_NaturezaOperacao.Caption := Caption;
        Cadastro_NaturezaOperacao.ShowModal;
        Dados.Natureza.Open;
end;

end.
