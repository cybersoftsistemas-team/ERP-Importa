unit frmNFe_CancelamentoAdministrativo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, MSAccess, DBAccess, Mask, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, Grids, DBGrids,
  RXDBCtrl, RXCtrls, FUNCOES, ImgList, Vcl.ComCtrls, NFe_Util_2G_TLB, XMLDoc, system.UITypes, IniFiles, IdIOHandler, IdSSLOpenSSL, RxToolEdit, MemDS;

type
  TNFe_CancelamentoAdministrativo = class(TForm)
    cTipo: TRadioGroup;
    cData: TDateEdit;
    Panel1: TPanel;
    bSair: TButton;
    bCancelar: TButton;
    tPedido: TMSQuery;
    tPedidoPedido: TIntegerField;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TRxDBGrid;
    tProcessos: TMSQuery;
    GroupBox1: TGroupBox;
    cRecriarPedido: TCheckBox;
    tItens: TMSQuery;
    tHistorico: TMSQuery;
    tCIAP: TMSQuery;
    tBaixas: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tSaidas: TMSQuery;
    tTemp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cTipoClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure cDataChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RetornaPedido;
    procedure GerarDuplicatas;
    procedure bPesquisaClick(Sender: TObject);
    Function  Consultar: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    mNome,
    mNome3 : String;
    xmlProtocolo: TMemo;
  end;

var
  NFe_CancelamentoAdministrativo: TNFe_CancelamentoAdministrativo;
  nProtocoloCanc,
  NomeCertificado,
  Licenca,
  Proxy,
  Usuario,
  Senha,
  RetWS,
  mMotivo      : WideString;
  TipoAmbiente : Integer;
implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal, frmJanela_Comunicacao, frmDMContab;

{$R *.dfm}

procedure TNFe_CancelamentoAdministrativo.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNFe_CancelamentoAdministrativo.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Salva opções da tela de cancelamento.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteBool('CANCELAMENTO_NFE', 'Recriar', cRecriarPedido.Checked);
      aINI.Free;

      FecharTabelas(Dados, dmFiscal, dmContab, nil);
      NFe_CancelamentoAdministrativo.Release;
      NFe_CancelamentoAdministrativo := nil;
end;

procedure TNFe_CancelamentoAdministrativo.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cRecriarPedido.Checked := aINI.ReadBool('CANCELAMENTO_NFE', 'Recriar'  , true);
      aINI.Free;

      //cData.Date := Date;

      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Produtos.Close;
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           Configuracao.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;

           bCancelar.Enabled  := Notas.RecordCount > 0;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNFe_CancelamentoAdministrativo.bCancelarClick(Sender: TObject);
var
   mNotas,
   mItens:wideString;
