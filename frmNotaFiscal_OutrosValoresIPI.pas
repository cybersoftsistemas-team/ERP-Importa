unit frmNotaFiscal_OutrosValoresIPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls,
  RXDBCtrl, Mask, Funcoes, DateUtils, MemDS, system.UITypes, RxToolEdit;

type
  TNotaFiscal_OutrosValoresIPI = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cLancamento: TDBEdit;
    cData: TDBDateEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText24: TStaticText;
    cNota: TDBEdit;
    StaticText3: TStaticText;
    StaticText17: TStaticText;
    cDataNota: TDBDateEdit;
    StaticText18: TStaticText;
    cValor: TDBEdit;
    cDadosNota: TGroupBox;
    StaticText2: TStaticText;
    cNaturezaDesc: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText4: TStaticText;
    cCliente: TDBEdit;
    StaticText5: TStaticText;
    DBEdit4: TDBEdit;
    StaticText6: TStaticText;
    cTipoNota: TDBEdit;
    GroupBox2: TGroupBox;
    cObservacao: TDBEdit;
    lTipo: TStaticText;
    tNumero: TMSQuery;
    tNumeroNumero: TSmallintField;
    StaticText7: TStaticText;
    cTipoAjuste: TDBLookupComboBox;
    StaticText8: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    tExiste: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Label2: TLabel;
    lBCICMSOper: TDBText;
    Label4: TLabel;
    lValorICMSOper: TDBText;
    Label3: TLabel;
    lBCICMSSub: TDBText;
    Label1: TLabel;
    lValorICMSSub: TDBText;
    Label5: TLabel;
    lTotalProd: TDBText;
    Label6: TLabel;
    lValorFrete: TDBText;
    Label9: TLabel;
    lValorSeguro: TDBText;
    Label8: TLabel;
    lDespesas: TDBText;
    Label7: TLabel;
    lValorIPI: TDBText;
    Label10: TLabel;
    lTotalNota: TDBText;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cNotaExit(Sender: TObject);
    procedure cDataNotaExit(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_OutrosValoresIPI: TNotaFiscal_OutrosValoresIPI;

implementation

uses frmDMFiscal, frmDados;

{$R *.dfm}

procedure TNotaFiscal_OutrosValoresIPI.FormShow(Sender: TObject);
begin
        With dmFiscal, Dados do begin
             OutrosValoresIPI.SQL.Clear;
             OutrosValoresIPI.SQL.Add('SELECT * FROM OutrosValoresIPI ORDER BY Numero');
             OutrosValoresIPI.Open;

             Natureza.Open;
             Clientes.Open;
             TipoNota.Open;
             AjustesIPI.Open;
             OrigemAjustes.Open;

             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData)' );
             Notas.ParamByName('pNumero').AsInteger := OutrosValoresIPINota_Numero.Value;
             Notas.ParamByName('pData').AsDate      := OutrosValoresIPINota_Data.Value;
             Notas.Open;
             Natureza.Locate('Codigo', NotasNatureza_Codigo.Value, [loCaseInsensitive]);
             Clientes.Locate('Codigo', NotasCliente_Codigo.Value , [loCaseInsensitive]);
             TipoNota.Locate('Codigo', NotasTipo_Nota.Value      , [loCaseInsensitive]);
             
             If Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                lTipo.Caption := 'Crédito';
             end else begin
                lTipo.Caption := 'Débito';
             End;
        End;
end;

procedure TNotaFiscal_OutrosValoresIPI.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
   i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         cTipoNota.Text     := '';
         cNaturezaDesc.Text := '';
         cCliente.Text      := '';
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cData.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         dmFiscal.OutrosValoresIPI.Refresh;
         Panel2.Enabled := False;
      End;

      With dmFiscal, Dados do begin
          Notas.SQL.Clear;
          Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData)' );
          Notas.ParamByName('pNumero').AsInteger := OutrosValoresIPINota_Numero.Value;
          Notas.ParamByName('pData').AsDate      := OutrosValoresIPINota_Data.Value;
          Notas.Open;
          Natureza.Locate('Codigo', NotasNatureza_Codigo.Value, [loCaseInsensitive]);
          Clientes.Locate('Codigo', NotasCliente_Codigo.Value , [loCaseInsensitive]);
          TipoNota.Locate('Codigo', NotasTipo_Nota.Value      , [loCaseInsensitive]);
          If Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
             lTipo.Caption := 'Crédito';
          end else begin
             lTipo.Caption := 'Débito';
          End;
      End;
end;

