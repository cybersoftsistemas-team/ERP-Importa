unit frmIndustrializacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, RxToolEdit, RxDBCtrl, RxLookup, Math;

type
  TIndustrializacao = class(TForm)
    RxLabel4: TRxLabel;
    RxLabel3: TRxLabel;
    Image1: TImage;
    Panel1: TPanel;
    bSair: TButton;
    dstProdutos: TDataSource;
    tProdutos: TMSQuery;
    tProdutosCodigo: TIntegerField;
    Navega: TDBNavigator;
    tProdutosDescricao: TStringField;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cProduto: TDBLookupComboBox;
    cCodigo: TDBEdit;
    DBGrid1: TDBGrid;
    StaticText1: TStaticText;
    cQtde: TDBEdit;
    DBGrid2: TDBGrid;
    StaticText7: TStaticText;
    cData: TDBDateEdit;
    ttmp: TMSQuery;
    tSaldo: TMSQuery;
    StaticText4: TStaticText;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    cNota: TDBEdit;
    StaticText5: TStaticText;
    DBEdit1: TDBEdit;
    tEmpresa: TMSQuery;
    StaticText6: TStaticText;
    cProcessoOrigem: TRxDBLookupCombo;
    tProcesso: TMSQuery;
    dstProcesso: TDataSource;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    tMatPrima: TMSQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dstMatPrima: TDataSource;
    StaticText3: TStaticText;
    cEstoque: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoExit(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    procedure FiltraMateria;
    procedure SalvaMov;
    procedure DeletaMov;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Industrializacao: TIndustrializacao;

implementation

{$R *.dfm}

uses FUNCOES, frmDados, frmDMFiscal, frmMenu_Principal;

procedure TIndustrializacao.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TIndustrializacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria; 
     Industrializacao.Release;
     INdustrializacao := nil;
end;

procedure TIndustrializacao.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TIndustrializacao.FormShow(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          with Industrial do begin
               sql.clear;
               sql.Add('select * from Industrializacao');
               open;
               Navega.Controls[6].Enabled := Industrial.RecordCount > 0;
          end;
          with tProdutos do begin
               sql.clear;
               sql.Add('select Codigo');
               sql.Add('      ,Descricao = cast(Descricao_Reduzida as varchar(250))');
               sql.Add('from Produtos');
               sql.Add('where Codigo in(select distinct Codigo_Produto from ProdutosMateriaPrima)');
               open;
          end;
          with tNotas do begin
               sql.clear;
               sql.add('select distinct Nota');
               sql.add('               ,Data_Emissao');
               sql.add('from NotasTerceirosItens');
               sql.add('where Codigo_Mercadoria in(select distinct Codigo_Mercadoria from ProdutosMateriaPrima)');
               open;
          end;
          with tEmpresa do begin
               sql.clear;
               sql.add('select Codigo, CNPJ, Razao_Social');
               sql.add('from Empresas');
               sql.add('where Codigo = :pCod');
               ParamByName('pCod').Value := Menu_Principal.mEmpresa;
               open;
          end;
          
          FiltraMateria;
     end;
end;

procedure TIndustrializacao.cCodigoExit(Sender: TObject);
begin
     FiltraMateria;
     
     with ttmp do begin
          // Retorna uma lista de notas em uma string.
          sql.Clear;
          sql.Add('select Notas = stuff((select ''/'' + cast(Nota as varchar(9))');
          sql.Add('from NotasTerceirosItens');
          sql.Add('where Codigo_Mercadoria in(select Codigo_MateriaPrima from ProdutosMateriaPrima where Codigo_Produto = :pCodigo)');
          sql.Add('for xml path(''''), type).value(''.'', ''nvarchar(max)''), 1, 2, '''')');
          parambyname('pCodigo').value := Dados.Industrial.FieldByName('Codigo_Mercadoria').asinteger;
          //sql.SaveToFile('c:\temp\Industrialização_NotasTerceirosItens.sql');
          open;
          Dados.Industrial.fieldbyname('Notas').AsString := fieldbyname('Notas').AsString;
     end;
     with tSaldo do begin 
          // Pega o valor unitario do produto industrializa na ficha de estoque.
          sql.clear;
          sql.add('select Unitario_Saldo');
          sql.add('from FichaEstoque');
          sql.add('where Codigo = :pCodigo');
          sql.add('and Registro = (select max(Registro) from FichaEstoque where Codigo = :pCodigo and Unitario_Saldo > 0)');
          parambyName('pCodigo').AsInteger := Dados.Industrial.FieldByName('Codigo_Mercadoria').asinteger;
          open;
          if Dados.Industrial.State = dsInsert then begin
             Dados.Industrial.FieldByName('Valor_Unitario').Value := fieldbyname('Unitario_Saldo').asfloat;
          end;

          // Estoque do produto industrializado
          cEstoque.Text := formatfloat(',##0.000', EstoqueProduto(Dados.Industrial.fieldbyname('Codigo_Mercadoria').AsInteger));
     end;
end;

procedure TIndustrializacao.cProdutoExit(Sender: TObject);
begin
     FiltraMateria;
end;

procedure TIndustrializacao.FiltraMateria;
begin
     with Dados do begin
          with tProcesso do begin
               sql.clear;
               sql.add('select Processo');
               sql.Add('      ,Modalidade_Importacao');
               sql.Add('from ProcessosDocumentos');
               sql.Add('where Numero_Declaracao in(select DI from Adicoes where Codigo_Mercadoria = :pCod)');
               sql.Add('and isnull(Desativado, 0) = 0');
               sql.Add('order by Processo');
               parambyname('pCod').Value := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
               open; 
               cProcessoOrigem.Enabled := recordcount > 0;
          end;
          with ProdutosMateriaPrima do begin
               if (RecordCount > 0) or (Industrial.State = dsInsert) then begin
                  sql.clear;
                  sql.Add('select *');
                  sql.add('      ,Saldo = ((select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Movimenta_Estoque = 1) + ');
                  sql.add('                (select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 0 and Movimenta_Estoque = 1) +');
                  sql.add('                (select isnull(sum(Quantidade_Entrada), 0) from ProdutosTransferencia prt where prt.Produto_Entrada = pmp.Codigo_MateriaPrima and Estoque = 1)) -');
                  sql.add('               ((select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 1 and Movimenta_Estoque = 1) +');
                  sql.add('                (select isnull(sum(Quantidade), 0) from ProdutosTransferencia prt where prt.Produto_Saida = pmp.Codigo_MateriaPrima and Estoque = 1))');
                  sql.Add('from ProdutosMateriaPrima pmp');
                  sql.Add('where Codigo_Produto = ' + iif(Industrial.FieldByName('Codigo_Mercadoria').AsString <> '', Industrial.FieldByName('Codigo_Mercadoria').AsString, '0'));
                  open;
               end;
          end;
     end;
end;

procedure TIndustrializacao.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
   mProd: widestring;
begin
     ActiveControl  := nil;
     with Dados do begin
          if Button = nbPost then begin
             // Verifica todos os campos obrigatórios.
             if trim(Industrial.FieldByName('Codigo_Mercadoria').asstring) = '' then begin
                MessageDlg('Produto não informado!', mtError, [mbOK], 0);
                cCodigo.SetFocus;
                Abort;
             end;
             if Industrial.FieldByName('Quantidade').asfloat <= 0 then begin
                MessageDlg('Quantidade informada inválida!', mtError, [mbOK], 0);
                cQtde.SetFocus;
                Abort;
             end;
             // Verifica se há materia prima suficiente para a quantidade de produtos no estoque.
             with tSaldo do begin
                  sql.Clear;
                  sql.add('select Codigo_MateriaPrima');
                  sql.Add('      ,Descricao = (select Descricao_Reduzida from Produtos prd where prd.Codigo = pmp.Codigo_MateriaPrima)');
                  sql.Add('      ,Quantidade_Utilizada');
                  sql.add('      ,Saldo = ((select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Movimenta_Estoque = 1) + ');
                  sql.add('                (select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 0 and Movimenta_Estoque = 1) +');
                  sql.add('                (select isnull(sum(Quantidade_Entrada), 0) from ProdutosTransferencia prt where prt.Produto_Entrada = pmp.Codigo_MateriaPrima and Estoque = 1)) -');
                  sql.add('               ((select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 1 and Movimenta_Estoque = 1) +');
                  sql.add('                (select isnull(sum(Quantidade), 0) from ProdutosTransferencia prt where prt.Produto_Saida = pmp.Codigo_MateriaPrima and Estoque = 1))');
                  sql.add('into #temp');
                  sql.add('from ProdutosMateriaPrima pmp');
                  sql.add('where Codigo_Produto = :pCodigo');
                  sql.add('select * from #temp where Saldo < (Quantidade_Utilizada * :pQtde)');
                  sql.add('drop table #temp');
                  parambyname('pCodigo').asinteger := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
                  parambyname('pQtde').asfloat     := Industrial.FieldByName('Quantidade').asfloat;
                  open;
                  if recordcount > 0 then begin
                     mProd := 'Materias primas sem estoque disponivel: '+#13+#13;
                     while not eof do begin
                           mProd := concat(mProd, fieldbyname('Codigo_MateriaPrima').AsString, ' - ', fieldbyname('Descricao').AsString, ' :', formatfloat(',##0.000', fieldbyname('Saldo').asfloat), #13);
                           next;
                     end;
                     mProd := concat(mProd, #13, 'Industrialização não pode ser efetuada com a quantidade solicitada!');
                     showmessage(mProd);
                     abort;
                  end;
             end;
             if Industrial.State = dsEdit then begin
                DeletaMov;
             end;
             if Industrial.State = dsInsert then begin
                with ttmp do begin
                     sql.clear;
                     sql.add('select isnull(max(Registro), 0)+1 as Registro from Industrializacao');
                     open;
                     Industrial.fieldbyname('Registro').value := FieldByName('Registro').asinteger;
                end;
             end;
          end;
          if Button = nbDelete then begin
             if Messagedlg('Deseja realmente remover este item?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
                Abort
             end;
             DeletaMov;
          end;
     end;
end;

procedure TIndustrializacao.DeletaMov;
begin
     with Dados do begin
          with ttmp do begin 
               sql.clear;
               sql.add('delete from ProdutosTransferencia where Nota = :pNota and Data_Transferencia = :pData and Motivo = ''IND'' ');
               parambyname('pNota').AsInteger := Industrial.fieldbyname('Registro').asinteger;
               parambyname('pData').AsDate    := Industrial.fieldbyname('Data').value;
               execute;
          end;
     end;
end;

procedure TIndustrializacao.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
  i: integer;
begin 
     Panel2.Enabled := false;
     with Dados do begin
          if (Button = nbEdit) or (Button = nbInsert) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             Panel2.Enabled := true;
             cCodigo.SetFocus;
          end;
          if Button = nbInsert then begin
             Industrial.FieldByName('Movimenta_Estoque').Value    := true;
             Industrial.FieldByName('Movimenta_Inventario').Value := true;
             Industrial.FieldByName('Data').Value                 := date;
          end;
          if Button = nbPost then begin
             with FichaEstoque do begin 
                  sql.clear;
                  sql.add('select * from FichaEstoque where Nota = :pNota and Data = :pData and Destinatario_CNPJ = :pDest');
                  parambyname('pNota').AsInteger := Industrial.fieldbyname('Registro').asinteger;
                  parambyname('pData').value     := Industrial.fieldbyname('Data').value;
                  parambyname('pDest').value     := tEmpresa.fieldbyname('CNPJ').asstring;
                  open;
             end;
             with FichaInventario do begin 
                  sql.clear;
                  sql.add('select * from FichaInventario where Nota = :pNota and Data = :pData and Destinatario_CNPJ = :pDest');
                  parambyname('pNota').AsInteger := Industrial.fieldbyname('Registro').asinteger;
                  parambyname('pData').value     := Industrial.fieldbyname('Data').value;
                  parambyname('pDest').value     := tEmpresa.fieldbyname('CNPJ').asstring;
                  open;
             end;
             if Industrial.fieldbyname('Movimenta_Estoque').asboolean then SalvaMov;
          end;
          if Button in[nbPost, nbDelete] then begin
             FiltraMateria;
          end;
          Navega.Controls[6].Enabled := Industrial.RecordCount > 0;
     end;
end;

// Ficha de estoque - "ENTRADA" (Efetua a baixa da matéria prima de industrialização).
procedure TIndustrializacao.SalvaMov;
var       
   mRegEst
  ,mRegInv
  ,mItemEst
  ,mItemInv: integer;
   mVlrUniEst
  ,mVlrUniInv: real;
begin
     with Dados, dmFiscal do begin
          with ProdutosTransferencia do begin
               // Exclui os itens criados na tabela de transferências anteriormente para a nota fiscal.
               sql.clear;
               sql.add('delete from ProdutosTransferencia where Nota = :pNota and Data_Transferencia = :pData and Motivo = ''IND'' ');
               parambyname('pNota').value := Industrial.fieldbyname('Registro').asinteger;
               parambyname('pData').value := Industrial.FieldByName('Data').value;
               execute;
               sql.clear;
               sql.add('select * from ProdutosTransferencia where Produto_Entrada = :pProduto');
               parambyname('pProduto').asinteger := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
               Open;
          end;
          with ttmp do begin
               sql.clear;
               sql.Add('select RegEst = (select isnull(max(Registro), 0)+1 from FichaEstoque)');
               sql.Add('      ,RegInv = (select isnull(max(Registro), 0)+1 from FichaInventario)');
               Open;
               mRegEst := fieldbyname('RegEst').asinteger;
               mRegInv := fieldbyname('RegInv').asinteger;
               
               sql.Clear;
               SQL.Add('select ItemEst = (select isnull(max(Item), 0)+1 from FichaEstoque where Codigo = :pCodigo)');
               SQL.Add('      ,ItemInv = (select isnull(max(Item), 0)+1 from FichaInventario where Codigo = :pCodigo)');
               ParamByName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               Open;
               mItemEst := fieldbyname('ItemEst').asinteger;
               mItemInv := fieldbyname('ItemInv').asinteger;
          end;
          with ProdutosMateriaPrima do begin
               sql.clear;
               sql.add('select Registro');
               sql.add('      ,Codigo_Produto');
               sql.add('      ,Codigo_MateriaPrima');
               sql.add('      ,Conversao_M2M3');
               sql.add('      ,Quantidade_Utilizada');
               sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Unidade = (select Unidade from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Altura = (select Altura from Produtos where Codigo = Codigo_Produto)');
               sql.add('      ,Saldo = ((select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Movimenta_Estoque = 1) + ');
               sql.add('                (select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 0 and Movimenta_Estoque = 1) +');
               sql.add('                (select isnull(sum(Quantidade_Entrada), 0) from ProdutosTransferencia prt where prt.Produto_Entrada = pmp.Codigo_MateriaPrima and Estoque = 1)) -');
               sql.add('               ((select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 1 and Movimenta_Estoque = 1) +');
               sql.add('                (select isnull(sum(Quantidade), 0) from ProdutosTransferencia prt where prt.Produto_Saida = pmp.Codigo_MateriaPrima and Estoque = 1))');
               sql.add('from  ProdutosMateriaPrima pmp');
               sql.add('where Codigo_Produto = :pCodigo');
               parambyName('pCodigo').AsInteger := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
               open;
          end;
          with tSaldo do begin 
               sql.clear;
               sql.add('select Qtde_Saldo');
               sql.add('      ,Unitario_Saldo');
               sql.add('      ,Total_Saldo');
               sql.add('from FichaEstoque');
               sql.add('where Codigo = :pCodigo');
               sql.add('and Registro = (select max(Registro) from FichaEstoque where Codigo = :pCodigo)');
               parambyName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               open;
          end;
          // Adiciona "ENTRADA" do produto industrializado na tabela de transferência com tipo '"IND: industrialização".
          with ttmp do begin
               sql.clear;
               sql.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
               Open;
          end;
          with ProdutosTransferencia do begin
               Append;
                    fieldbyname('Registro').value           := ttmp.FieldByName('Registro').AsInteger;
                    fieldbyname('Produto_Entrada').value    := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
                    fieldbyname('Quantidade').value         := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
                    fieldbyname('Quantidade_Entrada').value := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
                    fieldbyname('Inventario').value         := Industrial.fieldbyname('Movimenta_Inventario').asboolean;
                    fieldbyname('Data_Transferencia').value := Industrial.fieldbyname('Data').value;
                    fieldbyname('Nota').value               := Industrial.fieldbyname('Registro').value;
                    fieldbyname('Observacao').value         := 'ENTRADA DE MERCADORIA INDUSTRIALIZADA REGISTRO FISCAL:' + Industrial.fieldbyname('Registro').asstring+ ' DE '+Industrial.fieldbyname('Data').AsString;
                    fieldbyname('Estoque').value            := Industrial.fieldbyname('Movimenta_Estoque').asboolean;
                    fieldbyname('Processo_Entrada').value   := Industrial.fieldbyname('Processo').asstring;
                    fieldbyname('Motivo').value             := 'IND';
                    fieldbyname('Valor_Unitario').value     := Industrial.fieldbyname('Valor_Unitario').ascurrency;
                Post;
          end;
          {===============================================================================[ PRODUTO INDUSTRIALIZADO ]=========================================================================================}
          // Entrada do produto industrializado na ficha de estoque.
          if Industrial.fieldbyname('Movimenta_Estoque').asboolean then begin
             with FichaEstoque do begin
                  Append;                           
                       fieldbyname('Registro').value          := mRegEst;
                       fieldbyname('Item').value              := mItemEst;
                       fieldbyname('Codigo').value            := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
                       fieldbyname('Descricao').value         := Industrial.FieldByName('Descricao').AsString;
                       fieldbyname('UM').value                := Produtos.FieldByName('Unidade').AsString;
                       fieldbyname('NCM').value               := Produtos.FieldByName('NCM').AsString;
                       fieldbyname('Historico').value         := '* ENTRADA DE INDUSTRIALIZAÇÃO *';
                       fieldbyname('Estoque').value           := '0-EMPRESA';
                       fieldbyname('Emissor').value           := 'P';
                       fieldbyname('Nota').value              := Industrial.fieldbyname('Registro').asinteger;
                       fieldbyname('Data').value              := Industrial.fieldbyname('Data').value;
                       fieldbyname('ES').value                := 'E';
                       fieldbyname('Destinatario_Nome').value := tEmpresa.FieldByName('Razao_Social').AsString;
                       fieldbyname('Destinatario_CNPJ').value := tEmpresa.FieldByName('CNPJ').AsString;
                       fieldbyname('Finalidade').value        := 0;
                       fieldbyname('Qtde_Saida').value        := 0;
                       fieldbyname('Unitario_Saida').value    := 0;
                       fieldbyname('Total_Saida').value       := 0;
                       fieldbyname('Qtde_Entrada').value      := Industrial.fieldbyname('Quantidade').AsFloat;
                       fieldbyname('Unitario_Entrada').value  := Industrial.fieldbyname('Valor_Unitario').AsFloat;
                       fieldbyname('Total_Entrada').value     := Industrial.fieldbyname('Valor_Unitario').AsFloat * Industrial.fieldbyname('Quantidade').AsFloat;
                       if tSaldo.RecordCount > 0 then begin
                          fieldbyname('Qtde_Saldo').value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + fieldbyname('Qtde_Entrada').AsFloat;
                          fieldbyname('Total_Saldo').value := tSaldo.FieldByName('Total_Saldo').AsFloat + fieldbyname('Total_Entrada').AsFloat;
                       end else begin
                          fieldbyname('Qtde_Saldo').value  := fieldbyname('Qtde_Entrada').Value;
                          fieldbyname('Total_Saldo').value := fieldbyname('Total_Entrada').AsFloat;
                       end;
                       if fieldbyname('Qtde_Saldo').AsFloat > 0 then begin
                          fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsFloat / fieldbyname('Qtde_Saldo').AsFloat;
                       end;
                       fieldbyname('Origem').value        := 'IND';
                       fieldbyname('Processo').value      := Industrial.fieldbyname('Processo').asstring;
                       fieldbyname('Tipo_Processo').value := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                  Post;
             end;
          end;
          // Entrada do produto industrializado na ficha de inventario.
          if Industrial.fieldbyname('Movimenta_Inventario').asboolean then begin
             with FichaInventario do begin
                  Append;                           
                       fieldbyname('Registro').value          := mRegInv;
                       fieldbyname('Item').value              := mItemInv;
                       fieldbyname('Codigo').value            := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
                       fieldbyname('Descricao').value         := Industrial.FieldByName('Descricao').AsString;
                       fieldbyname('UM').value                := Produtos.FieldByName('Unidade').AsString;
                       fieldbyname('NCM').value               := Produtos.FieldByName('NCM').AsString;
                       fieldbyname('Historico').value         := '* ENTRADA DE INDUSTRIALIZAÇÃO *';
                       fieldbyname('Estoque').value           := '0-EMPRESA';
                       fieldbyname('Emissor').value           := 'P';
                       fieldbyname('Nota').value              := Industrial.fieldbyname('Registro').asinteger;
                       fieldbyname('Data').value              := Industrial.fieldbyname('Data').value;
                       fieldbyname('ES').value                := 'E';
                       fieldbyname('Destinatario_Nome').value := tEmpresa.FieldByName('Razao_Social').AsString;
                       fieldbyname('Destinatario_CNPJ').value := tEmpresa.FieldByName('CNPJ').AsString;
                       fieldbyname('Finalidade').value        := 0;
                       fieldbyname('Qtde_Saida').value        := 0;
                       fieldbyname('Unitario_Saida').value    := 0;
                       fieldbyname('Total_Saida').value       := 0;
                       fieldbyname('Qtde_Entrada').value      := Industrial.fieldbyname('Quantidade').AsFloat;
                       fieldbyname('Unitario_Entrada').value  := Industrial.fieldbyname('Valor_Unitario').AsFloat;
                       fieldbyname('Total_Entrada').value     := Industrial.fieldbyname('Valor_Unitario').AsFloat * Industrial.fieldbyname('Quantidade').AsFloat;
                       if tSaldo.RecordCount > 0 then begin
                          fieldbyname('Qtde_Saldo').value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + fieldbyname('Qtde_Entrada').AsFloat;
                          fieldbyname('Total_Saldo').value := tSaldo.FieldByName('Total_Saldo').AsFloat + fieldbyname('Total_Entrada').AsFloat;
                       end else begin
                          fieldbyname('Qtde_Saldo').value  := fieldbyname('Qtde_Entrada').Value;
                          fieldbyname('Total_Saldo').value := fieldbyname('Total_Entrada').AsFloat;
                       end;
                       if fieldbyname('Qtde_Saldo').AsFloat > 0 then begin
                          fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsFloat / fieldbyname('Qtde_Saldo').AsFloat;
                       end;
                       fieldbyname('Origem').value        := 'IND';
                       fieldbyname('Processo').value      := Industrial.fieldbyname('Processo').asstring;
                       fieldbyname('Tipo_Processo').value := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                  Post;
             end;
          end;
          {===============================================================================[ MATERIA PRIMA ]================================================================================================}
          // Materias primas do produto principal.
          ProdutosMateriaPrima.First;
          while not ProdutosMateriaPrima.Eof do begin
                // Pegando o valor de entrada da ficha de estoque/Inventario
                with ttmp do begin
                     sql.clear;
                     sql.add('select isnull(Unitario_Saida, 0) as Unitario');
                     sql.add('from FichaEstoque');
                     sql.add('where Codigo = :pCodigo and Nota <> :pNota and Item = (select max(Item) from FichaEstoque where Codigo = :pCodigo and Nota <> :pNota) ');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     parambyName('pNota').AsInteger   := Industrial.fieldbyname('Registro').asinteger;
                     open;
                     mVlrUniEst := fieldbyname('Unitario').ascurrency;
                     
                     sql.clear;
                     sql.add('select isnull(Unitario_Saida, 0) as Unitario');
                     sql.add('from FichaInventario');
                     sql.add('where Codigo = :pCodigo and Nota <> :pNota and Item = (select max(Item) from FichaInventario where Codigo = :pCodigo and Nota <> :pNota) ');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     parambyName('pNota').AsInteger   := Industrial.fieldbyname('Registro').asinteger;
                     open;
                     mVlrUniInv := fieldbyname('Unitario').ascurrency;
                end;
                with ttmp do begin
                     sql.Clear;
                     SQL.Add('select ItemEst = (select isnull(max(Item), 0)+1 from FichaEstoque where Codigo = :pCodigo)');
                     SQL.Add('      ,ItemInv = (select isnull(max(Item), 0)+1 from FichaInventario where Codigo = :pCodigo)');
                     ParamByName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').asinteger;
                     Open;
                     mItemEst := fieldbyname('ItemEst').asinteger;
                     mItemInv := fieldbyname('ItemInv').asinteger;
                end;
                with ttmp do begin
                     sql.clear;
                     sql.Add('select RegEst = (select isnull(max(Registro), 0)+1 from FichaEstoque)');
                     sql.Add('      ,RegInv = (select isnull(max(Registro), 0)+1 from FichaEstoque)');
                     Open;
                     mRegEst := fieldbyname('RegEst').asinteger;
                     mRegInv := fieldbyname('RegInv').asinteger;
                     
                     sql.clear;
                     sql.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
                     Open;
                end;
                // Adiciona "SAÍDA" na tabela de transferência com tipo "IND: de industrialização".
                with ProdutosTransferencia do begin 
                     Append;
                          fieldbyname('Registro').value           := ttmp.FieldByName('Registro').AsInteger;
                          fieldbyname('Produto_Saida').value      := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          fieldbyname('Quantidade').value         := Roundto(Industrial.FieldByName('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat, -3);
                          fieldbyname('Quantidade_Entrada').value := 0;
                          fieldbyname('Inventario').value         := Industrial.FieldByName('Movimenta_Inventario').asboolean;
                          fieldbyname('Data_Transferencia').value := Industrial.FieldByName('Data').value;
                          fieldbyname('Nota').value               := Industrial.FieldByName('Registro').asinteger;
                          fieldbyname('Observacao').value         := 'SAÍDA DE MATERIA PRIMA DE INDUSTRIALIZAÇÃO REGISTRO FISCAL:' + Industrial.FieldByName('Registro').AsString + ' DE '+Industrial.FieldByName('Data').AsString;
                          fieldbyname('Estoque').value            := Industrial.FieldByName('Movimenta_Estoque').asboolean;
                          fieldbyname('Processo_Saida').value     := Industrial.FieldByName('Processo').AsString;
                          fieldbyname('Motivo').value             := 'IND';
                          fieldbyname('Valor_Unitario').value     := mVlrUniEst;
                     Post;
                end;
                // Registros de "SAÍDA" da matéria prima na ficha de estoque.
                with tSaldo do begin
                     sql.clear;
                     sql.add('select Qtde_Saldo');
                     sql.add('      ,Unitario_Saldo');
                     sql.add('      ,Total_Saldo');
                     sql.add('from FichaEstoque');
                     sql.add('where Codigo = :pCodigo');
                     sql.add('and Registro = (select max(Registro) from FichaEstoque where Codigo = :pCodigo)');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     open;
                end;
                with FichaEstoque do begin 
                     Append;                           
                          fieldbyname('Registro').Value          := mRegEst;
                          fieldbyname('Item').value              := mItemEst;
                          fieldbyname('Codigo').value            := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          fieldbyname('Descricao').value         := ProdutosMateriaPrima.FieldByName('Descricao').AsString;
                          fieldbyname('UM').value                := Produtos.FieldByName('Unidade').AsString;
                          fieldbyname('NCM').value               := Produtos.FieldByName('NCM').AsString;
                          fieldbyname('Historico').value         := '* SAÍDA DE INDUSTRIALIZAÇÃO *';
                          fieldbyname('Estoque').value           := '0-EMPRESA';
                          fieldbyname('Emissor').value           := 'P';
                          fieldbyname('Nota').value              := Industrial.fieldbyname('Registro').asinteger;
                          fieldbyname('Data').value              := Industrial.fieldbyname('Data').value;
                          fieldbyname('ES').value                := 'S';
                          fieldbyname('Destinatario_Nome').value := tEmpresa.FieldByName('Razao_Social').AsString;
                          fieldbyname('Destinatario_CNPJ').value := tEmpresa.FieldByName('CNPJ').AsString;
                          fieldbyname('Finalidade').value        := 0;
                          fieldbyname('Qtde_Entrada').value      := 0;
                          fieldbyname('Unitario_Entrada').value  := 0;
                          fieldbyname('Total_Entrada').value     := 0;
                          fieldbyname('Qtde_Saida').value        := Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat;
                          fieldbyname('Unitario_Saida').value    := mVlrUniEst;
                          fieldbyname('Total_Saida').value       := mVlrUniEst * (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Qtde_Saldo').value        := tSaldo.FieldByName('Qtde_Saldo').AsFloat - (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Total_Saldo').value       := tSaldo.FieldByName('Total_Saldo').AsFloat - fieldbyname('Total_Saida').AsFloat;
                          if (fieldbyname('Total_Saldo').AsCurrency > 0) then
                             fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsCurrency / fieldbyname('Qtde_Saldo').AsFloat
                          else
                             fieldbyname('Unitario_Saldo').value := 0;
                          fieldbyname('Origem').value         := 'IND';
                          fieldbyname('Processo').value       := Industrial.fieldbyname('Processo').asstring;
                          fieldbyname('Tipo_Processo').value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                     Post;
                end;
                // Registros de "SAÍDA" da matéria prima na ficha de inventario.
                with tSaldo do begin
                     sql.clear;
                     sql.add('select Qtde_Saldo');
                     sql.add('      ,Unitario_Saldo');
                     sql.add('      ,Total_Saldo');
                     sql.add('from FichaInventario');
                     sql.add('where Codigo = :pCodigo');
                     sql.add('and Registro = (select max(Registro) from FichaInventario where Codigo = :pCodigo)');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     open;
                end;
                with FichaInventario do begin 
                     Append;                           
                          fieldbyname('Registro').Value            := mRegInv;
                          fieldbyname('Item').value                := mItemInv;
                          fieldbyname('Codigo').value              := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          fieldbyname('Descricao').value           := ProdutosMateriaPrima.FieldByName('Descricao').AsString;
                          fieldbyname('UM').value                  := Produtos.FieldByName('Unidade').AsString;
                          fieldbyname('NCM').value                 := Produtos.FieldByName('NCM').AsString;
                          fieldbyname('Historico').value           := '* SAÍDA DE INDUSTRIALIZAÇÃO *';
                          fieldbyname('Estoque').value             := '0-EMPRESA';
                          fieldbyname('Emissor').value             := 'P';
                          fieldbyname('Nota').value                := Industrial.fieldbyname('Registro').asinteger;
                          fieldbyname('Data').value                := Industrial.fieldbyname('Data').value;
                          fieldbyname('ES').value                  := 'S';
                          fieldbyname('Destinatario_Nome').value   := tEmpresa.FieldByName('Razao_Social').AsString;
                          fieldbyname('Destinatario_CNPJ').value   := tEmpresa.FieldByName('CNPJ').AsString;
                          fieldbyname('Finalidade').value          := 0;
                          fieldbyname('Qtde_Entrada').value        := 0;
                          fieldbyname('Unitario_Entrada').value    := 0;
                          fieldbyname('Total_Entrada').value       := 0;
                          fieldbyname('Qtde_Saida').value          := Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat;
                          fieldbyname('Unitario_Saida').value      := mVlrUniInv;
                          fieldbyname('Total_Saida').value         := mVlrUniInv * (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Qtde_Saldo').value          := tSaldo.FieldByName('Qtde_Saldo').AsFloat - (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Total_Saldo').value         := tSaldo.FieldByName('Total_Saldo').AsFloat - fieldbyname('Total_Saida').AsFloat;
                          if (fieldbyname('Total_Saldo').ascurrency > 0) then
                             fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsCurrency / fieldbyname('Qtde_Saldo').AsFloat
                          else
                             fieldbyname('Unitario_Saldo').value := 0;
                          fieldbyname('Origem').value         := 'IND';
                          fieldbyname('Processo').value       := Industrial.fieldbyname('Processo').asstring;
                          fieldbyname('Tipo_Processo').value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                     Post;
                end;
                
                ProdutosMateriaPrima.Next;
          end;
     end;
end;




end.
