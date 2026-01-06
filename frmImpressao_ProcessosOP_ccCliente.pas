unit frmImpressao_ProcessosOP_ccCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, RxLookup, Vcl.ExtCtrls,
  RXCtrls, iNIFILES, DB, MemDS, DBAccess, MSAccess, ppDB, ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ComObj, Funcoes, ppParameter, DBCtrls,
  CheckLst, Menus, ppDesignLayer, RxToolEdit;

type
  TImpressao_ProcessosOP_ccCliente = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    cModalidade: TRxDBLookupCombo;
    cDataIni: TDateEdit;
    StaticText8: TStaticText;
    cDataFim: TDateEdit;
    StaticText10: TStaticText;
    tFechamento: TMSQuery;
    rContaCorrenteCliente: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText4: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape6: TppShape;
    lCliente: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    pEmpresas: TppDBPipeline;
    pFechamento: TppDBPipeline;
    dstFechamento: TDataSource;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppShape5: TppShape;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText10: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppDBText11: TppDBText;
    ppLabel23: TppLabel;
    ppDBText12: TppDBText;
    ppLabel24: TppLabel;
    ppDBText15: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape8: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    lCustoTotal: TppVariable;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShape9: TppShape;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText16: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppShape10: TppShape;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    lSaldoProcesso: TppVariable;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppShape11: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText17: TppDBText;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppShape13: TppShape;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    lSaldoNF: TppVariable;
    cSaltar: TCheckBox;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    lTotalCustoTotal: TppVariable;
    ppDBCalc8: TppDBCalc;
    lTotalNFVenda: TppDBCalc;
    lTotalSaldoProc: TppVariable;
    lTotalSaldoNF: TppVariable;
    lPeriodo: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    lTotalCustoTotalGeral: TppVariable;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    lTotalSaldoProcGeral: TppVariable;
    lTotalSaldoNFGeral: TppVariable;
    StaticText1: TStaticText;
    cProcesso: TRxDBLookupCombo;
    cZebrado: TCheckBox;
    lFaixa: TppShape;
    cExcel: TCheckBox;
    cSituacao: TRadioGroup;
    cAtivacao: TRadioGroup;
    cDespesas: TCheckBox;
    cClientes: TCheckListBox;
    cPesquisa: TEdit;
    StaticText3: TStaticText;
    PopupMenu1: TPopupMenu;
    SelecionartodososClientes1: TMenuItem;
    DesmarcartodososClientes1: TMenuItem;
    InverterSeleo1: TMenuItem;
    Cancelar1: TMenuItem;
    StaticText4: TStaticText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure lCustoTotalCalc(Sender: TObject; var Value: Variant);
    procedure lSaldoProcessoCalc(Sender: TObject; var Value: Variant);
    procedure lSaldoNFCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cSituacaoClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure SelecionartodososClientes1Click(Sender: TObject);
    procedure DesmarcartodososClientes1Click(Sender: TObject);
    procedure InverterSeleo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_ccCliente: TImpressao_ProcessosOP_ccCliente;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_ccCliente.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_ccCliente.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P06', 'DataIni'    , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P06', 'DataFim'    , cDataFim.Date);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P06', 'Modalidade' , cModalidade.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P06', 'Processo'   , cProcesso.Text);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P06', 'Saltar'     , cSaltar.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P06', 'Zebrado'    , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P06', 'Excel'      , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P06', 'Situacao'   , cSituacao.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P06', 'Despesa'    , cDespesas.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProcessosOP_ccCliente.Release;
      Impressao_ProcessosOP_ccCliente := nil;
end;

procedure TImpressao_ProcessosOP_ccCliente.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(Cliente IS NOT NULL))) ORDER BY Nome');
           Clientes.Open;

           // Seleciona os clientes.
           Clientes.First;
           While not Clientes.Eof do begin
                 cClientes.Items.Add(ClientesNome.AsString);
                 Clientes.Next;
           End;

           ProcessosDOC.SQL.Clear;
