unit frmFinanceiro_Duplicatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Mask, Buttons, RXDBCtrl, DB,
  DBAccess, MSAccess, Funcoes, DateUtils, ppDBPipe, ppParameter, ppBands, ppCtrls, ppMemo, ppPrnabl, system.UITypes, ppReport, ppVar, MaskUtils, ppRegion, RxCurrEdit, RxToolEdit, ppDesignLayer, ppDB, ppStrtch,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TFinanceiro_Duplicatas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    lNome: TStaticText;
    StaticText11: TStaticText;
    lFormaPgto: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    StaticText7: TStaticText;
    cCliente: TDBLookupComboBox;
    lCampo: TLabel;
    cFormaPgto: TDBLookupComboBox;
    StaticText6: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    cDuplicata1: TMaskEdit;
    cData_Vencimento1: TDateEdit;
    cValor1: TCurrencyEdit;
    cDesconto1: TCurrencyEdit;
    cTotal1: TCurrencyEdit;
    cDuplicata2: TMaskEdit;
    cData_Vencimento2: TDateEdit;
    cValor2: TCurrencyEdit;
    cDesconto2: TCurrencyEdit;
    cTotal2: TCurrencyEdit;
    cDuplicata3: TMaskEdit;
    cData_Vencimento3: TDateEdit;
    cValor3: TCurrencyEdit;
    cDesconto3: TCurrencyEdit;
    cTotal3: TCurrencyEdit;
    cDuplicata4: TMaskEdit;
    cData_Vencimento4: TDateEdit;
    cValor4: TCurrencyEdit;
    cDesconto4: TCurrencyEdit;
    cTotal4: TCurrencyEdit;
    cDuplicata5: TMaskEdit;
    cData_Vencimento5: TDateEdit;
    cValor5: TCurrencyEdit;
    cDesconto5: TCurrencyEdit;
    cTotal5: TCurrencyEdit;
    cDuplicata6: TMaskEdit;
    cData_Vencimento6: TDateEdit;
    cValor6: TCurrencyEdit;
    cDesconto6: TCurrencyEdit;
    cTotal6: TCurrencyEdit;
    cDuplicata7: TMaskEdit;
    cData_Vencimento7: TDateEdit;
    cValor7: TCurrencyEdit;
    cDesconto7: TCurrencyEdit;
    cTotal7: TCurrencyEdit;
    cDuplicata8: TMaskEdit;
    cData_Vencimento8: TDateEdit;
    cValor8: TCurrencyEdit;
    cDesconto8: TCurrencyEdit;
    cTotal8: TCurrencyEdit;
    cDuplicata9: TMaskEdit;
    cData_Vencimento9: TDateEdit;
    cValor9: TCurrencyEdit;
    cDesconto9: TCurrencyEdit;
    cTotal9: TCurrencyEdit;
    cDuplicata10: TMaskEdit;
    cData_Vencimento10: TDateEdit;
    cValor10: TCurrencyEdit;
    cDesconto10: TCurrencyEdit;
    cTotal10: TCurrencyEdit;
    cDuplicata11: TMaskEdit;
    cData_Vencimento11: TDateEdit;
    cValor11: TCurrencyEdit;
    cDesconto11: TCurrencyEdit;
    cTotal11: TCurrencyEdit;
    cDuplicata12: TMaskEdit;
    cData_Vencimento12: TDateEdit;
    cValor12: TCurrencyEdit;
    cDesconto12: TCurrencyEdit;
    cTotal12: TCurrencyEdit;
    cNota: TDBEdit;
    cDataNota: TDBEdit;
    cFatura: TDBEdit;
    cDataEmissao: TDBDateEdit;
    cValorTotal: TDBEdit;
    cVencimento1: TMaskEdit;
    cVencimento2: TMaskEdit;
    cVencimento3: TMaskEdit;
    cVencimento4: TMaskEdit;
    cVencimento5: TMaskEdit;
    cVencimento6: TMaskEdit;
    cVencimento7: TMaskEdit;
    cVencimento8: TMaskEdit;
    cVencimento9: TMaskEdit;
    cVencimento10: TMaskEdit;
    cVencimento11: TMaskEdit;
    cVencimento12: TMaskEdit;
    tNumero: TMSQuery;
    tNumeroNumero: TLargeintField;
    StaticText23: TStaticText;
    cObservacao: TDBMemo;
    StaticText24: TStaticText;
    cProcesso: TDBLookupComboBox;
    cCentroCusto: TDBLookupComboBox;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    cTipo: TComboBox;
    cClassificacao: TDBLookupComboBox;
    StaticText27: TStaticText;
    tFatura: TMSQuery;
    tDespesas: TMSQuery;
    tEntrada: TMSQuery;
    tItens: TMSQuery;
    cParcela1: TMaskEdit;
    cParcela2: TMaskEdit;
    cParcela3: TMaskEdit;
    cParcela4: TMaskEdit;
    cParcela5: TMaskEdit;
    cParcela6: TMaskEdit;
    cParcela7: TMaskEdit;
    cParcela8: TMaskEdit;
    cParcela9: TMaskEdit;
    cParcela10: TMaskEdit;
    cParcela11: TMaskEdit;
    cParcela12: TMaskEdit;
    cData_Desconto1: TDateEdit;
    cData_Desconto2: TDateEdit;
    cData_Desconto3: TDateEdit;
    cData_Desconto4: TDateEdit;
    cData_Desconto6: TDateEdit;
    cData_Desconto7: TDateEdit;
    cData_Desconto8: TDateEdit;
    cData_Desconto9: TDateEdit;
    cData_Desconto10: TDateEdit;
    cData_Desconto11: TDateEdit;
    cData_Desconto12: TDateEdit;
    cData_Desconto5: TDateEdit;
    lBanco: TStaticText;
    cBanco: TDBLookupComboBox;
    tRateios: TMSQuery;
    StaticText8: TStaticText;
    tBaixas: TMSQuery;
    lBaixada: TStaticText;
    bImprimir: TBitBtn;
    rDuplicataLivre: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel37: TppLabel;
    ppShape24: TppShape;
    ppLine16: TppLine;
    ppShape25: TppShape;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel41: TppLabel;
    ppShape26: TppShape;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel42: TppLabel;
    ppLine21: TppLine;
    ppLabel43: TppLabel;
    ppShape27: TppShape;
    ppLine22: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape28: TppShape;
    ppLabel47: TppLabel;
    ppLabel55: TppLabel;
    ppDBText30: TppDBText;
    lEnderecoCliente: TppLabel;
    ppLabel63: TppLabel;
    ppDBText31: TppDBText;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDBText32: TppDBText;
    ppLabel67: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText35: TppDBText;
    ppLabel70: TppLabel;
    ppDBText36: TppDBText;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppLabel71: TppLabel;
    cTexto: TppMemo;
    ppShape31: TppShape;
    ppDBText38: TppDBText;
    ppDBImage1: TppDBImage;
    lEndereco1: TppLabel;
    lEndereco2: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText39: TppDBText;
    lInscricao: TppDBText;
    ppLabel77: TppLabel;
    ppDBText42: TppDBText;
    lTelefones: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine35: TppLine;
    ppLabel83: TppLabel;
    ppDBText46: TppDBText;
    lExtenso: TppMemo;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppParameterList2: TppParameterList;
    ppEmpresas: TppDBPipeline;
    ppClientes: TppDBPipeline;
    lNumero: TppLabel;
    lValor: TppLabel;
    lNumeroDupl: TppLabel;
    lValorDupl: TppLabel;
    lVencimentoDupl: TppLabel;
    lDesconto: TppLabel;
    lDescontoData: TppLabel;
    lParcela: TppLabel;
    lProcesso: TppLabel;
    lDataEmissao: TppLabel;
    pRegiao: TppRegion;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel84: TppLabel;
    ppShape34: TppShape;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppShape35: TppShape;
    ppLabel87: TppLabel;
    ppLine36: TppLine;
    ppLabel88: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel89: TppLabel;
    ppLine39: TppLine;
    ppLabel90: TppLabel;
    ppLine40: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLine41: TppLine;
    ppLabel93: TppLabel;
    ppShape36: TppShape;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLine42: TppLine;
    ppLabel96: TppLabel;
    ppLine43: TppLine;
    ppLabel97: TppLabel;
    ppLine44: TppLine;
    ppLabel98: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel99: TppLabel;
    lDataExtenso: TppLabel;
    ppDBText49: TppDBText;
    lCPFCNPJ: TppDBText;
    lValorExtenso: TppMemo;
    lVencimentoDia: TppLabel;
    lVencimentoMes: TppLabel;
    lVencimentoAno: TppLabel;
    ppLabel104: TppLabel;
    ppDBText51: TppDBText;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    lPagavelEm: TppLabel;
    lLinha: TppLine;
    lValorPromissoria: TppVariable;
    lNumeroPromissoria: TppVariable;
    StaticText9: TStaticText;
    cClass1: TDBLookupComboBox;
    cClass2: TDBLookupComboBox;
    cClass3: TDBLookupComboBox;
    cClass4: TDBLookupComboBox;
    cClass5: TDBLookupComboBox;
    cClass6: TDBLookupComboBox;
    cClass7: TDBLookupComboBox;
    cClass8: TDBLookupComboBox;
    cClass9: TDBLookupComboBox;
    cClass10: TDBLookupComboBox;
    cClass11: TDBLookupComboBox;
    cClass12: TDBLookupComboBox;
    iBaixa1: TImage;
    iBaixa2: TImage;
    iBaixa3: TImage;
    iBaixa4: TImage;
    iBaixa5: TImage;
    iBaixa6: TImage;
    iBaixa7: TImage;
    iBaixa8: TImage;
    iBaixa9: TImage;
    iBaixa10: TImage;
    iBaixa11: TImage;
    iBaixa12: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure cNotaExit(Sender: TObject);
    procedure Parcelas;
    procedure cFormaPgtoClick(Sender: TObject);
    procedure ZeraDuplicata;
    procedure CarregaDuplicatas;
    procedure cValorTotalChange(Sender: TObject);
    procedure cValor1Change(Sender: TObject);
    procedure SomaDuplicata;
    procedure cValor2Change(Sender: TObject);
    procedure cValor3Change(Sender: TObject);
    procedure cValor4Change(Sender: TObject);
    procedure cValor5Change(Sender: TObject);
    procedure cValor6Change(Sender: TObject);
    procedure cValor7Change(Sender: TObject);
    procedure cValor8Change(Sender: TObject);
    procedure cValor9Change(Sender: TObject);
    procedure cValor10Change(Sender: TObject);
    procedure cValor11Change(Sender: TObject);
    procedure cValor12Change(Sender: TObject);
    procedure cDesconto1Change(Sender: TObject);
    procedure cDesconto2Change(Sender: TObject);
    procedure cDesconto3Change(Sender: TObject);
    procedure cDesconto4Change(Sender: TObject);
    procedure cDesconto5Change(Sender: TObject);
    procedure cDesconto6Change(Sender: TObject);
    procedure cDesconto7Change(Sender: TObject);
    procedure cDesconto8Change(Sender: TObject);
    procedure cDesconto9Change(Sender: TObject);
    procedure cDesconto10Change(Sender: TObject);
    procedure cDesconto11Change(Sender: TObject);
    procedure cDesconto12Change(Sender: TObject);
    procedure cTipoChange(Sender: TObject);
    procedure cTipoExit(Sender: TObject);
    procedure GeraDuplicata(Duplicata:Integer; Tipo:Integer; Dias:Integer; Subsequente: Boolean; Classificacao: String);
    procedure bPesquisaClick(Sender: TObject);
    procedure cFaturaChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mParcelas       : Integer;
    mFatura         : Integer;
    mClassificacao1 : String;
    mClassificacao2 : String;
    mClassificacao3 : String;
    mClassificacao4 : String;
    mClassificacao5 : String;
    mClassificacao6 : String;
    mClassificacao7 : String;
    mClassificacao8 : String;
    mClassificacao9 : String;
    mClassificacao10: String;
    mClassificacao11: String;
    mClassificacao12: String;
    mTipo           : String;
    mLetra          : Integer;
    mDupl           : Integer;
    mPesquisa       : String;
  end;

