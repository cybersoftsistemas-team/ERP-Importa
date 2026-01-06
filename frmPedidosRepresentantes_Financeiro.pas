unit frmPedidosRepresentantes_Financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DB, DBAccess, MSAccess, RxLookup, DBCtrls, DateUtils, MemDS, system.UITypes;

type
  TPedidosRepresentantes_Financeiro = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bLancamentos: TButton;
    tNumero: TMSQuery;
    cClassCom: TRxDBLookupCombo;
    StaticText33: TStaticText;
    cBanco: TDBLookupComboBox;
    cCentroCusto: TDBLookupComboBox;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText4: TStaticText;
    tComissao: TMSQuery;                                                                        
    tPedidos: TMSQuery;
    cClassSem: TRxDBLookupCombo;
    StaticText1: TStaticText;
    tTemp: TMSQuery;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bLancamentosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPedidos: widestring;
  end;

var
  PedidosRepresentantes_Financeiro: TPedidosRepresentantes_Financeiro;

implementation

uses frmDados, frmMenu_Principal, frmFinanceiro_PedidosRepresentantes, Funcoes, frmJanela_Processamento, frmPedido_RepresentantesSimp;

{$R *.dfm}

procedure TPedidosRepresentantes_Financeiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     PedidosRepresentantes_Financeiro.release;
     PedidosRepresentantes_Financeiro := nil
end;

procedure TPedidosRepresentantes_Financeiro.FormShow(Sender: TObject);
begin
      with Dados do begin
           Configuracao.Open;
           with Empresas do begin
                SQL.Clear;
                SQL.Add('select * from Empresas order by Razao_Social');
                Open;
           end;
           with ClassificacaoFinanceira do begin
                SQL.Clear;
                SQL.Add('select * from ClassificacaoFinanceira where isnull(Desativada, 0) = 0 and Tipo = ''R'' order by Descricao');
                Open;
                cClassCom.KeyValue := Configuracao.FieldByName('Classificacao_RecebimentoComBol').AsString;
                cClassSem.KeyValue := Configuracao.FieldByName('Classificacao_RecebimentoSemBol').AsString;
           end;
           with Bancos do begin
                SQL.Clear;
                SQL.Add('select * from Bancos order BY Nome');
                Open;
           end;
           with CentroCusto do begin
                SQL.Clear;
                SQL.add('select * from CentroCusto');
                Open;
           end;
      end;
end;

procedure TPedidosRepresentantes_Financeiro.RxDBLookupCombo1Change(Sender: TObject);
begin
      with Dados do begin
           if Bancos.locate('Empresa', Empresas.FieldByName('Codigo').AsInteger, [loCaseInsensitive]) then begin
              cBanco.KeyValue := Bancos.FieldByName('Codigo').AsInteger;
           end;
      end;
end;

procedure TPedidosRepresentantes_Financeiro.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedidosRepresentantes_Financeiro.bLancamentosClick(Sender: TObject);
var
   p
  ,mUltimoDia  
  ,mVinculo: integer;
   mValParc: Real;
   mVenc: TDate;
