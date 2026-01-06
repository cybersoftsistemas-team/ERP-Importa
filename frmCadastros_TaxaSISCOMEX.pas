unit frmCadastros_TaxaSISCOMEX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RXDBCtrl,
  DB, DBAccess, MSAccess, RXSpin, Mask, Grids,
  DBGrids, RxCurrEdit, MemDS, RxToolEdit;

type
  TCadastro_TaxaSISCOMEX = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    Grade: TRxDBGrid;
    tBloco: TMSQuery;
    cValDI: TCurrencyEdit;
    cAd: TRxSpinEdit;
    cTaxa: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel5: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cAdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_TaxaSISCOMEX: TCadastro_TaxaSISCOMEX;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_TaxaSISCOMEX.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_TaxaSISCOMEX.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_TaxaSISCOMEX.Release;
     Cadastro_TaxaSISCOMEX := nil;
end;

procedure TCadastro_TaxaSISCOMEX.FormShow(Sender: TObject);
begin
      with Dados do begin
           TaxaSISCOMEX.SQL.Clear;
           TaxaSISCOMEX.SQL.Add('SELECT * FROM TaxaSISCOMEX ORDER BY Bloco');
           TaxaSISCOMEX.Open;

           Configuracao.Open;
           cValDI.Value := Configuracao.FieldByName('Valor_DI').AsCurrency;
           Configuracao.Close;
      end;
end;

procedure TCadastro_TaxaSISCOMEX.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_TaxaSISCOMEX.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if (Button = nbInsert) or (Button = nbEdit) then begin
              Grade.Setfocus;
           end;
           if (Button = nbPost) then begin
              TaxaSISCOMEX.Refresh;
           end;   
      end;
end;

procedure TCadastro_TaxaSISCOMEX.cAdChange(Sender: TObject);
var
   i, ini:integer;
begin
      with Dados do begin
           if cAd.Value < 0 then cAd.Value := 0;

           cTaxa.Value := cValDI.Value;

           TaxaSISCOMEX.DisableControls;
           TaxaSISCOMEX.First;

           ini := 1;

           while not TaxaSISCOMEX.eof do begin
                 for i := ini to cAd.AsInteger do begin
                     if (i >= TaxaSISCOMEXDe.AsInteger) and (i <= TaxaSISCOMEXAte.AsInteger) then begin
                        cTaxa.Value := cTaxa.Value + TaxaSISCOMEXValor.AsCurrency;
                     end;
                 end;
                 inc(ini);
                 TaxaSISCOMEX.Next;
           end;
           TaxaSISCOMEX.DisableControls;
      end;
end;

end.
