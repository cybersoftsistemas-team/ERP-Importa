unit frmFaturamento_Duplicatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  ATXPtask, RXCtrls, Mask, Buttons, RXDBCtrl, DB, Grids, DBGrids, MemDS, DBAccess, MSAccess, mdTabEnter,
   Funcoes, VrEdit, Math, RxCurrEdit, RxToolEdit;

type
  TFaturamento_Duplicatas = class(TForm)
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    XPPanel1: TXPPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    lNome: TStaticText;
    StaticText11: TStaticText;
    lDesconto: TStaticText;
    lFormaPgto: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    TabEnter1: TTabEnter;
    StaticText7: TStaticText;
    cCliente: TDBLookupComboBox;
    lCampo: TLabel;
    cFormaPgto: TDBLookupComboBox;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText6: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    cDuplicata1: TMaskEdit;
    cVencimento1: TDateEdit;
    cValor1: TCurrencyEdit;
    cDesconto1: TCurrencyEdit;
    cTotal1: TCurrencyEdit;
    cDuplicata2: TMaskEdit;
    cVencimento2: TDateEdit;
    cValor2: TCurrencyEdit;
    cDesconto2: TCurrencyEdit;
    cTotal2: TCurrencyEdit;
    cDuplicata3: TMaskEdit;
    cVencimento3: TDateEdit;
    cValor3: TCurrencyEdit;
    cDesconto3: TCurrencyEdit;
    cTotal3: TCurrencyEdit;
    cDuplicata4: TMaskEdit;
    cVencimento4: TDateEdit;
    cValor4: TCurrencyEdit;
    cDesconto4: TCurrencyEdit;
    cTotal4: TCurrencyEdit;
    cDuplicata5: TMaskEdit;
    cVencimento5: TDateEdit;
    cValor5: TCurrencyEdit;
    cDesconto5: TCurrencyEdit;
    cTotal5: TCurrencyEdit;
    cDuplicata6: TMaskEdit;
    cVencimento6: TDateEdit;
    cValor6: TCurrencyEdit;
    cDesconto6: TCurrencyEdit;
    cTotal6: TCurrencyEdit;
    cDuplicata7: TMaskEdit;
    cVencimento7: TDateEdit;
    cValor7: TCurrencyEdit;
    cDesconto7: TCurrencyEdit;
    cTotal7: TCurrencyEdit;
    cDuplicata8: TMaskEdit;
    cVencimento8: TDateEdit;
    cValor8: TCurrencyEdit;
    cDesconto8: TCurrencyEdit;
    cTotal8: TCurrencyEdit;
    cDuplicata9: TMaskEdit;
    cVencimento9: TDateEdit;
    cValor9: TCurrencyEdit;
    cDesconto9: TCurrencyEdit;
    cTotal9: TCurrencyEdit;
    cDuplicata10: TMaskEdit;
    cVencimento10: TDateEdit;
    cValor10: TCurrencyEdit;
    cDesconto10: TCurrencyEdit;
    cTotal10: TCurrencyEdit;
    cDuplicata11: TMaskEdit;
    cVencimento11: TDateEdit;
    cValor11: TCurrencyEdit;
    cDesconto11: TCurrencyEdit;
    cTotal11: TCurrencyEdit;
    cDuplicata12: TMaskEdit;
    cVencimento12: TDateEdit;
    cValor12: TCurrencyEdit;
    cDesconto12: TCurrencyEdit;
    cTotal12: TCurrencyEdit;
    cNota: TDBEdit;
    cDataNota: TDBEdit;
    cFatura: TDBEdit;
    cDataEmissao: TDBDateEdit;
    cValorTotal: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure cNotaExit(Sender: TObject);
    procedure Parcelas;
    procedure cFormaPgtoClick(Sender: TObject);
    procedure ZeraDuplicata;
    procedure CarregaDuplicatas;
    procedure cValorTotalChange(Sender: TObject);
    procedure cValor1Change(Sender: TObject);
    procedure SomaDuplicata;
    procedure cValor2Change(Sender: TObject);
    procedure cValor3Change(Sender: TObject);
    procedure cValor4Change(Sender: TObject);
    procedure cValor5Change(Sender: TObject);
    procedure cValor6Change(Sender: TObject);
    procedure cValor7Change(Sender: TObject);
    procedure cValor8Change(Sender: TObject);
    procedure cValor9Change(Sender: TObject);
    procedure cValor10Change(Sender: TObject);
    procedure cValor11Change(Sender: TObject);
    procedure cValor12Change(Sender: TObject);
    procedure cDesconto1Change(Sender: TObject);
    procedure cDesconto2Change(Sender: TObject);
    procedure cDesconto3Change(Sender: TObject);
    procedure cDesconto4Change(Sender: TObject);
    procedure cDesconto5Change(Sender: TObject);
    procedure cDesconto6Change(Sender: TObject);
    procedure cDesconto7Change(Sender: TObject);
    procedure cDesconto8Change(Sender: TObject);
    procedure cDesconto9Change(Sender: TObject);
    procedure cDesconto10Change(Sender: TObject);
    procedure cDesconto11Change(Sender: TObject);
    procedure cDesconto12Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mParcelas : Integer;
    mFatura   : Integer;
