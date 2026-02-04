unit frmPedido_NFSVinculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Datasnap.DBClient, MemDS, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxCurrEdit;

type
  TPedido_NFSVinculo = class(TForm)
    Grade: TDBGrid;
    Panel1: TPanel;
    bAdicionar: TButton;
    dstProdutos: TDataSource;
    tVinculos: TMSQuery;
    tProdutos: TClientDataSet;
    tProdutosCodigo: TIntegerField;
    tProdutosDescricao: TStringField;
    tProdutosProcesso: TStringField;
    tProdutosDesc_Processo: TStringField;
    tProdutosQuantidade: TIntegerField;
    StaticText6: TStaticText;
    cTotal: TCurrencyEdit;
    ttmp: TMSQuery;
    tProdutosValor: TCurrencyField;
    tProdutosAliquotaINSS_Serv: TFloatField;
    tProdutosAliquotaPIS_Serv: TFloatField;
    tProdutosAliquotaCOFINS_Serv: TFloatField;
    tProdutosAliquotaCSLL_Serv: TFloatField;
    tProdutosAliquotaIRPJ_Serv: TFloatField;
    tProdutosAliquotaCPP_Serv: TFloatField;
    tProdutosAliquotaIPI_Serv: TFloatField;
    bCancelar: TButton;
    bSair: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tProdutosAfterPost(DataSet: TDataSet);
    procedure bAdicionarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_NFSVinculo: TPedido_NFSVinculo;

implementation

{$R *.dfm}

uses FUNCOES, frmDados, frmPedido_NFS;

procedure TPedido_NFSVinculo.bAdicionarClick(Sender: TObject);
var
  mItem: integer;
begin
     with Dados do begin
          with ttmp do begin
              sql.clear;
              sql.add('select isnull(max(Item), 0)+1 as Item from PedidosServicoItens where Pedido = :pPed');
              parambyname('pPed').Value := PedidoServico.FieldByName('Numero').AsInteger;
              open;
              mItem := fieldbyname('Item').AsInteger;
          end;
          tProdutos.First;
          with PedidoServicoItens do begin
               while not tProdutos.Eof do begin
                     append;
                          fieldbyname('Pedido').Value            := PedidoServico.FieldByName('Numero').AsInteger;
                          fieldbyname('Item').Value              := mItem;
                          fieldbyname('Codigo_Mercadoria').Value := tProdutos.FieldByName('Codigo').AsInteger;
                          fieldbyname('Processo').Value          := tProdutos.FieldByName('Processo').asstring;
                          fieldbyname('Quantidade').Value        := tProdutos.FieldByName('Quantidade').asinteger;
                          fieldbyname('Valor_Unitario').Value    := tProdutos.FieldByName('Valor').ascurrency;
                          fieldbyname('Valor_Total').Value       := tProdutos.FieldByName('Valor').ascurrency * tProdutos.FieldByName('Quantidade').asinteger;
                          fieldbyname('Aliquota_INSS').value     := tProdutos.FieldByName('AliquotaINSS_Serv').value;
                          fieldbyname('Aliquota_PIS').Value      := tProdutos.FieldByName('AliquotaPIS_Serv').Value;
                          fieldbyname('Aliquota_COFINS').Value   := tProdutos.FieldByName('AliquotaCOFINS_Serv').Value;
                          fieldbyname('Aliquota_CSLL').Value     := tProdutos.FieldByName('AliquotaCSLL_Serv').Value;
                          fieldbyname('Aliquota_IRPJ').Value     := tProdutos.FieldByName('AliquotaIRPJ_Serv').Value;
                          fieldbyname('Aliquota_CPP').Value      := tProdutos.FieldByName('AliquotaCPP_Serv').Value;   
                          fieldbyname('Aliquota_IPI').Value      := tProdutos.FieldByName('AliquotaIPI_Serv').Value;

                          // Calculando todos os impostos. 
                          fieldbyname('Valor_INSS').Value := 0;
                          fieldbyname('Valor_PIS').Value  := 0;
                          fieldbyname('Valor_PIS').Value  := 0;
                          fieldbyname('Valor_CSLL').Value := 0;
                          fieldbyname('Valor_IRPJ').Value := 0;
                          if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_INSS').AsCurrency then begin
                             fieldbyname('Valor_INSS').Value := Percentual(fieldbyname('Valor_Total').ascurrency, fieldbyname('Aliquota_INSS').asfloat);
                          end;
                          if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_PIS').AsCurrency then begin
                             fieldbyname('Valor_PIS').Value := Percentual(fieldbyname('Valor_Total').ascurrency, fieldbyname('Aliquota_PIS').asfloat);
                          end;
                          if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_COFINS').AsCurrency then begin
                             fieldbyname('Valor_PIS').Value := Percentual(fieldbyname('Valor_Total').ascurrency, fieldbyname('Aliquota_PIS').asfloat);
                          end;
                          if Empresas.FieldByName('Regime').asstring = 'R' then begin
                             if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_CSLL').AsCurrency then begin
                                fieldbyname('Valor_CSLL').Value := fieldbyname('Valor_Total').ascurrency * (fieldbyname('Aliquota_CSLL').asfloat/100);
                             end;
                             if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_IR').AsCurrency then begin
                                fieldbyname('Valor_IRPJ').Value := fieldbyname('Valor_Total').ascurrency * (fieldbyname('Aliquota_IRPJ').asfloat/100);
                             end;
                          end;
                          if Empresas.FieldByName('Regime').asstring = 'P' then begin
                             if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_CSLL').AsCurrency then begin
                                fieldbyname('Valor_CSLL').Value := (fieldbyname('Valor_Total').ascurrency * 0.32) * (fieldbyname('Aliquota_CSLL').asfloat);
                             end;
                             if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_IRPJ').AsCurrency then begin
                                fieldbyname('Valor_IRPJ').Value := (fieldbyname('Valor_Total').ascurrency * 0.32) * (fieldbyname('Aliquota_IRPJ').asfloat);
                             end;
                          end;
                     post;
                     tProdutos.next;
                     inc(mItem);
               end;
               first;
          end;
     end;
     Pedido_NFS.tag := 0;
     close;
