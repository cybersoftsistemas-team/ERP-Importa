unit frmImpressao_Financeiros_ContBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, IniFiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, RxCtrls, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Mask, RxToolEdit, RxLookup, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter, ppVar;

type
  TImpressao_Financeiros_ContBoletos = class(TForm)
    Image2: TImage;
    RxLabel2: TRxLabel;
    RxLabel1: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TBitBtn;
    tBoletos: TMSQuery;
    StaticText8: TStaticText;
    cDataFim: TDateEdit;
    StaticText5: TStaticText;
    cDataIni: TDateEdit;
    cCliente: TRxDBLookupCombo;
    StaticText1: TStaticText;
    rBoletos: TppReport;
    dstBoletos: TDataSource;
    pBoletos: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    lPeriodo: TppLabel;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppLabel1: TppLabel;
    pEmpresas: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    lSaldo: TppVariable;
    ppLabel8: TppLabel;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    lSaldoCliente: TppVariable;
    lSaldoTotal: TppVariable;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure ppGroupHeaderBand2BeforeGenerate(Sender: TObject);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Financeiros_ContBoletos: TImpressao_Financeiros_ContBoletos;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, Funcoes;

procedure TImpressao_Financeiros_ContBoletos.bImprimirClick(Sender: TObject);
begin
     with Dados, Empresas do begin 
          sql.clear;
          sql.add('select * from Empresas where Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          open;

          with tBoletos do begin
               sql.Clear;
               sql.Add('select Cliente = Sacado');
               sql.Add('      ,Nome = (select Nome from Clientes where Codigo = Sacado)');
               sql.Add('      ,CNPJ = (select CNPJ from Clientes where Codigo = Sacado)');
               sql.Add('      ,Valor_Nota = (select Valor_Documento from PagarReceber where Numero = Financeiro_Numero)');
               sql.Add('      ,Valor_Boleto = Valor_Documento');
               sql.Add('      ,Documento = Numero_Documento');
               sql.Add('      ,Nota = cast(iif(charindex(''-'',Numero_Documento2) = 0, Numero_Documento2, substring(Numero_Documento2, 1, charindex(''-'', Numero_Documento2)-1)) as int)');
               sql.Add('      ,Vencimento = Data_Vencimento');
               sql.add('      ,Liquidacao = (select Data from PagarReceberBaixas where Numero = Financeiro_Numero)');
               sql.Add('      ,Estado = (select Estado from cybersoft_Cadastros.dbo.Empresas where Codigo = 1)');
               sql.Add('      ,Processo = (select Processo from PagarReceber where Numero = Financeiro_Numero)');
               sql.Add('from Boletos');
               sql.Add('where Data_Documento between :pDataIni and :pDataFim');
               if cCliente.Text <> '' then begin
                  sql.Add('and Sacado = :pCliente');
                  parambyname('pCliente').Value := Clientes.FieldByName('Codigo').AsInteger;
               end;
               sql.Add('order by Nome, Nota');
               parambyname('pDataIni').Value := cDataIni.Date;
               parambyname('pDataFim').Value := cDataFim.Date;
               open
          end;
          lTitulo.Caption  := 'CONTROLE DE BOLETOS - '+iif(Empresas.fieldbyname('Numero_Filial').asinteger = 0, 'MATRIZ', 'FILIAL '+Empresas.fieldbyname('Numero_Filial').asstring);
          lTitulo.Caption  := lTitulo.Caption + '('+Empresas.fieldbyname('Estado').asstring+')';
          lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text;
          if FileExists(EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(EmpresasLogo.Value);
     end;

     rBoletos.Print;
     rBoletos.Reset;
end;

procedure TImpressao_Financeiros_ContBoletos.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TImpressao_Financeiros_ContBoletos.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Salvando as ultimas opções utilizadas como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ( 'CONTROLE_BOLETOS', 'DataIni', cDataIni.Text);
      aINI.WriteString ( 'CONTROLE_BOLETOS', 'DataFim', cDataFim.Text);
      aINI.WriteInteger( 'CONTROLE_BOLETOS', 'Cliente', iif(cCliente.Text <> '', cCliente.KeyValue, -1));
      aIni.Free;

      Impressao_Financeiros_ContBoletos.Release;
      Impressao_Financeiros_ContBoletos := nil;
end;

procedure TImpressao_Financeiros_ContBoletos.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      with Dados do begin
           with Clientes do begin
                sql.clear;
                sql.add('select * from Clientes where Ativo = 1 order by Nome');
                open;
           end;
      end;
end;

procedure TImpressao_Financeiros_ContBoletos.FormShow(Sender: TObject);
Var
   aINI:TIniFile;
begin
      // Carregando as ultimas opções utilizadas como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.text     := aINI.ReadString ('CONTROLE_BOLETOS', 'DataIni', '');
      cDataFim.text     := aINI.ReadString ('CONTROLE_BOLETOS', 'DataFim', '');
      cCliente.KeyValue := aINI.ReadInteger('CONTROLE_BOLETOS', 'Cliente', -1);
      aIni.Free;
end;

procedure TImpressao_Financeiros_ContBoletos.ppDetailBand1BeforeGenerate(Sender: TObject);
begin
     with tBoletos do begin
          lSaldo.Value        := lSaldo.value - fieldbyname('Valor_Boleto').AsCurrency;
          lSaldoCliente.Value := lSaldoCliente.value - fieldbyname('Valor_Boleto').AsCurrency;
          lSaldoTotal.Value   := lSaldoTotal.value - fieldbyname('Valor_Boleto').AsCurrency;
     end;
end;

procedure TImpressao_Financeiros_ContBoletos.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
      lSaldoCliente.Value := 0;
end;

procedure TImpressao_Financeiros_ContBoletos.ppGroupHeaderBand2BeforeGenerate(Sender: TObject);
begin
     with tBoletos do begin
          lSaldo.Value        := fieldbyname('Valor_Nota').AsCurrency;
          lSaldoCliente.Value := lSaldoCliente.Value + fieldbyname('Valor_Nota').AsCurrency;
          lSaldoTotal.Value   := lSaldoTotal.Value + fieldbyname('Valor_Nota').AsCurrency;
     end;
end;

end.
