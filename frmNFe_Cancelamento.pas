unit frmNFe_Cancelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, MSAccess, DBAccess, Mask, Vcl.StdCtrls, DBCtrls,  Vcl.ExtCtrls, Grids,
  DBGrids, RXDBCtrl, RXCtrls, FUNCOES, ImgList, Vcl.ComCtrls, NFe_Util_2G_TLB, XMLDoc, XMLIntf, IniFiles, ppTypes, IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage,  IdSMTP, IdAttachmentFile, DateUtils,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, RxToolEdit, IdIOHandlerSocket, IdBaseComponent, IdComponent, IdMessageClient, IdSMTPBase, system.UITypes, MemDS;
  
type
    TNFe_Cancelamento = class(TForm)
    cTipo: TRadioGroup;
    cData: TDateEdit;
    Panel1: TPanel;
    bSair: TButton;
    bCancelar: TButton;
    tPedido: TMSQuery;                                        
    tPedidoPedido: TIntegerField;
    bConsultar: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bProtocolo: TButton;
    Grade: TDBGrid;
    SMTP: TIdSMTP;
    EmailMSG: TIdMessage;
    tProcessos: TMSQuery;
    GroupBox1: TGroupBox;
    cRecriarPedido: TCheckBox;
    tItens: TMSQuery;
    tHistorico: TMSQuery;
    bRecriar: TButton;
    tBaixas: TMSQuery;
    cMensagens: TMemo;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    tRegistro: TMSQuery;
    bDownload: TButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tSaidas: TMSQuery;
    bFiltrar: TButton;
    tTemp: TMSQuery;
    tCIAP: TMSQuery;
    tEmpresa: TMSQuery;
    tPass: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure CancelaNFE;
    procedure FormCreate(Sender: TObject);
    procedure RetornaPedido;
    procedure bConsultarClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bProtocoloClick(Sender: TObject);
    procedure EnviarEmail(Tipo: String);
    procedure bRecriarClick(Sender: TObject);
    procedure bDownloadClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNome,
    mNome3,
    mPasta      : String;
    xmlProtocolo: TMemo;
    SiglaWS,
    NomeCertificado,
    MsgDados,
    RetWS,
    MsgResultado,
    ChaveNFe,
    nProtocolo,
    Justificativa,
    nProtocoloCanc,
    dProtocoloCanc,
    Proxy,
    Usuario,
    Senha,
    mMotivo,
    NroRecibo,
    mNFeAssinada,
    ProcCancNFe,
    Versao,
    VerAplic,
    NSUXML,
    schemaXML,
    Licenca: Widestring;
    cStat,
    mResultado,
    tpAmb,
    TipoAmbiente:Integer;
    mCancela    :Boolean;
  end;

var
  NFe_Cancelamento: TNFe_Cancelamento;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmDMContab, frmJanela_Processamento;

{$R *.dfm}

procedure TNFe_Cancelamento.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TNFe_Cancelamento.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Salva opções da tela de cancelamento.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteBool('CANCELAMENTO_NFE', 'Recriar', cRecriarPedido.Checked);
      aINI.Free;

      //FecharTabelas(Dados, dmFiscal, dmContab, nil);
      Dados.Banco_Empresas.Disconnect;
      Dados.Banco_Empresas.Connect;
      NFe_Cancelamento.Release;
      NFe_Cancelamento := nil;
end;

procedure TNFe_Cancelamento.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cRecriarPedido.Checked := aINI.ReadBool('CANCELAMENTO_NFE', 'Recriar'  , true);
      aINI.Free;

      cData.Date := Date;

      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;

           bConsultar.Enabled := Notas.RecordCount > 0;
           bCancelar.Enabled  := Notas.RecordCount > 0;
           bProtocolo.Enabled := Notas.RecordCount > 0;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNFe_Cancelamento.bCancelarClick(Sender: TObject);
var
   mNotas
   ,mItens
   ,mBanco: wideString;
   mDataIni, mDataFim:TDate;
   mSenha:string;