var
  Financeiro_Duplicatas: TFinanceiro_Duplicatas;

implementation

uses frmDMFiscal, frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_Duplicatas.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFinanceiro_Duplicatas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, dmFiscal, nil, nil);
     LimpaMemoria;
     Financeiro_Duplicatas.Release;
     Financeiro_Duplicatas := nil;
end;

procedure TFinanceiro_Duplicatas.FormShow(Sender: TObject);
begin
       Screen.Cursor := crSQLWait;
       With Dados, dmFiscal do begin
            Fatura.SQL.Clear;
            Fatura.SQL.Add('SELECT * FROM Fatura ORDER BY Fatura');
            Fatura.Open;

            Duplicatas.SQL.Clear;
            //Duplicatas.SQL.Add('SELECT * FROM Duplicatas ORDER BY Duplicata');
            Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE Fatura = :pFatura ORDER BY Duplicata');
            Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
            Duplicatas.Open;

            Clientes.SQL.Clear;
            Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
            Clientes.Open;

            ModalidadesPgto.SQL.Clear;
            ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao');
            ModalidadesPgto.Open;

            Notas.SQL.Clear;
            Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = 1)');
            Notas.Open;

            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
            Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;

            ProcessosDOC.SQL.Clear;
            ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
            ProcessosDOC.Open;

            INCOTERMS.SQL.Clear;
            INCOTERMS.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
            INCOTERMS.Open;

            CentroCusto.SQL.Clear;
            CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
            CentroCusto.Open;

            ClassificacaoFinanceira.SQL.Clear;
            ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE (Tipo = :pTipo) AND (Desativada <> 1) ORDER BY Descricao');
            ClassificacaoFinanceira.ParamByName('pTipo').AsString := 'R';
            ClassificacaoFinanceira.Open;

            ClassificacaoDuplicata.SQL.Clear;
            ClassificacaoDuplicata.SQL.Add('SELECT * FROM ClassificacaoDuplicata');
            ClassificacaoDuplicata.Open;

            Bancos.SQL.Clear;
            Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
            Bancos.Open;

            Configuracao.Open;
       End;
       CarregaDuplicatas;
       Screen.Cursor := crDefault;
end;

procedure TFinanceiro_Duplicatas.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i : Integer;
begin
      cTipo.Enabled := Button = nbInsert;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            dmFiscal.FaturaOrigem_Pedido.Value := false;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cFormaPgto.Enabled := Button = nbInsert;
         If Button = nbInsert then cTipo.SetFocus else cNota.SetFocus;

         // Verifica se há baixas efetuadas para duplicata.
         If Button = nbEdit then begin
            tBaixas.SQL.Clear;
            tBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Forma_TipoDocumento = :pFatura)');
            tBaixas.ParamByName('pFatura').AsString := dmFiscal.FaturaFatura.AsString;
            tBaixas.Open;
            If tBaixas.RecordCount > 0 then begin
               MessageDlg('Para poder modificar os dados da fatura, estorne as baixas efetuadas.', mtInformation, [mbOK], 0);
               Navega.BtnClick(nbCancel);
               Abort;
            End;
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled    := False;
         cNota.Enabled     := true;
         cDataNota.Enabled := true;
         bImprimir.Visible := false;
      End;
      If Button <> nbInsert then CarregaDuplicatas;
end;

procedure TFinanceiro_Duplicatas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
    mLista: String;
    mPost : Boolean;
    mIgual: Boolean;