begin
      // Verifica a situação da NFE.
      If Consultar = false then abort;

      With Dados, dmFiscal, dmContab do begin
           // Verificando se a nota fiscal ja foi baixada no financeiro.
           tBaixas.SQL.Clear;
           tBaixas.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN(SELECT Numero FROM PagarReceber WHERE(Numero_Documento = :pNota) AND (Cliente = :pCliente))');
           tBaixas.ParamByName('pNota').AsString     := Notas.FieldByName('Numero').AsString;
           tBaixas.ParamByName('pCliente').AsInteger := Notas.FieldByName('Cliente_Codigo').AsInteger;
           tBaixas.Open;

           If tBaixas.FieldByName('QTDE').AsInteger > 0 then begin
              MessageDlg('Atenção!'+#13#13+'Já foram efetuadas baixas no financeiro para a nota fiscal selecionada.'+#13+#13+'Estorne primeiro as baixas do financeiro para poder cancelar esta nota fiscal.  ', mtInformation, [mbOK], 0);
              Abort;
           End;

           // Verifica se existe fechamento do processo.
           If ProcessosDOC.Locate('Processo', Notas.FieldByName('Processo').AsString, [loCaseInsensitive]) = true then begin
              If not DataLimpa(ProcessosDOCProcesso_Fechamento.AsString) then begin
                 MessageDlg('Atenção!'+#13#13+'O Processo desta nota fiscal Já foi fechado, abra o processo para poder cancelar esta nota fiscal.', mtInformation, [mbOK], 0);
                 Abort;
              End;
           End;

           // Verifica se existe nota fiscal de saída emitida em caso de nota fiscal de entrada.
           if Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
              tSaidas.SQL.Clear;
              tSaidas.SQL.Add('SELECT DISTINCT TOP 10 Nota, Data, (SELECT NFE_cNF FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data) AS Chave');
              tSaidas.SQL.Add('FROM   NotasItens');
              tSaidas.SQL.Add('WHERE  Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
              tSaidas.SQL.Add('  AND  Data >= :pData');
              tSaidas.SQL.Add('  AND  Saida_Entrada =  1');
              tSaidas.SQL.Add('  AND  Cancelada     <> 1');
              tSaidas.SQL.Add('  AND  Nfe_Denegada  <> 1');
              tSaidas.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
              tSaidas.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
              //tSaidas.SQL.SaveToFile('c:\temp\Cancelamento_NFE_Saida.sql');
              tSaidas.Open;

              if tSaidas.RecordCount > 0 then begin
                 mNotas := '';
                 while not tSaidas.Eof do begin
                       mNotas := mNotas + PoeZero(9, tSaidas.FieldByName('Nota').AsInteger)+ '  de  '+ tSaidas.FieldByName('Data').AsString+'     '+tSaidas.FieldByName('Chave').AsString+#13;
                       tSaidas.Next;
                 end;
                 MessageDlg('Atenção!'+#13#13+'As seguintes notas fiscais de saída foram emitidas após esta nota de entrada:'+#13+#13+mNotas+#13+
                            'Para cancelar esta nota fiscal é preciso cancela primeiro as notas fiscais de saída.'+#13+#13, mtError, [mbOK], 0);
                 Abort;
              end;
           end;

           // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (TRANSFERÊNCIAS).
           tSaidas.SQL.Clear;
           tSaidas.SQL.Add('SELECT COUNT(Produto_Saida) AS Qtde');
           tSaidas.SQL.Add('FROM   ProdutosTransferencia');
           tSaidas.SQL.Add('WHERE  Produto_Saida IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
           tSaidas.SQL.Add('  AND  Data_Transferencia >= :pData ');
           tSaidas.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
           tSaidas.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
           tSaidas.Open;
           if tSaidas.FieldByName('Qtde').AsInteger > 0 then begin
              MessageDlg('Nota Fiscal não pode ser "Cancelada" !'+#13+#13+'Existem transferências feitas com alguns produtos que constam da nota fiscal.', mtError, [mbOK], 0);
              Abort;
           end;

           // Verifica se existe pedidos de saída feitos em caso de nota fiscal de entrada.
           if Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
              tSaidas.SQL.Clear;
              tSaidas.SQL.Add('SELECT DISTINCT Pedido, Codigo_Mercadoria AS Codigo, SUBSTRING(Descricao_Mercadoria,1 , 100) AS Descricao');
              tSaidas.SQL.Add('FROM   PedidosItens');
              tSaidas.SQL.Add('WHERE  Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
              tSaidas.SQL.Add('  AND  Saida_Entrada =  1');
              tSaidas.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
              tSaidas.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
              //tSaidas.SQL.SaveToFile('c:\temp\Cancelamento_NFE_Saida.sql');
              tSaidas.Open;

              if tSaidas.RecordCount > 0 then begin
                 mNotas := '';
                 while not tSaidas.Eof do begin
                       mNotas := mNotas + PoeZero(9, tSaidas.FieldByName('Pedido').AsInteger)+ '  Produto: '+ tSaidas.FieldByName('Codigo').AsString+'   '+tSaidas.FieldByName('Descricao').AsString+#13;
                       tSaidas.Next;
                 end;
                 MessageDlg('Atenção!'+#13#13+'Existem os seguintes pedidos de saída:'+#13+#13+mNotas+#13+
                            'Ao cancelar esta nota fiscal os itens serão removidos desses pedidos.'+#13+#13, mtError, [mbOK], 0);
              end;
           end;

           If MessageDlg('Atenção!'+#13#13+'Você esta cancelando a nota fiscal Nº '+PoeZero(9,NotasNumero.AsInteger)+ ' de '+DatetoStr(NotasData_Emissao.Value)+', no Sistema'+#13+#13+'Todos os itens da Nota Fiscal voltarão a ficar disponiveis para faturamento.'+#13+#13+'Deseja realmente continuar?', mtWarning, [mbNo, mbYes], 0) = mrYes then begin
              mMotivo  := UpperCase(InputBox('Cancelamento...', 'Motivo do Cancelamento', ''));
              If Length(Trim(mMotivo)) < 15 then begin
                 ShowMessage('Justificativa de cancelamento da NF-e deve ter no minimo 15 caracteres.');
                 Abort;
              end;

              mMotivo       := RemoveCaracterXML(mMotivo);
              Screen.Cursor := crHourGlass;

              Notas.Edit;
                    NotasCancelada.Value              := true;
                    NotasMotivo_Cancelamento.Value    := mMotivo;
                    NotasData_Cancelamento.Value      := Date;
                    NotasProtocolo_Cancelamento.Value := 'CANCEL.ADM.';
              Notas.Post;

              // Marcando os itens da nota como cancelados.
              NotasItens.Close;
              NotasItens.SQL.Clear;
              NotasItens.SQL.Add('UPDATE NotasItens SET Cancelada = 1 WHERE (Nota = :pNota) AND (Data = :pData)');
              NotasItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
              NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
              NotasItens.Execute;
              NotasItens.SQL.Clear;
              NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');

              // Marcando os itens da nota como cancelados (Lotes).
              NotasItensDetalhe.Close;
              NotasItensDetalhe.SQL.Clear;
              NotasItensDetalhe.SQL.Add('UPDATE NotasItensDetalhe SET Cancelada = 1');
              NotasItensDetalhe.SQL.Add(' WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
              NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.Value;
              NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
              NotasItensDetalhe.Execute;
              NotasItensDetalhe.SQL.Clear;
              NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE (Nota_Emissao = :pNota) AND (Data_Emissao = :pData)');
              NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.Value;
              NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.Value;

              // Caso a nota seja a única nota de saída com ICMS do mês, ajusta o imobilizado.
              tCIAP.SQL.Clear;
              tCIAP.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasFiscais WHERE(Saida_Entrada = 1) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Valor_ICMS > 0) AND (Cancelada <> 1)');
              tCIAP.Open;
              If tCIAP.FieldByName('Qtde').AsInteger = 0 then begin
                 tCIAP.SQL.Clear;
                 tCIAP.SQL.Add('UPDATE Imobilizado SET Apropriadas = (Apropriadas - 1), AnoMes_Faturamento = NULL ');
                 tCIAP.SQL.Add('WHERE(Apropriadas > 0)');
                 tCIAP.Execute;
              End;

              // Verifica todos os itens para desbloquear os Processos.
              tProcessos.SQL.Clear;
              tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
              tProcessos.ParamByName('pNota').AsInteger := NotasNumero.Value;
              tProcessos.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
              tProcessos.Open;

              tHistorico.SQL.Clear;
              tHistorico.SQL.Add('SELECT ISNULL(MAX(Numero), 0) AS Numero FROM ProcessosHistorico');
              tHistorico.Open;

              ProcessosHistorico.SQL.Clear;
              ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico');
              ProcessosHistorico.Open;

              While not tProcessos.Eof do begin
                    tItens.SQL.Clear;
                    tItens.SQL.Add('SELECT COUNT(*) AS Quantidade FROM NotasItens WHERE (Processo = :pProcesso) AND (Cancelada <> 1)');
                    tItens.ParamByName('pProcesso').AsString := Trim(tProcessos.FieldByName('Processo').AsString);
                    tItens.Open;
                    If tItens.FieldByName('Quantidade').AsInteger = 0 then begin
                       If ProcessosDOC.Locate('Processo', Trim(tProcessos.FieldByName('Processo').AsString), [loCaseInsensitive]) = true then begin
                          ProcessosDOC.Edit;
                                       ProcessosDOCBloqueado.Value := false;
                          ProcessosDOC.Edit;
                       End;
                    End;

                    // Gera o histórico de cancelamento para o processo pelos itens da nota fiscal.
                    tHistorico.Open;
                    ProcessosHistorico.Append;
                                       ProcessosHistoricoNumero.Value    := tHistorico.FieldByName('Numero').AsInteger+1;;
                                       ProcessosHistoricoProcesso.Value  := Trim(tProcessos.FieldByName('Processo').AsString);
                                       ProcessosHistoricoData.Value      := Date;
                                       ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                       ProcessosHistoricoDocumento.Value := Poezero(9, NotasNumero.AsInteger);
                                       If NotasSaida_Entrada.Value = 0 then
                                          ProcessosHistoricoDescricao.Value := 'Cancelamento administrativo da nota fiscal de entrada nº '+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString + '  ('+mMotivo+').'
                                       else
                                          ProcessosHistoricoDescricao.Value := 'Cancelada administrativo da nota fiscal de saida nº '+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString + '  ('+mMotivo+').';
                    ProcessosHistorico.Post;

                    tHistorico.Close;
                    tProcessos.Next;
              End;

              // Deleta todas as duplicatas da nota.
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('DELETE FROM Duplicatas WHERE (Fatura = :pFatura) AND (Data_Emissao = :pData)');
              Duplicatas.ParamByName('pFatura').AsInteger := NotasNumero.Value;
              Duplicatas.ParamByName('pData').AsDate      := NotasData_Emissao.Value;
              Duplicatas.Execute;
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE(Fatura = :pFatura)');
              Duplicatas.ParamByName('pFatura').AsInteger := NotasNumero.Value;

              Fatura.SQL.Clear;
              Fatura.SQL.Add('DELETE FROM Fatura WHERE(Nota = :pNota) AND (Data_Nota = :pData)');
              Fatura.ParamByName('pNota').AsInteger := NotasNumero.Value;
              Fatura.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
              Fatura.Execute;
              Fatura.SQL.Clear;
              Fatura.SQL.Add('SELECT * FROM Fatura WHERE (Nota = :pNota)');
              Fatura.ParamByName('pNota').AsInteger := NotasNumero.Value;

              // Exclui o lançamento do financeiro.
              PagarReceber.SQL.Clear;
              If NotasSaida_Entrada.Value = 1 then begin
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Cliente = :pCliente) AND (Fiscal = :pNota)' );
                 PagarReceber.ParamByName('pCliente').AsInteger := NotasCliente_Codigo.AsInteger;
              end else begin
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Fornecedor= :pFornecedor) AND (Fiscal = :pNota)' );
                 PagarReceber.ParamByName('pFornecedor').AsInteger := NotasFornecedor_Codigo.AsInteger;
              End;

              PagarReceber.ParamByName('pNota').AsString := NotasNumero.AsString;
              PagarReceber.Execute;
              PagarReceber.SQL.Clear;

              // Exclui os lançamento de pagamentos de comissão de representantes do financeiro.
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Fornecedor = :pRepresentante) AND (Fiscal = :pNota)' );
              PagarReceber.ParamByName('pRepresentante').AsInteger := NotasRepresentante.AsInteger;
              PagarReceber.ParamByName('pNota').AsString           := NotasNumero.AsString;
              PagarReceber.Execute;
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = GETDATE())' );

              // Deleta todos os lancamentos contabeis.
              {
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Documento = :pNota AND Data_Documento = :pData' );
              Lancamentos.ParamByName('pNota').AsInteger := NotasNumero.Value;
              Lancamentos.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
              Lancamentos.Execute;
              Lancamentos.SQL.Clear;
              }
              // Deleta a nota da ficha de estoque.
              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('DELETE FROM FichaEstoque    WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
              FichaEstoque.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
              FichaEstoque.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
              FichaEstoque.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
              If NotasSaida_Entrada.AsInteger = 0 then
                 FichaEstoque.ParamByName('pDest').AsInteger := NotasFornecedor_Codigo.AsInteger
              else
                 FichaEstoque.ParamByName('pDest').AsInteger := NotasCliente_Codigo.AsInteger;
              FichaEstoque.Execute;

              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pNota');
              FichaEstoque.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;

              // Cancela o lançamento financeiro da GNRE.
              GNRE.SQL.Clear;
              GNRE.SQL.Add('SELECT * FROM GNRE WHERE Nota = :pNota AND Data_Nota = :pData');
              GNRE.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
              GNRE.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
              GNRE.Open;

              if GNRE.RecordCount > 0 then begin
                 tBaixas.SQL.Clear;
                 tBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Numero = :pNumero');
                 tBaixas.ParamByName('pNumero').AsInteger := GNREFinanceiro_Numero.AsInteger;
                 tBaixas.Open;
                 If tBaixas.RecordCount = 0 then begin
                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero = :pNumero' );
                    PagarReceber.ParamByName('pNumero').AsINteger := GNREFinanceiro_Numero.AsInteger;
                    PagarReceber.Execute;
                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = GETDATE())' );
                 end else begin
                    tBaixas.SQL.Clear;
                    tBaixas.SQL.Add('UPDATE PagarReceber SET Recuperavel = 1 WHERE Numero = :pNumero');
                    tBaixas.ParamByName('pNumero').AsInteger := GNREFinanceiro_Numero.AsInteger;
                    tBaixas.Execute;
                 end;
              end;

              // Recria o pedido com base na nota fiscal cancelada.
              If cRecriarPedido.Checked then begin
                 RetornaPedido;
              end else begin
                 // Como não recriou o pedido, Disponibiliza o pedido do representante.
                 with tTemp do begin
                      // Reajusta o Total do Pedido pai, caso haja.
                      sql.clear;
                      sql.add('update PedidosRepresentantes set Total_Pedido = Total_Pedido + (select sum(Quantidade * Valor_Unitario) from PedidosRepresentantesItens where Pedido = :pPed)');
                      sql.add('                                ,Local = 3');
                      sql.add('where Pedido = (select Pedido_Pai2 from PedidosRepresentantes where Pedido = :pPed)');
                      ParamByName('pPed').AsString := NotasPedido_Representante.AsString;
                      execute;
                      // Reajusta a quantidade do Pedido pai, caso haja.
                      sql.clear;
                      sql.add('update PedidosRepresentantesItens set Quantidade = Quantidade + (select Quantidade from PedidosRepresentantesItens pri where pri.Pedido = :pPed and pri.Codigo_Mercadoria = Codigo_Mercadoria)');
                      sql.add('where Pedido = (select Pedido_Pai2 from PedidosRepresentantes where Pedido = :pPed)');
                      ParamByName('pPed').AsString := NotasPedido_Representante.AsString;
                      execute;
                      // Deleta os pedidos do representante.
                      sql.Clear;
                      sql.Add('delete from PedidosRepresentantes      where Pedido = :pPed and isnull(Pedido_Pai2, '''') <> '''' ');
                      sql.Add('delete from PedidosRepresentantesItens where Pedido = :pPed and isnull(Pedido_Pai2, '''') <> '''' ');
                      ParamByName('pPed').AsString := NotasPedido_Representante.AsString;
                      execute;
                      sql.Clear;
                      sql.Add('update PedidosRepresentantes set Faturado = 0');
                      sql.Add('                                ,Situacao = ''SEPARADO'' ');
                      sql.Add('                                ,Gerar_Pedido = 0');
                      sql.Add('                                ,Faturamento = 0');
                      sql.Add('                                ,Local = 3');
                      sql.Add('where Pedido = :pPedido');
                      ParamByName('pPedido').AsString := NotasPedido_Representante.AsString;
                      execute;
                      sql.Clear;
                      sql.Add('update PedidosRepresentantesItens set Faturamento = 0 where Pedido = :pPedido');
                      ParamByName('pPedido').AsString := NotasPedido_Representante.AsString;
                      execute;
                 end;
              end;

              // Retorna os itens da nota cancelada para o estoque disponivel, se não for criado outro pedido.
              // Em caso de "IMPORTAÇÃO" pega os itens da "ADIÇÃO".
              Adicoes.SQL.Clear;
              Adicoes.SQL.Add('SELECT * FROM Adicoes');
              Adicoes.Open;

              // Em caso de "COMPRA INTERNA" pega os itens dos "ITENS DA NOTA FISCAL DE TERCEIROS".
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
              NotasTerceirosItens.ParamByName('pProcesso').AsString := NotasProcesso.Value;
              NotasTerceirosItens.Open;

              NotasItens.SQL.Clear;
              NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
              NotasItens.ParamByName('pNota').AsInteger := dmFiscal.NotasNumero.Value;
              NotasItens.ParamByName('pData').AsDate    := dmFiscal.NotasData_Emissao.Value;
              NotasItens.Open;
              NotasItens.First;

              Produtos.SQL.Clear;
              Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
              Produtos.Open;

              TipoNota.SQL.Clear;
              TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE (Codigo = :pCodigo)');
              TipoNota.ParamByName('pCodigo').AsInteger := NotasTipo_Nota.Value;
              TipoNota.Open;

              mItens := '';
              if TipoNotaMovimenta_Estoque.Value = True then begin
                 // Movimenta os itens da "ADIÇÃO" em casos de processos de IMPORTAÇÃO.
                 while not NotasItens.Eof do begin
                       // Pegando relação de itens da nota para reprocessar a ficha de estoque/inventario dos itens.
                       if mItens = '' then
                          mItens := NotasItensCodigo_Mercadoria.AsString
                       else
                          mItens := mItens + ','+NotasItensCodigo_Mercadoria.AsString;
                          
                       Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                       if Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                          if Adicoes.Locate('DI;Codigo_Mercadoria;Adicao;Sequencia_SISCOMEX', VarArrayOf([NotasItensDI.Value,NotasItensCodigo_Mercadoria.Value,NotasItensAdicao.Value, NotasItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] ) = True then begin
                             Adicoes.Edit;
                                     if NotasSaida_Entrada.Value = 0 then begin
                                        AdicoesLancado_Entrada.Value := AdicoesLancado_Entrada.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                        AdicoesLancado_Saida.Value   := AdicoesLancado_Saida.Value   - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                     end else begin
                                        AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);

                                        if TipoNotaFinalidade_Mercadoria.Value = 4 then begin  // Terceiros.
                                           AdicoesLancado_Terceiros.Value := AdicoesLancado_Terceiros.Value - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                           if AdicoesLancado_Terceiros.Value < 0 then AdicoesLancado_Terceiros.Value := 0;
                                        end;
                                     end;
                             Adicoes.Post;
                          end;
                       end else begin
                          // Movimenta os itens da "NOTA FISCAL DE TERCEIROS" em casos de processos de COMPRA INTERNA.
                          if NotasTerceirosItens.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                             NotasTerceirosItens.Edit;
                                                 NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                             NotasTerceirosItens.Post;
                          end;
                       end;

                       // Atualizando o estoque no cadastro do produto.
                       Produtos.Edit;
                                if NotasSaida_Entrada.Value = 0 then begin
                                   ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);

                                   // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro para as notas de Entrada.
                                   If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                                      ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                                   End;
                                end else begin
                                   ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                end;
                       Produtos.Post;
                       NotasItens.Next;
                 end;
              end;

              // Atualiza o limite de crédito no cadastro do cliente.
              If NotasSaida_Entrada.AsInteger = 1 then begin
                 Clientes.Locate('Codigo', NotasCliente_Codigo.AsInteger, [loCaseInsensitive]);

                 If TipoNotaGerar_Financeiro.AsBoolean = true then begin
                    Clientes.Edit;
                             ClientesLimite_Utilizado.Value := ClientesLimite_Utilizado.Value - NotasValor_TotalNota.Value;
                    Clientes.Post;
                 End;

                 // Muda a situação do pedido do representante se for o caso.
                 PedidosRepresentantes.SQL.Clear;
                 if cRecriarPedido.Checked then begin
                    PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Situacao = ''EM FATURAMENTO'', Local = 4 WHERE Pedido = :pPedido');
                 end else begin
                    PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Situacao = ''AGUARDANDO'', Local = 3 WHERE Pedido = :pPedido');
                 end;
                 PedidosRepresentantes.ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                 PedidosRepresentantes.Execute;
                 PedidosRepresentantes.SQL.Clear;
                 PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
              End;

              // Reprocessa os saldos da ficha de estoque.
              Janela_Processamento := TJanela_Processamento.Create(nil);
              Janela_Processamento.Show;
              AtualizaInv(mItens);
              AtualizaEst(mItens);
              Janela_Processamento.close;

              MessageDlg('Nota Fiscal cancelada com sucesso.', mtInformation, [mbOK], 0);
           End;
           bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
      End;

      Screen.Cursor := crDefault;
end;

procedure TNFe_CancelamentoAdministrativo.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmFiscal, Dados do Begin
          If (Column.FieldName = 'DPEC') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('DPEC').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Cancelada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Cancelada').Value = True) then ImageList1.GetBitmap(6, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Complementar') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Complementar').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Devolucao') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Devolucao').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Nfe_Denegada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Nfe_Denegada').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TNFe_CancelamentoAdministrativo.cTipoClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With dmFiscal do begin
           Notas.SQL.Clear;
           If Trim(RemoveCaracter('/','',cData.Text)) = '' then
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Cancelada <> 1) AND (Saida_Entrada = :pTipo) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC')
           else begin
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Cancelada <> 1) AND (Saida_Entrada = :pTipo) AND (Data_Emissao = :pData) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
              Notas.ParamByName('pData').AsDate    := cData.Date;
           end;

           Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
           Notas.Open;

           bCancelar.Enabled  := Notas.RecordCount > 0;
      End;
      bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
      Screen.Cursor := crDefault;
