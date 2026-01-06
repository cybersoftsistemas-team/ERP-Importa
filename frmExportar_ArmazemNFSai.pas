unit frmExportar_ArmazemNFSai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, Funcoes,
  IdFTP, RxLookup,  DBCtrls, IdFTPCommon, IdTCPConnection, IdTCPClient, Mask, Data.DB, IdBaseComponent, IdComponent, IdExplicitTLSClientServerBase, Vcl.ComCtrls, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, MemDS, DBAccess, MSAccess, MaskUtils, System.JSON, REST.Response.Adapter, REST.Authenticator.OAuth, Vcl.WinXCtrls, DateUtils, system.UITypes, RxDBComb;

type
  TExportar_ArmazemNFSai = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GradeNotas: TDBGrid;
    Panel2: TPanel;
    bEnviar: TButton;
    Button3: TButton;
    Button1: TButton;
    bConsulta: TButton;
    ProgressBar1: TProgressBar;
    TabSheet4: TTabSheet;
    RxDBGrid2: TRxDBGrid;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    StaticText1: TStaticText;
    cArmazem: TRxDBLookupCombo;
    StaticText38: TStaticText;
    cUsuario: TDBEdit;
    StaticText39: TStaticText;
    cSenha: TDBEdit;
    StaticText40: TStaticText;
    cIP: TDBEdit;
    tItensCNPJ: TStringField;
    tItensPedido: TIntegerField;
    tItensItem: TIntegerField;
    tItensCodigo_Mercadoria: TIntegerField;
    tItensCodigo_Fabricante: TStringField;
    tItensSku: TStringField;
    tItensDescricao_Mercadoria: TStringField;
    tItenscod_unid_med: TStringField;
    tItensQuantidade: TFloatField;
    tItensValor_Unitario: TFloatField;
    tItensCNPJ_Dest: TStringField;
    tItensNome_Dest: TStringField;
    tItensEndereco_Dest: TStringField;
    tItensCompl_Dest: TStringField;
    tItensCEP_Dest: TStringField;
    tItensMuni_Dest: TStringField;
    tItensUF_dest: TStringField;
    tItensTipo_Estoque: TStringField;
    tItensRestricao_Est: TStringField;
    tItensLote_Ini: TStringField;
    tItensLote_Fim: TStringField;
    tItensNota: TIntegerField;
    tItensSerie: TStringField;
    tItensChave: TStringField;
    tItensData: TDateTimeField;
    cTpEnvio: TRadioGroup;
    tmp: TMSQuery;
    StaticText2: TStaticText;
    cCodRastreio: TEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FiltraNotas;
    procedure cTodosClick(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bConsultaClick(Sender: TObject);
    procedure tItensden_itemGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure GradeNotasCellClick(Column: TColumn);
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
    mPath,
    mUser:string;
    const
    mTpEnvio: array[0..6] of String = ('ES','SD','SX','SZ','EC','CA','PC');
  end;

var
  Exportar_ArmazemNFSai: TExportar_ArmazemNFSai;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TExportar_ArmazemNFSai.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TExportar_ArmazemNFSai.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      with Dados, dmFiscal do begin
           Notas.Close;
           Pedidos.Close;
           PedidosItens.Close;
           Fornecedores.Close;
           Empresas.Close;
           Configuracao.Close;
      end;
      Exportar_ArmazemNFSai := nil;
end;

procedure TExportar_ArmazemNFSai.FormShow(Sender: TObject);
begin
     PageControl2.ActivePageIndex := 0;
     PageControl1.ActivePageIndex := 0;
     with Dados do begin

          FiltraNotas;

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
             //mURL := 'http://api.leolog-sc.com.br:8090';
             TabSheet1.Caption := 'Notas Fiscais';
          end else begin
             // 2 = Ambiente de teste.
             TabSheet1.Caption := 'Notas Fiscais [Homologação]';
             //mURL := 'http://apiteste.leolog-sc.com.br:8091';
          end;
     end;
end;

procedure TExportar_ArmazemNFSai.GradeNotasCellClick(Column: TColumn);
begin
     FiltraItens;
end;

procedure TExportar_ArmazemNFSai.Button1Click(Sender: TObject);
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

procedure TExportar_ArmazemNFSai.bConsultaClick(Sender: TObject);
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
                 if status = 'null' then memo1.lines.add(FieldByName('sku').asstring);
                 next;

                 ProgressBar1.Position := ProgressBar1.Position +1;
                 Application.ProcessMessages;
           end;
      end;
      Screen.Cursor := crDefault;
end;

function TExportar_ArmazemNFSai.CamposJson(st:String): String;
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

procedure TExportar_ArmazemNFSai.bEnviarClick(Sender: TObject);
var
   ListaNF:TStringList;
   mNF, mMes:string;
   mxml: TMemo;
begin
     if (cTpEnvio.Enabled) and (cTpEnvio.ItemIndex < 0) then begin
        messagedlg('Para envio pelos "CORREIOS" informe o tipo de envio!', mtError, [mbok], 0);
        Abort;
     end;

     Screen.Cursor := crSQLWait;
     bEnviar.Enabled := not bEnviar.Enabled;

     mxml := TMemo.create(self);
     mxml.visible := false;
     mxml.Parent  := Exportar_ArmazemNFSai;

     // Faz autenticação no servidor.
     Autentica;

     // Gera JSON do cadastro de produtos.
     with Dados, dmFiscal do begin
          mPath := Trim(ConfiguracaoPasta_NFE.Value) + '\'+Trim(EmpresasRazao_Social.AsString);
          If EmpresasMatriz_Filial.AsBoolean = true then
             mPath := mPath+ '_Matriz'
          else
             mPath := mPath + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

          if ConfiguracaoSeparar_NFE.AsBoolean then begin
             mPath := mPath + '\SAIDAS'
          end;

          ListaNF := TStringList.create;

          FiltraItens;

          with tItens do begin
               screen.Cursor := crSQLWait;

               // Gerando o JSON da nota fiscal.
               cMsg.lines.add('');
               cMsg.lines.add('---< ENVIANDO NOTA FISCAL DE SAÍDA AO ARMAZEN >--------------');

               mProd                 := '{';
               mProd                 := mProd + AspasDuplas('nota') + ': [';
               ProgressBar1.Position := 0;
               ProgressBar1.Max      := RecordCount;
               mNF                   := '';

               first;
               while not eof do begin
                     if mNF <> FieldByName('Chave').asstring then begin
                        mNF := FieldByName('Chave').asstring;
                        if ConfiguracaoSeparar_NFEMes.AsBoolean then begin
                           mMes := '\Ano_'+InttoStr(YearOf(FieldByName('Data').AsDateTime))+'\'+Trim(NomeMes(MonthOf(FieldByName('Data').AsDateTime)));
                        end;

                        ListaNF.add(mMes+'\NFe_'+ FieldByName('Chave').asstring + '.xml');
                     end;

                     mProd  := mProd +
                                '{' +
                                      AspasDuplas('cnpj_tran')          +':'+ AspasDuplas(fieldbyName('cnpj').asstring)+
                                  ','+AspasDuplas('pedido')             +':'+ AspasDuplas(fieldbyName('pedido').asstring)+
                                  ','+AspasDuplas('num_viagem')         +':'+ AspasDuplas(cCodRastreio.Text)+
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
                                  ','+AspasDuplas('nota_fiscal')        +':'+ fieldbyName('nota').asstring+
                                  ','+AspasDuplas('serie_nota_Fiscal')  +':'+ AspasDuplas(fieldbyName('serie').asstring)+
                                  ','+AspasDuplas('tip_estoque')        +':'+ AspasDuplas('')+
                                  ','+AspasDuplas('restricao')          +':'+ AspasDuplas('')+
                                  ','+AspasDuplas('lote_ini')           +':'+ AspasDuplas('')+
                                  ','+AspasDuplas('lote_fim')           +':'+ AspasDuplas('')+
                               '},';
                     next;
               end;
               mProd  := mProd + ']';

               mxml.clear;
               mxml.Lines.LoadFromFile(mPath+ListaNF[0]);
               mxml.text := StringReplace(mxml.text, '"', '\"' , [rfReplaceAll, rfIgnoreCase]);
               mxml.text := StringReplace(mxml.text, '/', '\/'  , [rfReplaceAll, rfIgnoreCase]);

               mProd := copy(mProd, 1, length(mProd)-1)+'],'+
                        AspasDuplas('xml')                  + ': ' + AspasDuplas(mxml.Text) +
                        ','+AspasDuplas('eh_mercado_livre') + ': ' + AspasDuplas('') +
                        ','+AspasDuplas('tipo_entrega')     + ': ' + AspasDuplas(iif(cTpEnvio.Enabled, mTpEnvio[cTpEnvio.Itemindex],'')) +
                        '}';

               memo1.lines.add('');
               memo1.lines.add('[ NOTAS FISCAIS ]-------------------------------------------');
               memo1.lines.add(mProd);
               memo1.lines.add('------------------------------------------------------------');

               cMsg.lines.add('');
               RESTClient3.BaseURL := Concat(mURL, '/notafiscal/confirmar?deposit=', mUser, '&token=', mToken);

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
                    cMsg.lines.add('---< ENVIANDO DE NOTA FISCAL VINCULADA A SEPARAÇÃO >-------------------------------------------------------');

                    //RESTClient3.BaseURL := Concat(mURL, '/armazem/conferencia?deposit=', mUser, '&token=', mToken,'&num_nf=',fieldbyName('Nota').asstring,'&serie_nf=',fieldbyName('Serie').asstring );
                    RESTClient3.BaseURL := Concat(mURL, '/notafiscal/confirmar?deposit=', mUser, '&token=', mToken);
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
               end;
          end;

          memo1.lines.add('');
          memo1.lines.add('------------------------------------------------------------');

          screen.Cursor := crDefault;
     end;

     Screen.Cursor := crDefault;
     bEnviar.Enabled := not bEnviar.Enabled;
end;

procedure TExportar_ArmazemNFSai.Autentica;
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

procedure TExportar_ArmazemNFSai.FiltraItens;
var
   msel:integer;
   lista:string;
begin
      bEnviar.Enabled := (Trim(cArmazem.DisplayValue) <> '') and (GradeNotas.SelectedRows.Count > 0);

      with tmp do begin
           sql.clear;
           sql.add('select Transportador_Codigo');
           sql.add('      ,cnpj = (select cnpj from fornecedores where codigo = Transportador_Codigo)');
           sql.add('from  NotasFiscais');
           sql.add('where numero = :pNumero');
           parambyname('pNumero').asinteger := dmFiscal.Notas.FieldByName('Numero').AsInteger;
           open;
           cTpEnvio.Enabled := fieldbyName('cnpj').asstring = '34028316000103';
      end;

      with dmFiscal, Dados, tItens do begin
           for mSel := 0 to Pred(GradeNotas.SelectedRows.Count) do begin
               GradeNotas.DataSource.DataSet.GotoBookMark((GradeNotas.SelectedRows.Items[mSel]));
               Lista := Lista + Notas.FieldByName('Numero').asstring+',';
           end;
           Lista := '('+Copy(Lista, 1, Length(Lista)-1)+')';
           sql.clear;
           sql.add('select CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = (SELECT Transportador_Codigo FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data))');
           sql.add('      ,Nota');
           sql.add('      ,Pedido = (SELECT Pedido_Nota FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,serie = (SELECT Serie FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Item = Codigo_Mercadoria');
           sql.add('      ,Codigo_Mercadoria');
           sql.add('      ,Codigo_Fabricante');
           sql.add('      ,Sku = (SELECT Codigo_SKU FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           sql.add('      ,Descricao_Mercadoria = CAST(Descricao_Mercadoria AS VARCHAR(120))');
           sql.add('      ,cod_unid_med     = upper(ltrim(rtrim(Unidade_Medida)))');
           sql.add('      ,Quantidade');
           sql.add('      ,Valor_Unitario');
           sql.add('      ,CNPJ_Dest        = (select Destinatario_CNPJ_CPF from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Nome_Dest        = (select Destinatario_Nome from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Endereco_Dest    = (select isnull(Destinatario_Rua, '''')+'' Nº ''+isnull(Destinatario_RuaNumero, '''') from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Compl_Dest       = (select isnull(Destinatario_Complemento, '''') from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,CEP_Dest         = (select isnull(Destinatario_CEP, '''') from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Muni_Dest        = (select isnull(Destinatario_MunicipioNome, '''') from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,UF_dest          = (select isnull(Destinatario_Estado, '''') from NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('	    ,Tipo_Estoque     = '''' ');
           sql.add('      ,Restricao_Est    = '''' ');
           sql.add('      ,Lote_Ini         = '''' ');
           sql.add('      ,Lote_Fim         = '''' ');
           sql.add('      ,Chave            = (SELECT NFe_cNF FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data)');
           sql.add('      ,Data');
           sql.add('from  NotasItens');
           sql.add('where Nota in'+Lista);
           sql.add('order by Nota, Item');
           //sql.SaveToFile('c:\temp\Envio_Armazem_Notas_Itens.sql');
           Open;
      end;
end;

procedure TExportar_ArmazemNFSai.FiltraNotas;
begin
     with Dados, dmFiscal, Notas do begin
          sql.clear;
          sql.Add('select *');
          sql.Add('from  NotasFiscais');
          sql.Add('where Saida_Entrada = 1');
          sql.Add('and   isnull(Envio_Armazem, 0) = 0');
          sql.Add('and   Natureza_Codigo not in(''5905'',''6905'')');
          sql.Add('order by Numero desc');
          //Pedidos.SQL.SaveToFile('c:\temp\Notas_Armazem_Saida.sql');
          Open;
     end;
end;

procedure TExportar_ArmazemNFSai.cTodosClick(Sender: TObject);
begin
     FiltraNotas;
end;

procedure TExportar_ArmazemNFSai.tItensden_itemGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
     if not Sender.IsNull then Text := Sender.AsString;
end;

function TExportar_ArmazemNFSai.ConsultaProd(psku, pBarras:string): boolean;
var
    Status, mretorno:string;
begin
      RESTRequest2.Method             := rmPOST;
      RESTRequest2.Client.ContentType := 'application/json';
      RESTClient2.BaseURL             := Concat(mURL,'/produtos/consulta?deposit=', mUser, '&token=',mToken);
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
