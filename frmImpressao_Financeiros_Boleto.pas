unit frmImpressao_Financeiros_Boleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Buttons, Grids, DBGrids, RXDBCtrl,
  RXCtrls, DB, MemDS, DBAccess, MSAccess, ppDB, ppParameter, ppCtrls, ppBarCod, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  Funcoes, MaskUtils;

type
  TImpressao_Financeiros_Boleto = class(TForm)
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
    bImprimir: TBitBtn;
    bSelTodas: TButton;
    bPesquisa: TButton;
    tBoletos: TMSQuery;
    dstBoletos: TDataSource;
    tBoletosRegistro: TIntegerField;
    tBoletosNumero: TIntegerField;
    tBoletosBanco: TSmallintField;
    tBoletosNome_Banco: TStringField;
    tBoletosNome_Sacado: TStringField;
    tBoletosEspecie_Documento: TStringField;
    tBoletosNosso_Numero: TStringField;
    tBoletosSacado: TSmallintField;
    tBoletosData_Vencimento: TDateTimeField;
    tBoletosValor_Documento: TCurrencyField;
    Button1: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSelTodasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Financeiros_Boleto: TImpressao_Financeiros_Boleto;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_Financeiros_Boleto.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Financeiros_Boleto.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_Financeiros_Boleto.Release;
      Impressao_Financeiros_Boleto := nil;
end;

procedure TImpressao_Financeiros_Boleto.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Financeiros_Boleto.FormShow(Sender: TObject);
begin
      With Dados do begin
           tBoletos.SQL.Clear;
           tBoletos.SQL.Add('SELECT Registro,');
           tBoletos.SQL.Add('       Numero,');
           tBoletos.SQL.Add('       Banco,');
           tBoletos.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = Banco) AS Nome_Banco,');
           tBoletos.SQL.Add('       (SELECT Nome FROM Clientes WHERE Codigo = Sacado) AS Nome_Sacado,');
           tBoletos.SQL.Add('       Especie_Documento,');
           tBoletos.SQL.Add('       Nosso_Numero,');
           tBoletos.SQL.Add('       Sacado,');
           tBoletos.SQL.Add('       Data_Vencimento,');
           tBoletos.SQL.Add('       Valor_Documento');
           tBoletos.SQL.Add('FROM   Boletos');
           tBoletos.SQL.Add('ORDER  BY Registro desc');
           tBoletos.Open;
      End;
end;

procedure TImpressao_Financeiros_Boleto.bSelTodasClick(Sender: TObject);
begin
      Grade.SelectAll;
end;

procedure TImpressao_Financeiros_Boleto.Button1Click(Sender: TObject);
begin
      Grade.UnselectAll;
end;

procedure TImpressao_Financeiros_Boleto.bImprimirClick(Sender: TObject);
Var
   mSel: Integer;
begin
      With Dados do begin
           If Grade.SelectedRows.Count > 0 then begin
              Boletos.SQL.Clear;
              Boletos.SQL.Add('SELECT * FROM Boletos WHERE Registro IN(');
              tBoletos.First;
              For mSel := 0 to Grade.SelectedRows.Count-1 do begin
                  Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
                  If mSel = (Grade.SelectedRows.Count-1) then
                     Boletos.SQL.Add(QuotedStr(tBoletos.FieldByName('Registro').AsString) )
                  else
                     Boletos.SQL.Add(QuotedStr(tBoletos.FieldByName('Registro').AsString)+',');
              End;
              Boletos.SQL.Add(')');
              Boletos.Open;
              Boletos.First;
           end else begin
              MessageDlg('Não existe nenhum boleto bancário selecionado para impressão!', mtInformation, [mbOK], 0);
              Abort;
           End;
      End;

      //rBoleto.FreeOnRelease;
      //rBoleto.Print;
      //rBoleto.Reset;
end;

procedure TImpressao_Financeiros_Boleto.ppDetailBand1BeforePrint(Sender: TObject);
begin
      {
      With Dados do begin
           lProtestar.Caption    := '';
           lAbatimento.Caption   := '';
           lDescontar.Caption    := '';
           lJuros.Caption        := '';
           lProtestar2.Caption   := '';
           lAbatimento2.Caption  := '';
           lDescontar2.Caption   := '';
           lJuros2.Caption       := '';
           pNumeroBanco1.Caption := '';
           pNumeroBanco2.Caption := '';
           pNomeBanco1.Caption   := '';
           pNomeBanco2.Caption   := '';

           If RemoveCaracter('/', '', Boletos.FieldByName('Data_Protesto').AsString)   <> '' then lProtestar.Caption  := 'Protestar em '            + Boletos.FieldByName('Data_Protesto').AsString;
           If RemoveCaracter('/', '', Boletos.FieldByName('Data_Abatimento').AsString) <> '' then lAbatimento.Caption := 'Conceder abatimento de R$'+ FormatFloat(',##0.00', Boletos.FieldByName('Valor_Abatimento').AsCurrency) +' para pagamento até '+Boletos.FieldByName('Data_Abatimento').AsString;
           If RemoveCaracter('/', '', Boletos.FieldByName('Data_Desconto').AsString)   <> '' then lDescontar.Caption  := 'Conceder desconto de R$'  + FormatFloat(',##0.00', Boletos.FieldByName('Valor_Desconto').AsCurrency)   +' por dia de antecipação para pagamento até '+Boletos.FieldByName('Data_Desconto').AsString;
           If RemoveCaracter('/', '', Boletos.FieldByName('Data_Juros').AsString)      <> '' then lJuros.Caption      := 'Cobrar juros de R$'       + FormatFloat(',##0.00', Boletos.FieldByName('Valor_Juros').AsCurrency) +' por dia de antecipação para pagamento a partir de '+Boletos.FieldByName('Data_Juros').AsString;

           lProtestar2.Caption  := lProtestar.Caption;
           lAbatimento2.Caption := lAbatimento.Caption;
           lDescontar2.Caption  := lDescontar.Caption;
           lJuros2.Caption      := lJuros.Caption;

           lEndereco1.Caption := Trim(ClientesRua.AsString) + '   ,nº '+Trim(ClientesRua_Numero.AsString)+'    '+ClientesComplemento.AsString;
           lEndereco2.Caption := FormatMaskText('99999-999;0', ClientesCEP.AsString) + '  '+#149+'  ' + Trim(ClientesBairro.AsString)+ '  '+#149+'  '+ ClientesMunicipio.AsString+' '+ClientesEstado.AsString;
           lEndereco3.Caption := lEndereco1.Caption;
           lEndereco4.Caption := lEndereco2.Caption;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE Codigo = :pCodigo');
           Bancos.ParamByName('pCodigo').AsInteger := BoletosBanco.AsInteger;
           Bancos.Open;

           pNumeroBanco1.Caption := PoeZero(3, Dados.BancosNumero_Banco.AsInteger)+'-'+Dados.BancosDigito.AsString;
           pNumeroBanco2.Caption := PoeZero(3, Dados.BancosNumero_Banco.AsInteger)+'-'+Dados.BancosDigito.AsString;
           pNomeBanco1.Caption   := Dados.BancosNome.AsString;
           pNomeBanco2.Caption   := Dados.BancosNome.AsString;
      End;
      }

end;

end.