end;

procedure TPedido_NFSVinculo.bCancelarClick(Sender: TObject);
begin
     Pedido_NFS.tag := 1;
     close;
end;

procedure TPedido_NFSVinculo.bSairClick(Sender: TObject);
begin
     Pedido_NFS.tag := 0;
     close;
end;

procedure TPedido_NFSVinculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Pedido_NFSVinculo.Release;
      Pedido_NFSVinculo := nil;
end;

procedure TPedido_NFSVinculo.FormShow(Sender: TObject);
var
   mClass:string;
begin
     with Dados do begin
          with ProcessosDoc do begin
               sql.Clear;
               sql.Add('select * from ProcessosDocumentos where Desativado <> 1 and Data_Encerramento is null');
               open;
          end;
          tProdutos.Open;
          with tVinculos do begin
               sql.clear;
               sql.add('select Codigo');
               sql.add('      ,Descricao_Reduzida');
               sql.add('      ,AliquotaINSS_Serv');
               sql.add('      ,AliquotaPIS_Serv');
               sql.add('      ,AliquotaCOFINS_Serv');
               sql.add('      ,AliquotaCSLL_Serv');
               sql.add('      ,AliquotaIRPJ_Serv');
               sql.add('      ,AliquotaCPP_Serv');
               sql.add('      ,AliquotaIPI_Serv');
               sql.add('      ,Valor = case when isnull(Valor_Venda, 0) > 0 then');
               sql.add('                    Valor_Venda');
               sql.add('               else');
               sql.add('                    case when (select max(Valor_Unitario) from PedidosServicoItens psi where psi.Codigo_Mercadoria = prd.Codigo and Pedido = :pPedido) > 0 then');
               sql.add('                         (select max(Valor_Unitario) from PedidosServicoItens psi where psi.Codigo_Mercadoria = prd.Codigo and Pedido = :pPedido)');
               sql.add('                    else');
               sql.add('                         (select max(Valor_Unitario) from NotasServicoItens nsi where nsi.Codigo_Mercadoria = prd.Codigo and Data = (select max(Data) from NotasServicoItens nsi where nsi.Codigo_Mercadoria= prd.Codigo))');
               sql.add('                    end');
               sql.add('               end');
               sql.add('from Produtos prd');
               sql.add('where isnull(prd.Servico_Vinculado, '''') <> '''' ');
               sql.add('and prd.Desativado <> 1');
               sql.add('order by prd.Codigo');
               parambyname('pPedido').AsInteger := PedidoServicoNumero.AsInteger;
               //sql.savetofile('c:\temp\NFS_Vinculos.sql');
               open;
               
               while not eof do begin
                     tProdutos.Append;
                               tProdutos.FieldByName('Codigo').Value              := fieldbyname('Codigo').AsString;
                               tProdutos.FieldByName('Descricao').Value           := fieldbyname('Descricao_Reduzida').AsString;
                               tProdutos.FieldByName('Processo').Value            := null;
                               tProdutos.FieldByName('Quantidade').Value          := 1;
                               tProdutos.FieldByName('Valor').Value               := FieldByName('Valor').value;
                               tProdutos.FieldByName('AliquotaINSS_Serv').value   := FieldByName('AliquotaINSS_Serv').value;
                               tProdutos.FieldByName('AliquotaPIS_Serv').Value    := FieldByName('AliquotaPIS_Serv').Value;
                               tProdutos.FieldByName('AliquotaCOFINS_Serv').Value := FieldByName('AliquotaCOFINS_Serv').Value;
                               tProdutos.FieldByName('AliquotaCSLL_Serv').Value   := FieldByName('AliquotaCSLL_Serv').Value;
                               tProdutos.FieldByName('AliquotaIRPJ_Serv').Value   := FieldByName('AliquotaIRPJ_Serv').Value;
                               tProdutos.FieldByName('AliquotaCPP_Serv').Value    := FieldByName('AliquotaCPP_Serv').Value;   
                               tProdutos.FieldByName('AliquotaIPI_Serv').Value    := FieldByName('AliquotaIPI_Serv').Value;
                     tProdutos.Post;
                     next;
               end;
          end;
          tProdutos.First;
     end;
end;

procedure TPedido_NFSVinculo.tProdutosAfterPost(DataSet: TDataSet);
begin
     with tProdutos do begin
          first;
          cTotal.value := 0;
          while not eof do begin
                cTotal.value := cTotal.value + (FieldByName('Valor').ascurrency * FieldByName('Quantidade').asinteger);
                next
          end;
     end;
     
end;

end.
