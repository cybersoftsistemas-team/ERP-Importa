unit frmContabilidade_LancamentosPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, DB, DBAccess, RXDBCtrl, Funcoes,
  Vcl.Grids, Vcl.DBCtrls, Vcl.DBCGrids, MemDS, MSAccess, Vcl.Mask, Vcl.Buttons, RxToolEdit, system.UITypes, RxCurrEdit;

type
  TContabilidade_LancamentosPesquisar = class(TForm)
    Panel3: TPanel;
    bOK: TButton;
    tPesquisa: TMSQuery;
    dstPesquisa: TDataSource;
    tPesquisaLote: TLargeintField;
    tPesquisaLote_Descricao: TStringField;
    tPesquisaNumero: TIntegerField;
    tPesquisaOrigem: TStringField;
    tPesquisaData: TDateField;
    tPesquisaValor: TCurrencyField;
    tPesquisaDescricaoD: TStringField;
    tPesquisaDescricaoC: TStringField;
    tPesquisaHistorico: TSmallintField;
    tPesquisaHistorico_Descricao: TStringField;
    bCancelar: TButton;
    Panel2: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Grade: TDBCtrlGrid;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText10: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText9: TDBText;
    tPesquisaEmpresa: TStringField;
    tPesquisaProcesso_Debito: TStringField;
    tPesquisaProcesso_Credito: TStringField;
    Panel4: TPanel;
    lValorDocumento: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText7: TStaticText;
    cNumLan: TCurrencyEdit;
    cData: TDateEdit;
    cValorLan: TCurrencyEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cDescLote: TEdit;
    cNumLote: TCurrencyEdit;
    cConta: TEdit;
    StaticText6: TStaticText;
    cHist: TCurrencyEdit;
    StaticText8: TStaticText;
    cDescHist: TEdit;
    StaticText9: TStaticText;
    cProcesso: TEdit;
    bPesquisa: TSpeedButton;
    cCodRed: TCurrencyEdit;
    tPesquisaCodigoD: TIntegerField;
    tPesquisaCodigoC: TIntegerField;
    tPesquisaContaD: TStringField;
    tPesquisaContaC: TStringField;
    bLimpar: TSpeedButton;
    StaticText10: TStaticText;
    cDocumento: TEdit;
    StaticText11: TStaticText;
    cBeneficiario: TEdit;
    StaticText12: TStaticText;
    cTipoNota: TCurrencyEdit;
    procedure bOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCancelarClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contabilidade_LancamentosPesquisar: TContabilidade_LancamentosPesquisar;

implementation

uses frmDMContab, frmContabilidade_Lancamentos;

{$R *.dfm}

procedure TContabilidade_LancamentosPesquisar.bCancelarClick(Sender: TObject);
begin
     close;
end;

procedure TContabilidade_LancamentosPesquisar.bLimparClick(Sender: TObject);
begin
     cData.Clear;
     cNumLote.Clear;
     cDescLote.clear;
     cNumLan.Clear;
     cValorLan.clear;
     cConta.Clear;
     cCodRed.Clear;
     cHist.Clear;
     cDescHist.clear;
     cProcesso.clear;
end;

procedure TContabilidade_LancamentosPesquisar.bOKClick(Sender: TObject);
begin
     with tPesquisa do begin
          Contabilidade_Lancamentos.mPesquisaLote   := FieldByName('Lote').asinteger;
          Contabilidade_Lancamentos.mPesquisaNumero := FieldByName('Numero').asinteger;
          Contabilidade_Lancamentos.mPesquisaData   := FieldByName('Data').asDatetime;
     end;
     Close;
end;

