unit frmCadastro_CondicaoCambial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls,
  Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ComCtrls, DB, DBAccess, MSAccess, ClipBrd, RxLookup, Grids, DBGrids, Mask, RxCurrEdit, MemDS, RxToolEdit, system.UITypes;

type
  TCadastro_CondicaoCambial = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText3: TStaticText;
    cCodigo: TDBEdit;
    Grade: TRxDBGrid;
    tCodigo: TMSQuery;
    StaticText15: TStaticText;
    cPercentual1: TDBEdit;
    StaticText16: TStaticText;
    cPercentual2: TDBEdit;
    StaticText17: TStaticText;
    cPercentual3: TDBEdit;
    StaticText1: TStaticText;
    cDias1: TDBEdit;
    StaticText2: TStaticText;
    cDias2: TDBEdit;
    StaticText4: TStaticText;
    cDias3: TDBEdit;
    StaticText6: TStaticText;
    cTotalPercentual: TCurrencyEdit;
    cTotalDias: TCurrencyEdit;
    StaticText105: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    cDias4: TDBEdit;
    StaticText11: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText12: TStaticText;
    DBMemo1: TDBMemo;
    StaticText13: TStaticText;
    DBMemo2: TDBMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPercentual1Change(Sender: TObject);
    procedure cDias1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_CondicaoCambial: TCadastro_CondicaoCambial;

implementation

Uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_CondicaoCambial.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_CondicaoCambial.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.CondicaoCambialCodigo.AsString;
      Menu_Principal.mMem_CondicaoCambio := Dados.CondicaoCambialCodigo.AsInteger;

      Dados.CondicaoCambial.Close;
      Cadastro_CondicaoCambial.Release;
      Cadastro_CondicaoCambial := nil;
end;

procedure TCadastro_CondicaoCambial.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           CondicaoCambial.SQL.Clear;
           CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao');
           CondicaoCambial.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao,Codigo');
           ClassificacaoFinanceira.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_CondicaoCambial.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled   := True;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.CondicaoCambial.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_CondicaoCambial.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) then begin
         If cTotalPercentual.Value > 100 then begin
            MessageDlg('Erro!'+#13+#13+'A soma dos percentuais esta diferente de 100%.', mtError, [mbOK], 0);
            cPercentual1.SetFocus;
            Abort;
         End;
      End;
      If (Button = nbPost) and (Dados.CondicaoCambial.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.SQL.Clear;
         tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0) AS Codigo FROM CondicaoCambial');
         tCodigo.Open;
         Dados.CondicaoCambialCodigo.Value := tCodigo.FieldByname('Codigo').Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_CondicaoCambial.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_CondicaoCambial.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Codigo/Descrição', mPesquisa);
     If Dados.CondicaoCambial.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then
        Dados.CondicaoCambial.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_CondicaoCambial.cPercentual1Change(Sender: TObject);
begin
      cTotalPercentual.Value := (Dados.CondicaoCambialPercentual1.Value + Dados.CondicaoCambialPercentual2.Value + Dados.CondicaoCambialPercentual3.Value);
      cTotalDias.Value       := (Dados.CondicaoCambialVencimento1.Value + Dados.CondicaoCambialVencimento2.Value + Dados.CondicaoCambialVencimento3.Value);
end;

procedure TCadastro_CondicaoCambial.cDias1Change(Sender: TObject);
begin
     cTotalDias.Value       := (Dados.CondicaoCambialVencimento1.Value + Dados.CondicaoCambialVencimento2.Value + Dados.CondicaoCambialVencimento3.Value);
     cTotalPercentual.Value := (Dados.CondicaoCambialPercentual1.Value + Dados.CondicaoCambialPercentual2.Value + Dados.CondicaoCambialPercentual3.Value);
end;

end.

