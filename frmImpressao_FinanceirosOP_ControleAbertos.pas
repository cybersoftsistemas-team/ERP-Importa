unit frmImpressao_FinanceirosOP_ControleAbertos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, iniFiles, ComObj, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, RxLookup, Vcl.Mask, RxToolEdit, RxCtrls,  Data.DB, MemDS, DBAccess, MSAccess, ppDB, ppDBPipe, ppParameter, 
  ppDesignLayer, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, MaskUtils;

type
  TImpressao_FinanceirosOP_ControleAbertos = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    cExcel: TCheckBox;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    cDataFim: TDateEdit;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TBitBtn;
    dstTitulos: TDataSource;
    tTitulos: TMSQuery;
    rTitulos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText2: TppDBText;
    pTotalGeral: TppSummaryBand;
    ppLabel12: TppLabel;
    pTotalBaixado: TppDBCalc;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pTitulos: TppDBPipeline;
    pItens: TppDBPipeline;
    pItensppField1: TppField;
    pItensppField2: TppField;
    pItensppField3: TppField;
    pItensppField4: TppField;
    pItensppField5: TppField;
    pItensppField6: TppField;
    pItensppField7: TppField;
    pItensppField8: TppField;
    pItensppField9: TppField;
    pItensppField10: TppField;
    pItensppField11: TppField;
    pItensppField12: TppField;
    pItensppField13: TppField;
    pItensppField14: TppField;
    pItensppField15: TppField;
    pItensppField16: TppField;
    pItensppField17: TppField;
    pItensppField18: TppField;
    pItensppField19: TppField;
    pItensppField20: TppField;
    pItensppField21: TppField;
    pItensppField22: TppField;
    pItensppField23: TppField;
    pItensppField24: TppField;
    pItensppField25: TppField;
    pItensppField26: TppField;
    pItensppField27: TppField;
    pItensppField28: TppField;
    pItensppField29: TppField;
    pItensppField30: TppField;
    pItensppField31: TppField;
    pItensppField32: TppField;
    pItensppField33: TppField;
    pItensppField34: TppField;
    pItensppField35: TppField;
    pItensppField36: TppField;
    pItensppField37: TppField;
    pItensppField38: TppField;
    pItensppField39: TppField;
    pItensppField40: TppField;
    pItensppField41: TppField;
    pItensppField42: TppField;
    pItensppField43: TppField;
    pItensppField44: TppField;
    pItensppField45: TppField;
    pItensppField46: TppField;
    pItensppField47: TppField;
    pEmpresas: TppDBPipeline;
    ppLabel16: TppLabel;
    ppLabel3: TppLabel;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    pGrupoCliente: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_ControleAbertos: TImpressao_FinanceirosOP_ControleAbertos;

implementation

{$R *.dfm}

uses frmDados, Funcoes, frmMenu_Principal, frmJanela_Processamento;

procedure TImpressao_FinanceirosOP_ControleAbertos.bImprimirClick(Sender: TObject);
begin
      with tTitulos do begin                                                      
           sql.Clear;
           sql.add('select Data_Documento');
           sql.add('      ,Data_Vencimento');
           sql.add('      ,Cliente = (select Nome from Clientes where Codigo = Cliente)');
           sql.add('      ,CNPJ = (select isnull(CNPJ,'''')+isnull(CPF,'''') from Clientes where Codigo = Cliente)');
           sql.add('      ,Duplicata = Numero_Documento');
           sql.add('      ,Centro_Custo');
           sql.add('      ,Centro_CustoNome = (select Descricao from CentroCusto where Codigo =  Centro_Custo)');
           sql.add('      ,Valor_Parcela');
           sql.add('from PagarReceber');
           sql.add('where Tipo = ''R'' ');
           sql.add('and Data_Vencimento between :pDataIni and :pDataFim');
           sql.add('and Documento in(''DUPL'', ''NF'')');
           sql.add('and (isnull((select Count(*) from EmprestimosDuplicatas where Duplicata = Numero_Documento), 1) = 0 ');
           sql.Add('     and isnull((select sum(Valor) from PagarReceberBaixas prb where prb.Numero = PagarReceber.Numero), 0)+isnull(Desconto, 0)+isnull(Desconto_Liquidacao, 0) = 0');
           sql.add('     or  isnull((select Count(*) from EmprestimosDuplicatas where Duplicata = Numero_Documento), 1) > 0');
           sql.Add('     and isnull((select Liquidar from EmprestimosDuplicatas where Duplicata = Numero_Documento), 0) = 0)');
           if cCliente.DisplayValue <> '' then begin
              sql.add('and Cliente = :pCliente');
              parambyname('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
           end;
           if cCentroCusto.DisplayValue <> '' then begin
              sql.add('and Centro_Custo = :pCentro');
              parambyname('pCentro').Asstring := Dados.CentroCustoCodigo.asstring;
           end;
           sql.add('order by Cliente, Data_Vencimento, Duplicata');
           parambyname('pDataIni').Value := cDataIni.Date;
           parambyname('pDataFim').Value := cDataFim.Date;
           //sql.SaveToFile('c:\temp\Controle_Titulos_Abertos.sql.');
           open;
      end;
      with rTitulos do begin
           lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á ' + cDataFim.Text;
           if cExcel.Checked = false then begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              Print;
              FreeOnRelease;
              Reset;
           end else begin
              ExportaEXCEL;
           end;
      end;
end;

procedure TImpressao_FinanceirosOP_ControleAbertos.bLimparClick(Sender: TObject);
begin
    cDataIni.Clear;
    cDataFim.Clear;
    cCliente.KeyValue := -1;
    cCentroCusto.KeyValue := -1;
    cExcel.Checked := false;
end;

procedure TImpressao_FinanceirosOP_ControleAbertos.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TImpressao_FinanceirosOP_ControleAbertos.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'DataIni'    , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'DataFim'    , cDataFim.Date);
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'CentroCusto', iif(cCentroCusto.keyvalue = null, 0, cCentroCusto.keyvalue));
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'Cliente'    , iif(cCliente.keyvalue = null, 0, cCliente.KeyValue));
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'Excel'      , cExcel.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      LimpaMemoria;
      Impressao_FinanceirosOP_ControleAbertos.Release;
      Impressao_FinanceirosOP_ControleAbertos := nil;
