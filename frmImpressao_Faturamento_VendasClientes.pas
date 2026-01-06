unit frmImpressao_Faturamento_VendasClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess,
  Vcl.StdCtrls, Vcl.Mask, RxLookup, RxToolEdit, RxCtrls, Vcl.ExtCtrls, IniFiles, Funcoes, ppParameter, ppDesignLayer, ppBands, ppClass, ppCtrls, ppVar, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TImpressao_Faturamento_VendasClientes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cExcel: TCheckBox;
    StaticText4: TStaticText;
    cCliente: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cRepres: TRxDBLookupCombo;
    dstClientes: TDataSource;
    tClientes: TMSQuery;
    tClientesCodigo: TIntegerField;
    tClientesCNPJ: TStringField;
    tClientesNome: TStringField;
    pEmpresas: TppDBPipeline;
    pVendas: TppDBPipeline;
    rVendas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel21: TppLabel;
    ppDBText2: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine12: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    tVendas: TMSQuery;
    dstVendas: TDataSource;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    bLimpar: TButton;
    cPessoa: TRadioGroup;
    ppLabel1: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_VendasClientes: TImpressao_Faturamento_VendasClientes;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TImpressao_Faturamento_VendasClientes.bImprimirClick(Sender: TObject);
begin
     screen.Cursor := crSQLWait;
     with Dados, tVendas do begin
          sql.clear;
          sql.add('select Representante');
          sql.add('      ,Representante_Nome = (select Nome from Fornecedores where Representante_Codigo = Representante)');
          sql.Add('      ,Cliente_CNPJCPF = case when isnull(Cliente_CNPJ, '''') <> '''' then');
          sql.Add('                              substring(Cliente_CNPJ,1,2)+''.''+substring(Cliente_CNPJ,3,3)+''.''+substring(Cliente_CNPJ,6,3)+''/''+substring(Cliente_CNPJ,9,4)+''-''+substring(Cliente_CNPJ,13,2)');
          sql.Add('                         else');
          sql.Add('                              substring(Cliente_CPF,1,3)+''.''+substring(Cliente_CPF,4,3)+''.''+substring(Cliente_CPF,7,3)+''-''+substring(Cliente_CPF,10,2)');
          sql.Add('                         end');
          sql.add('      ,Cliente_Nome = case when isnull(Cliente_CNPJ, '''') <> '''' then');
          sql.add('                           (select max(Nome) from Clientes where CNPJ = Cliente_CNPJ)');
          sql.add('                      else');
          sql.add('                           (select max(Nome) from Clientes where CPF = Cliente_CPF)');
          sql.add('                      end');
          sql.add('      ,Ultima_Compra = max(Data)');
          sql.add('      ,Vendas = count(Pedido)');
          sql.add('      ,Valor_Total = sum(Total_Pedido)');
          sql.add('from PedidosRepresentantes');
          sql.add('where isnull(Pedido, '''') <> '''' ');
          if cRepres.Text <> '' then begin
             sql.add('and Representante = :pRepres');
             parambyname('pRepres').AsInteger := Fornecedores.FieldByName('Representante_Codigo').AsInteger;
          end;
          if not DataLimpa(cDataIni.text) then begin
             sql.Add('and Data between :pDataIni and :pDataFim');
             ParamByName('pDataIni').AsDateTime := cDataIni.Date;
             ParamByName('pDataFim').AsDateTime := cDataFim.Date;
          end;
          if cCliente.Text <> '' then begin
             sql.add('and Cliente = :pCliente');
             parambyname('pCliente').AsInteger := tClientes.FieldByName('Codigo').AsInteger;
          end;
          if cPessoa.ItemIndex = 0 then begin
             sql.add('and isnull(Cliente_CPF, '''') <> '''' ');
          end;
          if cPessoa.ItemIndex = 1 then begin
             sql.add('and isnull(Cliente_CNPJ, '''') <> '''' ');
          end;
          sql.add('group by Representante, Cliente_CNPJ, Cliente_CPF');
          sql.add('order by Representante_Nome, Cliente_Nome, Cliente_CNPJCPF');
          //sql.SaveToFile('c:\temp\Impressao_Faturamento_VendasClientes.sql');
          open;
     end;
     screen.Cursor := crDefault;

     if not DataLimpa(cDataIni.Text) then begin
        lPeriodo.Caption := 'Período de '+ cDataIni.Text + ' á '+cDataFim.Text;
     end;
     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     with rVendas do begin
          if not cExcel.Checked then begin
             AllowPrintToArchive := false;
             AllowPrintToFile    := false;
             DeviceType          := 'Screen';
             Print;
             Reset;
             FreeOnRelease;
          end else begin   
             OpenFile                  := true;
             AllowPrintToArchive       := true;
             AllowPrintToFile          := true;
             ppFooterBand1.Visible     := false;
             DeviceType                := 'XlsxReport';
             XLSSettings.AppName       := 'Cybersoft - ERP Importa';
             XLSSettings.Author        := 'Cybersoft';
             XLSSettings.Title         := 'Vendas de Representantes-Clientes';
             XLSSettings.WorksheetName := 'Vendas de Representantes-Clientes';
             ArchiveFileName           := 'c:\faturamento\Pedido_VendaClientes.xlsx';
             TextFileName              := 'c:\faturamento\Pedido_VendaClientes.xlsx';
             ShowPrintDialog           := false;
             ppDetailBand1.Height      := 0.18;
             Print;
             Reset;
             FreeOnRelease;
          end;
     end;
end;

procedure TImpressao_Faturamento_VendasClientes.bLimparClick(Sender: TObject);
begin
     cCliente.ClearValue;
     cRepres.ClearValue;
     cDataIni.Clear;
     cDataFim.Clear;
     cExcel.Checked := false;
end;

procedure TImpressao_Faturamento_VendasClientes.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_Faturamento_VendasClientes.FormClose(Sender: TObject; var Action: TCloseAction);
Var
    aIni:TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'DataIni', cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'DataFim', cDataFim.Date );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'Excel'  , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'Cliente', iif(cCliente.KeyValue > 0, cCliente.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'Repres' , iif(cRepres.KeyValue > 0, cRepres.KeyValue, 0));
      aINI.Free;

      Impressao_Faturamento_VendasClientes.Release;
      Impressao_Faturamento_VendasClientes := nil;
end;

procedure TImpressao_Faturamento_VendasClientes.FormCreate(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      With Dados do begin
           with Fornecedores do begin
                SQL.Clear;
                SQL.Add('select * from Fornecedores where isnull(Representante_Codigo, 0) <> 0');
                Open;
           end;
           with Empresas do begin
                SQL.Clear;
                SQL.Add('select * from Empresas where Codigo = :pCodigo');
                ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;
           with ProdutosLinhas do begin
                SQL.Clear;
                SQL.Add('select * from ProdutosLinhas order by Descricao');
                Open;
           end;
           with tClientes do begin
                sql.clear;
                sql.Add('select Codigo, CNPJ, Nome  from Clientes where isnull(Ativo, 0) = 1 order by Nome');
                open;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_VendasClientes.FormShow(Sender: TObject);
Var
    aIni:TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date     := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'DataIni', 0);
      cDataFim.Date     := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'DataFim', 0);
      cExcel.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'Excel'  , false);
      cCliente.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'Cliente', 0);
      cRepres.KeyValue  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDASCLIENTES', 'Repres' , 0);
      aINI.Free;
end;

end.
