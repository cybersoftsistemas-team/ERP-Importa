unit frmNotaFiscal_ServicoVinculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNotaFiscal_ServicoVinculo = class(TForm)
    DBGrid1: TDBGrid;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    tTitulosFornecedor: TSmallintField;
    tTitulosFornecedor_Nome: TStringField;
    tTitulosClassificacao: TStringField;
    tTitulosClassificacao_Nome: TStringField;
    tTitulosValor_Total: TCurrencyField;
    tTitulosValor_Parcela: TCurrencyField;
    tTitulosProcesso: TStringField;
    tTitulosValor_Documento: TCurrencyField;
    Panel1: TPanel;
    bCancelar: TButton;
    Navega: TDBNavigator;
    bOK: TButton;
    tTitulosSel: TBooleanField;
    tTitulosBaixa: TBooleanField;
    bSelTodos: TButton;
    bSelNenhum: TButton;
    tTitulosTitulo: TLargeintField;
    tTitulosProduto: TIntegerField;
    tItem: TMSQuery;
    tTemp: TMSQuery;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
  private
    procedure Seleciona(sel: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_ServicoVinculo: TNotaFiscal_ServicoVinculo;

implementation

{$R *.dfm}

uses FUNCOES, frmDMFiscal, frmDados;

procedure TNotaFiscal_ServicoVinculo.bCancelarClick(Sender: TObject);
begin
    close;
end;

procedure TNotaFiscal_ServicoVinculo.bOKClick(Sender: TObject);
var
   mApuracaoPISCOFINS
  ,mSel:boolean;
   mTotal: real;
begin
     mSel   := false;
     mTotal := 0;

     with Dados, dmFiscal do begin
          // Verifica se existem titulos selecionados e se o total dos itens bate com o total da nota.
          with tTitulos do begin
               first;
               while not Eof do begin
                     mSel   := iif(mSel, mSel, fieldByName('Sel').AsBoolean);
                     mTotal := mTotal + iif(fieldByName('Sel').AsBoolean, tTitulos.fieldbyname('Valor_Total').ascurrency, 0);
                     next;
               end;
          end;
          if not mSel then begin
             messagedlg('Nenhum título selecionado para vincular!', mtInformation,[mbok], 0);
             abort;
          end;
          if mTotal <> NotasTerceirosValor_TotalNota.Value then begin
             messagedlg('Total dos itens diferente do total informado na nota!', mtError,[mbok], 0);
             abort;
          end;
          // Apaga todos os itens da Nota fiscal.
          with tTemp do begin
               sql.Clear;
               sql.Add('delete from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn');
               parambyname('pNota').Value := NotasTerceirosNota.value;
               parambyname('pData').Value := NotasTerceirosData_Emissao.value;
               parambyname('pForn').Value := NotasTerceirosFornecedor.asinteger; 
               execute;
          end;
          
          tTitulos.First;
          while not tTitulos.Eof do begin
                if tTitulos.FieldByName('Sel').AsBoolean then begin
                   Produtos.Locate('Codigo', tTitulos.FieldByName('Produto').AsInteger, [loCaseInsensitive]);
                   with tItem do begin
                        sql.clear;
                        sql.add('select Tributavel from Cybersoft_Cadastros.dbo.CSTPIS where Codigo = :pCod');
                        ParamByName('pCod').AsString := ProdutosCSTPIS_Entrada.asstring;
                        Open;
                        mApuracaoPISCOFINS := tItem.FieldByName('Tributavel').AsBoolean;

                        sql.Clear;
                        sql.Add('select isnull(max(Item), 0)+1 as Item');
                        SQL.Add('from NotasTerceirosItens');
                        SQL.Add('where Nota = :pNota');
                        SQL.Add('and Data_Emissao = :pData');
                        SQL.Add('and Fornecedor = :pForn');
                        SQL.add('and (select isnull(Servico, '''') from NotasTerceiros where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn) is not null');
                        ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                        ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                        ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
                        open;
                   end;
                   with NotasTerceirosItens do begin
                        append;
                              fieldbyname('Codigo_Mercadoria').value    := tTitulos.FieldByName('Produto').AsInteger;
                              fieldbyname('Item').value                 := tItem.FieldByName('Item').AsInteger;
                              fieldbyname('Nota').value                 := NotasTerceirosNota.value;
                              fieldbyname('Data_Emissao').value         := NotasTerceirosData_Emissao.value;
                              fieldbyname('Data_Entrada').value         := NotasTerceirosData_Entrada.value;
                              fieldbyname('Fornecedor').value           := NotasTerceirosFornecedor.value;
                              fieldbyname('Natureza_Codigo').value      := NotasTerceirosNatureza_Codigo.value;
                              fieldbyname('Processo').value             := NotasTerceirosProcesso.value;
                              fieldbyname('Descricao_Mercadoria').value := ProdutosDescricao.value;
                              fieldbyname('Unidade_Medida').value       := ProdutosUnidade.value;
                              fieldbyname('NCM').value                  := ProdutosNCM.value;
                              fieldbyname('CodigoTrib_TabA').value      := Copy(ReferenciasFiscaisCSTICMS.AsString, 1, 1);
                              fieldbyname('CodigoTrib_TabB').value      := Copy(ReferenciasFiscaisCSTICMS.AsString, 2, 2);
                              fieldbyname('Quantidade').Value           := 1;
                              fieldbyname('Valor_Unitario').Value       := tTitulos.fieldbyname('Valor_Total').ascurrency;
                              fieldbyname('Valor_Liquido').Value        := tTitulos.fieldbyname('Valor_Total').ascurrency;
                              fieldbyname('Disponivel').value           := 0;
                              fieldbyname('Valor_Desconto').value       := 0;
                              fieldbyname('Aliquota_ICMSOper').value    := 0;
                              fieldbyname('Valor_BCICMSOper').value     := 0;
                              fieldbyname('Valor_ICMSOper').value       := 0;
                              fieldbyname('Valor_IsentasICMS').value    := 0;
                              fieldbyname('Valor_OutrasICMS').value     := 0;
                              fieldbyname('Aliquota_ICMSSub').value     := 0;
                              fieldbyname('Valor_BCICMSSub').value      := 0;
                              fieldbyname('Valor_ICMSSub').value        := 0;
                              fieldbyname('Aliquota_IPI').value         := 0;
                              fieldbyname('Valor_IPI').value            := 0;
                              fieldbyname('Valor_BCIPI').value          := 0;
                              fieldbyname('Valor_OutrasIPI').value      := 0;
                              fieldbyname('Valor_IsentasIPI').value     := 0;
                              fieldbyname('Peso_Liquido').value         := 0;
                              fieldbyname('Peso_Bruto').value           := 0;
                              fieldbyname('Tipo').value                 := 'NF';
                              fieldbyname('Valor_BCPIS').value          := tTitulos.fieldbyname('Valor_Total').ascurrency;
                              fieldbyname('Valor_BCCOFINS').value       := tTitulos.fieldbyname('Valor_Total').ascurrency;
                              fieldbyname('Aliquota_PIS').value         := ProdutosAliquota_PIS.AsFloat;
                              fieldbyname('Valor_PIS').value            := tTitulos.fieldbyname('Valor_Total').ascurrency * (ProdutosAliquota_PIS.value/100);
                              fieldbyname('Aliquota_COFINS').value      := ProdutosAliquota_COFINS.AsFloat;
                              fieldbyname('Valor_COFINS').value         := tTitulos.fieldbyname('Valor_Total').ascurrency * (ProdutosAliquota_COFINS.value/100);
                              fieldbyname('CST_PIS').value              := ProdutosCSTPIS_Entrada.AsString;
                              fieldbyname('CST_COFINS').value           := ProdutosCSTCOFINS_Entrada.AsString;
                              fieldbyname('Apuracao_PISCOFINS').value   := mApuracaoPISCOFINS;
                              fieldbyname('Consumo_Energia').value      := 0;
                              fieldbyname('CIAP_BCICMS').value          := 0;
                              fieldbyname('CIAP_AliquotaICMS').value    := 0;
                              fieldbyname('CIAP_ValorICMS').value       := 0;
                              fieldbyname('CIAP_Parcela').value         := 0;
                              fieldbyname('CST_IPI').value              := ReferenciasFiscaisCSTIPI.AsString;
                              fieldbyname('Nota_Referencia').value      := 0;
                              fieldbyname('Movimenta_Estoque').value    := false;
                              fieldbyname('Movimenta_Inventario').value := false;
                              fieldbyname('Inventario_Terceiros').value := false;
                              fieldbyname('Referencia_Fiscal').value    := NotasTerceirosReferencia_Fiscal.value;
                        post;      
                   end;
                   // Atualiza os titulo no financeiro com o número da nota fiscal e a data.
                   with tTemp do begin
                        sql.Clear;
                        sql.Add('update PagarReceber set Documento        = :pDoc');
                        sql.Add('                       ,Data_Documento   = :pData');
                        sql.Add('                       ,Numero_Documento = :pNota');
                        sql.add('where Numero = :pTitulo');
                        parambyname('pDoc').Value    := 'NFS';
                        parambyname('pData').Value   := NotasTerceirosData_Emissao.value;
                        parambyname('pNota').Value   := NotasTerceirosNota.asinteger;
                        parambyname('pTitulo').Value := tTitulos.FieldByName('Titulo').asinteger;
                        execute;
                   end;
                end;
                tTitulos.next;
          end;
          NotasTerceirosItens.Refresh;
     end;
     close;
end;

procedure TNotaFiscal_ServicoVinculo.bSelNenhumClick(Sender: TObject);
begin
     with tTitulos do begin
          first;
          while not eof do begin
                Seleciona(false);
                next;
          end;
          first;
     end;
end;

procedure TNotaFiscal_ServicoVinculo.bSelTodosClick(Sender: TObject);
begin
     with tTitulos do begin
          first;
          while not eof do begin
                if not fieldbyname('Baixa').asboolean and (fieldbyname('Produto').asinteger > 0) then begin
                   Seleciona(true);
                end;
                next;
          end;
          first;
     end;
end;

procedure TNotaFiscal_ServicoVinculo.DBGrid1CellClick(Column: TColumn);
begin
      with tTitulos do begin
           if not fieldbyname('Baixa').asboolean and (fieldbyname('Produto').asinteger > 0) then begin
              Seleciona(not fieldbyname('sel').asboolean);
           end else begin
              if fieldbyname('Baixa').asboolean then begin
                 messagedlg('Atenção!'+#13+#13+'Este título não pode ser vinculado a nota pois ja foi baixado.', mtWarning,[mbok], 0);
              end else begin
                 messagedlg('Erro!'+#13+#13+'Classificação não informada no cadastro do Produto/Serviço.', mtError,[mbok], 0);
              end;
           end;
      end;
end;

procedure TNotaFiscal_ServicoVinculo.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if key = 13 then begin
         with tTitulos do begin
              if not fieldbyname('Baixa').asboolean and (fieldbyname('Produto').asinteger > 0) then begin
                 Seleciona(not fieldbyname('sel').asboolean);
                 next;
              end else begin
                 if fieldbyname('Baixa').asboolean then begin
                    messagedlg('Atenção!'+#13+#13+'Este título não pode ser vinculado a nota pois ja foi baixado.', mtWarning,[mbok], 0);
                 end else begin
                    messagedlg('Erro!'+#13+#13+'Classificação não informada no cadastro do Produto/Serviço.', mtError,[mbok], 0);
                 end;
              end;
         end;
      end;
end;

procedure TNotaFiscal_ServicoVinculo.Seleciona(sel: boolean);
begin
     with tTitulos do begin
          edit;
             fieldbyname('sel').value := sel;
          post;
     end;
end;

procedure TNotaFiscal_ServicoVinculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_ServicoVinculo.Release;
     NotaFiscal_ServicoVinculo := nil;
end;

procedure TNotaFiscal_ServicoVinculo.FormCreate(Sender: TObject);
begin
     with dmFiscal do begin
          with tTitulos do begin
               sql.Clear;
               sql.Add('select Titulo = Numero');
               sql.Add('      ,Fornecedor');
               sql.Add('      ,Fornecedor_Nome = ltrim((select Nome from Fornecedores where Codigo = Fornecedor))');
               sql.Add('      ,Classificacao');
               sql.Add('      ,Classificacao_Nome = (select Descricao from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = Classificacao)');
               sql.Add('      ,Valor_Documento');
               sql.Add('      ,Valor_Total');
               sql.Add('      ,Valor_Parcela');
               sql.Add('      ,Processo');
               sql.Add('      ,Sel = cast(0 as bit)');
               sql.Add('      ,Baixa = cast(iif(Baixa_Numero <> '''', 1, 0) as bit)');
               sql.Add('      ,Produto = (select max(Codigo) from Produtos prd where prd.Classificacao = pr.Classificacao)');
               sql.Add('from PagarReceber pr');
               sql.Add('where Fornecedor = :pForn');
               sql.Add('and Tipo = ''P'' ');
               if trim(NotasTerceirosProcesso.value) <> '' then begin
                  sql.Add('and Processo = :pProc');
                  ParamByName('pProc').Asstring := NotasTerceirosProcesso.value;
               end;
               ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.value;
               sql.Add('order by Fornecedor_Nome, Produto');
               open;
          end;
     end;
end;

end.
