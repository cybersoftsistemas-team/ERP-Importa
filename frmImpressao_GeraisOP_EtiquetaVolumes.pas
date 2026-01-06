unit frmImpressao_GeraisOP_EtiquetaVolumes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, RXSpin, Vcl.ExtCtrls, RXCtrls, ppParameter,ppBands,
  ppReport, ppCtrls, ppDBPipe, DB, DBAccess, MSAccess, ppDesignLayer, ppDB, MemDS, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, Vcl.Mask;

type
  TImpressao_GeraisOP_EtiquetaVolumes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText1: TStaticText;
    cNota: TRxSpinEdit;
    StaticText2: TStaticText;
    cVolumes: TRxSpinEdit;
    rEtiquetaVolumes: TppReport;
    ppDetailBand1: TppDetailBand;
    ppParameterList1: TppParameterList;
    ppLabel1: TppLabel;
    tVolumes: TMSQuery;
    dstVolumes: TDataSource;
    pEtiqueta: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_GeraisOP_EtiquetaVolumes: TImpressao_GeraisOP_EtiquetaVolumes;

implementation



{$R *.dfm}

procedure TImpressao_GeraisOP_EtiquetaVolumes.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_GeraisOP_EtiquetaVolumes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_GeraisOP_EtiquetaVolumes.Release;
      Impressao_GeraisOP_EtiquetaVolumes := nil;
end;

procedure TImpressao_GeraisOP_EtiquetaVolumes.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_GeraisOP_EtiquetaVolumes.bImprimirClick(Sender: TObject);
Var
    i : Integer;
begin
      tVolumes.SQL.Clear;
      tVolumes.SQL.Add('TRUNCATE TABLE EtiquetaVolumes');
      tVolumes.Execute;
      tVolumes.SQL.Clear;
      tVolumes.SQL.Add('SELECT * FROM EtiquetaVolumes');
      tVolumes.Open;

      For i := 1 to cVolumes.AsInteger do begin
          tVolumes.Append;
                   tVolumes.FieldByName('Nota').AsInteger    := cNota.AsInteger;
                   tVolumes.FieldByName('Unidade').AsInteger := i;
                   tVolumes.FieldByName('Volumes').AsInteger := cVolumes.AsInteger;
          tVolumes.Post;
      End;

      rEtiquetaVolumes.Reset;
      rEtiquetaVolumes.Print;
end;

end.
