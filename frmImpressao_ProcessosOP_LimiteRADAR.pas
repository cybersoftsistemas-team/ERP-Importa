unit frmImpressao_ProcessosOP_LimiteRADAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess,
  RxLookup, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo, ppClass, ppVar, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls,
  Vcl.ExtCtrls, RxCtrls, IniFiles;

type
  TImpressao_ProcessosOP_LimiteRADAR = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText6: TStaticText;
    cExcel: TCheckBox;
    rRADAR: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine23: TppLine;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine24: TppLine;
    ppLine15: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    Ded_Pagina: TppParameter;
    pEmpresas: TppDBPipeline;
    pRADAR: TppDBPipeline;
    cCliente: TRxDBLookupCombo;
    dstRadar: TDataSource;
    tRadar: TMSQuery;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    lTotal: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    lLimite: TppDBText;
    ppLabel17: TppLabel;
    lSaldo: TppVariable;
    ppLine1: TppLine;
    lCliente: TppLabel;
    ppLabel18: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_LimiteRADAR: TImpressao_ProcessosOP_LimiteRADAR;

implementation

{$R *.dfm}

uses frmDados, FUNCOES, frmMenu_Principal;

procedure TImpressao_ProcessosOP_LimiteRADAR.bImprimirClick(Sender: TObject);
begin
     with Dados do begin
          with Empresas do begin
               sql.clear;
               sql.add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
               open;
          end;
     end;
     with tRADAR do begin
          sql.clear;
          sql.Add('select pd.Processo');
          sql.Add('      ,Data_Abetura = convert(varchar, cast(pd.Processo_Abertura as date), 103)');
          sql.Add('      ,Periodo = convert(varchar, Datediff(month, pd.Data_RegistroDeclaracao, getdate()), 103)');
          sql.Add('      ,Cliente = (select Nome from Clientes where Codigo = pd.Cliente)');
          sql.Add('      ,DI = Numero_Declaracao');
          sql.Add('      ,Exportador = (select Nome from Fornecedores where Codigo = pd.Fornecedor)');
          sql.add('      ,Data_Registro = convert(varchar, cast(pd.Data_RegistroDeclaracao as date), 103)');
          sql.add('      ,Data_Desemb = convert(varchar, cast(pd.Data_DesembaracoDeclaracao as date), 103)');
          sql.add('      ,Data_LibLimite = convert(varchar, cast(DATEADD(day, 180, Data_RegistroDeclaracao) as date), 103)');
          sql.Add('      ,Origem');
          sql.Add('      ,Via_Transporte = (select Descricao from Cybersoft_Cadastros.dbo.ViaTransporte where Codigo = pd.Via_Transporte)');
          sql.Add('      ,Canal_SISCOMEX = case pd.Canal_SISCOMEX');
          sql.Add('                             when ''VD'' then ''VERDE'' ');
          sql.Add('                             when ''AM'' then ''AMARELO'' ');
          sql.Add('                             when ''VM'' then ''VERMELHO'' ');
          sql.Add('                             when ''CZ'' then ''CINZA'' ');
          sql.Add('                        end');
          sql.Add('      ,Limite = (select isnull(Valor_RADAR, 0) from Clientes where Codigo = pd.Cliente)');
          sql.Add('      ,FOB_ME');
          sql.Add('      ,Taxa_FOB = round(Taxa_FOB, 4)');
          sql.Add('      ,FOB');
          sql.add('      ,Situacao = ''A LIBERAR'' ');
          sql.Add('from   ProcessosDocumentos pd');
          sql.Add('where Datediff(day, Data_RegistroDeclaracao, getdate()) < 180');
          if trim(cCliente.Text) <> '' then begin
             sql.Add('and Cliente = :pCliente');
             parambyname('pCliente').asinteger := Dados.ClientesCodigo.asinteger;
          end;
          sql.Add('order by Cliente');
          //sql.SaveToFile('c:\temp\Controle_RADAR.sql');
          open;
     end;

     If cExcel.Checked = false then begin
        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;
        lCliente.Text := cCLiente.Text;
        rRADAR.Print;
        rRADAR.FreeOnRelease;
        rRADAR.Reset;
     end else begin
        //ExportaEXCEL;
     end;
end;

procedure TImpressao_ProcessosOP_LimiteRADAR.bLimparClick(Sender: TObject);
begin
     cCliente.KeyValue := -1;
end;

procedure TImpressao_ProcessosOP_LimiteRADAR.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ProcessosOP_LimiteRADAR.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aIni:TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString('IMPRESSAO_LIMITE_RADAR', 'Cliente', cCliente.KeyValue);
      aINI.WriteBool  ('IMPRESSAO_LIMITE_RADAT', 'Excel'  , cExcel.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
      Impressao_ProcessosOP_LimiteRADAR.Release;
      Impressao_ProcessosOP_LimiteRADAR := nil;
end;

procedure TImpressao_ProcessosOP_LimiteRADAR.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_LimiteRADAR.FormShow(Sender: TObject);
Var
   aIni:TIniFile;
begin
      with Dados do begin
           with Clientes do begin
                sql.clear;
                sql.add('select * from Clientes where Codigo in(select distinct Cliente from ProcessosDocumentos where Cliente is not Null)');
                open;
           end;
      end;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cCliente.KeyValue := aIni.ReadInteger('IMPRESSAO_LIMITE_RADAR', 'Cliente', 0);
      cExcel.Checked    := aIni.ReadBool   ('IMPRESSAO_LIMITE_RADAR', 'Excel'  , false);
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_LimiteRADAR.ppSummaryBand1BeforePrint(Sender: TObject);
begin
     lSaldo.Value := lLimite.FieldValue - lTotal.Value;
end;

end.
