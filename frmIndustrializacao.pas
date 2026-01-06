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
    StaticText3: TStaticText;
    cDataNota: TDBDateEdit;
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
    procedure FichaEst;
    procedure FichaInv;
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
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TIndustrializacao.FormShow(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          with Industrial do begin
               sql.clear;
               sql.Add('select * from Industrializacao');
               open;
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
          with tProcesso do begin
               sql.clear;
               sql.add('select Processo');
               sql.Add('      ,Modalidade_Importacao');
               sql.Add('from ProcessosDocumentos');
               sql.Add('where Desativado <> 1');
               sql.Add('order by Processo');
               open; 
          end;
          FiltraMateria;
     end;
end;

procedure TIndustrializacao.cCodigoExit(Sender: TObject);
begin
     FiltraMateria;
end;

procedure TIndustrializacao.cProdutoExit(Sender: TObject);
begin
     FiltraMateria;
end;

procedure TIndustrializacao.FiltraMateria;
begin
     with Dados do begin
          with ProdutosMateriaPrima do begin
               if cCodigo.Text <> '' then begin
                  sql.clear;
                  sql.Add('select *');
                  sql.Add('      ,Saldo = (select Qtde_Saldo from FichaEstoque where Codigo = Codigo_MateriaPrima and Item = (select max(item) from FichaEstoque where Codigo = Codigo_MateriaPrima))');
                  sql.Add('from ProdutosMateriaPrima');
                  sql.Add('where Codigo_Produto = ' + Industrial.FieldByName('Codigo_Mercadoria').AsString);
                  open;
               end;
          end;
     end;
end;

procedure TIndustrializacao.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with Dados do begin
          if Button = nbPost then begin
             // Verifica todos os campos obrigatórios.
             if trim(Industrial.FieldByName('Codigo_Mercadoria').asstring) = '' then begin
                MessageDlg('Produto não informado!', mtError, [mbOK], 0);
                cCodigo.SetFocus;
                Abort;
             end;
             if strtofloat(cQtde.text) <= 0 then begin
                MessageDlg('Quantidade informada inválida!', mtError, [mbOK], 0);
                cQtde.SetFocus;
                Abort;
             end;
             if Industrial.State = dsEdit then begin
                DeletaMov;
             end;
          end;
          if Button = nbDelete then begin
             if Messagedlg('Deseja realmente remover este item?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
                Abort
             end;
             with ttmp do begin 
                DeletaMov;
             end;
             ProdutosMateriaPrima.Refresh;
          end;
     end;
end;

procedure TIndustrializacao.DeletaMov;
begin
     with Dados do begin
          with ttmp do begin 
               sql.clear;
               sql.add('delete from ProdutosTransferencia where Nota = :pNota and Data_Transferencia = :pData and Motivo = ''IND'' ');
               parambyname('pNota').AsInteger := Industrial.fieldbyname('Nota').asinteger;
               parambyname('pData').AsDate    := Industrial.fieldbyname('Data_Nota').value;
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
          end;
          if Button = nbPost then begin
             with FichaEstoque do begin 
                  sql.clear;
                  sql.add('select * from FichaEstoque where Nota = :pNota and Data = :pData and Destinatario_CNPJ = :pDest');
                  parambyname('pNota').AsInteger := Industrial.fieldbyname('Nota').asinteger;
                  parambyname('pData').value     := Industrial.fieldbyname('Data_Nota').value;
                  parambyname('pDest').value     := tEmpresa.fieldbyname('CNPJ').asstring;
                  open;
             end;
             with FichaInventario do begin 
                  sql.clear;
                  sql.add('select * from FichaInventario where Nota = :pNota and Data = :pData and Destinatario_CNPJ = :pDest');
                  parambyname('pNota').AsInteger := Industrial.fieldbyname('Nota').asinteger;
                  parambyname('pData').value     := Industrial.fieldbyname('Data_Nota').value;
                  parambyname('pDest').value     := tEmpresa.fieldbyname('CNPJ').asstring;
                  open;
             end;
             if Industrial.fieldbyname('Movimenta_Estoque').asboolean    then FichaEst;
             //if Industrial.fieldbyname('Movimenta_Inventario').asboolean then FichaInv;
          end;
     end;
end;

// Ficha de estoque - "ENTRADA" (Efetua a baixa da matéria prima de industrialização).
procedure TIndustrializacao.FichaEst;
var 
   mReg
  ,mItem: integer;
   mVlrUni: real;
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
               sql.Add('select isnull(max(Registro), 0)+1 as Registro from FichaEstoque');
               Open;
               mReg := fieldbyname('Registro').asinteger;
               
               sql.Clear;
               SQL.Add('select isnull(max(Item), 0)+1 as Item from FichaEstoque where Codigo = :pCodigo');
               ParamByName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               Open;
               mItem := fieldbyname('Item').asinteger;
          end;
          with ProdutosMateriaPrima do begin
               sql.clear;
               sql.add('select Registro');
               sql.add('      ,Codigo_Produto');
               sql.add('      ,Codigo_MateriaPrima');
               sql.add('      ,Conversao_M2M3');
               sql.add('      ,Quantidade_Utilizada');
               sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Unidade   = (select Unidade   from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Altura    = (select Altura    from Produtos where Codigo = Codigo_Produto)');
               sql.Add('      ,Saldo = (select Qtde_Saldo from FichaEstoque where Codigo = Codigo_MateriaPrima and Item = (select max(item) from FichaEstoque where Codigo = Codigo_MateriaPrima))');
               sql.add('from  ProdutosMateriaPrima');
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
          // Adiciona "ENTRADA" na tabela de transferência com tipo 'IN' de industrialização.
          with ttmp do begin
               sql.clear;
               sql.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
               Open;
          end;
          with ProdutosTransferencia do begin
               Append;
                    ProdutosTransferenciaRegistro.Value           := ttmp.FieldByName('Registro').AsInteger;
                    ProdutosTransferenciaProduto_Entrada.Value    := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
                    ProdutosTransferenciaQuantidade.Value         := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
                    ProdutosTransferenciaQuantidade_Entrada.Value := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
                    ProdutosTransferenciaInventario.Value         := Industrial.fieldbyname('Movimenta_Inventario').asboolean;
                    ProdutosTransferenciaData_Transferencia.Value := Industrial.fieldbyname('Data').value;
                    ProdutosTransferenciaNota.Value               := Industrial.fieldbyname('Nota').value;
                    ProdutosTransferenciaObservacao.Value         := 'ENTRADA DE MERCADORIA INDUSTRIALIZADA NOTA FISCAL:' + Industrial.fieldbyname('Nota').asstring+ ' DE '+Industrial.fieldbyname('Data_Nota').AsString;
                    ProdutosTransferenciaEstoque.Value            := Industrial.fieldbyname('Movimenta_Estoque').asboolean;
                    ProdutosTransferenciaProcesso_Entrada.Value   := Industrial.fieldbyname('Processo').asstring;
                    ProdutosTransferenciaMotivo.Value             := 'IND';
                    ProdutosTransferenciaValor_Unitario.Value     := Industrial.fieldbyname('Valor_Unitario').ascurrency;
                Post;
          end;
          // Entrada do produto industrializado na ficha de estoque.
          with FichaEstoque do begin
               Append;                           
                    FichaEstoqueRegistro.Value            := mReg;
                    FichaEstoqueItem.Value                := mItem;
                    FichaEstoqueCodigo.Value              := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
                    FichaEstoqueDescricao.Value           := Industrial.FieldByName('Descricao').AsString;
                    FichaEstoqueUM.Value                  := Produtos.FieldByName('Unidade').AsString;
                    FichaEstoqueNCM.Value                 := Produtos.FieldByName('NCM').AsString;
                    FichaEstoqueHistorico.Value           := '* ENTRADA DE INDUSTRIALIZAÇÃO *';
                    FichaEstoqueEstoque.Value             := '0-EMPRESA';
                    FichaEstoqueEmissor.Value             := 'P';
                    FichaEstoqueNota.Value                := Industrial.fieldbyname('Nota').asinteger;
                    FichaEstoqueData.Value                := Industrial.fieldbyname('Data_Nota').value;
                    FichaEstoqueES.Value                  := 'E';
                    FichaEstoqueDestinatario_Nome.Value   := tEmpresa.FieldByName('Razao_Social').AsString;
                    FichaEstoqueDestinatario_CNPJ.Value   := tEmpresa.FieldByName('CNPJ').AsString;
                    FichaEstoqueFinalidade.Value          := 0;
                    FichaEstoqueQtde_Saida.Value          := 0;
                    FichaEstoqueUnitario_Saida.Value      := 0;
                    FichaEstoqueTotal_Saida.Value         := 0;
                    FichaEstoqueQtde_Entrada.Value        := Industrial.fieldbyname('Quantidade').AsFloat;
                    FichaEstoqueUnitario_Entrada.Value    := Industrial.fieldbyname('Valor_Unitario').AsFloat;
                    FichaEstoqueTotal_Entrada.Value       := Industrial.fieldbyname('Valor_Unitario').AsFloat * Industrial.fieldbyname('Quantidade').AsFloat;
                    if tSaldo.RecordCount > 0 then begin
                       FichaEstoqueQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + FichaEstoqueQtde_Entrada.AsFloat;
                       FichaEstoqueTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat + FichaEstoqueTotal_Entrada.AsFloat;
                    end else begin
                       FichaEstoqueQtde_Saldo.Value  := FichaEstoqueQtde_Entrada.Value;
                       FichaEstoqueTotal_Saldo.Value := FichaEstoqueTotal_Entrada.AsFloat;
                    end;
                    if FichaEstoqueQtde_Saldo.AsFloat > 0 then begin
                       FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
                    end;
                    FichaEstoqueOrigem.Value         := 'IND';
                    FichaEstoqueProcesso.Value       := Industrial.fieldbyname('Processo').asstring;
                    FichaEstoqueTipo_Processo.Value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
               Post;
          end;

          // Materias primas do produto principal.
          ProdutosMateriaPrima.First;
          while not ProdutosMateriaPrima.Eof do begin
                // Pegando o valor de entrada da ficha de estoque.
                with ttmp do begin
                     sql.clear;
                     sql.add('select isnull(Unitario_Saida, 0) as Unitario');
                     sql.add('from FichaEstoque');
                     sql.add('where Codigo = :pCodigo and Nota <> :pNota and Item = (select max(Item) from FichaEstoque where Codigo = :pCodigo and Nota <> :pNota) ');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     parambyName('pNota').AsInteger   := Industrial.fieldbyname('Registro').asinteger;
                     open;
                     mVlrUni := fieldbyname('Unitario').ascurrency;
                end;
                with ttmp do begin
                     sql.Clear;
                     SQL.Add('select isnull(max(Item), 0)+1 as Item from FichaEstoque where Codigo = :pCodigo');
                     ParamByName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').asinteger;
                     Open;
                     mItem := fieldbyname('Item').asinteger;
                end;
                with ttmp do begin
                     sql.clear;
                     sql.Add('select isnull(max(Registro), 0)+1 as Registro from FichaEstoque');
                     Open;
                     mReg := fieldbyname('Registro').asinteger;
                     
                     sql.clear;
                     sql.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
                     Open;
                end;
                // Adiciona "SAÍDA" na tabela de transferência com tipo 'IN' de industrialização.
                with ProdutosTransferencia do begin 
                     Append;
                          ProdutosTransferenciaRegistro.Value           := ttmp.FieldByName('Registro').AsInteger;
                          ProdutosTransferenciaProduto_Saida.Value      := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          ProdutosTransferenciaQuantidade.Value         := Roundto(Industrial.FieldByName('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat, -3);
                          ProdutosTransferenciaQuantidade_Entrada.Value := 0;
                          ProdutosTransferenciaInventario.Value         := Industrial.FieldByName('Movimenta_Inventario').asboolean;
                          ProdutosTransferenciaData_Transferencia.Value := Industrial.FieldByName('Data').value;
                          ProdutosTransferenciaNota.Value               := Industrial.FieldByName('Nota').asinteger;
                          ProdutosTransferenciaObservacao.Value         := 'SAÍDA DE MATERIA PRIMA DE INDUSTRIALIZAÇÃO NOTA FISCAL:' + Industrial.FieldByName('Nota').AsString + ' DE '+Industrial.FieldByName('Data_Nota').AsString;
                          ProdutosTransferenciaEstoque.Value            := Industrial.FieldByName('Movimenta_Estoque').asboolean;
                          ProdutosTransferenciaProcesso_Saida.Value     := Industrial.FieldByName('Processo').AsString;
                          ProdutosTransferenciaMotivo.Value             := 'IND';
                          ProdutosTransferenciaValor_Unitario.Value     := Industrial.FieldByName('Valor_Unitario').ascurrency;
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
                          FichaEstoqueRegistro.Value            := mReg;
                          FichaEstoqueItem.Value                := mItem;
                          FichaEstoqueCodigo.Value              := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          FichaEstoqueDescricao.Value           := ProdutosMateriaPrima.FieldByName('Descricao').AsString;
                          FichaEstoqueUM.Value                  := Produtos.FieldByName('Unidade').AsString;
                          FichaEstoqueNCM.Value                 := Produtos.FieldByName('NCM').AsString;
                          FichaEstoqueHistorico.Value           := '* SAÍDA DE INDUSTRIALIZAÇÃO *';
                          FichaEstoqueEstoque.Value             := '0-EMPRESA';
                          FichaEstoqueEmissor.Value             := 'P';
                          FichaEstoqueNota.Value                := Industrial.fieldbyname('Nota').asinteger;
                          FichaEstoqueData.Value                := Industrial.fieldbyname('Data_Nota').value;
                          FichaEstoqueES.Value                  := 'S';
                          FichaEstoqueDestinatario_Nome.Value   := tEmpresa.FieldByName('Razao_Social').AsString;
                          FichaEstoqueDestinatario_CNPJ.Value   := tEmpresa.FieldByName('CNPJ').AsString;
                          FichaEstoqueFinalidade.Value          := 0;
                          FichaEstoqueQtde_Entrada.Value        := 0;
                          FichaEstoqueUnitario_Entrada.Value    := 0;
                          FichaEstoqueTotal_Entrada.Value       := 0;
                          FichaEstoqueQtde_Saida.Value          := Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat;
                          FichaEstoqueUnitario_Saida.Value      := mVlrUni;
                          FichaEstoqueTotal_Saida.Value         := mVlrUni * (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          FichaEstoqueQtde_Saldo.Value          := tSaldo.FieldByName('Qtde_Saldo').AsFloat - (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          FichaEstoqueTotal_Saldo.Value         := tSaldo.FieldByName('Total_Saldo').AsFloat - FichaEstoqueTotal_Saida.AsFloat;
                          If (FichaEstoqueTotal_Saldo.AsCurrency > 0) then
                             FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsFloat
                          else
                             FichaEstoqueUnitario_Saldo.Value := 0;
                          FichaEstoqueOrigem.Value         := 'IND';
                          FichaEstoqueProcesso.Value       := Industrial.fieldbyname('Processo').asstring;
                          FichaEstoqueTipo_Processo.Value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                     Post;
                end;
                
                ProdutosMateriaPrima.Next;
          end;
     end;
end;

// Ficha de Inventario - "ENTRADA".
procedure TIndustrializacao.FichaInv;
var 
   mReg
  ,mItem: integer;
   mVlrUni: real;
begin
     // Exclui os itens criados na tabela de transferencias anteriormente para a nota fiscal.
     with Dados, dmFiscal do begin
          with ProdutosTransferencia do begin
//               sql.clear;
//               sql.add('delete from ProdutosTransferencia where Nota = :pNota and Data_Transferencia = :pData');
//               parambyname('pNota').value := Industrial.fieldbyname('Registro').asinteger;
//               parambyname('pData').value := Industrial.FieldByName('Data').value;
//               execute;
               sql.clear;
               sql.add('select * from ProdutosTransferencia where Produto_Entrada = :pProduto');
               parambyname('pProduto').asinteger := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
               Open;
          end;
          with ttmp do begin
               sql.clear;
               sql.Add('select isnull(max(Registro), 0)+1 as Registro');
               sql.Add('from FichaInventario');
               Open;
               mReg := fieldbyname('Registro').asinteger;
               
               sql.Clear;
               SQL.Add('select isnull(max(Item), 0)+1 as Item from FichaInventario where Codigo = :pCodigo');
               ParamByName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               Open;
               mItem := fieldbyname('Item').asinteger;
          end;
          with ProdutosMateriaPrima do begin
               sql.clear;
               sql.add('select Registro');
               sql.add('      ,Codigo_Produto');
               sql.add('      ,Codigo_MateriaPrima');
               sql.add('      ,Conversao_M2M3');
               sql.add('      ,Quantidade_Utilizada');
               sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Unidade   = (select Unidade   from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Altura    = (select Altura    from Produtos where Codigo = Codigo_Produto)');
               sql.add('from  ProdutosMateriaPrima');
               sql.add('where Codigo_Produto = :pCodigo');
               parambyName('pCodigo').AsInteger := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
               open;
          end;
          with tSaldo do begin 
               sql.clear;
               sql.add('select Qtde_Saldo');
               sql.add('      ,Unitario_Saldo');
               sql.add('      ,Total_Saldo');
               sql.add('from FichaInventario');
               sql.add('where Codigo = :pCodigo');
               sql.add('and  Registro = (select max(Registro) from FichaInventario where Codigo = :pCodigo)');
               parambyName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               open;
          end;
          // Entrada do produto industrializado na ficha de estoque.
          FichaInventario.Append;                           
                       FichaInventarioRegistro.Value            := mReg;
                       FichaInventarioItem.Value                := mItem;
                       FichaInventarioCodigo.Value              := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
                       FichaInventarioDescricao.Value           := Industrial.FieldByName('Descricao').AsString;
                       FichaInventarioUM.Value                  := Produtos.FieldByName('Unidade').AsString;
                       FichaInventarioNCM.Value                 := Produtos.FieldByName('NCM').AsString;
                       FichaInventarioHistorico.Value           := '* ENTRADA DE INDUSTRIALIZAÇÃO *';
                       FichaInventarioEstoque.Value             := '0-EMPRESA';
                       FichaInventarioEmissor.Value             := 'P';
                       FichaInventarioNota.Value                := Industrial.fieldbyname('Nota').asinteger;
                       FichaInventarioData.Value                := Industrial.fieldbyname('Data_Nota').value;
                       FichaInventarioES.Value                  := 'E';
                       //FichaInventarioDestinatario_Codigo.Value := null;
                       FichaInventarioDestinatario_Nome.Value   := tEmpresa.FieldByName('Razao_Social').AsString;
                       FichaInventarioDestinatario_CNPJ.Value   := tEmpresa.FieldByName('CNPJ').AsString;
                       FichaInventarioFinalidade.Value          := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                       FichaInventarioQtde_Saida.Value          := 0;
                       FichaInventarioUnitario_Saida.Value      := 0;
                       FichaInventarioTotal_Saida.Value         := 0;
                       FichaInventarioQtde_Entrada.Value        := Industrial.fieldbyname('Quantidade').AsFloat;
                       FichaInventarioUnitario_Entrada.Value    := Industrial.fieldbyname('Valor_Unitario').AsFloat;
                       FichaInventarioTotal_Entrada.Value       := Industrial.fieldbyname('Valor_Unitario').AsFloat * Industrial.fieldbyname('Quantidade').AsFloat;
                       if tSaldo.RecordCount > 0 then begin
                          FichaInventarioQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + FichaInventarioQtde_Entrada.AsFloat;
                          FichaInventarioTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat + FichaInventarioTotal_Entrada.AsFloat;
                       end else begin
                          FichaInventarioQtde_Saldo.Value  := FichaInventarioQtde_Entrada.Value;
                          FichaInventarioTotal_Saldo.Value := FichaInventarioTotal_Entrada.AsFloat;
                       end;
                       if FichaInventarioQtde_Saldo.AsFloat > 0 then begin
                          FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
                       end;
                       FichaInventarioOrigem.Value         := 'IND';
                       FichaInventarioProcesso.Value       := Industrial.fieldbyname('Processo').asstring;
                       FichaInventarioTipo_Processo.Value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
          FichaInventario.Post;
     end;
end;

              




end.