//           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Processo IN((SELECT Processo FROM ProcessosFechamento))');
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;
      Screen.Cursor := crDefault;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                     := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date            := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P06', 'DataIni'    , Date);
      cDataFim.Date            := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P06', 'DataFim'    , Date);
      cProcesso.KeyValue       := aINI.ReadString ('IMPRESSAO_PROCESSOS_P06', 'Processo'   , '');
      cModalidade.DisplayValue := aINI.ReadString ('IMPRESSAO_PROCESSOS_P06', 'Modalidade' , '');
      cSaltar.Checked          := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P06', 'Saltar'     , false);
      cZebrado.Checked         := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P06', 'Zebrado'    , false);
      cExcel.Checked           := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P06', 'Excel'      , false);
      cSituacao.ItemIndex      := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P06', 'Situacao'   , 0);
      cDespesas.Checked        := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P06', 'Despesa'    , false);
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_ccCliente.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.ClearValue;
      cModalidade.ClearValue;
end;

procedure TImpressao_ProcessosOP_ccCliente.bImprimirClick(Sender: TObject);
Var
   mClientes: WideString;
   i        : Integer;
begin
      With Dados do begin
           Configuracao.Open;
           If Trim(RemoveCaracter('/','',cDataIni.Text)) = '' then begin
              ShowMessage('É preciso informar a data inicial do período para impressão' );
              cDataIni.SetFocus;
              Abort;
           End;
           If Trim(RemoveCaracter('/','',cDataFim.Text)) = '' then begin
              cDataFim.Date := cDataIni.Date;
           End;

           // Pegando os códigos dos clientes selecionados para impressão.
           mClientes := '';
           For i := 0 to cClientes.Count-1 do begin
               If cClientes.Checked[i] then begin
                  Clientes.Locate('Nome', cClientes.Items[i] , [loCaseInsensitive]);
                  mClientes := mClientes + ClientesCodigo.AsString + ',';
               End;
           End;
           mClientes := Copy(mClientes, 1, Length(mClientes)-1);

           // Processos Fechados.
           tFechamento.SQL.Clear;
           If (cSituacao.ItemIndex = 0) or (cSituacao.ItemIndex = 2) then begin
              tFechamento.SQL.Add('SELECT Processo,');
              tFechamento.SQL.Add('       Data,');
              tFechamento.SQL.Add('       (SELECT SUM(Valor_ME) FROM ContratoCambioItens WHERE(ContratoCambioItens.Processo = ProcessosFechamento.Processo) ) AS Total_CambioME,');
              tFechamento.SQL.Add('       (SELECT SUM(Valor_ME * Taxa_Cambial) FROM ContratoCambioItens WHERE(ContratoCambioItens.Processo = ProcessosFechamento.Processo) ) AS Total_CambioReal,');
              tFechamento.SQL.Add('       Desconto_Adicional,');
              tFechamento.SQL.Add('       Desconto_Operacional,');
              tFechamento.SQL.Add('       Saldo,');
              tFechamento.SQL.Add('       Total_Impostos,');
              tFechamento.SQL.Add('       Total_Notas,');
              tFechamento.SQL.Add('       Margem_Lucro,');
              tFechamento.SQL.Add('        ISNULL((SELECT Valor_FaturaME FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)), 0) AS Valor_FaturaME,');
              tFechamento.SQL.Add('       (ISNULL((SELECT Valor_FaturaME FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)),0)-ISNULL((SELECT SUM(Valor_ME)');
              tFechamento.SQL.Add('                FROM ContratoCambioItens WHERE(ContratoCambioItens.Processo = ProcessosFechamento.Processo)),0)) AS Cambio_Saldo,');
              tFechamento.SQL.Add('       ISNULL((SELECT SUM(Valor_Fechamento) FROM ProcessosFechamentoItens WHERE(Fechamento = Codigo)), 0) AS Total_Despesas,');
              tFechamento.SQL.Add('       ISNULL((SELECT SUM(PB.Valor) FROM PagarReceberBaixas PB, PagarReceber PR WHERE (PB.Numero = PR.Numero)');
              tFechamento.SQL.Add('                                                                                  AND (PR.Processo = ProcessosFechamento.Processo)');
              If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then
                 tFechamento.SQL.Add('                                                                                  AND ((SELECT Fechamento_Processo FROM ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) = 1))')
              else
                 tFechamento.SQL.Add('                                                                                  AND ((SELECT Fechamento_Processo FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) = 1))');
              tFechamento.SQL.Add('       ,0) AS Pgto_Cliente,');
              tFechamento.SQL.Add('       (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)) AS Cliente_Codigo,');
              tFechamento.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)))) AS Cliente_Nome,');
              tFechamento.SQL.Add('       (ISNULL(Margem_LucroValor,0) + ISNULL(Desconto_ComercialValor,0) + ISNULL(Desconto_AdicionalValor,0)) AS Total_Financeiro');
              tFechamento.SQL.Add('FROM   ProcessosFechamento');
              tFechamento.SQL.Add('WHERE(Data BETWEEN :pDataIni AND :pDataFim)');

              If Trim(cProcesso.Text) <> '' then begin
                 tFechamento.SQL.Add(' AND (Processo = :pProcesso)');
                 tFechamento.ParamByName('pProcesso').AsString := cProcesso.Text;
              End;
              If Trim(cModalidade.Text) <> '' then begin
                 tFechamento.SQL.Add(' AND (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)) = :pModalidade');
                 tFechamento.ParamByName('pModalidade').AsInteger := TiposProcessoCodigo.AsInteger;
              End;
              If Trim(mClientes) <> '' then begin
                 tFechamento.SQL.Add(' AND (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)) IN('+mClientes+')');
              End;
           End;

           If cSituacao.ItemIndex = 2 then begin
              tFechamento.SQL.Add('UNION ALL');
           End;

           // Processos Abertos.
           If (cSituacao.ItemIndex = 1) or (cSituacao.ItemIndex = 2) then begin
              tFechamento.SQL.Add('SELECT Processo,');
              tFechamento.SQL.Add('       Processo_Fechamento AS Data,');
              tFechamento.SQL.Add('       (SELECT SUM(Valor_ME) FROM ContratoCambioItens WHERE(ContratoCambioItens.Processo = ProcessosDocumentos.Processo) ) AS Total_CambioME,');
              tFechamento.SQL.Add('       (SELECT SUM(Valor_ME * Taxa_Cambial) FROM ContratoCambioItens WHERE(ContratoCambioItens.Processo = ProcessosDocumentos.Processo) ) AS Total_CambioReal,');
              tFechamento.SQL.Add('       Desconto_Adicional,');
              tFechamento.SQL.Add('       Desconto_Operacional,');
              tFechamento.SQL.Add('       0 AS Saldo,');
              tFechamento.SQL.Add('       0 AS Total_Impostos,');
              tFechamento.SQL.Add('       0 AS Total_Notas,');
              tFechamento.SQL.Add('       Margem_Lucro,');
              tFechamento.SQL.Add('       Valor_FaturaME,');
              tFechamento.SQL.Add('       ISNULL(Valor_FaturaME, 0) - ISNULL((SELECT SUM(Valor_ME) FROM ContratoCambioItens WHERE(ContratoCambioItens.Processo = ProcessosDocumentos.Processo)),0) AS Cambio_Saldo,');

              If cDespesas.Checked = true then begin
                 //tFechamento.SQL.Add('ISNULL((SELECT SUM(Valor_Total+Desconto) FROM PagarReceber PR WHERE(PR.Processo = ProcessosDocumentos.Processo)');
                 tFechamento.SQL.Add('ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE(PR.Processo = ProcessosDocumentos.Processo)');
                 tFechamento.SQL.Add('                                                      AND (Tipo = ''P'')');
                 tFechamento.SQL.Add('                                                      AND ((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE(PB.Numero = PR.Numero)) > 0)');
                 If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then
                    tFechamento.SQL.Add('                                                      AND ((SELECT ISNULL(Cambio, 0) FROM ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) <> 1)')
                 else
                    tFechamento.SQL.Add('                                                      AND ((SELECT ISNULL(Cambio, 0) FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) <> 1)');
                 tFechamento.SQL.Add('       ), 0) AS Total_Despesas,');
              end else
                 tFechamento.SQL.Add('    0 AS Total_Despesas,');

              tFechamento.SQL.Add('       ISNULL((SELECT SUM(PB.Valor) FROM PagarReceberBaixas PB, PagarReceber PR WHERE (PB.Numero = PR.Numero)');
              tFechamento.SQL.Add('                                                                                  AND (PR.Processo = ProcessosDocumentos.Processo)');

              If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then
                 tFechamento.SQL.Add('                                                                                  AND ((SELECT Fechamento_Processo FROM ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) = 1))')
              else
                 tFechamento.SQL.Add('                                                                                  AND ((SELECT Fechamento_Processo FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) = 1))');

              tFechamento.SQL.Add('       ,0) AS Pgto_Cliente,');
              tFechamento.SQL.Add('       Cliente AS Cliente_Codigo,');
              tFechamento.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)) AS Cliente_Nome,');
              tFechamento.SQL.Add('       0 AS Total_Financeiro');
              tFechamento.SQL.Add('FROM   ProcessosDocumentos');
              tFechamento.SQL.Add('WHERE(Processo_Abertura BETWEEN :pDataIni AND :pDataFim) AND Processo_Fechamento IS NULL ');

              If Trim(cProcesso.Text) <> '' then begin
                 tFechamento.SQL.Add(' AND (Processo = :pProcesso)');
                 tFechamento.ParamByName('pProcesso').AsString := cProcesso.Text;
              End;
              If Trim(cModalidade.Text) <> '' then begin
                 tFechamento.SQL.Add(' AND Modalidade_Importacao = :pModalidade');
                 tFechamento.ParamByName('pModalidade').AsInteger := TiposProcessoCodigo.AsInteger;
              End;
              If Trim(mClientes) <> '' then begin
                 tFechamento.SQL.Add(' AND Cliente IN ('+mClientes+')');
              End;
              If cAtivacao.ItemIndex = 0 then begin
                 tFechamento.SQL.Add(' AND (ISNULL(Desativado,0) <> 1)');
              End;
              If cAtivacao.ItemIndex = 1 then begin
                 tFechamento.SQL.Add(' AND (ISNULL(Desativado, 0) = 1)');
              End;
           End;
           tFechamento.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tFechamento.ParamByName('pDataFim').AsDate := cDataFim.Date;

           tFechamento.SQL.Add('ORDER BY Cliente_Nome, Processo, Data');
           //tFechamento.SQL.SavetoFile('c:\temp\Conta Corrente.SQL');
           tFechamento.Open;

           rContaCorrenteCliente.Groups[0].NewPage := cSaltar.Checked;
           lPeriodo.Text := 'Período de ' + cDataIni.Text + ' á ' + cDataFim.Text;

           lTotalCustoTotal.Value      := 0;
           lTotalCustoTotalGeral.Value := 0;
           lTotalSaldoProc.Value       := 0;
           lTotalSaldoProcGeral.Value  := 0;
           lTotalSaldoNF.Value         := 0;
           lTotalSaldoNFGeral.Value    := 0;
           lFaixa.Visible              := False;

           If cExcel.Checked = false then begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              rContaCorrenteCliente.Print;
              rContaCorrenteCliente.FreeOnRelease;
              rContaCorrenteCliente.Reset;
           end else begin
              ExportaEXCEL;
           End;
      End;
