unit frmUtilitarios_Exportar_ArmazemPed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, Funcoes,
  IdFTP, RxLookup,  DBCtrls, IdFTPCommon, IdTCPConnection, IdTCPClient, Mask, Data.DB, IdBaseComponent, IdComponent, IdExplicitTLSClientServerBase, Vcl.ComCtrls, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, MemDS, DBAccess, MSAccess, MaskUtils, System.JSON, REST.Response.Adapter, REST.Authenticator.OAuth, system.UITypes, Vcl.WinXCtrls;

type
  TUtilitarios_Exportar_ArmazemPed = class(TForm)
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
    IdFTP1: TIdFTP;
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
    tItensCNPJ: TStringField;
    tItensPedido: TIntegerField;
    tItensItem: TSmallintField;
    tItensCodigo_Mercadoria: TIntegerField;
    tItensCodigo_Fabricante: TStringField;
    tItensSku: TStringField;
    tItenscod_unid_med: TStringField;
    tItensQuantidade: TFloatField;
    tItensValor_Unitario: TFloatField;
    tItensCNPJ_Dest: TStringField;
    tItensNome_Dest: TStringField;
    tItensEndereco_Dest: TStringField;
    tItensCompl_Dest: TStringField;
    tItensCEP_Dest: TStringField;
    tItensMuni_Dest: TStringField;
    tItensTipo_Estoque: TStringField;
    tItensRestricao_Est: TStringField;
    tItensLote_Ini: TStringField;
    tItensLote_Fim: TStringField;
    tItensDescricao_Mercadoria: TStringField;
    tItensUF_dest: TStringField;
    tItensPedido_Nota: TIntegerField;
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
  Utilitarios_Exportar_ArmazemPed: TUtilitarios_Exportar_ArmazemPed;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitarios_Exportar_ArmazemPed.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_Exportar_ArmazemPed.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      with Dados, dmFiscal do begin
           Notas.Close;
           Pedidos.Close;
           PedidosItens.Close;
           Fornecedores.Close;
           Empresas.Close;
           Configuracao.Close;
      end;
      Utilitarios_Exportar_ArmazemPed.Release;
      Utilitarios_Exportar_ArmazemPed := nil;
end;

procedure TUtilitarios_Exportar_ArmazemPed.FormShow(Sender: TObject);
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
             TabSheet1.Caption := 'Pedidos';
          end else begin
             // 2 = Ambiente de teste.
             TabSheet1.Caption := 'Pedidos [Homologação]';
          end;
     end;
end;

procedure TUtilitarios_Exportar_ArmazemPed.bSelecaoClick(Sender: TObject);
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

procedure TUtilitarios_Exportar_ArmazemPed.Button1Click(Sender: TObject);
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

function TUtilitarios_Exportar_ArmazemPed.CamposJson(st:String): String;
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

procedure TUtilitarios_Exportar_ArmazemPed.bEnviarPedClick(Sender: TObject);
var
   Gerou:boolean;
   c, Contador:integer;