begin
      if not bCancelar.Enabled then Abort;
      if not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      end;

      bCancelar.Enabled := false;

      With Dados, dmFiscal, dmContab do begin
           mBanco := Banco_Empresas.Database;
           if trim(ConfiguracaoEmpresa_Financeiro.AsString) <> '' then begin
              with tEmpresa do begin
                   sql.clear;
                   sql.add('select Codigo, Banco_Dados from Empresas where CNPJ = :pCNPJ');
                   parambyname('pCNPJ').AsString := ConfiguracaoEmpresa_Financeiro.AsString;
                   open;
                   mBanco := fieldbyname('Banco_Dados').asstring;
              end;
           end;
           if not Notas.FieldByName('Cancelada_ForaPrazo').AsBoolean then begin
              // Verificando se a nota fiscal ja foi baixada no financeiro.
              with tBaixas do begin
                   sql.clear;
                   sql.Add('select count(*) as Qtde from '+mBanco+'.dbo.PagarReceberBaixas');
                   sql.add('where Numero in(select Numero from '+mBanco+'.dbo.PagarReceber where Numero_Documento = :pNota and Data_Documento = :pData and Cliente = :pCliente)');
                   ParamByName('pNota').AsString     := Notas.FieldByName('Numero').AsString;
                   ParamByName('pData').AsDate       := Notas.FieldByName('Data_Emissao').AsDateTime;
                   ParamByName('pCliente').AsInteger := Notas.FieldByName('Cliente_Codigo').AsInteger;
                   Open;
                   if FieldByName('QTDE').AsInteger > 0 then begin
                      MessageDlg('Atenção!'+#13#13+'Já foram efetuadas baixas no financeiro para a nota fiscal selecionada.'+#13+#13+'Estorne primeiro as baixas do financeiro para poder cancelar esta nota fiscal.  ', mtInformation, [mbOK], 0);
                      bCancelar.Enabled := true;
                      Abort;
                   end;
              end;

              // Verifica se existe fechamento do processo.
              If ProcessosDOC.Locate('Processo', Notas.FieldByName('Processo').AsString, [loCaseInsensitive]) = true then begin
                 If not DataLimpa(ProcessosDOCProcesso_Fechamento.AsString) then begin
                    MessageDlg('Atenção!'+#13#13+'O Processo desta nota fiscal Já foi fechado, abra o processo para poder cancelar esta nota fiscal.', mtInformation, [mbOK], 0);
                    bCancelar.Enabled := true;
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
                 tSaidas.SQL.Add('  AND  Nota > :pNota');
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
//                    MessageDlg('Atenção!'+#13#13+'As seguintes notas fiscais de saída foram emitidas após esta nota de entrada:'+#13+#13+mNotas+#13+
//                               'Para cancelar esta nota fiscal é preciso cancela primeiro as notas fiscais de saída.'+#13+#13, mtError, [mbOK], 0);
                    if MessageDlg('Atenção!'+#13#13+'As seguintes notas fiscais de saída foram emitidas após esta nota de entrada:'+#13+#13+mNotas+#13+'Deseja cancelar esta nota fiscal mesmo assim?'+#13+#13, mtConfirmation, [mbyes, mbno], 0) = mrno then begin
                       bCancelar.Enabled := true;
                       Abort;
                    end else begin
                       mSenha := Inputbox('Cancelamento', #31+'Senha Administrador:', mSenha);
                       if trim(mSenha) = '' then begin
                          bCancelar.Enabled := true;
                          Abort;
                       end else begin
                          with tPass do begin
                               sql.Clear;
                               sql.Add('select * from Usuarios where Matricula = ''ADM01'' ');
                               open;
                               if fieldbyname('Chave').AsString <> mSenha then begin
                                  MessageDlg('Senha do administrador invalida!', mtError, [mbok], 0);
                                  bCancelar.Enabled := true;
                                  abort;
                               end;
                          end;
                       end;
                    end;
                 end;
              end;

              // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (TRANSFERÊNCIAS).
              tSaidas.SQL.Clear;
              tSaidas.SQL.Add('SELECT COUNT(Produto_Saida) AS Qtde');
              tSaidas.SQL.Add('FROM   ProdutosTransferencia');
              tSaidas.SQL.Add('WHERE  Produto_Saida IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
              //tSaidas.SQL.Add('  AND  Data_Transferencia >= :pData ');
              tSaidas.SQL.Add('  AND  Data_Transferencia > :pData ');
              tSaidas.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
              tSaidas.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
              tSaidas.Open;
              if tSaidas.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Nota Fiscal não pode ser "Cancelada" !'+#13+#13+'Existem transferências feitas com alguns produtos que constam da nota fiscal.', mtError, [mbOK], 0);
                 bCancelar.Enabled := true;
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
           end;

           If MessageDlg('Atenção!'+#13#13+'Você esta cancelando a nota fiscal Nº '+PoeZero(9,NotasNumero.AsInteger)+ ' de '+DatetoStr(NotasData_Emissao.Value)+', na SEFAZ'+#13+#13+'Todos os itens da Nota Fiscal voltarão a ficar disponiveis para faturamento.'+#13+#13+'Deseja realmente continuar?', mtWarning, [mbNo, mbYes], 0) = mrYes then begin
              mMotivo  := UpperCase(InputBox('Cancelamento...', 'Motivo do Cancelamento', ''));
              If Length(Trim(mMotivo)) < 15 then begin
                 ShowMessage('Justificativa de cancelamento da NF-e deve ter no minimo 15 caracteres.');
                 bCancelar.Enabled := true;
                 Abort;
              end;

              // Verifica o certificado digital no cadastro da empresa.
              If Trim(EmpresasCertificado_Digital.AsString) = '' then begin
                 MessageDlg('Certificado digital não informado no cadastro da empresa!'+#13+#13+'Não é possivel executar a operação desejada.', mtError, [mbOk], 0);
                 bCancelar.Enabled := true;
                 Abort;
              End;

              mMotivo       := RemoveCaracterXML(mMotivo);
              Screen.Cursor := crHourGlass;

              Application.ProcessMessages;

              CancelaNFE;

              If mCancela = True then begin
                 Notas.Edit;
                       NotasCancelada.Value              := mCancela;
                       NotasMotivo_Cancelamento.Value    := mMotivo;
                       NotasData_Cancelamento.Value      := Date;
                       NotasProtocolo_Cancelamento.Value := nProtocoloCanc;
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
                 NotasItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
                 NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.Value;

                 // Marcando os itens da nota como cancelados (Lotes).
                 NotasItensDetalhe.Close;
                 NotasItensDetalhe.SQL.Clear;
                 NotasItensDetalhe.SQL.Add('UPDATE NotasItensDetalhe SET Cancelada = 1');
                 NotasItensDetalhe.SQL.Add('WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
                 NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.Value;
                 NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                 NotasItensDetalhe.Execute;
                 NotasItensDetalhe.SQL.Clear;
                 NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE (Nota_Emissao = :pNota) AND (Data_Emissao = :pData)');
                 NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.Value;
                 NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.Value;

                 // Marcando as notas de referencia como canceladas e ou denegada.
                 tTemp.SQL.Clear;
                 tTemp.SQL.Add('UPDATE NotasItensReferencia SET Cancelada = 1');
                 tTemp.SQL.Add('WHERE Nota      = :pNota');
                 tTemp.SQL.Add('AND   Data_Nota = :pData');
                 tTemp.ParamByName('pNota').AsInteger := NotasNumero.Value;
                 tTemp.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                 tTemp.Execute;

                 // Caso a nota seja a única nota de saída com ICMS do mês, ajusta o imobilizado.
                 mDataini := StrtoDate('01/'+InttoStr(MonthOf(NotasData_Emissao.AsDateTime))+'/'+InttoStr(yearOf(NotasData_Emissao.AsDateTime)));
                 mDataFim := UltimoDiaMes(mDataini);

                 tCIAP.SQL.Clear;
                 tCIAP.SQL.Add('SELECT COUNT(*) AS Qtde');
                 tCIAP.SQL.Add('FROM  NotasFiscais');
                 tCIAP.SQL.Add('WHERE Saida_Entrada = 1');
                 tCIAP.SQL.Add('  AND Data_Emissao BETWEEN :pDataIni AND :pDataFim');
                 tCIAP.SQL.Add('  AND Valor_ICMS > 0');
                 tCIAP.SQL.Add('  AND Cancelada <> 1');
                 tCIAP.SQL.Add('  AND NFe_Denegada <> 1');
                 tCIAP.ParamByName('pDataIni').AsDate := mDataIni;
                 tCIAP.ParamByName('pDataFim').AsDate := mDataFim;
                 //tCIAP.SQL.SaveToFile('c:\temp\Cancelamento_NFE_CIAP.sql');
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
                 tProcessos.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                 tProcessos.Open;

                 if tProcessos.RecordCount > 0 then begin
                    tHistorico.SQL.Clear;
                    tHistorico.SQL.Add('SELECT ISNULL(MAX(Numero), 0) AS Numero FROM ProcessosHistorico');
                    tHistorico.Open;

                    while not tProcessos.Eof do begin
                          tItens.SQL.Clear;
                          tItens.SQL.Add('SELECT COUNT(*) AS Quantidade FROM NotasItens WHERE (Processo = :pProcesso) AND (Cancelada <> 1)');
                          tItens.ParamByName('pProcesso').AsString := Trim(tProcessos.FieldByName('Processo').AsString);
                          tItens.Open;
                          If tItens.FieldByName('Quantidade').AsInteger = 0 then begin
                             If ProcessosDOC.Locate('Processo', Trim(tProcessos.FieldByName('Processo').AsString), [loCaseInsensitive]) = true then begin
                                ProcessosDOC.Edit;
                                             ProcessosDOCBloqueado.Value := false;
                                ProcessosDOC.Post;
                             End;
                          End;

                          // Gera o histórico de cancelamento para o processo pelos itens da nota fiscal.
                          if Trim(tProcessos.FieldByName('Processo').AsString) <> '' then begin
                             ProcessosHistorico.SQL.Clear;
                             ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE Processo = :pProcesso');
                             ProcessosHistorico.ParamByName('pProcesso').AsString := Trim(tProcessos.FieldByName('Processo').AsString);
                             ProcessosHistorico.Open;
                             tHistorico.Open;
                             ProcessosHistorico.Append;
                                                ProcessosHistoricoNumero.Value    := tHistorico.FieldByName('Numero').AsInteger+1;;
                                                ProcessosHistoricoProcesso.Value  := Trim(tProcessos.FieldByName('Processo').AsString);
                                                ProcessosHistoricoData.Value      := Date;
                                                ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                                ProcessosHistoricoDocumento.Value := Poezero(9, NotasNumero.AsInteger);
                                                If NotasSaida_Entrada.Value = 0 then
                                                   ProcessosHistoricoDescricao.Value := 'Cancelada a nota fiscal de entrada nº '+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString + '  ('+mMotivo+').'
                                                else
                                                   ProcessosHistoricoDescricao.Value := 'Cancelada a nota fiscal de saida nº '+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString + '  ('+mMotivo+').';
                             ProcessosHistorico.Post;
                             tHistorico.Close;
                          end;
                          tProcessos.Next;
                    end;
                 end;

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
                 {
                 PagarReceber.SQL.Clear;
                 If NotasSaida_Entrada.Value = 1 then begin
                    PagarReceber.SQL.Add('delete from '+mBanco+'.dbo.PagarReceber where Cliente = :pCliente and Fiscal = :pNota and Tipo_Nota = ''SD'' ');
                    PagarReceber.ParamByName('pCliente').AsInteger := NotasCliente_Codigo.AsInteger;
                    PagarReceber.SQL.Add('delete from '+mBanco+'.dbo.PagarReceber where Fiscal = :pNota and Data_Documento = :pData and Tipo_Nota = ''SD'' ');
                 end else begin
                    PagarReceber.SQL.Add('DELETE FROM '+mBanco+'.dbo.PagarReceber WHERE (Fornecedor= :pFornecedor) AND (Fiscal = :pNota)' );
                    PagarReceber.ParamByName('pFornecedor').AsInteger := NotasFornecedor_Codigo.AsInteger;
                 End;
                 }
                 with tTemp do begin
                      sql.Clear;
                      sql.Add('delete from '+mBanco+'.dbo.PagarReceber where Fiscal = :pNota and Data_Documento = :pData and Tipo_Nota = ''SD'' or Tipo_Nota = ''ET'' ');
                      parambyname('pData').value    := NotasData_Emissao.value;
                      parambyname('pNota').AsString := NotasNumero.AsString;
                      execute;
                 end;

                 // Exclui os lançamento de pagamentos de comissão de representantes do financeiro.
                 {
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM '+mBanco+'.dbo.PagarReceber WHERE (Fornecedor = :pRepresentante) AND (Fiscal = :pNota)' );
                 PagarReceber.ParamByName('pRepresentante').AsInteger := NotasRepresentante.AsInteger;
                 PagarReceber.ParamByName('pNota').AsString           := NotasNumero.AsString;
                 PagarReceber.Execute;
                 PagarReceber.SQL.Clear;
                 }
                 with tTemp do begin
                      sql.Clear;
                      sql.Add('delete from '+mBanco+'.dbo.PagarReceber where Fornecedor = :pRepresentante and Fiscal = :pNota and Data_Documento = :pData');
                      parambyname('pRepresentante').AsInteger := NotasRepresentante.AsInteger;
                      parambyname('pNota').AsString           := NotasNumero.AsString;
                      parambyname('pData').value              := NotasData_Emissao.value;
                      execute;
                 end;

                 if cRecriarPedido.Checked then begin
                    // Recria o pedido da nota fiscal cancelada.
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

                 // Ajusta o código do pedido nos seriais dos produtos caso haja.
                 if cRecriarPedido.Checked = true then begin
                    ProdutosSeriais.SQL.Clear;
                    if PedidosSaida_Entrada.Value = 0 then begin
                       ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Nota_Entrada = NULL, Disponivel = 0 WHERE(Nota_Entrada = :pNota)');
                    end else begin
                       ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Nota_Saida   = NULL, Disponivel = 1 WHERE(Nota_Saida   = :pNota)');
                    end;
                    ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                    ProdutosSeriais.ParamByName('pNota').AsInteger   := NotasNumero.AsInteger;
                    ProdutosSeriais.Execute;
                 end else begin
                    ProdutosSeriais.SQL.Clear;
                    if PedidosSaida_Entrada.Value = 0 then begin
                       ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Nota_Entrada = NULL, Disponivel = 0 WHERE(Nota_Entrada = :pNota)');
                    end else begin
                       ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Nota_Saida   = NULL, Disponivel = 1 WHERE(Nota_Saida   = :pNota)');
                    end;
                    ProdutosSeriais.ParamByName('pNota').AsInteger   := NotasNumero.AsInteger;
                    ProdutosSeriais.Execute;
                 end;
                 ProdutosSeriais.SQL.Clear;
                 ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Pedido = :pPedido)');
                 ProdutosSeriais.ParamByName('pPedido').AsInteger := NotasPedido.AsInteger;

                 // Retorna os itens da nota cancelada para o estoque disponivel, se não for criado outro pedido.
                 // Em caso de "IMPORTAÇÃO" pega os itens da "ADIÇÃO".
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE DI IN(SELECT DI FROM NotasItens WHERE Nota = :pNota)');                 
                 Adicoes.ParamByName('pNota').AsInteger := dmFiscal.NotasNumero.Value;
                 Adicoes.Open;

                 // Em caso de "COMPRA INTERNA" pega os itens dos "ITENS DA NOTA FISCAL DE TERCEIROS".
                 NotasTerceirosItens.SQL.Clear;
                 NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso) AND Processo <> '''' ');
                 NotasTerceirosItens.ParamByName('pProcesso').AsString := Trim(NotasProcesso.Value);
                 NotasTerceirosItens.Open;

                 NotasItens.SQL.Clear;
                 NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
                 NotasItens.ParamByName('pNota').AsInteger := dmFiscal.NotasNumero.Value;
                 NotasItens.ParamByName('pData').AsDate    := dmFiscal.NotasData_Emissao.Value;
                 NotasItens.Open;
                 NotasItens.First;

                 Produtos.SQL.Clear;
                 Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData) ORDER BY Codigo');
                 Produtos.ParamByName('pNota').AsInteger := dmFiscal.NotasNumero.Value;
                 Produtos.ParamByName('pData').AsDate    := dmFiscal.NotasData_Emissao.Value;
                 Produtos.Open;

                 TipoNota.SQL.Clear;
                 TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE (Codigo = :pCodigo)');
                 TipoNota.ParamByName('pCodigo').AsInteger := NotasTipo_Nota.Value;
                 TipoNota.Open;

                 // Estoque.
                 mItens := '';
                 If TipoNotaMovimenta_Estoque.Value = True then begin
                    // Movimenta os itens da "ADIÇÃO" em casos de processos de IMPORTAÇÃO.
                    While not NotasItens.Eof do begin
                          // Pegando relação de itens da nota para reprocessar a ficha de estoque/inventario dos itens.
                          if mItens = '' then
                             mItens := NotasItensCodigo_Mercadoria.AsString
                          else
                             mItens := mItens + ','+NotasItensCodigo_Mercadoria.AsString;

                          Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                          If Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                             If Adicoes.Locate('DI;Codigo_Mercadoria;Adicao;Sequencia_SISCOMEX', VarArrayOf([NotasItensDI.Value,NotasItensCodigo_Mercadoria.Value,NotasItensAdicao.Value, NotasItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] ) then begin
                                Adicoes.Edit;
                                        if NotasSaida_Entrada.Value = 0 then begin
                                           if ProdutosTipo_Conversao.Value <> 'M' then
                                              AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                                           else
                                              AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.AsFloat + (NotasItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                                        end else begin
                                           if ProdutosTipo_Conversao.Value <> 'M' then
                                              AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                           else
                                              AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (NotasItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                        end;
                                        if AdicoesLancado_Entrada.Value < 0 then
                                           AdicoesLancado_Entrada.Value := 0;
                                        if AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then
                                           AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                                        if AdicoesLancado_Saida.Value < 0 then
                                           AdicoesLancado_Saida.Value := 0;
                                        if AdicoesLancado_Saida.Value > AdicoesQuantidade.Value then
                                           AdicoesLancado_Saida.Value := AdicoesQuantidade.Value;
                                Adicoes.Post;
                             End;
                          end else begin
                             // Movimenta os itens da "NOTA FISCAL DE TERCEIROS" em casos de processos de COMPRA INTERNA.
                             If NotasTerceirosItens.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                                NotasTerceirosItens.Edit;
                                                    NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                NotasTerceirosItens.Post;
                             End;
                          End;
                          // Atualizando o estoque no cadastro do produto.
                          Produtos.Edit;
                                   If NotasSaida_Entrada.Value = 0 then begin
                                      ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);

                                      // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro para as notas de Entrada.
                                      If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                                         ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                                      End;
                                   end else begin
                                      ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                   End;
                          Produtos.Post;
                          NotasItens.Next;
                    End;

                    // Remove os itens dos pedidos com produtos referenciados na nota fiscal de entrada cancelada.
                    PedidosItens.SQL.Clear;
                    PedidosItens.SQL.Add('SELECT *');
                    PedidosItens.SQL.Add('FROM   PedidosItens');
                    PedidosItens.SQL.Add('WHERE  Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
                    PedidosItens.SQL.Add('  AND  Saida_Entrada =  1');
                    PedidosItens.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                    PedidosItens.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
                    //PedidosItens.SQL.SaveToFile('c:\temp\Cancelamento_NFE_Saida.sql');
                    PedidosItens.Open;

                    while not PedidosItens.Eof do begin
                          // Movimenta os itens da "ADIÇÃO" em casos de processos de IMPORTAÇÃO.
                          Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                          if Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                             if Adicoes.Locate('DI;Codigo_Mercadoria;Adicao;Sequencia_SISCOMEX', VarArrayOf([PedidosItensDI.Value,PedidosItensCodigo_Mercadoria.Value,PedidosItensAdicao.Value, PedidosItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] ) then begin
                                Adicoes.Edit;
                                        if PedidosSaida_Entrada.Value = 0 then begin
                                           if ProdutosTipo_Conversao.Value <> 'M' then
                                              AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                                           else
                                              AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.AsFloat + (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                                        end else begin
                                           if ProdutosTipo_Conversao.Value <> 'M' then
                                              AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                           else
                                              AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                        end;
                                        if AdicoesLancado_Entrada.Value < 0 then
                                           AdicoesLancado_Entrada.Value := 0;
                                        if AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then
                                           AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                                        if AdicoesLancado_Saida.Value < 0 then
                                           AdicoesLancado_Saida.Value := 0;
                                        if AdicoesLancado_Saida.Value > AdicoesQuantidade.Value then
                                           AdicoesLancado_Saida.Value := AdicoesQuantidade.Value;
                                Adicoes.Post;
                             end;
                          end else begin
                             // Movimenta os itens da "NOTA FISCAL DE TERCEIROS" em casos de processos de COMPRA INTERNA.
                             if NotasTerceirosItens.Locate('Codigo_Mercadoria', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                                NotasTerceirosItens.Edit;
                                                    NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                NotasTerceirosItens.Post;
                             end;
                          end;
                          
                          // Atualizando o estoque no cadastro do produto.
                          Produtos.Edit;
                                   If NotasSaida_Entrada.Value = 0 then begin
                                      ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);

                                      // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro para as notas de Entrada.
                                      If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                                         ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                                      End;
                                   end else begin
                                      ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                   End;
                          Produtos.Post;
                          PedidosItens.Next;
                    end;

                    // Apagando as Duplicatas do pedido de saída.
                    PedidosFatura.SQL.Clear;
                    PedidosFatura.SQL.Add('DELETE FROM PedidosFatura');
                    PedidosFatura.SQL.Add('WHERE Pedido IN(SELECT Pedido FROM PedidosItens WHERE Saida_Entrada = 1 AND Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData))');
                    PedidosFatura.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                    PedidosFatura.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
                    PedidosFatura.Execute;

                    PedidosDuplicata.SQL.Clear;
                    PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata');
                    PedidosDuplicata.SQL.Add('WHERE Pedido IN(SELECT Pedido FROM PedidosItens WHERE Saida_Entrada = 1 AND Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData))');
                    PedidosDuplicata.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                    PedidosDuplicata.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
                    PedidosDuplicata.Execute;

                    PedidosFatura.SQL.Clear;
                    PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE Pedido = :pPedido');
                    PedidosFatura.ParamByName('pPedido').AsInteger := NotasPedido.AsInteger;
                    PedidosFatura.Open;

                    PedidosDuplicata.SQL.Clear;
                    PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
                    PedidosDuplicata.ParamByName('pPedido').AsInteger := NotasPedido.Value;
                    PedidosDuplicata.Execute;

                    // Deleta os itens dos pedidos de saída que foram feitos antes do cancelamento da nota fiscal de entrada.
                    if Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                       tSaidas.SQL.Clear;
                       tSaidas.SQL.Add('DELETE FROM PedidosItens WHERE Saida_Entrada = 1 AND Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota AND Data = :pData)');
                       tSaidas.ParamByName('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                       tSaidas.ParamByName('pData').AsDate    := Notas.FieldByName('Data_Emissao').Value;
                       //tSaidas.SQL.SaveToFile('c:\temp\Cancelamento_NFE_Saida.sql');
                       tSaidas.Execute;
                    end;
                 end;

                 // Deleta a nota fiscal da ficha de estoque/ Inventario.
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

                 If NotasSaida_Entrada.AsInteger = 1 then begin
                    Clientes.Locate('Codigo', NotasCliente_Codigo.AsInteger, [loCaseInsensitive]);

                    // Atualiza o limite de crédito no cadastro do cliente.
                    If TipoNotaGerar_Financeiro.AsBoolean = true then begin
                       Clientes.Edit;
                                ClientesLimite_Utilizado.Value := ClientesLimite_Utilizado.Value - NotasValor_TotalNota.Value;
                       Clientes.Post;
                    End;

                    // Muda a situação do pedido do representante se for o caso.
                    PedidosRepresentantes.SQL.Clear;
                    If cRecriarPedido.Checked then begin
                       PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Situacao = ''EM FATURAMENTO'', Local = 4 WHERE Pedido = :pPedido');
                    end else begin
                       PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Situacao = ''AGUARDANDO'', Local = 3 WHERE Pedido = :pPedido');
                    End;
                    PedidosRepresentantes.ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                    PedidosRepresentantes.Execute;
                    PedidosRepresentantes.SQL.Clear;
                    PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
                    
                    // Envio do email para o destinatário.
                    If (ClientesEnviar_Email.AsBoolean = false) and (Trim(ClientesEmail.AsString) <> '') then begin
                       cMensagens.Lines.Add('Enviando XML de cancelamento de Fiscal eletrônica para o cliente.'+Dados.ClientesEmail.AsString);
                       EnviarEmail('CLIENTE');
                    End;
                 End;

                 // Cancela o lançamento financeiro da GNRE.
                 GNRE.SQL.Clear;
                 GNRE.SQL.Add('SELECT * FROM GNRE WHERE Nota = :pNota AND Data_Nota = :pData');
                 GNRE.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
                 GNRE.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
                 GNRE.Open;

                 if GNRE.RecordCount > 0 then begin
                    tBaixas.SQL.Clear;
                    tBaixas.SQL.Add('SELECT * FROM '+mBanco+'.dbo.PagarReceberBaixas WHERE Numero = :pNumero');
                    tBaixas.ParamByName('pNumero').AsInteger := GNREFinanceiro_Numero.AsInteger;
                    tBaixas.Open;
                    if tBaixas.RecordCount = 0 then begin
                       {
                       PagarReceber.SQL.Clear;
                       PagarReceber.SQL.Add('DELETE FROM '+mBanco+'.dbo.PagarReceber WHERE Numero = :pNumero' );
                       PagarReceber.ParamByName('pNumero').AsINteger := GNREFinanceiro_Numero.AsInteger;
                       PagarReceber.Execute;
                       PagarReceber.SQL.Clear;
                       PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = GETDATE())' );
                       }
                       with tTemp do begin
                            SQL.Clear;
                            SQL.Add('delete from '+mBanco+'.dbo.PagarReceber where Numero = :pNumero' );
                            ParamByName('pNumero').asinteger := GNREFinanceiro_Numero.AsInteger;
                            Execute;
                       end;
                    end else begin
                       tBaixas.SQL.Clear;
                       tBaixas.SQL.Add('UPDATE '+mBanco+'.dbo.PagarReceber SET Recuperavel = 1 WHERE Numero = :pNumero');
                       tBaixas.ParamByName('pNumero').AsInteger := GNREFinanceiro_Numero.AsInteger;
                       tBaixas.Execute;
                    end;
                 end;

                 // Exclui as notas da tabela de seriais/chassis.
                 tItens.SQL.Clear;
                 tItens.SQL.Add('DELETE FROM ProdutosSeriaisNotas WHERE Nota = :pNota AND Data = :pData');
                 tItens.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
                 tItens.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
                 tItens.Execute;

                 // Remove a nota cancelada da tabela "NotasItensNavios".
                 with tTemp do begin
                      sql.clear;
                      sql.add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Emissor = ''P'' ');
                      ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
                      ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
                      execute;
                 end;

                 // Reprocessa os saldos da ficha de estoque.
                 Janela_Processamento := TJanela_Processamento.Create(nil);
                 Janela_Processamento.Show;
                 AtualizaInv(mItens);
                 AtualizaEst(mItens);
                 Janela_Processamento.close;

                 // Envio do E-Mail fixo configurado em "Configuração / Faturamento".
                 if Trim(ConfiguracaoEmail_NFE.AsString) <> '' then begin
                    try
                        EnviarEmail('FIXO');
                    except
                        cMensagens.Lines.Add('       Houve falha no envio do email fixo, contacte o suporte técnico da Cybersoft.');
                    end;
                 end;

                 MessageDlg('Nota Fiscal cancelada com sucesso.', mtInformation, [mbOK], 0);
              End;
           End;
           bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
      End;
      bCancelar.Enabled := true;
      Screen.Cursor := crDefault;
end;

procedure TNFe_Cancelamento.cTipoClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With dmFiscal do begin
           Notas.SQL.Clear;
           If Trim(RemoveCaracter('/','',cData.Text)) = '' then
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC')
           else begin
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (Data_Emissao >= :pData) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
              Notas.ParamByName('pData').AsDate    := cData.Date;
           end;

           Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
           Notas.Open;

           bConsultar.Enabled := Notas.RecordCount > 0;
           bCancelar.Enabled  := Notas.RecordCount > 0;
           bProtocolo.Enabled := Notas.RecordCount > 0;
      End;
      bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
      Screen.Cursor := crDefault;
end;

procedure TNFe_Cancelamento.GradeCellClick(Column: TColumn);
begin
       bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
       If dmFiscal.Notas.RecordCount = 0 then begin
          bCancelar.Enabled := False;
       End;
end;

procedure TNFe_Cancelamento.CancelaNFE;
var
    mXML: TXMLDocument;
    Util: NFe_Util_2G_Interface;
begin
      Util := CoUtil.Create;
      mXML := TXMLDocument.Create(Self);

      NomeCertificado := Trim(Dados.EmpresasCertificado_Digital.AsString);
      SiglaWS         := Trim(Dados.EmpresasUF_WebService.AsString);
      TipoAmbiente    := Menu_Principal.Amb_Producao;
      nProtocolo      := Trim(dmFiscal.NotasNFe_Protocolo.AsString);
      MsgDados        := '';
      MsgRetWS        := '';
      MsgResultado    := '';
      ChaveNFe        := Trim(dmFiscal.NotasNFe_cNF.AsString);
      nProtocoloCanc  := '';
      dProtocoloCanc  := '';
      Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);
      RetWS           := '';
      Licenca         := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      mMotivo         := RemoveCaracterXML(mMotivo);
      mCancela        := False;
      Versao          := '4.00';

      ProcCancNFe := Util.CancelaNFEvento(siglaWS, tipoAmbiente, nomeCertificado, Versao, MsgDados, MsgRetWS, cStat, MsgResultado, ChaveNFe, nProtocolo, mMotivo, '', nProtocoloCanc, dProtocoloCanc, proxy, usuario, senha, Licenca);

      If not DirectoryExists('c:\temp') then ForceDirectories('c:\temp');
      mXML.XML.Text := ProcCancNFe;
      mXML.XML.SaveToFile('c:\temp\ProcCancNFE.xml');

      cMensagens.Clear;

      If (cStat = 101) or (cStat = 151) or (cStat = 135) or (cStat = 155) or (cStat = 573) then begin
         // Salva o XML da nota fiscal cancelada.
         mCancela := True;
         mPasta   := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));

         If Dados.EmpresasMatriz_Filial.AsBoolean = true then
            mPasta := mPasta + '_Matriz'
         else
            mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

         if Dados.ConfiguracaoSeparar_NFE.AsBoolean then begin
            if dmFiscal.NotasSaida_Entrada.AsInteger = 0 then
               mPasta := mPasta + '\ENTRADAS'
            else
               mPasta := mPasta + '\SAIDAS'
         end;
         if Dados.ConfiguracaoSeparar_NFEMes.AsBoolean then begin
            mPasta := mPasta + '\Ano_'+InttoStr(YearOf(dmFiscal.NotasData_Emissao.AsDateTime))+'\'+Trim(NomeMes(MonthOf(dmFiscal.NotasData_Emissao.AsDateTime)));
         end;

         If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
         mPasta := mPasta + '\NFe_' + dmFiscal.NotasNFE_cNF.Value + '_CANCELADA.xml';

         mXML.XML.Text := ProcCancNFe;
         mXML.XML.SaveToFile(mPasta);

         If cStat = 101 then cMensagens.Lines.Add('101 - Cancelamento de NF-e homologado');
         If cStat = 151 then cMensagens.Lines.Add('151 - Cancelamento de NF-e homologado fora de prazo (dependendo da UF, pode haver multa)');
         If cStat = 135 then cMensagens.Lines.Add('135 - Evento registrado e vinculado a NF-e (cancelamento de NF-e homologado)');
         If cStat = 155 then cMensagens.Lines.Add('155 - Evento registrado e vinculado a NF-e fora de prazo (dependendo da UF, pode haver multa)');
         If cStat = 573 then cMensagens.Lines.Add('573 - Duplicidade de Evento (Nota ja Cancelada na SEFAZ)');

         cMensagens.Lines.Add('Número do Protocolo : ' + nProtocoloCanc);
         cMensagens.Lines.Add('Data e Hora         : ' + dProtocoloCanc);

         // Registra o envio no log do usuario.
         GerarLog(Menu_Principal.mUsuarioCodigo, 'NotasFiscais', 'ALTERAÇÃO', 'Cancelada', 'CANCELAMENTO DE NF-e. '+ChaveNFe, 'Homologada', 'Cancelado', '');
      end else begin
        If cStat < 1000 then
           cMensagens.Lines.Add('Cancelamento rejeitado pelo WS...')
        else
           cMensagens.Lines.Add('Falha na chamada do WS...');

         // Registra o envio no log do usuario.
         GerarLog(Menu_Principal.mUsuarioCodigo, 'NotasFiscais', 'ALTERAÇÃO', 'Cancelada', 'CANCELAMENTO DE NF-e (FALHA '+inttostr(cStat)+').'+ChaveNFe, 'Não Homologada', '', '');
      End;
      cMensagens.Lines.Add(MsgResultado);

      Util := nil;
      mXML.Free;
end;

procedure TNFe_Cancelamento.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFe_Cancelamento.RetornaPedido;
begin
      With Dados, dmFiscal do Begin
           ProcessosDOC.Locate('Processo' , NotasProcesso.Value, [loCaseInsensitive]);

           // Copiando os dados da nota fiscal para o pedido.
           tPedido.Open;
           Pedidos.Open;
           Pedidos.Append;
                   PedidosNumero.Value                     := tPedidoPedido.AsInteger + 1;
                   PedidosData_Emissao.Value               := Date;
                   PedidosLote.Value                       := NotasLote.Value;
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
                   PedidosTransporte_Lacre.Value           := NotasTransporte_Lacre.Value;
                   PedidosReboque_Placa.Value              := NotasReboque_Placa.Value;
                   PedidosReboque_UF.Value                 := NotasReboque_UF.Value;
                   PedidosReboque_ANTT.Value               := NotasReboque_ANTT.Value;
                   PedidosReboque_Lacre.Value              := NotasReboque_Lacre.Value;
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
                   PedidosValor_BCPIS.Value                := NotasValor_BCPIS.Value;
                   PedidosTotal_Impostos.Value             := NotasTotal_Impostos.Value;
                   PedidosComplementar.Value               := NotasComplementar.Value;
                   PedidosAliquota_IRPJ.Value              := NotasAliquota_IRPJ.Value;
                   PedidosValor_IRPJ.Value                 := NotasValor_IRPJ.Value;
                   PedidosAliquota_CSLL.Value              := NotasAliquota_CSLL.Value;
                   PedidosValor_CSLL.Value                 := NotasValor_CSLL.Value;
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

                   If NotasNota_Referencia.Value <> 0 then
                      PedidosData_Referencia.Value := NotasData_Referencia.Value;

                   PedidosValor_BCICMSDest.Value       := NotasValor_BCICMSDest.Value;
                   PedidosValor_ICMSDest.Value         := NotasValor_ICMSDest.Value;
                   PedidosValor_BCDIFAL.Value          := NotasValor_BCDIFAL.Value;
                   PedidosDIFAL_Valor.Value            := NotasDIFAL_Valor.Value;
                   PedidosDIFAL_ValorOrig.Value        := NotasDIFAL_ValorOrig.Value;
                   PedidosDIFAL_ValorDest.Value        := NotasDIFAL_ValorDest.Value;
                   PedidosFCP_ValorDest.Value          := NotasFCP_ValorDest.Value;
                   PedidosFCP_ICMSDest.Value           := NotasFCP_ICMSDest.Value;
                   PedidosFCP_ICMSORIG.Value           := NotasFCP_ICMSORIG.Value;
                   PedidosTipo_Pagamento.Value         := NotasTipo_Pagamento.Value;
                   PedidosForma_Pagamento.Value        := NotasForma_Pagamento.Value;
                   PedidosValor_BCFCP.Value            := NotasValor_BCFCP.Value;
                   PedidosAliquota_FCP.Value           := NotasAliquota_FCP.Value;
                   PedidosValor_FCP.Value              := NotasValor_FCP.Value;
                   PedidosValor_BCFCPST.Value          := NotasValor_BCFCPST.Value;
                   PedidosAliquota_FCPST.Value         := NotasAliquota_FCPST.Value;
                   PedidosValor_FCPST.Value            := NotasValor_FCPST.Value;
                   PedidosValor_ICMSDesonerado.Value   := NotasValor_ICMSDesonerado.Value;
                   PedidosEntrega_Retirada.Value       := NotasEntrega_Retirada.Value;
                   PedidosTipo_Processo.value          := NotasTipo_Processo.value;
                   PedidosValor_AFRMM.Value            := NotasValor_AFRMM.Value;
                   PedidosDescricao_Forma.value        := NotasDescricao_Forma.asstring;
                   PedidosIntermediador.value          := NotasIntermediador.AsInteger;
                   PedidosValor_BCICMSMono.value       := NotasValor_BCICMSMono.value;
                   PedidosValor_BCICMSMonoRet.value    := NotasValor_BCICMSMonoRet.value;
                   PedidosValor_ICMSMono.value         := NotasValor_ICMSMono.value;
                   PedidosValor_ICMSMonoRet.value      := NotasValor_ICMSMonoRet.value;
                   PedidosArmazem.asinteger            := NotasArmazem.Value;
                   PedidosArmazem.value                := NotasArmazem.asinteger;
                   PedidosArmazem_Nome.value           := NotasArmazem_Nome.asstring;
                   PedidosArmazem_CNPJ.value           := NotasArmazem_CNPJ.asstring;
                   PedidosArmazem_IE.value             := NotasArmazem_IE.asstring;
                   PedidosArmazem_Endereco.Value       := NotasArmazem_Endereco.AsString;;
                   PedidosRemessa.Value                := NotasRemessa.Value;
                   PedidosValor_PISST.Value            := NotasValor_PISST.Value;
                   PedidosValor_COFINSST.Value         := NotasValor_COFINSST.Value;
                   PedidosAliquota_ICMSPresumido.Value := NotasValor_BCICMSPresumido.Value;
                   PedidosValor_BCICMSPresumido.Value  := NotasValor_BCICMSPresumido.Value;
                   PedidosValor_ICMSPresumido.Value    := NotasValor_ICMSPresumido.Value;
                   PedidosIncentivo_Codigo.Value       := NotasIncentivo_Codigo.Value;
           Pedidos.Post;
           tPedido.Close;

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
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE Nota = :pNota) ORDER BY Codigo');
           Produtos.ParamByName('pNota').AsInteger := NotasNumero.Value;
           Produtos.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE (Codigo = :pCodigo)');
           TipoNota.ParamByName('pCodigo').AsInteger := NotasTipo_Nota.Value;
           TipoNota.Open;

           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.lProcesso.Caption  := 'Recriando os itens do pedido...Aguarde';
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := NotasItens.Recordcount;
           Janela_Processamento.Show;

           While not NotasItens.Eof do begin
                 PedidosItens.Append;
                              PedidosItensPedido.Value                 := PedidosNumero.Value;
                              PedidosItensItem.Value                   := NotasItensItem.Value;
                              PedidosItensSequencia_SISCOMEX.Value     := NotasItensSequencia_SISCOMEX.Value;
                              PedidosItensCodigo_Mercadoria.Value      := NotasItensCodigo_Mercadoria.Value;
                              PedidosItensCodigo_Fabricante.Value      := NotasItensCodigo_Fabricante.Value;
                              PedidosItensDescricao_Mercadoria.Value   := NotasItensDescricao_Mercadoria.Value;
                              PedidosItensNCM.Value                    := NotasItensNCM.Value;
                              PedidosItensEXTIPI.Value                 := NotasItensEXTIPI.Value;
                              PedidosItensUnidade_Medida.Value         := NotasItensUnidade_Medida.Value;
                              PedidosItensQuantidade.Value             := NotasItensQuantidade.Value;
                              PedidosItensQuantidade.Value             := NotasItensDisponivel.Value;
                              PedidosItensValor_Unitario.Value         := NotasItensValor_Unitario.Value;
                              PedidosItensValor_Total.Value            := NotasItensValor_Total.Value;
                              PedidosItensAliquota_IPI.Value           := NotasItensAliquota_IPI.Value;
                              PedidosItensValor_IPI.Value              := NotasItensValor_IPI.Value;
                              PedidosItensTotal_IPI.Value              := NotasItensTotal_IPI.Value;
                              PedidosItensCodigoTrib_TabA.Value        := NotasItensCodigoTrib_TabA.Value;
                              PedidosItensCodigoTrib_TabB.Value        := NotasItensCodigoTrib_TabB.Value;
                              PedidosItensCSTIPI.Value                 := NotasItensCSTIPI.Value;
                              PedidosItensCSTPIS.Value                 := NotasItensCSTPIS.Value;
                              PedidosItensCSTCOFINS.Value              := NotasItensCSTCOFINS.Value;
                              PedidosItensAdicao.Value                 := NotasItensAdicao.Value;
                              PedidosItensAliquota_II.Value            := NotasItensAliquota_II.Value;
                              PedidosItensValor_BCII.Value             := NotasItensValor_BCII.Value;
                              PedidosItensValor_II.Value               := NotasItensValor_II.Value;
                              PedidosItensValor_BCICMSOper.Value       := NotasItensValor_BCICMSOper.Value;
                              PedidosItensAliquota_ICMSOper.Value      := NotasItensAliquota_ICMSOper.Value;
                              PedidosItensValor_ICMSOper.Value         := NotasItensValor_ICMSOper.Value;
                              PedidosItensValor_BCICMSSub.Value        := NotasItensValor_BCICMSSub.Value;
                              PedidosItensAliquota_ICMSSub.Value       := NotasItensAliquota_ICMSSub.Value;
                              PedidosItensValor_ICMSSub.Value          := NotasItensValor_ICMSSub.Value;
                              PedidosItensAliquota_MVA.Value           := NotasItensAliquota_MVA.Value;
                              PedidosItensValor_MVA.Value              := NotasItensValor_MVA.Value;
                              PedidosItensAliquota_ICMSReducao.Value   := NotasItensAliquota_ICMSReducao.Value;
                              PedidosItensValor_ICMSReducao.Value      := NotasItensValor_ICMSReducao.Value;
                              PedidosItensValor_Seguro.Value           := NotasItensValor_Seguro.Value;
                              PedidosItensValor_Frete.Value            := NotasItensValor_Frete.Value;
                              PedidosItensValor_Despesa.Value          := NotasItensValor_Despesa.Value;
                              PedidosItensAliquota_PIS.Value           := NotasItensAliquota_PIS.Value;
                              PedidosItensValor_PIS.Value              := NotasItensValor_PIS.Value;
                              PedidosItensValor_PISST.Value            := NotasItensValor_PISST.Value;
                              PedidosItensAliquota_COFINS.Value        := NotasItensAliquota_COFINS.Value;
                              PedidosItensValor_COFINS.Value           := NotasItensValor_COFINS.Value;
                              PedidosItensValor_COFINSST.Value         := NotasItensValor_COFINSST.Value;
                              PedidosItensPeso_Liquido.Value           := NotasItensPeso_Liquido.Value;
                              PedidosItensPeso_Bruto.Value             := NotasItensPeso_Bruto.Value;
                              PedidosItensMovimenta_Inventario.Value   := NotasItensMovimenta_Inventario.Value;
                              PedidosItensMovimenta_Estoque.Value      := NotasItensMovimenta_Estoque.Value;
                              PedidosItensMovimenta_EstoqueRep.Value   := NotasItensMovimenta_EstoqueRep.Value;
                              PedidosItensModalidade_BCICMS.Value      := NotasItensModalidade_BCICMS.Value;
                              PedidosItensModalidade_BCICMSST.Value    := NotasItensModalidade_BCICMSST.Value;
                              PedidosItensValor_IsentasICMS.Value      := NotasItensValor_IsentasICMS.Value;
                              PedidosItensValor_OutrasICMS.Value       := NotasItensValor_OutrasICMS.Value;
                              PedidosItensValor_IsentasIPI.Value       := NotasItensValor_IsentasIPI.Value;
                              PedidosItensValor_OutrasIPI.Value        := NotasItensValor_OutrasIPI.Value;
                              PedidosItensLucro.Value                  := NotasItensLucro.Value;
                              PedidosItensLucro_Valor.Value            := NotasItensLucro_Valor.Value;
                              PedidosItensValor_BCIPI.Value            := NotasItensValor_BCIPI.Value;
                              PedidosItensRateio_ICMSProcesso.Value    := NotasItensRateio_ICMSProcesso.Value;
                              PedidosItensProcesso.Value               := NotasItensProcesso.Value;
                              PedidosItensDI.Value                     := NotasItensDI.Value;
                              PedidosItensSaida_Entrada.Value          := NotasItensSaida_Entrada.Value;
                              PedidosItensVeiculo.Value                := NotasItensVeiculo.Value;
                              PedidosItensSequencia.Value              := NotasItensItem.Value;
                              PedidosItensNota_Terceiros.Value         := NotasItensNota_Terceiros.Value;
                              PedidosItensAliquota_ICMSIntegral.Value  := NotasItensAliquota_ICMSIntegral.Value;
                              PedidosItensValor_Dumping.Value          := NotasItensValor_Dumping.Value;
                              PedidosItensApuracao_PISCOFINS.Value     := NotasItensApuracao_PISCOFINS.Value;
                              PedidosItensFinalidade_Mercadoria.Value  := TipoNotaFinalidade_Mercadoria.Value;
                              PedidosItensAliquota_PISRed.Value        := NotasItensAliquota_PISRed.Value;
                              PedidosItensAliquota_COFINSRed.Value     := NotasItensAliquota_COFINSRed.Value;
                              PedidosItensAliquota_ICMSIntegral.Value  := NotasItensAliquota_ICMSIntegral.Value;
                              PedidosItensValor_BCMVA.Value            := NotasItensValor_BCMVA.Value;
                              PedidosItensTotal_Item.Value             := NotasItensTotal_Item.Value;
                              PedidosItensRegistro_Adicao.Value        := NotasItensRegistro_Adicao.Value;
                              PedidosItensTipo_Nota.Value              := NotasItensTipo_Nota.Value;
                              PedidosItensValor_BCPIS.Value            := NotasItensValor_BCPIS.Value;
                              PedidosItensTotal_Impostos.Value         := NotasItensTotal_Impostos.Value;
                              PedidosItensICMSST_Anterior.Value        := NotasItensICMSST_Anterior.Value;
                              PedidosItensComissao.Value               := NotasItensComissao.Value;
                              PedidosItensComissao_Valor.Value         := NotasItensComissao_Valor.Value;
                              PedidosItensReducao_ICMSST.Value         := NotasItensReducao_ICMSST.Value;
                              PedidosItensValor_Inventario.Value       := NotasItensValor_Inventario.Value;
                              PedidosItensNota_Referencia.Value        := NotasItensNota_Referencia.Value;
                              PedidosItensData_Referencia.Value        := NotasItensData_Referencia.Value;
                              PedidosItensNumero_Referencia.Value      := NotasItensNumero_Referencia.Value;
                              PedidosItensCEST.Value                   := NotasItensCEST.Value;
                              PedidosItensValor_BCICMSDest.Value       := NotasItensValor_BCICMSDest.Value;
                              PedidosItensAliquota_ICMSDest.Value      := NotasItensAliquota_ICMSDest.Value;
                              PedidosItensValor_ICMSDest.Value         := NotasItensValor_ICMSDest.Value;
                              PedidosItensValor_BCDIFAL.Value          := NotasItensValor_BCDIFAL.Value;
                              PedidosItensDIFAL_Valor.Value            := NotasItensDIFAL_Valor.Value;
                              PedidosItensDIFAL_PercOrig.Value         := NotasItensDIFAL_PercOrig.Value;
                              PedidosItensDIFAL_ValorOrig.Value        := NotasItensDIFAL_ValorOrig.Value;
                              PedidosItensDIFAL_PercDest.Value         := NotasItensDIFAL_PercDest.Value;
                              PedidosItensDIFAL_ValorDest.Value        := NotasItensDIFAL_ValorDest.Value;
                              PedidosItensFCP_Aliquota.Value           := NotasItensFCP_Aliquota.Value;
                              PedidosItensFCP_ValorDest.Value          := NotasItensFCP_ValorDest.Value;
                              PedidosItensFCP_ICMSOrig.Value           := NotasItensFCP_ICMSOrig.Value;
                              PedidosItensFCP_ICMSDest.Value           := NotasItensFCP_ICMSDest.Value;
                              PedidosItensNatureza_Codigo.Value        := NotasItensNatureza_Codigo.Value;
                              PedidosItensValor_BCFCP.Value            := NotasItensValor_BCFCP.Value;
                              PedidosItensValor_FCP.Value              := NotasItensValor_FCP.Value;
                              PedidosItensValor_BCFCPST.Value          := NotasItensValor_BCFCPST.Value;
                              PedidosItensValor_FCPST.Value            := NotasItensValor_FCPST.Value;
                              PedidosItensValor_ICMSDesonerado.Value   := NotasItensValor_ICMSDesonerado.Value;
                              PedidosItensPO.Value                     := NotasItensPO.Value;
                              PedidosItensOrdem.Value                  := NotasItensOrdem.Value;
                              PedidosItensMedia_BCR.Value              := NotasItensMedia_BCR.Value;
                              PedidosItensValor_ICMSSubAnt.Value       := NotasItensValor_ICMSSubAnt.Value;
                              PedidosItensAliquota_ICMSSubAnt.Value    := NotasItensAliquota_ICMSSubAnt.Value;
                              PedidosItensValor_ICMSAnt.Value          := NotasItensValor_ICMSAnt.Value;
                              PedidosItensFator_Cambio.Value           := NotasItensFator_Cambio.Value;
                              PedidosItensValor_AFRMM.Value            := NotasItensValor_AFRMM.Value;
                              PedidosItensRateio_FreteTerrNac.Value    := NotasItensRateio_FreteTerrNac.Value;
                              PedidosItensPercentual_Beneficio.asfloat := NotasItensPercentual_Beneficio.value;
                              PedidosItensValor_BCICMSMono.value       := NotasItensValor_BCICMSMono.value;
                              PedidosItensValor_BCICMSMonoRet.value    := NotasItensValor_BCICMSMonoRet.value;
                              PedidosItensValor_ICMSMono.value         := NotasItensValor_ICMSMono.value;
                              PedidosItensValor_ICMSMonoRet.value      := NotasItensValor_ICMSMonoRet.value;
                              PedidosItensPercentual_ICMSMono.value    := NotasItensPercentual_ICMSMono.value;
                              PedidosItensPercentual_ICMSMonoRet.value := NotasItensPercentual_ICMSMonoRet.value;
                              PedidosItensNavio.value                  := NotasItensNavio.value;
                              PedidosItensBL.value                     := NotasItensBL.value;
                              PedidosItensValor_PISST.value            := NotasItensValor_PISST.value;
                              PedidosItensValor_COFINSST.value         := NotasItensValor_COFINSST.value;
                              PedidosItensValor_BCICMSPresumido.value  := NotasItensValor_BCICMSPresumido.value;
                              PedidosItensAliquota_ICMSPresumido.value := NotasItensAliquota_ICMSPresumido.value;
                              PedidosItensValor_ICMSPresumido.value    := NotasItensValor_ICMSPresumido.value;
                              PedidosItensCodigo_CredPres.Value        := NotasItensCodigo_CredPres.Value;
                              PedidosItensBeneficio_Fiscal.Value       := NotasItensBeneficio_Fiscal.Value;
                              PedidosItensValor_BCCBS.Value            := NotasItensValor_BCCBS.Value;
                              PedidosItensAliquota_CBS.Value           := NotasItensAliquota_CBS.Value;
                              PedidosItensValor_CBS.Value              := NotasItensValor_CBS.Value;
                              PedidosItensCSTCBS.Value                 := NotasItensCSTCBS.Value;
                              PedidosItensValor_BCIBS.Value            := NotasItensValor_BCIBS.Value;
                              PedidosItensAliquota_IBS.Value           := NotasItensAliquota_IBS.Value;
                              PedidosItensValor_IBS.Value              := NotasItensValor_IBS.Value;
                              PedidosItensCSTIBS.Value                 := NotasItensCSTIBS.Value;
                              PedidosItensValor_COFINSDiferenca.Value  := NotasItensValor_COFINSDiferenca.Value;
                 PedidosItens.Post;

                 // Posiciona o estoque com os itens.
                 If TipoNotaMovimenta_Estoque.Value = True then begin
                    // Movimenta os itens da "ADIÇÃO" em casos de processos de IMPORTAÇÃO.
                    Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

                    If Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                       If Adicoes.Locate('DI;Codigo_Mercadoria;Adicao;Sequencia_SISCOMEX', VarArrayOf([NotasItensDI.Value,NotasItensCodigo_Mercadoria.Value, NotasItensAdicao.Value, NotasItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] ) = True then begin
                          Adicoes.Edit;
                                  if NotasSaida_Entrada.Value = 0 then begin
                                     if ProdutosTipo_Conversao.Value <> 'M' then
                                        AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                                     else
                                        AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.AsFloat + (NotasItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                                  end else begin
                                     if ProdutosTipo_Conversao.Value <> 'M' then
                                        AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (NotasItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                     else
                                        AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (NotasItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                  end;
                                  if AdicoesLancado_Entrada.Value < 0 then
                                     AdicoesLancado_Entrada.Value := 0;
                                  if AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then
                                     AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                                  if AdicoesLancado_Saida.Value < 0 then
                                     AdicoesLancado_Saida.Value := 0;
                                  if AdicoesLancado_Saida.Value > AdicoesQuantidade.Value then
                                     AdicoesLancado_Saida.Value := AdicoesQuantidade.Value;
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

                 NotasItens.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
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

           // Salvando os detalhamentos dos itens da nota para o Pedido.
           PedidosItensDetalhe.SQL.Clear;
           PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE(Pedido = 0)');
           PedidosItensDetalhe.Open;

           NotasItensDetalhe.SQL.Clear;
           NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE(Nota = :pNota) AND (Data_Emissao = :pData)');
           NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
           NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
           NotasItensDetalhe.Open;

           NotasItensDetalhe.First;
           While not NotasItensDetalhe.Eof do Begin
                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM PedidosItensDetalhe');
                 tRegistro.Open;
                 PedidosItensDetalhe.Append;
                                     PedidosItensDetalheRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger+1;
                                     PedidosItensDetalheItem.Value              := NotasItensDetalhe.FieldByName('Item').Value;
                                     PedidosItensDetalhePedido.Value            := PedidosNumero.Value;
                                     PedidosItensDetalheProduto_Codigo.Value    := NotasItensDetalhe.FieldByName('Produto_Codigo').Value;
                                     PedidosItensDetalheDetalhe.Value           := NotasItensDetalhe.FieldByName('Detalhe').Value;
                                     PedidosItensDetalheDetalhe_Descricao.Value := NotasItensDetalhe.FieldByName('Detalhe_Descricao').Value;
                                     PedidosItensDetalheQuantidade.Value        := NotasItensDetalhe.FieldByName('Quantidade').Value;
                                     PedidosItensDetalheSaida_Entrada.Value     := NotasItensDetalhe.FieldByName('Saida_Entrada').Value;
                                     PedidosItensDetalheLote.Value              := NotasItensDetalhe.FieldByName('Lote').Value;
                 PedidosItensDetalhe.Post;
                 NotasItensDetalhe.Next;
           End;

           // Salvando os detalhamentos dos navios da nota para o Pedido.
           with PedidosItensNavios do begin
                sql.Clear;
                sql.Add('select * from PedidosItensNavios where Pedido = 0');
                open;
           end;
           with NotasItensNavios do begin 
                sql.Clear;
                sql.Add('select * from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Emissor = ''P'' ');
                ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
                ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
                Open;
                First;
                while not eof do Begin
                      with tRegistro do begin
                           sql.Clear;
                           sql.Add('select isnull(max(Registro), 0)+1 as Registro from PedidosItensNavios');
                           open;
                      end;
                      PedidosItensNavios.Append;
                                          PedidosItensNaviosRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
                                          PedidosItensNaviosPedido.Value            := PedidosNumero.Value;
                                          PedidosItensNaviosCodigo_Mercadoria.Value := FieldByName('Codigo_Mercadoria').Value;
                                          PedidosItensNaviosItem.Value              := FieldByName('Item').Value;
                                          PedidosItensNaviosNavio.Value             := FieldByName('Navio').Value;
                                          PedidosItensNaviosQuantidade.Value        := FieldByName('Quantidade').Value;
                                          PedidosItensNaviosSaida_Entrada.Value     := FieldByName('Saida_Entrada').Value;
                                          PedidosItensNaviosDI.Value                := FieldByName('DI').Value;
                      PedidosItensNavios.Post;
                      Next;
                end;
           end;

           // Retornando as notas referenciadas para a tabela "PedidosItensReferencia".
           tTemp.SQL.Clear;
           tTemp.SQL.Add('INSERT INTO PedidosItensReferencia');
           tTemp.SQL.Add('            SELECT Pedido');
           tTemp.SQL.Add('            ,Data_Pedido');
           tTemp.SQL.Add('            ,Chave');
           tTemp.SQL.Add('            ,Nota');
           tTemp.SQL.Add('            ,Data_Nota');
           tTemp.SQL.Add('            ,Chave_Referencia');
           tTemp.SQL.Add('            ,Nota_Referencia');
           tTemp.SQL.Add('            ,Data_Referencia');
           tTemp.SQL.Add('            ,Codigo_Mercadoria');
           tTemp.SQL.Add('            ,Item');
           tTemp.SQL.Add('            ,Lote');
           tTemp.SQL.Add('FROM  NotasItensReferencia');
           tTemp.SQL.Add('WHERE Nota      = :pNota');
           tTemp.SQL.Add('AND   Data_Nota = :pData');
           tTemp.ParamByName('pNota').AsInteger := NotasNumero.Value;
           tTemp.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
           tTemp.Execute;

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

              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidosRateio');
              tRegistro.Open;

              PedidosRateio.Append;
                            PedidosRateioRegistro.Value                     := tRegistro.FieldByName('Registro').AsInteger;
                            PedidosRateioPedido.Value                       := PedidosNumero.Value;
                            PedidosRateio.FieldByName('FOB_ME').Value       := NotasRateioFOB_ME.Value;
                            PedidosRateio.FieldByName('FOB_Real').Value     := NotasRateioFOB_Real.Value;
                            PedidosRateio.FieldByName('II').Value           := NotasRateioII.Value;
                            PedidosRateio.FieldByName('Dumping').Value      := NotasRateioDumping.Value;
                            PedidosRateio.FieldByName('Frete_Real').Value   := NotasRateioFrete_Real.Value;
                            PedidosRateio.FieldByName('Frete_ME').Value     := NotasRateioFrete_ME.Value;
                            PedidosRateio.FieldByName('Seguro_Real').Value  := NotasRateioSeguro_Real.Value;
                            PedidosRateio.FieldByName('Seguro_ME').Value    := NotasRateioSeguro_ME.Value;
              PedidosRateio.Post;
           end;
      End;
      Janela_Processamento.close;
end;

procedure TNFe_Cancelamento.bConsultarClick(Sender: TObject);
var
    Util          : NFe_Util_2G_Interface;
    i             : integer;
    mXML          : TXMLDocument;
    mStat         : WideString;
    mMotivo       : WideString;
    mProtocolo    : WideString;
    mProtocoloData: WideString;
    NodeRec       : IXMLNode;
    NodeInf       : IXMLNode;
begin
      mXML := TXMLDocument.Create(Self);
      cMensagens.Clear;
      
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

           Screen.Cursor := crHourGlass;
           
           Application.ProcessMessages;

           i := Util.ConsultaNF2G(SiglaWS, TipoAmbiente, NomeCertificado, EmpresasNFEletronica_Layout.AsString, MsgDados, MsgRetWS, MsgResultado, Trim(NotasNFe_cNF.AsString), Proxy, Usuario, Senha);

           mXML.XML.Text  := MsgRetWS;
           mXML.Active    := True;

           If i > 101 then begin
              If (i <> 301) and (i <> 302) then begin
                 cMensagens.Lines.Add('Falha na chamada do WS...');
                 cMensagens.Lines.Add(MsgResultado);
              end else begin
                 Notas.Edit;
                       NotasNFe_Denegada.Value := true;
                 Notas.Post;
              End;
           end else begin
              // Nota Fiscal Autorizada/Denegada
              if (i = 100) or (i = 110) then begin
                 NodeRec        := mXML.DocumentElement.ChildNodes.FindNode('protNFe');
                 NodeInf        := NodeRec.ChildNodes.FindNode('infProt');
                 mStat          := NodeInf.ChildNodes['cStat'].text;
                 mMotivo        := NodeInf.ChildNodes['xMotivo'].text;
                 mProtocolo     := NodeInf.ChildNodes['nProt'].text;
                 mProtocoloData := Copy(NodeInf.ChildNodes['dhRecbto'].text, 9, 2)+'/'+Copy(NodeInf.ChildNodes['dhRecbto'].text, 6, 2)+'/'+Copy(NodeInf.ChildNodes['dhRecbto'].text, 1, 4);
              end;
              // Nota Fiscal Cancelada.
              if i = 101 then begin
                 NodeRec        := mXML.DocumentElement.ChildNodes.FindNode('retCancNFe');
                 NodeInf        := NodeRec.ChildNodes.FindNode('infCanc');
                 mStat          := NodeInf.ChildNodes['cStat'].text;
                 mMotivo        := NodeInf.ChildNodes['xMotivo'].text;
                 mProtocolo     := NodeInf.ChildNodes['nProt'].text;
                 mProtocoloData := Copy(NodeInf.ChildNodes['dhRecbto'].text, 9, 2)+'/'+Copy(NodeInf.ChildNodes['dhRecbto'].text, 6, 2)+'/'+Copy(NodeInf.ChildNodes['dhRecbto'].text, 1, 4);
              end;

              cMensagens.Lines.Add('Situação: '+MsgResultado + ' ['+PoeZero(9, NotasNumero.AsInteger)+']');
              cMensagens.Lines.Add('Protocolo de autorização nº: ['+mProtocolo +'] de ' + mProtocoloData);

              // Salva o numero do protocolo da nota caso não exista.
              If Trim(dmFiscal.NotasNFe_Protocolo.Value) = '' then begin
                 Notas.Edit;
                       NotasNFe_Protocolo.Value     := mProtocolo;
                       NotasNFe_DataProtocolo.Value := StrtoDate(mProtocoloData);
                 Notas.Post;
              End;
           End;
      End;

      Util := nil;
      mXML.Free;

      Screen.Cursor := crDefault;
end;

procedure TNFe_Cancelamento.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
    mTipo     : Integer;
begin
      mTipo     := cTipo.ItemIndex;
      mPesquisa := InputBox('Pesquisar','Nº da Nota:', mPesquisa);
      cData.Clear;
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais ORDER BY Numero DESC');
           Notas.Open;
           If Notas.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
              ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
              cTipo.ItemIndex := mTipo;
           end else begin
              cTipo.ItemIndex := NotasSaida_Entrada.AsInteger;
              Notas.Locate('Numero', mPesquisa, [loCaseInsensitive])
           End;
      End;
      Grade.SetFocus;
end;

procedure TNFe_Cancelamento.bProtocoloClick(Sender: TObject);
Var
    Util          : NFe_Util_2G_Interface;
    mNFeProtocolo : WideString;
    mSel          : Integer;
    mProtocolo    : WideString;
    MsgResultado  : WideString;
    RetCancNFe    : WideString;
begin
      xmlProtocolo         := TMemo.Create(NFe_Cancelamento);
      xmlProtocolo.Top     := 1000;
      xmlProtocolo.Visible := False;
      xmlProtocolo.Parent  := NFe_Cancelamento;
      cMensagens.Clear;

      With Dados, dmFiscal do begin
           Versao          := Trim(EmpresasNFEletronica_Layout.AsString);
           tpAmb           := Menu_Principal.Amb_Producao;
           SiglaWS         := Trim(Dados.EmpresasUF_WebService.AsString);
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;

           For mSel := 0 to Grade.SelectedRows.Count-1 do begin
               Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
               mNome := Trim(ConfiguracaoPasta_Nfe.AsString)+'\'+Trim(EmpresasRazao_Social.AsString);
               If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                  mNome := mNome + '_Matriz'
               else
                  mNome := mNome + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

               If not DirectoryExists(mNome) then ForceDirectories(mNome);

               mNome3 := Trim(ConfiguracaoPasta_Nfe.AsString)+'\'+Trim(EmpresasRazao_Social.AsString);
               If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                  mNome3 := mNome3 + '_Matriz'
               else
                  mNome3 := mNome3 + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
               mNome3 := mNome3 +'\Protocolos Recuperados';

               If not DirectoryExists(mNome3) then ForceDirectories(mNome3);
               mNome3 := mNome3 + '\NFe_'+Trim(NotasNFe_cNF.AsString)+'.xml';
               mNome  := mNome  + '\NFe_'+Trim(NotasNFe_cNF.AsString)+'.xml';
               If not FileExists(mNome) then mNome := RemoveCaracter('.xml', ' NFe '+Trim(NotasNumero.AsString)+'.xml', mNome);

               If FileExists(mNome) then begin
                  xmlProtocolo.Lines.Clear;
                  xmlProtocolo.Lines.LoadFromFile(mNome);
                  mNFeAssinada    := xmlProtocolo.Lines.Text;
                  mNFeAssinada    := '';
                  Util            := CoUtil.Create;
                  mProtocolo      := '';
                  mResultado      := 0;
                  MsgResultado    := '';
                  Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
                  Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
                  Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

                  mNFeProtocolo := Util.CriaProcNFe2G(SiglaWS, mNFeAssinada, mProtocolo, RetCancNFe, mResultado, NomeCertificado, MsgResultado, Proxy, Usuario, Senha);

                  xmlProtocolo.Lines.Clear;
                  xmlProtocolo.Lines.Add(AnsiToUtf8(mNFeProtocolo));
                  xmlProtocolo.Lines.SaveToFile(mNome3);
                  cMensagens.Lines.Add( 'Nota Fiscal : '+NotasNumero.AsString);
                  cMensagens.Lines.Add( InttoStr(mResultado)+': '+MsgResultado);
                  Util := nil;
                  ShowMessage('Arquivos XML com o protocolo gerados na pasta '+mNome3);
               end else begin
                  ShowMessage('Atenção!'+#13+#13+'Não foi encontrado nenhum arquivo XML da nota fiscal selecionada.'+#13+#13+'É necessário que exista o arquivo original na pasta onde o sistema salva as NF-e.');
               End;
               Notas.Next;
           End;
      End;
      bFiltrar.Click;
end;

procedure TNFe_Cancelamento.bRecriarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente recriar o pedido da nota fiscal selecionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         RetornaPedido;
         ShowMessage('Pedido de nota fiscal recriado!');
      End;
end;

procedure TNFe_Cancelamento.EnviarEmail(Tipo: String);
Var
    mMensagem: Widestring;
    mEnviar  : Boolean;
begin
      Screen.Cursor    := crAppStart;
      Menu_Principal.IdAntiFreeze1.Active := true;
      mEnviar          := true;
      cMensagens.Width := 885;
      
      Tipo             := UpperCase(Tipo);

      If (Dados.EmpresasEmail_Porta.AsInteger <= 0) then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
         mEnviar := false;
      End;
      If (Trim(Dados.EmpresasEmail_SMTP.AsString) = '') then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
         mEnviar := false;
      End;
      If (Trim(Dados.EmpresasEmail_ID.AsString) = '') then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
         mEnviar := false;
      End;
      If (Trim(Dados.EmpresasEmail_Senha.AsString) = '') then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
         mEnviar := false;
      End;

      If mEnviar = true then begin
         // Configuração do SMTP.
         SMTP.Host     := Dados.EmpresasEmail_SMTP.AsString;
         SMTP.Port     := Dados.EmpresasEmail_Porta.AsInteger;
         SMTP.UserName := Dados.EmpresasEmail_ID.AsString;
         SMTP.Password := Dados.EmpresasEmail_Senha.AsString;

         // SSLOptions method.
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then SSLSocket.SSLOptions.Method := sslvSSLv2;
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then SSLSocket.SSLOptions.Method := sslvSSLv23;
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then SSLSocket.SSLOptions.Method := sslvSSLv3;
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then SSLSocket.SSLOptions.Method := sslvTLSv1;
         if Dados.EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then SSLSocket.SSLOptions.Method := sslvTLSv1_1;
         if Dados.EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then SSLSocket.SSLOptions.Method := sslvTLSv1_2;

         // Requer Autenticação.
         If Dados.EmpresasEmail_Autenticacao.AsBoolean then
            SMTP.AuthType := satDefault
         else
            SMTP.AuthType := satNone;

         // Conexao Segura SSL
         If Dados.EmpresasEmail_SSL.AsBoolean then
            SMTP.IOHandler := SSLSocket
         else
            SMTP.IOHandler := nil;

         // montando a mensagem.
         EmailMSG.From.Address := Dados.EmpresasEmail.AsString;

         If Tipo = 'CLIENTE' then begin
             EmailMSG.Recipients.EMailAddresses := Dados.ClientesEmail.AsString;
             EmailMSG.ccList.EMailAddresses     := Dados.EmpresasEmail_Copia.AsString;
             If Trim(Dados.ClientesEmail_Copia.AsString) <> '' then
                EmailMSG.ccList.EMailAddresses := Trim(Dados.EmpresasEmail_Copia.AsString)+','+Trim(Dados.ClientesEmail_Copia.AsString);
         end else begin
             EmailMSG.Recipients.EMailAddresses := Dados.ConfiguracaoEmail_NFE.AsString;
         End;

         EmailMSG.Subject   := 'Protocolo de Cancelamento de NF-e.';
         mMensagem          := RemoveCaracter('<{Numero}>', dmFiscal.NotasNFe_cNF.AsString, Dados.EmpresasEmail_MsgCancelamento.AsString);
         EmailMSG.Body.Text := mMensagem;

         // Anexando o XML.
         TIdAttachmentFile.create(EMailMSG.MessageParts, mPasta);

         //enviar email.
         try
            SMTP.Connect;
            If Dados.EmpresasEmail_Autenticacao.AsBoolean then SMTP.Authenticate;
            SMTP.Send(EMailMSG);
            If Tipo = 'CLIENTE' then
               cMensagens.Lines.Add('XML de cancelamento de Nota Fiscal eletrônica enviada para : '+Dados.ClientesEmail.AsString);
            If Trim(Dados.ConfiguracaoEmail_NFE.AsString) <> '' then
               cMensagens.Lines.Add('XML de Cancelamento de Nota Fiscal eletrônica enviada para o E-Mail fixo :'+Dados.ConfiguracaoEmail_NFE.AsString);
         except on E:Exception do begin
               cMensagens.Lines.Add('     ERROR DE E-Mail: XML Não foi enviado...');
               cMensagens.Lines.Add('     Verifique as configurações do E-Mail no <Cadastro da Empresa>.');
               cMensagens.Lines.Add('     ' + E.Message);
            end;
         end;
      end;

      Menu_Principal.IdAntiFreeze1.Active := false;
      cMensagens.Width := 885;
      
      Screen.Cursor    := crDefault;
end;

procedure TNFe_Cancelamento.bDownloadClick(Sender: TObject);
var
   Util: OleVariant;
   _msgResultado: widestring;
   procNFe: String;
   mSaida: TextFile;
begin
      If not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      End;

      Screen.Cursor := CrHourGlass;

      SiglaWS       := 'AN';
      SiglaUF       := Trim(Dados.EmpresasEstado.AsString);
      TipoAmbiente  := Menu_Principal.Amb_Producao;
      versao        := '4.00';
      msgDados      := '';
      msgRetWS      := '';
      cStat         := 0;
      msgResultado  := '';
      chaveNFe      := '32180621958727000237550020000022891000022892';
      proxy         := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      usuario       := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      senha         := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);
      procNFe       := '';
      _msgResultado := '';
      VerAplic      := '';
      Util          := CoUtil.Create;
      
      ProcNFe := Util.ConsChNFe('AN',
                                Menu_Principal.Amb_Producao,
                                Trim(Dados.EmpresasCertificado_Digital.AsString),
                                Versao,
                                msgDados,
                                msgRetWS,
                                cStat,
                                msgResultado,
                                Trim(Dados.EmpresasCNPJ.AsString),
                                ChaveNfe,
                                verAplic,
                                NSUXML,
                                SchemaXML,
                                Proxy,
                                Usuario,
                                Senha,
                                Trim(Dados.EmpresasLicensa_NFe_Util.Value)
                                );

      cMensagens.Lines.Add(msgResultado);

      Screen.Cursor := CrDefault;

      If Trim(ProcNFe) <> '' then begin
         If not DirectoryExists(Dados.ConfiguracaoPasta_NFe.Value) then ForceDirectories(Dados.ConfiguracaoPasta_NFe.Value);
         AssignFile(mSaida, Dados.ConfiguracaoPasta_NFe.Value+'\NFe_'+ChaveNFe+'_Download.xml');
         Rewrite(mSaida);
         Write(mSaida, AnsiToUTF8(procNFe));
         CloseFile(mSaida);
         cMensagens.Lines.Add('XML salvo em '+Dados.ConfiguracaoPasta_NFe.Value+'\NFe_'+ChaveNFe+'_Download.xml');
      end else begin
         If cStat < 1000 then
             cMensagens.Lines.Add('Pedido de download de NF-e rejeitada pelo WS...'+#13+#13 +msgResultado)
         else
             cMensagens.Lines.Add('Falha na chamada do WS...'+#13+#13+msgResultado);
      End;
end;

procedure TNFe_Cancelamento.bFiltrarClick(Sender: TObject);
begin
       screen.cursor := crSQLWait;
       With dmFiscal do begin
            Notas.SQL.Clear;
            if not DataLimpa(cData.Text) then begin
               Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (Data_Emissao >= :pData) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
               Notas.ParamByName('pData').AsDate    := cData.Date;
            end else begin
               Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
            end;
            Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
            Notas.Open;
            bCancelar.Enabled := (not dmFiscal.NotasCancelada.Value) and (not dmFiscal.NotasDPEC.Value);
            If Notas.RecordCount = 0 then begin
               bCancelar.Enabled := False;
            End;
       End;
       Screen.Cursor := CrDefault;
end;

end.
