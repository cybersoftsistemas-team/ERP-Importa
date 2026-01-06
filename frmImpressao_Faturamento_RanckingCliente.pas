unit frmImpressao_Faturamento_RanckingCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppReport,
  DB, DBAccess, MSAccess, ppDBPipe, Mask, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, RXSpin, IniFiles, ComObj,
  RxToolEdit, ppDesignLayer, ppClass, ppCache, ppProd, MemDS, ppDB, ppComm, ppRelatv;

type
  TImpressao_Faturamento_RanckingCliente = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    pEmpresas: TppDBPipeline;
    pNotas: TppDBPipeline;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    cOrdem: TRadioGroup;
    StaticText3: TStaticText;
    cRanking: TRxSpinEdit;
    cExcel: TCheckBox;
    rRanking: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cOrig: TRadioGroup;
    cPess: TRadioGroup;
    cMov: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cDataIniExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_RanckingCliente: TImpressao_Faturamento_RanckingCliente;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_RanckingCliente.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Faturamento_RanckingCliente.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_RanckingCliente.bImprimirClick(Sender: TObject);
begin
     with tNotas do begin
          if cMov.ItemIndex = 0 then begin
             sql.clear;
             if cOrig.ItemIndex <> 1 then begin
                sql.add('select Cliente_Codigo');
                sql.add('      ,Cliente_Nome = Destinatario_Nome');
                sql.add('      ,Total_Cliente = sum(Valor_TotalNota)');
                sql.add('into #Temp');
                sql.add('from NotasFiscais tb');
                sql.add('where tb.Saida_Entrada = 1');
                sql.Add('and tb.Cancelada <> 1');
                sql.Add('and tb.Nfe_Denegada <> 1');
                sql.Add('and (select Gerar_Financeiro from TipoNota tn where tn.Codigo = tb.Tipo_Nota) = 1');
                if trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
                   sqL.Add('and tb.Data_Emissao between :pDataIni and :pDataFim');
                   paramByName('pDataIni').AsDate := cDataIni.Date;
                   paramByName('pDataFim').AsDate := cDataFim.Date;
                end;
                if cPess.ItemIndex = 0 then begin
                   sql.Add('and tb.Destinatario_Juridica = 1');
                end;
                if cPess.ItemIndex = 1 then begin
                   sql.Add('and tb.Destinatario_Juridica <> 1');
                end;
                sql.Add('group by Cliente_Codigo, Destinatario_Nome');
             end;
             if cOrig.ItemIndex = 2 then begin
                sql.add('union all');
             end;
             if cOrig.ItemIndex <> 0 then begin
                sql.add('select Cliente_Codigo = Cliente');
                sql.add('      ,Cliente_Nome');
                sql.add('      ,Total_Cliente = sum(Total_Pedido)');
                if cOrig.ItemIndex = 1 then begin
                   sql.add('into #Temp');
                end;
                sql.add('from PedidosRepresentantes tb');
                sql.add('where tb.Local > 0');
                sql.Add('and tb.Cancelado <> 1');
                if trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
                   sqL.Add('and tb.Data between :pDataIni and :pDataFim');
                   paramByName('pDataIni').AsDate := cDataIni.Date;
                   paramByName('pDataFim').AsDate := cDataFim.Date;
                end;
                if cPess.ItemIndex = 0 then begin
                   sql.Add('and isnull(tb.Cliente_CNPJ, '''') <> ''''');
                end;
                if cPess.ItemIndex = 1 then begin
                   sql.Add('and isnull(tb.Cliente_CPF, '''') <> ''''');
                end;
                sql.add('group by Cliente, Cliente_Nome');
             end;
             sql.Add('select Ranking = identity(int, 1, 1)');
             sql.Add('      ,Cliente_Codigo');
             sql.Add('      ,Cliente_Nome');
             sql.Add('      ,Total_Cliente');
             sql.Add('into #Temp2');
             sql.Add('from #Temp');
             sql.Add('order by Total_Cliente desc');
             sql.Add('Select * from #Temp2');
             if cranking.Value > 0 then begin
                sqL.Add('where Ranking <= :pRanking');
                paramByName('pRanking').AsInteger := cRanking.AsInteger;
             end;
             if cOrdem.ItemIndex = 0 then
                sqL.Add('order by Ranking')
             else
                sqL.Add('order by Cliente_Nome');
             sql.Add('drop table #Temp, #Temp2');
             //sql.SaveToFile('c:\temp\Ranking_Vendas.sql');
             open;
          end else begin
             sql.clear;
             sql.add('select Ranking = '' '' ');
             sql.Add('      ,Cliente_Codigo = Codigo');
             sql.add('      ,Cliente_Nome = Nome');
             sql.add('      ,Total_Cliente = 0');
             sql.add('from Clientes cli');
             sql.add('where isnull(Codigo, 0) <> 0');
             sql.Add('and isnull(Ativo, 0) = 1');
             sql.Add('and (select isnull(count(*),0) from PedidosRepresentantes where Cliente = Codigo)+(select isnull(count(*),0) from NotasFiscais where Cliente_Codigo = Codigo and Saida_Entrada = 1) = 0');
             if cPess.ItemIndex = 0 then begin
                sql.Add('and isnull(CNPJ, '''') <> '''' ');
             end;
             if cPess.ItemIndex = 1 then begin
                sql.Add('and isnull(CPF, '''') <> '''' ');
             end;
             sql.Add('group by Codigo, Nome');
             sqL.Add('order by Ranking, Nome');
             open;
             //sql.SaveToFile('c:\temp\Ranking_Vendas_Sem_Movimento.sql');
          end;
     end;

     lPeriodo.Text := 'Período de '+cDataIni.Text + ' a '+ cDataFim.Text;

     If cExcel.Checked = false then begin
        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;
        //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        rRanking.Print;
        rRanking.FreeOnRelease;
        rRanking.Reset;
     end else begin
        ExportaExcel;
     End;