procedure TNotaFiscal_OutrosValoresIPI.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
       With dmFiscal do begin
            If (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
               // Verifica se o período fiscal esta bloqueado.
               tExiste.SQL.Clear;
               tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
               tExiste.ParamByName('pAno').AsInteger := YearOf(OutrosValoresIPIData.Value);
               tExiste.ParamByName('pMes').AsInteger := MonthOf(OutrosValoresIPIData.Value);
               tExiste.Open;
               If tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                  If (Button = nbEdit) then
                     MessageDlg('Lançamento não pode ser alterado!'+#13+#13+'Lançamento esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                  If (Button = nbDelete) then
                     MessageDlg('Lançamento pode ser excluído!'+#13+#13+'Lançamento esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                  If (Button = nbPost) then begin
                     MessageDlg('Data do Lançamento dentro de um período bloqueado!', mtError, [mbOK], 0);
                     cData.SetFocus;
                  End;
                  Abort;
               End;
            End;

            If (Button = nbPost) and (dmFiscal.OutrosValoresIPI.State = dsInsert) then begin
               tNumero.Open;
               dmFiscal.OutrosValoresIPINumero.Value := tNumeroNumero.Value + 1;
               tNumero.Close;
            End;

            If Button = nbPost then begin
               If Trim(RemoveCaracter('/', '', cData.EditText)) = '' then begin
                  ShowMessage('É necessário informar a data do Lançamento!');
                  Abort;
               End;
               If OutrosValoresIPINota_Numero.Value = 0 then begin
                  ShowMessage('É necessário informar o número da nota fiscal de referência!');
                  Abort;
               End;
               If Trim(RemoveCaracter('/', '', cDataNota.EditText)) = '' then begin
                  ShowMessage('É necessário informar a data da nota fiscal de referência!');
                  Abort;
               End;
               If OutrosValoresIPIValor.Value = 0 then begin
                  ShowMessage('É necessário informar um valor!');
                  Abort;
               End;
               OutrosValoresIPIFUNDAP.Value           := NotasFUNDAP.Value;
               OutrosValoresIPIIncentivo_Fiscal.Value := NotasIncentivo_Fiscal.Value;
            End;
       End;
end;

procedure TNotaFiscal_OutrosValoresIPI.cNotaExit(Sender: TObject);
begin
      With dmFiscal, Dados do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData) AND (Saida_Entrada = :pTipo)' );
           Notas.ParamByName('pNumero').AsInteger := OutrosValoresIPINota_Numero.Value;
           Notas.ParamByName('pData').AsDate      := OutrosValoresIPINota_Data.Value;
           Notas.Open;
           If Panel2.Enabled = True then begin
              If (Notas.RecordCount = 0) and (Trim(RemoveCaracter('/', '', cDataNota.EditText)) <> '') then begin
                  ShowMessage('Nota Fiscal não encontrada com o número e a data informada!');
                  cDataNota.Clear;
                  cNota.SetFocus;
              End;
           End;
           If Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
              OutrosValoresIPIDebito_Credito.Value := 1;
              lTipo.Caption                        := 'Crédito';
           end else begin
              //EstornoDebito_Credito.Value := 0;
              lTipo.Caption               := 'Débito';
           End;   
           
           Natureza.Locate('Codigo', NotasNatureza_Codigo.Value, [loCaseInsensitive]);
           Clientes.Locate('Codigo', NotasCliente_Codigo.Value , [loCaseInsensitive]);
           TipoNota.Locate('Codigo', NotasTipo_Nota.Value      , [loCaseInsensitive]);
      End;
end;

procedure TNotaFiscal_OutrosValoresIPI.cDataNotaExit(Sender: TObject);
begin
        With dmFiscal, Dados do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData)');
             Notas.ParamByName('pNumero').AsInteger := OutrosValoresIPINota_Numero.Value;
             Notas.ParamByName('pData').AsDate      := OutrosValoresIPINota_Data.Value;
             Notas.Open;
             If (Notas.RecordCount = 0) then begin
                 ShowMessage('Nota Fiscal não encontrada com o número e a data informada!');
                 cDataNota.Clear;
                 cNota.SetFocus;
             End;
             If Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                OutrosValoresIPIDebito_Credito.Value := 1;
                lTipo.Caption                        := 'Crédito';
             end else begin
                OutrosValoresIPIDebito_Credito.Value := 0;
                lTipo.Caption                        := 'Débito';
             End;

             Natureza.Locate('Codigo', NotasNatureza_Codigo.Value, [loCaseInsensitive]);
             Clientes.Locate('Codigo', NotasCliente_Codigo.Value , [loCaseInsensitive]);
             TipoNota.Locate('Codigo', NotasTipo_Nota.Value      , [loCaseInsensitive]);
        End;
end;

procedure TNotaFiscal_OutrosValoresIPI.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_OutrosValoresIPI.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image4.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image5.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image6.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image7.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image8.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image9.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image10.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image11.Picture.LoadFromFile('fundo_barra.bmp');
        If FileExists('fundo_barra.bmp') then Image12.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNotaFiscal_OutrosValoresIPI.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_OutrosValoresIPI.Release;
     NotaFiscal_OutrosValoresIPI := nil;
end;

end.
