unit frmImpressao_Estoque_SeriaisSit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.IniFiles, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo, ppClass, ppVar, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, RxLookup, Vcl.ExtCtrls,
  RxCtrls, Funcoes;

type
  TImpressao_Estoque_SeriaisSit = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText6: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cExcel: TCheckBox;
    rSeriais: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppLabel15: TppLabel;
    lPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
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
    pSeriais: TppDBPipeline;
    tSeriais: TMSQuery;
    dstLotes: TDataSource;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText10: TppDBText;
    cData: TDateEdit;
    ppDBText2: TppDBText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Estoque_SeriaisSit: TImpressao_Estoque_SeriaisSit;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TImpressao_Estoque_SeriaisSit.bImprimirClick(Sender: TObject);
var 
   i:integer;
begin
     with Dados, Empresas do begin
          sql.Clear;
          sql.Add('select * from Empresas where Codigo = :pCodigo');
          ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          open;
     end;
     with tSeriais do begin
          (*
          sql.Clear; 
          sql.Add('Select Codigo = Produto_Codigo');
          sql.Add('      ,Descricao = (select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = psn.Produto_Codigo)');
          sql.Add('      ,Chassi = ltrim(rtrim(Numero))');
          sql.Add('      ,Nota');
          sql.Add('      ,Data');
          sql.Add('      ,Saida_Entrada');
          sql.Add('      ,Emissor');
          sql.Add('      ,Registro');
          sql.Add('      ,Tipo_Nota = case Emissor ');
          sql.Add('                        when ''P'' then (select Tipo_Nota         from NotasFiscais   nf where nf.Numero = psn.Nota and nf.Data_Emissao = psn.Data)');
          sql.Add('                        when ''T'' then (select Referencia_Fiscal from NotasTerceiros nt where nt.Nota   = psn.Nota and nt.Data_Emissao = psn.Data)');
          sql.Add('                   end');
          sql.Add('      ,Destinatario = case Emissor ');
          sql.Add('                           when ''P'' then (select Destinatario_Nome from NotasFiscais nf where nf.Numero = psn.Nota and nf.Data_Emissao = psn.Data)');
          sql.Add('                           when ''T'' then (select Nome              from Fornecedores fr where fr.Codigo = (select Fornecedor from NotasTerceiros nt where nt.Nota = psn.Nota and nt.Data_Emissao = psn.Data))');
          sql.Add('                      end');
          sql.Add('into #temp');
          sql.Add('from   ProdutosSeriaisNotas psn');
          if not DataLimpa(cData.Text) then begin
             sql.Add('where (select max(psn2.Registro) from ProdutosSeriaisNotas psn2 where psn2.Numero = Psn.Numero and psn2.Data <= :pDataFim) = psn.Registro');
             ParamByName('pDataFim').AsDateTime := cData.Date;
          end else begin
             sql.Add('where (select max(psn2.Registro) from ProdutosSeriaisNotas psn2 where psn2.Numero = Psn.Numero) = psn.Registro');
          end;
          sql.Add('order  by Numero, Data, Nota');
          sql.Add('Select Codigo');
          sql.Add('      ,Descricao');
          sql.Add('      ,Chassi');
          sql.Add('      ,Nota');
          sql.Add('      ,Data');
          sql.Add('      ,Saida_Entrada');
          sql.Add('      ,Emissor');
          sql.Add('      ,Registro');
          sql.Add('      ,Tipo_Nota ');
          sql.Add('      ,Tipo_Descr = (select Descricao from TipoNota where Codigo = Tipo_Nota)');
          sql.Add('      ,Destinatario');
          sql.Add('      ,Valor = round(case Saida_Entrada ');
          sql.Add('                    when 0 then (select Unitario_Entrada from FichaInventario fi where fi.Codigo = #temp.Codigo and fi.Nota = #temp.Nota and fi.Data = #temp.Data)');
          sql.Add('                    when 1 then (select Unitario_Saida   from FichaInventario fi where fi.Codigo = #temp.Codigo and fi.Nota = #temp.Nota and fi.Data = #temp.Data)');
          sql.Add('               end, 2)');
          sql.add('      ,Processo = (select Processo from FichaInventario fi where fi.Codigo = #temp.Codigo and fi.Nota = #temp.Nota and fi.Data = #temp.Data)');
          sql.Add('from #temp');
          sql.Add('where isnull(Codigo, 0) > 0');
          if cTipoNota.KeyValue > 0 then begin
             sql.Add('and   Tipo_Nota = :pTipo');
             ParamByName('pTipo').AsInteger := cTipoNota.KeyValue;
          end;
          sql.Add('order by Tipo_Nota, Chassi, Data, Nota');
          sql.Add('drop table #temp');
          //sql.SaveToFile('c:\temp\Relacao_Seriais_Situação.sql');
          open;
          *)

          sql.Clear; 
          sql.Add('select Codigo = Produto_Codigo');
          sql.Add('      ,Descricao = (select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = psn.Produto_Codigo)');
          sql.Add('      ,Chassi = Numero');
          sql.Add('      ,Nota');
          sql.Add('      ,Data');
          sql.Add('      ,Emissor');
          sql.Add('      ,Saida_Entrada');
          sql.Add('      ,Tipo_Nota = case when Emissor = ''P'' then');
          sql.Add('                        (select Tipo_Nota         from NotasFiscais   nf where nf.Numero = psn.Nota and nf.Data_Emissao = psn.Data)');
          sql.Add('                   else ');
          sql.Add('                        (select Referencia_Fiscal from NotasTerceiros nt where nt.Nota   = psn.Nota and nt.Data_Emissao = psn.Data)');
          sql.Add('                   end');
          sql.Add('      ,Tipo_Descr = case when Emissor = ''P'' then');
          sql.Add('                         (select Descricao from TipoNota where Codigo = (select Tipo_Nota from NotasFiscais nf where nf.Numero = psn.Nota and nf.Data_Emissao = psn.Data))');
          sql.Add('                    else ');
          sql.Add('                         (select Descricao from  ReferenciasFiscais where Codigo = (select Referencia_Fiscal from NotasTerceiros nt where nt.Nota   = psn.Nota and nt.Data_Emissao = psn.Data))');
          sql.Add('                    end');
          sql.Add('      ,Destinatario = case Emissor ');
          sql.Add('                           when ''P'' then (select Destinatario_Nome from NotasFiscais nf where nf.Numero = psn.Nota and nf.Data_Emissao = psn.Data)');
          sql.Add('                           when ''T'' then (select Nome              from Fornecedores fr where fr.Codigo = (select Fornecedor from NotasTerceiros nt where nt.Nota = psn.Nota and nt.Data_Emissao = psn.Data))');
          sql.Add('                      end');
          sql.Add('      ,Processo = (select Processo from FichaInventario fi where fi.Codigo = psn.Produto_Codigo and fi.Nota = psn.Nota and fi.Data = psn.Data)');
          sql.Add('      ,Valor = round(case Saida_Entrada ');
          sql.Add('                          when 0 then (select Unitario_Entrada from FichaInventario fi where fi.Codigo = psn.Produto_Codigo and fi.Nota = psn.Nota and fi.Data = psn.Data)');
          sql.Add('                          when 1 then (select Unitario_Saida   from FichaInventario fi where fi.Codigo = psn.Produto_Codigo and fi.Nota = psn.Nota and fi.Data = psn.Data)');
          sql.Add('                     end, 2)');
          sql.Add('into #temp');
          sql.Add('from ProdutosSeriaisNotas psn');
          sql.Add('where isnull(psn.Produto_Codigo, 0) <> 0');
          if not DataLimpa(cData.Text) then begin
             sql.Add('and psn.Registro = (select max(Registro) from ProdutosSeriaisNotas psn2 where psn2.Numero = psn.Numero and psn2.Data <= :pData)');
             ParamByName('pData').AsDateTime := cData.Date;
          end else begin
             sql.Add('and psn.Registro = (select max(Registro) from ProdutosSeriaisNotas psn2 where psn2.Numero = psn.Numero)');
          end;
          sql.Add('select *');
          sql.Add('from #temp');
          if cTipoNota.KeyValue > 0 then begin
             sql.Add('where Tipo_Nota = :pTipo');
             ParamByName('pTipo').AsInteger := cTipoNota.KeyValue;
          end;
          sql.Add('order by Tipo_Nota, Chassi');
          sql.Add('drop table #temp');
          //sql.SaveToFile('c:\temp\Relacao_Seriais_Situação.sql');
          Open;
     end;
     
     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     
     lPeriodo.Text := '';
     if not DataLimpa(cData.Text) then 
        lPeriodo.text := 'Posição em '+cData.Text
     else   
        lPeriodo.text := 'Posição em '+DateToStr(date);

     with rSeriais do begin
          ppHeaderBand1.Visible := True;
          if not cExcel.Checked then begin
             AllowPrintToArchive      := false;
             AllowPrintToFile         := false;
             PrinterSetup.PaperHeight := 8.2677;
             ppDetailBand1.Height     := 0.1042;
             DeviceType               := 'Screen';
             ppDBMemo1.Stretch        := True;
             Print;
             Reset;
             FreeOnRelease;
          end else begin   
             OpenFile                  := true;
             AllowPrintToArchive       := true;
             AllowPrintToFile          := true;
             ppFooterBand1.Visible     := false;
             PrinterSetup.PaperHeight  := 60;
             ppDetailBand1.Height      := 0.17;
             ppDBMemo1.Stretch         := false;
             DeviceType                := 'XlsxReport';
             XLSSettings.AppName       := 'Cybersoft - ERP Importa';
             XLSSettings.Author        := 'Cybersoft';
             XLSSettings.Title         := 'Relação de Chassis/Seriais - Situação';
             XLSSettings.WorksheetName := 'Relação de Chassis/Seriais - Situação';
             ArchiveFileName           := 'c:\faturamento\Relacao_Chassis_Seriais.xlsx';
             TextFileName              := 'c:\faturamento\Relacao_Chassis_Seriais.xlsx';
             ShowPrintDialog           := false;
             Print;
             Reset;
             FreeOnRelease;
          end;
     end;