end;

procedure TImpressao_Faturamento_RanckingCliente.cDataIniExit(Sender: TObject);
begin
       If cDataFim.Date < cDataFim.Date then cDataFim.Date := cDataIni.Date;
end;

procedure TImpressao_Faturamento_RanckingCliente.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
     // Carregando as ultimas opções utilizadas no relatório como default.
     aINI             := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cDataIni.Date    := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_RANKING', 'DataIni' , Date );
     cDataFim.Date    := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_RANKING', 'DataFim' , Date );
     cRanking.Value   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Ranking' , 0 );
     cOrdem.ItemIndex := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Ordem'   , 0 );
     cExcel.Checked   := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_RANKING', 'Excel'   , false );
     cOrig.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Origem'   , 2 );
     cPess.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Pessoa'   , 2 );
     cMov.ItemIndex   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Movimento', 0 );
     aINI.Free;

     With Dados do begin
          with Clientes do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) AND ((SELECT COUNT(*) FROM NotasFiscais WHERE(Cliente_Codigo = Clientes.Codigo)) > 0) ORDER BY Nome');
               Open;
          end;
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pCod');
               parambyname('pCod').AsInteger := Menu_Principal.mEmpresa;
               Open;
          end;
     End;
end;

procedure TImpressao_Faturamento_RanckingCliente.FormClose(Sender: TObject;var Action: TCloseAction);
var
    aINI: TIniFile;
begin
     // Registrando as ultimas opções utilizadas no relatório para ficar default.
     aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_RANKING', 'DataIni'  , cDataIni.Date );
     aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_RANKING', 'DataFim'  , cDataFim.Date );
     aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Ranking'  , cRanking.AsInteger);
     aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Ordem'    , cOrdem.Itemindex);
     aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_RANKING', 'Excel'    , cExcel.Checked);
     aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Origem'   , cOrig.Itemindex);
     aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Pessoa'   , cPess.Itemindex);
     aINI.WriteInteger('IMPRESSAO_FATURAMENTO_RANKING', 'Movimento', cMov.Itemindex);
     aINI.Free;

     Impressao_Faturamento_RanckingCliente.Release;
     Impressao_Faturamento_RanckingCliente := nil;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_RanckingCliente.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
begin
     Janela_Processamento := TJanela_Processamento.Create(Self);
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
     Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
     Janela_Processamento.Show;

     mPlanilha := CreateOleObject('Excel.Application');

     mPlanilha.WorkBooks.add(1);

     mPlanilha.Visible := false;
     mPlanilha.Range['A3','C3'].Interior.Color    := RGB(255, 255, 140);
     mPlanilha.Range['A3','C3'].Interior.Pattern  := 1;
     mPlanilha.Range['A3','C3'].Font.Bold         := true;
     mPlanilha.Range['A3','C3'].Font.Color        := clBlack;
     mPlanilha.Range['A3','C3'].Borders.LineStyle := 1; //xlContinuous;
     mPlanilha.Range['A3','C3'].Borders.Weight    := 2; //xlThin;
     mPlanilha.Range['A3','C3'].Borders.Color     := RGB(0,0,0);

     mPlanilha.Cells[3,01] := 'RANKING';
     mPlanilha.Cells[3,02] := 'CLIENTE';
     mPlanilha.Cells[3,03] := 'VALOR';

     mPlanilha.Range['A3','C3'].HorizontalAlignment := 3;
     mPlanilha.Range['A3','C3'].VerticalAlignment   := 2;
     mPlanilha.Range['A3','C3'].Font.Size           := 12;

     mLinha := 4;

     While (not tNotas.Eof) and (not Funcoes.Cancelado) do  Begin
           mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size := 12;
           mPlanilha.Cells[mLinha,01] := tNotas.FieldByName('Ranking').asstring;
           mPlanilha.Cells[mLinha,02] := tNotas.FieldByName('Cliente_Nome').AsString;
           mPlanilha.Cells[mLinha,03] := tNotas.FieldByName('Total_Cliente').AsCurrency;

           //mPlanilha.Cells[mLinha,01].NumberFormat := '0º';
           mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

           tNotas.Next;
           Inc(mLinha);
           Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
           Application.ProcessMessages;
     end;
     
     //Fecha o Excel
     If Funcoes.Cancelado = true then begin
        Abort;
        mPlanilha.Free;
        mPlanilha.Destroy;
     End;

     mPlanilha.Columns.Autofit;

     mPlanilha.Cells[1,01]                 := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
     mPlanilha.Range['A1','A1'].Font.Size  := 14;
     mPlanilha.Range['A1','A1'].Font.Bold  := true;
     mPlanilha.Range['A1','C1'].Mergecells := True;
     mPlanilha.Range['A1','C1'].HorizontalAlignment := 3;
     mPlanilha.Cells[2,01] := 'Ranking de Vendas a Cliente (Período de '+cDataIni.Text + ' ás ' + cDataFim.Text+')';
     mPlanilha.Range['A2','A2'].Font.Size  := 10;
     mPlanilha.Range['A2','C2'].Mergecells := True;
     mPlanilha.Range['A2','C2'].HorizontalAlignment := 3;

     Janela_Processamento.Close;
     mPlanilha.Visible := true;
end;


end.