end;

procedure TImpressao_ProcessosOP_ccCliente.lCustoTotalCalc(Sender: TObject; var Value: Variant);
begin
     Value :=  (tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency +
               tFechamento.FieldByName('Total_Impostos').AsCurrency) + tFechamento.FieldByName('Total_Financeiro').AsCurrency;
               
     lTotalCustoTotal.Value      := lTotalCustoTotal.Value + Value;
     lTotalCustoTotalGeral.Value := lTotalCustoTotalGeral.Value + Value;
end;

procedure TImpressao_ProcessosOP_ccCliente.lSaldoProcessoCalc(Sender: TObject; var Value: Variant);
begin
     Value := lCustoTotal.Value - tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
     lTotalSaldoProc.Value      := lTotalSaldoProc.Value + Value;
     lTotalSaldoProcGeral.Value := lTotalSaldoProcGeral.Value + Value;
end;

procedure TImpressao_ProcessosOP_ccCliente.lSaldoNFCalc(Sender: TObject;var Value: Variant);
begin
     Value :=  tFechamento.FieldByName('Total_Notas').AsCurrency - tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
     lTotalSaldoNF.Value      := lTotalSaldoNF.Value + Value;
     lTotalSaldoNFGeral.Value := lTotalSaldoNFGeral.Value + Value;
