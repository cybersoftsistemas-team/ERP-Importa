unit frmModificarNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, DBGrids, Grids, Mask;

type
  TModificarNF = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModificarNF: TModificarNF;

implementation

uses frmDMFiscal;

{$R *.dfm}

procedure TModificarNF.FormShow(Sender: TObject);
begin
        with dmFiscal do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais ORDER BY Numero');
             Notas.Open;

             NotasItens.SQL.Clear;
             NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
             NotasItens.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
             NotasItens.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').AsDateTime;
             NotasItens.Open;
        end;
end;

procedure TModificarNF.DBNavigator1Click(Sender: TObject;Button: TNavigateBtn);
begin
         With dmFiscal do begin
             NotasItens.SQL.Clear;
             NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota)');
             NotasItens.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
             NotasItens.Open;
         End;    
end;

end.