procedure TContabilidade_LancamentosPesquisar.bPesquisaClick(Sender: TObject);
begin
     if (cData.Date = 0) and (cNumLote.asinteger = 0) and (trim(cDescLote.Text) = '') and (cNumLan.asinteger = 0) and (cValorLan.value = 0)
        and (trim(cConta.text) = '') and (cCodRed.AsInteger = 0) and (cHist.AsInteger = 0) and (trim(cDescHist.text) = '') and (trim(cProcesso.text) = '')
        and (trim(cDocumento.text) = '') and (trim(cBeneficiario.text) = '') and (cTipoNota.asinteger = 0) then begin
        MessageDlg('Informe ao menos um filtro para efetuar a pesquisa!', mtInformation, [mbok], 0);
        Abort;
     end;

     Screen.Cursor := crSqlWait;

     with tPesquisa do begin
          sql.clear;
          sql.add('select Lote');
          sql.add('      ,Lote_Descricao = (select Descricao from Lotes where Lotes.Lote = Lancamentos.Lote and Lotes.Data = Lancamentos.Data)');
          sql.add('      ,Numero');
          sql.add('      ,Origem');
          sql.add('      ,Data = cast(Data as Date)');
          sql.add('      ,CodigoD = cast(Conta_Debito as int)');
          sql.add('      ,ContaD  = (select Conta from PlanoContas where Codigo = Conta_Debito)');
          sql.add('      ,Valor');
          sql.add('      ,DescricaoD = (select Descricao from PlanoContas where Codigo = Conta_Debito)');
          sql.add('      ,CodigoC    = cast(Conta_Credito as int)');
          sql.add('      ,ContaC     = (select Conta from PlanoContas where Codigo = Conta_Credito)');
          sql.add('      ,DescricaoC = (select Descricao from PlanoContas where Codigo = Conta_Credito)');
          sql.add('      ,Historico = Historico_Codigo');
          sql.add('      ,Historico_Descricao = isnull((select Descricao from HistoricoPadrao where Codigo = Historico_Codigo), '''') + isnull(cast(Historico_Complemento as varchar(120)), '''')');
          sql.add('      ,Empresa');
          sql.add('      ,Processo_Debito');
          sql.add('      ,Processo_Credito');
          sql.add('from  Lancamentos');
          sql.add('where Numero is not null');

          if cData.Date <> 0 then begin
             sql.add('and Data = :pData');
             ParamByName('pData').asDate := cData.date;
          end;
          if cNumLote.asinteger <> 0 then begin
             sql.add('and Lote = :pLote');
             ParamByName('pLote').asinteger := cNumLote.AsInteger;
          end;
          if trim(cDescLote.Text) <> '' then begin
             sql.add('and Lote in( (select Lote from Lotes where Descricao like '+ QuotedStr(Concat('%',cDesclote.text,'%'))+') )');
          end;
          if cNumLan.asinteger <> 0 then begin
             sql.add('and Numero = :pNum');
             ParamByName('pNum').Value := cNumLan.asinteger;
          end;
          if cValorLan.value <> 0 then begin
             sql.add('and Valor = :pValor');
             ParamByName('pValor').Value := cValorLan.Value;
          end;
          if trim(cConta.text) <> '' then begin
             sql.add('and ((select Conta from PlanoContas where Codigo = Conta_Debito) = :pConta or (select Conta from PlanoContas where Codigo = Conta_Credito) = :pConta)');
             ParamByName('pConta').Value := cConta.text;
          end;
          if cCodRed.AsInteger <> 0 then begin
             sql.add('and (Conta_Debito = :pCodRed or Conta_Credito = :pCodRed)');
             ParamByName('pCodRed').asstring := cCodRed.Text;
          end;
          if cHist.AsInteger <> 0 then begin
             sql.add('and Historico_Codigo = :pHist');
             ParamByName('pHist').asinteger := cHist.asinteger;
          end;
          if trim(cDescHist.text) <> '' then begin
             sql.add('and (isnull((select Descricao from HistoricoPadrao where Codigo = Historico_Codigo), '''') + isnull(cast(Historico_Complemento as varchar(120)), '''')) like '+ QuotedStr(Concat('%',cDescHist.text,'%')) );
          end;
          if trim(cProcesso.text) <> '' then begin
             sql.add('and (Processo_Debito = :pProc or Processo_Credito = :pProc)');
             ParamByName('pProc').asstring := cProcesso.text;
          end;
          if trim(cDocumento.text) <> '' then begin
             sql.add('and (Documento = :pDoc)');
             ParamByName('pDoc').asstring := cDocumento.text;
          end;
          if trim(cBeneficiario.text) <> '' then begin
             sql.add('and (Beneficiario = ''C''+:pBenef or Beneficiario = ''F''+:pBenef)');
             ParamByName('pBenef').asstring := cBeneficiario.text;
          end;
          if cTipoNota.asinteger <> 0 then begin
             sql.add('and Tipo_Nota = :pTipoNota');
             ParamByName('pTipoNota').asinteger := cTipoNota.AsInteger;
          end;

          sql.add('order by Data, Lote');
          //sql.savetofile('c:\temp\Consulta_Lancamentos.sql');
          open;
     end;

     Screen.Cursor := crDefault;
end;

procedure TContabilidade_LancamentosPesquisar.GradeDblClick(Sender: TObject);
begin
     bok.Click;
end;

procedure TContabilidade_LancamentosPesquisar.FormKeyPress(Sender: TObject;var Key: Char);
begin
      If Key = #13 then bPesquisa.Click;
end;

procedure TContabilidade_LancamentosPesquisar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Contabilidade_LancamentosPesquisar.Release;
      Contabilidade_LancamentosPesquisar := nil;
end;

end.