begin
      With Dados, dmFiscal do begin
           If Button = nbPost then begin
              // Verifica se todos os campos obrigatórios estão preenchidos.
              If FaturaCliente.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'Falta informar o "CLIENTE".', mtError, [mbOK], 0);
                 cCliente.SetFocus;
                 Abort;
              End;
              If FaturaValor_Total.Value <= 0 then begin
                 MessageDlg('Campo invalido!'+#13+#13+'Deve existir um valor total para a fatura.', mtError, [mbOK], 0);
                 cValorTotal.SetFocus;
                 Abort;
              End;
              If (cTipo.ItemIndex = 0) and (FaturaClassificacao.Value = '') then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'Falta informar a "CLASSIFICAÇÃO FINANCEIRA.', mtError, [mbOK], 0);
                 cClassificacao.SetFocus;
                 Abort;
              End;

              // Verifica se existe número de duplicata repetida.
              mIgual := false;
              If (cDuplicata1.Text <> '') and ((cDuplicata1.Text = cDuplicata2.Text ) or (cDuplicata1.Text = cDuplicata3.Text ) or (cDuplicata1.Text = cDuplicata4.Text ) or (cDuplicata1.Text = cDuplicata5.Text) or
                 (cDuplicata1.Text = cDuplicata6.Text ) or (cDuplicata1.Text = cDuplicata7.Text ) or (cDuplicata1.Text = cDuplicata8.Text ) or (cDuplicata1.Text = cDuplicata9.Text) or
                 (cDuplicata1.Text = cDuplicata10.Text) or (cDuplicata1.Text = cDuplicata11.Text) or (cDuplicata1.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata2.Text <> '') and ((cDuplicata2.Text = cDuplicata3.Text ) or (cDuplicata2.Text = cDuplicata4.Text ) or (cDuplicata2.Text = cDuplicata5.Text) or
                 (cDuplicata2.Text = cDuplicata6.Text ) or (cDuplicata2.Text = cDuplicata7.Text ) or (cDuplicata2.Text = cDuplicata8.Text ) or (cDuplicata2.Text = cDuplicata9.Text) or
                 (cDuplicata2.Text = cDuplicata10.Text) or (cDuplicata2.Text = cDuplicata11.Text) or (cDuplicata2.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata3.Text <> '') and ((cDuplicata3.Text = cDuplicata4.Text ) or (cDuplicata3.Text = cDuplicata5.Text)  or
                 (cDuplicata3.Text = cDuplicata6.Text ) or (cDuplicata3.Text = cDuplicata7.Text ) or (cDuplicata3.Text = cDuplicata8.Text ) or (cDuplicata3.Text = cDuplicata9.Text) or
                 (cDuplicata3.Text = cDuplicata10.Text) or (cDuplicata3.Text = cDuplicata11.Text) or (cDuplicata3.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata4.Text <> '') and ((cDuplicata4.Text = cDuplicata5.Text) or
                 (cDuplicata4.Text = cDuplicata6.Text ) or (cDuplicata4.Text = cDuplicata7.Text ) or (cDuplicata4.Text = cDuplicata8.Text ) or (cDuplicata4.Text = cDuplicata9.Text) or
                 (cDuplicata4.Text = cDuplicata10.Text) or (cDuplicata4.Text = cDuplicata11.Text) or (cDuplicata4.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata5.Text <> '') and ((cDuplicata5.Text = cDuplicata6.Text ) or (cDuplicata5.Text = cDuplicata7.Text ) or (cDuplicata5.Text = cDuplicata8.Text ) or (cDuplicata5.Text = cDuplicata9.Text) or
                 (cDuplicata5.Text = cDuplicata10.Text) or (cDuplicata5.Text = cDuplicata11.Text) or (cDuplicata5.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata6.Text <> '') and ((cDuplicata6.Text = cDuplicata7.Text ) or (cDuplicata6.Text = cDuplicata8.Text ) or (cDuplicata6.Text = cDuplicata9.Text) or
                 (cDuplicata6.Text = cDuplicata10.Text) or (cDuplicata6.Text = cDuplicata11.Text) or (cDuplicata6.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata7.Text <> '') and ((cDuplicata7.Text = cDuplicata8.Text ) or (cDuplicata7.Text = cDuplicata9.Text) or
                 (cDuplicata7.Text = cDuplicata10.Text) or (cDuplicata7.Text = cDuplicata11.Text) or (cDuplicata7.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata8.Text <> '') and ((cDuplicata8.Text = cDuplicata9.Text) or
                 (cDuplicata8.Text = cDuplicata10.Text) or (cDuplicata8.Text = cDuplicata11.Text) or (cDuplicata8.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata9.Text <> '') and ((cDuplicata9.Text = cDuplicata10.Text) or (cDuplicata9.Text = cDuplicata11.Text) or (cDuplicata9.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata10.Text <> '') and ((cDuplicata10.Text = cDuplicata11.Text) or (cDuplicata10.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;
              If (cDuplicata11.Text <> '') and ((cDuplicata11.Text = cDuplicata12.Text)) then begin
                 mIgual := true;
              End;

              If mIgual then begin
                 MessageDlg('Erro!'+#13+#13+'Não pode haver duas parcelas com o mesmo número de duplicata.', mtError, [mbOK], 0);
                 cDuplicata1.SetFocus;
                 Abort;
              End;

              mLista := '(';
              If (cDuplicata1.Enabled  = true) and (cDuplicata1.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata1.Text) +',';
              If (cDuplicata2.Enabled  = true) and (cDuplicata2.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata2.Text) +',';
              If (cDuplicata3.Enabled  = true) and (cDuplicata3.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata3.Text) +',';
              If (cDuplicata4.Enabled  = true) and (cDuplicata4.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata4.Text) +',';
              If (cDuplicata5.Enabled  = true) and (cDuplicata5.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata5.Text) +',';
              If (cDuplicata6.Enabled  = true) and (cDuplicata6.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata6.Text) +',';
              If (cDuplicata7.Enabled  = true) and (cDuplicata7.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata7.Text) +',';
              If (cDuplicata8.Enabled  = true) and (cDuplicata8.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata8.Text) +',';
              If (cDuplicata9.Enabled  = true) and (cDuplicata9.Text <> '')  then mLista := mLista + QuotedStr(cDuplicata9.Text) +',';
              If (cDuplicata10.Enabled = true) and (cDuplicata10.Text <> '') then mLista := mLista + QuotedStr(cDuplicata10.Text)+',';
              If (cDuplicata11.Enabled = true) and (cDuplicata11.Text <> '') then mLista := mLista + QuotedStr(cDuplicata11.Text)+',';
              If (cDuplicata12.Enabled = true) and (cDuplicata12.Text <> '') then mLista := mLista + QuotedStr(cDuplicata12.Text);
              mLista := Copy(mLista, 1, Length(mLista)-1)+')';

              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('DELETE FROM Duplicatas WHERE(Fatura = :pFatura) AND Duplicata IN '+mLista);
              Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
              Duplicatas.Execute;

              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE(Fatura = :pFatura) ORDER BY Duplicata');
              Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
              Duplicatas.Open;

              // Pegando a quantidade de parcelas.
              mParcelas := 0;
              If cDuplicata1.Text  <> '' then Inc(mParcelas);
              If cDuplicata2.Text  <> '' then Inc(mParcelas);
              If cDuplicata3.Text  <> '' then Inc(mParcelas);
              If cDuplicata4.Text  <> '' then Inc(mParcelas);
              If cDuplicata5.Text  <> '' then Inc(mParcelas);
              If cDuplicata6.Text  <> '' then Inc(mParcelas);
              If cDuplicata7.Text  <> '' then Inc(mParcelas);
              If cDuplicata8.Text  <> '' then Inc(mParcelas);
              If cDuplicata9.Text  <> '' then Inc(mParcelas);
              If cDuplicata10.Text <> '' then Inc(mParcelas);
              If cDuplicata11.Text <> '' then Inc(mParcelas);
              If cDuplicata12.Text <> '' then Inc(mParcelas);

              // Deleta as duplicatas anteriores para gerar novamente.
              If cTipo.ItemIndex <> 2 then begin
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber');
                 PagarReceber.SQL.Add('WHERE  (Data_Documento = :pData)');
                 //PagarReceber.SQL.Add('AND    (Documento      = :pDocumento)');
                 PagarReceber.SQL.Add('AND    (Fiscal         = :pNumeroDOC)');
                 PagarReceber.SQL.Add('AND    (Cliente        = :pCliente)');
                 PagarReceber.SQL.Add('AND    Numero_Documento IN '+mLista );
                 PagarReceber.ParamByName('pData').AsDate        := cDataEmissao.Date;
                 //PagarReceber.ParamByName('pDocumento').AsString := 'DUPL';
                 PagarReceber.ParamByName('pNumeroDOC').AsString := cFatura.Text;
                 PagarReceber.ParamByName('pCliente').AsInteger  := ClientesCodigo.Value;
                 PagarReceber.Execute;

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)' );
                 PagarReceber.ParamByName('pData').AsDate := cDataEmissao.Date;
                 PagarReceber.Open;
              End;

              mPost := false;

              For i := 1 to mParcelas do begin
                  Duplicatas.Append;
                             DuplicatasFatura.Value := FaturaFatura.Value;

                             If (i = 1) and (cDuplicata1.Enabled = true) then begin
                                DuplicatasDuplicata.Value       := cDuplicata1.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento1.Date;
                                DuplicatasVencimento.Value      := cVencimento1.Text;
                                DuplicatasValor.Value           := cValor1.Value;
                                DuplicatasDesconto.Value        := cDesconto1.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto1.Date;
                                DuplicatasValor_Liquido.Value   := cTotal1.Value;
                                DuplicatasParcela.Value         := cParcela1.Text;
                                DuplicatasClassificacao.Value   := cClass1.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata1.Text;
                                mPost := true;
                             End;
                             If (i = 2) and (cDuplicata2.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata2.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento2.Date;
                                DuplicatasVencimento.Value      := cVencimento2.Text;
                                DuplicatasValor.Value           := cValor2.Value;
                                DuplicatasDesconto.Value        := cDesconto2.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto2.Date;
                                DuplicatasValor_Liquido.Value   := cTotal2.Value;
                                DuplicatasParcela.Value         := cParcela2.Text;
                                DuplicatasClassificacao.Value   := cClass2.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata2.Text;
                                mPost := true;
                             End;
                             If (i = 3) and (cDuplicata3.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata3.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento3.Date;
                                DuplicatasVencimento.Value      := cVencimento3.Text;
                                DuplicatasValor.Value           := cValor3.Value;
                                DuplicatasDesconto.Value        := cDesconto3.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto3.Date;
                                DuplicatasValor_Liquido.Value   := cTotal3.Value;
                                DuplicatasParcela.Value         := cParcela3.Text;
                                DuplicatasClassificacao.Value   := cClass3.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata3.Text;
                                mPost := true;
                             End;
                             If (i = 4) and (cDuplicata4.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata4.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento4.Date;
                                DuplicatasVencimento.Value      := cVencimento4.Text;
                                DuplicatasValor.Value           := cValor4.Value;
                                DuplicatasDesconto.Value        := cDesconto4.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto4.Date;
                                DuplicatasValor_Liquido.Value   := cTotal4.Value;
                                DuplicatasParcela.Value         := cParcela4.Text;
                                DuplicatasClassificacao.Value   := cClass4.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata4.Text;
                                mPost := true;
                             End;
                             If (i = 5) and (cDuplicata5.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata5.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento5.Date;
                                DuplicatasVencimento.Value      := cVencimento5.Text;
                                DuplicatasValor.Value           := cValor5.Value;
                                DuplicatasDesconto.Value        := cDesconto5.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto5.Date;
                                DuplicatasValor_Liquido.Value   := cTotal5.Value;
                                DuplicatasParcela.Value         := cParcela5.Text;
                                DuplicatasClassificacao.Value   := cClass5.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata5.Text;
                                mPost := true;
                             End;
                             If (i = 6) and (cDuplicata6.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata6.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento6.Date;
                                DuplicatasVencimento.Value      := cVencimento6.Text;
                                DuplicatasValor.Value           := cValor6.Value;
                                DuplicatasDesconto.Value        := cDesconto6.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto6.Date;
                                DuplicatasValor_Liquido.Value   := cTotal6.Value;
                                DuplicatasParcela.Value         := cParcela6.Text;
                                DuplicatasClassificacao.Value   := cClass6.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata6.Text;
                                mPost := true;
                             End;
                             If (i = 7) and (cDuplicata7.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata7.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento7.Date;
                                DuplicatasVencimento.Value      := cVencimento7.Text;
                                DuplicatasValor.Value           := cValor7.Value;
                                DuplicatasDesconto.Value        := cDesconto7.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto7.Date;
                                DuplicatasValor_Liquido.Value   := cTotal7.Value;
                                DuplicatasParcela.Value         := cParcela7.Text;
                                DuplicatasClassificacao.Value   := cClass7.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata7.Text;
                                mPost := true;
                             End;
                             If (i = 8) and (cDuplicata8.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata8.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento8.Date;
                                DuplicatasVencimento.Value      := cVencimento8.Text;
                                DuplicatasValor.Value           := cValor8.Value;
                                DuplicatasDesconto.Value        := cDesconto8.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto8.Date;
                                DuplicatasValor_Liquido.Value   := cTotal8.Value;
                                DuplicatasParcela.Value         := cParcela8.Text;
                                DuplicatasClassificacao.Value   := cClass8.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata8.Text;
                                mPost := true;
                             End;
                             If (i = 9) and (cDuplicata9.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata9.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento9.Date;
                                DuplicatasVencimento.Value      := cVencimento9.Text;
                                DuplicatasValor.Value           := cValor9.Value;
                                DuplicatasDesconto.Value        := cDesconto9.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto9.Date;
                                DuplicatasValor_Liquido.Value   := cTotal9.Value;
                                DuplicatasParcela.Value         := cParcela9.Text;
                                DuplicatasClassificacao.Value   := cClass9.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata9.Text;
                                mPost := true;
                             End;
                             If (i = 10) and (cDuplicata10.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata10.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento10.Date;
                                DuplicatasVencimento.Value      := cVencimento10.Text;
                                DuplicatasValor.Value           := cValor10.Value;
                                DuplicatasDesconto.Value        := cDesconto10.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto10.Date;
                                DuplicatasValor_Liquido.Value   := cTotal10.Value;
                                DuplicatasParcela.Value         := cParcela10.Text;
                                DuplicatasClassificacao.Value   := cClass10.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata10.Text;
                                mPost := true;
                             End;
                             If (i = 11) and (cDuplicata11.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata11.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento11.Date;
                                DuplicatasVencimento.Value      := cVencimento11.Text;
                                DuplicatasValor.Value           := cValor11.Value;
                                DuplicatasDesconto.Value        := cDesconto11.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto11.Date;
                                DuplicatasValor_Liquido.Value   := cTotal11.Value;
                                DuplicatasParcela.Value         := cParcela11.Text;
                                DuplicatasClassificacao.Value   := cClass11.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata11.Text;
                                mPost := true;
                             End;
                             If (i = 12) and (cDuplicata12.Enabled = true)  then begin
                                DuplicatasDuplicata.Value       := cDuplicata12.Text;
                                DuplicatasData_Vencimento.Value := cData_Vencimento12.Date;
                                DuplicatasVencimento.Value      := cVencimento12.Text;
                                DuplicatasValor.Value           := cValor12.Value;
                                DuplicatasDesconto.Value        := cDesconto12.Value;
                                DuplicatasDesconto_Data.Value   := cData_Desconto12.Date;
                                DuplicatasValor_Liquido.Value   := cTotal12.Value;
                                DuplicatasParcela.Value         := cParcela12.Text;
                                DuplicatasClassificacao.Value   := cClass12.KeyValue;
                                DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                DuplicatasNumero.Value          := cDuplicata12.Text;
                                mPost := true;
                             End;
                  If mPost = true then
                     Duplicatas.Post
                  else
                     Duplicatas.Cancel;

                  mPost := false;

                  // Contas a receber.
                  If cTipo.ItemIndex <> 2 then begin
                     tNumero.SQL.Clear;
                     tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                     tNumero.Open;

                     PagarReceber.Append;
                                  PagarReceberNumero.Value         := tNumeroNumero.Value + 1;
                                  PagarReceberCentro_Custo.Value   := FaturaCentro_Custo.Value;
                                  PagarReceberData_Documento.Value := cDataEmissao.Date;
                                  PagarReceberCliente.Value        := FaturaCliente.Value;

                                  If cTipo.ItemIndex = 0 then
                                     PagarReceberClassificacao.Value := FaturaClassificacao.Value;

                                  If (i = 1) and (cDuplicata1.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass1.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value          := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value         := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value := cClass1.KeyValue;

                                     PagarReceberNumero_Documento.Value := cDuplicata1.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento1.Date;
                                     PagarReceberValor_Documento.Value  := cValor1.Value;
                                     PagarReceberValor_Parcela.Value    := cValor1.Value;
                                     PagarReceberDesconto.Value         := cDesconto1.Value;
                                     PagarReceberValor_Total.Value      := cTotal1.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal1.Value;
                                     PagarReceberParcela.Value          := cParcela1.Text;
                                  End;
                                  If (i = 2) and (cDuplicata2.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass2.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass2.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata2.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento2.Date;
                                     PagarReceberValor_Documento.Value  := cValor2.Value;
                                     PagarReceberValor_Parcela.Value    := cValor2.Value;
                                     PagarReceberDesconto.Value         := cDesconto2.Value;
                                     PagarReceberValor_Total.Value      := cTotal2.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal2.Value;
                                     PagarReceberParcela.Value          := cParcela2.Text;
                                  End;
                                  If (i = 3) and (cDuplicata3.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass3.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass3.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata3.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento3.Date;
                                     PagarReceberValor_Documento.Value  := cValor3.Value;
                                     PagarReceberValor_Parcela.Value    := cValor3.Value;
                                     PagarReceberDesconto.Value         := cDesconto3.Value;
                                     PagarReceberValor_Total.Value      := cTotal3.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal3.Value;
                                     PagarReceberParcela.Value          := cParcela3.Text;
                                  End;
                                  If (i = 4) and (cDuplicata4.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass4.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass4.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata4.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento4.Date;
                                     PagarReceberValor_Documento.Value  := cValor4.Value;
                                     PagarReceberValor_Parcela.Value    := cValor4.Value;
                                     PagarReceberDesconto.Value         := cDesconto4.Value;
                                     PagarReceberValor_Total.Value      := cTotal4.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal4.Value;
                                     PagarReceberParcela.Value          := cParcela4.Text;
                                  End;
                                  If (i = 5) and (cDuplicata5.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass5.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass5.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata5.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento5.Date;
                                     PagarReceberValor_Documento.Value  := cValor5.Value;
                                     PagarReceberValor_Parcela.Value    := cValor5.Value;
                                     PagarReceberDesconto.Value         := cDesconto5.Value;
                                     PagarReceberValor_Total.Value      := cTotal5.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal5.Value;
                                     PagarReceberParcela.Value          := cParcela5.Text;
                                  End;
                                  If (i = 6) and (cDuplicata6.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass6.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass6.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata6.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento6.Date;
                                     PagarReceberValor_Documento.Value  := cValor6.Value;
                                     PagarReceberValor_Parcela.Value    := cValor6.Value;
                                     PagarReceberDesconto.Value         := cDesconto6.Value;
                                     PagarReceberValor_Total.Value      := cTotal6.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal6.Value;
                                     PagarReceberParcela.Value          := cParcela6.Text;
                                  End;
                                  If (i = 7) and (cDuplicata7.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass7.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass7.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata7.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento7.Date;
                                     PagarReceberValor_Documento.Value  := cValor7.Value;
                                     PagarReceberValor_Parcela.Value    := cValor7.Value;
                                     PagarReceberDesconto.Value         := cDesconto7.Value;
                                     PagarReceberValor_Total.Value      := cTotal7.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal7.Value;
                                     PagarReceberParcela.Value          := cParcela7.Text;
                                  End;
                                  If (i = 8) and (cDuplicata8.Enabled = true) then begin
                                     ClassificacaoFinanceira.Locate('Codigo', cClass8.KeyValue, [loCaseInsensitive]);
                                     PagarReceberTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                     PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                     PagarReceberClassificacao.Value    := cClass8.KeyValue;
                                     PagarReceberNumero_Documento.Value := cDuplicata8.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento8.Date;
                                     PagarReceberValor_Documento.Value  := cValor8.Value;
                                     PagarReceberValor_Parcela.Value    := cValor8.Value;
                                     PagarReceberDesconto.Value         := cDesconto8.Value;
                                     PagarReceberValor_Total.Value      := cTotal8.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal8.Value;
                                     PagarReceberParcela.Value          := cParcela8.Text;
                                  End;
                                  If (i = 9) and (cDuplicata9.Enabled = true) then begin
                                     PagarReceberNumero_Documento.Value := cDuplicata9.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento9.Date;
                                     PagarReceberValor_Documento.Value  := cValor9.Value;
                                     PagarReceberValor_Parcela.Value    := cValor9.Value;
                                     PagarReceberDesconto.Value         := cDesconto9.Value;
                                     PagarReceberValor_Total.Value      := cTotal9.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal9.Value;
                                     PagarReceberParcela.Value          := cParcela9.Text;
                                  End;
                                  If (i = 10) and (cDuplicata10.Enabled = true) then begin
                                     PagarReceberNumero_Documento.Value := cDuplicata10.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento10.Date;
                                     PagarReceberValor_Documento.Value  := cValor10.Value;
                                     PagarReceberValor_Parcela.Value    := cValor10.Value;
                                     PagarReceberDesconto.Value         := cDesconto10.Value;
                                     PagarReceberValor_Total.Value      := cTotal10.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal10.Value;
                                     PagarReceberParcela.Value          := cParcela10.Text;
                                  End;
                                  If (i = 11) and (cDuplicata11.Enabled = true) then begin
                                     PagarReceberNumero_Documento.Value := cDuplicata11.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento11.Date;
                                     PagarReceberValor_Documento.Value  := cValor11.Value;
                                     PagarReceberValor_Parcela.Value    := cValor11.Value;
                                     PagarReceberDesconto.Value         := cDesconto11.Value;
                                     PagarReceberValor_Total.Value      := cTotal11.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal11.Value;
                                     PagarReceberParcela.Value          := cParcela11.Text;
                                  End;
                                  If (i = 12) and (cDuplicata12.Enabled = true) then begin
                                     PagarReceberNumero_Documento.Value := cDuplicata12.Text;
                                     PagarReceberData_Vencimento.Value  := cData_Vencimento12.Date;
                                     PagarReceberValor_Documento.Value  := cValor12.Value;
                                     PagarReceberValor_Parcela.Value    := cValor12.Value;
                                     PagarReceberDesconto.Value         := cDesconto12.Value;
                                     PagarReceberValor_Total.Value      := cTotal12.Value;
                                     PagarReceberValor_Operacao.Value   := cTotal12.Value;
                                     PagarReceberParcela.Value          := cParcela12.Text;
                                  End;

                                  PagarReceberMulta.Value          := 0;
                                  PagarReceberJuros.Value          := 0;
                                  PagarReceberDocumento.Value      := 'DUPL';
                                  PagarReceberProcesso.Value       := FaturaProcesso.Value;
                                  PagarReceberCustoConta.Value     := False;
                                  PagarReceberCusto_Seletivo.Value := false;
                                  PagarReceberCusto_Entrada.Value  := false;
                                  PagarReceberFiscal.Value         := FaturaNota.AsString;
                                  PagarReceberTipo_Nota.Value      := '';
                                  PagarReceberObservacao.Value     := FaturaObservacao.Value;
                     PagarReceber.Post;
                     tNumero.Close;
                  End;
              End;
           End;

           // Deleta as duplicatas do financeiro.
           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir estas duplicatas?', mtConfirmation, [mbYes, mbNo], 0) = mrno then begin
                 Abort;
              End;
                 
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('DELETE FROM Duplicatas WHERE (Fatura = :pFatura) ');
              Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
              Duplicatas.Execute;
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Fatura = :pFatura) ORDER BY Duplicata');
              Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
              Duplicatas.Open;

              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Data_Documento = :pData) AND (Documento = :pDocumento) AND (Fiscal = :pNumeroDOC) AND (Cliente = :pCliente)' );
              PagarReceber.ParamByName('pData').AsDate        := cDataEmissao.Date;
              PagarReceber.ParamByName('pDocumento').AsString := 'DUPL';
              PagarReceber.ParamByName('pNumeroDOC').AsString := cFatura.Text;
              PagarReceber.ParamByName('pCliente').AsInteger  := ClientesCodigo.Value;
              PagarReceber.Execute;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)' );
              PagarReceber.ParamByName('pData').AsDate := cDataEmissao.Date;
              ZeraDuplicata;
              CarregaDuplicatas;
           End;
      End;
end;

procedure TFinanceiro_Duplicatas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_Duplicatas.cNotaExit(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           If Trim(cTipo.Text) <> '' then begin
              ZeraDuplicata;

              tFatura.SQL.Clear;
              tFatura.SQL.Add('SELECT * FROM Fatura WHERE (Fatura = :pFatura)');
              tFatura.ParamByName('pFatura').AsInteger := FaturaNota.Value;
              tFatura.Open;

              If (Fatura.State = dsInsert) and (tFatura.RecordCount <> 0) then begin
                 MessageDlg('Já existem duplicatas para a nota fiscal informada!', mtError, [mbOK], 0);
                 Navega.BtnClick(nbCancel);
                 Fatura.Locate('Fatura', tFatura.FieldByName('Fatura').AsInteger, [loCaseInsensitive]);
                 CarregaDuplicatas;
                 Abort;
              End;

              If cTipo.ItemIndex < 2 then begin
                 If Notas.Locate('Numero;Saida_Entrada', VarArrayOf([FaturaNota.Value,1]), [loCaseInsensitive] ) = True then begin
                    If (Fatura.State = dsEdit) or (Fatura.State = dsInsert) then begin
                       FaturaFatura.Value       := NotasNumero.AsString;
                       FaturaCliente.Value      := NotasCliente_Codigo.Value;
                       FaturaData_Nota.Value    := NotasData_Emissao.Value;
                       FaturaNota.Value         := NotasNumero.Value;
                       FaturaData_Emissao.Value := NotasData_Emissao.Value;
                       FaturaValor_Total.Value  := NotasValor_TotalNota.Value;
                       FaturaProcesso.Value     := NotasProcesso.Value;
                       FaturaForma_Pgto.Value   := 1;
                       Parcelas;

                       NotasItens.SQL.Clear;
                       NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
                       NotasItens.ParamByName('pNota').AsInteger := FaturaNota.Value;
                       NotasItens.ParamByName('pData').AsDate    := FaturaData_Nota.AsDateTime;
                       NotasItens.SQL.Add('ORDER BY Codigo_Mercadoria');
                       NotasItens.Open;

                       // Duplicatas.
                       If cTipo.ItemIndex = 1 then begin
                          mLetra := 65;
                          mDupl  := 1;
                          If ConfiguracaoDuplicata01.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata01.Value, ConfiguracaoDuplicata01_Dias.Value, ConfiguracaoDuplicata01_Sub.Value, ConfiguracaoDuplicata01_Class.Value);
                          If ConfiguracaoDuplicata02.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata02.Value, ConfiguracaoDuplicata02_Dias.Value, ConfiguracaoDuplicata02_Sub.Value, ConfiguracaoDuplicata02_Class.Value);
                          If ConfiguracaoDuplicata03.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata03.Value, ConfiguracaoDuplicata03_Dias.Value, ConfiguracaoDuplicata03_Sub.Value, ConfiguracaoDuplicata03_Class.Value);
                          If ConfiguracaoDuplicata04.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata04.Value, ConfiguracaoDuplicata04_Dias.Value, ConfiguracaoDuplicata04_Sub.Value, ConfiguracaoDuplicata04_Class.Value);
                          If ConfiguracaoDuplicata05.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata05.Value, ConfiguracaoDuplicata05_Dias.Value, ConfiguracaoDuplicata05_Sub.Value, ConfiguracaoDuplicata05_Class.Value);
                          If ConfiguracaoDuplicata06.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata06.Value, ConfiguracaoDuplicata06_Dias.Value, ConfiguracaoDuplicata06_Sub.Value, ConfiguracaoDuplicata06_Class.Value);
                          If ConfiguracaoDuplicata07.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata07.Value, ConfiguracaoDuplicata07_Dias.Value, ConfiguracaoDuplicata07_Sub.Value, ConfiguracaoDuplicata07_Class.Value);
                          If ConfiguracaoDuplicata08.Value <> 0 then GeraDuplicata(mDupl,ConfiguracaoDuplicata08.Value, ConfiguracaoDuplicata08_Dias.Value, ConfiguracaoDuplicata08_Sub.Value, ConfiguracaoDuplicata08_Class.Value);
                       End;
                    End;
                 End;
              end else begin
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero) AND (Tipo = ''R'')' );
                 PagarReceber.ParamByName('pNumero').AsInteger := FaturaNota.Value;
                 PagarReceber.Open;

                 If PagarReceber.RecordCount > 0 then begin
                    If (Fatura.State = dsEdit) or (Fatura.State = dsInsert) then begin
                       FaturaFatura.Value        := PagarReceberNumero_Documento.AsString;
                       FaturaCliente.Value       := PagarReceberCliente.AsInteger;
                       FaturaData_Nota.Value     := PagarReceberData_Documento.Value;
                       FaturaNota.Value          := PagarReceberNumero_Documento.AsInteger;
                       FaturaData_Emissao.Value  := PagarReceberData_Documento.Value;
                       FaturaValor_Total.Value   := PagarReceberValor_Documento.Value;
                       FaturaProcesso.Value      := PagarReceberProcesso.Value;
                       FaturaClassificacao.Value := PagarReceberClassificacao.Value;
                       FaturaForma_Pgto.Value    := 1;
                       Parcelas;
                    End;
                 end else begin
                    MessageDlg('Numero de documento não encontrado no financeiro!', mtError, [mbOK], 0);
                    cNota.SetFocus;
                    Abort;
                 End;
              End;
           End;
      End;
end;

procedure TFinanceiro_Duplicatas.ZeraDuplicata;
begin
      cClass1.KeyValue := '';
      cDuplicata1.Clear;
      cData_Vencimento1.Clear;
      cVencimento1.Clear;
      cValor1.Clear;
      cDesconto1.Clear;
      cData_Desconto1.Clear;
      cTotal1.Clear;
      cParcela1.Clear;
      mClassificacao1 := '';

      cClass2.KeyValue := '';
      cDuplicata2.Clear;
      cData_Vencimento2.Clear;
      cVencimento2.Clear;
      cDesconto2.Clear;
      cData_Desconto2.Clear;
      cValor2.Clear;
      cTotal2.Clear;
      cParcela2.Clear;
      mClassificacao2 := '';

      cClass3.KeyValue := '';
      cDuplicata3.Clear;
      cData_Vencimento3.Clear;
      cVencimento3.Clear;
      cDesconto3.Clear;
      cData_Desconto3.Clear;
      cValor3.Clear;
      cTotal3.Clear;
      cParcela3.Clear;
      mClassificacao3 := '';

      cClass4.KeyValue := '';
      cDuplicata4.Clear;
      cData_Vencimento4.Clear;
      cVencimento4.Clear;
      cDesconto4.Clear;
      cData_Desconto4.Clear;
      cValor4.Clear;
      cTotal4.Clear;
      cParcela4.Clear;
      mClassificacao4 := '';

      cClass5.KeyValue := '';
      cDuplicata5.Clear;
      cData_Vencimento5.Clear;
      cVencimento5.Clear;
      cDesconto5.Clear;
      cData_Desconto5.Clear;
      cValor5.Clear;
      cTotal5.Clear;
      cParcela5.Clear;
      mClassificacao5 := '';

      cClass6.KeyValue := '';
      cDuplicata6.Clear;
      cData_Vencimento6.Clear;
      cVencimento6.Clear;
      cDesconto6.Clear;
      cData_Desconto6.Clear;
      cValor6.Clear;
      cTotal6.Clear;
      cParcela6.Clear;
      mClassificacao6 := '';

      cClass7.KeyValue := '';
      cDuplicata7.Clear;
      cData_Vencimento7.Clear;
      cVencimento7.Clear;
      cDesconto7.Clear;
      cData_Desconto7.Clear;
      cValor7.Clear;
      cTotal7.Clear;
      cParcela7.Clear;
      mClassificacao7 := '';

      cClass8.KeyValue := '';
      cDuplicata8.Clear;
      cData_Vencimento8.Clear;
      cVencimento8.Clear;
      cDesconto8.Clear;
      cData_Desconto8.Clear;
      cValor8.Clear;
      cTotal8.Clear;
      cParcela8.Clear;
      mClassificacao8 := '';

      cClass9.KeyValue := '';
      cDuplicata9.Clear;
      cData_Vencimento9.Clear;
      cVencimento9.Clear;
      cDesconto9.Clear;
      cData_Desconto9.Clear;
      cValor9.Clear;
      cTotal9.Clear;
      mClassificacao9 := '';
      cParcela9.Clear;

      cClass10.KeyValue := '';
      cDuplicata10.Clear;
      cData_Vencimento10.Clear;
      cVencimento10.Clear;
      cDesconto10.Clear;
      cData_Desconto10.Clear;
      cValor10.Clear;
      cTotal10.Clear;
      mClassificacao10 := '';
      cParcela10.Clear;

      cClass11.KeyValue := '';
      cDuplicata11.Clear;
      cData_Vencimento11.Clear;
      cVencimento11.Clear;
      cDesconto11.Clear;
      cData_Desconto11.Clear;
      cValor11.Clear;
      cTotal11.Clear;
      mClassificacao11 := '';
      cParcela11.Clear;

      cClass12.KeyValue := '';
      cDuplicata12.Clear;
      cData_Vencimento12.Clear;
      cVencimento12.Clear;
      cDesconto12.Clear;
      cData_Desconto12.Clear;
      cValor12.Clear;
      cTotal12.Clear;
      mClassificacao12 := '';
      cParcela12.Clear;

      iBaixa1.Visible  := false;
      iBaixa2.Visible  := false;
      iBaixa3.Visible  := false;
      iBaixa4.Visible  := false;
      iBaixa5.Visible  := false;
      iBaixa6.Visible  := false;
      iBaixa7.Visible  := false;
      iBaixa8.Visible  := false;
      iBaixa9.Visible  := false;
      iBaixa10.Visible := false;
      iBaixa11.Visible := false;
      iBaixa12.Visible := false;

      If dmFiscal.Fatura.State = dsInsert then begin
         cDesconto1.Clear;
         cDesconto2.Clear;
         cDesconto3.Clear;
         cDesconto4.Clear;
         cDesconto5.Clear;
         cDesconto6.Clear;
         cDesconto7.Clear;
         cDesconto8.Clear;
         cDesconto9.Clear;
         cDesconto10.Clear;
         cDesconto11.Clear;
         cDesconto12.Clear;
      end else begin
         If cValor1.Value  = 0 then cDesconto1.Clear;
         If cValor2.Value  = 0 then cDesconto2.Clear;
         If cValor3.Value  = 0 then cDesconto3.Clear;
         If cValor4.Value  = 0 then cDesconto4.Clear;
         If cValor5.Value  = 0 then cDesconto5.Clear;
         If cValor6.Value  = 0 then cDesconto6.Clear;
         If cValor7.Value  = 0 then cDesconto7.Clear;
         If cValor8.Value  = 0 then cDesconto8.Clear;
         If cValor9.Value  = 0 then cDesconto9.Clear;
         If cValor10.Value = 0 then cDesconto10.Clear;
         If cValor11.Value = 0 then cDesconto11.Clear;
         If cValor12.Value = 0 then cDesconto12.Clear;
      End;
end;

procedure TFinanceiro_Duplicatas.cFormaPgtoClick(Sender: TObject);
begin
      Parcelas;
end;

procedure TFinanceiro_Duplicatas.Parcelas;
Var
    i    : Integer;
    mData: TDate;
begin
      // Gerando as parcelas da forma de pagamento.
      mParcelas := 0;
      With Dados, dmFiscal do begin
           If cFormaPgto.Text <> '' then begin
              ZeraDuplicata;

              mData := FaturaData_Emissao.Value + ModalidadesPgtoPrazo_Primeira.Value;

              For i := 1 to ModalidadesPgtoNumero_Parcelas.Value do begin
                  If i > 1 then mData := mData + ModalidadesPgtoPrazo_Demais.Value;

                  // Antecipando ou adiantando a data do vencimento, caso caia em um final de semana.
                  If (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                     If (DayOfWeek(mData) = 1) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     End;
                     If (DayOfWeek(mData) = 7) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     End;
                  End;

                  If i = 1 then begin
                     If (ModalidadesPgtoNumero_Parcelas.Value = 1) and (ModalidadesPgtoPrazo_Primeira.Value = 0) and (ModalidadesPgtoPrazo_Demais.Value = 0) then begin
                        cVencimento1.Text := ModalidadesPgtoDescricao.Value
                     end else begin
                        If ModalidadesPgtoPrazo_Primeira.Value <> 0 then
                           cVencimento1.Text := ModalidadesPgtoPrazo_Primeira.AsString + ' dias'
                        else
                           cVencimento1.Text := Copy(ModalidadesPgtoDescricao.Value, 1, POS(' ', ModalidadesPgtoDescricao.Value));
                     End;
                     cData_Vencimento1.Date := mData;
                     cDuplicata1.Text      := PoeZero(9,FaturaFatura.AsInteger) + 'A';
                     cValor1.Value         := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal1.Value         := cValor1.Value - cDesconto1.Value;
                     cParcela1.Text        := '1/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 2  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento2.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento2.Text := 'C/APRES.';
                     cData_Vencimento2.Date := mData;
                     cDuplicata2.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'B';
                     cValor2.Value          := (FaturaValor_Total.Value/ ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal2.Value          := cValor2.Value - cDesconto2.Value;
                     cParcela2.Text         := '2/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 3  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento3.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento3.Text := 'C/APRES.';
                     cData_Vencimento3.Date := mData;
                     cDuplicata3.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'C';
                     cValor3.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal3.Value          := cValor3.Value - cDesconto3.Value;
                     cParcela3.Text         := '3/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 4  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento4.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento4.Text := 'C/APRES.';
                     cData_Vencimento4.Date := mData;
                     cDuplicata4.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'D';
                     cValor4.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal4.Value          := cValor4.Value - cDesconto4.Value;
                     cParcela4.Text        := '4/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 5  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento5.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento5.Text := 'C/APRES.';
                     cData_Vencimento5.Date := mData;
                     cDuplicata5.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'E';
                     cValor5.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal5.Value          := cValor5.Value - cDesconto5.Value;
                     cParcela5.Text         := '5/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 6  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento6.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento6.Text := 'C/APRES.';
                     cData_Vencimento6.Date := mData;
                     cDuplicata6.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'F';
                     cValor6.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal6.Value          := cValor6.Value - cDesconto6.Value;
                     cParcela6.Text         := '6/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 7  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento7.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento7.Text := 'C/APRES.';
                     cData_Vencimento7.Date := mData;
                     cDuplicata7.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'G';
                     cValor7.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal7.Value          := cValor7.Value - cDesconto7.Value;
                     cParcela7.Text         := '7/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 8  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento8.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento8.Text := 'C/APRES.';
                     cData_Vencimento8.Date := mData;
                     cDuplicata8.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'H';
                     cValor8.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal8.Value          := cValor8.Value - cDesconto8.Value;
                     cParcela8.Text         := '8/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 9  then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento9.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento9.Text := 'C/APRES.';
                     cData_Vencimento9.Date := mData;
                     cDuplicata9.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'I';
                     cValor9.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal9.Value          := cValor9.Value - cDesconto9.Value;
                     cParcela9.Text         := '9/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 10 then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento10.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento10.Text := 'C/APRES.';
                     cData_Vencimento10.Date := mData;
                     cDuplicata10.Text      := PoeZero(9,FaturaFatura.AsInteger) + 'J';
                     cValor10.Value         := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal10.Value         := cValor10.Value - cDesconto10.Value;
                     cParcela10.Text        := '10/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 11 then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento11.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento11.Text := 'C/APRES.';
                     cData_Vencimento11.Date := mData;
                     cDuplicata11.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'K';
                     cValor11.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal11.Value          := cValor11.Value - cDesconto11.Value;
                     cParcela11.Text         := '11/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
                  If i = 12 then begin
                     If ModalidadesPgtoPrazo_Demais.Value <> 0 then cVencimento12.Text := InttoStr(ModalidadesPgtoPrazo_Demais.Value * i)+ ' dias' else cVencimento12.Text := 'C/APRES.';
                     cData_Vencimento12.Date := mData;
                     cDuplicata12.Text       := PoeZero(9,FaturaFatura.AsInteger) + 'L';
                     cValor12.Value          := (FaturaValor_Total.Value / ModalidadesPgtoNumero_Parcelas.Value);
                     cTotal12.Value          := cValor12.Value - cDesconto12.Value;
                     cParcela12.Text         := '12/'+ModalidadesPgtoNumero_Parcelas.AsString;
                  End;
              End;
           End;
      End;
end;

procedure TFinanceiro_Duplicatas.CarregaDuplicatas;
Var
   mParcela : Integer;
begin
      With Dados, dmFiscal do begin
           If Fatura.RecordCount > 0 then begin
               Duplicatas.SQL.Clear;
               Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Fatura = :pFatura)');
               Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
               Duplicatas.Open;
           End;

           ZeraDuplicata;

           Notas.Locate('Numero', FaturaNota.Value, [loCaseInsensitive]);

           tBaixas.SQL.Clear;
           tBaixas.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas');
           tBaixas.SQL.Add('WHERE Numero IN(SELECT Numero FROM PagarReceber WHERE Numero_Documento = :pNumero AND Tipo = ''R'' AND Cliente = :pCliente)');
           tBaixas.ParamByName('pCliente').AsInteger := FaturaCliente.AsInteger;

           mParcela := 1;
           Duplicatas.First;
           
           While not Duplicatas.Eof do begin
                 tBaixas.Close;
                 
                 If mParcela = 1  then begin
                    cClass1.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata1.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento1.Date := DuplicatasData_Vencimento.Value;
                    cVencimento1.Text      := DuplicatasVencimento.Value;
                    cValor1.Value          := DuplicatasValor.Value;
                    cDesconto1.Value       := DuplicatasDesconto.Value;
                    cData_Desconto1.Date   := DuplicatasDesconto_Data.Value;
                    cTotal1.Value          := DuplicatasValor_Liquido.Value;
                    cParcela1.Text         := DuplicatasParcela.Value;
                    mClassificacao1        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata1.Text;
                    tBaixas.Open;

                    cClass1.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata1.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento1.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento1.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor1.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto1.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto1.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal1.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela1.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa1.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 2  then begin
                    cClass2.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata2.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento2.Date := DuplicatasData_Vencimento.Value;
                    cVencimento2.Text      := DuplicatasVencimento.Value;
                    cValor2.Value          := DuplicatasValor.Value;
                    cDesconto2.Value       := DuplicatasDesconto.Value;
                    cData_Desconto2.Date   := DuplicatasDesconto_Data.Value;
                    cTotal2.Value          := DuplicatasValor_Liquido.Value;
                    cParcela2.Text         := DuplicatasParcela.Value;
                    mClassificacao2        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata2.Text;
                    tBaixas.Open;

                    cClass2.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata2.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento2.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento2.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor2.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto2.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto2.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal2.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela2.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa2.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 3  then begin
                    cClass3.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata3.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento3.Date := DuplicatasData_Vencimento.Value;
                    cVencimento3.Text      := DuplicatasVencimento.Value;
                    cValor3.Value          := DuplicatasValor.Value;
                    cDesconto3.Value       := DuplicatasDesconto.Value;
                    cData_Desconto3.Date   := DuplicatasDesconto_Data.Value;
                    cTotal3.Value          := DuplicatasValor_Liquido.Value;
                    cParcela3.Text         := DuplicatasParcela.Value;
                    mClassificacao3        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata3.Text;
                    tBaixas.Open;

                    cClass3.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata3.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento3.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento3.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor3.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto3.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto3.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal3.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela3.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa3.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 4  then begin
                    cClass4.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata4.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento4.Date := DuplicatasData_Vencimento.Value;
                    cVencimento4.Text      := DuplicatasVencimento.Value;
                    cValor4.Value          := DuplicatasValor.Value;
                    cDesconto4.Value       := DuplicatasDesconto.Value;
                    cData_Desconto4.Date   := DuplicatasDesconto_Data.Value;
                    cTotal4.Value          := DuplicatasValor_Liquido.Value;
                    cParcela4.Text         := DuplicatasParcela.Value;
                    mClassificacao4        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata4.Text;
                    tBaixas.Open;

                    cClass4.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata4.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento4.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento4.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor4.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto4.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto4.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal4.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela4.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa4.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 5  then begin
                    cClass5.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata5.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento5.Date := DuplicatasData_Vencimento.Value;
                    cVencimento5.Text      := DuplicatasVencimento.Value;
                    cValor5.Value          := DuplicatasValor.Value;
                    cDesconto5.Value       := DuplicatasDesconto.Value;
                    cData_Desconto5.Date   := DuplicatasDesconto_Data.Value;
                    cTotal5.Value          := DuplicatasValor_Liquido.Value;
                    cParcela5.Text         := DuplicatasParcela.Value;
                    mClassificacao5        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata5.Text;
                    tBaixas.Open;

                    cClass5.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata5.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento5.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento5.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor5.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto5.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto5.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal5.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela5.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa5.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 6  then begin
                    cClass6.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata6.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento6.Date := DuplicatasData_Vencimento.Value;
                    cVencimento6.Text      := DuplicatasVencimento.Value;
                    cValor6.Value          := DuplicatasValor.Value;
                    cDesconto6.Value       := DuplicatasDesconto.Value;
                    cData_Desconto6.Date   := DuplicatasDesconto_Data.Value;
                    cTotal6.Value          := DuplicatasValor_Liquido.Value;
                    cParcela6.Text         := DuplicatasParcela.Value;
                    mClassificacao6        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata6.Text;
                    tBaixas.Open;

                    cClass6.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata6.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento6.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento6.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor6.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto6.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto6.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal6.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela6.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa6.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 7  then begin
                    cClass7.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata7.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento7.Date := DuplicatasData_Vencimento.Value;
                    cVencimento7.Text      := DuplicatasVencimento.Value;
                    cValor7.Value          := DuplicatasValor.Value;
                    cDesconto7.Value       := DuplicatasDesconto.Value;
                    cData_Desconto7.Date   := DuplicatasDesconto_Data.Value;
                    cTotal7.Value          := DuplicatasValor_Liquido.Value;
                    cParcela7.Text         := DuplicatasParcela.Value;
                    mClassificacao7        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata7.Text;
                    tBaixas.Open;

                    cClass7.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata7.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento7.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento7.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor7.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto7.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto7.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal7.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela7.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa7.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 8  then begin
                    cClass8.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata8.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento8.Date := DuplicatasData_Vencimento.Value;
                    cVencimento8.Text      := DuplicatasVencimento.Value;
                    cValor8.Value          := DuplicatasValor.Value;
                    cDesconto8.Value       := DuplicatasDesconto.Value;
                    cData_Desconto8.Date   := DuplicatasDesconto_Data.Value;
                    cTotal8.Value          := DuplicatasValor_Liquido.Value;
                    cParcela8.Text         := DuplicatasParcela.Value;
                    mClassificacao8        := DuplicatasClassificacao.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata8.Text;
                    tBaixas.Open;

                    cClass8.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata8.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento8.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento8.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor8.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto8.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto8.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal8.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela8.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa8.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 9  then begin
                    cClass9.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata9.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento9.Date := DuplicatasData_Vencimento.Value;
                    cVencimento9.Text      := DuplicatasVencimento.Value;
                    cValor9.Value          := DuplicatasValor.Value;
                    cDesconto9.Value       := DuplicatasDesconto.Value;
                    cData_Desconto9.Date   := DuplicatasDesconto_Data.Value;
                    cTotal9.Value          := DuplicatasValor_Liquido.Value;
                    cParcela9.Text         := DuplicatasParcela.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata9.Text;
                    tBaixas.Open;

                    cClass9.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata9.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento9.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento9.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor9.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto9.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto9.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal9.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela9.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa9.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 10 then begin
                    cClass10.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata10.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento10.Date := DuplicatasData_Vencimento.Value;
                    cVencimento10.Text      := DuplicatasVencimento.Value;
                    cValor10.Value          := DuplicatasValor.Value;
                    cDesconto10.Value       := DuplicatasDesconto.Value;
                    cData_Desconto10.Date   := DuplicatasDesconto_Data.Value;
                    cTotal10.Value          := DuplicatasValor_Liquido.Value;
                    cParcela10.Text         := DuplicatasParcela.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata10.Text;
                    tBaixas.Open;

                    cClass10.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata10.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento10.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento10.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor10.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto10.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto10.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal10.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela10.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa10.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 11 then begin
                    cClass11.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata11.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento11.Date := DuplicatasData_Vencimento.Value;
                    cVencimento11.Text      := DuplicatasVencimento.Value;
                    cValor11.Value          := DuplicatasValor.Value;
                    cDesconto11.Value       := DuplicatasDesconto.Value;
                    cData_Desconto11.Date   := DuplicatasDesconto_Data.Value;
                    cTotal11.Value          := DuplicatasValor_Liquido.Value;
                    cParcela11.Text         := DuplicatasParcela.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata11.Text;
                    tBaixas.Open;

                    cClass11.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata11.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento11.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento11.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor11.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto11.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto11.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal11.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela11.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa11.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 If mParcela = 12 then begin
                    cClass12.KeyValue       := DuplicatasClassificacao.Value;
                    cDuplicata12.Text       := DuplicatasDuplicata.Value;
                    cData_Vencimento12.Date := DuplicatasData_Vencimento.Value;
                    cVencimento12.Text      := DuplicatasVencimento.Value;
                    cValor12.Value          := DuplicatasValor.Value;
                    cDesconto12.Value       := DuplicatasDesconto.Value;
                    cData_Desconto12.Date   := DuplicatasDesconto_Data.Value;
                    cTotal12.Value          := DuplicatasValor_Liquido.Value;
                    cParcela12.Text         := DuplicatasParcela.Value;

                    tBaixas.ParamByName('pNumero').AsString := cDuplicata12.Text;
                    tBaixas.Open;

                    cClass12.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDuplicata12.Enabled       := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Vencimento12.Enabled := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cVencimento12.Enabled      := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cValor12.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cDesconto12.Enabled        := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cData_Desconto12.Enabled   := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cTotal12.Enabled           := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    cParcela12.Enabled         := tBaixas.FieldByName('Qtde').AsInteger = 0;
                    iBaixa12.Visible           := tBaixas.FieldByName('Qtde').AsInteger > 0;
                 End;
                 Duplicatas.Next;
                 Inc(mParcela);
           End;
           SomaDuplicata;
      End;
End;

procedure TFinanceiro_Duplicatas.cValorTotalChange(Sender: TObject);
begin
      If (dmFiscal.Fatura.State = dsInsert) and  (cFormaPgto.Text <> '') then Parcelas;
end;

procedure TFinanceiro_Duplicatas.cValor1Change(Sender: TObject);
begin
      SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.SomaDuplicata;
begin
      cTotal1.Value  := cValor1.Value  - cDesconto1.Value;
      cTotal2.Value  := cValor2.Value  - cDesconto2.Value;
      cTotal3.Value  := cValor3.Value  - cDesconto3.Value;
      cTotal4.Value  := cValor4.Value  - cDesconto4.Value;
      cTotal5.Value  := cValor5.Value  - cDesconto5.Value;
      cTotal6.Value  := cValor6.Value  - cDesconto6.Value;
      cTotal7.Value  := cValor7.Value  - cDesconto7.Value;
      cTotal8.Value  := cValor8.Value  - cDesconto8.Value;
      cTotal9.Value  := cValor9.Value  - cDesconto9.Value;
      cTotal10.Value := cValor10.Value - cDesconto11.Value;
      cTotal11.Value := cValor11.Value - cDesconto12.Value;
      cTotal12.Value := cValor11.Value - cDesconto12.Value;
end;

procedure TFinanceiro_Duplicatas.cValor2Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor3Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor4Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor5Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor6Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor7Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor8Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor9Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor10Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor11Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cValor12Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto1Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto2Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto3Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto4Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto5Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto6Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto7Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto8Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto9Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto10Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto11Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cDesconto12Change(Sender: TObject);
begin
     SomaDuplicata;
end;

procedure TFinanceiro_Duplicatas.cTipoChange(Sender: TObject);
begin
      If cTipo.ItemIndex <> 3 then begin
         If cTipo.ItemIndex <> 1 then begin
            cFormaPgto.Enabled := True;
         end else begin
            cFormaPgto.Enabled := False;
            cFormaPgto.KeyValue := 0;
         End;
      end else begin
         cNota.Enabled     := false;
         cDataNota.Enabled := false;
      End;
end;

procedure TFinanceiro_Duplicatas.cTipoExit(Sender: TObject);
begin
      If cTipo.ItemIndex <> 3 then begin
         cNota.Enabled     := cTipo.Text <> '';
         cDataNota.Enabled := cTipo.Text <> '';
         If cNota.Enabled = True then cNota.SetFocus else cFatura.Setfocus;
      end else begin
         cNota.Enabled              := false;
         cDataNota.Enabled          := false;
         Navega.Controls[7].Enabled := False;
         bImprimir.Visible          := true;
      End;
end;

procedure TFinanceiro_Duplicatas.GeraDuplicata(Duplicata:Integer; Tipo:Integer; Dias:Integer; Subsequente:Boolean; Classificacao: String);
Var
    mValor           : Currency;
    mDataVenc        : TDate;
    mVenc            : String;
    mIPI_Entrada     : Currency;
    mICMSOper_Entrada: Currency;
    mICMSSub_Entrada : Currency;
    mPIS_Entrada     : Currency;
    mCOFINS_Entrada  : Currency;
    mDesconto        : Currency;
    mDataDesconto    : TDate;
    mValorFrete      : Currency;
    mValorSeguro     : Currency;
begin
      Cursor        := crSQLWait;
      mDataVenc     := 0;
      mDataDesconto := 0;
      mValor        := 0;
      mVenc         := '';

      With Dados, dmFiscal do begin
           ClassificacaoDuplicata.Locate('Codigo', Tipo, [loCaseInsensitive]);
           // Câmbio.
           If Tipo = 1 then begin
              Incoterms.Locate('Codigo', ProcessosDOCIncoterms.Value, [loCaseInsensitive]);

              // Rateia o valor do câmbio para os casos em que ha mais de um nota fiscal emitida.
              tRateios.SQL.Clear;
              tRateios.SQL.Add('SELECT Quantidade * (SELECT SUM(Valor_UnitarioReal) FROM Adicoes WHERE(DI = NotasItens.DI) AND (Codigo_Mercadoria = NotasItens.Codigo_Mercadoria)) AS Valor_Total');
              tRateios.SQL.Add('INTO    #Temp');
              tRateios.SQL.Add('FROM   NotasItens');
              tRateios.SQL.Add('WHERE  (Nota = :pNota)');
              tRateios.SQL.Add('SELECT SUM(Valor_Total) AS Valor_Total FROM #Temp');
              tRateios.ParamByName('pNota').AsInteger := FaturaNota.AsInteger;
              tRateios.Open;

              mValorFrete  := 0;
              mValorSeguro := 0;

              // Rateia o valor do Frete.
              If INCOTERMSFrete.Value = True then begin
                 mValorFrete := ((ProcessosDOCFrete.AsCurrency / ProcessosDOCFOB.AsCurrency) * tRateios.FieldByName('Valor_Total').AsCurrency);
              End;
              // Rateia o valor do Seguro.
              If INCOTERMSSeguro.Value = True then begin
                 mValorSeguro := ((ProcessosDOCSeguro.AsCurrency / ProcessosDOCFOB.AsCurrency) * tRateios.FieldByName('Valor_Total').AsCurrency);
              End;
              mValor := tRateios.FieldByName('Valor_Total').AsCurrency + mValorFrete + mValorSeguro;

              If ProcessosDOCVencimento_Cambio.Value > 0 then
                 mDataVenc := (ProcessosDOCData_Fatura.Value + ProcessosDOCVencimento_Cambio.Value)
              else
                 mVenc := 'A VISTA';
           end else begin
              If Subsequente = False then begin
                 mDataVenc := (FaturaData_Emissao.Value + Dias);
                 If Dias = 0 then mVenc := 'A VISTA';
              end else begin
                 If MonthOf(FaturaData_Emissao.Value) < 12 then
                    mDataVenc := StrtoDate('01/'+InttoStr(MonthOf(FaturaData_Emissao.Value)+1)+'/'+InttoStr(YearOf(FaturaData_Emissao.Value)))
                 else
                    mDataVenc := StrtoDate('01/01/'+InttoStr(YearOf(FaturaData_Emissao.Value)+1));

                 mDataVenc := mDataVenc + (Dias-1);
              End;
           End;

           // Antecipando ou adiantando a data do vencimento, caso caia em um final de semana.
           If (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
              If (DayOfWeek(mDataVenc) = 1) then begin
                 If (Dados.ConfiguracaoDia_Util.Value = '-') then
                    mDataVenc := mDataVenc -2
                 else
                    mDataVenc := mDataVenc +1;
              End;
              If (DayOfWeek(mDataVenc) = 7) then begin
                 If (Dados.ConfiguracaoDia_Util.Value = '-') then
                    mDataVenc := mDataVenc -1
                 else
                    mDataVenc := mDataVenc +2;
              End;
           End;

           // Despesas.
           If Tipo = 2 then begin
              // Totalizando as despesas do processo.
              tDespesas.SQL.Clear;
              tDespesas.SQL.Add('SELECT SUM(Valor_Operacao) AS Valor_Operacao ');
              tDespesas.SQL.Add('FROM   PagarReceber, ClassificacaoFinanceira');
              tDespesas.SQL.Add('WHERE  (PagarReceber.Tipo = ''P'') and (Processo = :pProcesso) AND (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao AND ClassificacaoFinanceira.Adiantamento = 0)');
              tDespesas.ParamByName('pProcesso').AsString := FaturaProcesso.Value;
              tDespesas.Open;

              // Totalizando o FOB para o reteio proporcional das despesas.
              tRateios.SQL.Clear;
              tRateios.SQL.Add('SELECT NotasItens.Codigo_Mercadoria, NotasFiscais.DI,');
              tRateios.SQL.Add('       (SELECT (Valor_UnitarioReal*Quantidade) FROM Adicoes WHERE(DI = NotasFiscais.DI) AND (Adicao = NotasItens.Adicao) AND (Codigo_Mercadoria = NotasItens.Codigo_Mercadoria) AND (Sequencia_SISCOMEX = NotasItens.Sequencia_SISCOMEX) ) AS Valor_Total');
              tRateios.SQL.Add('INTO #Temp');
              tRateios.SQL.Add('FROM   NotasItens, NotasFiscais');
              tRateios.SQL.Add('WHERE  (NotasItens.Nota = :pNota) AND (NotasItens.Data = :pData) AND (NotasFiscais.Numero = NotasItens.Nota)');
              tRateios.SQL.Add('SELECT SUM(Valor_Total) AS Valor_Total FROM #Temp');
              tRateios.ParamByName('pNota').AsInteger := FaturaNota.AsInteger;
              tRateios.ParamByName('pData').AsDate    := FaturaData_Emissao.AsDateTime;
              tRateios.Open;

              mValor := ((ProcessosDOCFrete.AsCurrency-ProcessosDOCSeguro.AsCurrency-ProcessosDOCFOB.AsCurrency)-tDespesas.FieldByName('Valor_Operacao').AsCurrency / ProcessosDOCFOB.AsCurrency) * tRateios.FieldByName('Valor_Total').AsCurrency;
           End;

           // Totalizando os valores de entrada de IPI/ICMS/PIS/COFINS.
           mIPI_Entrada      := 0;
           mICMSOper_Entrada := 0;
           mICMSSub_Entrada  := 0;
           mPIS_Entrada      := 0;
           mCOFINS_Entrada   := 0;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT * FROM NotasItens');
           tItens.SQL.Add('WHERE Nota IN( SELECT Numero FROM NotasFiscais WHERE(Saida_Entrada = 0) AND (Processo = :pProcesso) AND (Cancelada <> 1))');
           tItens.ParamByName('pProcesso').AsString := FaturaProcesso.Value;
           tItens.Open;

           NotasItens.First;
           While not NotasItens.Eof do begin
                 If tItens.Locate('Codigo_Mercadoria; Adicao', VarArrayOf([NotasItens.FieldByName('Codigo_Mercadoria').AsInteger, NotasItens.FieldByName('Adicao').AsInteger]), [loCaseInsensitive]) then begin
                    mICMSOper_Entrada := mICMSOper_Entrada + (tItens.FieldByName('Valor_ICMSOper').AsCurrency * NotasItensQuantidade.Value);
                    mIPI_Entrada      := mIPI_Entrada      + (tItens.FieldByName('Valor_IPI').AsCurrency * NotasItensQuantidade.Value);
                    mICMSSub_Entrada  := mICMSSub_Entrada  + (tItens.FieldByName('Valor_ICMSSub').AsCurrency * NotasItensQuantidade.Value);
                    mPIS_Entrada      := mPIS_Entrada      + (tItens.FieldByName('Valor_PIS').AsCurrency * NotasItensQuantidade.Value);
                    mCOFINS_Entrada   := mCOFINS_Entrada   + (tItens.FieldByName('Valor_COFINS').AsCurrency * NotasItensQuantidade.Value);
                 End;
                 NotasItens.Next;
           End;

           If Tipo = 3 then mValor := (NotasValor_ICMS.Value - mICMSOper_Entrada);                                       // ICMS Operacional.
           If Tipo = 4 then mValor := (NotasValor_TotalIPI.Value - mIPI_Entrada);                                        // IPI.
           If Tipo = 5 then mValor := (NotasValor_PIS.Value - mPIS_Entrada);                                             // PIS.
           If Tipo = 6 then mValor := (NotasValor_COFINS.Value - mCOFINS_Entrada);                                       // COFINS.
           If Tipo = 7 then mValor := ( (NotasValor_PIS.Value+NotasValor_COFINS.Value)-(mPIS_Entrada+mCOFINS_Entrada) ); // PIS + COFINS.
           If Tipo = 8 then mValor := (NotasValorICMS_Substitutivo.Value - mICMSSub_Entrada);                            // ICMS Substitutivo.

           // Diferença.
           If Tipo = 10 then begin
              If cParcela1.Text  <> 'Diferença' then mValor := mValor + cTotal1.Value;
              If cParcela2.Text  <> 'Diferença' then mValor := mValor + cTotal2.Value;
              If cParcela3.Text  <> 'Diferença' then mValor := mValor + cTotal3.Value;
              If cParcela4.Text  <> 'Diferença' then mValor := mValor + cTotal4.Value;
              If cParcela5.Text  <> 'Diferença' then mValor := mValor + cTotal5.Value;
              If cParcela6.Text  <> 'Diferença' then mValor := mValor + cTotal6.Value;
              If cParcela7.Text  <> 'Diferença' then mValor := mValor + cTotal7.Value;
              If cParcela8.Text  <> 'Diferença' then mValor := mValor + cTotal8.Value;
              If cParcela9.Text  <> 'Diferença' then mValor := mValor + cTotal9.Value;
              If cParcela10.Text <> 'Diferença' then mValor := mValor + cTotal10.Value;
              If cParcela11.Text <> 'Diferença' then mValor := mValor + cTotal11.Value;
              If cParcela12.Text <> 'Diferença' then mValor := mValor + cTotal12.Value;
              mValor := dmFiscal.FaturaValor_Total.AsCurrency - mValor;
           End;

           // Desconto fixo do cliente.
           mDesconto := 0;
           If (ClientesDesconto_Dupl_Tipo.Value = Tipo) and (ClientesDesconto_Dupl_Valor.Value > 0) then begin
              mDesconto := Percentual(mValor, ClientesDesconto_Dupl_Valor.Value);
              If (ClientesDesconto_Dupl_Dias.AsInteger > 0) and (ClientesDesconto_Dupl_Dias.AsInteger < 31) then
                 mDataDesconto := StrtoDate( ClientesDesconto_Dupl_Dias.AsString+'/'+InttoStr(MonthOf(mDataVenc))+'/'+InttoStr(YearOf(mDataVenc)) )
              else
                 mDataDesconto := StrtoDate( '01/'+InttoStr(MonthOf(mDataVenc))+'/'+InttoStr(YearOf(mDataVenc)) );

              If (ClientesDesconto_Dupl_Campo.Value <> Tipo) and (ClientesDesconto_Dupl_Campo.Value <> 0) then begin
                 If ClientesDesconto_Dupl_Campo.Value = 9 then
                    mDesconto := Percentual(NotasBCICMS.AsCurrency, ClientesDesconto_Dupl_Valor.Value);
              End;
           End;

           If (Duplicata = 1) and (mValor > 0) then begin
              cDuplicata1.Text     := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor1.Value        := mValor;
              cDesconto1.Value     := mDesconto;
              cData_Desconto1.Date := mDataDesconto;
              cVencimento1.Text    := mVenc;

              If mDataVenc > 0 then
                 cData_Vencimento1.Date := mDataVenc
              else
                 cData_Vencimento1.Date := cDataEmissao.Date;

              cParcela1.Text  := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao1 := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 2) and (mValor > 0) then begin
              cDuplicata2.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor2.Value          := mValor;
              cDesconto2.Value       := mDesconto;
              cData_Desconto2.Date   := mDataDesconto;
              cVencimento2.Text      := mVenc;
              cData_Vencimento2.Date := mDataVenc;
              cParcela2.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao2        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 3) and (mValor > 0) then begin
              cDuplicata3.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor3.Value          := mValor;
              cDesconto3.Value       := mDesconto;
              cData_Desconto3.Date   := mDataDesconto;
              cVencimento3.Text      := mVenc;
              cData_Vencimento3.Date := mDataVenc;
              cParcela3.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao3        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 4) and (mValor > 0) then begin
              cDuplicata4.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor4.Value          := mValor;
              cDesconto4.Value       := mDesconto;
              cData_Desconto4.Date   := mDataDesconto;
              cVencimento4.Text      := mVenc;
              cParcela4.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              cData_Vencimento4.Date := mDataVenc;
              mClassificacao4        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 5) and (mValor > 0) then begin
              cDuplicata5.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor5.Value          := mValor;
              cDesconto5.Value       := mDesconto;
              cData_Desconto5.Date   := mDataDesconto;
              cVencimento5.Text      := mVenc;
              cData_Vencimento5.Date := mDataVenc;
              cParcela5.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao5        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 6) and (mValor > 0) then begin
              cDuplicata6.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor6.Value          := mValor;
              cDesconto6.Value       := mDesconto;
              cData_Desconto6.Date   := mDataDesconto;
              cVencimento6.Text      := mVenc;
              cData_Vencimento6.Date := mDataVenc;
              cParcela6.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao6        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 7) and (mValor > 0) then begin
              cDuplicata7.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor7.Value          := mValor;
              cDesconto7.Value       := mDesconto;
              cData_Desconto7.Date   := mDataDesconto;
              cVencimento7.Text      := mVenc;
              cData_Vencimento7.Date := mDataVenc;
              cParcela7.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao7        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
           If (Duplicata = 8) and (mValor > 0) then begin
              cDuplicata8.Text       := PoeZero(9,FaturaFatura.AsInteger) + CHR(mLetra);
              cValor8.Value          := mValor;
              cDesconto8.Value       := mDesconto;
              cData_Desconto8.Date   := mDataDesconto;
              cVencimento8.Text      := mVenc;
              cData_Vencimento8.Date := mDataVenc;
              cParcela8.Text         := ClassificacaoDuplicata.FieldByName('Descricao').AsString;
              mClassificacao8        := Classificacao;
              Inc(mLetra);
              Inc(mDupl);
           End;
      End;
      Cursor := crDefault;
end;

procedure TFinanceiro_Duplicatas.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Fatura', mPesquisa);
     dmFiscal.Fatura.Locate('Fatura', mPesquisa, [loCaseInsensitive]);
     CarregaDuplicatas;
end;

procedure TFinanceiro_Duplicatas.cFaturaChange(Sender: TObject);
begin
      // Verifica se há baixas efetuadas para duplicata.
      tBaixas.SQL.Clear;
      tBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Numero IN(SELECT Numero FROM PagarReceber WHERE Fiscal = :pFiscal)');
      tBaixas.ParamByName('pFiscal').AsString := dmFiscal.FaturaFatura.AsString;
      tBaixas.Open;
      lBaixada.Visible := tBaixas.RecordCount > 0;
end;

procedure TFinanceiro_Duplicatas.bImprimirClick(Sender: TObject);
Var
   mExtenso: WideString;
begin
      With Dados do begin
           lNumero.Caption    := cFatura.Text;
           lValor.Text        := cValorTotal.Text;
           lNumeroDupl.Text   := cDuplicata1.Text;
           lValorDupl.Text    := cTotal1.DisplayText;
           lNumeroDupl.Text   := cDuplicata1.Text;
           lDesconto.Text     := FormatFloat(',##0.00', cDesconto1.Value);
           lDescontoData.Text := cData_Desconto1.Text;
           lParcela.Text      := cParcela1.Text;
           lProcesso.Text     := cProcesso.Text;
           lDataEmissao.Text  := cDataEmissao.EditText;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados');
           Estados.Open;
           Estados.Locate('Codigo', ClientesEstado.AsString, [loCaseInsensitive]);

           lInscricao.DisplayFormat := EstadosMascara_Inscricao.AsString;
           lEndereco1.Caption       := Trim(EmpresasRua.Value) + ', Nº '+Trim(EmpresasRua_Numero.AsString)+' - '+Trim(EmpresasBairro.AsString);
           lEndereco2.Caption       := Trim(MunicipiosNome.Value) + ' ('+Trim(EmpresasEstado.Value)+') - CEP:'+EmpresasCEP.Value;
           lTelefones.Caption       := 'Tel:'+FormatMaskText('(##) #########;0',EmpresasTelefone1.Value)+ ' / '+ FormatMaskText('(##) #########;0',EmpresasTelefone2.Value) + '     Fax:'+FormatMaskText('(##) #########;0',EmpresasFax.Value);
           cTexto.Lines.Clear;
           cTexto.Lines.Add('RECONHEÇO (EMOS) A EXATIDÃO DESTA DUPLICATA DE VENDA MERCANTIL, NA IMPORTÂNCIA ACIMA QUE PAGAREI (EMOS) Á '+ Trim(EmpresasRazao_Social.AsString) + ', OU A SUA ORDEM NA PRAÇA DE VENCIMENTO INDICADO.');

           lEnderecoCliente.Caption := ClientesRua.Value + ', Nº '+ClientesRua_Numero.AsString;
           If Trim(cVencimento1.Text) = '' then
              lVencimentoDupl.Text := cData_Vencimento1.Text
           else
              lVencimentoDupl.Text := cVencimento1.Text;


           If ConfiguracaoExtenso_Maiusculo.Value = True then
              mExtenso := ValorExtenso2(cTotal1.Value , true, 2)
           else
              mExtenso := ValorExtenso2(cTotal1.Value , true, 0);
              
           lExtenso.Text := '(' + mExtenso + ')'+Replicate('*', (217-Length(mExtenso)));
      End;

      rDuplicataLivre.Print;
      rDuplicataLivre.FreeOnRelease;
      rDuplicataLivre.Reset;
end;

procedure TFinanceiro_Duplicatas.ppDetailBand1BeforePrint(Sender: TObject);
begin
      // Nota Promissoria.
      lDataExtenso.Caption := AnsiUpperCase(DataExtenso2(cData_Vencimento1.Date));
      lValorExtenso.Text   := lExtenso.Text;
      lVencimentoDia.Text  := InttoStr(DayOf(cData_Vencimento1.Date));
      lVencimentoMes.Text  := AnsiUpperCase(NomeMes(MonthOf(cData_Vencimento1.Date)));
      lVencimentoAno.Text  := InttoStr(YearOf(cData_Vencimento1.Date));
      If Trim(Dados.ClientesCNPJ.Text) <> '' then lCPFCNPJ.Caption := 'CNPJ' ELSE lCPFCNPJ.Caption := 'CPF';
      lPagavelEm.Caption       := AnsiUpperCase(Trim(Dados.MunicipiosNome.Value) + '/'+Trim(Dados.EmpresasEstado.Value));
      lValorPromissoria.Value  := dmFiscal.FaturaValor_Total.Value;
      lNumeroPromissoria.Value := cDuplicata1.Text;
end;

end.
