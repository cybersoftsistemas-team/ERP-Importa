unit frmPedido_RepresentanteDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Funcoes, system.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, RxToolEdit, RxCurrEdit;

type
  TPedido_RepresentanteDevolucao = class(TForm)
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    Panel1: TPanel;
    lNome: TStaticText;
    cQtde: TDBEdit;
    tTemp: TMSQuery;
    bGerar: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    tPed: TMSQuery;
    cTotalPed: TCurrencyEdit;
    cTotalDev: TCurrencyEdit;
    bTotal: TButton;
    tTitulo: TLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bGerarClick(Sender: TObject);
    procedure bTotalClick(Sender: TObject);
  private
    procedure Totaliza;
    { Private declarations }
  public
    { Public declarations }
    mPedido : string;
  end;

var
  Pedido_RepresentanteDevolucao: TPedido_RepresentanteDevolucao;

implementation

{$R *.dfm}

uses frmDados, frmdmFiscal, frmMenu_Principal;

procedure TPedido_RepresentanteDevolucao.bGerarClick(Sender: TObject);
begin
     with Dados do begin
          with PagarReceber do begin
               // Verifica se a classificação esta informada nas configurações.
               Configuracao.Open;
               if trim(Configuracao.FieldByName('Classificacao_DevolucaoPedido').AsString) = '' then begin
                  messagedlg('Erro!'+#13+#13+'Não foi informada a "Classificacao Financeira" para crédito de devoluções em configurações.'+#13+#13+'Lançamento financeiro não sera gerado.', mtError, [mbok], 0);
                  abort;
               end;
               with PedidosRepresentantes do begin;
                    sql.Clear;
                    sql.Add('select * from PedidosRepresentantes where Pedido = :pPed');
                    parambyname('pPed').AsString := PedidosRepresentantesItens.FieldByName('Pedido').AsString;
                    open;
                    // Verifica se ja houve baixa no titulo criado anteriormente.
                    if fieldbyname('Numero_Financeiro').AsInteger > 0 then begin
                       with tTemp do begin
                            sql.Clear;
                            sql.Add('select isnull(count(*), 0) as Qtde from PagarReceberBaixas where Numero = :pNum');
                            parambyname('pNum').AsInteger := PedidosRepresentantes.FieldByName('Numero_Financeiro').AsInteger;
                            open;
                            if fieldbyname('qtde').AsInteger > 0 then begin
                               messagedlg('Erro!'+#13+#13+'Este pedido ja foi baixado no financeiro.'+#13+#13+'Lançamento financeiro não sera gerado.', mtError, [mbok], 0);
                               abort;
                            end;
                       end;
                    end;
               end;
               with tPed do begin
                    sql.Clear;
                    sql.Add('select Pedido');
                    sql.Add('      ,Data');
                    sql.add('      ,Cliente');
                    sql.add('      ,Origem_Pedido');
                    sql.Add('from  PedidosRepresentantes');
                    sql.add('where Pedido = :pPed');
                    parambyname('pPed').AsString := PedidosRepresentantesItens.FieldByName('Pedido').AsString;
                    open
               end;
               with tTemp do begin
                    sql.Clear;
                    sql.Add('delete from PagarReceber where Numero = :pNum');
                    parambyname('pNum').AsInteger := PedidosRepresentantes.FieldByName('Numero_Financeiro').AsInteger;
                    execute;
               end;
               with tTemp do begin
                    sql.Clear;
                    sql.Add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
                    open;
               end;

               sql.Clear;
               sql.Add('select top 1 * from PagarReceber order by Numero desc');
               open;
               Append;
                    fieldbyname('Numero').Value           := tTemp.FieldByName('Numero').AsInteger;
                    fieldbyname('Tipo').Value             := 'P';
                    fieldbyname('Classificacao').Value    := Configuracao.FieldByName('Classificacao_DevolucaoPedido').AsString;
                    fieldbyname('Cliente').Value          := tPed.FieldByName('Cliente').value;
                    fieldbyname('Data_Documento').Value   := tPed.FieldByName('Data').Value;
                    fieldbyname('Data_Vencimento').Value  := Date;
                    fieldbyname('Valor_Documento').Value  := cTotalDev.value;
                    fieldbyname('Valor_Parcela').Value    := cTotalDev.value;
                    fieldbyname('Multa').Value            := 0;
                    fieldbyname('Juros').Value            := 0;
                    fieldbyname('Desconto').Value         := 0;
                    fieldbyname('Valor_Total').Value      := cTotalDev.value;
                    fieldbyname('Valor_Operacao').Value   := cTotalDev.value;
                    fieldbyname('Documento').Value        := 'PD';
                    fieldbyname('Numero_Documento').Value := tPed.FieldByName('Pedido').Value;
                    fieldbyname('CustoConta').Value       := ClassificacaoFinanceiraCusto.value;
                    fieldbyname('Custo_Seletivo').Value   := ClassificacaoFinanceiraCusto_Seletivo.value;
                    fieldbyname('Custo_Entrada').Value    := ClassificacaoFinanceiraCusto_Entrada.value;
                    fieldbyname('Fiscal').Value           := tPed.FieldByName('Pedido').Value;
                    fieldbyname('Nivel').Value            := ClassificacaoFinanceiraNivel.Value;
                    fieldbyname('Tipo_Nota').Value        := 'PD';
                    fieldbyname('Observacao').Value       := concat('Devolução de Pedido: ', tPed.fieldbyname('Origem_Pedido').asstring, ' ', tPed.FieldByName('Pedido').AsString, ' de ', tPed.FieldByName('Data').AsString);
                    fieldbyname('Empresa').Value          := Menu_Principal.mEmpresa;
                    fieldbyname('Centro_Custo').Value     := CentroCustoCodigo.Value;
               Post;

               with PedidosRepresentantes do begin;
                    edit;
                       fieldbyname('Numero_Financeiro').Value := tTemp.FieldByName('Numero').AsInteger;
                    post;
               end;
               GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'DEVOLUÇÃO' , '', 'Gerado contas a Pagar/Receber de devolução de Pedido '+tPed.FieldByName('Pedido').AsString, '', '', '');
               MessageDlg('Lançamento de devolução gerado no financeiro.', mtInformation, [mbOK], 0);
          end;
          tTemp.Close;
     end;
end;

procedure TPedido_RepresentanteDevolucao.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_RepresentanteDevolucao.bTotalClick(Sender: TObject);
begin
     with tTemp do begin
          sql.Clear;
          sql.Add('update PedidosRepresentantesItens set Quantidade_Devol = Quantidade where Pedido = :pPed');
          parambyname('pPed').AsString := mPedido;
          execute;
          Dados.PedidosRepresentantesItens.refresh;
     end;
end;

procedure TPedido_RepresentanteDevolucao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pedido_RepresentanteDevolucao.Release;
     Pedido_RepresentanteDevolucao := nil;
end;

procedure TPedido_RepresentanteDevolucao.FormShow(Sender: TObject);
begin
     tTitulo.Caption := 'DEVOLUÇÃO DE MERCADORIAS [PEDIDO: '+mPedido+']';
     with Dados, PedidosRepresentantesItens do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('      ,Descricao_Mercadoria = (select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = Codigo_Mercadoria)');
          sql.Add('      ,Estoque_Minimo       = (SELECT Estoque_Minimo FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
          sql.Add('      ,Valor_Total          = Valor_Unitario * Quantidade');
          sql.add('from PedidosRepresentantesItens');
          sql.add('where Pedido = :pPedido');
          sql.add('order by Item');
          parambyname('pPedido').AsString := mPedido;
          open;
     end;
     Totaliza;
end;

procedure TPedido_RepresentanteDevolucao.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     if Button = nbPost then begin
        if MessageDlg('Deseja realmente salvar as modificações?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin 
           Abort;
        end;
     end;
end;

procedure TPedido_RepresentanteDevolucao.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i:integer;
begin
      Screen.Cursor := crSQLWait;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel1.Enabled := true;
         cQtde.SetFocus;
      end;
      if Button = nbPost then Begin
         with Dados, dmFiscal, ProdutosTransferencia do begin
              // Deleta o item selecionado para evitar duplicação.
              tTemp.SQL.Clear;
              tTemp.SQL.Add('delete from ProdutosTransferencia where Pedido = :pPed and Produto_Entrada = :pProd and Motivo = ''D'' ');
              tTemp.ParamByName('pPed').AsString   := PedidosRepresentantesItens.fieldbyname('Pedido').asstring;
              tTemp.ParamByName('pProd').Asinteger := PedidosRepresentantesItens.fieldbyname('Codigo_Mercadoria').asinteger;
              tTemp.execute;
              // Gerando o registro de entrada no estoque com a quantidade da devolução informada.
              if PedidosRepresentantesItens.fieldbyname('Quantidade_Devol').asfloat > 0 then Begin
                 tTemp.SQL.Clear;
                 tTemp.SQL.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
                 tTemp.Open;
           
                 open;
                 Append;
                      fieldbyname('Registro').value           := tTemp.FieldByName('Registro').AsInteger;
                      fieldbyname('Produto_Entrada').value    := PedidosRepresentantesItens.fieldbyname('Codigo_Mercadoria').AsInteger;
                      fieldbyname('Quantidade').value         := PedidosRepresentantesItens.fieldbyname('Quantidade_Devol').asfloat;
                      fieldbyname('Inventario').value         := true;
                      fieldbyname('Data_Transferencia').value := date; 
                      fieldbyname('Observacao').value         := 'Devolução referente a pedido de venda ('+ PedidosRepresentantesItens.fieldbyname('Pedido').asstring+')';
                      fieldbyname('Estoque').value            := true;
                      fieldbyname('Motivo').value             := 'D';
                      fieldbyname('Valor_Unitario').value     := PedidosRepresentantesItens.fieldbyname('Valor_Unitario').ascurrency;
                      fieldbyname('Quantidade_Entrada').value := PedidosRepresentantesItens.fieldbyname('Quantidade_Devol').asfloat;
                      fieldbyname('Pedido').value             := PedidosRepresentantesItens.fieldbyname('Pedido').asstring;
                 Post;
                 close;
              end;
         end;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel1.Enabled := false;
         Totaliza;
      end;
      
      Screen.Cursor := crDefault;
end;

procedure TPedido_RepresentanteDevolucao.Totaliza;
begin
     with tTemp do begin 
          sql.clear;
          sql.add('select Total_Dev = sum(Valor_Unitario * isnull(Quantidade_Devol, 0))');
          sql.add('      ,Total_Ped = sum(Valor_Unitario * isnull(Quantidade, 0))');
          sql.add('from   PedidosRepresentantesItens ');
          sql.add('where  Pedido = :pPed');
          parambyname('pPed').AsString := mPedido;
          open;
          cTotalPed.value := fieldbyname('Total_Ped').asCurrency;
          cTotalDev.value := fieldbyname('Total_Dev').asCurrency;
     end;
end;



end.