begin
     mVinculo := 0;
     bLancamentos.Enabled := false;
     if MessageDlg('Deseja realmente gerar os lançamentos no financeiro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        bLancamentos.Enabled := true;
        Abort;
     end;

     Screen.Cursor := crSQLWait;
     with tNumero do begin
          SQL.Clear;
          SQL.Add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
     end;

     with Dados, tPedidos do begin
          sql.clear;
          sql.Add('select *');
          sql.Add('      ,Pessoa = iif(isnull(Cliente_CNPJ, '''') <> '''', ''J'', ''F'')');
          sql.add('from PedidosRepresentantes');
          sql.add('where Pedido in('+mPedidos+')');
          sql.add('and Local = 3');
          open;
          
          // Verificando se a classificação financeira da comissão esta informada nas configurações.
          if trim(Configuracao.FieldByName('Classificacao_Pagamento').asstring) = '' then begin
             if MessageDlg('Classificação financeiro de comissão a pagar não informada nas configurações!'+#13+#13+'Deseja gerar o lançamento financeiro mesmo assim', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                Screen.Cursor := crDefault;
                Abort;
             end;
          end;
          // Verificando se o representante esta com o código informado no cadastro do Fornecedor.
          Fornecedores.Open;
          if not Fornecedores.Locate('Representante_Codigo', tPedidos.FieldByName('Representante').AsInteger, [loCaseInsensitive]) then begin
             MessageDlg('Código do representante não encontrado no cadastro dos fornecedores!'+#13+#13+'Lançamentos não serão gerados.', mtError, [mbok], 0);
             Screen.Cursor := crDefault;
             Abort;
          end;
          with PagarReceber do begin
               SQL.Clear;
               SQL.Add('select * from PagarReceber where Numero = (select isnull(max(Numero), 0)+1 from PagarReceber)');
               Open;
          end;
          
          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Max      := RecordCount;
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.lProcesso.Caption  := 'Gerando os lançamentos no financeiro...Aguarde';
          Janela_Processamento.Show;
          
          while not eof do begin
                with tTemp do begin
                     sql.Clear;
                     sql.Add('select isnull(count(*), 0) as Qtde from PagarReceber where Fiscal = :pFiscal');
                     parambyname('pFiscal').AsString := tPedidos.FieldByName('Pedido').asstring;
                     open;
                end;
                if tTemp.fieldbyName('Qtde').AsInteger = 0 then begin
                   with ModalidadesPgto do begin  
                        sql.clear;
                        sql.add('select * from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = :pCod');
                        parambyname('pCod').AsInteger := tPedidos.Fieldbyname('Modalidade_Pagamento').AsInteger;
                        Open;
                   end;
                   mValParc := FieldByName('Total_Pedido').ascurrency / ModalidadesPgto.FieldByName('Numero_Parcelas').AsInteger;
                   mVenc    := strtodate(datetostr(FieldByName('Data').value)) + ModalidadesPgto.FieldByName('Prazo_Primeira').AsInteger;
                   if mValParc > 0 then begin
                      for p := 1 to ModalidadesPgto.FieldByName('Numero_Parcelas').AsInteger do begin
                          if p > 1 then begin
                             mVenc := mVenc + ModalidadesPgto.FieldByName('Prazo_Demais').AsInteger;
                          end;

                          // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                          if ModalidadesPgto.FieldByName('Prazo_Dia').AsInteger <= 0 then begin
                             if (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                                if (DayOfWeek(mVenc) = 1) then begin
                                   if (Dados.ConfiguracaoDia_Util.Value = '-') then
                                      mVenc := mVenc -2
                                   else
                                      mVenc := mVenc +1;
                                end;
                                if (DayOfWeek(mVenc) = 7) then begin
                                   If (Dados.ConfiguracaoDia_Util.Value = '-') then
                                      mVenc := mVenc -1
                                   else
                                      mVenc := mVenc +2;
                                end;
                             end;
                          end else begin
                             if MonthOf(mVenc) < 12 then
                                mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(MonthOf(mVenc)+1)+'/'+InttoStr(YearOf(mVenc)))))
                             else
                                mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/01/'+InttoStr(YearOf(mVenc)+1))));

                             if p > 1 then begin
                                if mUltimoDia > ModalidadesPgto.FieldByName('Dia_Fixo').AsInteger then begin
                                   if MonthOf(mVenc) < 12 then
                                      mVenc := StrtoDate(InttoStr(ModalidadesPgto.FieldByName('Dia_Fixo').AsInteger)+'/'+InttoStr(MonthOf(mVenc)+1)+'/'+InttoStr(YearOf(mVenc)))
                                   else
                                      mVenc := StrtoDate(InttoStr(ModalidadesPgto.FieldByName('Dia_Fixo').AsInteger)+'/01/'+InttoStr(YearOf(mVenc)+1))
                                end else begin
                                   if MonthOf(mVenc) < 12 then
                                      mVenc := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(MonthOf(mVenc)+1)+'/'+InttoStr(YearOf(mVenc)))
                                   else
                                      mVenc := StrtoDate(InttoStr(mUltimoDia)+'/01/'+InttoStr(YearOf(mVenc)+1))
                                end;
                             end;
                          end;

                          tNumero.Open;
                          if p = 1 then mVinculo := tNumero.FieldByName('Numero').AsInteger;
                   
                          with PagarReceber do begin
                               Append;
                                    fieldbyname('Numero').Value           := tNumero.FieldByName('Numero').AsInteger;
                                    fieldbyname('Vinculo').Value          := mVinculo;
                                    fieldbyname('Tipo').Value             := 'R';
                                    if tPedidos.FieldByName('Gera_Boleto').asboolean then begin
                                       fieldbyname('Classificacao').Value := Configuracao.FieldByName('Classificacao_RecebimentoComBol').Value;
                                    end else begin
                                       fieldbyname('Classificacao').Value := Configuracao.FieldByName('Classificacao_RecebimentoSemBol').Value;
                                    end;
                                    fieldbyname('Cliente').Value          := tPedidos.FieldByName('Cliente').AsInteger;
                                    fieldbyname('Data_Documento').Value   := tPedidos.FieldByName('Data').Value;
                                    fieldbyname('Data_Vencimento').Value  := mVenc;
                                    fieldbyname('Valor_Documento').Value  := tPedidos.FieldByName('Total_Pedido').Value;
                                    fieldbyname('Valor_Parcela').Value    := mValParc;
                                    fieldbyname('Multa').Value            := 0;
                                    fieldbyname('Juros').Value            := 0;
                                    fieldbyname('Desconto').Value         := 0;
                                    fieldbyname('Valor_Total').Value      := mValParc;
                                    fieldbyname('Valor_Operacao').Value   := mValParc;
                                    fieldbyname('Documento').Value        := 'NF';
                                    fieldbyname('Numero_Documento').Value := tPedidos.FieldByName('Pedido').Value+'/'+PoeZero(2, p);
                                    fieldbyname('CustoConta').Value       := ClassificacaoFinanceiraCusto.value;
                                    fieldbyname('Custo_Seletivo').Value   := ClassificacaoFinanceiraCusto_Seletivo.value;
                                    fieldbyname('Custo_Entrada').Value    := ClassificacaoFinanceiraCusto_Entrada.value;
                                    fieldbyname('Fiscal').Value           := tPedidos.FieldByName('Pedido').Value;
                                    fieldbyname('Nivel').Value            := ClassificacaoFinanceiraNivel.Value;
                                    fieldbyname('Tipo_Nota').Value        := 'PD';
                                    fieldbyname('Observacao').Value       := concat('Pedido: ', tpedidos.fieldbyname('Origem_Pedido').asstring, ' ', tPedidos.FieldByName('Pedido').AsString, ' de ', tPedidos.FieldByName('Data').AsString, ' - Cliente: ', tPedidos.FieldByName('Cliente_Nome').Value);
                                    fieldbyname('Empresa').Value          := Menu_Principal.mEmpresa;
                                    fieldbyname('Banco').Value            := Bancos.FieldByName('Codigo').Value;
                                    fieldbyname('Centro_Custo').Value     := CentroCustoCodigo.Value;
                               Post;
                               LogDados(PagarReceber, 'Gerado contas a Receber (Titulo: '+tNumero.FieldByName('Numero').asstring+') - Parcela '+poezero(3, p)+' do Pedido '+tPedidos.FieldByName('Pedido').Value, dsInsert);                               
                          end;
                          tNumero.Close;

                          // Atualiza o limite de crédito do cliente.
                          with Clientes do begin
                               SQL.Clear;
                               SQL.Add('select * from Clientes where Codigo = :pCodigo');
                               ParamByName('pCodigo').value := tPedidos.fieldbyname('Cliente').AsInteger;
                               open;
                               edit;
                                  FieldByName('Limite_Utilizado').Value := FieldByName('Limite_Utilizado').Value + mValparc;
                               post;
                          end;
                      end;
                
                      // Gera as comissões a pagar aos representantes.
                      if trim(Configuracao.FieldByName('Classificacao_Pagamento').asstring) <> '' then begin
                         with tComissao do begin
                              if Fornecedores.Locate('Representante_Codigo', tPedidos.FieldByName('Representante').AsInteger, [loCaseInsensitive]) then begin
                                 sql.Clear;
                                 sql.Add('select Pedido');
                                 sql.Add('      ,Tabela_Comissao');
                                 sql.Add('      ,Valor    = sum(Valor_Unitario * Quantidade)');
                                 sql.Add('      ,Comissao = (select Comissao from TabelaComissoes where Codigo = Tabela_Comissao)');
                                 sql.Add('from  PedidosRepresentantesItens ');
                                 sql.Add('where Pedido = :pPed');
                                 sql.Add('and   Tabela_Comissao > 0');
                                 sql.Add('group by Pedido, Tabela_Comissao');
                                 parambyname('pPed').value := tPedidos.FieldByName('Pedido').asstring;
                                 //sql.SaveToFile('c:\temp\Comissao.sql');
                                 open;

                                 mValParc := 0;
                                 while not eof do begin
                                       mValParc := mValparc + Percentual(tComissao.FieldByName('Valor').ascurrency, tComissao.FieldByName('Comissao').asfloat);
                                       next;
                                 end;

                                 tNumero.Open;
                                 with PagarReceber do begin
                                      Append;
                                           fieldbyname('Numero').Value           := tNumero.FieldByName('Numero').AsInteger;
                                           fieldbyname('Vinculo').Value          := mVinculo;
                                           fieldbyname('Tipo').Value             := 'P';
                                           fieldbyname('Classificacao').Value    := iif(tPedidos.Fieldbyname('Pessoa').AsString = 'J', Configuracao.FieldByName('Classificacao_Pagamento').Value, Configuracao.FieldByName('Classificacao_PagamentoPF').Value);
                                           fieldbyname('Fornecedor').Value       := Fornecedores.FieldByName('Codigo').AsInteger;
                                           fieldbyname('Data_Documento').Value   := tPedidos.FieldByName('Data').Value;
                                           fieldbyname('Data_Vencimento').Value  := mVenc;
                                           fieldbyname('Valor_Documento').Value  := mValParc;
                                           fieldbyname('Valor_Parcela').Value    := mValParc;
                                           fieldbyname('Multa').Value            := 0;
                                           fieldbyname('Juros').Value            := 0;
                                           fieldbyname('Desconto').Value         := 0;
                                           fieldbyname('Valor_Total').Value      := mValParc;
                                           fieldbyname('Valor_Operacao').Value   := mValParc;
                                           fieldbyname('Documento').Value        := Configuracao.FieldByName('Tipo_DocumentoPagamento').Value; 
                                           fieldbyname('Numero_Documento').Value := tPedidos.FieldByName('Pedido').Value;
                                           fieldbyname('CustoConta').Value       := ClassificacaoFinanceiraCusto.value;
                                           fieldbyname('Custo_Seletivo').Value   := ClassificacaoFinanceiraCusto_Seletivo.value;
                                           fieldbyname('Custo_Entrada').Value    := ClassificacaoFinanceiraCusto_Entrada.value;
                                           fieldbyname('Fiscal').Value           := tPedidos.FieldByName('Pedido').Value;
                                           fieldbyname('Nivel').Value            := ClassificacaoFinanceiraNivel.Value;
                                           fieldbyname('Tipo_Nota').Value        := 'PD';
                                           fieldbyname('Observacao').Value       := concat('Pedido: ', tpedidos.fieldbyname('Origem_Pedido').asstring, ' ', tPedidos.FieldByName('Pedido').AsString, ' de ', tPedidos.FieldByName('Data').AsString, ' - Cliente: ', tPedidos.FieldByName('Cliente_Nome').Value);
                                           fieldbyname('Empresa').Value          := Menu_Principal.mEmpresa;
                                           fieldbyname('Banco').Value            := Bancos.FieldByName('Codigo').Value;
                                           fieldbyname('Centro_Custo').Value     := Configuracao.FieldByName('Centro_CustoPagamento').Value; 
                                      Post;
                                      LogDados(PagarReceber, 'Gerado contas a Pagar (Titulo: '+tNumero.FieldByName('Numero').asstring+') - Comissão do Pedido '+tPedidos.FieldByName('Pedido').Value, dsInsert);                               
                                 end;
                                 tNumero.Close;
                              end;
                         end;
                      end;
                   end;
                end;
                
                // Fazendo consistência de quantidade de parcelas geradas no financeiro.
                with tTemp do begin
                     sql.Clear;
                     sql.Add('select Qtde = count(*) from PagarReceber where Fiscal = :pFiscal and Tipo = ''R'' ');
                     parambyname('pFiscal').AsString := tPedidos.FieldByName('Pedido').asstring;
                     open;
                     if fieldbyname('Qtde').AsInteger = ModalidadesPgto.FieldByName('Numero_Parcelas').AsInteger then begin
                        // Mudando o status dos pedidos se gerou todos os títulos.
                        sql.clear;
                        sql.Add('update PedidosRepresentantes set Local = 5');
                        sql.Add('                                ,Situacao = ''FATURADO'' ');
                        sql.Add('                                ,Sel = 0');
                        sql.Add('                                ,Faturado = 1');
                        sql.Add('                                ,Data_Faturamento = getdate()');
                        sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
                        sql.Add('where Pedido = :pPedido');
                        parambyname('pPedido').AsString := tPedidos.FieldByName('Pedido').asstring;
                        execute;
                     end else begin
                        // Apaga os titulos gerados em caso de não ter gerado todas as parcelas.
                        sql.clear;
                        sql.Add('delete from PagarReceber where Fiscal = :pFiscal');
                        parambyname('pFiscal').AsString := tPedidos.FieldByName('Pedido').asstring;
                        execute;
                        MessageDlg('Houve erro ao gerar as parcelas no financeiro do Pedido: '+ tPedidos.FieldByName('Pedido').asstring+#13+#13+'Gere o financeiro do título novamente.', mtError, [mbok], 0);
                     end;
                end;
                
                next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          end;
     end;
     
     Janela_Processamento.close;
     Screen.Cursor := crDefault;
     MessageDlg('Lançamentos gerados no financeiro.', mtInformation, [mbOK], 0);
     bLancamentos.Enabled := true;
     bSair.Click;
end;



end.
