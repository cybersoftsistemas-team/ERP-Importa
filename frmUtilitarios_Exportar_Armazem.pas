unit frmUtilitarios_Exportar_Armazem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, Funcoes,
  IdFTP, RxLookup,  DBCtrls, IdFTPCommon, IdTCPConnection, IdTCPClient, Mask, Data.DB, IdBaseComponent, IdComponent, IdExplicitTLSClientServerBase, Vcl.ComCtrls, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, MemDS, DBAccess, MSAccess, MaskUtils, System.JSON, REST.Response.Adapter, REST.Authenticator.OAuth, system.UITypes, Vcl.WinXCtrls;

type
  TUtilitarios_Exportar_Armazem = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    cMsg: TMemo;
    tItens: TMSQuery;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    dstItens: TDataSource;
    RESTRequest3: TRESTRequest;
    RESTClient3: TRESTClient;
    tItensitem_deposit: TIntegerField;
    tItensden_item: TStringField;
    tItensqtd_item: TIntegerField;
    tItenscod_unid_med: TStringField;
    tItenscod_barras: TStringField;
    tItensaltura: TFloatField;
    tItenscomprimento: TFloatField;
    tItenslargura: TFloatField;
    tItenspeso_bruto: TFloatField;
    tItenspes_unit: TIntegerField;
    tItensqtd_caixa_lastro: TIntegerField;
    tItensqtd_caixa_altura: TIntegerField;
    tItenscod_cla_fisc: TStringField;
    tItensItem: TSmallintField;
    IdFTP1: TIdFTP;
    tItensCodigo_Fabricante: TStringField;
    tItensNota: TIntegerField;
    tItensSerie: TStringField;
    tItensData: TDateTimeField;
    tItensQuantidade: TFloatField;
    tItensValor_Unitario: TFloatField;
    tItensValor_Liquido: TCurrencyField;
    tItensValor_TotalNF: TCurrencyField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GradeNotas: TDBGrid;
    Panel2: TPanel;
    bEnviarPed: TButton;
    Button3: TButton;
    Button1: TButton;
    bConsulta: TButton;
    ProgressBar1: TProgressBar;
    TabSheet4: TTabSheet;
    RxDBGrid2: TRxDBGrid;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    Grade: TRxDBGrid;
    Panel3: TPanel;
    bSelecao: TButton;
    bEnviarSai: TButton;
    cTodos: TCheckBox;
    StaticText1: TStaticText;
    cArmazem: TRxDBLookupCombo;
    StaticText38: TStaticText;
    cUsuario: TDBEdit;
    StaticText39: TStaticText;
    cSenha: TDBEdit;
    StaticText40: TStaticText;
    cIP: TDBEdit;
    DBCheckBox23: TDBCheckBox;
    tItenssku: TStringField;
    tItensden_item_reduz: TStringField;
    tItensdes_sku: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSelecaoClick(Sender: TObject);
    procedure bEnviarSaiClick(Sender: TObject);
    procedure cArmazemChange(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure FiltraPedidos;
    procedure cTodosClick(Sender: TObject);
    procedure bEnviarPedClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bConsultaClick(Sender: TObject);
    procedure tItensden_itemGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    procedure Autentica;
    function  ConsultaProd(psku, pBarras:string): boolean;
    procedure FiltraItens;
    function CamposJson(st: String): String;
    { Private declarations }
  public
    { Public declarations }
    mURL,
    mURLExec,
    mSec,
    mProd,
    mRet,
    mToken,
    mUser:string;
  end;

var
  Utilitarios_Exportar_Armazem: TUtilitarios_Exportar_Armazem;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitarios_Exportar_Armazem.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_Exportar_Armazem.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      with Dados, dmFiscal do begin
           Notas.Close;
           Pedidos.Close;
           PedidosItens.Close;
           Fornecedores.Close;
           Empresas.Close;
           Configuracao.Close;
      end;
      Utilitarios_Exportar_Armazem.Release;
      Utilitarios_Exportar_Armazem := nil;
end;

procedure TUtilitarios_Exportar_Armazem.FormShow(Sender: TObject);
begin
     PageControl2.ActivePageIndex := 0;
     PageControl1.ActivePageIndex := 0;
     with Dados do begin
          Pedidos.SQL.Clear;
          Pedidos.SQL.Add('UPDATE Pedidos SET Envio_Armazem = 0 WHERE Envio_Armazem IS NULL');
          Pedidos.Execute;

          FiltraPedidos;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT *');
          Fornecedores.SQL.Add('FROM   Fornecedores');
          Fornecedores.SQL.Add('WHERE  (SELECT Descricao FROM RamoAtividade WHERE Codigo = Ramo_Atividade) LIKE ''%ARMAZ%'' ');
          Fornecedores.SQL.Add('ORDER  BY Nome');
          Fornecedores.Open;

          cArmazem.KeyValue := FornecedoresCodigo.AsInteger;

          Configuracao.Open;

          mURL := cIP.Text;
          if Empresas.FieldByName('Ambiente_Armazem').AsInteger = 1 then begin
             // 1 = Ambiente de produção.
             TabSheet1.Caption := 'Notas Fiscais';
          end else begin
             // 2 = Ambiente de teste.
             TabSheet1.Caption := 'Notas Fiscais [Homologação]';
          end;
     end;
end;

procedure TUtilitarios_Exportar_Armazem.bSelecaoClick(Sender: TObject);
begin
      if bSelecao.Tag = 0 then begin
         bSelecao.Tag     := 1;
         bSelecao.Caption := '&Desmarcar Todos';
         with Dados do begin
              Pedidos.First;
              while not Pedidos.Eof do begin
                    Grade.SelectedRows.CurrentRowSelected := True;
                    Pedidos.Next;
              end;
         end;
      end else begin
         bSelecao.Tag     := 0;
         bSelecao.Caption := 'Marcar &Todos';
         Grade.UnselectAll;
      end;
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
end;

procedure TUtilitarios_Exportar_Armazem.Button1Click(Sender: TObject);
var
  JSonValue : TJSonValue;
  st : string;
  Branch : string;
begin
  st := '{"data":{"results":[{"Branch":"ACCT590003"}]}}';

  { Convertendo uma string para json object }
  JsonValue := TJSonObject.ParseJSONValue(st);
  ShowMessage(JsonValue.ToJSON);

  { Obtendo um valor dentro do json }
  Branch := JsonValue.GetValue<string>('data.results[0].Branch');
  ShowMessage(Branch);

  JsonValue.Free;
end;

procedure TUtilitarios_Exportar_Armazem.bConsultaClick(Sender: TObject);
var
    Status:string;
begin
      Screen.Cursor                := crSQLWait;
      pagecontrol1.ActivePageIndex := 0;

      Autentica;

      RESTRequest2.Method             := rmPOST;
      RESTRequest2.Client.ContentType := 'application/json';
      RESTClient2.BaseURL             := Concat(mURL,'/produtos/consulta?deposit=', mUser, '&token=',mToken);
      memo1.clear;

      FiltraItens;

      RESTRequest2.Body.ClearBody;

      with tItens do begin
           ProgressBar1.Position := 0;
           ProgressBar1.Max      := RecordCount;
           first;
           while not eof do begin
                 with RESTRequest2.Params.AddItem do begin
                      ContentType := ctAPPLICATION_JSON;
                      name        := 'sku';  // param name
                      Value       := '{"sku": "'+FieldByName('sku').asstring+'","cod_barras": ""}'; // seu json
                      Kind        := pkREQUESTBODY;
                 end;
                 RESTRequest2.Execute;
                 mret   := RESTRequest2.Response.Content;
                 status := Copy(mRet, pos('"body"', mret)+7, 4);

                 memo1.lines.add('***************************************************************************');
                 memo1.lines.add(mret);
                 memo1.lines.add('***************************************************************************');

                 if status = 'null' then memo1.lines.add(FieldByName('sku').asstring);
                 next;

                 ProgressBar1.Position := ProgressBar1.Position +1;
                 Application.ProcessMessages;
           end;
      end;
      Screen.Cursor := crDefault;
end;

function TUtilitarios_Exportar_Armazem.CamposJson(st:String): String;
var
   jsonraiz, jsonobject:TJSONObject;
   jsArray:TJSONArray;
   i:integer;
begin
      jsArray  := nil;
      jsonRaiz := TJSONObject.ParseJSONValue(st) as TJSONObject;
      if (jsonRaiz <> nil) then
        jsArray := jsonRaiz.GetValue<TJSONArray>('body') as TJSONArray;
        for i := 0 to jsArray .Count-1 do begin
            jsonObject := jsArray.Items[i] as TJSONObject;
            showmessage(jsonObject.GetValue<string>('sku'));
        end;
end;

procedure TUtilitarios_Exportar_Armazem.bEnviarPedClick(Sender: TObject);
var
   Gerou:boolean;
   c, Contador:integer;
begin
     c := 0;
     Screen.Cursor := crSQLWait;
     bEnviarPed.Enabled := not bEnviarPed.Enabled;

     // Faz autenticação no servidor.
     Autentica;

     // Gera JSON do cadastro de produtos.
     with Dados, dmFiscal do begin
          FiltraItens;

          with tItens do begin
               mProd                 := '';
               Gerou                 := false;
               ProgressBar1.Position := 0;
               ProgressBar1.Max      := RecordCount;

               while not eof do begin
                     if not ConsultaProd(tItens.FieldByName('sku').asstring, tItens.FieldByName('Cod_Barras').asstring) then begin
                        Gerou := true;
                        mProd := mProd +
                                 '{'
                                    +AspasDuplas('item_deposit')     +':'+ AspasDuplas(fieldbyName('item_deposit').asstring)+
                                 ','+AspasDuplas('den_item')         +':'+ AspasDuplas(fieldbyName('den_item').asstring)+
                                 ','+AspasDuplas('den_item_reduz')   +':'+ AspasDuplas(fieldbyName('den_item_reduz').asstring)+
                                 ','+AspasDuplas('des_sku')          +':'+ AspasDuplas(fieldbyName('des_sku').asstring)+
                                 ','+AspasDuplas('des_reduz_sku')    +':'+ AspasDuplas(fieldbyName('sku').asstring)+
                                 ','+AspasDuplas('qtd_item')         +':'+ fieldbyName('qtd_item').asstring+
                                 ','+AspasDuplas('cod_unid_med')     +':'+ AspasDuplas(fieldbyName('cod_unid_med').asstring)+
                                 ','+AspasDuplas('cod_barras')       +':'+ AspasDuplas(fieldbyName('cod_barras').asstring)+
                                 ','+AspasDuplas('altura')           +':'+ RemoveCaracter(',', '.', fieldbyName('altura').asstring)+
                                 ','+AspasDuplas('comprimento')      +':'+ RemoveCaracter(',', '.', fieldbyName('comprimento').asstring)+
                                 ','+AspasDuplas('largura')          +':'+ RemoveCaracter(',', '.', fieldbyName('largura').asstring)+
                                 ','+AspasDuplas('peso_bruto')       +':'+ RemoveCaracter(',', '.', fieldbyName('peso_bruto').asstring)+
                                 ','+AspasDuplas('pes_unit')         +':'+ RemoveCaracter(',', '.', fieldbyName('pes_unit').asstring)+
                                 ','+AspasDuplas('qtd_caixa_lastro') +':'+ RemoveCaracter(',', '.', fieldbyName('qtd_caixa_lastro').asstring)+
                                 ','+AspasDuplas('qtd_caixa_altura') +':'+ RemoveCaracter(',', '.', fieldbyName('qtd_caixa_altura').asstring)+
                                 ','+AspasDuplas('cod_cla_fisc')     +':'+ AspasDuplas(fieldbyName('cod_cla_fisc').asstring)+
                                 '},';
                     end;

                     inc(c);
                     memo1.lines.add(inttostr(c)+' -> item_deposit: '+fieldbyName('item_deposit').asstring);

                     next;
                     ProgressBar1.Position := ProgressBar1.Position +1;
                     Application.ProcessMessages;
               end;

               mProd := '['+copy(mProd, 1, length(mProd)-1)+']';

               screen.Cursor := crSQLWait;

               // Cadastra produtos novos.
               if Gerou then begin
                  cMsg.lines.add('');
                  cMsg.lines.add('---< CADASTRANDO PRODUTOS NO ARMAZEN >------------------------------------------------------------------------');
                  RESTRequest3.Method := rmPUT;
                  RESTClient3.BaseURL := Concat(mURL, '/produtos/cadastrar?deposit=', mUser, '&token=', mToken);
                  RESTRequest3.AddBody(mProd);
                  RESTRequest3.execute;
                  mRet := RESTRequest3.Response.Content;
                  cMsg.lines.add(mRet);
               end;

               // Gerando o JSON da nota fiscal.
               cMsg.lines.add('');
               cMsg.lines.add('---< ENVIANDO NOTA FISCAL AO ARMAZEN >------------------------------------------------------------------------');

               mProd                 := '';
               Gerou                 := false;
               ProgressBar1.Position := 0;
               ProgressBar1.Max      := RecordCount;
               Contador              := 0;

               first;
               while not eof do begin
                     if ConsultaProd(tItens.FieldByName('sku').asstring, tItens.FieldByName('Cod_Barras').asstring) then begin
                        mProd := mProd+
                                 '{' +
                                  AspasDuplas('num_nf')          +':'+ fieldbyName('Nota').asstring                        +','+
                                  AspasDuplas('ser_nf')          +':'+ AspasDuplas(fieldbyName('Serie').asstring)          +','+
                                  AspasDuplas('dat_emis_nf')     +':'+ AspasDuplas(fieldbyName('Data').asstring)           +','+
                                  AspasDuplas('num_seq')         +':'+ fieldbyName('Item').asstring                        +','+
                                  AspasDuplas('cod_item')        +':'+ AspasDuplas(fieldbyName('item_deposit').asstring)   +','+
                                  AspasDuplas('qtd_declarad_nf') +':'+ RemoveCaracter(',', '.', fieldbyName('Quantidade').asstring)     +','+
                                  AspasDuplas('pre_unit_nf')     +':'+ RemoveCaracter(',', '.', fieldbyName('Valor_Unitario').asstring) +','+
                                  AspasDuplas('val_liquido_item')+':'+ RemoveCaracter(',', '.', fieldbyName('Valor_Liquido').asstring)  +','+
                                  AspasDuplas('val_tot_nf_d')    +':'+ RemoveCaracter(',', '.', fieldbyName('Valor_TotalNF').asstring)  +','+
                                  AspasDuplas('num_lote')        +':'+ AspasDuplas('') +
                                 '},';
                        inc(Contador);
                     end;
                     next;
               end;

               mProd := '['+copy(mProd, 1, length(mProd)-1)+']';

               memo1.lines.add('');
               memo1.lines.add('[ NOTAS FISCAIS ]-------------------------------------------');
               memo1.lines.add(mProd);
               memo1.lines.add('------------------------------------------------------------');

               // Envia a nota fiscal para o armazem somente se todos os itens foram cadastrados no armazem.
               if Contador = RecordCount then begin
                  cMsg.lines.add('');
                  RESTClient3.BaseURL := Concat(mURL, '/armazem/entrada?deposit=', mUser, '&token=', mToken);

                  with RESTRequest3 do begin
                       ResetToDefaults;
                       Accept             := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
                       AcceptCharset      := 'utf-8, *;q=0.8';
                       Client.ContentType := 'application/json';
                       Method             := rmPUT;
                       Client             := RESTClient3;
                       Response           := RESTResponse1;

                       with Params.AddItem do begin
                            ContentType := ctAPPLICATION_JSON;
                            name        := 'param'; // param name
                            Value       := mProd;   // seu json
                            Kind        := pkREQUESTBODY;
                       end;

                       execute;

                       mRet := RESTResponse1.Content;
                       cMsg.lines.add(mRet);

                       // Gerando o JSON de conferência.
                       cMsg.lines.add('');
                       cMsg.lines.add('---< ENVIANDO REQUISIÇÂO DE CONFERÊNCIA >---------------------------------------------------------------------');

                       RESTClient3.BaseURL := Concat(mURL, '/armazem/conferencia?deposit=', mUser, '&token=', mToken,'&num_nf=',fieldbyName('Nota').asstring,'&serie_nf=',fieldbyName('Serie').asstring );
                       ResetToDefaults;
                       Accept             := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
                       AcceptCharset      := 'utf-8, *;q=0.8';
                       Client.ContentType := 'application/json';
                       Method             := rmGET;
                       Client             := RESTClient3;
                       Response           := RESTResponse1;
                       execute;

                       mRet := RESTResponse1.Content;
                       Memo1.lines.add(mRet);

                       with dmFiscal, Notas do begin
                            Edit;
                                FieldByName('Envio_Armazem').value := true;
                            post;
                       end;
                  end;
               end else begin
                  MessageDlg('Atenção!'+#13+'Alguns produtos ainda não foram cadastrados pelo armazém'+#13+'Tente enviar esta nota fiscal novamente mais tarde.', mtInformation, [mbok], 0);
               end;
          end;

          memo1.lines.add('');
          memo1.lines.add('-------------------------------------------------------------------');
          memo1.lines.add(RESTClient3.BaseURL);

          screen.Cursor := crDefault;
     end;

     Screen.Cursor := crDefault;
     bEnviarPed.Enabled := not bEnviarPed.Enabled;
end;

procedure TUtilitarios_Exportar_Armazem.Autentica;
begin
     RESTRequest1.Params.Clear;
     RESTRequest1.Method := rmPOST;

     mURLExec := mURL + '/auth/';
     mUser    := cUsuario.text;
     mSec     := cSenha.text;

     RESTClient1.BaseURL := mURLExec + mUser;
     cMsg.lines.add('---< AUTENTICAÇÃO >-------------------------------------------------------------------------------------------');
     cMsg.lines.Add('>'+mURLExec);
     RESTRequest1.AddAuthParameter('secret_key', msec, pkGETorPOST);
     RESTRequest1.Execute;
     mRet := RESTRequest1.Response.Content;
     cMsg.Lines.add(mRet);

     // Pegando o "token" retornado pelo server.
     mToken := Copy(mRet, pos('token', mRet)+8, 200);
     mToken := Copy(mToken, 1, pos('",', mToken)-1);
end;

procedure TUtilitarios_Exportar_Armazem.bEnviarSaiClick(Sender: TObject);
Var
    Arquivo : TextFile;
    mNomeArq, mDestino: String;
    mSel, mLinha: Integer;
begin
      cMsg.Clear;
      With Dados do begin
           For mSel := 0 to Grade.SelectedRows.Count-1 do begin
               Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

               cMsg.Lines.Add('> Gerando arquivo do pedido...'+PoeZero(6, Pedidos.FieldByName('Pedido_Nota').AsInteger));

               PedidosItens.SQL.Clear;
               PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = '+PedidosNumero.AsString);
               PedidosItens.Open;

               Municipios.SQL.Clear;
               Municipios.SQL.Add('SELECT * FROM Municipios WHERE Codigo = :pCodigo');
               Municipios.ParamByName('pCodigo').AsString := EmpresasMunicipio_Codigo.AsString;
               Municipios.Open;

               mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
               If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                  mNomeArq := mNomeArq + '_Matriz'
               else
                  mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

               mNomeArq := mNomeArq + '\Exportação';
               If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);

               mNomeArq := mNomeArq+'\WMS_'+PoeZero(6, PedidosPedido_Nota.AsInteger)+'.txt';
               If FileExists(mNomeArq) then DeleteFile(mNomeArq);
               AssignFile(Arquivo, mNomeArq);
               ReWrite(Arquivo);

               // Registro tipo 1 - Cabeçalho.
               mLinha              := 0;
               Funcoes.LinhaAtual  := 0;
               Funcoes.ColunaAtual := 0;

               Say(mLinha, 000, Arquivo, '0' );
               Say(mLinha, 001, Arquivo, PoeZero(6, Pedidos.FieldByName('Pedido_Nota').AsInteger));
               Say(mLinha, 051, Arquivo, RemoveCaracter('/', '', DatetoStr(Date)));
               Say(mLinha, 059, Arquivo, Trim(Pedidos.FieldByName('Destinatario_Nome').AsString));
               Say(mLinha, 159, Arquivo, Trim(Pedidos.FieldByName('Destinatario_CNPJ_CPF').AsString));
               Say(mLinha, 173, Arquivo, Trim(Pedidos.FieldByName('Destinatario_Rua').AsString));
               Say(mLinha, 273, Arquivo, Trim(Pedidos.FieldByName('Destinatario_RuaNumero').AsString));
               Say(mLinha, 279, Arquivo, Trim(Pedidos.FieldByName('Destinatario_Complemento').AsString));
               Say(mLinha, 329, Arquivo, Trim(Pedidos.FieldByName('Destinatario_Bairro').AsString));
               Say(mLinha, 429, Arquivo, Trim(Pedidos.FieldByName('Destinatario_MunicipioNome').AsString));
               Say(mLinha, 529, Arquivo, Trim(Pedidos.FieldByName('Destinatario_Estado').AsString));
               Say(mLinha, 531, Arquivo, Trim(Pedidos.FieldByName('Destinatario_CEP').AsString));

               // Registro tipo 2 - Dados da Mercadoria.
               PedidosItens.First;
               While not PedidosItens.Eof do begin
                     Inc(mLinha);
                     Say(mLinha, 000, Arquivo, '1' );
                     Say(mLinha, 001, Arquivo, PedidosItens.FieldByName('Codigo_Mercadoria').AsString);
                     Say(mLinha, 031, Arquivo, RemoveCaracter(',','', PedidosItens.FieldByName('Quantidade').AsString));

                     PedidosItens.Next;
               End;
               CloseFile(Arquivo);

               cMsg.Lines.Add('          > Enviando o pedido via FTP para...'+Trim(Dados.ConfiguracaoPasta_BackupCybersoft.AsString)+'\WMS_'+PoeZero(6, PedidosPedido_Nota.AsInteger)+'.txt');

               // Conectando ao FTP para envio dos arquivos.
               IdFTP1.Disconnect;
               Menu_Principal.IdAntiFreeze1.Active := true;

               IdFTP1.Username := FornecedoresFTP_Usuario.AsString;
               IdFTP1.Password := FornecedoresFTP_Senha.AsString;
               IdFTP1.Host     := FornecedoresFTP_IP.AsString;
               IdFTP1.Passive  := FornecedoresFTP_Passive.AsBoolean;

               Try
                  IdFTP1.Connect;
               Except
                  cMsg.Lines.Add('> Falha na tentativa de conexão com '+FornecedoresFTP_IP.Value);
               End;

               If IdFTP1.Connected then begin
                  If FileExists(mNomeArq) then begin
                     Try
                         //mDestino            := Trim(mNomeArq);
                         mDestino            := Trim(Dados.ConfiguracaoPasta_BackupCybersoft.AsString)+'\WMS_'+PoeZero(6, PedidosPedido_Nota.AsInteger)+'.txt';
                         IdFTP1.TransferType := ftASCII;   //ftBinary;
                         IdFTP1.Put(mNomeArq, mDestino);

                         Pedidos.Edit;
                                 PedidosEnvio_Armazem.Value := true;
                         Pedidos.Post;        
                         cMsg.Lines.Add('          > Arquivo do pedido '+PoeZero(6, PedidosPedido_Nota.AsInteger)+' enviado.');
                     Except
                         cMsg.Lines.Add('               > Erro...Arquivo não Enviado.');
                     End;
                  End;
                  IdFTP1.Disconnect;
               End;
           End;
      End;

      Showmessage('Envio dos pedidos terminado!');
      Dados.Pedidos.Refresh;
end;

procedure TUtilitarios_Exportar_Armazem.cArmazemChange(Sender: TObject);
begin
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
end;

procedure TUtilitarios_Exportar_Armazem.GradeCellClick(Column: TColumn);
begin
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
      FiltraItens;
end;

procedure TUtilitarios_Exportar_Armazem.FiltraItens;
begin
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
      with dmFiscal, tItens do begin
           sql.clear;
           sql.add('select item_deposit     = Codigo_Mercadoria');
           sql.add('      ,den_item         = substring(Descricao_Mercadoria, 1, 76)');
           sql.add('  	  ,den_item_reduz   = case when ltrim(rtrim(Codigo_Fabricante)) <> '''' then substring(Codigo_Fabricante, 1, 18) else cast(Codigo_Mercadoria as varchar(18)) end');
           sql.add('  	  ,des_sku          = case when (select isnull(Codigo_SKU, '''') from Produtos where Codigo = Codigo_Mercadoria) <> '''' then');
           sql.add('  	  	                       (select Codigo_SKU from Produtos where Codigo = Codigo_Mercadoria)');
           sql.add('  	  	                  else');
           sql.add('  	  							           isnull((select Descricao_Reduzida from Produtos where Codigo = Codigo_Mercadoria), '''')+'' :''+(select Codigo_Fabricante from Produtos where Codigo = Codigo_Mercadoria)');
           sql.add('  	  							      end');
           sql.add('  	  ,sku              = case when isnull((select Codigo_SKU from Produtos where Codigo = Codigo_Mercadoria), '''') <> '''' then');
           sql.add('                               substring((select Codigo_SKU from Produtos where Codigo = Codigo_Mercadoria), 1, 18)');
           sql.add('                          else');
           sql.add('                               cast(Codigo_Mercadoria as varchar(18))');
           sql.add('                          end');
           sql.add('  	  ,qtd_item         = 1');
           sql.add('  	  ,cod_unid_med     = upper(Unidade_Medida)');
           sql.add('  	  ,cod_barras       = case when (select isnull(GTIN, ''SEM GTIN'') FROM Produtos where codigo = Codigo_Mercadoria) <> ''SEM GTIN'' then');
           sql.add('  	                           (select isnull(GTIN, '''') FROM Produtos where codigo = Codigo_Mercadoria)');
           sql.add('  	                      else');
           sql.add('  	                           cast(Codigo_Mercadoria as varchar(18))');
           sql.add('  	                      end');
           sql.add('  	  ,altura           = (select isnull(Altura, 0.1) FROM Produtos where codigo = Codigo_Mercadoria)');
           sql.add('  	  ,comprimento      = (select isnull(Comprimento, 0.1) FROM Produtos where codigo = Codigo_Mercadoria)');
           sql.add('  	  ,largura          = (select isnull(Largura, 0.1) FROM Produtos where codigo = Codigo_Mercadoria)');
           sql.add('  	  ,peso_bruto       = (select isnull(Peso_Bruto, 0.1) FROM Produtos where codigo = Codigo_Mercadoria)');
           sql.add('  	  ,pes_unit         = 1');
           sql.add('  	  ,qtd_caixa_lastro = 1');
           sql.add('  	  ,qtd_caixa_altura = 1');
           sql.add('  	  ,cod_cla_fisc     = NCM');
           sql.add('  	  ,Item');
           sql.add('  	  ,Codigo_Fabricante');
           sql.add('  	  ,Nota');
           sql.add('      ,Serie = (select Serie from NotasFiscais where Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Data');
           sql.add('      ,Quantidade');
           sql.add('      ,Valor_Unitario');
           sql.add('      ,Valor_Liquido = Valor_Total');
           sql.add('      ,Valor_TotalNF = (select Valor_TotalNota from NotasFiscais where Numero = Nota and Data_Emissao = Data)');
           sql.add('from  NotasItens');
           sql.add('where Nota = :pNota');
           sql.add('order by Item');
           ParamByName('pNota').asinteger := Notas.FieldByName('Numero').asinteger;
           //sql.SaveToFile('c:\temp\Envio_Armazem_SKU.sql');
           Open;
      end;
end;

procedure TUtilitarios_Exportar_Armazem.FiltraPedidos;
begin
      with Dados, dmFiscal do begin
           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos');
           Pedidos.SQL.Add('WHERE (Valor_TotalNota > 0 OR Complementar = 1)');
           Pedidos.SQL.Add('AND   (Saida_Entrada = 1)');
           if not cTodos.Checked then
              Pedidos.SQL.Add('AND   (ISNULL(Envio_Armazem, 0) = 0)');
           Pedidos.SQL.Add('ORDER BY Numero');
           //Pedidos.SQL.SaveToFile('c:\temp\Pedidos_Armazem.sql');
           Pedidos.Open;

           Notas.SQL.Clear;
           Notas.SQL.Add('select *');
           Notas.SQL.Add('from  NotasFiscais');
           Notas.SQL.Add('where Saida_Entrada = 1');
           Notas.SQL.Add('and Natureza_Codigo in(''5905'',''6905'')');
           Notas.SQL.Add('order by Numero desc');
           //Pedidos.SQL.SaveToFile('c:\temp\Notas_Armazem.sql');
           Notas.Open;
      end;
end;

procedure TUtilitarios_Exportar_Armazem.cTodosClick(Sender: TObject);
begin
      FiltraPedidos;
end;

procedure TUtilitarios_Exportar_Armazem.tItensden_itemGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
       if not Sender.IsNull then Text := Sender.AsString;
end;

function TUtilitarios_Exportar_Armazem.ConsultaProd(psku, pBarras:string): boolean;
var
    Status:string;
begin
      result := false;
      Screen.Cursor := crSQLWait;

      RESTRequest2.Method             := rmPOST;
      RESTRequest2.Client.ContentType := 'application/json';
      RESTClient2.BaseURL             := Concat(mURL,'/produtos/consulta?deposit=', mUser, '&token=',mToken);

      RESTRequest2.Body.ClearBody;
      ProgressBar1.Position := 0;
      with RESTRequest2.Params.AddItem do begin
           ContentType := ctAPPLICATION_JSON;
           name        := 'sku';  // param name
           Value       := '{"sku": "'+psku+'","cod_barras": ""}'; // seu json
           Kind        := pkREQUESTBODY;
      end;
      RESTRequest2.Execute;
      mret   := RESTRequest2.Response.Content;
      status := Copy(mRet, pos('"body"', mret)+7, 4);

      memo1.lines.add('***************************************************************************');
      memo1.lines.add(mret);
      memo1.lines.add('***************************************************************************');

      if status = 'null' then memo1.lines.add(psku);

      Application.ProcessMessages;
      Screen.Cursor := crDefault;
end;



end.