end;

procedure TImpressao_FinanceirosOP_ControleAbertos.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ControleAbertos.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      with Dados do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pEmpresa');
                parambyname('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
           with Clientes do begin 
                SQL.Clear;
                SQL.Add('select * from Clientes where Codigo in(select distinct Cliente from PagarReceber) order by Nome');
                Open;
           end;
           with CentroCusto do begin
                sql.clear;
                sql.add('select * from CentroCusto order by Descricao');
                open;
           end;
      end;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'DataIni'     , 0);
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'DataFim'     , 0);
      cCentroCusto.keyvalue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'CentroCusto' , '');
      cCliente.KeyValue     := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'Cliente'     , 0);
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_CONTRABERTOS', 'Excel'       , false);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_ControleAbertos.ExportaEXCEL;
var
   mPlanilha: Variant;
   mCliente: string;
   mLinha: Integer;
   mTotalCliente
  ,mTotalGeral: Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tTitulos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;                   

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size           := 18;
       mPlanilha.Range['A1','A1'].Font.Bold           := true;
       mPlanilha.Range['A1','E1'].Mergecells          := True;
       mPlanilha.Range['A1','E1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','E1'].RowHeight           := 26;
       mPlanilha.Range['A1','E3'].VerticalAlignment   := 2;

       mPlanilha.Cells[2,01] := 'CONTROLE DE DUPLICATAS ABERTAS';
       mPlanilha.Range['A2','A2'].Font.Size           := 14;
       mPlanilha.Range['A2','E2'].Mergecells          := True;
       mPlanilha.Range['A2','E2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','E2'].RowHeight           := 26;
       
       mPlanilha.Range['A3','E3'].Interior.Color      := RGB(94, 94, 174);
       mPlanilha.Range['A3','E3'].Interior.Pattern    := 1;
       mPlanilha.Range['A3','E3'].Font.Bold           := true;
       mPlanilha.Range['A3','E3'].Font.Color          := clwhite;
       mPlanilha.Range['A3','E3'].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['A3','E3'].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['A3','E3'].Borders.Color       := RGB(0,0,0);
       mPlanilha.Range['A3','E3'].RowHeight           := 18;
       mPlanilha.Range['A3','E3'].HorizontalAlignment := 3;

       mPlanilha.Cells[3,01] := 'DATA DOC';
       mPlanilha.Cells[3,01].ColumnWidth := 12;
       mPlanilha.Cells[3,02] := 'DATA VENC';
       mPlanilha.Cells[3,02].ColumnWidth := 12;
       mPlanilha.Cells[3,03] := 'DOCUMENTO Nº';
       mPlanilha.Cells[3,03].ColumnWidth := 25;
       mPlanilha.Cells[3,04] := 'CENTRO CUSTO';
       mPlanilha.Cells[3,04].ColumnWidth := 30;
       mPlanilha.Cells[3,05] := 'VALOR';
       mPlanilha.Cells[3,05].ColumnWidth := 22;

       mLinha        := 4;
       mTotalCliente := 0;
       mTotalGeral   := 0;
       mCliente      := tTitulos.FieldByName('Cliente').asstring;

       mPlanilha.Cells[mLinha, 01] := mCliente;
       mPlanilha.Cells[mLinha, 04] := FormatMaskText('00\.000\.000\/0000\-00;0;', tTitulos.FieldByName('CNPJ').asstring);
       mPlanilha.Range['A'+inttostr(mLinha),'D'+inttostr(mLinha)].Interior.Color      := RGB(83, 83, 83);
       mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Interior.Pattern    := 1;
       mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Font.Color          := clwhite;
       mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].RowHeight           := 18;
       mPlanilha.Range['A'+inttostr(mLinha),'C'+inttostr(mLinha)].HorizontalAlignment := 1;
       mPlanilha.Range['D'+inttostr(mLinha),'D'+inttostr(mLinha)].HorizontalAlignment := 3;
       mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].VerticalAlignment   := 2;
       mPlanilha.Range['A'+inttostr(mLinha),'C'+inttostr(mLinha)].Mergecells          := True;
      
       inc(mLinha);
       
       While (not tTitulos.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['A'+InttoStr(mLinha),'E'+InttoStr(mLinha)].Borders.Color       := clSilver;
             mPlanilha.Range['A'+InttoStr(mLinha),'E'+InttoStr(mLinha)].VerticalAlignment   := 2;

             mPlanilha.Cells[mLinha,01] := tTitulos.FieldByName('Data_Documento').value;
             mPlanilha.Cells[mLinha,01].NumberFormat := 'dd/mm/aaaa';
             mPlanilha.Cells[mLinha,02] := tTitulos.FieldByName('Data_Vencimento').value;
             mPlanilha.Cells[mLinha,02].NumberFormat := 'dd/mm/aaaa';
             mPlanilha.Cells[mLinha,03] := tTitulos.FieldByName('Duplicata').asstring;
             mPlanilha.Cells[mLinha,03].NumberFormat := '@';
             mPlanilha.Cells[mLinha,04] := tTitulos.FieldByName('Centro_CustoNome').asstring;
             mPlanilha.Cells[mLinha,04].NumberFormat := '@';
             mPlanilha.Cells[mLinha,05] := tTitulos.FieldByName('Valor_Parcela').AsCurrency;
             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotalCliente := mTotalCliente + tTitulos.FieldByName('Valor_Parcela').AsCurrency;
             mTotalGeral   := mTotalGeral   + tTitulos.FieldByName('Valor_Parcela').AsCurrency;
            
             Inc(mLinha);
             tTitulos.Next;

             if (tTitulos.FieldByName('Cliente').AsString <> mCliente) or tTitulos.eof then begin
                mPlanilha.Cells[mLinha,04] := 'TOTAL DO CLIENTE';
                mPlanilha.Cells[mLinha,05] := mTotalCliente;
                mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Range['D'+InttoStr(mLinha),'E'+InttoStr(mLinha)].Font.Bold           := true;
                mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Font.Color          := clwhite;
                mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Interior.Color      := RGB(83, 83, 83);
                mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Interior.Pattern    := 1;
                mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
                mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.Weight      := 2; //xlThin;
                mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.Color       := RGB(0,0,0);
                mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].RowHeight           := 18;
                mPlanilha.Range['A'+inttostr(mLinha),'C'+inttostr(mLinha)].HorizontalAlignment := 1;
                mPlanilha.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha)].VerticalAlignment   := 2;
                mCliente := tTitulos.FieldByName('Cliente').asstring;
                mTotalCliente := 0;
                
                if not tTitulos.eof then begin
                   inc(mLinha,3);
                   mPlanilha.Cells[mLinha, 01] := mCliente;
                   mPlanilha.Cells[mLinha, 04] := FormatMaskText('00\.000\.000\/0000\-00;0;', tTitulos.FieldByName('CNPJ').asstring);
                   mPlanilha.Range['A'+inttostr(mLinha),'D'+inttostr(mLinha)].Interior.Color      := RGB(83, 83, 83);
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Interior.Pattern    := 1;
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Font.Bold           := true;
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Font.Color          := clwhite;
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.Weight      := 2; //xlThin;
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.Color       := RGB(0,0,0);
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].RowHeight           := 18;
                   mPlanilha.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha)].HorizontalAlignment := 3;
                   mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].VerticalAlignment   := 2;
                   mPlanilha.Range['A'+inttostr(mLinha),'C'+inttostr(mLinha)].Mergecells          := True;
                   inc(mLinha);
                end;
             end;

             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;
       
       if cCliente.DisplayValue = '' then begin
          inc(mLinha, 2);
          mPlanilha.Cells[mLinha,04] := 'TOTAL GERAL';
          mPlanilha.Cells[mLinha,05] := mTotalGeral;
          mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
          mPlanilha.Range['C'+InttoStr(mLinha),'E'+InttoStr(mLinha)].Font.Bold           := true;
          mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].Font.Color          := clwhite;
          mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Interior.Color      := RGB(83, 83, 83);
          mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Interior.Pattern    := 1;
          mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
          mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.Weight      := 2; //xlThin;
          mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Borders.Color       := RGB(0,0,0);
          mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].RowHeight           := 18;
          mPlanilha.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha)].HorizontalAlignment := 1;
          mPlanilha.Range['A'+inttostr(mLinha),'E'+inttostr(mLinha)].VerticalAlignment   := 2;
       end;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
