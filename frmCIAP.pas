unit frmCIAP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, RxDBComb, Mask, Vcl.ComCtrls,
  RXDBCtrl, RXCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Funcoes, DateUtils, MemDS, system.UITypes, RxToolEdit, Vcl.Buttons;

type
  TCIAP = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tCodigo: TMSQuery;
    pPaginas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText2: TStaticText;
    cICMSProprio: TDBEdit;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    StaticText9: TStaticText;
    DBEdit5: TDBEdit;
    StaticText65: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    cFornecedor: TDBLookupComboBox;
    StaticText56: TStaticText;
    StaticText3: TStaticText;
    cTipoMovimentacao: TRxDBComboBox;
    StaticText4: TStaticText;
    cNotaEntrada: TDBEdit;
    cDataEntrada: TDBDateEdit;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    StaticText7: TStaticText;
    DBEdit7: TDBEdit;
    cDescricaoBem: TDBMemo;
    StaticText8: TStaticText;
    cCodigoImobilizado: TDBEdit;
    StaticText20: TStaticText;
    cFuncao: TDBMemo;
    cProduto: TDBLookupComboBox;
    StaticText23: TStaticText;
    cParcelas: TDBEdit;
    StaticText26: TStaticText;
    DBEdit17: TDBEdit;
    StaticText27: TStaticText;
    cFimApropriacao: TDBEdit;
    StaticText30: TStaticText;
    DBEdit21: TDBEdit;
    StaticText33: TStaticText;
    cTipo: TRxDBComboBox;
    StaticText34: TStaticText;
    cOrdem: TDBEdit;
    GroupBox2: TGroupBox;
    StaticText21: TStaticText;
    DBEdit16: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    StaticText28: TStaticText;
    StaticText22: TStaticText;
    DBEdit15: TDBEdit;
    StaticText24: TStaticText;
    DBEdit18: TDBEdit;
    StaticText25: TStaticText;
    DBEdit19: TDBEdit;
    StaticText29: TStaticText;
    StaticText32: TStaticText;
    cContaNumero: TDBEdit;
    StaticText35: TStaticText;
    cNatureza: TRxDBComboBox;
    StaticText36: TStaticText;
    cTipoConta: TRxDBComboBox;
    StaticText37: TStaticText;
    cNivelConta: TDBEdit;
    StaticText38: TStaticText;
    cContaNome: TDBEdit;
    tFaturamento: TMSQuery;
    cCentroCusto: TDBEdit;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    StaticText15: TStaticText;
    DBEdit11: TDBEdit;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    StaticText19: TStaticText;
    StaticText31: TStaticText;
    RxDBComboBox5: TRxDBComboBox;
    cSaidaMotivo: TRxDBComboBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText39: TStaticText;
    DBEdit1: TDBEdit;
    StaticText40: TStaticText;
    DBEdit8: TDBEdit;
    StaticText41: TStaticText;
    DBEdit20: TDBEdit;
    bPesqCli: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProdutoExit(Sender: TObject);
    procedure cTipoMovimentacaoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure RxDBComboBox5KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cSaidaMotivoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure RxDBComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPesqCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CIAP: TCIAP;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TCIAP.bPesqCliClick(Sender: TObject);
begin
     with dmFiscal, tCodigo do begin
          sql.Clear;
          sql.Add('select NFe_cNF from NotasTerceiros where Nota = :pNota and Data_Entrada = :pData and Fornecedor = :pForn');
          parambyname('pNota').Value := Imobilizado.FieldByName('Nota').AsInteger;
          parambyname('pData').Value := Imobilizado.FieldByName('Data_Nota').value;
          parambyname('pForn').Value := Imobilizado.FieldByName('Fornecedor').asinteger;
          open;
          Imobilizado.FieldByName('Chave_Nota').Value := FieldByName('NFe_cNF').asstring;
     end;
end;

procedure TCIAP.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCIAP.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCIAP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      CIAP.Release;
      CIAP := nil;
end;

procedure TCIAP.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Imobilizado.SQL.Clear;
           Imobilizado.SQL.Add('SELECT * FROM Imobilizado ORDER BY Codigo');
           Imobilizado.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           pPaginas.ActivePageIndex := 0;
      End;
end;