//    mData     : TDate;
  end;

var
  Faturamento_Duplicatas: TFaturamento_Duplicatas;

implementation

uses frmDMFiscal, frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFaturamento_Duplicatas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFaturamento_Duplicatas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      With Dados, dmFiscal do begin
           Empresas.Close;
           Clientes.Close;
           ModalidadesPgto.Close;
           Duplicatas.Close;
           Notas.Close;
      End;     
      Faturamento_Duplicatas.Release;
      Faturamento_Duplicatas := nil;
end;

procedure TFaturamento_Duplicatas.FormShow(Sender: TObject);
begin
       Screen.Cursor := crSQLWait;
       With Dados, dmFiscal do begin
            Fatura.SQL.Clear;
            Fatura.SQL.Add('SELECT * FROM Fatura ORDER BY Fatura');
            Fatura.Open;

            Duplicatas.SQL.Clear;
            Duplicatas.SQL.Add('SELECT * FROM Duplicatas ORDER BY Duplicata');
            Duplicatas.Open;

            Clientes.SQL.Clear;
            Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
            Clientes.Open;
            
            ModalidadesPgto.SQL.Clear;
            ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao');
            ModalidadesPgto.Open;

            Notas.SQL.Clear;
            Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = 1)');
            Notas.Open;

            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
            Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;
       End;
       CarregaDuplicatas;
       Screen.Cursor := crDefault;
end;

procedure TFaturamento_Duplicatas.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cFormaPgto.Enabled := Button = nbInsert;
         cNota.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
      End;
      CarregaDuplicatas;
end;

procedure TFaturamento_Duplicatas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    i           : Integer;
    mCampo      : String;
    mValorTotal : Currency;
