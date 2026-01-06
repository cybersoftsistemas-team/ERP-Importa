unit frmFinanceiro_SolicitacaoProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, DB,
    DBAccess, MSAccess, Mask, Grids, RxCurrEdit, MemDS, RxToolEdit;

type
  TFinanceiro_SolicitacaoProcesso = class(TForm)
    lBeneficiario: TStaticText;
    cCliente: TDBLookupComboBox;
    GradeProcessos: TDBGrid;
    Panel4: TPanel;
    bCancelar: TButton;
    bImportar: TButton;
    bTodos: TButton;
    bPesquisar: TButton;
    GradeTitulos: TDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    tNumero: TMSQuery;
    StaticText3: TStaticText;
    cSN: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImportarClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure cClienteClick(Sender: TObject);
    procedure bTodosClick(Sender: TObject);
    procedure GradeProcessosCellClick(Column: TColumn);
    procedure FiltraTitulos;
    procedure GradeProcessosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Financeiro_SolicitacaoProcesso: TFinanceiro_SolicitacaoProcesso;

implementation

uses frmDados, frmJanela_Processamento;

{$R *.dfm}

procedure TFinanceiro_SolicitacaoProcesso.FormShow(Sender: TObject);
begin
      With Dados do begin
//           GradeProcessos.DisableScroll;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;
//           GradeProcessos.EnableScroll;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN( (SELECT DISTINCT Cliente FROM ProcessosDocumentos)))');
           Clientes.Open;

           FiltraTitulos;
      End;
end;

procedure TFinanceiro_SolicitacaoProcesso.bCancelarClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_SolicitacaoProcesso.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_SolicitacaoProcesso.Release;
     Financeiro_SolicitacaoProcesso := nil;
end;

procedure TFinanceiro_SolicitacaoProcesso.bImportarClick(Sender: TObject);
Var
    mSel : Integer;
    mItem:Integer;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
//      If GradeTitulos.SelCount > 0 then
      If GradeTitulos.SelectedRows.Count > 0 then
         Janela_Processamento.Progresso.Max := GradeTitulos.SelectedRows.Count
      else
         Janela_Processamento.Progresso.Max := Dados.PagarReceber.RecordCount;

      Janela_Processamento.lProcesso.Caption  := 'Importando lançamento...Aguarde';
      Janela_Processamento.Show;
      With Dados do begin
//           If GradeTitulos.SelectedRows.Count = 0 then GradeTitulos.SelectAll;
           If GradeTitulos.SelectedRows.Count = 0 then begin
              with GradeTitulos.DataSource.DataSet do begin
                    First;
                    for mItem := 0 to pred(RecordCount) do begin
                        GradeTitulos.SelectedRows.CurrentRowSelected := True;
                        Next;
                    end;
              end;
           end;
           GradeTitulos.SelectedRows.Refresh;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT ISNULL(MAX(Item), 0) AS Item FROM ItensSolicitacao WHERE(Numero = :pNumero)');
           tNumero.ParamByName('pNumero').AsInteger := cSN.AsInteger;
           tNumero.Open;
           mItem := tNumero.FieldByName('Item').AsInteger + 1;
           tNumero.Close;

           For mSel := 0 to GradeTitulos.SelectedRows.Count-1 do begin
               GradeTitulos.DataSource.DataSet.GotoBookMark((GradeTitulos.SelectedRows.Items[mSel]));

               ItensSN.Append;
                       ItensSNNumero.Value          := cSN.AsInteger;
                       ItensSNItem.Value            := mItem;
                       ItensSNClassificacao.Value   := PagarReceberClassificacao.Value;
                       ItensSNCentro_Custo.Value    := PagarReceberCentro_Custo.Value;
                       ItensSNData_Previsao.Value   := SNData_Previsao.Value;
                       ItensSNDocumento.Value       := PagarReceberDocumento.Value;
                       ItensSNData_Documento.value  := PagarReceberData_Documento.Value;
                       ItensSNValor.Value           := PagarReceberValor_Total.Value;
                       ItensSNFornecedor.Value      := PagarReceberFornecedor.Value;
                       ItensSNOrgao.Value           := PagarReceberOrgao.Value;
                       ItensSNData_Vencimento.Value := SNData_Vencimento.Value;
                       ItensSNModalidade_Pgto.Value := PagarReceberModalidade_Pgto.Value;
                       ItensSNCustoConta.Value      := PagarReceberCustoConta.Value;
               ItensSN.Post;
               Inc(mItem);
               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Application.ProcessMessages; 
           End;
          Janela_Processamento.Close;
      End;
      Close;
end;

procedure TFinanceiro_SolicitacaoProcesso.bPesquisarClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa de processos', 'PROCESSO/DI',mPesquisa);
      With Dados do begin
//           GradeProcessos.DisableScroll;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;
//           GradeProcessos.EnableScroll;

           If ProcessosDOC.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              If ProcessosDOC.Locate('Numero_Declaracao', mPesquisa, [loCaseInsensitive]) = False then begin
                 ShowMessage('Nenhum "PROCESSO" encontrado com o número de DI ou Processo informado!');
                 Abort;
              End;
           End;

           If ProcessosDOC.FieldByName('Cliente').AsInteger > 0 then begin
              cCliente.KeyValue := ProcessosDOC.FieldByName('Cliente').AsInteger;
              ProcessosDOC.SQL.Clear;
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Cliente = :pCliente) ORDER BY Processo');
              ProcessosDOC.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
              ProcessosDOC.Open;
           End;
           FiltraTitulos;
      End;
end;

procedure TFinanceiro_SolicitacaoProcesso.cClienteClick(Sender: TObject);
begin
      With Dados do begin
//           GradeProcessos.DisableScroll;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Cliente = :pCliente) ORDER BY Processo');
           ProcessosDOC.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           ProcessosDOC.Open;
//           GradeProcessos.EnableScroll;

           FiltraTitulos;
      End;
end;

procedure TFinanceiro_SolicitacaoProcesso.bTodosClick(Sender: TObject);
begin
      With Dados do begin
           cCliente.KeyValue := 0;

//           GradeProcessos.DisableScroll;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;
//           GradeProcessos.EnableScroll;
      End;
      FiltraTitulos;
end;

procedure TFinanceiro_SolicitacaoProcesso.GradeProcessosCellClick(Column: TColumn);
begin
     FiltraTitulos;
end;

procedure TFinanceiro_SolicitacaoProcesso.FiltraTitulos;
begin
      With Dados do begin
//           GradeTitulos.DisableScroll;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Processo = :pProcesso) AND (CustoConta = 1) AND (Tipo = ''P'') ORDER BY Processo');
           PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo').AsString;
           PagarReceber.Open;
//           GradeTitulos.EnableScroll;
      End;
end;

procedure TFinanceiro_SolicitacaoProcesso.GradeProcessosKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      FiltraTitulos;
end;

end.
