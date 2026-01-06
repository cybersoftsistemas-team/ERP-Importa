unit frmNotaFiscal_TerceirosReferenciaItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DB, DBAccess, MSAccess, CalcExpress,
  Menus, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, DBCtrls, FUNCOES, Mask, system.UITypes, Buttons, RxCurrEdit, RxToolEdit, MemDS;

type
  TDBGridDescendant = class(TDBGrid);
  TNotaFiscal_TerceirosReferenciaItens = class(TForm)
    GroupBox2: TGroupBox;
    Grade2: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    bInclui_Todos: TButton;
    bRemove_Item: TButton;
    bRemove_Todos: TButton;
    PopupMenu1: TPopupMenu;
    mnIncluiItem: TMenuItem;
    mnIncluiAdicao: TMenuItem;
    mnIncluiTodos: TMenuItem;
    N1: TMenuItem;
    mnRemoveItem: TMenuItem;
    mnRemoveAdicao: TMenuItem;
    mnRemoveTodos: TMenuItem;
    N2: TMenuItem;
    mnSair: TMenuItem;
    mMacro: TCalcExpress;
    tItem: TMSQuery;
    GroupBox1: TGroupBox;
    Grade1: TDBGrid;
    Panel2: TPanel;
    StaticText3: TStaticText;
    StaticText17: TStaticText;
    cNotaReferencia: TCurrencyEdit;
    cDataReferencia: TDateEdit;
    tAdicoes: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tPesquisa: TMSQuery;
    cPesquisa: TEdit;
    StaticText1: TStaticText;
    bIncluir_nota: TButton;
    bPesquisar: TSpeedButton;
    bInclui_Interv: TButton;
    GroupBox3: TGroupBox;
    GradeSer: TDBGrid;
    tSeriais: TMSQuery;
    dstSeriais: TDataSource;
    GradeSerNF: TDBGrid;
    tSeriaisNF: TMSQuery;
    dstSeriaisNF: TDataSource;
    tTemp: TMSQuery;
    tDisp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdicionaUm(pQtde: Real);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bRemove_TodosClick(Sender: TObject);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure bRemove_ItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grade1Enter(Sender: TObject);
    procedure Grade2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure AtualizaDisponivel;
    procedure cPesquisaChange(Sender: TObject);
    procedure bIncluir_notaClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure bInclui_IntervClick(Sender: TObject);
  private
    procedure FiltraSeriais;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosReferenciaItens: TNotaFiscal_TerceirosReferenciaItens;

implementation

uses frmDMFiscal, frmDados, frmJanela_Processamento;

{$R *.dfm}

procedure TNotaFiscal_TerceirosReferenciaItens.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados, dmFiscal do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNota) AND (Data_Emissao = :pData)');
             Notas.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
             Notas.ParamByName('pData').AsDate    := cDataReferencia.Date;
             Notas.Open;

             TipoNota.SQL.Clear;
             TipoNota.SQL.Add('SELECT * FROM TipoNota');
             TipoNota.Open;

             Adicoes.SQL.Clear;
             Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI IN(SELECT DISTINCT DI FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)))');
             Adicoes.ParamByName('pNota').AsInteger := NotasNumero.Value;
             Adicoes.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
             Adicoes.Open;

             CSTTabelaB.SQL.Clear;
             CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Codigo');
             CSTTabelaB.Open;

             CSTIPI.SQL.Clear;
             CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Codigo');
             CSTIPI.Open;

             FiltraSeriais;

             NotasTerceirosItens.First;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bInclui_ItemClick(Sender: TObject);
Var
    mQtdeInput : String;
    mQuantidade: Real;