end;

procedure TImpressao_Estoque_SeriaisSit.bLimparClick(Sender: TObject);
begin
     cData.Clear;
     cTipoNota.ClearValue;
     cExcel.Checked := false;
end;

procedure TImpressao_Estoque_SeriaisSit.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_Estoque_SeriaisSit.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_SERIAIS_SIT', 'TipoNota', iif(cTipoNota.Text <> '', cTipoNota.keyvalue, 0));
      aINI.WriteString ('IMPRESSAO_ESTOQUE_SERIAIS_SIT', 'Data'    , cData.text);
      aINI.WriteBool   ('IMPRESSAO_ESTOQUE_SERIAIS_SIT', 'Excel'   , cExcel.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
      Impressao_Estoque_SeriaisSit.Release;
      Impressao_Estoque_SeriaisSit := nil;
end;

procedure TImpressao_Estoque_SeriaisSit.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Estoque_SeriaisSit.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
     with Dados do begin
          with TipoNota do begin
               sql.Clear;
               sql.Add('select *');
               sql.Add('from   TipoNota');
               sql.add('where  Ativo = 1');
               sql.add('and    (select count(*) from NotasFiscais nf where nf.Tipo_Nota = Codigo) > 0');
               sql.add('and    isnull(Movimenta_Estoque, 0) = 1');
               sql.Add('order by Descricao');
               Open;
          end;
     end;

     // Carregando as ultimas opções utilizadas no relatório como default.
     aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cData.text         := aINI.ReadString ('IMPRESSAO_ESTOQUE_SERIAIS_SIT', 'Data'    , DateToStr(date));
     cTipoNota.KeyValue := aINI.ReadInteger('IMPRESSAO_ESTOQUE_SERIAIS_SIT', 'TipoNota', -1);
     cExcel.Checked     := aINI.ReadBool   ('IMPRESSAO_ESTOQUE_SERIAIS_SIT', 'Excel'   , false);
     aINI.Free;
end;



end.
