unit frmPedido_ServicoXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxToolEdit, Vcl.Mask, Vcl.DBCtrls, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, Data.DB, MemDS, DBAccess, MSAccess;

type
  TPedido_ServicoXML = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    XMLDoc: TXMLDocument;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    StaticText57: TStaticText;
    cReferencia: TDBLookupComboBox;
    cCentroCusto: TDBLookupComboBox;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    cNotas: TListBox;
    Panel3: TPanel;
    cDados: TMemo;
    cProcesso: TDBLookupComboBox;
    tmp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure CarregaXML(Arq: string);
    { Private declarations }
  public
    { Public declarations }
    mNotas: string;
  end;

var
  Pedido_ServicoXML: TPedido_ServicoXML;

implementation

{$R *.dfm}

uses frmDados, frmDMFiscal, Funcoes;

procedure TPedido_ServicoXML.bImportarClick(Sender: TObject);
var 
  i:integer;
begin
     mNotas := '';
     if trim(cReferencia.text) = '' then begin 
        MessageDlg('É preciso informar a "Referência Fiscal"', mtError, [mbok], 0);
        abort;
     end;
     if messageDlg('Deseja realmente importar essas notas?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
     for i := 0 to pred(cNotas.count) do begin
         carregaXML(cNotas.Items[i]);
     end;
     if mNotas = '' then
        showmessage('Processo de importação das notas terminado.')
     else   
        showmessage('Processo de importação das notas terminado, mas com erros nas seguintes notas '+#13+#13+mNotas+#13+#13+'Essas notas fiscais não foram importadas.');
end;

procedure TPedido_ServicoXML.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TPedido_ServicoXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with Dados, Clientes do begin
          sql.Clear;
          close;
          sql.add('select * from Clientes where Ativo = 1');
          open;
     end;

     LimpaMemoria;
     Pedido_ServicoXML.Release;
     Pedido_ServicoXML := nil;
end;

procedure TPedido_ServicoXML.FormCreate(Sender: TObject);
begin
    cDados.Clear;
end;

// Layout do municipio da SERRA(ES).
procedure TPedido_ServicoXML.CarregaXML(Arq: string);
var
   mNumero
  ,mDtEmi
  ,mDesc
  ,mValServ
  ,mAliqISS
  ,mValISS
  ,mValNota
  ,mToma
  ,mPresta
  ,mArq: string;
   l, ult, i, maxNivel, Nivel:integer;
   mPai,mDeclaracao, mValores, mTomador, mPrestador: IXMLNode;
begin
     //cDados.Clear;
     i := 0;
     l := 0;
     with XMLDoc do begin
          LoadFromFile(Arq);
          Active      := True;
          mPai        := DocumentElement.ChildNodes.FindNode('ListaNfse');
          mDeclaracao := mPai.ChildNodes.FindNode('CompNfse');
          mDeclaracao := mDeclaracao.ChildNodes.FindNode('Nfse');
          mDeclaracao := mDeclaracao.ChildNodes.FindNode('InfNfse');
          mValores    := mDeclaracao.ChildNodes.FindNode('ValoresNfse');

          mTomador := mDeclaracao.ChildNodes.FindNode('DeclaracaoPrestacaoServico');
          mTomador := mTomador.ChildNodes.FindNode('InfDeclaracaoPrestacaoServico');
          mTomador := mTomador.ChildNodes.FindNode('TomadorServico');
          mTomador := mTomador.ChildNodes.FindNode('IdentificacaoTomador').ChildNodes.FindNode('CpfCnpj');
          mToma    := mTomador.ChildNodes.FindNode('Cnpj').text;

          mPrestador := mDeclaracao.ChildNodes.FindNode('DeclaracaoPrestacaoServico');
          mPrestador := mPrestador.ChildNodes.FindNode('InfDeclaracaoPrestacaoServico');
          mPrestador := mPrestador.ChildNodes.FindNode('Prestador');
          mPrestador := mPrestador.ChildNodes.FindNode('CpfCnpj');
          mPresta    := ApenasNumeros(mPrestador.ChildNodes.FindNode('Cnpj').text);

          mNumero     := mDeclaracao.ChildNodes.FindNode('Numero').Text;
          mDtEmi      := mDeclaracao.ChildNodes.FindNode('DataEmissao').Text;
          mDtEmi      := mDeclaracao.ChildNodes.FindNode('DataEmissao').Text;
          mDeclaracao := mDeclaracao.ChildNodes.FindNode('DeclaracaoPrestacaoServico');
          mDeclaracao := mDeclaracao.ChildNodes.FindNode('InfDeclaracaoPrestacaoServico');
          mDeclaracao := mDeclaracao.ChildNodes.FindNode('Servico');
          mDesc       := mDeclaracao.ChildNodes.FindNode('Discriminacao').Text;

          mDeclaracao := mDeclaracao.ChildNodes.FindNode('Valores');
          mValServ    := mDeclaracao.ChildNodes.FindNode('ValorServicos').Text;
          mAliqISS    := mDeclaracao.ChildNodes.FindNode('Aliquota').Text;
          mValIss     := mDeclaracao.ChildNodes.FindNode('ValorIss').Text;

          mValNota := mValores.ChildNodes.FindNode('ValorLiquidoNfse').Text;

          mDtEmi := copy(mDtEmi,9,2)+'/'+copy(mDtEmi,6,2)+'/'+copy(mDtEmi,1,4);
          
          with dmFiscal, Dados do begin
               if mPresta <> Empresas.FieldByName('CNPJ').asstring then begin
                  cDados.Lines.Add('CNPJ DA NOTA FISCAL << '+mNumero+' >> não foi emitida pelo CNPJ atual: '+mPresta);
               end;
               with Clientes do begin
                    sql.Clear;
                    sql.add('select * from Clientes where CNPJ = '+quotedstr(ApenasNumeros(mToma)));
                    open;
               end;
               
               Servicos.Locate('Codigo', ReferenciasFiscaisServico.AsString, [loCaseInsensitive]);
               
               if Clientes.RecordCount > 0 then begin
                  with cDados.lines do begin
                       add('Nota Nº.............: '+mNumero);
                       add('Emissão.............: '+mDtEmi);
                       add('Referência Fiscal...: '+ReferenciasFiscaisCodigo.AsString+' - '+ReferenciasFiscaisDescricao.AsString);
                       add('Centro de Custo.....: '+CentroCustoCodigo.AsString+' - '+CentroCustoDescricao.AsString);
                       add('Processo............: '+ProcessosDOCProcesso.AsString+ ' - ' + ProcessosDOCNumero_Declaracao.AsString) ;
                       add('Cliente.............: '+mToma + '  '+ClientesCodigo.AsString+' - '+ClientesNome.AsString); 
                       add('Descrição do Serviço: '+mDesc);
                       add('Valor Serviço.......: R$ '+ mValServ);
                       add('Aliquota do ISS.....: '+ mAliqISS+'%');
                       add('Valor do ISS........: R$ '+ mValISS);
                       add('Valor Total da Nota.: R$ '+ mValNota);
                       add('Tomador do Serviço..: CNPJ '+ mToma);
                       add(replicate('=', 100));
                  end;
                  with NotasServico do begin
                       with tmp do begin 
                            sql.Clear;
                            sql.Add('delete from NotasServico where Numero = :pNumero and Data_Emissao = :pEmi and Cliente = :pCli');
                            parambyname('pNumero').Value := strtoint(mNumero);
                            parambyname('pEmi').Value    := strtodate(mdtEmi);
                            parambyname('pCli').Value    := ClientesCodigo.AsInteger;
                            execute;
                       end;
                       append;
                            fieldbyname('Numero').Value            := strtoint(mNumero);
                            fieldbyname('Data_Emissao').Value      := strtodate(mDtEmi);
                            fieldbyname('Referencia_Fiscal').Value := ReferenciasFiscaisCodigo.AsInteger;
                            fieldbyname('Modelo').Value            := Empresas.FieldByName('NFServico_Modelo').Value;
                            fieldbyname('Serie').Value             := Empresas.FieldByName('NFServico_Serie').Value;
                            fieldbyname('Processo').Value          := cProcesso.Text;
                            fieldbyname('Cliente').Value           := ClientesCodigo.AsInteger;
                            fieldbyname('Servico').Value           := ReferenciasFiscaisServico.value;
                            fieldbyname('Natureza_Operacao').Value := iif(ClientesEstado.Value = EmpresasEstado.Value, ReferenciasFiscaisNatureza_Dentro.Value, ReferenciasFiscaisNatureza_Fora.Value);
                            fieldbyname('Aliquota_ISS').Value      := strtofloat(stringreplace(mAliqISS, '.', ',', [rfReplaceAll]));
                            fieldbyname('Valor_ISS').Value         := strtoCurr(stringreplace(mValISS, '.', ',', [rfReplaceAll]));
                            fieldbyname('Valor_Servico').Value     := strtoCurr(stringreplace(mValServ, '.', ',', [rfReplaceAll]));
                            fieldbyname('Total_Servicos').Value    := strtoCurr(stringreplace(mValServ, '.', ',', [rfReplaceAll]));
                            fieldbyname('Total_Nota').Value        := strtoCurr(stringreplace(mValNota, '.', ',', [rfReplaceAll]));
                            fieldbyname('Descricao_Servico').Value := mDesc;
                            fieldbyname('Referencia_Fiscal').Value := ReferenciasFiscaisCodigo.value;
                            fieldbyname('Observacao').Value        := mDesc;
                            fieldbyname('Aliquota_PIS').Value      := ServicosAliquota_PIS.Value;
                            fieldbyname('Aliquota_COFINS').Value   := ServicosAliquota_COFINS.Value;
                            fieldbyname('Cancelada').Value         := false;
                            fieldbyname('Total_Dedutiveis').Value  := 0;
                      post;
                  end;
               end else begin
                  mNotas := mNotas + mNumero +',';
                  cDados.Lines.Add('ERRO NA NOTA FISCAL '+mNumero+' << CLIENTE NÃO ENCONTRADO >>')
               end;
          end;
     end;
end;



end.
