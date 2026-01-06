unit frmImpressao_GeraisOP_Recibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, ppBands, ppMemo, ppCtrls, DB, MaskUtils,
  ppPrnabl, ppReport, Mask, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, ppParameter, IniFiles,
  RxCurrEdit, RxToolEdit, ppDB, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressaoGeraisOP_Recibo = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    cPessoa: TEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cData: TDateEdit;
    StaticText7: TStaticText;
    rG01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    lTexto1: TppMemo;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppEmpresas: TppDBPipeline;
    cTipo: TRadioGroup;
    cReferencia: TMemo;
    StaticText4: TStaticText;
    cComplemento: TMemo;
    cValor: TCurrencyEdit;
    ppLabel7: TppLabel;
    lData: TppLabel;
    lEndereco: TppMemo;
    ppParameterList1: TppParameterList;
    lValor: TppLabel;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cRG: TEdit;
    cCPF: TMaskEdit;
    lAssinatura: TppLabel;
    lAssinaturaCPFCNPJ: TppLabel;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure rG01BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpressaoGeraisOP_Recibo: TImpressaoGeraisOP_Recibo;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressaoGeraisOP_Recibo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressaoGeraisOP_Recibo.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressaoGeraisOP_Recibo.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_GERAIS_Recibo','Tipo'       , cTipo.ItemIndex);
      aINI.WriteString ('IMPRESSAO_GERAIS_Recibo','Pessoa'     , cPessoa.Text);
      aINI.WriteString ('IMPRESSAO_GERAIS_Recibo','CPF'        , cCPF.Text);
      aINI.WriteString ('IMPRESSAO_GERAIS_Recibo','RG'         , cRG.Text);
      aINI.WriteDate   ('IMPRESSAO_GERAIS_Recibo','Data'       , cData.Date);
      aINI.WriteFloat  ('IMPRESSAO_GERAIS_Recibo','Valor'      , cValor.Value);
      aINI.WriteString ('IMPRESSAO_GERAIS_Recibo','Referencia' , cReferencia.Text);
      aINI.WriteString ('IMPRESSAO_GERAIS_Recibo','Complemento', cComplemento.Text);
      aINI.Free;
      
      ImpressaoGeraisOP_Recibo.Release;
      ImpressaoGeraisOP_Recibo := nil;
end;

procedure TImpressaoGeraisOP_Recibo.bImprimirClick(Sender: TObject);
begin
      If cValor.Value > 0 then begin
        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;
        //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        rG01.Print;
        rG01.FreeOnRelease;
        rG01.Reset;
     end else begin
        ShowMessage('Para imprimir o Recibo é necessário informar um valor maior que zero!');
     End;
end;

procedure TImpressaoGeraisOP_Recibo.rG01BeforePrint(Sender: TObject);
Var
   mTexto1 : WideString;
   mExtenso: WideString;
