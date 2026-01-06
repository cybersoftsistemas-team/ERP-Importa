unit frmPedido_TelevendasItensComb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ClipBrd, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RxCurrEdit, RxToolEdit,
  RxDBCtrl, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, RxLookup, Vcl.Buttons, MemDS, DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, system.UITypes, Vcl.ExtCtrls;

type
  TPedido_TelevendasItensComb = class(TForm)
    GroupBox1: TGroupBox;
    Image6: TImage;
    Label1: TLabel;
    lTotal: TLabel;
    Panel3: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    gItens: TGroupBox;
    GradeItens: TDBGrid;
    tPesquisa: TMSQuery;
    tEstoque: TMSQuery;
    tItem: TMSQuery;
    tTotal: TMSQuery;
    Panel4: TPanel;
    bPesquisa: TSpeedButton;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    cProduto: TRxDBLookupCombo;
    cQuantidade: TDBEdit;
    StaticText8: TStaticText;
    cValor: TDBEdit;
    StaticText9: TStaticText;
    DBEdit12: TDBEdit;
    StaticText13: TStaticText;
    cCodigo: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    cMinimo: TCurrencyEdit;
    cDisponivel: TCurrencyEdit;
    DBEdit5: TDBEdit;
    StaticText14: TStaticText;
    cItem: TDBEdit;
    StaticText1: TStaticText;
    tTemp: TMSQuery;
    cTotal: TCurrencyEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cPremio: TCurrencyEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    cArmazem: TCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure cQuantidadeChange(Sender: TObject);
    procedure NavegaBforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure cValorExit(Sender: TObject);
  private
    procedure ApuraEstoque;
    procedure Totaliza;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_TelevendasItensComb: TPedido_TelevendasItensComb;

implementation

{$R *.dfm}

uses frmDados, frmPesquisaGerais, Funcoes;

procedure TPedido_TelevendasItensComb.bPesquisaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Produtos pd';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao_Reduzida';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Desativado, 0) = 0'+
                                'and ISNULL(Desativado, 0) = 0'+
                                'and (((isnull((select sum(Quantidade) from NotasItens NI where NI.Codigo_Mercadoria = PD.Codigo AND Saida_Entrada = 0 AND Movimenta_Estoque = 1 AND Cancelada <> 1 AND ISNULL(NI.Nfe_Denegada, 0) = 0), 0) +'+
                                '      isnull((select sum(Quantidade) from NotasTerceirosItens NTI where NTI.Codigo_Mercadoria = PD.Codigo AND Movimenta_Estoque = 1), 0) +'+
                                '      isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada = PD.Codigo ), 0)) -'+
                                '      (isnull((select sum(Quantidade) from NotasItens NI where NI.Codigo_Mercadoria = PD.Codigo AND Saida_Entrada = 1 AND Movimenta_Estoque = 1 AND Cancelada <> 1 AND ISNULL(NI.Nfe_Denegada, 0) = 0), 0) -'+
                                '      isnull((select sum(Quantidade) from PedidosItens PI where PI.Codigo_Mercadoria = PD.Codigo AND Saida_Entrada = 1 AND Movimenta_Estoque = 1 ), 0)) -'+
                                '      isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida = PD.Codigo ), 0) -'+
                                '      isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria = PD.Codigo AND ISNULL(Faturamento, 0) = 0 AND ISNULL(Faturado, 0) = 0'+
                                '                                                                           and (SELECT Cancelado FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido) = 0), 0))'+
                                ') > 0';
      PesquisaGerais.Showmodal;
      Dados.PedidosRepresentantesItensCodigo_Mercadoria.Value := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TPedido_TelevendasItensComb.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_TelevendasItensComb.cCodigoExit(Sender: TObject);
begin
     with Dados, PedidosRepresentantesItens do begin
          fieldbyname('Valor_Minimo').value := ProdutosPreco_Minimo.asfloat;
          if fieldbyname('Valor_Unitario').ascurrency <= 0 then begin
             fieldbyname('Valor_Unitario').value := ProdutosPreco_Minimo.asfloat;
          end;
          cPremio.value := fieldbyname('Valor_Unitario').asfloat - ProdutosPreco_Minimo.asfloat;
          ApuraEstoque;
     end;
end;

