unit frmImpressao_ProcessosOP_Container;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, DBCtrls, Mask, IniFiles, ppParameter,
  ppCtrls, ppVar, ppBands, ppReport, ppDBPipe, DB, DBAccess, MSAccess, ppSubRpt,
  RxToolEdit, MemDS, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv;

type
  TImpressao_ProcessosOP_Container = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cSituacao: TRadioGroup;
    cProcesso: TDBLookupComboBox;
    StaticText12: TStaticText;
    cCliente: TDBLookupComboBox;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText8: TStaticText;
    cDataFim: TDateEdit;
    StaticText10: TStaticText;
    pDemurrage: TppDBPipeline;
    rContainer: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    lPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    bLimpar: TButton;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDBText9: TppDBText;
    ppLabel5: TppLabel;
    ppDBText10: TppDBText;
    ppLabel6: TppLabel;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    tContainer: TMSQuery;
    dstContainer: TDataSource;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppShape8: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    rTotalDemurrage: TppDBCalc;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    iLogo: TppImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    cDemurrage: TRadioGroup;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    cTransp: TCheckBox;
    ppLine5: TppLine;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Container: TImpressao_ProcessosOP_Container;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Container.bSairClick(Sender: TObject);
begin
      Close;  
end;

procedure TImpressao_ProcessosOP_Container.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Container.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      with aIni do begin
           WriteInteger( 'IMPRESSAO_Demurrage', 'Situacao'  , cSituacao.ItemIndex );
           WriteDate   ( 'IMPRESSAO_Demurrage', 'DataIni'   , cDataIni.Date );
           WriteDate   ( 'IMPRESSAO_Demurrage', 'DataFim'   , cDataFim.Date );
           WriteString ( 'IMPRESSAO_Demurrage', 'Processo'  , cProcesso.KeyValue );
           WriteInteger( 'IMPRESSAO_Demurrage', 'Cliente'   , iif(cCliente.Text <> '', cCliente.KeyValue, -1));
           WriteInteger( 'IMPRESSAO_Demurrage', 'Demurrage' , cDemurrage.ItemIndex);
           WriteBool   ( 'IMPRESSAO_Demurrage', 'Transporte', cTransp.Checked);
           Free;
      end;

      //FecharTabelas(Dados,nil, nil, nil);
      Impressao_ProcessosOP_Container.Release;
      Impressao_ProcessosOP_Container := nil;
end;

procedure TImpressao_ProcessosOP_Container.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;
      with Dados do begin
           with Empresas do begin
                SQL.Clear;
                SQL.Add('select * from Empresas where Codigo = :pEmp');
                parambyname('pEmp').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
           with ProcessosDOC do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
                Open;
           end;
           with Clientes do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
                Open;
           end;
      end;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      with aIni do begin
           cSituacao.ItemIndex  := ReadInteger('IMPRESSAO_Demurrage', 'Situacao'  , 2 );
           cDataIni.Date        := ReadDate   ('IMPRESSAO_Demurrage', 'DataIni'   , Date );
           cDataFim.Date        := ReadDate   ('IMPRESSAO_Demurrage', 'DataFim'   , Date );
           cProcesso.KeyValue   := ReadString ('IMPRESSAO_Demurrage', 'Processo'  , '');
           cCliente.KeyValue    := ReadInteger('IMPRESSAO_Demurrage', 'Cliente'   , 0);
           cDemurrage.ItemIndex := ReadInteger('IMPRESSAO_Demurrage', 'Demurrage' , 0);
           cTransp.Checked      := ReadBool   ('IMPRESSAO_Demurrage', 'Transporte', false);
           aINI.Free;
      end;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProcessosOP_Container.bLimparClick(Sender: TObject);
begin
      cSituacao.ItemIndex := 2;
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.KeyValue := '';
      cCliente.KeyValue  := 0;
end;

procedure TImpressao_ProcessosOP_Container.bImprimirClick(Sender: TObject);
begin
      lPeriodo.Caption := '| Período de '+cDataIni.Text + ' á ' + cDataFim.Text+' | ';
      with tContainer do begin
           sql.clear;
           sql.add('select *');
           sql.add('      ,(select Nome from Fornecedores frn where frn.Codigo = ctn.Armazem) as Armazem_Nome');
           sql.add('      ,(select Nome from Fornecedores frn where frn.Codigo = ctn.Transportadora_Entrada) as TransportaEntrada_Nome');
           sql.add('      ,(select Nome from Fornecedores frn where frn.Codigo = ctn.Transportadora_Saida) as TransportaSaida_Nome');
           sql.add('      ,Dias = iif(isnull(Ctn.Data_Entrega, '''') <> '''', datediff(Day, Ctn.Data_Saida, ctn.Data_Entrega), datediff(Day, ctn.Data_Saida, getdate()))');
           sql.add('      ,Valor_Container = (Valor_Demurrage * Taxa) * (iif(isnull(Data_Entrega, '''') <> '''', datediff(Day, ctn.Data_Saida, ctn.Data_Entrega), datediff(Day, ctn.Data_Saida, getdate())))');
           sql.add('      ,Valor = Valor_Demurrage * Taxa');
           sql.add('      ,Total = (Valor_Demurrage * Taxa) * (iif(isnull(Data_Entrega, '''') <> '''', datediff(Day, ctn.Data_Saida, ctn.Data_Entrega), datediff(Day, ctn.Data_Saida, getdate())))');
           sql.add('into #temp');
           sql.add('from Container ctn');
           sql.add('where Numero is not null');
           if not DataLimpa(cDataIni.text) then begin
              sql.add('and ctn.Data_Entrada between :pDataIni and :pDataFim');
              parambyname('pDataIni').Value := cDataIni.Date;
              parambyname('pDataFim').Value := cDataFim.Date;
           end;
           if trim(cProcesso.text) <> '' then begin
              lPeriodo.Caption := lPeriodo.text + 'PROCESSO: '+Dados.ProcessosDOCProcesso.AsString+ ' | ';
              sql.add('and ctn.Processo = :pProc');
              parambyname('pProc').Value := Dados.ProcessosDOCProcesso.AsString;
           end;
           if trim(cCliente.Text) <> '' then begin
              sql.add('and (Select Cliente from ProcessosDocumentos pdc where pdc.Processo = ctn.Processo) = :pCliente');
              parambyname('pCliente').Value := Dados.ClientesCodigo.AsInteger;
           end;
           if cSituacao.ItemIndex = 1 then begin
              sql.Add('and ctn.Data_Entrega is not null');
           end;
           if cSituacao.ItemIndex = 2 then begin
              sql.Add('and ctn.Data_Entrega is null');
           end;
           sql.add('select *');
           sql.add('from #temp');
           if cDemurrage.ItemIndex = 1 then begin
              sql.add('where Dias > 0');
              lPeriodo.Caption := lPeriodo.text + 'COM DEMURRAGE | ';
           end;
           if cDemurrage.ItemIndex = 2 then begin
              sql.add('where Dias <= 0');
              lPeriodo.Caption := lPeriodo.text + 'SEM DEMURRAGE | ';
           end;
           sql.add('order by Numero');
           sql.add('drop table #temp');
           //sql.SaveToFile('c:\temp\Impressao_Container.sql');
           open;
      end;
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      ppSubReport1.Visible := not cTransp.Checked;
      rContainer.Reset;
      rContainer.Print;
end;



end.
