unit frmImpressao_Cadastros_TipoNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, RxLookup, ppVar, ppCtrls, ppBands,
  ppDBPipe, ppReport, ppMemo, myChkBox, ppRichTx, ppPageBreak, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Cadastros_TipoNota = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cTipo: TRadioGroup;
    cTipoNota: TRxDBLookupCombo;
    StaticText3: TStaticText;
    rTipoNota: TppReport;
    pTipoNota: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    pEmpresas: TppDBPipeline;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBRichText1: TppDBRichText;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel6: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel8: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    myDBCheckBox5: TmyDBCheckBox;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    myDBCheckBox6: TmyDBCheckBox;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    ppShape3: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    myDBCheckBox15: TmyDBCheckBox;
    myDBCheckBox16: TmyDBCheckBox;
    myDBCheckBox17: TmyDBCheckBox;
    myDBCheckBox18: TmyDBCheckBox;
    myDBCheckBox19: TmyDBCheckBox;
    myDBCheckBox20: TmyDBCheckBox;
    ppShape4: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    myDBCheckBox9: TmyDBCheckBox;
    myDBCheckBox10: TmyDBCheckBox;
    myDBCheckBox11: TmyDBCheckBox;
    myDBCheckBox12: TmyDBCheckBox;
    myDBCheckBox13: TmyDBCheckBox;
    myDBCheckBox14: TmyDBCheckBox;
    ppLabel29: TppLabel;
    myDBCheckBox21: TmyDBCheckBox;
    ppDBMemo1: TppDBMemo;
    ppMemo1: TppMemo;
    ppDBMemo2: TppDBMemo;
    ppMemo2: TppMemo;
    ppDBMemo3: TppDBMemo;
    ppMemo3: TppMemo;
    ppDBMemo4: TppDBMemo;
    ppMemo4: TppMemo;
    ppMemo5: TppMemo;
    ppDBMemo5: TppDBMemo;
    ppMemo6: TppMemo;
    ppDBMemo6: TppDBMemo;
    ppMemo7: TppMemo;
    ppDBMemo7: TppDBMemo;
    ppMemo8: TppMemo;
    ppDBMemo8: TppDBMemo;
    ppMemo9: TppMemo;
    ppDBMemo9: TppDBMemo;
    ppMemo10: TppMemo;
    ppDBMemo10: TppDBMemo;
    ppMemo11: TppMemo;
    ppDBMemo11: TppDBMemo;
    ppMemo12: TppMemo;
    ppDBMemo12: TppDBMemo;
    ppMemo13: TppMemo;
    ppDBMemo13: TppDBMemo;
    ppMemo14: TppMemo;
    ppLabel4: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    pQuebra: TppPageBreak;
    ppDBMemo14: TppDBMemo;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel30: TppLabel;
    myDBCheckBox22: TmyDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pSaidaEntradaCalc(Sender: TObject; var Value: Variant);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Cadastros_TipoNota: TImpressao_Cadastros_TipoNota;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_Cadastros_TipoNota.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Cadastros_TipoNota.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Impressao_Cadastros_TipoNota.Release;
     Impressao_Cadastros_TipoNota := nil;
end;

procedure TImpressao_Cadastros_TipoNota.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Cadastros_TipoNota.FormShow(Sender: TObject);
begin
      With Dados do begin
           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota ORDER BY Codigo');
           TipoNota.Open;
      End;
end;

procedure TImpressao_Cadastros_TipoNota.pSaidaEntradaCalc(Sender: TObject;var Value: Variant);
begin
      If Dados.TipoNota.FieldByName('Saida_Entrada').AsInteger = 0 then Value := 'ENTRADA' else Value := 'SAÍDA';
end;

procedure TImpressao_Cadastros_TipoNota.bImprimirClick(Sender: TObject);
var
    mTipoNota : Integer;
begin
      With Dados do begin
           mTipoNota := TipoNotaCodigo.AsInteger;
           TipoNota.SQL.Clear;
           TipoNota.SQl.Add('SELECT * FROM TipoNota');
           If Trim(cTipoNota.Value ) <> '' then begin
              TipoNota.SQl.Add('WHERE(Codigo = :pCodigo)');
              TipoNota.ParamByName('pCodigo').AsInteger := mTipoNota;
           end else begin
              If cTipo.ItemIndex < 2 then begin
                 TipoNota.SQl.Add('WHERE(Saida_Entrada = :pTipo)');
                 TipoNota.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
              End;
           End;   
           TipoNota.SQl.Add('ORDER BY Codigo');
           TipoNota.Open;

           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

           rTipoNota.Print;
           rTipoNota.Reset;

           TipoNota.SQL.Clear;
           TipoNota.SQl.Add('SELECT * FROM TipoNota ORDER BY Codigo');
           TipoNota.Open;
      End;
end;

end.