procedure TPedido_TelevendasItensComb.cQuantidadeChange(Sender: TObject);
begin
     with Dados, PedidosRepresentantesItens do begin
          cTotal.Value  := fieldbyname('Valor_Unitario').asfloat * fieldbyname('Quantidade').asfloat;
          cPremio.value := fieldbyname('Valor_Unitario').asfloat - ProdutosPreco_Minimo.asfloat;
     end;
end;

procedure TPedido_TelevendasItensComb.cValorExit(Sender: TObject);
begin
     with Dados, PedidosRepresentantesItens do begin
          cTotal.Value  := fieldbyname('Valor_Unitario').asfloat * fieldbyname('Quantidade').asfloat;
          cPremio.value := fieldbyname('Valor_Unitario').asfloat - ProdutosPreco_Minimo.asfloat;
     end;
end;

procedure TPedido_TelevendasItensComb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      // Totalizando o pedido.
      With Dados do begin
           with tTotal do begin
                SQL.Clear;
                SQL.Add('select Total   = sum(isnull(Valor_Unitario, 0) * Quantidade)');
                SQL.Add('      ,Volumes = sum(isnull(Quantidade, 0))');
                SQL.Add('from   PedidosRepresentantesItens');
                SQL.Add('where  Pedido = :pPedido');
                ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                Open;
                PedidosRepresentantes.edit;
                                      PedidosRepresentantesTotal_Pedido.value         := FieldByName('Total').AsCurrency;
                                      PedidosRepresentantesTotal_PedidoOriginal.value := FieldByName('Total').AsCurrency;
                                      PedidosRepresentantesVolume_Quantidade.value    := FieldByName('Volumes').value;
                PedidosRepresentantes.post;
           end;
      End;

      Pedido_TelevendasItensComb.Release;
      Pedido_TelevendasItensComb := nil;
end;

procedure TPedido_TelevendasItensComb.FormCreate(Sender: TObject);
begin
      if (FileExists('fundo_barra.bmp')) then begin
         Image6.Picture.LoadFromFile('fundo_barra.bmp');
      end;
end;

procedure TPedido_TelevendasItensComb.FormShow(Sender: TObject);
begin
     with Dados do begin
          with PedidosRepresentantesItens do begin
               sql.Clear;
               sql.Add('select *');
               sql.Add('      ,Descricao_Mercadoria = (select Descricao from Produtos where Codigo = Codigo_Mercadoria)');
               sql.Add('      ,Estoque_Minimo       = (select Estoque_Minimo from Produtos where Codigo = Codigo_Mercadoria)');
               sql.Add('      ,Valor_Total          = Quantidade * Valor_Unitario');
               sql.Add('from   PedidosRepresentantesItens');
               sql.Add('where  Pedido = :pPedido');
               sql.Add('order  BY Item');
               ParamByName('pPedido').AsString := PedidosRepresentantes.FieldByName('Pedido').AsString;
               //sql.SaveToFile('c:\temp\Televendas_Itens.sql');
               Open;
               Navega.Controls[6].Enabled := PedidosRepresentantesItens.RecordCount > 0;
          end;
          with Produtos do begin
               sql.clear;
               sql.add('select *');
               sql.add('from   Produtos PD');
               sql.add('where ISNULL(Desativado, 0) = 0');
               sql.add('  and (((isnull((select sum(Quantidade) from NotasItens NI where NI.Codigo_Mercadoria = PD.Codigo AND Saida_Entrada = 0 AND Movimenta_Estoque = 1 AND Cancelada <> 1 AND ISNULL(NI.Nfe_Denegada, 0) = 0), 0) +');
               sql.add('        isnull((select sum(Quantidade) from NotasTerceirosItens NTI where NTI.Codigo_Mercadoria = PD.Codigo AND Movimenta_Estoque = 1), 0) +');
               sql.add('        isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada = PD.Codigo ), 0)) -');
               sql.add('        (isnull((select sum(Quantidade) from NotasItens NI where NI.Codigo_Mercadoria = PD.Codigo AND Saida_Entrada = 1 AND Movimenta_Estoque = 1 AND Cancelada <> 1 AND ISNULL(NI.Nfe_Denegada, 0) = 0), 0) -');
               sql.add('        isnull((select sum(Quantidade) from PedidosItens PI where PI.Codigo_Mercadoria = PD.Codigo AND Saida_Entrada = 1 AND Movimenta_Estoque = 1 ), 0)) -');
               sql.add('        isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida = PD.Codigo ), 0) -');
               sql.add('        isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria = PD.Codigo AND ISNULL(Faturamento, 0) = 0 AND ISNULL(Faturado, 0) = 0');
               sql.add('                                                                             and (SELECT Cancelado FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido) = 0), 0))');
               sql.add('        ) > 0');
               open;
               cMinimo.Value := fieldbyname('Estoque_Minimo').asfloat;
          end;
          
          Totaliza;
          ApuraEstoque;
          cPremio.value := PedidosRepresentantesItens.fieldbyname('Valor_Unitario').asfloat - ProdutosPreco_Minimo.asfloat;
     end;
