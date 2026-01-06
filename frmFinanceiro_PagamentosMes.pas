unit frmFinanceiro_PagamentosMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, RxCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DateUtils, system.UITypes, Funcoes;

type
  TFinanceiro_PagamentosMes = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Button1: TButton;
    bGerar: TButton;
    tNumero: TMSQuery;
    tLancamentos: TFDMemTable;
    tLancamentosDescricao: TStringField;
    tLancamentosVencimento: TDateField;
    tLancamentosValor: TCurrencyField;
    tLancamentosRegistro: TIntegerField;
    dstLancamentos: TDataSource;
    Grade1: TDBGrid;
    Grade2: TDBGrid;
    tLancamentosNumero_Doc: TStringField;
    Bevel1: TBevel;
    tLancamentosClassificacao: TStringField;
    tLancamentosCentro_Custo: TStringField;
    tLancamentosFornecedor: TIntegerField;
    tLancamentosOrgao: TStringField;
    tLancamentosCliente: TIntegerField;
    tLancamentosModalidade: TSmallintField;
    tLancamentosBanco: TSmallintField;
    tLancamentosObservacao: TMemoField;
    tLancamentosDocumento: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_PagamentosMes: TFinanceiro_PagamentosMes;

implementation

{$R *.dfm}

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

procedure TFinanceiro_PagamentosMes.bGerarClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente gerar os lançamentos de pagamentos do mês no financeiro?', mtConfirmation, [mbyes, mbno], 0) = mrNo then Abort;
     
     with Dados do begin
          tNumero.sql.clear;
          tNumero.sql.add('SELECT ISNULL(MAX(Numero), 0)+1 AS Num FROM PagarReceber');

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE Titulo = 0 AND Desativada <> 1 ORDER BY Codigo');
          ClassificacaoFinanceira.Open;

          PagarReceber.sql.clear;
          PagarReceber.sql.add('SELECT * FROM PagarReceber WHERE Numero = (SELECT ISNULL(MAX(Numero), 0)+1 AS Num FROM PagarReceber)');
          PagarReceber.Open;

          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Max      := tLancamentos.RecordCount;
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.lProcesso.Caption  := 'Gerando os lançamentos no financeiro...';
          Janela_Processamento.Show;

          tLancamentos.First;
          while not tLancamentos.eof do begin
                if (tLancamentos.FieldByName('Valor').AsCurrency > 0) and (not DataLimpa(tLancamentos.FieldByName('Vencimento').AsString)) then begin;
                   ClassificacaoFinanceira.Locate('Codigo', tLancamentos.FieldByName('Classificacao').Value, [loCaseInsensitive]);
                   tNumero.Open;
                   PagarReceber.Append;
                                PagarReceberNumero.Value           := tNumero.FieldByName('Num').AsInteger;
                                PagarReceberBanco.Value            := tLancamentos.FieldByName('Banco').AsInteger;
                                PagarReceberFornecedor.Value       := tLancamentos.FieldByName('Fornecedor').AsInteger;
                                PagarReceberModalidade_Pgto.Value  := tLancamentos.FieldByName('Modalidade').AsInteger;
                                PagarReceberNivel.Value            := ClassificacaoFinanceira.FieldByName('Nivel').Value;
                                PagarReceberCliente.Value          := tLancamentos.FieldByName('Cliente').AsInteger;
                                PagarReceberCentro_Custo.Value     := tLancamentos.FieldByName('Centro_Custo').AsString;
                                PagarReceberClassificacao.Value    := tLancamentos.FieldByName('Classificacao').Value;
                                PagarReceberDocumento.Value        := tLancamentos.FieldByName('Documento').Value;
                                PagarReceberForma_Tipo.Value       :=  'DÉBITO EM CONTA';
                                PagarReceberNumero_Documento.Value := tLancamentos.FieldByName('Numero_Doc').AsString;
                                PagarReceberOrgao.Value            := tLancamentos.FieldByName('Orgao').AsString;
                                PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                PagarReceberTipo_Nota.Value        := 'CM';
                                PagarReceberObservacao.Value       := tLancamentos.FieldByName('Observacao').AsWideString;
                                PagarReceberCustoConta.Value       := ClassificacaoFinanceira.FieldByName('Custo').AsBoolean;
                                PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                PagarReceberTransferencia.Value    := ClassificacaoFinanceira.FieldByName('Transferencia').AsBoolean;
                                PagarReceberData_Documento.Value   := tLancamentos.FieldByName('Vencimento').AsDateTime;
                                PagarReceberData_Vencimento.Value  := tLancamentos.FieldByName('Vencimento').AsDateTime;
                                PagarReceberDesconto.Value         := 0;
                                PagarReceberDesconto_Liquidacao.Value := 0;
                                PagarReceberJuros.Value            := 0;
                                PagarReceberMulta.Value            := 0;
                                PagarReceberValor_Baixado.Value    := 0;
                                PagarReceberValor_Documento.Value  := tLancamentos.FieldByName('Valor').AsCurrency;
                                PagarReceberValor_Operacao.Value   := tLancamentos.FieldByName('Valor').AsCurrency;
                                PagarReceberValor_Parcela.Value    := tLancamentos.FieldByName('Valor').AsCurrency;
                                PagarReceberValor_Total.Value      := tLancamentos.FieldByName('Valor').AsCurrency;
                                PagarReceberProvisorio.Value       := false;
                                PagarReceberRecuperavel.Value      := false;
                                PagarReceberPago_Cliente.Value     := false;
                                PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                   PagarReceber.Post;
                   tNumero.close;
                end;

                tLancamentos.next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          end;
          Janela_Processamento.close;
     end;
