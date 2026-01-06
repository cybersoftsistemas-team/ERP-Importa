unit frmFinanceiro_NFCancelada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, Funcoes;

type
  TFinanceiro_NFCancelada = class(TForm)
    Grade: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    tNotasNota: TIntegerField;
    tNotasData: TDateTimeField;
    tNotasTitulo: TLargeintField;
    tNotasVencimento: TDateTimeField;
    tNotasPedido: TStringField;
    tNotasTotal: TCurrencyField;
    tNotasParcela: TCurrencyField;
    bSelTodos: TButton;
    bSelNenhum: TButton;
    tEmpresas: TMSQuery;
    tNotasFilial: TStringField;
    tNotasNumero_Filial: TIntegerField;
    bEstTit: TButton;
    bEstBx: TButton;
    tTemp: TMSQuery;
    tNotasBaixado: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
    procedure bEstBxClick(Sender: TObject);
    procedure bEstTitClick(Sender: TObject);
  private
    procedure Selecao(Tipo: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_NFCancelada: TFinanceiro_NFCancelada;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TFinanceiro_NFCancelada.bEstBxClick(Sender: TObject);
var
  i:integer;
begin
     if not Permissao('mnFinanceiro_EstornoBaixa') then begin
        MessageDlg('Usuario sem permissão para acessar esta rotina!', mtInformation, [mbOK], 0);
        Abort;
     end;
     if Grade.SelectedRows.Count = 0 then begin
        messagedlg('Nenhum título selecionado para estornar!', mtinformation, [mbok], 0);
        abort;
     end;
     if messagedlg('Atenção!'+#13+#13+'Isso ira estornar todos as baixas feita no título.'+#13+#13+'Deseja realmente estornar as baixas?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
        abort;
     end;
     with tNotas do begin
          DisableControls;
          first;
          while not eof do begin
                // Estorna as baixas do título selecionado.
                if Grade.SelectedRows.CurrentRowSelected then begin           
                   with tTemp do begin
                        try
                           sql.Clear;
                           sql.Add('Delete from PagarReceberBaixas where Numero = :pNumero');
                           paramByName('pNumero').asinteger := tNotas.FieldByName('Titulo').AsInteger;
                           execute;
                           GerarLog('' , 'PagarReceberBaixas', 'ESTORNO', 'Varios', '('+tNotas.FieldByName('Titulo').asstring+') Estorno NF cancelada Título '+tNotas.FieldByName('Titulo').asstring+' - NF '+tNotas.FieldByName('Nota').asstring+' '+tNotas.FieldByName('Data').asstring+' '+tNotas.FieldByName('Filial').asstring+')', '', '', '');
                        finally
                           close;
                        end;
                   end;
                end;
                next;
          end;
          Refresh;
          Selecao(false);
          EnableControls;
     end;
end;

procedure TFinanceiro_NFCancelada.bEstTitClick(Sender: TObject);
var
  i:integer;
begin
     if not Permissao('mnFinanceiro_EstornoBaixa') then begin
        MessageDlg('Usuario sem permissão para acessar esta rotina!', mtInformation, [mbOK], 0);
        Abort;
     end;
     if Grade.SelectedRows.Count = 0 then begin
        messagedlg('Nenhum título selecionado para estornar!', mtinformation, [mbok], 0);
        abort;
     end;
     if messagedlg('Atenção!'+#13+#13+'Isso ira excluir todos os títulos referentes a nota fiscal selecionada.'+#13+#13+'Deseja realmente excluir os títulos?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
        abort;
     end;
     with tNotas do begin
          DisableControls;
          first;
          while not eof do begin
                if Grade.SelectedRows.CurrentRowSelected then begin           
                   with tTemp do begin
                        try
                           // Exclui as baixas dos títulos selecionados.
                           sql.Clear;
                           sql.Add('Delete from PagarReceberBaixas where Numero = :pNumero');
                           paramByName('pNumero').asinteger := tNotas.FieldByName('Titulo').AsInteger;
                           execute;
                           GerarLog('' , 'PagarReceberBaixas', 'ESTORNO', 'Varios', '('+tNotas.FieldByName('Titulo').asstring+') Estorno NF cancelada Título '+tNotas.FieldByName('Titulo').asstring+' - NF '+tNotas.FieldByName('Nota').asstring+' '+tNotas.FieldByName('Data').asstring+' '+tNotas.FieldByName('Filial').asstring+')', '', '', '');
                           // Exclui os títulos selecionados.
                           sql.Clear;
                           sql.Add('Delete from PagarReceber where Numero = :pNumero');
                           paramByName('pNumero').asinteger := tNotas.FieldByName('Titulo').AsInteger;
                           execute;
                           GerarLog('' , 'PagarReceber', 'ESTORNO', 'Varios', '('+tNotas.FieldByName('Titulo').asstring+') Estorno NF cancelada Título '+tNotas.FieldByName('Titulo').asstring+' - NF '+tNotas.FieldByName('Nota').asstring+' '+tNotas.FieldByName('Data').asstring+' '+tNotas.FieldByName('Filial').asstring+')', '', '','');
                        finally
                           close;
                        end;
                   end;
                end;
                next;
          end;
          Refresh;
          Selecao(false);
          EnableControls;
     end;
end;

procedure TFinanceiro_NFCancelada.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TFinanceiro_NFCancelada.bSelNenhumClick(Sender: TObject);
begin
     Selecao(false);
end;

procedure TFinanceiro_NFCancelada.bSelTodosClick(Sender: TObject);
begin
     Selecao(true);
end;

procedure TFinanceiro_NFCancelada.Selecao(Tipo: boolean);
begin
     with tNotas do begin
          DisableControls;
          first;
          while not eof do begin
                Grade.SelectedRows.CurrentRowSelected := Tipo;
                next;
          end;
          first;
          EnableControls;
     end;
end;

procedure TFinanceiro_NFCancelada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Financeiro_NFCancelada.Release;
     Financeiro_NFCancelada := nil;
end;

procedure TFinanceiro_NFCancelada.FormShow(Sender: TObject);
begin
     with Dados do begin
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pEmp');
               parambyname('pEmp').asinteger := Menu_Principal.mEmpresa;
               open;
          end;
          Configuracao.Open;
     end;
     with tEmpresas do begin
          sql.Clear;
          sql.Add('select Banco_Dados, Numero_Filial, Filial = iif(Numero_Filial = 0, ''MATRIZ'', ''FILIAL ''+cast(Numero_Filial as varchar(2))) from Empresas where substring(CNPJ, 1, 8) = :pCNPJ order by isnull(Numero_Filial, 0)');
          parambyname('pCNPJ').asstring := copy(Dados.Empresas.fieldbyname('CNPJ').AsString, 1, 8);
          open;
     end;
     with tNotas do begin
          tEmpresas.First;
          sql.Clear;
          while not tEmpresas.Eof do begin
                sql.Add('select Nota = Numero');
                sql.Add('      ,Data = Data_Emissao');
                sql.Add('      ,Titulo = (select Numero from PagarReceber pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao)');
                sql.Add('      ,Vencimento = (select Data_Vencimento from PagarReceber pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao)');
                sql.Add('      ,Parcela = (select Valor_Parcela from PagarReceber pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao)');
                sql.Add('      ,Pedido = Pedido_Representante');
                sql.Add('      ,Total = Valor_TotalNota');
                sql.Add('      ,Numero_Filial = '+tEmpresas.FieldByName('Numero_Filial').asstring);
                sql.Add('      ,Filial = '+quotedstr(tEmpresas.FieldByName('Filial').asstring));
                sql.Add('      ,Baixado = cast((select count(Numero) from PagarReceberBaixas prb where prb.Numero = (select Numero from PagarReceber pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao)) as bit)');
                sql.Add('from '+tEmpresas.fieldbyname('Banco_Dados').AsString+'.dbo.NotasFiscais nf');
                sql.Add('where isnull(nf.Cancelada, 0) = 1');
                sql.Add('and (select Numero from PagarReceber pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and Data_Documento = Data_Emissao) > 0');
                tEmpresas.next;
                if not tEmpresas.eof then sql.Add('union all');
          end;
          sql.Add('order by Numero_Filial, Data, Nota');
          //sql.SaveToFile('c:\temp\Financeiro_Notas_Canceladas.sql');
          open;
     end;
end;

end.