end;

procedure TNFe_CancelamentoAdministrativo.GradeCellClick(Column: TColumn);
begin
      bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
      If dmFiscal.Notas.RecordCount = 0 then begin
         bCancelar.Enabled := False;
      End;
end;

procedure TNFe_CancelamentoAdministrativo.cDataChange(Sender: TObject);
begin
      With dmFiscal do begin
           If Trim(RemoveCaracter('/','',cData.Text)) <> '' then begin
              Notas.SQL.Clear;
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Cancelada <> 1) AND (Saida_Entrada = :pTipo) AND (Data_Emissao = :pData) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
              Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
              Notas.ParamByName('pData').AsDate    := cData.Date;
              Notas.Open;
              bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
              If Notas.RecordCount = 0 then begin
                 bCancelar.Enabled := False;
              End;
           End;
      End;
end;

procedure TNFe_CancelamentoAdministrativo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFe_CancelamentoAdministrativo.RetornaPedido;
Var
    mSequencia : Integer;
begin
      With Dados, dmFiscal do Begin
           ProcessosDOC.Locate('Processo' , NotasProcesso.Value, [loCaseInsensitive]);

           // Copiando os dados da nota fiscal para o pedido.
           tPedido.sql.clear;
           tPedido.sql.add('SELECT ISNULL(MAX(Numero),0)+1 AS Pedido FROM Pedidos');
           tPedido.Open;
           
           Pedidos.Open;
           Pedidos.Append;
                   PedidosNumero.Value                     := tPedidoPedido.Value;
                   PedidosData_Emissao.Value               := Date;
                   PedidosPedido_Nota.Value                := NotasPedido_Nota.Value;
                   PedidosSaida_Entrada.Value              := NotasSaida_Entrada.Value;
                   PedidosTipo_Nota.Value                  := NotasTipo_Nota.Value;
                   PedidosProcesso.Value                   := NotasProcesso.Value;
                   PedidosFUNDAP.Value                     := NotasFUNDAP.Value;
                   PedidosIncentivo_Fiscal.Value           := NotasIncentivo_Fiscal.Value;
                   PedidosDI.Value                         := NotasDI.Value;
                   PedidosData_DI.Value                    := NotasData_DI.Value;
                   PedidosNatureza_Codigo.Value            := NotasNatureza_Codigo.Value;
                   PedidosInscricao_Substituto.Value       := NotasInscricao_Substituto.Value;
                   PedidosInf_Complementares.Value         := NotasInf_Complementares.Value;
                   PedidosInf_Complementares2.Value        := NotasInf_Complementares2.Value;
                   PedidosCliente_Codigo.Value             := NotasCliente_Codigo.Value;
                   PedidosFornecedor_Codigo.Value          := NotasFornecedor_Codigo.Value;
                   PedidosEstado.Value                     := NotasEstado.Value;
                   PedidosTransportador_Codigo.Value       := NotasTransportador_Codigo.Value;
                   PedidosModalidade_Frete.Value           := NotasModalidade_Frete.Value;
                   PedidosModalidade_Pgto.Value            := NotasModalidade_Pgto.Value;
                   PedidosVolume_Quantidade.Value          := NotasVolume_Quantidade.Value;
                   PedidosVolume_Especie.Value             := NotasVolume_Especie.Value;
                   PedidosVolume_Marca.Value               := NotasVolume_Marca.Value;
                   PedidosVolume_Numero.Value              := NotasVolume_Numero.Value;
                   PedidosVolume_PesoLiquido.Value         := NotasVolume_PesoLiquido.Value;
                   PedidosVolume_PesoBruto.Value           := NotasVolume_PesoBruto.Value;
                   PedidosValor_PIS.Value                  := NotasValor_PIS.Value;
                   PedidosValor_PISST.Value                := NotasValor_PISST.Value;
                   PedidosValor_COFINS.Value               := NotasValor_COFINS.Value;
                   PedidosValor_COFINSST.Value             := NotasValor_COFINSST.Value;
                   PedidosAliquota_ICMSOper.Value          := NotasAliquota_ICMSOper.Value;
                   PedidosBCICMS.Value                     := NotasBCICMS.Value;
                   PedidosValor_ICMS.Value                 := NotasValor_ICMS.Value;
                   PedidosAliquota_ICMSSub.Value           := NotasAliquota_ICMSSub.Value;
                   PedidosBCICMS_Substitutivo.Value        := NotasBCICMS_Substitutivo.Value;
                   PedidosValorICMS_Substitutivo.Value     := NotasValorICMS_Substitutivo.Value;
                   PedidosValor_TotalProdutos.Value        := NotasValor_TotalProdutos.Value;
                   PedidosTotal_Frete.Value                := NotasTotal_Frete.Value;
                   PedidosValor_Seguro.Value               := NotasValor_Seguro.Value;
                   PedidosValor_OutrasDespesas.Value       := NotasValor_OutrasDespesas.Value;
                   PedidosBCIPI.Value                      := NotasBCIPI.Value;
                   PedidosValor_TotalIPI.Value             := NotasValor_TotalIPI.Value;
                   PedidosValor_TotalII.Value              := NotasValor_TotalII.Value;
                   PedidosValor_TotalNota.Value            := NotasValor_TotalNota.Value;
                   PedidosRateio_Despesas.Value            := NotasRateio_Despesas.Value;
                   PedidosValor_TotalMVA.Value             := NotasValor_TotalMVA.Value;
                   PedidosValor_ICMSReducao.Value          := NotasValor_ICMSReducao.Value;
                   PedidosDesconto_Percentual.Value        := NotasDesconto_Percentual.Value;
                   PedidosDesconto_Tipo.Value              := NotasDesconto_Tipo.Value;
                   PedidosTotal_Descontos.Value            := NotasTotal_Descontos.Value;
                   PedidosNota_Referencia.Value            := NotasNota_Referencia.Value;
                   PedidosOperacao_Veiculo.Value           := NotasOperacao_Veiculo.Value;
                   PedidosTransporte_Placa.Value           := NotasTransporte_Placa.Value;
                   PedidosTransporte_PlacaUF.Value         := NotasTransporte_PlacaUF.Value;
                   PedidosTransporte_NomeMotorista.Value   := NotasTransporte_NomeMotorista.Value;
                   PedidosTransporte_RGMotorista.Value     := NotasTransporte_RGMotorista.Value;
                   PedidosTransporte_CPFMotorista.Value    := NotasTransporte_CPFMotorista.Value;
                   PedidosTransporte_CodigoANTT.Value      := NotasTransporte_CodigoANTT.Value;
                   PedidosTaxa_Cambio.Value                := NotasTaxa_Cambio.Value;
                   PedidosValor_IsentasICMS.Value          := NotasValor_IsentasICMS.Value;
                   PedidosValor_OutrasICMS.Value           := NotasValor_OutrasICMS.Value;
                   PedidosValor_IsentasIPI.Value           := NotasValor_IsentasIPI.Value;
                   PedidosValor_OutrasIPI.Value            := NotasValor_OutrasIPI.Value;
                   PedidosRepresentante.Value              := NotasRepresentante.Value;
                   PedidosRepresentante_Comissao.Value     := NotasRepresentante_Comissao.Value;
                   PedidosImportacao.Value                 := NotasImportacao.Value;
                   PedidosDestinatario_CNPJ_CPF.Value      := NotasDestinatario_CNPJ_CPF.Value;
                   PedidosDestinatario_Nome.Value          := NotasDestinatario_Nome.Value;
                   PedidosDestinatario_Rua.Value           := NotasDestinatario_Rua.Value;
                   PedidosDestinatario_RuaNumero.Value     := NotasDestinatario_RuaNumero.Value;
                   PedidosDestinatario_Bairro.Value        := NotasDestinatario_Bairro.Value;
                   PedidosDestinatario_Municipio.Value     := NotasDestinatario_Municipio.Value;
                   PedidosDestinatario_MunicipioNome.Value := NotasDestinatario_MunicipioNome.Value;
                   PedidosDestinatario_Estado.Value        := NotasDestinatario_Estado.Value;
                   PedidosDestinatario_CEP.Value           := NotasDestinatario_CEP.Value;
                   PedidosDestinatario_Pais.Value          := NotasDestinatario_Pais.Value;
                   PedidosDestinatario_Telefone1.Value     := NotasDestinatario_Telefone1.Value;
                   PedidosDestinatario_IE.Value            := NotasDestinatario_IE.Value;
                   PedidosDestinatario_Juridica.Value      := NotasDestinatario_Juridica.Value;
                   PedidosValor_Dumping.Value              := NotasValor_Dumping.Value;
                   PedidosReducao_ICMSOper.Value           := NotasReducao_ICMSOper.Value;
                   PedidosApuracao_PISCOFINS.Value         := NotasApuracao_PISCOFINS.Value;
                   PedidosDevolucao.Value                  := NotasDevolucao.Value;
                   PedidosTotal_Impostos.Value             := NotasTotal_Impostos.Value;
                   PedidosComplementar.Value               := NotasComplementar.Value;
                   PedidosAliquota_IRPJ.Value              := NotasAliquota_IRPJ.Value;
                   PedidosValor_IRPJ.Value                 := NotasValor_IRPJ.Value;
                   PedidosAliquota_CSLL.Value              := NotasAliquota_CSLL.Value;
                   PedidosValor_CSLl.Value                 := NotasValor_CSLL.Value;
                   PedidosComissao.Value                   := NotasComissao.Value;
                   PedidosComissao_Valor.Value             := NotasComissao_Valor.Value;
                   PedidosPedido_Representante.Value       := NotasPedido_Representante.Value;
                   PedidosAtendente.Value                  := NotasAtendente.Value;
                   PedidosAtendente_Comissao.Value         := NotasAtendente_Comissao.Value;
                   PedidosValor_Inventario.Value           := NotasValor_Inventario.Value;
                   PedidosRatear_Despesa.Value             := NotasRatear_Despesa.Value;
                   PedidosIndicador_Presenca.Value         := NotasIndicador_Presenca.Value;
                   PedidosIndicador_Intermediario.Value    := NotasIndicador_Intermediario.Value;
                   PedidosNFE_Estorno.Value                := NotasNFE_Estorno.Value;
                   If NotasNota_Referencia.Value <> 0 then PedidosData_Referencia.Value := NotasData_Referencia.Value;
                   PedidosValor_BCICMSDest.Value         := NotasValor_BCICMSDest.Value;
                   PedidosValor_ICMSDest.Value           := NotasValor_ICMSDest.Value;
                   PedidosValor_BCDIFAL.Value            := NotasValor_BCDIFAL.Value;
                   PedidosDIFAL_Valor.Value              := NotasDIFAL_Valor.Value;
                   PedidosDIFAL_ValorOrig.Value          := NotasDIFAL_ValorOrig.Value;
                   PedidosDIFAL_ValorDest.Value          := NotasDIFAL_ValorDest.Value;
                   PedidosFCP_ValorDest.Value            := NotasFCP_ValorDest.Value;
                   PedidosFCP_ICMSDest.Value             := NotasFCP_ICMSDest.Value;
                   PedidosFCP_ICMSORIG.Value             := NotasFCP_ICMSORIG.Value;
                   PedidosTipo_Pagamento.Value           := NotasTipo_Pagamento.Value;
                   PedidosForma_Pagamento.Value          := NotasForma_Pagamento.Value;
                   PedidosValor_BCFCP.Value              := NotasValor_BCFCP.Value;
                   PedidosAliquota_FCP.Value             := NotasAliquota_FCP.Value;
                   PedidosValor_FCP.Value                := NotasValor_FCP.Value;
                   PedidosValor_BCFCPST.Value            := NotasValor_BCFCPST.Value;
                   PedidosAliquota_FCPST.Value           := NotasAliquota_FCPST.Value;
                   PedidosValor_FCPST.Value              := NotasValor_FCPST.Value;
                   PedidosValor_ICMSDesonerado.Value     := NotasValor_ICMSDesonerado.Value;
                   PedidosEntrega_Retirada.Value         := NotasEntrega_Retirada.Value;
                   PedidosTipo_Processo.value            := NotasTipo_Processo.value;
                   PedidosValor_AFRMM.Value              := NotasValor_AFRMM.Value;
                   PedidosDescricao_Forma.value          := NotasDescricao_Forma.asstring;
                   PedidosIntermediador.value            := NotasIntermediador.AsInteger;
                   PedidosTransporte_Placa.Value         := NotasTransporte_Placa.Value;
                   PedidosTransporte_PlacaUF.Value       := NotasTransporte_PlacaUF.Value;
                   PedidosTransporte_NomeMotorista.Value := NotasTransporte_NomeMotorista.Value;
                   PedidosTransporte_RGMotorista.Value   := NotasTransporte_RGMotorista.Value;
                   PedidosTransporte_CPFMotorista.Value  := NotasTransporte_CPFMotorista.Value;
                   PedidosTransporte_CodigoANTT.Value    := NotasTransporte_CodigoANTT.Value;
                   PedidosTransporte_Lacre.Value         := NotasTransporte_Lacre.Value;
                   PedidosReboque_Placa.Value            := NotasReboque_Placa.Value;
                   PedidosReboque_UF.Value               := NotasReboque_UF.Value;
                   PedidosReboque_ANTT.Value             := NotasReboque_ANTT.Value;
                   PedidosReboque_Lacre.Value            := NotasReboque_Lacre.Value;
                   PedidosArmazem.value                  := NotasArmazem.asinteger;
                   PedidosArmazem_Nome.value             := NotasArmazem_Nome.asstring;
                   PedidosArmazem_CNPJ.value             := NotasArmazem_CNPJ.asstring;
                   PedidosArmazem_IE.value               := NotasArmazem_IE.asstring;
                   PedidosArmazem_Endereco.Value         := NotasArmazem_Endereco.AsString;;
                   PedidosRemessa.Value                  := NotasRemessa.Value;
                   PedidosValor_PISST.Value              := NotasValor_PISST.Value;
                   PedidosValor_COFINSST.Value           := NotasValor_COFINSST.Value;
                   PedidosAliquota_ICMSPresumido.Value   := NotasValor_BCICMSPresumido.Value;
                   PedidosValor_BCICMSPresumido.Value    := NotasValor_BCICMSPresumido.Value;
                   PedidosValor_ICMSPresumido.Value      := NotasValor_ICMSPresumido.Value;
                   PedidosIncentivo_Codigo.Value         := NotasIncentivo_Codigo.Value;
           Pedidos.Post;
           tPedido.Close;

           // Ajusta o codigo do pedido nos seriais dos produtos caso haja.
           If cRecriarPedido.Checked = true then begin
              ProdutosSeriais.SQL.Clear;
              If PedidosSaida_Entrada.Value = 0 then begin
                 //ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Nota_Entrada = NULL WHERE(Nota_Entrada = :pNota)');
                 ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Nota_Entrada = NULL, Disponivel = 0 WHERE(Nota_Entrada = :pNota)');
              end else begin
                 //ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Nota_Saida   = NULL WHERE(Nota_Saida   = :pNota)');
                 ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Nota_Saida   = NULL, Disponivel = 1 WHERE(Nota_Saida   = :pNota)');
              End;
              ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              ProdutosSeriais.ParamByName('pNota').AsInteger   := NotasNumero.AsInteger;
              ProdutosSeriais.Execute;
           end else begin
              ProdutosSeriais.SQL.Clear;
              If PedidosSaida_Entrada.Value = 0 then begin
                 //ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Nota_Entrada = NULL WHERE(Nota_Entrada = :pNota)');
                 ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Nota_Entrada = NULL, Disponivel = 0 WHERE(Nota_Entrada = :pNota)');
              end else begin
                 //ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Nota_Saida   = NULL WHERE(Nota_Saida   = :pNota)');
                 ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Nota_Saida   = NULL, Disponivel = 1 WHERE(Nota_Saida   = :pNota)');
              End;
              ProdutosSeriais.ParamByName('pNota').AsInteger   := NotasNumero.AsInteger;
              ProdutosSeriais.Execute;
           End;
           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Pedido = :pPedido)');
           ProdutosSeriais.ParamByName('pPedido').AsInteger := NotasPedido.AsInteger;

           // Copiando os itens da nota fiscal para os itens do pedido.
           NotasItens.Close;
           NotasItens.SQL.Clear;
           NotasITens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData) ORDER BY NCM');
           NotasItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
           NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
           NotasItens.Open;

           PedidosItens.Close;
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) ORDER BY NCM');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           // Em caso de "IMPORTAÇÃO".
           Adicoes.Close;
           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI)');
           Adicoes.ParamByName('pDI').AsString := NotasDI.Value;
           Adicoes.Open;

           // Em caso de "COMPRA INTERNA" pega os itens dos "ITENS DA NOTA FISCAL DE TERCEIROS".
           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
           NotasTerceirosItens.ParamByName('pProcesso').AsString := NotasProcesso.Value;
           NotasTerceirosItens.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE (Codigo = :pCodigo)');
           TipoNota.ParamByName('pCodigo').AsInteger := NotasTipo_Nota.Value;
           TipoNota.Open;

           mSequencia := 1;
           While not NotasItens.Eof do begin
                 PedidosItens.Append;
                              PedidosItensPedido.Value                := PedidosNumero.Value;
                              PedidosItensItem.Value                  := NotasItensItem.Value;
                              PedidosItensSequencia_SISCOMEX.Value    := NotasItensSequencia_SISCOMEX.Value;
                              PedidosItensCodigo_Mercadoria.Value     := NotasItensCodigo_Mercadoria.Value;
                              PedidosItensCodigo_Fabricante.Value     := NotasItensCodigo_Fabricante.Value;
                              PedidosItensDescricao_Mercadoria.Value  := NotasItensDescricao_Mercadoria.Value;
                              PedidosItensNCM.Value                   := NotasItensNCM.Value;
                              PedidosItensEXTIPI.Value                := NotasItensEXTIPI.Value;
                              PedidosItensUnidade_Medida.Value        := NotasItensUnidade_Medida.Value;
                              PedidosItensQuantidade.Value            := NotasItensQuantidade.Value;
                              PedidosItensQuantidade.Value            := NotasItensDisponivel.Value;
                              PedidosItensValor_Unitario.Value        := NotasItensValor_Unitario.Value;
                              PedidosItensValor_Total.Value           := NotasItensValor_Total.Value;
                              PedidosItensAliquota_IPI.Value          := NotasItensAliquota_IPI.Value;
                              PedidosItensValor_IPI.Value             := NotasItensValor_IPI.Value;
                              PedidosItensTotal_IPI.Value             := NotasItensTotal_IPI.Value;
                              PedidosItensCodigoTrib_TabA.Value       := NotasItensCodigoTrib_TabA.Value;
                              PedidosItensCodigoTrib_TabB.Value       := NotasItensCodigoTrib_TabB.Value;
                              PedidosItensCSTIPI.Value                := NotasItensCSTIPI.Value;
                              PedidosItensCSTPIS.Value                := NotasItensCSTPIS.Value;
                              PedidosItensCSTCOFINS.Value             := NotasItensCSTCOFINS.Value;
                              PedidosItensAdicao.Value                := NotasItensAdicao.Value;
                              PedidosItensAliquota_II.Value           := NotasItensAliquota_II.Value;
                              PedidosItensValor_BCII.Value            := NotasItensValor_BCII.Value;
                              PedidosItensValor_II.Value              := NotasItensValor_II.Value;
                              PedidosItensValor_BCICMSOper.Value      := NotasItensValor_BCICMSOper.Value;
                              PedidosItensAliquota_ICMSOper.Value     := NotasItensAliquota_ICMSOper.Value;
                              PedidosItensValor_ICMSOper.Value        := NotasItensValor_ICMSOper.Value;
                              PedidosItensValor_BCICMSSub.Value       := NotasItensValor_BCICMSSub.Value;
                              PedidosItensAliquota_ICMSSub.Value      := NotasItensAliquota_ICMSSub.Value;
                              PedidosItensValor_ICMSSub.Value         := NotasItensValor_ICMSSub.Value;
                              PedidosItensAliquota_MVA.Value          := NotasItensAliquota_MVA.Value;
                              PedidosItensValor_MVA.Value             := NotasItensValor_MVA.Value;
                              PedidosItensAliquota_ICMSReducao.Value  := NotasItensAliquota_ICMSReducao.Value;
                              PedidosItensValor_ICMSReducao.Value     := NotasItensValor_ICMSReducao.Value;
                              PedidosItensValor_Seguro.Value          := NotasItensValor_Seguro.Value;
                              PedidosItensValor_Frete.Value           := NotasItensValor_Frete.Value;
                              PedidosItensValor_Despesa.Value         := NotasItensValor_Despesa.Value;
                              PedidosItensAliquota_PIS.Value          := NotasItensAliquota_PIS.Value;
                              PedidosItensValor_PIS.Value             := NotasItensValor_PIS.Value;
                              PedidosItensValor_PISST.Value           := NotasItensValor_PISST.Value;
                              PedidosItensAliquota_COFINS.Value       := NotasItensAliquota_COFINS.Value;
                              PedidosItensValor_COFINS.Value          := NotasItensValor_COFINS.Value;
                              PedidosItensValor_COFINSST.Value        := NotasItensValor_COFINSST.Value;
                              PedidosItensPeso_Liquido.Value          := NotasItensPeso_Liquido.Value;
                              PedidosItensPeso_Bruto.Value            := NotasItensPeso_Bruto.Value;
                              PedidosItensMovimenta_Inventario.Value  := NotasItensMovimenta_Inventario.Value;
                              PedidosItensMovimenta_Estoque.Value     := NotasItensMovimenta_Estoque.Value;
                              PedidosItensMovimenta_EstoqueRep.Value  := NotasItensMovimenta_EstoqueRep.Value;
                              PedidosItensModalidade_BCICMS.Value     := NotasItensModalidade_BCICMS.Value;
                              PedidosItensModalidade_BCICMSST.Value   := NotasItensModalidade_BCICMSST.Value;
                              PedidosItensValor_IsentasICMS.Value     := NotasItensValor_IsentasICMS.Value;
                              PedidosItensValor_OutrasICMS.Value      := NotasItensValor_OutrasICMS.Value;
                              PedidosItensValor_IsentasIPI.Value      := NotasItensValor_IsentasIPI.Value;
                              PedidosItensValor_OutrasIPI.Value       := NotasItensValor_OutrasIPI.Value;
                              PedidosItensLucro.Value                 := NotasItensLucro.Value;
                              PedidosItensLucro_Valor.Value           := NotasItensLucro_Valor.Value;
                              PedidosItensValor_BCIPI.Value           := NotasItensValor_BCIPI.Value;
                              PedidosItensRateio_ICMSProcesso.Value   := NotasItensRateio_ICMSProcesso.Value;
                              PedidosItensSequencia.Value             := mSequencia;
                              PedidosItensProcesso.Value              := NotasItensProcesso.Value;
                              PedidosItensDI.Value                    := NotasItensDI.Value;
                              PedidosItensSaida_Entrada.Value         := NotasItensSaida_Entrada.Value;
                              PedidosItensVeiculo.Value               := NotasItensVeiculo.Value;
                              PedidosItensSequencia.Value             := NotasItensItem.Value;
                              PedidosItensNota_Terceiros.Value        := NotasItensNota_Terceiros.Value;
                              PedidosItensAliquota_ICMSIntegral.Value := NotasItensAliquota_ICMSIntegral.Value;
                              PedidosItensValor_Dumping.Value         := NotasItensValor_Dumping.Value;
                              PedidosItensApuracao_PISCOFINS.Value    := NotasItensApuracao_PISCOFINS.Value;
                              PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                              PedidosItensAliquota_PISRed.Value       := NotasItensAliquota_PISRed.Value;
                              PedidosItensAliquota_COFINSRed.Value    := NotasItensAliquota_COFINSRed.Value;
                              PedidosItensAliquota_ICMSIntegral.Value := NotasItensAliquota_ICMSIntegral.Value;
                              PedidosItensValor_BCMVA.Value           := NotasItensValor_BCMVA.Value;
                              PedidosItensTotal_Item.Value            := NotasItensTotal_Item.Value;
                              PedidosItensRegistro_Adicao.Value       := NotasItensRegistro_Adicao.Value;
                              PedidosItensTipo_Nota.Value             := NotasItensTipo_Nota.Value;
                              PedidosItensTotal_Impostos.Value        := NotasItensTotal_Impostos.Value;
                              PedidosItensReducao_ICMSST.Value        := NotasItensReducao_ICMSST.Value;
                              PedidosItensValor_Inventario.Value      := NotasItensValor_Inventario.Value;
                              PedidosItensCEST.Value                  := NotasItensCEST.Value;
                              PedidosItensValor_BCICMSDest.Value      := NotasItensValor_BCICMSDest.Value;
                              PedidosItensAliquota_ICMSDest.Value     := NotasItensAliquota_ICMSDest.Value;
                              PedidosItensValor_ICMSDest.Value        := NotasItensValor_ICMSDest.Value;
                              PedidosItensValor_BCDIFAL.Value         := NotasItensValor_BCDIFAL.Value;
                              PedidosItensDIFAL_Valor.Value           := NotasItensDIFAL_Valor.Value;
                              PedidosItensDIFAL_PercOrig.Value        := NotasItensDIFAL_PercOrig.Value;
                              PedidosItensDIFAL_ValorOrig.Value       := NotasItensDIFAL_ValorOrig.Value;
                              PedidosItensDIFAL_PercDest.Value        := NotasItensDIFAL_PercDest.Value;
                              PedidosItensDIFAL_ValorDest.Value       := NotasItensDIFAL_ValorDest.Value;
                              PedidosItensFCP_Aliquota.Value          := NotasItensFCP_Aliquota.Value;
                              PedidosItensFCP_ValorDest.Value         := NotasItensFCP_ValorDest.Value;
                              PedidosItensFCP_ICMSOrig.Value          := NotasItensFCP_ICMSOrig.Value;
                              PedidosItensFCP_ICMSDest.Value          := NotasItensFCP_ICMSDest.Value;
                              PedidosItensNatureza_Codigo.Value       := NotasItensNatureza_Codigo.Value;
                              PedidosItensValor_BCFCP.Value           := NotasItensValor_BCFCP.Value;
                              PedidosItensValor_FCP.Value             := NotasItensValor_FCP.Value;
                              PedidosItensValor_BCFCPST.Value         := NotasItensValor_BCFCPST.Value;
                              PedidosItensValor_FCPST.Value           := NotasItensValor_FCPST.Value;
                              PedidosItensValor_ICMSDesonerado.Value  := NotasItensValor_ICMSDesonerado.Value;
                              PedidosItensPO.Value                    := NotasItensPO.Value;
                              PedidosItensOrdem.Value                 := NotasItensOrdem.Value;
                              PedidosItensMedia_BCR.Value             := NotasItensMedia_BCR.Value;
                              PedidosItensValor_ICMSSubAnt.Value      := NotasItensValor_ICMSSubAnt.Value;
                              PedidosItensAliquota_ICMSSubAnt.Value   := NotasItensAliquota_ICMSSubAnt.Value;
                              PedidosItensValor_ICMSAnt.Value         := NotasItensValor_ICMSAnt.Value;
                              PedidosItensFator_Cambio.Value          := NotasItensFator_Cambio.Value;
                              PedidosItensRateio_FreteTerrNac.Value   := NotasItensRateio_FreteTerrNac.Value;
                              PedidosItensPercentual_Beneficio.asfloat:= NotasItensPercentual_Beneficio.value;
                              PedidosItensValor_BCICMSMono.value      := NotasItensValor_BCICMSMono.value;
                              PedidosItensValor_BCICMSMonoRet.value   := NotasItensValor_BCICMSMonoRet.value;
                              PedidosItensValor_ICMSMono.value        := NotasItensValor_ICMSMono.value;
                              PedidosItensValor_ICMSMonoRet.value     := NotasItensValor_ICMSMonoRet.value;
                              PedidosItensPercentual_ICMSMono.value   := NotasItensPercentual_ICMSMono.value;
                              PedidosItensPercentual_ICMSMonoRet.value:= NotasItensPercentual_ICMSMonoRet.value;
                              PedidosItensNavio.value                 := NotasItensNavio.value;
                              PedidosItensCodigo_CredPres.Value       := NotasItensCodigo_CredPres.Value;
                              PedidosItensBeneficio_Fiscal.Value      := NotasItensBeneficio_Fiscal.Value;
                              PedidosItensValor_BCCBS.Value           := NotasItensValor_BCCBS.Value;
                              PedidosItensAliquota_CBS.Value          := NotasItensAliquota_CBS.Value;
                              PedidosItensCSTCBS.Value                := NotasItensCSTCBS.Value;
                              PedidosItensValor_BCIBS.Value           := NotasItensValor_BCIBS.Value;
                              PedidosItensAliquota_IBS.Value          := NotasItensAliquota_IBS.Value;
                              PedidosItensCSTIBS.Value                := NotasItensCSTIBS.Value;
                              PedidosItensValor_COFINSDiferenca.Value := NotasItensValor_COFINSDiferenca.Value;
                 PedidosItens.Post;
                 Inc(mSequencia);

                 // Posiciona o estoque com os itens.
                 If TipoNotaMovimenta_Estoque.Value = True then begin
                    // Movimenta os itens da "ADIÇÃO" em casos de processos de IMPORTAÇÃO.
                    Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

                    If Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                       If Adicoes.Locate('DI;Codigo_Mercadoria;Adicao;Sequencia_SISCOMEX', VarArrayOf([NotasItensDI.Value,NotasItensCodigo_Mercadoria.Value, NotasItensAdicao.Value, NotasItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] ) = True then begin
                          Adicoes.Edit;
                                  If NotasSaida_Entrada.Value = 0 then begin
                                     AdicoesLancado_Entrada.Value := AdicoesLancado_Entrada.Value - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                  end else begin
                                     AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                  End;
                          Adicoes.Post;
                       End;
                    End else begin
                       // Movimenta os itens da "NOTA FISCAL DE TERCEIROS" em casos de processos de COMPRA INTERNA.
                       If NotasTerceirosItens.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) = true then begin
                          NotasTerceirosItens.Edit;
                                              NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                          NotasTerceirosItens.Post;
                       End;
                    End;
                 End;

                 // Salvando os detalhamentos dos navios da nota para o Pedido.
                 with PedidosItensNavios do begin
                      sql.Clear;
                      sql.Add('select * from PedidosItensNavios where Pedido = 0');
                      open;
                 end;
                 with NotasItensNavios do begin 
                      sql.Clear;
                      sql.Add('select * from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData');
                      ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
                      ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
                      Open;
                      First;
                      while not eof do Begin
                            with tPedido do begin
                                 sql.Clear;
                                 sql.Add('select isnull(max(Registro), 0)+1 as Registro from PedidosItensNavios');
                                 open;
                            end;
                            PedidosItensNavios.Append;
                                                PedidosItensNaviosRegistro.Value          := tPedido.FieldByName('Registro').AsInteger;
                                                PedidosItensNaviosPedido.Value            := PedidosNumero.Value;
                                                PedidosItensNaviosCodigo_Mercadoria.Value := FieldByName('Codigo_Mercadoria').Value;
                                                PedidosItensNaviosItem.Value              := FieldByName('Item').Value;
                                                PedidosItensNaviosNavio.Value             := FieldByName('Navio').Value;
                                                PedidosItensNaviosQuantidade.Value        := FieldByName('Quantidade').Value;
                                                PedidosItensNaviosSaida_Entrada.Value     := FieldByName('Saida_Entrada').Value;
                                                PedidosItensNaviosDI.Value                := FieldByName('DI').Value;
                            PedidosItensNavios.Post;
                            edit;
                               FieldByName('Cancelada').Value := true;
                            post;
                            Next;
                      end;
                 end;
                 
                 NotasItens.Next;
           End;

           // Copia as despesas da tabela "NotasDespesas" para "PedidosDespesas".
           NotasDespesas.SQL.Clear;
           NotasDespesas.SQL.Add('SELECT * FROM NotasDespesas WHERE(Nota = :pNota) AND (Data_Emissao = :pData)');
           NotasDespesas.ParamByName('pNota').AsInteger := NotasNumero.Value;
           NotasDespesas.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
           NotasDespesas.Open;

           PedidosDespesas.SQL.Clear;
           PedidosDespesas.SQL.Add('SELECT * FROM PedidosDespesas');
           PedidosDespesas.Open;

           NotasDespesas.First;
           While not NotasDespesas.Eof do Begin
                 PedidosDespesas.Append;
                                 PedidosDespesasPedido.Value        := PedidosNumero.Value;
                                 PedidosDespesasClassificacao.Value := NotasDespesas.FieldByName('Classificacao').AsString;
                                 PedidosDespesasProcesso.Value      := NotasDespesas.FieldByName('Processo').AsString;
                                 PedidosDespesasDescricao.Value     := NotasDespesas.FieldByName('Descricao').AsString;
                                 PedidosDespesasValor_Total.Value   := NotasDespesas.FieldByName('Valor_Total').Value;
                                 PedidosDespesasValor_Nota.Value    := NotasDespesas.FieldByName('Valor_Nota').Value;
                 PedidosDespesas.Post;
                 NotasDespesas.Next;
           End;

           // Salvando os rateios de FOB/FRETE/SEGURO... utilizados na nota fiscal.
           NotasRateio.SQL.Clear;
           NotasRateio.SQL.Add('SELECT * FROM NotasRateio WHERE Nota = :pNota AND Data = :pData');
           NotasRateio.ParamByName('pNota').AsInteger := Notas.fieldbyname('Numero').AsInteger;
           NotasRateio.ParamByName('pData').AsDate    := Notas.fieldbyname('Data_Emissao').value;
           NotasRateio.Open;

           if NotasRateio.RecordCount > 0 then begin
              PedidosRateio.SQL.Clear;
              PedidosRateio.SQL.Add('SELECT * FROM PedidosRateio WHERE Pedido = (SELECT ISNULL(MAX(Registro)+1, 0) FROM PedidosRateio)');
              PedidosRateio.Open;

              tPedido.SQL.Clear;
              tPedido.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidosRateio');
              tPedido.Open;

              PedidosRateio.Append;
                            PedidosRateioRegistro.Value                    := tPedido.FieldByName('Registro').AsInteger;
                            PedidosRateioPedido.Value                      := PedidosNumero.Value;
                            PedidosRateio.FieldByName('FOB_ME').Value      := NotasRateioFOB_ME.Value;
                            PedidosRateio.FieldByName('FOB_Real').Value    := NotasRateioFOB_Real.Value;
                            PedidosRateio.FieldByName('II').Value          := NotasRateioII.Value;
                            PedidosRateio.FieldByName('Dumping').Value     := NotasRateioDumping.Value;
                            PedidosRateio.FieldByName('Frete_Real').Value  := NotasRateioFrete_Real.Value;
                            PedidosRateio.FieldByName('Frete_ME').Value    := NotasRateioFrete_ME.Value;
                            PedidosRateio.FieldByName('Seguro_Real').Value := NotasRateioSeguro_Real.Value;
                            PedidosRateio.FieldByName('Seguro_ME').Value   := NotasRateioSeguro_ME.Value;
              PedidosRateio.Post;
           end;
      End;
