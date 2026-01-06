unit frmUtilitarios_ExportaREINF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, XMLDoc, XMLIntF, ShellApi, DateUtils,
  Vcl.ExtCtrls, NFe_util_2G_tlb, ACBrBase, ACBrDFe, ACBrReinf;

type
  TUtilitarios_ExportaREINF = class(TForm)
    cMensagens: TMemo;
    cPessoa: TRadioGroup;
    Panel1: TPanel;
    bGerar: TButton;
    bSair: TButton;
    cEvento: TComboBox;
    StaticText26: TStaticText;
    ACBrReinf1: TACBrReinf;
    procedure bGerarClick(Sender: TObject);
    procedure GerarXML;
    procedure Button2Click(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure AssinarXML(pXML: widestring);
    procedure R1000;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_ExportaREINF: TUtilitarios_ExportaREINF;

implementation

uses frmDados, Funcoes, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitarios_ExportaREINF.bGerarClick(Sender: TObject);
begin
     bGerar.Enabled := false;

     if Copy(cEvento.Text, 1,4) = 'R-1000' then R1000;

     //GerarXML;
     bGerar.Enabled := true;
end;

procedure TUtilitarios_ExportaREINF.R1000;
var
   mXML:widestring;
begin
     //mXML := REINF.
end;

procedure TUtilitarios_ExportaREINF.GerarXML;
var
    vXMLDoc: TXMLDocument;
    nHeader,
    nBody,
    nLote,
    nEventos,
    nReinf,
    nContr,
    nContato,
    nSoft,
    //nSignature,
    //nReference,
    //nTransform,
    nInfoContri:IXMLNode;
    mID:string;
begin

  vXMLDoc := TXMLDocument.Create(self);
  try
      with vXMLDoc, Dados do begin
           Active   := True;
           Version  := '1.0';
           Encoding := 'UTF-8';

           AddChild('soapenv:Envelope','http://schemas.xmlsoap.org/soap/envelope/');

           // Cabeçalho.
           nHeader := DocumentElement;
           nHeader.AddChild('Header');

           // Corpo.
           nBody    := nHeader.ChildNodes['Body'];
           nreinf   := nBody.AddChild('Reinf', 'http://www.reinf.esocial.gov.br/schemas/envioLoteEventos/v1_01_01');
           nEventos := nReinf.AddChild('loteEventos');

           mID := 'ID'+                                                                       // Fixo.
                  '1'+                                                                        // 1= CNPJ | 2 = CPF.
                  Copy(EmpresasCNPJ.Value, 1, 8)+'000000'+                                    // CNPJ (Oito primeiras posições).
                  PoeZero(4,YearOf(Date))+PoeZero(2, MonthOf(Date))+PoeZero(2, DayOf(Date))+  // Ano mês e dia de geração do envento.
                  RemoveCaracter(':', '', TimetoStr(Time))+                                   // Hora Minuto e segundo de geração do evento.
                  '00001';                                                                    // Número sequencial.

           nEventos.ChildNodes['evento'].Attributes['id'] := mID;
           
           nLote  := nEventos.AddChild('Reinf', 'http://www.reinf.esocial.gov.br/schemas/evtInfoContribuinte/v1_01_01');
           nContr := nLote.AddChild('evtInfoContri');
           nContr.Attributes['id'] := mID;

           nContr.ChildNodes['ideEvento'].AddChild('tpAmb').NodeValue   := '3';                               // Tipo de Ambiente.
           nContr.ChildNodes['ideEvento'].AddChild('procEmi').NodeValue := '1';                               // 1-Aplicativo contribuinte/2-Governamental.
           nContr.ChildNodes['ideEvento'].AddChild('verProc').NodeValue := VersaoEXE(Application.ExeName);    // Versão do sistema.

           nContr.ChildNodes['ideContri'].AddChild('tpInsc').NodeValue  := '1';                               // Tipo de inscrição CNPJ/CPF.
           nContr.ChildNodes['ideContri'].AddChild('nrInsc').NodeValue  := Copy(EmpresasCNPJ.AsString, 1, 8); // CNPJ da empresa.

           nInfoContri := nContr.AddChild('infoContri');
           nInfoContri.ChildNodes['inclusao'].AddChild('idePeriodo').AddChild('iniValid').NodeValue := Poezero(4, Yearof(Date))+'-'+PoeZero(2, Monthof(Date));

           nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('classTrib').NodeValue          := EmpresasClassificacao_Tributaria.AsString;
           nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('indEscrituracao').NodeValue    := EmpresasObrigada_ECD.AsString;
           nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('indDesoneracao').NodeValue     := EmpresasDesoneracao_Folha.AsString;
           nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('indAcordoIsenMulta').NodeValue := EmpresasIsencao_Multa.AsString;
           nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('indSitPJ').NodeValue           := InttoStr(cPessoa.ItemIndex);

           nContato := nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('contato');
           nContato.AddChild('nmCtt').NodeValue    := EmpresasResponsavel.AsString;
           nContato.AddChild('cpfCtt').NodeValue   := EmpresasResponsavel_CPF.AsString;
           nContato.AddChild('foneFixo').NodeValue := EmpresasTelefone1.AsString;
           nContato.AddChild('foneCel').NodeValue  := EmpresasTelefone2.AsString;
           nContato.AddChild('email').NodeValue    := EmpresasEmail.AsString;

           nSoft := nInfoContri.ChildNodes['inclusao'].ChildNodes['infoCadastro'].AddChild('softHouse');
           nSoft.AddChild('cnpjSoftHouse').NodeValue := '11222897000114';
           nSoft.AddChild('nmRazao').NodeValue       := 'CYBERSOFT SISTEMAS LTDA';
           nSoft.AddChild('nmCont').NodeValue        := 'EDER ADÃO FERREIRA BONFIM';
           nSoft.AddChild('telefone').NodeValue      := '027981711991';
           nSoft.AddChild('email').NodeValue         := 'eder@cybersoftsistemas.com.br';
           {
           nSignature := nLote.AddChild('signature', 'http://www.w3.org/2000/09/xmldsig#');
           nSignature.ChildNodes['SignedInfo'].ChildNodes['CanonicalizationMethod'].Attributes['Algorithm'] := 'http://www.w3.org/TR/2001/REC-xml-c14n-20010315';
           nSignature.ChildNodes['SignedInfo'].ChildNodes['SignatureMethod'].Attributes['Algorithm']        := 'Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"';

           nReference := nSignature.ChildNodes['SignedInfo'].ChildNodes['Reference'];
           nReference.Attributes['URI'] := '#ID1998887770001002017100412475100001';

           nTransform := nReference.ChildNodes['Transforms'].ChildNodes['Transform'];
           nTransform.Attributes['Algorithm'] := 'http://www.w3.org/2000/09/xmldsig#enveloped-signature';
           nTransform := nReference.ChildNodes['Transforms'].AddChild('Transform');
           nTransform.Attributes['Algorithm'] := 'Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"';
           nTransform := nReference.ChildNodes['Transforms'].ChildNodes['DigestMethod'];
           nTransform.Attributes['Algorithm'] := 'http://www.w3.org/2001/04/xmlenc#sha256';
           nTransform := nReference.ChildNodes['Transforms'];
           nTransform.AddChild('DigestValue').NodeValue := '[...]';
           nSignature.ChildNodes['SignatureValue'].NodeValue := '[...]';

           nSignature.ChildNodes['KeyInfo'].ChildNodes['X509Data'].ChildNodes['X509Certificate'].NodeValue := '[...]';
{

           DocumentElement.AttributeNodes['soapenv:Header'];
           DocumentElement.AttributeNodes['soapenv:Body'];

           // Adiciona a Tag
           NodeNivelA.ChildNodes['infNFe'].Attributes['Id'] := 'NFe31232131232132131231221312312312';
           // Adiciona atributo "Id" da Tag anterior
           {
           DocumentElement.Attributes['xmlns:ds']           := 'http://www.w3.org/2000/09/xmldsig#';
           DocumentElement.Attributes['xmlns:xsi']          := 'http://www.w3.org/2001/XMLSchema-instance';
           DocumentElement.Attributes['xsi:schemaLocation'] := 'http://www.portalfiscal.inf.br/nfe/enviNFe_v1.12.xsd';
           }

      {
           // A - Dados da Nota Fiscal eletrônica
           NodeNivelA := DocumentElement;
           // Adiciona a Tag
           NodeNivelA.AddChild('infNFe');
           // Adiciona atributo "Id" da Tag anterior
           NodeNivelA.ChildNodes['infNFe'].Attributes['Id'] := 'NFe31232131232132131231221312312312';
           // Adiciona atributo "versao" da Tag anterior
           //NodeNivelA.ChildNodes['infNFe'].Attributes['versao'] := DM.ClientDSLoja.FieldByName('enviNFe').AsString;

           // B - Identificação da Nota Fiscal eletrônica
           NodeNivelB := NodeNivelA.ChildNodes['infNFe'];
           NodeNivelB.ChildNodes['ide'].AddChild('cUF').NodeValue := '51' ;
           NodeNivelB.ChildNodes['ide'].AddChild('cNF').NodeValue := '000001';
       }
           //Memo1.Lines.Add(vXMLDoc.XML.Text);
           //AssinarXML(vXMLDoc.XML.Text);
           vXMLDoc.SaveToFile('C:\temp\REINF.xml');
           ShellExecute(Handle, 'Open', PChar('c:\temp\REINF.xml'), '', '', SW_ShowNormal);
{
<?xml version="1.0" encoding="UTF-8"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns1="http://sped.fazenda.gov.br/">
<SOAP-ENV:Body>
<Reinf xmlns="http://www.reinf.esocial.gov.br/schemas/envioLoteEventos/v1_02_00" xmlns:ns1="http://www.w3.org/2001/XMLSchema-instance" xmlnssd="http://www.w3.org/2001/XMLSchema">
  <loteEventos>
    <evento id="ID1820276750000002017100118203000001">  
      <Reinf xmlns="http://www.reinf.esocial.gov.br/schemas/evtInfoContribuinte/v1_02_00">  
        <evtInfoContri id="ID1820276750000002017100118203000001">  
         <ideEvento>
      <tpAmb>3</tpAmb>
      <procEmi>1</procEmi>    
      <verProc>v1.0</verProc>    
    </ideEvento>
    <ideContri>    
      <tpInsc>1</tpInsc>    
      <nrInsc>82027675</nrInsc>    
    </ideContri>    
    <infoContri>    
      <inclusao>    
        <idePeriodo>    
          <iniValid>2017-10</iniValid>    
          <fimValid></fimValid>    
        </idePeriodo>    
        <infoCadastro>    
          <classTrib>99</classTrib>    
          <indEscrituracao>1</indEscrituracao>    
          <indDesoneracao>0</indDesoneracao>    
          <indAcordoIsenMulta>0</indAcordoIsenMulta>    
          <indSitPJ>0</indSitPJ>    
          <contato>    
            <nmCtt>Pessoa Teste 2</nmCtt>    
            <cpfCtt>71619433885</cpfCtt>    
            <foneFixo>1833333333</foneFixo>    
            <foneCel>18999999999</foneCel>
            <email>exemplo2@exemplo.com.br</email>    
          </contato>
          <softHouse>    
            <cnpjSoftHouse>19999999999999</cnpjSoftHouse>    
            <nmRazao>EMPRESA DEMONSTRACAO</nmRazao>    
            <nmCont>Pessoa Teste</nmCont>    
            <telefone>1133333333</telefone>    
            <email>exemplo@exemplo.com.br</email>    
          </softHouse>      
        </infoCadastro>
      </inclusao>    
    </infoContri>  
       </evtInfoContri>  
        <Signature xmlns="http://www.w3.org/2000/09/xmldsig#">  
          <SignedInfo>  
            <CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" />  
            <SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256" />  
            <Reference URI="#ID1820276750000002017100118203000001">  
              <Transforms>  
                <Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" />  
                <Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" />  
              </Transforms>  
              <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256" />  
              <DigestValue>...............</DigestValue>  
            </Reference>  
          </SignedInfo>  
        <SignatureValue>.....................</SignatureValue>  
          <KeyInfo>  
            <X509Data>  
                <X509Certificate>...................................</X509Certificate>  
            </X509Data>  
          </KeyInfo>  
        </Signature>
      </Reinf>  
    </evento>  
  </loteEventos>  
</Reinf>
</SOAP-ENV:Body>  
</SOAP-ENV:Envelope>
}
      end;
  finally
      vXMLDoc.Free;
  end;
end;

procedure TUtilitarios_ExportaREINF.Button2Click(Sender: TObject);
var
  XMLDocument: TXMLDocument;
  NodeTabela, NodeRegistro, NodeEndereco: IXMLNode;
  I: Integer;
begin
    XMLDocument := TXMLDocument.Create(Self);
    try
       XMLDocument.Active := True;
       NodeTabela := XMLDocument.AddChild('Pessoa');
       for I := 1 to 5 do begin
           NodeRegistro                           := NodeTabela.AddChild('Registro');
           NodeRegistro.ChildValues['Id']         := I;
           NodeRegistro.ChildValues['Codigo']     := I * I;
           NodeRegistro.ChildValues['Nome']       := 'NOME ' + IntToStr(I);
           NodeEndereco                           := NodeRegistro.AddChild('Endereco');
           NodeEndereco.ChildValues['Logradouro'] := Format('RUA %d', [I]);
           NodeEndereco.ChildValues['Numero']     := I * 1000;
       end;
       XMLDocument.SaveToFile('C:\TEmp\Teste_XML.xml');
       ShellExecute(Handle, 'Open', PChar('c:\temp\Teste_XML.xml'), '', '', SW_ShowNormal);
    finally
       XMLDocument.Free;
    end;

end;

procedure TUtilitarios_ExportaREINF.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_ExportaREINF.FormShow(Sender: TObject);
begin
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;
      end;
end;

// Rotina de assinatura da NFe usando o certificado selecionado na empresa.
procedure TUtilitarios_ExportaREINF.AssinarXML(pXML: widestring);
var
    Util: NFe_Util_2G_Interface;
    MemoAssinado: TMemo;
    Assinado,
    MsgResult,
    NomeCert:widestring;
    mResult:integer;
begin

pXML := '<?xml version="1.0" encoding="UTF-8" ?>'
+'<enviNFe versao="2.00" xmlns="http://www.portalfiscal.inf.br/nfe">'
+'   <idLote>71</idLote>'
+'   <NFe>'
+'      <infNFe Id="NFe3508059978" versao="2.00">'
+'         <cUF>35</cUF>'
+'         <cNF>518005127</cNF>'
+'         <natOp>Venda a vista</natOp>'
+'         <mod>55</mod>'
+'         <serie>1</serie>'
+'         <dEmi>2012-05-06</dEmi>'
+'         <tpAmb>2</tpAmb>'
+'      </infNFe>'
+'   </NFe>'
+'</enviNFe>';


      with Dados do begin
           Util                 := CoUtil.Create;
           NomeCert             := Trim(EmpresasCertificado_Digital.AsString);
           MemoAssinado         := TMemo.Create(Utilitarios_ExportaREINF);
           MemoAssinado.Visible := False;
           MemoAssinado.Parent  := Utilitarios_ExportaREINF;

           Assinado := Util.Assinar(pXML, 'infoContri', NomeCert, mResult, MsgResult);

           cMensagens.Lines.Add( 'Erro  : '+inttostr(mResult)+' -->'+MsgResultado);
           cMensagens.Lines.Add('======================================================================');
cMensagens.Clear;
cMensagens.Lines.add(Assinado);
           MemoAssinado.Text := Assinado;
           MemoAssinado.Lines.SaveToFile('c:\TEMP\REINF_Assinado.XML');
           Util := nil;
      end;
End;


end.