begin
     c := 0;
     Screen.Cursor := crSQLWait;
     bEnviarPed.Enabled := not bEnviarPed.Enabled;

     // Faz autenticação no servidor.
     Autentica;

     if mToken = '' then begin
        MessageDlg('Não consegui gerar o Token'+#13+#13+'Operação abortada!', mtError, [mbok], 0);
        bEnviarPed.Enabled := true;
        screen.Cursor := crDefault;
        Abort;
     end;

     // Gera JSON do cadastro de produtos.
     with Dados, dmFiscal do begin
          FiltraItens;

          with tItens do begin
               mProd                 := '[';
               Gerou                 := false;
               ProgressBar1.Position := 0;
               ProgressBar1.Max      := RecordCount;

               while not eof do begin
                     mProd := mProd +
                              '{'
                                 +AspasDuplas('cnpj_tran')          +':'+ AspasDuplas(fieldbyName('cnpj').asstring)+
                              ','+AspasDuplas('pedido')             +':'+ AspasDuplas(fieldbyName('pedido_nota').asstring)+
                              ','+AspasDuplas('item')               +':'+ AspasDuplas(fieldbyName('Codigo_Mercadoria').asstring)+
                              ','+AspasDuplas('unid_medida')        +':'+ AspasDuplas(fieldbyName('cod_unid_med').asstring)+
                              ','+AspasDuplas('qtd_original_docum') +':'+ fieldbyName('quantidade').asstring+
                              ','+AspasDuplas('val_unit')           +':'+ RemoveCaracter(',', '.', fieldbyName('valor_unitario').asstring)+
                              ','+AspasDuplas('cnpj_cpf_destinat')  +':'+ AspasDuplas(fieldbyName('cnpj_dest').asstring)+
                              ','+AspasDuplas('nom_destinat')       +':'+ AspasDuplas(fieldbyName('nome_dest').asstring)+
                              ','+AspasDuplas('ende_dest')          +':'+ AspasDuplas(fieldbyName('endereco_dest').asstring)+
                              ','+AspasDuplas('compl_endereco')     +':'+ AspasDuplas(fieldbyName('Compl_dest').asstring)+
                              ','+AspasDuplas('cep')                +':'+ AspasDuplas(fieldbyName('cep_dest').asstring)+
                              ','+AspasDuplas('muni_dest')          +':'+ AspasDuplas(RemoveCaracter(',', '.', fieldbyName('muni_dest').asstring))+
                              ','+AspasDuplas('unid_fede')          +':'+ AspasDuplas(RemoveCaracter(',', '.', fieldbyName('uf_dest').asstring))+
                              ','+AspasDuplas('tip_estoque')        +':'+ AspasDuplas(RemoveCaracter(',', '.', ''))+
                              ','+AspasDuplas('restricao')          +':'+ AspasDuplas(RemoveCaracter(',', '.', ''))+
                              ','+AspasDuplas('lote_ini')           +':'+ AspasDuplas(RemoveCaracter(',', '.', ''))+
                              ','+AspasDuplas('lote_fim')           +':'+ AspasDuplas(RemoveCaracter(',', '.', ''))+
                              '},';

                     inc(c);
                     memo1.lines.add(inttostr(c)+' -> item : '+fieldbyName('item').asstring);

                     next;
                     ProgressBar1.Position := ProgressBar1.Position +1;
                     Application.ProcessMessages;
               end;

               mProd := copy(mProd, 1, length(mProd)-1)+']';

               screen.Cursor := crSQLWait;

               memo1.lines.add('');
               memo1.lines.add('[ PEDIDOS ]-------------------------------------------');
               memo1.lines.add(mProd);
               memo1.lines.add('------------------------------------------------------------');

               // Envia os pedidos para o armazem;
               cMsg.lines.add('');
               RESTClient3.BaseURL := Concat(mURL, '/carga/solicitar?deposit=', mUser, '&token=', mToken);

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

                    (*
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
                    *)
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

procedure TUtilitarios_Exportar_ArmazemPed.Autentica;
begin
     RESTRequest1.Params.Clear;
     RESTRequest1.Method := rmPOST;

     mURLExec := mURL + '/auth/';
     mUser    := cUsuario.text;
     mSec     := cSenha.text;

     RESTClient1.BaseURL := mURLExec + mUser;

     cMsg.lines.add('---< AUTENTICAÇÃO >-------------------------------------------------------------------------------------------');
     cMsg.lines.Add('URL >'+mURLExec + mUser);
     RESTRequest1.AddAuthParameter('secret_key', msec, pkGETorPOST);
     try
         RESTRequest1.Execute;
     except
        cMsg.Lines.add('Erro de autenticação');
        mToken := '';
     end;
     mRet := RESTRequest1.Response.Content;
     cMsg.Lines.add('Retorno: '+mRet);

     // Pegando o "token" retornado pelo server.
     mToken := Copy(mRet, pos('token', mRet)+8, 200);
     mToken := Copy(mToken, 1, pos('",', mToken)-1);
end;

procedure TUtilitarios_Exportar_ArmazemPed.bEnviarSaiClick(Sender: TObject);
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

procedure TUtilitarios_Exportar_ArmazemPed.cArmazemChange(Sender: TObject);
begin
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
end;

procedure TUtilitarios_Exportar_ArmazemPed.GradeCellClick(Column: TColumn);
begin
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
      FiltraItens;
end;

procedure TUtilitarios_Exportar_ArmazemPed.FiltraItens;
var
   msel:integer;
   lista:string;
begin
      bEnviarSai.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (Grade.SelCount > 0);
      with dmFiscal, Dados, tItens do begin
           for mSel := 0 to GradeNotas.SelectedRows.Count-1 do begin
               GradeNotas.DataSource.DataSet.GotoBookMark((GradeNotas.SelectedRows.Items[mSel]));
               Lista := Lista + Pedidos.FieldByName('Numero').asstring+',';
           end;
           Lista := '('+Copy(Lista, 1, Length(Lista)-1)+')';

           sql.clear;
           sql.add('select CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = (SELECT Transportador_Codigo FROM Pedidos WHERE Numero = Pedido))');
           sql.add('      ,Pedido');
           sql.add('      ,pedido_nota = (select Pedido_Nota from Pedidos where Numero = Pedido)');
           sql.add('      ,Item = Codigo_Mercadoria');
           sql.add('      ,Codigo_Mercadoria');
           sql.add('      ,Codigo_Fabricante');
           sql.add('      ,Sku = (SELECT Codigo_SKU FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           sql.add('      ,Descricao_Mercadoria = CAST(Descricao_Mercadoria AS VARCHAR(120))');
           sql.add('      ,cod_unid_med     = upper(ltrim(rtrim(Unidade_Medida)))');
           sql.add('      ,Quantidade');
           sql.add('      ,Valor_Unitario');
           sql.add('      ,CNPJ_Dest        = (select Destinatario_CNPJ_CPF from Pedidos where Numero = Pedido)');
           sql.add('      ,Nome_Dest        = (select Destinatario_Nome from Pedidos where Numero = Pedido)');
           sql.add('      ,Endereco_Dest    = (select isnull(Destinatario_Rua, '''')+'' Nº ''+isnull(Destinatario_RuaNumero, '''') from Pedidos where Numero = Pedido)');
           sql.add('      ,Compl_Dest       = (select isnull(Destinatario_Complemento, '''') from Pedidos where Numero = Pedido)');
           sql.add('      ,CEP_Dest         = (select isnull(Destinatario_CEP, '''') from Pedidos where Numero = Pedido)');
           sql.add('      ,Muni_Dest        = (select isnull(Destinatario_MunicipioNome, '''') from Pedidos where Numero = Pedido)');
           sql.add('      ,UF_dest          = (select isnull(Destinatario_Estado, '''') from Pedidos where Numero = Pedido)');
           sql.add('	    ,Tipo_Estoque     = '''' ');
           sql.add('	    ,Restricao_Est    = '''' ');
           sql.add('	    ,Lote_Ini         = '''' ');
           sql.add('	    ,Lote_Fim         = '''' ');
           sql.add('from  PedidosItens');
           sql.add('where Pedido IN'+Lista);
           sql.add('order by Item');
           //sql.SaveToFile('c:\temp\Envio_Armazem_Pedido_Separacao.sql');
           Open;
      end;
end;

procedure TUtilitarios_Exportar_ArmazemPed.FiltraPedidos;
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
           Notas.SQL.Add('order by Numero');
           //Pedidos.SQL.SaveToFile('c:\temp\Notas_Armazem.sql');
           Notas.Open;
      end;
end;

procedure TUtilitarios_Exportar_ArmazemPed.cTodosClick(Sender: TObject);
begin
      FiltraPedidos;
end;

procedure TUtilitarios_Exportar_ArmazemPed.tItensden_itemGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
       if not Sender.IsNull then Text := Sender.AsString;
end;

function TUtilitarios_Exportar_ArmazemPed.ConsultaProd(psku, pBarras:string): boolean;
var
    Status, mretorno:string;
begin
      RESTRequest2.Method             := rmPOST;
      RESTRequest2.Client.ContentType := 'application/json';
      RESTClient2.BaseURL := Concat(mURL,'/produtos/consulta?deposit=', mUser, '&token=',mToken);
      RESTRequest2.Body.ClearBody;

      with tItens do begin
           with RESTRequest2.Params.AddItem do begin
                ContentType := ctAPPLICATION_JSON;
                name        := 'sku';
                Value       := '{"sku": "'+psku+'","cod_barras": "'+pBarras+'"}';
                Kind        := pkREQUESTBODY;
           end;
           RESTRequest2.Execute;
           mretorno := RESTRequest2.Response.Content;
           status   := Copy(mRetorno, pos('"body"', mretorno)+7, 4);
           ConsultaProd := status <> 'null';
      end;
end;



end.
