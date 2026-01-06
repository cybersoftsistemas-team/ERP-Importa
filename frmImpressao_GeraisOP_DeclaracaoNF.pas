unit frmImpressao_GeraisOP_DeclaracaoNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Mask,   INIFiles, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppReport, ppMemo, Funcoes, DB, MaskUtils, ppVar,
  RxToolEdit, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_GeraisOP_DeclaracaoNF = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    cEmpresa: TEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cRecebedor: TEdit;
    StaticText4: TStaticText;
    cRG: TEdit;
    cData: TDateEdit;
    rG01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppEmpresas: TppDBPipeline;
    lTexto1: TppMemo;
    ppLabel1: TppLabel;
    lEmpresa: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    lData: TppLabel;
    lRecebedor: TppLabel;
    lRG_CPF: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    lTexto2: TppMemo;
    ppLine2: TppLine;
    StaticText5: TStaticText;
    cNota: TEdit;
    StaticText6: TStaticText;
    cDataNF: TDateEdit;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    StaticText7: TStaticText;
    cCargo: TEdit;
    ppLabel6: TppLabel;
    lCargo: TppLabel;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rG01BeforePrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_GeraisOP_DeclaracaoNF: TImpressao_GeraisOP_DeclaracaoNF;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_GeraisOP_DeclaracaoNF.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_GeraisOP_DeclaracaoNF.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_GeraisOP_DeclaracaoNF.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString('IMPRESSAO_GERAIS_DeclaracaoNF','Empresa'  , cEmpresa.Text);
      aINI.WriteDate  ('IMPRESSAO_GERAIS_DeclaracaoNF','Data'     , cData.Date);
      aINI.WriteString('IMPRESSAO_GERAIS_DeclaracaoNF','Recebedor', cRecebedor.Text);
      aINI.WriteString('IMPRESSAO_GERAIS_DeclaracaoNF','Cargo'    , cCargo.Text);
      aINI.WriteString('IMPRESSAO_GERAIS_DeclaracaoNF','RG'       , cRG.Text);
      aINI.WriteString('IMPRESSAO_GERAIS_DeclaracaoNF','Nota'     , cNota.Text);
      aINI.WriteDate  ('IMPRESSAO_GERAIS_DeclaracaoNF','DataNF'   , cDataNF.Date);
      aINI.Free;
      
      Impressao_GeraisOP_DeclaracaoNF.Release;
      Impressao_GeraisOP_DeclaracaoNF := nil;
end;

procedure TImpressao_GeraisOP_DeclaracaoNF.bLimparClick(Sender: TObject);
begin
        cEmpresa.Clear;
        cRecebedor.Clear;
        cData.Clear;
        cRG.Clear;
end;

procedure TImpressao_GeraisOP_DeclaracaoNF.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cEmpresa.Text   := aINI.ReadString('IMPRESSAO_GERAIS_DeclaracaoNF','Empresa'  , '');
      cData.Date      := aINI.ReadDate  ('IMPRESSAO_GERAIS_DeclaracaoNF','Data'     , Date);
      cRecebedor.Text := aINI.ReadString('IMPRESSAO_GERAIS_DeclaracaoNF','Recebedor', '');
      cCargo.Text     := aINI.ReadString('IMPRESSAO_GERAIS_DeclaracaoNF','Cargo'    , '');
      cRG.Text        := aINI.ReadString('IMPRESSAO_GERAIS_DeclaracaoNF','RG'       , '');
      cNota.Text      := aINI.ReadString('IMPRESSAO_GERAIS_DeclaracaoNF','Nota'     , '');
      cDataNF.Date    := aINI.ReadDate  ('IMPRESSAO_GERAIS_DeclaracaoNF','DataNF'   , Date);
      aINI.Free;
end;

procedure TImpressao_GeraisOP_DeclaracaoNF.rG01BeforePrint(Sender: TObject);
Var
   mTexto1  : WideString;
   mTexto2  : WideString;
   mEndereco: WideString;
begin
     // Substituindo os macros pelo conteúdo.
     With Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          mTexto1 := Trim(lTexto1.Lines[0]);
          mTexto1 := RemoveCaracter('<{Empresa}>', EmpresasRazao_Social.AsString, mTexto1);
          mTexto1 := RemoveCaracter('<{Modelo}>', EmpresasNFEletronica_Modelo.AsString, mTexto1);
          mTexto1 := RemoveCaracter('<{Numero}>', cNota.Text, mTexto1);
          mTexto1 := RemoveCaracter('<{Data}>', cDataNF.Text, mTexto1);
          lTexto1.Lines.Clear;
          lTexto1.Lines.Add(mTexto1);
          
          lEmpresa.Caption   := cEmpresa.Text;
          lRecebedor.Caption := cRecebedor.Text;
          lData.Caption      := cData.Text;
          lRG_CPF.Text       := cRG.Text;
          lCargo.Text        := cCargo.Text;

          Municipios.Open;
          Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
          
          mEndereco := Trim(EmpresasRua.Value)+' Nº '+Trim(EmpresasRua_Numero.AsString)+', '+EmpresasBairro.Value+' - '+Trim(MunicipiosNome.Value)+'('+EmpresasEstado.Value+') - CEP:'+FormatMaskText('##.###-###;0',EmpresasCEP.Value) ;
          mTexto2   := Trim(lTexto2.Lines[0]);
          mTexto2   := RemoveCaracter('<{Empresa}>', EmpresasRazao_Social.AsString, mTexto2);
          mTexto2   := RemoveCaracter('<{Usuario}>', Menu_Principal.mUsuarioNome, mTexto2 );
          mTexto2   := RemoveCaracter('<{Endereco}>', mEndereco, mTexto2);
          lTexto2.Lines.Clear;
          lTexto2.Lines.Add(mTexto2);

     End;
end;

procedure TImpressao_GeraisOP_DeclaracaoNF.bImprimirClick(Sender: TObject);
begin
     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     rG01.Print;
     rG01.FreeOnRelease;
     rG01.Reset;
end;

end.