end;

procedure TPedido_TelevendasItensComb.NavegaBforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados, PedidosRepresentantesItens do begin
           If Button = nbPost then begin
              If fieldbyname('Codigo_Mercadoria').Value <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'O código da mercadoria é campo obrigatório!', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
              If fieldbyname('Quantidade').Value <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade informada é inválida!', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If fieldbyname('Valor_Unitario').Value <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Valor unitário informado é inválido!', mtError, [mbOK], 0);
                 cValor.SetFocus;
                 Abort;
              end;

              //Apura novamente o estoque para o caso de duas pessoas estarem digitando pedidos juntas.
              ApuraEstoque;

              if State = dsInsert then begin
                 with tItem do begin 
                      sql.Clear;
                      sql.Add('select count(*) as Qtde from PedidosRepresentantesItens where Pedido = :pPedido and Codigo_Mercadoria = :pCodigo');
                      ParamByName('pPedido').AsString  := PedidosRepresentantesPedido.AsString;
                      ParamByName('pCodigo').AsInteger := PedidosRepresentantesItensCodigo_Mercadoria.AsInteger;
                      Open;
                      if FieldByName('Qtde').AsInteger > 0 then begin
                         MessageDlg('Produto já adicionado a este pedido!', mtError, [mbOK], 0);
                         cCodigo.SetFocus;
                         Abort;
                      end;
                      sql.Clear;
                      sql.Add('select isnull(max(Item), 0)+1 as Item from PedidosRepresentantesItens where Pedido = :pPedido');
                      ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                      Open;
                      PedidosRepresentantesItensItem.Value   := FieldByName('Item').AsInteger;
                      PedidosRepresentantesItensPedido.Value := PedidosRepresentantesPedido.asstring;
                 end;
              end;
              fieldbyname('Data').Value                := PedidosRepresentantesData.Value;
              fieldbyname('Faturado').Value            := false;
              fieldbyname('Faturamento').Value         := false;
              fieldbyname('Quantidade_Original').Value := fieldbyname('Quantidade').Value;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente remover este item do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
end;

procedure TPedido_TelevendasItensComb.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i:Integer;
begin
      // Não deixa alterar pedidos com quebras ja feitas.
      if Button = nbEdit then begin
         with tTemp do begin
             sql.Clear;
             sql.Add('select count(*) as Qtde from PedidosRepresentantes where Pedido_Pai = :pPed or Pedido_Pai2 = :pPed');
             parambyname('pPed').AsString := Dados.PedidosRepresentantesItensPedido.AsString;
             open;
             if fieldbyname('Qtde').AsInteger > 0 then begin
                MessageDlg('Este pedido não pode ser alterado pois já foram feitas quebras de faturamento?', mtInformation, [mbok], 0);
                Abort;
             end;
         end;
      end;
      
      Screen.Cursor := crSQLWait;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel4.Enabled := true;
         cCodigo.SetFocus;
      End;
      if (Button = nbPost) or (Button = nbCancel) then begin 
         Panel4.Enabled := false;
         Dados.PedidosRepresentantesItens.refresh
      end;
      Navega.Controls[6].Enabled := Dados.PedidosRepresentantesItens.RecordCount > 0;
      Screen.Cursor := crDefault;
end;

