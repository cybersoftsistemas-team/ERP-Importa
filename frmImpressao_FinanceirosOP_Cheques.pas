unit frmImpressao_FinanceirosOP_Cheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, system.UITypes, Vcl.Dialogs, ppParameter, ppVar, ppCtrls, ppBands,
  ppReport, ppDBPipe, DB, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Mask, Buttons, Vcl.ExtCtrls, RXCtrls, myChkBox, RxToolEdit, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_FinanceirosOP_Cheques = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText3: TStaticText;
    cBanco: TRxDBLookupCombo;
    tBancos: TMSQuery;
    dstBancos: TDataSource;
    pEmpresas: TppDBPipeline;
    rCheques: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape4: TppShape;
    ppLabel3: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape12: TppShape;
    ppLabel13: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel12: TppLabel;
    ppParameterList1: TppParameterList;
    pCheques: TppDBPipeline;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText6: TppDBText;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine1: TppLine;
    ppShape8: TppShape;
    ppLabel7: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    cZebrado: TCheckBox;
    cSituacao: TRadioGroup;
    StaticText2: TStaticText;
    cEmitente: TRxDBLookupCombo;
    dstEmitente: TDataSource;
    tEmitente: TMSQuery;
    bLimpar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_Cheques: TImpressao_FinanceirosOP_Cheques;

implementation

uses frmDados, FUNCOES, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_Cheques.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_Cheques.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Impressao_FinanceirosOP_Cheques.Release;
      Impressao_FinanceirosOP_Cheques := nil;
end;

procedure TImpressao_FinanceirosOP_Cheques.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_Cheques.FormShow(Sender: TObject);
begin
      with Dados do begin
           tBancos.SQL.Clear;
           tBancos.SQL.Add('SELECT DISTINCT Banco');
           tBancos.SQL.Add('FROM   Cheques');
           tBancos.SQL.Add('ORDER BY Banco');
           tBancos.Open;

           tEmitente.SQL.Clear;
           tEmitente.SQL.Add('SELECT DISTINCT Emitente');
           tEmitente.SQL.Add('FROM   Cheques');
           tEmitente.SQL.Add('ORDER BY Emitente');
           tEmitente.Open;
      end;
end;

procedure TImpressao_FinanceirosOP_Cheques.bImprimirClick(Sender: TObject);
begin
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;
           
           Cheques.SQL.Clear;
           Cheques.SQL.Add('SELECT *');
           Cheques.SQL.Add('FROM   Cheques');
           Cheques.SQL.Add('WHERE  Numero IS NOT NULL');
           if Trim(cBanco.DisplayValue) <> '' then begin
              Cheques.SQL.Add('AND   Banco = '+QuotedStr(cBanco.DisplayValue));
           end;
           if Trim(cEmitente.DisplayValue) <> '' then begin
              Cheques.SQL.Add('AND   Emitente = '+QuotedStr(cEmitente.DisplayValue));
           end;
           if not DataLimpa(cDataIni.Text) then begin
              Cheques.SQL.Add('AND   Data_Emissao BETWEEN :pDataIni AND :pDataFim');
              Cheques.ParamByName('pDataini').AsDate := cDataIni.Date;
              Cheques.ParamByName('pDataFim').AsDate := cDataFim.Date;
           end;
           if cSituacao.ItemIndex = 0 then begin
              Cheques.SQL.Add('AND   Data_Compensacao IS NULL');
           end;
           if cSituacao.ItemIndex = 1 then begin
              Cheques.SQL.Add('AND   Data_Compensacao IS NOT NULL');
           end;
           if cSituacao.ItemIndex = 2 then begin
              Cheques.SQL.Add('AND   Sustado = 1');
           end;
           if cSituacao.ItemIndex = 3 then begin
              Cheques.SQL.Add('AND   Devolvido = 1');
           end;

           Cheques.SQL.Add('ORDER BY Data_Emissao, Banco, Numero');
           //Cheques.SQL.SaveToFile('c:\temp\Controle_Cheques.sql');
           Cheques.Open;

           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           ppDetailBand1.Background1.Brush.Color := clWhite;
           rCheques.Print;
           rCheques.Reset;
      end;
end;

procedure TImpressao_FinanceirosOP_Cheques.ppDetailBand1BeforeGenerate(Sender: TObject);
begin
      if cZebrado.Checked then begin
         if ppDetailBand1.Background1.Brush.Color = clWhite then
            ppDetailBand1.Background1.Brush.Color := $00FFEAEA
         else
            ppDetailBand1.Background1.Brush.Color := clWhite;
      end else begin
         ppDetailBand1.Background1.Brush.Color := clWhite;
      end;
end;

procedure TImpressao_FinanceirosOP_Cheques.bLimparClick(Sender: TObject);
begin
     cDataIni.Clear;
     cDataFim.Clear;
     cEmitente.ClearValue;
     cBanco.ClearValue;
     cSituacao.ItemIndex := 4;
     cZebrado.Checked    := false;
end;

end.