end;

procedure TImpressao_ProcessosOP_ccCliente.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
      lTotalCustoTotal.Value := 0;
      lTotalSaldoProc.Value  := 0;
      lTotalSaldoNF.Value    := 0;
end;

procedure TImpressao_ProcessosOP_ccCliente.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_ccCliente.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_ccCliente.ExportaEXCEL;
var
   mPlanilha     : Variant;
   mLinha        : Integer;
   mTotalClienteC: Real;
   mTotalClienteD: Real;
   mTotalClienteE: Real;
   mTotalClienteF: Real;
   mTotalClienteG: Real;
   mTotalClienteH: Real;
   mTotalClienteI: Real;
   mTotalClienteM: Real;
   mTotalClienteN: Real;
   mTotalClienteO: Real;
   mTotalClienteP: Real;
   mTotalClienteQ: Real;
   mTotalC       : Real;
   mTotalD       : Real;
   mTotalE       : Real;
   mTotalF       : Real;
   mTotalG       : Real;
   mTotalH       : Real;
   mTotalI       : Real;
   mTotalM       : Real;
   mTotalN       : Real;
   mTotalO       : Real;
   mTotalP       : Real;
   mTotalQ       : Real;
   mZebra        : Boolean;
   mCliente      : Integer;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tFechamento.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','Q3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','Q3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','Q3'].Font.Bold         := true;
       mPlanilha.Range['A3','Q3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','Q3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','Q3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','Q3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'DATA FECH.';
       mPlanilha.Cells[3,03] := 'VALOR FATURA (ME)';
       mPlanilha.Cells[3,04] := 'VALOR CÂMBIO (ME)';
       mPlanilha.Cells[3,05] := 'VALOR CÂMBIO (R$)';
       mPlanilha.Cells[3,06] := 'SALDO CÂMBIO (ME)';
       mPlanilha.Cells[3,07] := 'NACIONALIZAÇÃO (R$)';
       mPlanilha.Cells[3,08] := 'IMPOSTOS (R$)';
       mPlanilha.Cells[3,09] := 'NEGOCIAÇÃO (R$)';
       mPlanilha.Cells[3,10] := 'ML %';
       mPlanilha.Cells[3,11] := 'DC %';
       mPlanilha.Cells[3,12] := 'DA %';
       mPlanilha.Cells[3,13] := 'CUSTO TOTAL (R$)';
       mPlanilha.Cells[3,14] := 'PGTO CLIENTE (R$)';
       mPlanilha.Cells[3,15] := 'SALDO PROCESSO (R$)';
       mPlanilha.Cells[3,16] := 'NF VENDA (R$)';
       mPlanilha.Cells[3,17] := 'SALDO NF (R$)';

       mPlanilha.Range['A3','Q3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','Q3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','Q3'].Font.Size           := 8;
       
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,01].Columns.ColumnWidth := 15;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,02].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,03].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,04].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,05].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,06].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,07].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,08].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,09].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,10].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,11].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,12].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,13].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,14].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,15].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,16].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,17].Columns.AutoFit;

       mTotalC := 0;
       mTotalD := 0;
       mTotalE := 0;
       mTotalF := 0;
       mTotalG := 0;
       mTotalH := 0;
       mTotalI := 0;
       mTotalM := 0;
       mTotalN := 0;
       mTotalO := 0;
       mTotalP := 0;
       mTotalQ := 0;

       mTotalClienteC := 0;
       mTotalClienteD := 0;
       mTotalClienteE := 0;
       mTotalClienteF := 0;
       mTotalClienteG := 0;
       mTotalClienteH := 0;
       mTotalClienteI := 0;
       mTotalClienteM := 0;
       mTotalClienteN := 0;
       mTotalClienteO := 0;
       mTotalClienteP := 0;
       mTotalClienteQ := 0;

       mLinha   := 4;
       mZebra   := false;
       mCliente := tFechamento.FieldByName('Cliente_Codigo').AsInteger;

       mPlanilha.Cells[mLinha,01] := tFechamento.FieldByName('Cliente_Nome').AsString;
       mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color      := $00FFB3B3;
       mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Mergecells          := True;
       mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].HorizontalAlignment := 3;
       Inc(mLinha);

       While (not tFechamento.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Size := 8;
             mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.LineStyle := 1;
             mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
             mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Color     := clGray;

             mPlanilha.Cells[mLinha,01] := tFechamento.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := tFechamento.FieldByName('Data').Value;
             mPlanilha.Cells[mLinha,03] := tFechamento.FieldByName('Valor_FaturaME').AsCurrency;
             mPlanilha.Cells[mLinha,04] := tFechamento.FieldByName('Total_CambioME').AsCurrency;
             mPlanilha.Cells[mLinha,05] := tFechamento.FieldByName('Total_CambioReal').AsCurrency;
             mPlanilha.Cells[mLinha,06] := tFechamento.FieldByName('Cambio_Saldo').AsCurrency;
             mPlanilha.Cells[mLinha,07] := tFechamento.FieldByName('Total_Despesas').AsCurrency;
             mPlanilha.Cells[mLinha,08] := tFechamento.FieldByName('Total_Impostos').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tFechamento.FieldByName('Total_Financeiro').AsCurrency;
             mPlanilha.Cells[mLinha,10] := tFechamento.FieldByName('Margem_Lucro').AsFloat;
             mPlanilha.Cells[mLinha,11] := tFechamento.FieldByName('Desconto_Operacional').AsFloat;
             mPlanilha.Cells[mLinha,12] := tFechamento.FieldByName('Desconto_Adicional').AsFloat;
             mPlanilha.Cells[mLinha,13] := tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency + tFechamento.FieldByName('Total_Impostos').AsCurrency + tFechamento.FieldByName('Total_Financeiro').AsCurrency;

             mPlanilha.Cells[mLinha,14] := tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
             mPlanilha.Cells[mLinha,15] :=(tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency + tFechamento.FieldByName('Total_Impostos').AsCurrency + tFechamento.FieldByName('Saldo').AsCurrency) - tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
             mPlanilha.Cells[mLinha,16] := tFechamento.FieldByName('Total_Notas').AsCurrency;
             mPlanilha.Cells[mLinha,17] := tFechamento.FieldByName('Total_Notas').AsCurrency - tFechamento.FieldByName('Pgto_Cliente').AsCurrency;

             mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotalC := mTotalC + tFechamento.FieldByName('Valor_FaturaME').AsCurrency;
             mTotalD := mTotalD + tFechamento.FieldByName('Total_CambioME').AsCurrency;
             mTotalE := mTotalE + tFechamento.FieldByName('Total_CambioReal').AsCurrency;
             mTotalF := mTotalF + tFechamento.FieldByName('Cambio_Saldo').AsCurrency;
             mTotalG := mTotalG + tFechamento.FieldByName('Total_Despesas').AsCurrency;
             mTotalH := mTotalH + tFechamento.FieldByName('Total_Impostos').AsCurrency;
             mTotalI := mTotalI + tFechamento.FieldByName('Total_Financeiro').AsCurrency;
             mTotalM := mTotalM + tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency + tFechamento.FieldByName('Total_Impostos').AsCurrency + tFechamento.FieldByName('Saldo').AsCurrency;
             mTotalN := mTotalN + tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
             mTotalO := mTotalO + tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency + tFechamento.FieldByName('Total_Impostos').AsCurrency + tFechamento.FieldByName('Saldo').AsCurrency;
             mTotalP := mTotalP + tFechamento.FieldByName('Total_Notas').AsCurrency;
             mTotalQ := mTotalQ + tFechamento.FieldByName('Total_Notas').AsCurrency - tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
             
             mTotalClienteC := mTotalClienteC + tFechamento.FieldByName('Valor_FaturaME').AsCurrency;
             mTotalClienteD := mTotalClienteD + tFechamento.FieldByName('Total_CambioME').AsCurrency;
             mTotalClienteE := mTotalClienteE + tFechamento.FieldByName('Total_CambioReal').AsCurrency;
             mTotalClienteF := mTotalClienteF + tFechamento.FieldByName('Cambio_Saldo').AsCurrency;
             mTotalClienteG := mTotalClienteG + tFechamento.FieldByName('Total_Despesas').AsCurrency;
             mTotalClienteH := mTotalClienteH + tFechamento.FieldByName('Total_Impostos').AsCurrency;
             mTotalClienteI := mTotalClienteI + tFechamento.FieldByName('Total_Financeiro').AsCurrency;
             mTotalClienteM := mTotalClienteM + tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency + tFechamento.FieldByName('Total_Impostos').AsCurrency + tFechamento.FieldByName('Saldo').AsCurrency;
             mTotalClienteN := mTotalClienteN + tFechamento.FieldByName('Pgto_Cliente').AsCurrency;
             mTotalClienteO := mTotalClienteO + tFechamento.FieldByName('Total_CambioReal').AsCurrency + tFechamento.FieldByName('Total_Despesas').AsCurrency + tFechamento.FieldByName('Total_Impostos').AsCurrency + tFechamento.FieldByName('Saldo').AsCurrency;
             mTotalClienteP := mTotalClienteP + tFechamento.FieldByName('Total_Notas').AsCurrency;
             mTotalClienteQ := mTotalClienteQ + tFechamento.FieldByName('Total_Notas').AsCurrency - tFechamento.FieldByName('Pgto_Cliente').AsCurrency;

             mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tFechamento.Next;

             If (mCliente <> tFechamento.FieldByName('Cliente_Codigo').AsInteger) or (tFechamento.Eof) then begin
                Inc(mLinha);
                
                mPlanilha.Cells[mLinha,03] := mTotalClienteC;
                mPlanilha.Cells[mLinha,04] := mTotalClienteD;
                mPlanilha.Cells[mLinha,05] := mTotalClienteE;
                mPlanilha.Cells[mLinha,06] := mTotalClienteF;
                mPlanilha.Cells[mLinha,07] := mTotalClienteG;
                mPlanilha.Cells[mLinha,08] := mTotalClienteH;
                mPlanilha.Cells[mLinha,09] := mTotalClienteI;
                mPlanilha.Cells[mLinha,13] := mTotalClienteM;
                mPlanilha.Cells[mLinha,14] := mTotalClienteN;
                mPlanilha.Cells[mLinha,15] := mTotalClienteO;
                mPlanilha.Cells[mLinha,16] := mTotalClienteP;
                mPlanilha.Cells[mLinha,17] := mTotalClienteQ;

                mPlanilha.Cells[mLinha,02] := 'TOTAIS';
                mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
                mPlanilha.Range['C3','Q3'].VerticalAlignment   := 2;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';

                mTotalClienteC := 0;
                mTotalClienteD := 0;
                mTotalClienteE := 0;
                mTotalClienteF := 0;
                mTotalClienteG := 0;
                mTotalClienteH := 0;
                mTotalClienteI := 0;
                mTotalClienteM := 0;
                mTotalClienteN := 0;
                mTotalClienteO := 0;
                mTotalClienteP := 0;
                mTotalClienteQ := 0;

                Inc(mLinha,2);
                If not tFechamento.Eof then begin
                   mCliente := tFechamento.FieldByName('Cliente_Codigo').AsInteger;
                   mPlanilha.Cells[mLinha,01] := tFechamento.FieldByName('Cliente_Nome').AsString;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color      := $00FFB3B3;
                   mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Mergecells          := True;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].HorizontalAlignment := 3;
                End;
             End;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Cells[mLinha,02] := 'T.GERAL';
       mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
       mPlanilha.Range['C3','Q3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,03] := mTotalC;
       mPlanilha.Cells[mLinha,04] := mTotalD;
       mPlanilha.Cells[mLinha,05] := mTotalE;
       mPlanilha.Cells[mLinha,06] := mTotalF;
       mPlanilha.Cells[mLinha,07] := mTotalG;
       mPlanilha.Cells[mLinha,08] := mTotalH;
       mPlanilha.Cells[mLinha,09] := mTotalI;
       mPlanilha.Cells[mLinha,13] := mTotalM;
       mPlanilha.Cells[mLinha,14] := mTotalN;
       mPlanilha.Cells[mLinha,15] := mTotalO;
       mPlanilha.Cells[mLinha,16] := mTotalP;
       mPlanilha.Cells[mLinha,17] := mTotalQ;

       mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
       mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Weight    := 2; 
       mPlanilha.Range['B'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','Q1'].Mergecells := True;
       mPlanilha.Range['A1','Q1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Conta corrente de Clientes'+cDataIni.Text + ' á ' + cDataFim.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','Q2'].Mergecells := True;
       mPlanilha.Range['A2','Q2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_ProcessosOP_ccCliente.cSituacaoClick(Sender: TObject);
begin
      cAtivacao.Enabled := cSituacao.ItemIndex <> 0;
end;

procedure TImpressao_ProcessosOP_ccCliente.cPesquisaChange(Sender: TObject);
begin
     cClientes.Perform(LB_SELECTSTRING, 0, LongInt(PChar(cPesquisa.Text)));
end;

procedure TImpressao_ProcessosOP_ccCliente.SelecionartodososClientes1Click(Sender: TObject);
var
   i: Integer;
begin
     For i := 0 to cClientes.Count-1 do begin
         cClientes.Checked[i] := true;
     End;
end;

procedure TImpressao_ProcessosOP_ccCliente.DesmarcartodososClientes1Click(Sender: TObject);
var
   i: Integer;
begin
     For i := 0 to cClientes.Count-1 do begin
         cClientes.Checked[i] := false;
     End;
end;

procedure TImpressao_ProcessosOP_ccCliente.InverterSeleo1Click(Sender: TObject);
var
   i: Integer;
begin
     For i := 0 to cClientes.Count-1 do begin
         cClientes.Checked[i] := not cClientes.Checked[i];
     End;
end;

end.
