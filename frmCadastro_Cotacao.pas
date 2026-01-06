unit frmCadastro_Cotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
   RXDBCtrl, DB, DBAccess, MSAccess, RXCtrls, ClipBrd, Funcoes,
  Grids, DBGrids, Mask, MemDS, RxToolEdit;
type
  TCadastro_Cotacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    cValor: TDBEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    StaticText5: TStaticText;
    DBEdit2: TDBEdit;
    cData: TDBDateEdit;
    StaticText6: TStaticText;
    DBEdit3: TDBEdit;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    StaticText3: TStaticText;
    cPesquisa: TEdit;
    tPesquisa: TMSQuery;
    Navega: TDBNavigator;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit1Change(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cDataExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Cotacao: TCadastro_Cotacao;

implementation

Uses frmDados;

{$R *.dfm}

procedure TCadastro_Cotacao.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do Begin
           Moedas.SQL.Clear;
           Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Codigo');
           Moedas.Open;
           Cotacao.SQL.Clear;
           Cotacao.SQL.Add('SELECT * FROM Cotacao WHERE (Moeda = :pMoeda) ORDER BY Data DESC');
           Cotacao.ParamByName('pMoeda').AsInteger := MoedasCodigo.Value;
           Cotacao.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Cotacao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Cotacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.CotacaoMoeda.AsString + '|'+Dados.CotacaoData.AsString;
      With Dados do Begin
           Moedas.Close;
           Dados.Cotacao.Close;
      End;
           
      LimpaMemoria;
      Cadastro_Cotacao.Release;
      Cadastro_Cotacao := nil;
end;

procedure TCadastro_Cotacao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         Panel2.Enabled := True;
         If Button = nbInsert then begin
            Dados.CotacaoMoeda.Value := Dados.MoedasCodigo.Value;
            Dados.CotacaoData.Value  := Date;
            cData.Enabled := true;
            cData.SetFocus;
         End;
         If Button = nbEdit then begin
            cData.Enabled := false;
            cValor.SetFocus;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Cotacao.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor  := crDefault;
      End;
end;

procedure TCadastro_Cotacao.DBEdit1Change(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        Dados.Cotacao.DisableControls;
        Dados.Cotacao.Close;
        Dados.Cotacao.SQL.Clear;
        Dados.Cotacao.SQL.Add('SELECT * FROM Cotacao WHERE Moeda = :pMoeda ORDER BY Data DESC');
        Dados.Cotacao.ParamByName('pMoeda').AsInteger := Dados.MoedasCodigo.Value;
        Dados.Cotacao.Open;
        Dados.Cotacao.EnableControls;
        Screen.Cursor := crDefault;
end;

procedure TCadastro_Cotacao.cPesquisaChange(Sender: TObject);
begin
        Dados.Moedas.Locate('Nome', cPesquisa.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_Cotacao.cDataExit(Sender: TObject);
begin
        tPesquisa.Close;
        tPesquisa.SQL.Clear;
        tPesquisa.SQL.Add('SELECT * FROM Cotacao WHERE (Moeda = :pMoeda) and (Data = :pData)');
        tPesquisa.ParamByName('pData').AsDate     := cData.Date;
        tPesquisa.ParamByName('pMoeda').AsInteger := Dados.MoedasCodigo.Value;
        tPesquisa.Open;
        If (Dados.Cotacao.State = dsInsert) and (tPesquisa.RecordCount <> 0) then begin
           ShowMessage('Cotação ja cadastrada para ('+Trim(Dados.MoedasNome.Value)+') na data informada!');
           Navega.BtnClick(nbCancel);
        End;   
end;

procedure TCadastro_Cotacao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Cotacao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

end.