procedure TPedido_TelevendasItensComb.ApuraEstoque;
begin
     with Dados do begin
          with tEstoque do begin
               // Calculando o estoque disponível.
               sql.Clear;
               sql.Add('select cast(');
               sql.Add('             isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 0 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NotasItens.Nfe_Denegada, 0) = 0), 0) +');
               sql.Add('             isnull((select sum(Quantidade) from NotasTerceirosItens where Codigo_Mercadoria = :pCodigo and Movimenta_Estoque = 1), 0) +');
               sql.Add('             isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada = :pCodigo), 0) -');
               sql.Add('             isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NotasItens.Nfe_Denegada, 0) = 0), 0) -');
               sql.Add('             isnull((select sum(Quantidade) from PedidosItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Estoque = 1), 0) -');
               sql.Add('             isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida = :pCodigo), 0) -');
               sql.Add('             isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria = :pCodigo and isnull(Faturamento, 0) = 0 ');
               sql.Add('                                                                                and isnull(Faturado, 0) = 0 and (select Cancelado from PedidosRepresentantes PR where PR.Pedido = PRI.Pedido) = 0');
               sql.Add('                                                                                and (select Local from PedidosRepresentantes PR where PR.Pedido = PRI.Pedido) < 4), 0)');
               sql.Add('       as decimal(14,3)) as Disponivel');
               parambyname('pCodigo').AsInteger := PedidosRepresentantesItensCodigo_Mercadoria.AsInteger;
               //sql.SaveToFile('c:\temp\Televendas_Disponivel.sql');
               open;
               if PedidosRepresentantesItens.State = dsEdit then begin
                  cDisponivel.Value := tEstoque.FieldByName('Disponivel').Value + PedidosRepresentantesItensQuantidade.Value;
               end else begin
                  cDisponivel.Value := tEstoque.FieldByName('Disponivel').Value;
               end;
               cMinimo.Value := ProdutosEstoque_Minimo.Value;
               tEstoque.Close;

               // Calculando o estoque em armazém.
               sql.Clear;
               sql.Add('select Quantidade = cast(');
               sql.Add('                         isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 0 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NotasItens.Nfe_Denegada, 0) = 0');
               sql.Add('                                 and (select Armazem from NotasFiscais where Numero = Nota and Data_Emissao = Data) = :pArmazem), 0) +');
               sql.Add('                         isnull((select sum(Quantidade) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = 3 and nti.Movimenta_Estoque = 1');
               sql.Add('                                 and (select Armazem from NotasTerceiros nt where nt.Nota = nti.Nota and nt.Data_Emissao = nti.Data_Emissao and nt.Fornecedor = nti.Fornecedor) = :pArmazem), 0) +');
               sql.Add('                         isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada = :pCodigo), 0) -');
               sql.Add('                         isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NotasItens.Nfe_Denegada, 0) = 0), 0) -');
               sql.Add('                         isnull((select sum(Quantidade) from PedidosItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Estoque = 1), 0) -');
               sql.Add('                         isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida = :pCodigo), 0) -');
               sql.Add('                         isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria = :pCodigo and isnull(Faturamento, 0) = 0 ');
               sql.Add('                                                                                            and isnull(Faturado, 0) = 0 and (select Cancelado from PedidosRepresentantes PR where PR.Pedido = PRI.Pedido) = 0');
               sql.Add('                                                                                            and (select Local from PedidosRepresentantes PR where PR.Pedido = PRI.Pedido) < 4), 0)');
               sql.Add('       as decimal(14,3))');
               parambyname('pCodigo').AsInteger  := PedidosRepresentantesItensCodigo_Mercadoria.AsInteger;
               parambyname('pArmazem').AsInteger := PedidosRepresentantesArmazem.AsInteger;
               //sql.SaveToFile('c:\temp\Televendas_Armazem.sql');
               open;
               if PedidosRepresentantesItens.State = dsEdit then begin
                  cArmazem.Value      := tEstoque.FieldByName('Quantidade').asfloat + PedidosRepresentantesItensQuantidade.Value;
               end else begin
                  cArmazem.Value      := tEstoque.FieldByName('Quantidade').asfloat;
               end;
               tEstoque.Close;
          end;
     end;
end;

procedure TPedido_TelevendasItensComb.Totaliza;
begin
      // Calculando o estoque disponível.
      With Dados do begin
           with tTotal do begin
                SQL.Clear;
                SQL.Add('select Total = sum(isnull(Valor_Unitario, 0) * Quantidade)');
                SQL.Add('from   PedidosRepresentantesItens');
                SQL.Add('where  Pedido = :pPedido');
                ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                Open;
                lTotal.Caption := FormatFloat(',##0.00', FieldByName('Total').AsCurrency);
           end;
      End;
End;
          

end.
