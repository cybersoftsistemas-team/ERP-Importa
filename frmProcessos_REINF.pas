unit frmProcessos_REINF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, Grids, DBGrids,
  RXDBCtrl, Mask, DB, MemDS, DBAccess, MSAccess;

type
  TFiscal_ProcessosREINF = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Navega: TDBNavigator;
    cNome: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBDateEdit2: TDBDateEdit;
    cTipoProc: TDBRadioGroup;
    cAutoria: TDBRadioGroup;
    cInf: TGroupBox;
    StaticText4: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    tCodigo: TMSQuery;
    bItens: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cTipoProcClick(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fiscal_ProcessosREINF: TFiscal_ProcessosREINF;

implementation

uses frmDMFiscal, frmDados;

{$R *.dfm}

procedure TFiscal_ProcessosREINF.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TFiscal_ProcessosREINF.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFiscal_ProcessosREINF.FormShow(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          ProcessosREINF.sql.clear;
          ProcessosREINF.sql.add('SELECT * FROM ProcessosREINF ORDER BY Registro');
          ProcessosREINF.open;

          ProcessosREINFItens.sql.clear;
          ProcessosREINFItens.sql.add('SELECT * FROM ProcessosREINFItens ORDER BY Registro');
          ProcessosREINFItens.open;

          Estados.sql.clear;
          Estados.sql.add('SELECT * FROM Estados ORDER BY nome');
          Estados.Open;

          Municipios.sql.clear;
          Municipios.sql.add('SELECT * FROM Municipios WHERE UF = :pUF ORDER BY nome');
          Municipios.ParamByName('pUF').asstring := ProcessosREINFUF_SecaoJud.AsString;
          Municipios.Open;
     end;
end;

procedure TFiscal_ProcessosREINF.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i:Integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         Panel2.Enabled := true;
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
      end;
end;

procedure TFiscal_ProcessosREINF.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with dmFiscal do begin
           if Button = nbPost then begin
              if ProcessosREINF.State = dsInsert then begin
                 Screen.Cursor := crSQLWait;
                 tCodigo.sql.clear;
                 tCodigo.sql.add('SELECT ISNULL(MAX(Registro), 0)+1 AS Reg FROM ProcessosREINF');
                 tCodigo.Open;
                 ProcessosREINFRegistro.Value := tCodigo.FieldByName('Reg').Value;
                 tCodigo.Close;
                 Screen.Cursor := crDefault;
              end;
           end;
      end;
end;

procedure TFiscal_ProcessosREINF.cTipoProcClick(Sender: TObject);
begin
      cAutoria.Enabled := cTipoProc.ItemIndex = 1;
      cinf.Enabled     := cTipoProc.ItemIndex = 1;
end;

procedure TFiscal_ProcessosREINF.DBLookupComboBox1Exit(Sender: TObject);
begin
      with Dados, dmFiscal do begin
          Municipios.sql.clear;
          Municipios.sql.add('SELECT * FROM Municipios WHERE UF = :pUF ORDER BY nome');
          Municipios.ParamByName('pUF').asstring := ProcessosREINFUF_SecaoJud.AsString;
          Municipios.Open;
      end;    
end;

end.
