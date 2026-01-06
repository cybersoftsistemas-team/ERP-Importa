unit frmProcesso_PLI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, RxDBComb, RXDBCtrl, DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, DB, DBAccess, MSAccess, RXCtrls, Mask, Grids, DBGrids, MemDS, RxToolEdit;

type
  TProcesso_PLI = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit6: TDBEdit;
    StaticText3: TStaticText;
    StaticText51: TStaticText;
    StaticText59: TStaticText;
    StaticText107: TStaticText;
    DBDateEdit5: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    GradeLista: TRxDBGrid;
    tReg: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_PLI: TProcesso_PLI;

implementation

uses frmDados, frmMenu_Principal, Funcoes, frmdmDespacho;

{$R *.dfm}

procedure TProcesso_PLI.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_PLI.FormShow(Sender: TObject);
begin
        with dmDespacho do begin
             PLI.SQL.Clear;
             PLI.SQL.Add('SELECT * FROM PLI ORDER BY Numero');
             PLI.Open;

             tReg.SQL.Clear;
             tReg.SQL.Add('SELECT Registro = ISNULL(MAX(Registro), 0)+1 FROM PLI');
        end;
end;

procedure TProcesso_PLI.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with dmDespacho do begin
           if (PLI.State = dsInsert) and (Button = nbPost) then begin
              tReg.Open;
              PLI.FieldByName('Registro').Value := tReg.FieldByName('Registro').asinteger;
              PLI.FieldByName('Empresa').Value  := Menu_Principal.mEmpresa;
              tReg.Close;
           end;
      end;
end;

procedure TProcesso_PLI.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Processo_PLI.Release;
     Processo_PLI:= nil;
     FecharTabelas(Dados, nil, nil, nil);
end;

procedure TProcesso_PLI.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