begin
      mQuantidade := 0;
      with tSeriais do begin
           if RecordCount = 0 then begin
              mQtdeInput  := InputBox('Quantidade do item','Quantidade:','');
              mQuantidade := 0;
         
              if mQtdeInput <> '' then
                 mQuantidade := StrtoFloat(mQtdeInput)
              else
                 Abort;
         
              if (mQuantidade > dmFiscal.NotasItensDisponivel.Value) or (mQuantidade <= 0) then begin
                 ShowMessage('A quantidade informada para este item é invalida!');
                 Abort;
              end;
           end else begin
              if (GradeSer.SelectedRows.Count = 0) and (RecordCount > 1) then begin
                 Messagedlg('Nenhum Chassi/Serial selecionado!'+#13+#13+'Selecione os Chassis/Seriais para continuar.', mtError, [mbOK], 0);
                 Abort;
              end else begin
                 GradeSer.SelectedRows.CurrentRowSelected := True;
                 mQuantidade := 1;
              end;
           end;
      end;

      AdicionaUm(mQuantidade);
      FiltraSeriais;
      bPesquisarClick(self);
end;

procedure TNotaFiscal_TerceirosReferenciaItens.AdicionaUm(pQtde: Real);
begin
      with Dados, dmFiscal do begin
           // Pegando o numero do item.
           with tItem do begin
                close;
                sql.Clear;
                sql.Add('select isnull(MAX(Item), 0)+1 as Item from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData');
                ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                open;
           end;
           with NotasTerceirosItens do begin
                Append;
                     FieldByName('Nota').Value                 := NotasTerceirosNota.Value;
                     FieldByName('Data_Emissao').Value         := NotasTerceirosData_Emissao.Value;
                     FieldByName('Data_Entrada').Value         := NotasTerceirosData_Entrada.Value;
                     FieldByName('Item').Value                 := tItem.FieldByName('Item').Value;
                     FieldByName('Processo').Value             := NotasItensProcesso.Value;
                     FieldByName('Sequencia_SISCOMEX').Value   := NotasItensSequencia_SISCOMEX.Value;
                     FieldByName('Fornecedor').Value           := NotasTerceirosFornecedor.Value;
                     FieldByName('Codigo_Mercadoria').Value    := NotasItensCodigo_Mercadoria.Value;
                     FieldByName('Descricao_Mercadoria').Value := NotasItensDescricao_Mercadoria.Value;
                     FieldByName('DI').Value                   := NotasItensDI.Value;
                     FieldByName('Adicao').Value               := NotasItensAdicao.Value;
                     FieldByName('NCM').Value                  := NotasItensNCM.Value;
                     FieldByName('Unidade_Medida').Value       := NotasItensUnidade_Medida.Value;
                     FieldByName('CodigoTrib_TabA').Value      := Copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
                     FieldByName('CodigoTrib_TabB').Value      := Copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
                     FieldByName('CST_IPI').Value              := ReferenciasFiscaisCSTIPI.AsString;
                     FieldByName('CST_PIS').Value              := ReferenciasFiscaisCSTPIS.AsString;
                     FieldByName('CST_COFINS').Value           := ReferenciasFiscaisCSTCOFINS.AsString;
                     FieldByName('Aliquota_PIS').Value         := NotasItensAliquota_PIS.Value;
                     FieldByName('Aliquota_COFINS').Value      := NotasItensAliquota_COFINS.Value;
                     FieldByName('Aliquota_PISOrig').Value     := NotasItensAliquota_PIS.Value;
                     FieldByName('Aliquota_COFINSOrig').Value  := NotasItensAliquota_COFINS.Value;
                     FieldByName('Valor_BCPIS').Value          := (NotasItensValor_BCPIS.Value  / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_PIS').Value            := (NotasItensValor_PIS.Value    / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_BCCOFINS').Value       := (NotasItensValor_BCPIS.Value  / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_COFINS').Value         := (NotasItensValor_COFINS.Value / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_PISOrig').Value        := (NotasItensValor_PIS.Value    / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_COFINSOrig').Value     := (NotasItensValor_COFINS.Value / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Quantidade').Value           := pQtde;
                     FieldByName('Disponivel').Value           := pQtde;
                     FieldByName('Valor_Unitario').Value       := NotasItensValor_Unitario.Value;
                     FieldByName('Valor_UnitarioOrig').Value   := NotasItensValor_Unitario.Value;
                     FieldByName('Valor_Desconto').Value       := 0;
                     FieldByName('Valor_Liquido').Value        := NotasItensValor_Unitario.Value * pQtde;
                     FieldByName('Aliquota_ICMSOper').Value    := NotasItensAliquota_ICMSOper.Value;
                     FieldByName('Valor_BCICMSOper').Value     := (NotasItensValor_BCICMSOper.AsCurrency / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_ICMSOper').Value       := (NotasItensValor_ICMSOper.AsCurrency / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_ICMSOperOrig').Value   := NotasTerceirosItensValor_ICMSOper.Value;
                     FieldByName('Aliquota_ICMSSub').Value     := NotasItensAliquota_ICMSSub.Value;
                     FieldByName('Valor_BCICMSSub').Value      := (NotasItensValor_BCICMSSub.AsCurrency / NotasItensQuantidade.AsFloat) * pQtde;
                     FieldByName('Valor_ICMSSub').Value        := NotasTerceirosItensValor_ICMSSub.Value;
                     FieldByName('Aliquota_IPI').Value         := NotasItensAliquota_IPI.Value;

                     if NotasTerceirosItensAliquota_IPI.AsFloat > 0 then begin
                        FieldByName('Valor_BCIPI').Value   := (NotasItensValor_BCIPI.Value/NotasItensQuantidade.Value) * pQtde;
                        FieldByName('Valor_IPI').Value     := (NotasItensTotal_IPI.Value  /NotasItensQuantidade.Value) * pQtde;
                        FieldByName('Valor_IPIOrig').Value := (NotasItensTotal_IPI.Value  /NotasItensQuantidade.Value) * pQtde;
                     end;

                     FieldByName('Peso_Liquido').Value         := NotasItensPeso_Liquido.Value;
                     FieldByName('Peso_Bruto').Value           := NotasItensPeso_Bruto.Value;
                     FieldByName('Natureza_Codigo').Value      := NotasTerceirosNatureza_Codigo.Value;
                     FieldByName('Nota_Referencia').Value      := cNotaReferencia.AsInteger;
                     FieldByName('Data_Referencia').Value      := cDataReferencia.Date;
                     FieldByName('Item_Referencia').Value      := NotasItensItem.Value;
                     FieldByName('Valor_IsentasIPI').Value     := (NotasItensValor_IsentasIPI.Value /NotasItensQuantidade.Value) * pQtde;
                     FieldByName('Valor_OutrasIPI').Value      := (NotasItensValor_OutrasIPI.Value  /NotasItensQuantidade.Value) * pQtde;
                     FieldByName('Valor_IsentasICMS').Value    := (NotasItensValor_IsentasICMS.Value/NotasItensQuantidade.Value) * pQtde;
                     FieldByName('Valor_OutrasICMS').Value     := (NotasItensValor_OutrasICMS.Value /NotasItensQuantidade.Value) * pQtde;
                     FieldByName('Tipo').Value                 := 'NF';
                     FieldByName('Movimenta_Estoque').Value    := ReferenciasFiscaisMovimenta_Estoque.AsBoolean;
                     FieldByName('Movimenta_Inventario').Value := ReferenciasFiscaisMovimenta_Inventario.AsBoolean;
                     FieldByName('Inventario_Terceiros').Value := ReferenciasFiscaisInventario_Terceiros.AsBoolean;
                     FieldByName('Apuracao_PISCOFINS').Value   := ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean;
                     FieldByName('Referencia_Fiscal').Value    := NotasTerceirosReferencia_Fiscal.Value;
                     FieldByName('Registro_Adicao').Value      := NotasItensRegistro_Adicao.Value;

                     // Executa o cálculo do valor do inventario ou busca o valor da ficha de estoque.
                     if not ReferenciasFiscais.FieldByName('Inventario_Estoque').AsBoolean then begin
                        FieldByName('Valor_Inventario').Value := CalculaInventario(ReferenciasFiscaisCodigo.AsInteger);
                     end else begin
                        // Pegando o valor de inventario da ficha de Inventario.
                        with tEstoque do begin
                             SQL.Clear;
                             SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida');
                             SQL.Add('FROM   FichaInventario');
                             SQL.Add('WHERE  Nota = :pNota AND Data = :pData AND Codigo = :pCodigo');
                             ParamByName('pNota').AsInteger   := NotasTerceirosItensNota_Referencia.AsInteger;
                             ParamByName('pData').AsDate      := NotasTerceirosItensData_Referencia.AsDateTime;
                             ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                             Open;
                             if RecordCount > 0 then begin
                                NotasTerceirosItensValor_Inventario.Value := FieldByName('Unitario_Saida').AsFloat;
                             end;
                        end;
                     end;
                Post;
           end;
           
           // Procura pelo item na adição para liberar o estoque.
           with Produtos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
                ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                Open;
           end;

           if Adicoes.Locate('Registro', NotasItensRegistro_Adicao.Value, [loCaseInsensitive] ) = true then begin
              // Ajustando o campo disponível da nota de referência quando tem DI.
              with tDisp do begin 
                   sql.Clear;
                   sql.Add('select Disponivel from NotasItens where Nota = :pNota and Data = :pData AND Codigo_Mercadoria = :pMerc and Registro_Adicao = :pReg');
                   parambyname('pNota').AsInteger := NotasTerceirosItensNota_Referencia.AsInteger;
                   parambyname('pData').value     := NotasTerceirosItensData_Referencia.value;
                   parambyname('pMerc').value     := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   parambyname('pReg').value      := NotasTerceirosItensRegistro_Adicao.AsInteger;
                   open;
                   if recordcount > 0 then begin
                      with tTemp do begin
                           sql.Clear; 
                           sql.add('update NotasItens set Disponivel = :pDisp where Nota = :pNota and Data = :pData and Codigo_Mercadoria = :pMerc');
                           parambyname('pNota').AsInteger     := NotasTerceirosItensNota_Referencia.AsInteger;
                           parambyname('pData').value         := NotasTerceirosItensData_Referencia.value;
                           parambyname('pMerc').AsInteger     := NotasTerceirosItensRegistro_Adicao.AsInteger;
                           parambyname('pDisp').value         := tDisp.fieldbyname('Disponivel').asfloat - (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                           execute;
                      end;
                   end;
              end;
              
              // Ajustando o campo disponível da adição.
              Adicoes.Edit;
                      AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value + (pQtde * ProdutosQuantidade_Unidade.Value);
                      if ReferenciasFiscaisFinalidade_Mercadoria.Value = 4 then begin
                         AdicoesLancado_Terceiros.Value := AdicoesLancado_Terceiros.Value - (pQtde * ProdutosQuantidade_Unidade.Value);
                         if AdicoesLancado_Terceiros.Value < 0 then AdicoesLancado_Terceiros.Value := 0;
                      end;
              Adicoes.Post;
           end else begin
              // Ajustando o campo disponível da nota de referência quando não tem DI.
              with tDisp do begin 
                   sql.Clear;
                   sql.Add('select Disponivel from NotasItens where Nota = :pNota and Data = :pData AND Codigo_Mercadoria = :pMerc');
                   parambyname('pNota').AsInteger := NotasTerceirosItensNota_Referencia.AsInteger;
                   parambyname('pData').value     := NotasTerceirosItensData_Referencia.value;
                   parambyname('pMerc').value     := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   open;
                   if recordcount > 0 then begin
                      with tTemp do begin
                           sql.Clear; 
                           sql.add('update Notasitens set Disponivel = :pDisp where Nota = :pNota and Data = :pData and Codigo_Mercadoria = :pMerc');
                           parambyname('pNota').AsInteger     := NotasTerceirosItensNota_Referencia.AsInteger;
                           parambyname('pData').value         := NotasTerceirosItensData_Referencia.value;
                           parambyname('pMerc').AsInteger     := NotasTerceirosItensRegistro_Adicao.AsInteger;
                           parambyname('pDisp').value         := tDisp.fieldbyname('Disponivel').asfloat - (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                           execute;
                      end;
                   end;
              end;
           end;
           
           // Procura pelo item na tabela de chassis para liberar.
           with ProdutosSeriais do begin
                SQL.Clear;
                SQL.Add('UPDATE ProdutosSeriais SET Nota_Retorno = :pNotaRet');
                SQL.Add('                          ,Data_Retorno = :pDataRet');
                SQL.Add('                          ,Disponivel   = 1');
                SQL.Add('WHERE  Produto_Codigo = :pCodigo');
                SQL.Add('AND    Nota_Saida     = :pNotaSai');
                SQL.Add('AND    Data_Saida     = :pDataSai');
                ParamByName('pCodigo').AsInteger  := NotasItensCodigo_Mercadoria.AsInteger;
                ParamByName('pNotaRet').AsInteger := NotasTerceirosItensNota.AsInteger;
                ParamByName('pDataRet').AsDate    := NotasTerceirosItensData_Emissao.AsDateTime;
                ParamByName('pNotaSai').AsInteger := NotasItensNota.AsInteger;
                ParamByName('pDataSai').AsDate    := NotasItensData.AsDateTime;
                Execute;
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM   ProdutosSeriais');
                SQL.Add('WHERE  Produto_Codigo = :pCodigo');
                SQL.Add('AND    Nota_Saida     = :pNota');
                SQL.Add('AND    Data_Saida     = :pData');
                ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                ParamByName('pNota').AsInteger   := NotasItensNota.AsInteger;
                ParamByName('pData').AsDate      := NotasItensData.AsDateTime;
                Open;
           end;

           ProdutosSeriaisNotas.Open;
           
           with tSeriais do begin
                DisableControls;
                first;
                while not eof do begin
                      if GradeSer.SelectedRows.CurrentRowSelected = True then begin
                         with ProdutosSeriaisNotas do begin
                              with tTemp do begin
                                   sql.Clear;
                                   sql.Add('select isnull(max(Registro), 0)+1 as Reg from ProdutosSeriaisNotas');
                                   Open; 
                              end;
                              Append;
                                   FieldByName('Registro').Value       := tTemp.FieldByName('Reg').AsInteger;
                                   FieldByName('Produto_Codigo').Value := NotasTerceirosItens.FieldByName('Codigo_Mercadoria').AsInteger;
                                   FieldByName('Numero').Value         := tSeriais.FieldByName('Numero').value;
                                   FieldByName('Nota').Value           := NotasTerceirosItens.FieldByName('Nota').AsInteger;
                                   FieldByName('Data').Value           := NotasTerceirosItens.FieldByName('Data_Emissao').value;
                                   FieldByName('Saida_Entrada').Value  := 0;
                                   FieldByName('Emissor').Value        := 'T';
                              post; 
                              tTemp.close;
                         end;
                         // Registra a ultima nota de entrada no cadastro de chassi/serial do produto.
                         with tTemp do begin
                              sql.Clear;
                              sql.add('update ProdutosSeriais set Pedido       = null');
                              sql.add('                          ,Disponivel   = 1');
                              sql.add('                          ,Nota_Entrada = :pNotaT');
                              sql.add('                          ,Data_Entrada = :pDataT');
                              sql.add('where Produto_Codigo = :pCod');
                              sql.add('and   Numero = :pNum');
                              ParamByName('pCod').AsInteger   := NotasTerceirosItens.FieldByName('Codigo_Mercadoria').AsInteger;
                              ParamByName('pNum').Asstring    := tSeriais.FieldByName('Numero').value;
                              ParamByName('pNotaT').AsInteger := NotasTerceirosItens.FieldByName('Nota').AsInteger;
                              ParamByName('pDataT').AsDate    := NotasTerceirosItens.FieldByName('Data_Emissao').value;
                              execute;
                         end;
                      end;
                      next;
                end;
                EnableControls;
           end;
      end;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bRemove_TodosClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      If MessageDlg('Deseja realmente remover todos os itens da nota?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         With dmFiscal,Dados do begin
              Janela_Processamento := TJanela_Processamento.Create(Self);
              Janela_Processamento.Progresso.Position := 0;
              Janela_Processamento.Progresso.Max      := NotasTerceirosItens.RecordCount;
              Janela_Processamento.lProcesso.Caption  := 'Removendo todos os itens da nota fiscal...';
              Janela_Processamento.Show;

              NotasTerceirosItens.DisableControls;
              NotasTerceiros.DisableControls;
              Adicoes.DisableControls;
              Produtos.DisableControls;
              NotasItens.DisableControls;
              
              NotasTerceirosItens.First;
              While not NotasTerceirosItens.Eof do begin
                    with tDisp do begin 
                         sql.Clear;
                         sql.Add('select Disponivel from NotasItens where Nota = :pNota and Data = :pData and isnull(Registro_Adicao, 0) = :pRegistro and Codigo_Mercadoria = :pCodMerc');
                         parambyname('pNota').AsInteger     := NotasTerceirosItensNota_Referencia.AsInteger;
                         parambyname('pData').value         := NotasTerceirosItensData_Referencia.value;
                         parambyname('pRegistro').AsInteger := NotasTerceirosItensRegistro_Adicao.AsInteger;
                         open;
                         if RecordCount > 0 then begin
                            with tTemp do begin
                                 sql.Clear; 
                                 sql.add('update Notasitens set Disponivel = :pDisp where Nota = :pNota and Data = :pData and Codigo_Mercadoria = :pMerc and Registro_Adicao = :pReg');
                                 parambyname('pNota').AsInteger     := NotasTerceirosItensNota_Referencia.AsInteger;
                                 parambyname('pData').value         := NotasTerceirosItensData_Referencia.value;
                                 parambyname('pMerc').AsInteger     := NotasTerceirosItensRegistro_Adicao.AsInteger;
                                 parambyname('pRegistro').AsInteger := NotasTerceirosItensRegistro_Adicao.AsInteger;
                                 parambyname('pDisp').value         := tDisp.fieldbyname('Disponivel').Value + NotasTerceirosItensQuantidade.asfloat;
                                 execute;
                            end;
                         end;
                    end;
                    
                    // Procura pelo item na adição para liberar o estoque.
                    Adicoes.SQL.Clear;
                    Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(Registro = :pRegistro)');
                    Adicoes.ParamByName('pRegistro').AsInteger := NotasTerceirosItensRegistro_Adicao.AsInteger;
                    Adicoes.Open;

                    If Adicoes.RecordCount > 0 then begin
                       Produtos.SQL.Clear;
                       Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
                       Produtos.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                       Produtos.Open;
                       
                       Adicoes.Edit;
                               AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value - (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                               If AdicoesLancado_Saida.Value < 0 then AdicoesLancado_Saida.Value := 0;

                               If ReferenciasFiscaisFinalidade_Mercadoria.Value = 4 then begin
                                  AdicoesLancado_Terceiros.Value := AdicoesLancado_Terceiros.Value + (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                               End;
                       Adicoes.Post;
                    End;

                    //Apaga a nota de terceiros da tabela de SeriaisNotas.
                    with tTemp do begin
                         sql.Clear;
                         sql.Add('delete from ProdutosSeriaisNotas where Nota = :pNotaT and Data = :pDataT and Produto_Codigo = :pCodigo');
                         ParamByName('pNotaT').AsInteger  := NotasTerceirosItensNota.Value;
                         ParamByName('pDataT').AsDate     := NotasTerceirosItensData_Emissao.Value;
                         ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                         execute;
                    end;

                    NotasTerceirosItens.Next;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
              End;
              Janela_Processamento.Close;

              // Bloqueia todos os chassis retornados na nota de terceiros.
              with ProdutosSeriais do begin
                   SQL.Clear;
                   SQL.Add('UPDATE ProdutosSeriais SET Disponivel = 0');
                   SQL.Add('                          ,Nota_Retorno = null');
                   SQL.Add('                          ,Data_Retorno = null');
                   SQL.Add('WHERE Nota_Retorno = :pNota AND Data_Retorno = :pData AND Produto_Codigo IN(SELECT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
                   ParamByName('pNota').AsInteger   := NotasTerceirosNota.Value;
                   ParamByName('pData').AsDate      := NotasTerceirosData_Emissao.Value;
                   ParamByName('pForn').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                   Execute;
                   SQL.Clear;
                   SQL.Add('SELECT *');
                   SQL.Add('FROM   ProdutosSeriais');
                   SQL.Add('WHERE  Produto_Codigo = :pCodigo');
                   SQL.Add('AND    Nota_Saida     = :pNota');
                   SQL.Add('AND    Data_Saida     = :pData');
                   ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                   ParamByName('pNota').AsInteger   := NotasItensNota.AsInteger;
                   ParamByName('pData').AsDate      := NotasItensData.AsDateTime;
                   Open;
              end;

              // Deleta os itens da nota fiscal de terceiros.
              with NotasTerceirosItens do begin 
                   SQL.Clear;
                   SQL.Add('DELETE FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
                   ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                   ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                   Execute;
                   SQL.Clear;
                   SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
                   ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
                   ParamByName('pData').AsDate    := cDataReferencia.Date;
                   Open;
              end;

              FiltraSeriais;

              NotasTerceirosItens.EnableControls;
              NotasTerceiros.EnableControls;
              Adicoes.EnableControls;
              Produtos.EnableControls;
              NotasItens.EnableControls;
         End;
      End;
      
      Screen.Cursor := crDefault;
      cNotaReferencia.SetFocus;
      bPesquisarClick(self);
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bInclui_TodosClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens disponiveis pelo saldo total...';
           Janela_Processamento.Show;

           NotasTerceirosItens.DisableControls;
           NotasTerceiros.DisableControls;
           Adicoes.DisableControls;
           Produtos.DisableControls;
           NotasItens.DisableControls;

           // Seleciona todos os chassis.
           with tSeriais do begin
                DisableControls;
                while not eof do begin
                      GradeSer.SelectedRows.CurrentRowSelected := True;
                      next;
                end;
                first;
                EnableControls;
           end;

           NotasItens.First;
           while not NotasItens.Eof do begin
                 if tSeriais.RecordCount = 0 then begin
                    AdicionaUm(NotasItensDisponivel.Value);
                 end else begin
                    AdicionaUm(1);
                 end;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasItens.Next;
                 Application.ProcessMessages;
           end;
           Janela_Processamento.Close;
           FiltraSeriais;
           NotasTerceirosItens.First;

           NotasTerceirosItens.EnableControls;
           NotasTerceiros.EnableControls;
           Adicoes.EnableControls;
           Produtos.EnableControls;
           NotasItens.EnableControls;
      End;
      cNotaReferencia.SetFocus;
      bPesquisarClick(self);
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bRemove_ItemClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente remover o item da nota fiscal?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         Screen.Cursor := crSQLWait;

         with dmFiscal, Dados do Begin
              with tDisp do begin 
                   sql.Clear;
                   sql.Add('select Disponivel from NotasItens where Nota = :pNota and Data = :pData AND Codigo_Mercadoria = :pMerc');
                   parambyname('pNota').AsInteger := NotasTerceirosItensNota_Referencia.AsInteger;
                   parambyname('pData').value     := NotasTerceirosItensData_Referencia.value;
                   parambyname('pMerc').value     := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   open;
                   if recordcount > 0 then begin
                      with tTemp do begin
                           sql.Clear; 
                           sql.add('update NotasItens set Disponivel = :pDisp where Nota = :pNota and Data = :pData and Codigo_Mercadoria = :pMerc');
                           parambyname('pNota').AsInteger     := NotasTerceirosItensNota_Referencia.AsInteger;
                           parambyname('pData').value         := NotasTerceirosItensData_Referencia.value;
                           parambyname('pMerc').AsInteger     := NotasTerceirosItensRegistro_Adicao.AsInteger;
                           parambyname('pDisp').value         := tDisp.fieldbyname('Disponivel').asfloat + NotasTerceirosItensQuantidade.asfloat;
                           execute;
                      end;
                   end;
              end;
              
              // Procura pelo item na adição para liberar o estoque.
              Adicoes.SQL.Clear;
              Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) AND (Codigo_Mercadoria = :pCodigo) AND (Adicao = :pAdicao) AND (Sequencia_SISCOMEX = :pSequencia)');
              Adicoes.ParamByName('pDI').AsString         := NotasTerceirosItensDI.AsString;
              Adicoes.ParamByName('pCodigo').AsInteger    := NotasTerceirosItensCodigo_Mercadoria.Value;
              Adicoes.ParamByName('pAdicao').AsInteger    := NotasTerceirosItensAdicao.Value;
              Adicoes.ParamByName('pSequencia').AsInteger := NotasTerceirosItensSequencia_SISCOMEX.Value;
              Adicoes.Open;

              Produtos.SQL.Clear;
              Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
              Produtos.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
              Produtos.Open;

              if Adicoes.RecordCount > 0 then begin
                 Adicoes.Edit;
                         AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value - (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                         if AdicoesLancado_Saida.Value < 0 then AdicoesLancado_Saida.Value := 0;

                         if ReferenciasFiscaisFinalidade_Mercadoria.Value = 4 then begin
                            AdicoesLancado_Terceiros.Value := AdicoesLancado_Terceiros.Value + (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                         end;
                 Adicoes.Post;
              end;

              // Bloqueia o chassi retornado na nota de terceiros.
              with ProdutosSeriais do begin
                   SQL.Clear;
                   SQL.Add('UPDATE ProdutosSeriais SET Disponivel = 0');
                   SQL.Add('                          ,Nota_Retorno = null');
                   SQL.Add('                          ,Data_Retorno = null');
                   SQL.Add('WHERE Nota_Retorno = :pNota AND Data_Retorno = :pData AND Produto_Codigo = :pCodigo');
                   ParamByName('pNota').AsInteger   := NotasTerceirosNota.Value;
                   ParamByName('pData').AsDate      := NotasTerceirosData_Emissao.Value;
                   ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   Execute;
                   
                   SQL.Clear;
                   SQL.Add('SELECT *');
                   SQL.Add('FROM   ProdutosSeriais');
                   SQL.Add('WHERE  Produto_Codigo = :pCodigo');
                   SQL.Add('AND    Nota_Saida     = :pNota');
                   SQL.Add('AND    Data_Saida     = :pData');
                   ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   ParamByName('pNota').AsInteger   := NotasTerceirosItensNota_Referencia.AsInteger;
                   ParamByName('pData').AsDate      := NotasTerceirosItensData_Referencia.AsDateTime;
                   Open;
              end;
              
              //Apaga a nota de terceiros da tabela de SeriaisNotas.
              with tTemp do begin
                   sql.Clear;
                   sql.Add('delete from ProdutosSeriaisNotas where Nota = :pNotaT and Data = :pDataT and Produto_Codigo = :pCodigo');
                   ParamByName('pNotaT').AsInteger  := NotasTerceirosItensNota.Value;
                   ParamByName('pDataT').AsDate     := NotasTerceirosItensData_Emissao.Value;
                   ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   execute;
              end;

              NotasTerceirosItens.Delete;
              FiltraSeriais;
         end;
      end;
      bPesquisarClick(self);
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       dmFiscal.NotasItens.Close;

       LimpaMemoria;
       NotaFiscal_TerceirosReferenciaItens.Release;
       NotaFiscal_TerceirosReferenciaItens := nil;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.Grade1Enter(Sender: TObject);
begin
       Navega.DataSource := Grade1.DataSource;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.Grade2Enter(Sender: TObject);
begin
       Navega.DataSource := Grade2.DataSource;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNotaFiscal_TerceirosReferenciaItens.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      With HintInfo do begin
           If HintControl is TDBGrid then begin
              With TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      Try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 Produtos.Locate('Codigo', AdicoesCodigo_Mercadoria.Value, [loCaseInsensitive]);

                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                 mTam   := 1;
                                 For i := 1 to Length(mTexto) do begin
                                     HintStr := HintStr + Copy(mTexto, i, 1);
                                     Inc(mTam);
                                     If mTam = 50 then begin
                                        HintStr := HintStr + #13;
                                        mtam    := 1;
                                     End;
                                 End;
                            End;
                         End else
                            HintStr := '\';
                      Finally
                         DataLink.ActiveRecord := CurPos
                      End;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   Except
                      CanShow := False
                   End;
              End;
           End;
      End;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.AtualizaDisponivel;
begin
     with dmFiscal do begin
          with NotasItens do begin
               close;
               sql.clear;
               sql.add('select *');
               sql.add('from NotasItens ni');
               sql.add('where ni.Nota = :pNota');
               sql.add('and ni.Data = :pData');
               sql.add('and ni.Disponivel > 0');
               sql.add('order by item, Codigo_Mercadoria');
               paramByName('pNota').AsInteger := cNotaReferencia.AsInteger;
               paramByName('pData').AsDate    := cDataReferencia.Date;
               //NotasItens.SQL.SaveToFile('c:\temp\Notas_Terceiros_Itens.SQL');
               open;
          end;
     end;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.cPesquisaChange(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          if NotasItens.Locate('Codigo_Mercadoria', cPesquisa.Text, [loCaseInsensitive]) = False then begin
             tPesquisa.SQL.Clear;
             tPesquisa.SQL.Add('SELECT Codigo_Mercadoria AS Codigo FROM NotasItens WHERE Nota = :pNota AND Data = :pData AND Descricao_Mercadoria LIKE ''%'+cPesquisa.Text+'%'' ');
             tPesquisa.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
             tPesquisa.ParamByName('pData').AsDate    := cDataReferencia.Date;
             //tPesquisa.SQL.SavetoFile('c:\temp\Itens_Referencia.SQL');
             tPesquisa.Open;

             if tPesquisa.RecordCount > 0 then begin
                if NotasItens.Locate('Codigo_Mercadoria', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]) = False then begin
                   ShowMessage('Nenhum produto encontrado com "Código" ou "Descrição" informado !');
                end;
             end;
          end;
     end;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bIncluir_notaClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens disponiveis peslo saldo da nota fiscal...';
           Janela_Processamento.Show;

           NotasTerceirosItens.DisableControls;
           NotasTerceiros.DisableControls;
           Adicoes.DisableControls;
           Produtos.DisableControls;
           NotasItens.DisableControls;

           NotasItens.First;
           while not NotasItens.Eof do begin
                 if NotasItensQuantidade.AsFloat <= NotasItensDisponivel.AsFloat then begin
                    AdicionaUm(NotasItensQuantidade.Value);
                 end else begin
                    AdicionaUm(NotasItensDisponivel.Value);
                 end;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasItens.Next;
                 Application.ProcessMessages;
           end;
           Janela_Processamento.Close;
           NotasTerceirosItens.First;

           NotasTerceirosItens.EnableControls;
           NotasTerceiros.EnableControls;
           Adicoes.EnableControls;
           Produtos.EnableControls;
           NotasItens.EnableControls;
      end;
      cNotaReferencia.SetFocus;
      bPesquisarClick(self);
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bPesquisarClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Numero = :pNota AND Data_Emissao = :pData');
           Notas.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
           Notas.ParamByName('pData').AsDate    := cDataReferencia.Date;
           Notas.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Codigo = :pTipo)');
           TipoNota.ParamByName('pTipo').AsInteger := NotasTipo_Nota.AsInteger;
           TipoNota.Open;

           // Atualiza o campo disponível da nota de referência.
           if trim(NotasTerceirosProcesso.AsString) <> '' then begin
              tAdicoes.SQL.Clear;
              tAdicoes.SQL.Add('SELECT COUNT(*) AS Qtde FROM Adicoes WHERE DI IN(SELECT DI FROM NotasItens NI WHERE(NI.Nota = :pNota) AND (NI.Data = :pData) AND (NI.Registro_Adicao <> 0) )');
              tAdicoes.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
              tAdicoes.ParamByName('pData').AsDate    := cDataReferencia.Date;
              tAdicoes.Open;

              if tAdicoes.FieldByName('Qtde').AsInteger > 0 then begin
                 if (cNotaReferencia.AsInteger > 0) and (not DataLimpa(cDataReferencia.Text)) then begin
                    NotasItens.SQL.Clear;
                    if ReferenciasFiscaisMovimenta_Estoque.AsBoolean then begin
                       if TipoNota.FieldByName('Finalidade_Mercadoria').AsInteger = 4 then begin
                          NotasItens.SQL.Add('UPDATE NotasItens SET Disponivel = (SELECT Lancado_Terceiros FROM Adicoes AD WHERE(AD.Registro = NotasItens.Registro_Adicao))')
                       end else
                          NotasItens.SQL.Add('UPDATE NotasItens SET Disponivel = Quantidade');
                    end else begin
                       NotasItens.SQL.Add('UPDATE NotasItens SET Disponivel = Quantidade');
                    end;
                    NotasItens.SQL.Add('WHERE(Nota = :pNota AND Data = :pData)');
                    NotasItens.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
                    NotasItens.ParamByName('pData').AsDate    := cDataReferencia.Date;
                    //NotasItens.SQL.SaveToFile('c:\temp\DisponivelNFT.sql');
                    NotasItens.Execute;
                 end;
              end;
           end else begin
              if (cNotaReferencia.AsInteger > 0) and (not DataLimpa(cDataReferencia.Text)) then begin
                 NotasItens.SQL.Clear;
                 if ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 4 then begin
                    NotasItens.SQL.Add('UPDATE NotasItens SET Disponivel = ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE NI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria AND NI.Saida_Entrada = 1 AND NI.Movimenta_Estoque = 1');
                    NotasItens.SQL.Add('                                   AND ISNULL(NI.Cancelada, 0) = 0 AND ISNULL(NI.NFe_Denegada, 0) = 0 AND NI.Finalidade_Mercadoria = 4), 0)');
                    NotasItens.SQL.Add('                                  -ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE NI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria AND NI.Saida_Entrada = 0 AND NI.Movimenta_Estoque = 1');
                    NotasItens.SQL.Add('                                   AND ISNULL(NI.Cancelada, 0) = 0 AND ISNULL(NI.NFe_Denegada, 0) = 0 AND NI.Finalidade_Mercadoria = 4), 0)');
                    NotasItens.SQL.Add('                                  -ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens NTI WHERE NTI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria AND NTI.Movimenta_Estoque = 1');
                    NotasItens.SQL.Add('                                   AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo =  NTI.Referencia_Fiscal) = 4), 0)');
                 end else begin
                    NotasItens.SQL.Add('UPDATE NotasItens SET Disponivel = ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE NI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria AND NI.Saida_Entrada = 1 AND NI.Movimenta_Estoque = 1');
                    NotasItens.SQL.Add('                                   AND ISNULL(NI.Cancelada, 0) = 0 AND ISNULL(NI.NFe_Denegada, 0) = 0 AND NI.Finalidade_Mercadoria = 0), 0)');
                    NotasItens.SQL.Add('                                  -ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE NI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria AND NI.Saida_Entrada = 0 AND NI.Movimenta_Estoque = 1');
                    NotasItens.SQL.Add('                                   AND ISNULL(NI.Cancelada, 0) = 0 AND ISNULL(NI.NFe_Denegada, 0) = 0 AND NI.Finalidade_Mercadoria = 2), 0)');
                    NotasItens.SQL.Add('                                  -ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens NTI WHERE NTI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria AND NTI.Movimenta_Estoque = 1');
                    NotasItens.SQL.Add('                                   AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo =  NTI.Referencia_Fiscal) = 2), 0)');
                 End;
                 NotasItens.SQL.Add('WHERE(Nota = :pNota AND Data = :pData)');
                 NotasItens.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
                 NotasItens.ParamByName('pData').AsDate    := cDataReferencia.Date;
                 //NotasItens.SQL.SaveToFile('c:\temp\Notas_Terceiros_Referencia_Itens.sql');
                 NotasItens.Execute;
              end;
           end;

           AtualizaDisponivel;

           with Adicoes do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Adicoes WHERE(DI IN(SELECT DISTINCT DI FROM NotasItens WHERE(Nota = :pNota AND Data = :pData)))');
                ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
                ParamByName('pData').AsDate    := cDataReferencia.Date;
                Open;
           end;
           with Produtos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Produtos WHERE(Codigo IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens WHERE(Nota = :pNota AND Data = :pData)))');
                ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
                ParamByName('pData').AsDate    := cDataReferencia.Date;
                Open;
           end;

           FiltraSeriais;
      end;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.FiltraSeriais;
begin
     // Seleciona os chassis/Seriais da nota de referência.
     if cNotaReferencia.AsInteger > 0 then begin
        with tSeriais do begin
             sql.clear;
             sql.Add('select Produto_Codigo');
             sql.Add('      ,Numero');
             sql.Add('from  ProdutosSeriaisNotas');
             sql.Add('where (Nota = :pNotaP and Data = :pDataP and Emissor = ''P'')');
             sql.Add('and   Numero not in(select Numero from ProdutosSeriaisNotas where Nota = :pNotaT and Data = :pDataT)');
             sql.Add('order by Numero');
             ParamByName('pNotaP').asinteger  := cNotaReferencia.AsInteger;
             ParamByName('pDataP').asDatetime := cDataReferencia.Date;
             ParamByName('pNotaT').asinteger  := dmFiscal.NotasTerceirosNota.AsInteger;
             ParamByName('pDataT').asDatetime := dmFiscal.NotasTerceirosData_Emissao.value;
             //sql.SaveToFile('c:\temp\SeriaisNotas_Disponivel.sql');
             open;
        end;
     end;
     with tSeriaisNF do begin
          sql.clear;
          sql.Add('select Produto_Codigo');
          sql.Add('      ,Numero');
          sql.Add('from  ProdutosSeriaisNotas');
          sql.Add('where Nota = :pNotaT');
          SQL.add('and   Data = :pDataT');
          sql.Add('order by Numero');
          ParamByName('pNotaT').asinteger  := dmFiscal.NotasTerceirosNota.AsInteger;
          ParamByName('pDataT').asDatetime := dmFiscal.NotasTerceirosData_Emissao.value;
          //sql.SaveToFile('c:\temp\SeriaisNotas_Indisponivel.sql');
          open;
     end;
end;

procedure TNotaFiscal_TerceirosReferenciaItens.bInclui_IntervClick(Sender: TObject);
Var
    mItens,
    mQtdeInput: String;
    mini, mfim:integer;
begin
      with Dados, dmFiscal do begin
           mItens := InputBox('Intervalor de itens Separados por um "-"','Intervalo:','');
           mIni := 0;
           mFim := 0;
           if mItens = '' then begin
              Abort;
           end;

           try
              mIni := strtoint(trim(Copy(mItens,1,pos('-', mItens)-1)));
              mFim := strtoint(trim(Copy(mItens,pos('-', mItens)+1, 50)));
           except
              ShowMessage('Intervalo informado invalído!'+#13+#13+'Informe o número inicial e o número final do item separado por um "-".');
              Abort;
           end;

           NotasTerceirosItens.DisableControls;
           NotasTerceiros.DisableControls;
           Adicoes.DisableControls;
           Produtos.DisableControls;
           NotasItens.DisableControls;
           
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens disponiveis pelo saldo total...';
           Janela_Processamento.Show;

           NotasItens.First;
           while not NotasItens.Eof do begin
                 if (NotasItensItem.AsInteger >= mIni) and (NotasItensItem.AsInteger <= mFim) then begin
                    AdicionaUm(NotasItensDisponivel.Value);
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 end;
                 NotasItens.Next;
                 Application.ProcessMessages;
           end;
           Janela_Processamento.Close;
           NotasTerceirosItens.First;

           NotasTerceirosItens.EnableControls;
           NotasTerceiros.EnableControls;
           Adicoes.EnableControls;
           Produtos.EnableControls;
           NotasItens.EnableControls;
      end;
      bPesquisarClick(self);
end;


end.