end;

procedure TNFe_CancelamentoAdministrativo.GerarDuplicatas;
Var
     mParcelas, i : Integer;
     mCampo       : String;
     mData        : TDateTime;
begin
     mParcelas := 0;
     With Dados, dmFiscal do Begin
          PedidosFatura.SQL.Clear;
          PedidosFatura.SQL.Add('DELETE FROM PedidosFatura WHERE (Pedido = :pPedido)');
          PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosFatura.Execute;

          PedidosDuplicata.SQL.Clear;
          PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
          PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosDuplicata.Execute;

          PedidosFatura.SQL.Clear;
          PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido)');
          PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
          PedidosFatura.Open;

          PedidosDuplicata.SQL.Clear;
          PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
          PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosDuplicata.Execute;

          PedidosFatura.Append;
                        PedidosFaturaFatura.Value       := PedidosNumero.AsString;
                        PedidosFaturaData_Emissao.Value := Date;
                        PedidosFaturaPedido.Value       := PedidosNumero.Value;
                        PedidosFaturaData_Pedido.Value  := Date;
                        PedidosFaturaForma_Pgto.Value   := PedidosModalidade_Pgto.Value;
                        PedidosFaturaCliente.Value      := PedidosCliente_Codigo.Value;
                        PedidosFaturaValor_Total.Value  := PedidosValor_TotalNota.Value;
          PedidosFatura.Post;

          If PedidosModalidade_Pgto.Value > 0 then begin
             // Pegando a quantidade de parcelas.

             Inc(mParcelas);
             // Criando as parcelas da fatura na tabela "PedidosFatura".
             For i := 1 to mParcelas do begin
                 mCampo := 'Parcela'+PoeZero(2,i);
                 mData  := Date + ModalidadesPgto.FieldbyName(mCampo).AsInteger;

                 // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                 If (ConfiguracaoDia_Util.Value <> 'N') then begin
                    If (DayOfWeek(mData) = 1) then begin
                       If (ConfiguracaoDia_Util.Value = '-') then
                          mData := mData -2
                       else
                          mData := mData +1;
                    End;
                    If (DayOfWeek(mData) = 7) then begin
                       If (ConfiguracaoDia_Util.Value = '-') then
                          mData := mData -1
                       else
                          mData := mData +2;
                    End;
                 End;

                 PedidosDuplicata.Append;
                                  PedidosDuplicataDuplicata.Value       := PoeZero(9,PedidosNumero.Value)+InttoStr(i);
                                  PedidosDuplicataFatura.Value          := PedidosNumero.AsString;
                                  PedidosDuplicataData_Vencimento.Value := mData;
                                  PedidosDuplicataValor.Value           := (PedidosValor_TotalNota.Value / mParcelas);
                                  PedidosDuplicataValor_Liquido.Value   := PedidosDuplicataValor.Value;
                                  If ModalidadesPgto.FieldbyName(mCampo).AsInteger <> 0 then
                                     PedidosDuplicataVencimento.Value := ModalidadesPgto.FieldbyName(mCampo).AsString + ' dias'
                                  else
                                     PedidosDuplicataVencimento.Value := 'A VISTA';
                                  PedidosDuplicataPedido.Value        := PedidosNumero.AsInteger;
                                  PedidosDuplicataOrdem.Value         := i;
                                  PedidosDuplicataNumero.Value        := PoeZero(9,PedidosNumero.Value)+Chr(64+i);
                 PedidosDuplicata.Post;
              End;
         End;
     End;
