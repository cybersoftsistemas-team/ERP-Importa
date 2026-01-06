unit frmImpressao_FiscaisOP_CFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands, myChkBox, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, ppDB, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FiscaisOP_CFOP = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cSituacao: TRadioGroup;
    rCFOP: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText1: TppDBText;
    ppDBMemo1: TppDBMemo;
    myDBCheckBox1: TmyDBCheckBox;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pCFOP: TppDBPipeline;
    GroupBox1: TGroupBox;
    cServico: TCheckBox;
    cDiferencial: TCheckBox;
    cImobilizado: TCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    lTitulo2: TppLabel;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FiscaisOP_CFOP: TImpressao_FiscaisOP_CFOP;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_FiscaisOP_CFOP.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_CFOP.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_CFOP.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_FiscaisOP_CFOP.Release;
      Impressao_FiscaisOP_CFOP := nil;
end;

procedure TImpressao_FiscaisOP_CFOP.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza ');
           If cSituacao.ItemIndex = 0 then begin
              Natureza.SQL.Add('WHERE (Ativo = 1) ');
              lTitulo2.Caption := 'Ativas';
           End;
           If cSituacao.ItemIndex = 1 then begin
              Natureza.SQL.Add('WHERE (Ativo = 0) ');
              lTitulo2.Caption := 'Desativadas';
           End;
           If cImobilizado.Checked then begin
              Natureza.SQL.Add('AND (Imobilizado = :pImobilizado)');
              Natureza.ParamByName('pImobilizado').AsBoolean := cImobilizado.Checked;
              lTitulo2.Caption := lTitulo2.Caption + '/Imobilizado'
           End;
           If cServico.Checked then begin
              Natureza.SQL.Add('AND (Servico = :pServico)');
              Natureza.ParamByName('pServico').AsBoolean     := cServico.Checked;
              lTitulo2.Caption := lTitulo2.Caption + '/Serviço'
           End;
           If cDiferencial.Checked then begin
              Natureza.SQL.Add('AND (Diferencial_ICMS = :pDiferencial)');
              Natureza.ParamByName('pDiferencial').AsBoolean := cDiferencial.Checked;
              lTitulo2.Caption := lTitulo2.Caption + '/Diferencial de Alíquota de ICMS'
           End;
           Natureza.Open;
      End;
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rCFOP.Print;
      rCFOP.Reset;
end;

end.