end;

procedure TFinanceiro_PagamentosMes.Button1Click(Sender: TObject);
begin
     close;
end;

procedure TFinanceiro_PagamentosMes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Financeiro_PagamentosMes.Release;
      Financeiro_PagamentosMes := nil;
end;

procedure TFinanceiro_PagamentosMes.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_PagamentosMes.FormShow(Sender: TObject);
begin
     with Dados do begin
          tLancamentos.Open;
          tLancamentos.EmptyDataSet;

          LancamentoPadrao.sql.clear;
          LancamentoPadrao.sql.add('SELECT * FROM LancamentoPadrao ORDER BY Descricao');
          LancamentoPadrao.Open;

          while not LancamentoPadrao.eof do begin
                tLancamentos.Append;
                             tLancamentos.FieldByName('Registro').Value      := LancamentoPadrao.FieldByName('Registro').Value;
                             tLancamentos.FieldByName('Descricao').Value     := LancamentoPadrao.FieldByName('Descricao').Value;
                             tLancamentos.FieldByName('Vencimento').Value    := StrtoDate(LancamentoPadraoVencimento.AsString+'/'+iif(MonthOf(Date) < 12, InttoStr(MonthOf(Date)+1), '1')+'/'+InttoStr(YearOf(Date)));
                             tLancamentos.FieldByName('Valor').Value         := LancamentoPadrao.FieldByName('Valor').Value;
                             tLancamentos.FieldByName('Classificacao').Value := LancamentoPadrao.FieldByName('Classificacao').Value;
                             tLancamentos.FieldByName('Centro_Custo').Value  := LancamentoPadrao.FieldByName('Centro_Custo').Value;
                             tLancamentos.FieldByName('Documento').Value     := LancamentoPadrao.FieldByName('Documento').Value;
                             tLancamentos.FieldByName('Fornecedor').Value    := LancamentoPadrao.FieldByName('Fornecedor').Value;
                             tLancamentos.FieldByName('Orgao').Value         := LancamentoPadrao.FieldByName('Orgao').Value;
                             tLancamentos.FieldByName('Cliente').Value       := LancamentoPadrao.FieldByName('Cliente').Value;
                             tLancamentos.FieldByName('Modalidade').Value    := LancamentoPadrao.FieldByName('Modalidade').Value;
                             tLancamentos.FieldByName('Banco').Value         := LancamentoPadrao.FieldByName('Banco').Value;
                             tLancamentos.FieldByName('Observacao').Value    := LancamentoPadrao.FieldByName('Observacao').Value;
                tLancamentos.Post;
                LancamentoPadrao.next;
          end;
          ShowScrollBar(Grade1.handle, SB_VERT, False);
     end;
end;



end.