begin
     // Substituindo os macros pelo conteúdo.
     With Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          lTexto1.Lines.Clear;
          If cTipo.ItemIndex = 0 then begin
             lTexto1.Lines.Add('Recebemos de <{Pessoa}> <{CPF/CNPJ}> <{RG/IE}> a importância de R$ <{Valor}> <{Extenso}> ,referente <{Referencia}> <{Complemento}>');

             mExtenso := ValorExtenso(cValor.Value, true);
             mExtenso := '('+Trim(UpperCase(Copy(mExtenso,1,1)) + Copy(mExtenso,2,300))+')';
             mTexto1  := Trim(lTexto1.Lines[0]);
             mTexto1  := RemoveCaracter('<{Pessoa}>', cPessoa.Text, mTexto1);

             If Trim(cCPF.Text) <> '' then
                mTexto1  := RemoveCaracter('<{CPF/CNPJ}>', ' CPF: '+FormatMaskText('###.###.###-##;0; ',cCPF.Text), mTexto1)
             else
                mTexto1  := RemoveCaracter('<{CPF/CNPJ}>', '', mTexto1);
             If Trim(cRG.Text)  <> '' then
                mTexto1  := RemoveCaracter('<{RG/IE}>', ' RG: '+cRG.Text, mTexto1)
             else
                mTexto1  := RemoveCaracter('<{RG/IE}>', '', mTexto1);

             mTexto1  := RemoveCaracter('<{Valor}>'      , FormatFloat(',##0.00;0', cValor.Value), mTexto1);
             mTexto1  := RemoveCaracter('<{Extenso}>'    , mExtenso               , mTexto1);
             mTexto1  := RemoveCaracter('<{Complemento}>', cComplemento.Lines.Text, mTexto1);
             mTexto1  := RemoveCaracter('<{Referencia}>' , cReferencia.Lines.Text , mTexto1);

             lTexto1.Lines.Clear;
             lTexto1.Lines.Add(mTexto1);

             lAssinatura.Text        := EmpresasRazao_Social.AsString;
             lAssinaturaCPFCNPJ.Text := 'CNPJ: '+FormatMaskText('##.###.###/####-##;0; ', EmpresasCNPJ.AsString);
          end else begin
             lTexto1.Lines.Add('Recebi de <{Pessoa}> <{CPF/CNPJ}> <{RG/IE}> a importância de R$ <{Valor}> <{Extenso}> ,referente <{Referencia}> <{Complemento}>');

             mExtenso := ValorExtenso(cValor.Value, true);
             mExtenso := '('+Trim(UpperCase(Copy(mExtenso,1,1)) + Copy(mExtenso,2,300))+')';
             mTexto1  := Trim(lTexto1.Lines[0]);
             mTexto1  := RemoveCaracter('<{Pessoa}>'     , Trim(EmpresasRazao_Social.AsString), mTexto1);
             mTexto1  := RemoveCaracter('<{CPF/CNPJ}>'   , ' CNPJ: '+FormatMaskText('##.###.###/####-##;0; ',EmpresasCNPJ.AsString), mTexto1);
             mTexto1  := RemoveCaracter('<{RG/IE}>'      , ' Inscrição Estadual: '+EmpresasIE.AsString, mTexto1);
             mTexto1  := RemoveCaracter('<{Valor}>'      , FormatFloat(',##0.00;0', cValor.Value), mTexto1);
             mTexto1  := RemoveCaracter('<{Extenso}>'    , mExtenso               , mTexto1);
             mTexto1  := RemoveCaracter('<{Complemento}>', cComplemento.Lines.Text, mTexto1);
             mTexto1  := RemoveCaracter('<{Referencia}>' , cReferencia.Lines.Text , mTexto1);

             lTexto1.Lines.Clear;
             lTexto1.Lines.Add(mTexto1);
             lAssinatura.Text        := cPessoa.Text;
             lAssinaturaCPFCNPJ.Text := 'CPF: '+FormatMaskText('###.###.###-##;0; ', cCPF.Text);
          End;


          Municipios.Open;
          Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

          lValor.Text := FormatFloat(',##0.00;0', cValor.Value);
          If Trim(RemoveCaracter('/','',cData.Text)) <> '' then
             lData.Text  := DataExtenso(Trim(MunicipiosNome.Value), cData.Date)
          else
             lData.Text  := DataExtenso(Trim(MunicipiosNome.Value), Date);

          lEndereco.Lines.Clear;
          lEndereco.Lines.Add( Trim(EmpresasRua.Value)+' Nº '+Trim(EmpresasRua_Numero.AsString)+', '+EmpresasBairro.Value);
          lEndereco.Lines.Add('CEP '+FormatMaskText('#####-###;0',EmpresasCEP.Value)+' • '+ Trim(MunicipiosNome.Value)+'('+EmpresasEstado.Value+')');
          lEndereco.Lines.Add('Telefone '+FormatMaskText('(##) #########;0;', EmpresasTelefone1.AsString) + ' • FAX '+ FormatMaskText('(##) #########;0;', EmpresasFAX.AsString));
          lEndereco.Lines.Add(EmpresasEmail.AsString+' • '+EmpresasSite.AsString);
     End;
end;

procedure TImpressaoGeraisOP_Recibo.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cTipo.ItemIndex   := aINI.ReadInteger('IMPRESSAO_GERAIS_Recibo','Tipo'       , 0);
      cPessoa.Text      := aINI.ReadString ('IMPRESSAO_GERAIS_Recibo','Pessoa'     , '');
      cCPF.Text         := aINI.ReadString ('IMPRESSAO_GERAIS_Recibo','CPF'        , '');
      cRG.Text          := aINI.ReadString ('IMPRESSAO_GERAIS_Recibo','RG'         , '');
      cData.Date        := aINI.ReadDate   ('IMPRESSAO_GERAIS_Recibo','Data'       , Date);
      cValor.Value      := aINI.ReadFloat  ('IMPRESSAO_GERAIS_Recibo','Valor'      , 0);
      cReferencia.Text  := aINI.ReadString ('IMPRESSAO_GERAIS_Recibo','Referencia' , '');
      cComplemento.Text := aINI.ReadString ('IMPRESSAO_GERAIS_Recibo','Complemento', '');
      aINI.Free;
end;

end.
