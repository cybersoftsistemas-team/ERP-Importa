unit frmNotaFiscal_EstornoDebitos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RXDBCtrl, Mask, DB, DBAccess,
  MSAccess, Funcoes, RxLookup, RxDBComb, DateUtils, MemDS, system.UITypes, RxToolEdit;

type
  TNotaFiscal_EstornoDebitos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cEstorno: TDBEdit;
    cDataEstorno: TDBDateEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText9: TStaticText;
    StaticText24: TStaticText;
    StaticText18: TStaticText;
    cValor: TDBEdit;
    cImposto: TDBComboBox;
    tNumero: TMSQuery;
    tNumeroNumero: TSmallintField;
    cObservacao: TDBEdit;
    StaticText2: TStaticText;
    cIncentivo: TDBLookupComboBox;
    StaticText3: TStaticText;
    cCodigoAjuste: TRxDBLookupCombo;
    StaticText4: TStaticText;
    DBMemo1: TDBMemo;
    cTipoAjuste: TRxDBComboBox;
    StaticText5: TStaticText;
    tExiste: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_EstornoDebitos: TNotaFiscal_EstornoDebitos;

implementation

uses frmDMFiscal, frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TNotaFiscal_EstornoDebitos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_EstornoDebitos.FormShow(Sender: TObject);
begin
        With dmFiscal, Dados do begin
             Empresas.SQL.Clear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
             Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
             Empresas.Open;
             
             Estorno.SQL.Clear;
             Estorno.SQL.Add('SELECT * FROM Estorno ORDER BY Numero');
             Estorno.Open;

             AjustesICMS.SQL.Clear;
             AjustesICMS.SQL.Add('SELECT * FROM AjustesICMS WHERE Estado = :pEstado ORDER BY Codigo');
             AjustesICMS.ParamByName('pEstado').AsString := EmpresasEstado.AsString;
             AjustesICMS.Open;

             IncentivosFiscais.SQL.Clear;
             IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
             IncentivosFiscais.Open;
        End;
end;

procedure TNotaFiscal_EstornoDebitos.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
   i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            dmFiscal.EstornoFUNDAP.Value           := False;
            dmFiscal.EstornoIncentivo_Fiscal.Value := '';
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cTipoAjuste.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         dmFiscal.Estorno.Refresh;
         Panel2.Enabled := False;
      End;
end;

procedure TNotaFiscal_EstornoDebitos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
       With dmFiscal do begin
            If (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
               // Verifica se o período fiscal esta bloqueado.
               tExiste.SQL.Clear;
               tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
               tExiste.ParamByName('pAno').AsInteger := YearOf(EstornoData.Value);
               tExiste.ParamByName('pMes').AsInteger := MonthOf(EstornoData.Value);
               tExiste.Open;
               If tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                  If (Button = nbEdit) then
                     MessageDlg('Lançamento não pode ser alterado!'+#13+#13+'Lançamento esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                  If (Button = nbDelete) then
                     MessageDlg('Lançamento pode ser excluído!'+#13+#13+'Lançamento esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                  If (Button = nbPost) then begin
                     MessageDlg('Data do Lançamento dentro de um período bloqueado!', mtError, [mbOK], 0);
                     cDataEstorno.SetFocus;
                  End;
                  Abort;
               End;
            End;

            If (Button = nbPost) and (dmFiscal.Estorno.State = dsInsert) then begin
               tNumero.Open;
               dmFiscal.EstornoNumero.Value := tNumeroNumero.Value + 1;
               tNumero.Close;
            End;
            If Button = nbPost then begin
               If Trim(RemoveCaracter('/', '', cDataEstorno.EditText)) = '' then begin
                  ShowMessage('É necessário informar a data do Estorno!');
                  Abort;
               End;
               If EstornoValor.Value = 0 then begin
                  ShowMessage('É necessário informar o valor para Estorno!');
                  Abort;
               End;
               If cImposto.Text = '' then begin
                  ShowMessage('É necessário informar o código do imposto para Estorno!');
                  Abort;
               End;
               If Trim(cTipoAjuste.Text) =  '' then begin
                  ShowMessage('É necessário informar o "Tipo de Ajuste".');
                  Abort;
               End;
               If Trim(cCodigoAjuste.Text) =  '' then begin
                  ShowMessage('É necessário informar o "Código do Ajuste".');
                  Abort;
               End;
               If cObservacao.Text = '' then begin
                  ShowMessage('É necessário informar a descrição do estorno');
                  Abort;
               End;
            End;
       End;
end;

procedure TNotaFiscal_EstornoDebitos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.