procedure TCIAP.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;

         If Button = nbInsert then begin
            dmFiscal.ImobilizadoParcelas.Value    := 48;
            dmFiscal.ImobilizadoApropriadas.Value := 0;
         End;

         TabSheet1.Enabled := true;
         TabSheet2.Enabled := true;
         TabSheet3.Enabled := true;

         If pPaginas.TabIndex = 0 then cProduto.SetFocus;
         If pPaginas.TabIndex = 1 then cSaidaMotivo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         TabSheet1.Enabled := false;
         TabSheet2.Enabled := false;
         TabSheet3.Enabled := false;
         dmFiscal.Imobilizado.Refresh;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCIAP.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With dmFiscal do begin
           If Button = nbPost then begin
              If Trim(cProduto.Text) = '' then begin
                 ShowMessage('Você deve informar qual o Produto esta sendo imobilizado.');
                 pPaginas.ActivePageIndex := 0;
                 cProduto.SetFocus;
                 Abort;
              End;
              If Trim(cTipo.Text) = '' then begin
                 ShowMessage('Você deve informar qual o tipo do Produto.');
                 pPaginas.ActivePageIndex := 0;
                 cTipo.SetFocus;
                 Abort;
              End;
              If StrtoInt(cParcelas.Text) < 1 then begin
                 ShowMessage('Você deve informar qual a quantidade de parcelas.');
                 pPaginas.ActivePageIndex := 0;
                 cParcelas.SetFocus;
                 Abort;
              End;
              If Trim(cTipoMovimentacao.Text) = '' then begin
                 ShowMessage('Você deve informar qual o tipo de movimentação.');
                 pPaginas.ActivePageIndex := 0;
                 cTipoMovimentacao.SetFocus;
                 Abort;
              End;
              If Trim(cFornecedor.Text) = '' then begin
                 ShowMessage('Você deve informar qual o o fornecedor do produto.');
                 pPaginas.ActivePageIndex := 0;
                 cFornecedor.SetFocus;
                 Abort;
              End;
              If Trim(cNotaEntrada.Text) = '' then begin
                 ShowMessage('Você deve informar qual o número da nota fiscal de entrada.');
                 pPaginas.ActivePageIndex := 0;
                 cNotaEntrada.SetFocus;
                 Abort;
              End;
              If Trim(RemoveCaracter('/', '', cDataEntrada.Text)) = '' then begin
                 ShowMessage('Você deve informar qual a data da nota fiscal de entrada.');
                 pPaginas.ActivePageIndex := 0;
                 cDataEntrada.SetFocus;
                 Abort;
              End;
              If Trim(cOrdem.Text) = '' then begin
                 ShowMessage('Você deve informar qual o número de ordem do item na nota fiscal de entrada.');
                 pPaginas.ActivePageIndex := 0;
                 cOrdem.SetFocus;
                 Abort;
              End;
              If Trim(cICMSProprio.Text) = '' then begin
                 ShowMessage('Você deve informar qual o valor do ICMS da nota fiscal de entrada.');
                 pPaginas.ActivePageIndex := 0;
                 cICMSProprio.SetFocus;
                 Abort;
              End;
              If Trim(cDescricaoBem.Text) = '' then begin
                 ShowMessage('Você deve informar qual a descrição do bem.');
                 pPaginas.ActivePageIndex := 0;
                 cDescricaoBem.SetFocus;
                 Abort;
              End;
              {
              If Trim(cCentroCusto.Text) = '' then begin
                 ShowMessage('Você deve informar qual o centro de custo.');
                 pPaginas.ActivePageIndex := 2;
                 cCentroCusto.SetFocus;
                 Abort;
              End;
              If Trim(cContaNumero.Text) = '' then begin
                 ShowMessage('Você deve informar qual o número da conta contabil.');
                 pPaginas.ActivePageIndex := 2;
                 cContaNumero.SetFocus;
                 Abort;
              End;
              If Trim(cContaNome.Text) = '' then begin
                 ShowMessage('Você deve informar qual o nome da conta contabil.');
                 pPaginas.ActivePageIndex := 2;
                 cContaNome.SetFocus;
                 Abort;
              End;
              If Trim(cNatureza.Text) = '' then begin
                 ShowMessage('Você deve informar qual a naturaza da conta contabil.');
                 pPaginas.ActivePageIndex := 2;
                 cNatureza.SetFocus;
                 Abort;
              End;
              If Trim(cTipoConta.Text) = '' then begin
                 ShowMessage('Você deve informar qual o tipo da conta contabil.');
                 pPaginas.ActivePageIndex := 2;
                 cTipoConta.SetFocus;
                 Abort;
              End;
              If Trim(cNivelConta.Text) = '' then begin
                 ShowMessage('Você deve informar qual o nível da conta contabil.');
                 pPaginas.ActivePageIndex := 2;
                 cNivelConta.SetFocus;
                 Abort;
              End;
              If Trim(cFuncao.Text) = '' then begin
                 ShowMessage('Você deve informar uma breve descrição da funçãoo do bem na empresa.');
                 pPaginas.ActivePageIndex := 0;
                 cFuncao.SetFocus;
                 Abort;
              End;
              }

              If Trim(ImobilizadoFim_Apropriacao.AsString) <> '' then begin
                 If (StrtoInt(Copy(ImobilizadoFim_Apropriacao.AsString,1,2)) > 12) or (StrtoInt(Copy(ImobilizadoFim_Apropriacao.AsString,1,2)) < 1) then begin
                    MessageDlg('Erro!'+#13+#13+'Mês informado para o final da apropriação deve estar entre "01" e "12".', mtError, [mbOK], 0);
                    cFimApropriacao.SetFocus;
                    Abort;
                 End;
                 If (StrtoInt(Copy(ImobilizadoFim_Apropriacao.AsString,3,4)) < 2000) then begin
                    MessageDlg('Erro!'+#13+#13+'Ano informado para o final da apropriação inválido.', mtError, [mbOK], 0);
                    cFimApropriacao.SetFocus;
                    Abort;
                 End;
              End;
              If (Trim(RemoveCaracter('/', '', ImobilizadoSaida_DataNota.AsString)) <> '') and (Trim(ImobilizadoFim_Apropriacao.AsString) = '') then begin
                 ImobilizadoFim_Apropriacao.AsString := PoeZero(2, MonthOf(ImobilizadoSaida_DataNota.AsDateTime))+PoeZero(4, YearOf(ImobilizadoSaida_DataNota.AsDateTime));
              End;
           End;

           If (Button = nbPost) and (Imobilizado.State = dsInsert) then begin
              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT * FROM Imobilizado WHERE(Codigo = :pCodigo)');
              tCodigo.ParamByName('pCodigo').AsString := Imobilizado.FieldByName('Codigo').AsString;
              tCodigo.Open;
              If tCodigo.RecordCount > 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Já existe um bem cadastrado com o codigo informado.', mtError, [mbOK], 0);
                 cCodigoImobilizado.SetFocus;
                 Abort;
              End;

              // Verifica se houve faturamento no mês para atualiza o campo "AnoMes_Faturamento" e o campo "Apropriacao".
              Screen.Cursor := crSQLWait;

              tFaturamento.SQL.Clear;
              tFaturamento.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasFiscais WHERE(YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Saida_Entrada = 1) AND (Valor_ICMS > 0) AND (Cancelada <> 1)');
              tFaturamento.ParamByName('pAno').AsInteger := YearOf(Imobilizado.FieldByName('Data_Nota').AsDateTime);
              tFaturamento.ParamByName('pMes').AsInteger := MonthOf(Imobilizado.FieldByName('Data_Nota').AsDateTime);
              tFaturamento.Open;

              If tFaturamento.FieldByName('Qtde').AsInteger > 0 then begin
                 ImobilizadoAnoMes_Faturamento.Value := PoeZero(4, YearOf(Imobilizado.FieldByName('Data_Nota').AsDateTime)) + PoeZero(2, MonthOf(Imobilizado.FieldByName('Data_Nota').AsDateTime));
                 If ImobilizadoApropriadas.Value < 1 then ImobilizadoApropriadas.Value := 1;
              End;

              Screen.Cursor := crDefault;
           End;
      End;
end;

procedure TCIAP.cProdutoExit(Sender: TObject);
begin
      With dmFiscal, Dados do begin
           If Trim(ImobilizadoDescricao.AsString) = '' then begin
              ImobilizadoDescricao.AsString := RemoveCaracter('<{'+Trim(ProdutosCodigo.AsString)+'}>', '', ProdutosDescricao.AsString);
           End;   
      End;
end;

procedure TCIAP.cTipoMovimentacaoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If Key = VK_DELETE then dmFiscal.ImobilizadoTipo_Movimentacao.Clear;
end;

procedure TCIAP.RxDBComboBox5KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If Key = VK_DELETE then dmFiscal.ImobilizadoTipo_MovimentacaoSaida.Clear;
end;

procedure TCIAP.cSaidaMotivoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If Key = VK_DELETE then dmFiscal.ImobilizadoSaida_Motivo.Clear;
end;

procedure TCIAP.RxDBComboBox3KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If Key = VK_DELETE then dmFiscal.ImobilizadoTipo_CalculoCredito.Clear;
end;

end.
