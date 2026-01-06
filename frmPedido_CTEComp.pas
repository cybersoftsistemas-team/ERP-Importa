unit frmPedido_CTEComp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RxLookup, DB, DBAccess, MSAccess, Mask, Grids, system.UITypes, MemDS;

type
  TPedido_CTEComp = class(TForm)
    Grade: TDBGrid;
    Panel1: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    StaticText28: TStaticText;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    cClassificacao: TRxDBLookupCombo;
    tReg: TMSQuery;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_CTEComp: TPedido_CTEComp;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TPedido_CTEComp.FormShow(Sender: TObject);
begin
      with Dados do begin
           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo = 0) AND (Desativada <> 1) AND (Nivel <= :pNivel) ORDER BY Descricao');
           ClassificacaoFinanceira.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
           ClassificacaoFinanceira.Open;
      end;
end;

procedure TPedido_CTEComp.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_CTEComp.FormClose(Sender: TObject;var Action: TCloseAction);
begin
    Pedido_CTEComp.Release;
    Pedido_CTEComp := nil;
end;

procedure TPedido_CTEComp.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     with Dados do begin
          if (Button = nbPost) and (PedidoCTEComp.State = dsInsert) then begin
             tReg.SQl.Clear;
             tReg.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidoCTEComp');
             tReg.Open;

             PedidoCTEComp.FieldByName('Registro').Value := tReg.FieldByName('Registro').AsInteger;
             PedidoCTEComp.FieldByName('Pedido').Value   := PedidoCTE.FieldByName('Pedido').AsInteger;
          end;
          if Button = nbDelete then begin
             if MessageDlg('Deseja realmente remover este item?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                Abort;
             end;
          end;
     end;
end;

procedure TPedido_CTEComp.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i:Integer;
begin
      Screen.Cursor := crSQLWait;
      bSair.Enabled := true;
      Grade.Enabled := true;

      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         cCodigo.SetFocus;
         bSair.Enabled := false;
         Grade.Enabled := false;
      end;
      Screen.Cursor := crDefault;
end;

end.