begin
      With Dados, dmFiscal do begin
           If Button = nbPost then begin
              mValorTotal := (cValor1.Value+cValor2.Value+cValor3.Value+cValor4.Value+cValor5.Value+cValor6.Value+cValor7.Value+cValor8.Value+cValor9.Value+cValor10.Value+cValor11.Value+cValor12.Value);
{
              If mValorTotal > FaturaValor_Total.Value then begin
                 MessageDlg('Erro de valor!'+#13+#13+'Soma das parcelas é maior que o valor total da fatura.', mtError, [mbOK], 0);
                 cValor1.SetFocus;
                 Abort;
              End;
              If mValorTotal < FaturaValor_Total.Value then begin
                 MessageDlg('Erro de valor!'+#13+#13+'Soma das parcelas é menor que o valor total da fatura.', mtError, [mbOK], 0);
                 cValor1.SetFocus;
                 Abort;
              End;
}
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('DELETE FROM Duplicatas WHERE (Fatura = :pFatura)');
              Duplicatas.ParamByName('pFatura').AsString := FaturaFatura.Value;
              Duplicatas.Execute;
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Fatura = :pFatura) ORDER BY Duplicata');
              Duplicatas.ParamByName('pFatura').AsString := FaturaFatura.Value;
              Duplicatas.Open;

              // Pegando a quantidade de parcelas.
              mParcelas := 0;
              If cDuplicata1.Text  <> '' then Inc(mParcelas);
              If cDuplicata2.Text  <> '' then Inc(mParcelas);
              If cDuplicata3.Text  <> '' then Inc(mParcelas);
              If cDuplicata4.Text  <> '' then Inc(mParcelas);
              If cDuplicata5.Text  <> '' then Inc(mParcelas);
              If cDuplicata6.Text  <> '' then Inc(mParcelas);
              If cDuplicata7.Text  <> '' then Inc(mParcelas);
              If cDuplicata8.Text  <> '' then Inc(mParcelas);
              If cDuplicata9.Text  <> '' then Inc(mParcelas);
              If cDuplicata10.Text <> '' then Inc(mParcelas);
              If cDuplicata11.Text <> '' then Inc(mParcelas);
              If cDuplicata12.Text <> '' then Inc(mParcelas);

              For i := 1 to mParcelas do begin
                  mCampo := 'Parcela'+PoeZero(2,i);
                  Duplicatas.Append;
                             DuplicatasFatura.Value := FaturaFatura.Value;

                             If i = 1 then begin
                                DuplicatasDuplicata.Value       := cDuplicata1.Text;
                                DuplicatasData_Vencimento.Value := cVencimento1.Date;
                                DuplicatasValor.Value           := cValor1.Value;
                                DuplicatasDesconto.Value        := cDesconto1.Value;
                                DuplicatasValor_Liquido.Value   := cTotal1.Value;
                             End;
                             If i = 2 then begin
                                DuplicatasDuplicata.Value       := cDuplicata2.Text;
                                DuplicatasData_Vencimento.Value := cVencimento2.Date;
                                DuplicatasValor.Value           := cValor2.Value;
                                DuplicatasDesconto.Value        := cDesconto2.Value;
                                DuplicatasValor_Liquido.Value   := cTotal2.Value;
                             End;
                             If i = 3 then begin
                                DuplicatasDuplicata.Value       := cDuplicata3.Text;
                                DuplicatasData_Vencimento.Value := cVencimento3.Date;
                                DuplicatasValor.Value           := cValor3.Value;
                                DuplicatasDesconto.Value        := cDesconto3.Value;
                                DuplicatasValor_Liquido.Value   := cTotal3.Value;
                             End;
                             If i = 4 then begin
                                DuplicatasDuplicata.Value       := cDuplicata4.Text;
                                DuplicatasData_Vencimento.Value := cVencimento4.Date;
                                DuplicatasValor.Value           := cValor4.Value;
                                DuplicatasDesconto.Value        := cDesconto4.Value;
                                DuplicatasValor_Liquido.Value   := cTotal4.Value;
                             End;
                             If i = 5 then begin
                                DuplicatasDuplicata.Value       := cDuplicata5.Text;
                                DuplicatasData_Vencimento.Value := cVencimento5.Date;
                                DuplicatasValor.Value           := cValor5.Value;
                                DuplicatasDesconto.Value        := cDesconto5.Value;
                                DuplicatasValor_Liquido.Value   := cTotal5.Value;
                             End;
                             If i = 6 then begin
                                DuplicatasDuplicata.Value       := cDuplicata6.Text;
                                DuplicatasData_Vencimento.Value := cVencimento6.Date;
                                DuplicatasValor.Value           := cValor6.Value;
                                DuplicatasDesconto.Value        := cDesconto6.Value;
                                DuplicatasValor_Liquido.Value   := cTotal6.Value;
                             End;
                             If i = 7 then begin
                                DuplicatasDuplicata.Value       := cDuplicata7.Text;
                                DuplicatasData_Vencimento.Value := cVencimento7.Date;
                                DuplicatasValor.Value           := cValor7.Value;
                                DuplicatasDesconto.Value        := cDesconto7.Value;
                                DuplicatasValor_Liquido.Value   := cTotal7.Value;
                             End;
                             If i = 8 then begin
                                DuplicatasDuplicata.Value       := cDuplicata8.Text;
                                DuplicatasData_Vencimento.Value := cVencimento8.Date;
                                DuplicatasValor.Value           := cValor8.Value;
                                DuplicatasDesconto.Value        := cDesconto8.Value;
                                DuplicatasValor_Liquido.Value   := cTotal8.Value;
                             End;
                             If i = 9 then begin
                                DuplicatasDuplicata.Value       := cDuplicata9.Text;
                                DuplicatasData_Vencimento.Value := cVencimento9.Date;
                                DuplicatasValor.Value           := cValor9.Value;
                                DuplicatasDesconto.Value        := cDesconto9.Value;
                                DuplicatasValor_Liquido.Value   := cTotal9.Value;
                             End;
                             If i = 10 then begin
                                DuplicatasDuplicata.Value       := cDuplicata10.Text;
                                DuplicatasData_Vencimento.Value := cVencimento10.Date;
                                DuplicatasValor.Value           := cValor10.Value;
                                DuplicatasDesconto.Value        := cDesconto10.Value;
                                DuplicatasValor_Liquido.Value   := cTotal10.Value;
                             End;
                             If i = 11 then begin
                                DuplicatasDuplicata.Value       := cDuplicata11.Text;
                                DuplicatasData_Vencimento.Value := cVencimento11.Date;
                                DuplicatasValor.Value           := cValor11.Value;
                                DuplicatasDesconto.Value        := cDesconto11.Value;
                                DuplicatasValor_Liquido.Value   := cTotal11.Value;
                             End;
                             If i = 12 then begin
                                DuplicatasDuplicata.Value       := cDuplicata12.Text;
                                DuplicatasData_Vencimento.Value := cVencimento12.Date;
                                DuplicatasValor.Value           := cValor12.Value;
                                DuplicatasDesconto.Value        := cDesconto12.Value;
                                DuplicatasValor_Liquido.Value   := cTotal12.Value;
                             End;

                             If ModalidadesPgto.FieldbyName(mCampo).AsInteger <> 0 then
                                DuplicatasVencimento.Value := Dados.ModalidadesPgto.FieldbyName(mCampo).AsString + ' dias'
                             else
                                dmFiscal.DuplicatasVencimento.Value := 'A VISTA';
                  Duplicatas.Post;
              End;
           End;
      End;
end;

procedure TFaturamento_Duplicatas.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

procedure TFaturamento_Duplicatas.cNotaExit(Sender: TObject);
begin
      With dmFiscal do begin
           If Notas.Locate('Numero;Saida_Entrada', VarArrayOf([FaturaNota.Value,1]), [loCaseInsensitive] ) = True then begin
              If (Fatura.State = dsEdit) or (Fatura.State = dsInsert) then begin
                 FaturaFatura.Value       := NotasNumero.AsString;
                 FaturaCliente.Value      := NotasCliente_Codigo.Value;
                 FaturaData_Nota.Value    := NotasData_Emissao.Value;
                 FaturaNota.Value         := NotasNumero.Value;
                 FaturaData_Emissao.Value := NotasData_Emissao.Value;
                 FaturaValor_Total.Value  := NotasValor_TotalNota.Value;
              End;
           End;
      End;
end;

procedure TFaturamento_Duplicatas.ZeraDuplicata;
begin
      cDuplicata1.Clear;
      cVencimento1.Clear;
      cValor1.Clear;
      cTotal1.Clear;

      cDuplicata2.Clear;
      cVencimento2.Clear;
      cValor2.Clear;
      cTotal2.Clear;

      cDuplicata3.Clear;
      cVencimento3.Clear;
      cValor3.Clear;
      cTotal3.Clear;

      cDuplicata4.Clear;
      cVencimento4.Clear;
      cValor4.Clear;
      cTotal4.Clear;

      cDuplicata5.Clear;
      cVencimento5.Clear;
      cValor5.Clear;
      cTotal5.Clear;

      cDuplicata6.Clear;
      cVencimento6.Clear;
      cValor6.Clear;
      cTotal6.Clear;

      cDuplicata7.Clear;
      cVencimento7.Clear;
      cValor7.Clear;
      cTotal7.Clear;

      cDuplicata8.Clear;
      cVencimento8.Clear;
      cValor8.Clear;
      cTotal8.Clear;

      cDuplicata9.Clear;
      cVencimento9.Clear;
      cValor9.Clear;
      cTotal9.Clear;

      cDuplicata10.Clear;
      cVencimento10.Clear;
      cValor10.Clear;
      cTotal10.Clear;

      cDuplicata11.Clear;
      cVencimento11.Clear;
      cValor11.Clear;
      cTotal11.Clear;

      cDuplicata12.Clear;
      cVencimento12.Clear;
      cValor12.Clear;
      cTotal12.Clear;

      If dmFiscal.Fatura.State = dsInsert then begin
         cDesconto1.Clear;
         cDesconto2.Clear;
         cDesconto3.Clear;
         cDesconto4.Clear;
         cDesconto5.Clear;
         cDesconto6.Clear;
         cDesconto7.Clear;
         cDesconto8.Clear;
         cDesconto9.Clear;
         cDesconto10.Clear;
         cDesconto11.Clear;
         cDesconto12.Clear;
      end else begin
         If cValor1.Value  = 0 then cDesconto1.Clear;
         If cValor2.Value  = 0 then cDesconto2.Clear;
         If cValor3.Value  = 0 then cDesconto3.Clear;
         If cValor4.Value  = 0 then cDesconto4.Clear;
         If cValor5.Value  = 0 then cDesconto5.Clear;
         If cValor6.Value  = 0 then cDesconto6.Clear;
         If cValor7.Value  = 0 then cDesconto7.Clear;
         If cValor8.Value  = 0 then cDesconto8.Clear;
         If cValor9.Value  = 0 then cDesconto9.Clear;
         If cValor10.Value = 0 then cDesconto10.Clear;
         If cValor11.Value = 0 then cDesconto11.Clear;
         If cValor12.Value = 0 then cDesconto12.Clear;
      End;
end;

procedure TFaturamento_Duplicatas.cFormaPgtoClick(Sender: TObject);
begin
      Parcelas;
end;

procedure TFaturamento_Duplicatas.Parcelas;
Var
    i         : Integer;
    mCampo    : String;
    mData     : TDate;
begin
      // Gerando as parcelas da forma de pagamento.
      mParcelas := 0;
      With Dados, dmFiscal do begin
           If cFormaPgto.Text <> '' then begin
              ZeraDuplicata;

              // Pegando a quantidade de parcelas.
              Inc(mParcelas);
              {
              If ModalidadesPgtoParcela02.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela03.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela04.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela05.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela06.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela07.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela08.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela09.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela10.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela11.Value <> 0 then Inc(mParcelas);
              If ModalidadesPgtoParcela12.Value <> 0 then Inc(mParcelas);
              If (mParcelas = 1) and (ModalidadesPgtoParcela01.Value = 0) then mParcelas := 0;
              }
              For i := 1 to mParcelas do begin
                  mCampo := 'Parcela'+PoeZero(2,i);
                  mData  := NotasData_Emissao.Value + ModalidadesPgto.FieldbyName(mCampo).AsInteger;
                  
                  // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                  If (ConfiguracaoDia_Util.Value <> 'N') then begin
                     If (DayOfWeek(mData) = 1) then begin
                        If (ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     End;
                     If (DayOfWeek(mData) = 7) then begin
                        If (ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     End;
                  End;

                  If i = 1  then begin
                     cVencimento1.Date := mData;
                     cDuplicata1.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'A';
                     cValor1.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal1.Value     := cValor1.Value - cDesconto1.Value;
                  End;
                  If i = 2  then begin
                     cVencimento2.Date := mData;
                     cDuplicata2.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'B';
                     cValor2.Value     := (FaturaValor_Total.Value/ mParcelas);
                     cTotal2.Value     := cValor2.Value - cDesconto2.Value;
                  End;
                  If i = 3  then begin
                     cVencimento3.Date := mData;
                     cDuplicata3.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'C';
                     cValor3.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal3.Value     := cValor3.Value - cDesconto3.Value;
                  End;
                  If i = 4  then begin
                     cVencimento4.Date := mData;
                     cDuplicata4.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'D';
                     cValor4.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal4.Value     := cValor4.Value - cDesconto4.Value;
                  End;
                  If i = 5  then begin
                     cVencimento5.Date := mData;
                     cDuplicata5.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'E';
                     cValor5.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal5.Value     := cValor5.Value - cDesconto5.Value;
                  End;
                  If i = 6  then begin
                     cVencimento6.Date := mData;
                     cDuplicata6.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'F';
                     cValor6.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal6.Value     := cValor6.Value - cDesconto6.Value;
                  End;
                  If i = 7  then begin
                     cVencimento7.Date := mData;
                     cDuplicata7.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'G';
                     cValor7.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal7.Value     := cValor7.Value - cDesconto7.Value;
                  End;
                  If i = 8  then begin
                     cVencimento8.Date := mData;
                     cDuplicata8.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'H';
                     cValor8.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal8.Value     := cValor8.Value - cDesconto8.Value;
                  End;
                  If i = 9  then begin
                     cVencimento9.Date := mData;
                     cDuplicata9.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'I';
                     cValor9.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal9.Value     := cValor9.Value - cDesconto9.Value;
                  End;
                  If i = 10 then begin
                     cVencimento10.Date := mData;
                     cDuplicata10.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'J';
                     cValor10.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal10.Value     := cValor10.Value - cDesconto10.Value;
                  End;
                  If i = 11 then begin
                     cVencimento11.Date := mData;
                     cDuplicata11.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'K';
                     cValor11.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal11.Value     := cValor11.Value - cDesconto11.Value;
                  End;
                  If i = 12 then begin
                     cVencimento12.Date := mData;
                     cDuplicata12.Text  := PoeZero(9,FaturaFatura.AsInteger) + 'L';
                     cValor12.Value     := (FaturaValor_Total.Value / mParcelas);
                     cTotal12.Value     := cValor12.Value - cDesconto12.Value;
                  End;
              End;
           End;
      End;
end;

procedure TFaturamento_Duplicatas.CarregaDuplicatas;
Var
   mParcela : Integer;
begin
      With Dados, dmFiscal do begin
           Duplicatas.SQL.Clear;
           Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Fatura = :pFatura)');
           Duplicatas.ParamByName('pFatura').AsString := FaturaFatura.AsString;
           Duplicatas.Open;

           ZeraDuplicata;

           Notas.Locate('Numero', FaturaNota.Value, [loCaseInsensitive]);

           mParcela := 1;
           Duplicatas.First;
           While not Duplicatas.Eof do begin
                 If mParcela = 1  then begin
                    cDuplicata1.Text  := DuplicatasDuplicata.Value;
                    cVencimento1.Date := DuplicatasData_Vencimento.Value;
                    cValor1.Value     := DuplicatasValor.Value;
                    cDesconto1.Value  := DuplicatasDesconto.Value;
                    cTotal1.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 2  then begin
                    cDuplicata2.Text  := DuplicatasDuplicata.Value;
                    cVencimento2.Date := DuplicatasData_Vencimento.Value;
                    cValor2.Value     := DuplicatasValor.Value;
                    cDesconto2.Value  := DuplicatasDesconto.Value;
                    cTotal2.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 3  then begin
                    cDuplicata3.Text  := DuplicatasDuplicata.Value;
                    cVencimento3.Date := DuplicatasData_Vencimento.Value;
                    cValor3.Value     := DuplicatasValor.Value;
                    cDesconto3.Value  := DuplicatasDesconto.Value;
                    cTotal3.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 4  then begin
                    cDuplicata4.Text  := DuplicatasDuplicata.Value;
                    cVencimento4.Date := DuplicatasData_Vencimento.Value;
                    cValor4.Value     := DuplicatasValor.Value;
                    cDesconto4.Value  := DuplicatasDesconto.Value;
                    cTotal4.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 5  then begin
                    cDuplicata5.Text  := DuplicatasDuplicata.Value;
                    cVencimento5.Date := DuplicatasData_Vencimento.Value;
                    cValor5.Value     := DuplicatasValor.Value;
                    cDesconto5.Value  := DuplicatasDesconto.Value;
                    cTotal5.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 6  then begin
                    cDuplicata6.Text  := DuplicatasDuplicata.Value;
                    cVencimento6.Date := DuplicatasData_Vencimento.Value;
                    cValor6.Value     := DuplicatasValor.Value;
                    cDesconto6.Value  := DuplicatasDesconto.Value;
                    cTotal6.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 7  then begin
                    cDuplicata7.Text  := DuplicatasDuplicata.Value;
                    cVencimento7.Date := DuplicatasData_Vencimento.Value;
                    cValor7.Value     := DuplicatasValor.Value;
                    cDesconto7.Value  := DuplicatasDesconto.Value;
                    cTotal7.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 8  then begin
                    cDuplicata8.Text  := DuplicatasDuplicata.Value;
                    cVencimento8.Date := DuplicatasData_Vencimento.Value;
                    cValor8.Value     := DuplicatasValor.Value;
                    cDesconto8.Value  := DuplicatasDesconto.Value;
                    cTotal8.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 9  then begin
                    cDuplicata9.Text  := DuplicatasDuplicata.Value;
                    cVencimento9.Date := DuplicatasData_Vencimento.Value;
                    cValor9.Value     := DuplicatasValor.Value;
                    cDesconto9.Value  := DuplicatasDesconto.Value;
                    cTotal9.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 10 then begin
                    cDuplicata10.Text  := DuplicatasDuplicata.Value;
                    cVencimento10.Date := DuplicatasData_Vencimento.Value;
                    cValor10.Value     := DuplicatasValor.Value;
                    cDesconto10.Value  := DuplicatasDesconto.Value;
                    cTotal10.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 11 then begin
                    cDuplicata11.Text  := DuplicatasDuplicata.Value;
                    cVencimento11.Date := DuplicatasData_Vencimento.Value;
                    cValor11.Value     := DuplicatasValor.Value;
                    cDesconto11.Value  := DuplicatasDesconto.Value;
                    cTotal11.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 If mParcela = 12 then begin
                    cDuplicata12.Text  := DuplicatasDuplicata.Value;
                    cVencimento12.Date := DuplicatasData_Vencimento.Value;
                    cValor12.Value     := DuplicatasValor.Value;
                    cDesconto12.Value  := DuplicatasDesconto.Value;
                    cTotal12.Value     := DuplicatasValor_Liquido.Value;
                 End;
                 Duplicatas.Next;
                 Inc(mParcela);
           End;
           SomaDuplicata;
      End;
End;

procedure TFaturamento_Duplicatas.cValorTotalChange(Sender: TObject);
begin
      If (dmFiscal.Fatura.State = dsInsert) and  (cFormaPgto.Text <> '') then Parcelas;
end;

procedure TFaturamento_Duplicatas.cValor1Change(Sender: TObject);
begin
      SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.SomaDuplicata;
begin
      cTotal1.Value  := cValor1.Value  - cDesconto1.Value;
      cTotal2.Value  := cValor2.Value  - cDesconto2.Value;
      cTotal3.Value  := cValor3.Value  - cDesconto3.Value;
      cTotal4.Value  := cValor4.Value  - cDesconto4.Value;
      cTotal5.Value  := cValor5.Value  - cDesconto5.Value;
      cTotal6.Value  := cValor6.Value  - cDesconto6.Value;
      cTotal7.Value  := cValor7.Value  - cDesconto7.Value;
      cTotal8.Value  := cValor8.Value  - cDesconto8.Value;
      cTotal9.Value  := cValor9.Value  - cDesconto9.Value;
      cTotal10.Value := cValor10.Value - cDesconto11.Value;
      cTotal11.Value := cValor11.Value - cDesconto12.Value;
      cTotal12.Value := cValor11.Value - cDesconto12.Value;
end;

procedure TFaturamento_Duplicatas.cValor2Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor3Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor4Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor5Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor6Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor7Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor8Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor9Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor10Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor11Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cValor12Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto1Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto2Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto3Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto4Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto5Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto6Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto7Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto8Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto9Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto10Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto11Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFaturamento_Duplicatas.cDesconto12Change(Sender: TObject);
begin
     SomaDuplicata;
end;

end.
