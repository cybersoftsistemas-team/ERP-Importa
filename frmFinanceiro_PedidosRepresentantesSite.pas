unit frmFinanceiro_PedidosRepresentantesSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  REST.Types, Datasnap.DBClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, System.JSON, REST.Response.Adapter, Vcl.DBCtrls,
  IniFiles, MemDS, DBAccess, MSAccess, DateUtils, MidasLib, Datasnap.Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFinanceiro_PedidosRepresentantesSite = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    tPedidos: TClientDataSet;
    tPedidosid: TIntegerField;
    tPedidosstatus: TStringField;
    tPedidoscurrency: TStringField;
    tPedidosversion: TStringField;
    tPedidosprices_include_tax: TBooleanField;
    tPedidosdate_created: TDateField;
    tPedidosdate_modified: TDateField;
    tPedidosdiscount_total: TCurrencyField;
    tPedidosdiscount_tax: TFloatField;
    tPedidosshipping_total: TCurrencyField;
    tPedidosshipping_tax: TCurrencyField;
    tPedidoscart_tax: TCurrencyField;
    tPedidostotal: TCurrencyField;
    tPedidostotal_tax: TCurrencyField;
    tPedidoscustomer_id: TIntegerField;
    tPedidosorder_key: TStringField;
    tPedidosfirst_name: TStringField;
    tPedidosbilling: TWideStringField;
    tPedidosshipping: TWideStringField;
    tPedidospayment_method: TStringField;
    tPedidospayment_method_title: TStringField;
    tPedidostransaction_id: TStringField;
    tPedidoscustomer_ip_address: TStringField;
    tPedidoscustomer_user_agent: TStringField;
    tPedidoscreated_via: TStringField;
    tPedidoscustomer_note: TStringField;
    tPedidosdate_completed: TDateField;
    tPedidosdate_paid: TDateField;
    tPedidoscart_hash: TStringField;
    tPedidosnumber: TIntegerField;
    tPedidosmeta_data: TWideStringField;
    tPedidosline_items: TWideStringField;
    tPedidostax_lines: TWideStringField;
    tPedidosshipping_lines: TWideStringField;
    dstPedidos: TDataSource;
    tTempItens: TClientDataSet;
    dstTempItens: TDataSource;
    tItens: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    CurrencyField1: TCurrencyField;
    StringField3: TStringField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    StringField4: TStringField;
    dstItens: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    mJSON: TMemo;
    tClientes: TClientDataSet;
    dstClientes: TDataSource;
    tClientesfirst_name: TStringField;
    tClienteslast_name: TStringField;
    tClientescompany: TStringField;
    tClientesaddress_1: TStringField;
    tClientesaddress_2: TStringField;
    tClientescity: TStringField;
    tClientesstate: TStringField;
    tClientespostcode: TStringField;
    tClientescountry: TStringField;
    tClientesemail: TStringField;
    tClientesphone: TStringField;
    tClientesnumber: TStringField;
    tClientesneighborhood: TStringField;
    tClientespersontype: TStringField;
    tClientescpf: TStringField;
    tClientesrg: TStringField;
    tClientescnpj: TStringField;
    tClientesie: TStringField;
    tClientesbirthdate: TStringField;
    tClientessex: TStringField;
    tClientescellphone: TStringField;
    tTempClientes: TClientDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    dstTempClientes: TDataSource;
    PageControl2: TPageControl;
    pPedidos: TTabSheet;
    pItens: TTabSheet;
    pClientes: TTabSheet;
    gPedidos: TDBGrid;
    gItens: TDBGrid;
    gClientes: TDBGrid;
    bImportar: TButton;
    Panel3: TPanel;
    lNome: TStaticText;
    StaticText1: TStaticText;
    cData: TDateTimePicker;
    cHora: TDateTimePicker;
    bBuscar: TButton;
    TabSheet3: TTabSheet;
    cLog: TListBox;
    tItenspedido: TStringField;
    tClientespedido: TStringField;
    tItensdata: TDateTimeField;
    tTmp: TMSQuery;
    tTempItensid: TIntegerField;
    tTempItensname: TStringField;
    tTempItensproduct_id: TIntegerField;
    tTempItensvariation_id: TIntegerField;
    tTempItensquantity: TFloatField;
    tTempItenstax_class: TStringField;
    tTempItenssubtotal: TCurrencyField;
    tTempItenssubtotal_tax: TStringField;
    tTempItenstotal: TCurrencyField;
    tTempItenstotal_tax: TCurrencyField;
    tTempItensprice: TCurrencyField;
    tTempItensparent_name: TStringField;
    tTempItenssku: TStringField;
    tItenssku: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
  private
    procedure JsonToDataset(aDataset: TDataSet; aJSON: string);
    procedure JsonToDataSetObj(aDataset: TDataSet; aJSON: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_PedidosRepresentantesSite: TFinanceiro_PedidosRepresentantesSite;

implementation

{$R *.dfm}

uses frmDados, frmJanela_Processamento, FUNCOES, frmDMComercial, frmMenu_Principal;

procedure TFinanceiro_PedidosRepresentantesSite.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TFinanceiro_PedidosRepresentantesSite.bBuscarClick(Sender: TObject);
var
   i:integer;
   mDtI:string;
begin
     Screen.Cursor := crHourGlass;

     PageControl2.ActivePageIndex := 3;
     cLog.Clear;

     with Dados, dmComercial do begin
          EComm.sql.clear;
          EComm.sql.add('SELECT DISTINCT Registro = 1');
          EComm.sql.add('               ,Ativo = CAST(1 AS bit)');
          EComm.sql.add('               ,Tempo_Verificacao = 60');
          EComm.sql.add('               ,URL');
          EComm.sql.add('               ,Consumer_Key');
          EComm.sql.add('               ,consumer_Secret');
          EComm.sql.add('FROM ECommerce');
          EComm.open;

          mdtI                := Inttostr(Yearof(cData.Date))+'-'+PoeZero(2, Monthof(cData.Date))+'-'+PoeZero(2, Dayof(cData.Date));
          mdtI                := mdtI + 'T' + TimetoStr(cHora.Time);
          RESTClient1.BaseURL := ECommURL.AsString +
                                'orders?after='+mdtI +
                                '&consumer_key=' + ECommConsumer_Key.AsString +
                                '&consumer_secret=' + ECommConsumer_Secret.AsString;

          cLog.Items.Add('...Buscando arquivo json na url '+ECommURL.AsString);
          Application.ProcessMessages;
     end;


     RESTRequest1.Execute;
     JsonToDataset(tPedidos, RESTRequest1.Response.JSONText);
     mJSON.Lines.add(RESTRequest1.Response.JSONText);

     cLog.Items.Add('...Convertendo pedidos');
     Application.ProcessMessages;

     tPedidos.First;
     tItens.Open;
     tItens.EmptyDataSet;
     tClientes.Open;
     tClientes.EmptyDataSet;

     while not tPedidos.eof do begin
           // Pegando os itens.
           JsonToDataset(tTempItens, tPedidos.fieldbyname('line_items').asstring);
           while not tTempItens.eof do begin
                 tItens.Append;
                        for i := 0 to pred(tTempItens.FieldCount) do begin
                            tItens.Fields[i].Value := tTempItens.Fields[i].Value;
                        end;
                        tItens.FieldByname('pedido').Value := tPedidos.fieldbyname('id').asstring;
                        tItens.FieldByname('data').Value   := tPedidos.fieldbyname('date_created').asdatetime;
                 tItens.Post;
                 tTempItens.next;
           end;

           // Pegando os clientes.
           JsonToDatasetObj(tTempClientes, tPedidos.fieldbyname('billing').asstring);
           tClientes.Append;
                     for i := 0 to pred(tTempClientes.FieldCount) do begin
                         tClientes.Fields[i].Value := tTempClientes.Fields[i].Value;
                     end;
                    tClientes.FieldByname('Pedido').Value := tPedidos.fieldbyname('id').asstring;
           tClientes.Post;

           tPedidos.Next;
     end;

     cData.Date := Date;
     cHora.Time := time;
     cLog.Items.Add('...'+InttoStr(tPedidos.RecordCount)+' pedidos encontrados');
     Application.ProcessMessages;

     if tPedidos.RecordCount > 0 then begin
        Sleep(3000);
        PageControl2.ActivePageIndex := 0;
     end;

     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_PedidosRepresentantesSite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Financeiro_PedidosRepresentantesSite.release;
      Financeiro_PedidosRepresentantesSite := nil;
end;

procedure TFinanceiro_PedidosRepresentantesSite.FormShow(Sender: TObject);
begin
     mJSON.Clear;
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;

     with Dados do begin
          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores, RamoAtividade');
          Fornecedores.SQL.Add('WHERE  (Ramo_Atividade = RamoAtividade.Codigo) AND (RamoAtividade.Descricao LIKE ''%TRANSPORT%'') AND (RamoAtividade.Modulo_Pedidos = 1)');
          Fornecedores.SQL.Add('ORDER BY Nome');
          Fornecedores.Open;

          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
          Clientes.Open;

          TipoNota.SQL.Clear;
          TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Saida_Entrada = 1 AND Ativo = 1 ORDER BY Codigo');
          TipoNota.Open;

          Configuracao.Open;

          Natureza.SQL.Clear;
          Natureza.SQL.Add('SELECT *');
          Natureza.SQL.Add('FROM   Natureza');
          Natureza.SQL.Add('WHERE Ativo = 1 and Codigo BETWEEN :pIni AND :pFim');
          Natureza.SQL.Add('ORDER BY Codigo');
          Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.AsString;
          Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.AsString;
          //Natureza.sql.SaveToFile('c:\temp\Natureza_Site.sql');
          Natureza.Open;

          Estados.SQL.Clear;
          Estados.SQL.Add('SELECT * FROM Estados');
          Estados.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios');
          Municipios.Open;

          ModalidadesPgto.SQL.Clear;
          ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
          ModalidadesPgto.Open;

          Empresas.sql.clear;
          Empresas.sql.add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.open;

          cData.Date := StrtoDate(EmpresasECommerce_Data.asstring);
          cHora.Time := StrtoTime(EmpresasECommerce_Hora.asstring);
     end;
end;

procedure TFinanceiro_PedidosRepresentantesSite.JsonToDataset(aDataset: TDataSet; aJSON: string);
var
   JObj : TJSONArray;
   vConv: TCustomJSONDataSetAdapter;
begin
      if (aJSON = EmptyStr) then Exit;

      JObj  := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
      vConv := TCustomJSONDataSetAdapter.Create(Nil);

      try
          vConv.Dataset := aDataset;
          vConv.UpdateDataSet(JObj);
      finally
          vConv.Free;
          JObj.Free;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesSite.JsonToDataSetObj(aDataset: TDataSet; aJSON: string);
var
   JObj : TJSONObject;
   vConv: TCustomJSONDataSetAdapter;
begin
      if (aJSON = EmptyStr) then Exit;

      JObj  := TJSONObject.ParseJSONValue(aJSON) as TJSONObject;
      vConv := TCustomJSONDataSetAdapter.Create(Nil);

      try
          vConv.Dataset := aDataset;
          vConv.UpdateDataSet(JObj);
      finally
          vConv.Free;
          JObj.Free;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesSite.bImportarClick(Sender: TObject);
var
   mitem:integer;
   mData:TDateTime;
   mAchou:Boolean;
begin
     with Dados do begin
          cLog.Items.Add('...Abrindo tabelas do banco de dados');
          Application.ProcessMessages;

          PedidosRepresentantes.sql.clear;
          PedidosRepresentantes.sql.Add('SELECT * FROM PedidosRepresentantes WHERE Pedido = (SELECT MAX(Pedido) FROM PedidosRepresentantes)');
          PedidosRepresentantes.Open;

          PedidosRepresentantesItens.sql.clear;
          PedidosRepresentantesItens.sql.Add('SELECT *');
          PedidosRepresentantesItens.sql.Add('       ,Descricao_Mercadoria = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
          PedidosRepresentantesItens.sql.Add('FROM PedidosRepresentantesItens');
          PedidosRepresentantesItens.sql.Add('WHERE Pedido = (SELECT MAX(Pedido) FROM PedidosRepresentantesItens)');
          PedidosRepresentantesItens.Open;

          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Max      := tPedidos.RecordCount;
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.lProcesso.Caption  := 'Importando Clientes/ Pedidos/ Itens...Aguarde';
          Janela_Processamento.Show;

          // Importando Clientes, Pedidos e Itens.
          cLog.Items.Add('...Importando pedidos');
          Application.ProcessMessages;

          tPedidos.First;
          while not tPedidos.Eof do begin
                mData := now;
                tClientes.locate('pedido', tPedidosId.AsString, [loCaseInsensitive]);

                tTmp.sql.clear;
                tTmp.sql.Add('DELETE FROM PedidosRepresentantesItens WHERE Pedido = :pPed');
                tTmp.ParamByName('pPed').AsString := trim(tPedidosId.AsString);
                tTmp.execute;
                tTmp.sql.clear;
                tTmp.sql.Add('DELETE FROM PedidosRepresentantes WHERE Pedido = :pPed and Liberado = 0');
                tTmp.ParamByName('pPed').AsString := trim(tPedidosId.AsString);
                tTmp.execute;

                PedidosRepresentantes.Append;
                                      PedidosRepresentantesPedido.AsString               := 'E'+trim(tPedidosId.AsString);
                                      PedidosRepresentantesData.Value                    := mData;
                                      PedidosRepresentantesLiberado.Value                := false;
                                      PedidosRepresentantesInf_Complementares2.Value     := 'PEDIDO :'+tPedidosId.Text + '    VAUCHER/Código SKU :';
                                      PedidosRepresentantesFaturado.Value                := false;
                                      PedidosRepresentantesCancelado.Value               := false;
                                      PedidosRepresentantesCliente_Simples.Value         := false;
                                      PedidosRepresentantesCliente_ZonaFranca.Value      := false;
                                      PedidosRepresentantesCliente_ConsumidorFinal.Value := true;
                                      PedidosRepresentantesCliente_Contato.Value         := '';
                                      PedidosRepresentantesSituacao.Value                := 'AGUARDANDO';
                                      PedidosRepresentantesGerar_Pedido.Value            := false;
                                      PedidosRepresentantesTipo_Faturamento.Value        := 1;
                                      PedidosRepresentantesOrigem_Pedido.Value           := 'E-COMMERCE';
                                      PedidosRepresentantesTransportador.Value           := ConfiguracaoTelevendas_Transportador.Value;
                                      PedidosRepresentantesTipo_Nota.Value               := ConfiguracaoTelevendas_TipoNota.Value;
                                      PedidosRepresentantesCliente_CNPJ.Value            := trim(tClientes.fieldbyname('cnpj').asstring);
                                      PedidosRepresentantesCliente_IE.Value              := trim(tClientes.fieldbyname('ie').asstring);
                                      PedidosRepresentantesCliente_CPF.Value             := trim(tClientes.fieldbyname('cpf').asstring);
                                      PedidosRepresentantesCliente_CPF.Value             := trim(tClientes.fieldbyname('rg').asstring);
                                      PedidosRepresentantesCliente_Nome.Value            := trim(tClientes.fieldbyname('last_name').asstring) + ' '+ trim(tClientes.fieldbyname('first_name').asstring);
                                      PedidosRepresentantesCliente_CEP.Value             := trim(tClientes.fieldbyname('postcode').AsString);
                                      PedidosRepresentantesCliente_Rua.Value             := trim(tClientes.fieldbyname('address_1').asstring)+', '+trim(tClientes.fieldbyname('address_2').asstring);
                                      PedidosRepresentantesCliente_RuaNumero.Value       := trim(tClientes.fieldbyname('number').asstring);
                                      PedidosRepresentantesCliente_MunicipioNome.Value   := trim(tClientes.fieldbyname('city').asstring);
                                      PedidosRepresentantesCliente_Estado.Value          := trim(tClientes.fieldbyname('state').asstring);
                                      PedidosRepresentantesCliente_Telefone.Value        := trim(tClientes.fieldbyname('cellphone').asstring);
                                      PedidosRepresentantesCliente_Email.Value           := trim(tClientes.fieldbyname('email').asstring);
                PedidosRepresentantes.Post;

                mItem := 1;

                titens.Close;
                tItens.Filter   := 'pedido = '+trim(tPedidosId.AsString);
                tItens.Filtered := true;
                tItens.Open;
                tItens.First;

                while not tItens.eof do begin
                      with tTmp do begin
                           sql.clear;
                           sql.add('select Codigo, Codigo_SKU from Produtos where Codigo_SKU = :psku');
                           parambyname('psku').asstring := tItens.fieldbyname('sku').asstring;
                           open;
                      end;
                      PedidosRepresentantesItens.Append;
                                                 PedidosRepresentantesItensPedido.Value            := trim(tItens.fieldbyname('pedido').AsString);
                                                 PedidosRepresentantesItensData.Value              := tItens.fieldbyname('data').value;
                                                 PedidosRepresentantesItensItem.Value              := mitem;
                                                 PedidosRepresentantesItensCodigo_Mercadoria.Value := iif(tTmp.recordCount > 0, tTmp.FieldByName('Codigo').asinteger, tItens.Fieldbyname('product_id').AsInteger);
                                                 PedidosRepresentantesItensValor_Unitario.Value    := tItens.Fieldbyname('price').ascurrency;
                                                 PedidosRepresentantesItensQuantidade.Value        := tItens.Fieldbyname('quantity').asfloat;
                                                 PedidosRepresentantesItensCancelado.Value         := false;
                                                 PedidosRepresentantesItensFaturado.Value          := false;
                      PedidosRepresentantesItens.Post;
                      tItens.Next;
                      inc(mItem);
                end;

                tPedidos.Next;

                if Funcoes.Cancelado then Abort;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          end;

          // Registro a data e a hora da ultima consulta do cadastro da empresa.
          Empresas.Edit;
                   EmpresasECommerce_Data.Value := Datetostr(cData.Date);
                   EmpresasECommerce_Hora.Value := TimeToStr(cHora.Time);
          Empresas.Post;
     end;

     Janela_Processamento.Close;
     Application.ProcessMessages;

     // Importando Clientes, Pedidos e Itens.
     cLog.Items.Add('...Importação de pedidos concluída');
     Application.ProcessMessages;

     ShowMessage('Pedidos importados com sucesso da planilha ')
end;


end.




