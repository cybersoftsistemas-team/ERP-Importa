unit frmImpressao_GeraisOP_CartaCorrecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, ppParameter, ppVar, ppBands, ppMemo, ppCtrls, ppClass,
  ppReport, Mask, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RXSpin, Funcoes, MaskUtils, DB, DBAccess, MSAccess,
  RxToolEdit, MemDS, ppDB, ppDesignLayer, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_GeraisOP_CartaCorrecao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText5: TStaticText;
    rRelacao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppParameterList1: TppParameterList;
    ppEmpresas: TppDBPipeline;
    pCarta: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    cNota: TRxSpinEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    cTipo: TRadioGroup;
    rCartaCorrecao: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    lCidade: TppLabel;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppLabel8: TppLabel;
    lTipo: TppLabel;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel15: TppLabel;
    lTexto: TppMemo;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine13: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel18: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    lEndereco: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine16: TppLine;
    ppLabel19: TppLabel;
    ppLine17: TppLine;
    ppParameterList2: TppParameterList;
    tTexto: TMSQuery;
    tCarta: TMSQuery;
    dstCarta: TDataSource;
    ppDBText18: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppShape2: TppShape;
    ppLine20: TppLine;
    ppDBText19: TppDBText;
    ppLine21: TppLine;
    iLogo: TppImage;
    iLogo2: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure cNotaExit(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_GeraisOP_CartaCorrecao: TImpressao_GeraisOP_CartaCorrecao;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_GeraisOP_CartaCorrecao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_GeraisOP_CartaCorrecao.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_GeraisOP_CartaCorrecao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Impressao_GeraisOP_CartaCorrecao.Release;
     Impressao_GeraisOP_CartaCorrecao := nil;
end;

procedure TImpressao_GeraisOP_CartaCorrecao.bImprimirClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      
           If cTipo.ItemIndex = 0 then begin
              tCarta.SQL.Clear;
              tCarta.SQL.Add('SELECT *,');
              tCarta.SQL.Add('       (SELECT Saida_Entrada FROM NotasFiscais NF WHERE(NF.Numero = Nota AND NF.Data_Emissao = CartaCorrecao.Data_Emissao)) AS Saida_Entrada,');
              tCarta.SQL.Add('       (SELECT Serie FROM NotasFiscais NF WHERE(NF.Numero = Nota AND NF.Data_Emissao = CartaCorrecao.Data_Emissao)) AS Serie,');
              tCarta.SQL.Add('       (SELECT Processo FROM NotasFiscais NF WHERE(NF.Numero = Nota AND NF.Data_Emissao = CartaCorrecao.Data_Emissao)) AS Processo');
              tCarta.SQL.Add('FROM CartaCorrecao');
              tCarta.SQL.Add('WHERE(Numero_Carta IS NOT NULL)');
              If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
                 tCarta.SQL.Add('AND (Data_Carta BETWEEN :pDataIni AND :pDataFim)');
                 tCarta.ParamByName('pDataIni').AsDate := cDataIni.Date;
                 tCarta.ParamByName('pDataFim').AsDate := cDataFim.Date;
              End;
              If cNota.AsInteger > 0 then begin
                 tCarta.SQL.Add('AND (Nota = :pNota)');
                 tCarta.ParamByName('pNota').AsInteger := cNota.AsInteger;
              End;
              tCarta.SQL.Add('ORDER BY Nota, Numero_Carta');
              tCarta.Open;

              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              rRelacao.Print;
              rRelacao.FreeOnRelease;
              rRelacao.Reset;
           end else begin
              tCarta.SQL.Clear;
              tCarta.SQL.Add('SELECT *,');
              tCarta.SQL.Add('       (SELECT Saida_Entrada FROM NotasFiscais NF WHERE(NF.Numero = Nota AND NF.Data_Emissao = CartaCorrecao.Data_Emissao)) AS Saida_Entrada,');
              tCarta.SQL.Add('       (SELECT Serie FROM NotasFiscais NF WHERE(NF.Numero = Nota AND NF.Data_Emissao = CartaCorrecao.Data_Emissao)) AS Serie,');
              tCarta.SQL.Add('       (SELECT Processo FROM NotasFiscais NF WHERE(NF.Numero = Nota AND NF.Data_Emissao = CartaCorrecao.Data_Emissao)) AS Processo');
              tCarta.SQL.Add('FROM CartaCorrecao');
              tCarta.SQL.Add('WHERE(Numero_Carta IS NOT NULL)');
              If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
                 tCarta.SQL.Add('AND (Data_Carta BETWEEN :pDataIni AND :pDataFim)');
                 tCarta.ParamByName('pDataIni').AsDate := cDataIni.Date;
                 tCarta.ParamByName('pDataFim').AsDate := cDataFim.Date;
              End;
              If cNota.AsInteger > 0 then begin
                 tCarta.SQL.Add('AND (Nota = :pNota)');
                 tCarta.ParamByName('pNota').AsInteger := cNota.AsInteger;
              End;
              tCarta.SQL.Add('ORDER BY Nota, Numero_Carta');
              tCarta.Open;

              Municipios.SQL.Clear;
              Municipios.SQL.Add('SELECT * FROM Municipios WHERE(Codigo = :pCodigo)');
              Municipios.ParamByName('pCodigo').AsString := Dados.EmpresasMunicipio_Codigo.AsString;
              Municipios.Open;

              lCidade.Caption   := MunicipiosNome.AsString + ' - '+EmpresasEstado.AsString;
              lEndereco.Caption := EmpresasRua.AsString + ', '+EmpresasComplemento.AsString+' - CEP: '+FormatMaskText('99999-999;0', EmpresasCEP.AsString);

              iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              rCartaCorrecao.Print;
              rCartaCorrecao.FreeOnRelease;
              rCartaCorrecao.Reset;
           End;
      End;
end;

procedure TImpressao_GeraisOP_CartaCorrecao.cNotaExit(Sender: TObject);
begin
      If cNota.AsInteger < 0 then cNota.AsInteger := 0;
      If Trim(cNota.Text) = '' then cNota.AsInteger := 0;
end;

procedure TImpressao_GeraisOP_CartaCorrecao.ppDetailBand2BeforePrint(Sender: TObject);
begin
      tTexto.SQL.Clear;
      tTexto.SQL.Add('SELECT Descricao FROM CartaCorrecao WHERE(Nota = :pNota) AND (Data_Emissao = :pData)');
      tTexto.ParamByName('pNota').AsInteger := tCarta.FieldByName('Nota').AsInteger;
      tTexto.ParamByName('pData').AsDate    := tCarta.FieldByName('Data_Emissao').Value;
      tTexto.Open;

      If tCarta.FieldByName('Saida_Entrada').AsInteger = 0 then
         lTipo.Caption := 'Nota Fiscal de Entrada'
      else
         lTipo.Caption := 'Nota Fiscal de Saída';

      lTexto.Lines.Clear;

      tTexto.First;
      While not tTexto.Eof do begin
            lTexto.Lines.Add(tTexto.FieldByName('Descricao').AsString);
            tTexto.Next;
      End;
end;

end.