End;

procedure TNFe_CancelamentoAdministrativo.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
    mTipo     : Integer;
begin
      mTipo     := cTipo.ItemIndex;
      mPesquisa := InputBox('Pesquisar','Nº da Nota:', mPesquisa);
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Cancelada <> 1) ORDER BY Numero DESC');
           Notas.Open;
           If Notas.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
              ShowMessage('Nenhuma nota fiscal válida encontrada com o número informado!');
              cTipo.ItemIndex := mTipo;
           end else begin
              cTipo.ItemIndex := NotasSaida_Entrada.AsInteger;
              Notas.Locate('Numero', mPesquisa, [loCaseInsensitive])
           End;
      End;
      Grade.SetFocus;
end;

Function TNFe_CancelamentoAdministrativo.Consultar: Boolean;
var
    Util : NFe_Util_2G_Interface;
    i    : integer;
    mXML : TXMLDocument;
begin
      Screen.Cursor := crHourGlass;
      mXML          := TXMLDocument.Create(Self);

      With Dados, dmFiscal do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;

           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaUF         := Trim(EmpresasEstado.AsString);
           SiglaWS         := Trim(EmpresasUF_WebService.AsString);
           TipoAmbiente    := Menu_Principal.Amb_Producao;
           Licenca         := Trim(EmpresasLicensa_NFE_Util.AsString);
           retWS           := '';
           Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

           Janela_Comunicacao := TJanela_Comunicacao.Create(Self);
           Janela_Comunicacao.Show;
           Application.ProcessMessages;

           i := Util.ConsultaNF2G(SiglaWS, TipoAmbiente, NomeCertificado, EmpresasNFEletronica_Layout.AsString, MsgDados, MsgRetWS, MsgResultado, Trim(NotasNFe_cNF.AsString), Proxy, Usuario, Senha);

           Janela_Comunicacao.Close;

           Result := false;
           If i > 101 then begin
              MessageDlg('Falha na chamada do WS...'+#13+#13+MsgResultado, mtError, [mbOK], 0);
              Result := false;
           end;
           If i = 100 then begin
              MessageDlg('Nota Fiscal não cancelada na SEFAZ!'+#13+#13+'Cancelamento administrativo só pode ser efetuado com o cancelamento da NF-e na SEFAZ.', mtError, [mbOK], 0);
              Result := false;
           End;
           If i = 101 then begin
              Result := true;
           End;
      End;

      Util := nil;
      mXML.Free;
      Screen.Cursor := CrDefault;
end;


end.
