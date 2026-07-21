unit uNFSeXMLReader;

interface

uses
  System.SysUtils,
  Xml.XMLDoc,
  Xml.XMLIntf,
  dateutils,
  uNFSeModel;

type
  TNFSeXMLReader = class
  private
    function GetNodeText(Node: IXMLNode; const Tag: string): string;
    function ToFloat(const Value: string): Double;
    function ToDateTimeSafe(const Value: string): TDate;
  public
    function LerArquivo(const ArquivoXML: string): TNFSe;
  end;

implementation

function TNFSeXMLReader.GetNodeText(Node: IXMLNode; const Tag: string): string;
var
  i: Integer;
begin
     Result := '';
     if Node = nil then Exit;
     if SameText(Node.NodeName, Tag) then Exit(Node.Text);
     for i := 0 to Node.ChildNodes.Count-1 do begin
         Result := GetNodeText(Node.ChildNodes[i], Tag);
         if Result <> '' then Exit;
     end;
end;

function TNFSeXMLReader.ToFloat(const Value: string): Double;
begin
      Result := StrToFloatDef(StringReplace(Value, '.', ',', [rfReplaceAll]),0);
end;

function TNFSeXMLReader.ToDateTimeSafe(const Value: string): TDate;
begin
     Result := 0;
     try
       Result := ISO8601ToDate(Value);
     except
     
     end;
end;

function TNFSeXMLReader.LerArquivo(const ArquivoXML: string): TNFSe;
var
  XML: IXMLDocument;
  Root, DPS, infNFSe, infDPS, Toma: IXMLNode;
begin
     Result := TNFSe.Create;

     XML := TXMLDocument.Create(nil);
     XML.LoadFromFile(ArquivoXML);
     XML.Active := True;
     
     Root    := XML.DocumentElement;
     infNFSe := Root.ChildNodes.FindNode('infNFSe');
     DPS     := infNFSe.ChildNodes.FindNode('DPS');
     infDPS  := DPS.ChildNodes.FindNode('infDPS');
     Toma    := infDPS.ChildNodes.FindNode('toma');

     // IDENTIFICAÇÃO.
     Result.Arq          := ArquivoXML;
     Result.Nota         := StrToIntDef(GetNodeText(Root, 'nNFSe'), 0);
     Result.Serie        := GetNodeText(Root, 'serie');
     Result.Estado       := GetNodeText(Root, 'UF');
     Result.Data_Emissao := ToDateTimeSafe(copy(GetNodeText(Root, 'dhProc'), 1, 10));
     
     // EMITENTE.
     Result.EmitCNPJ   := GetNodeText(Root, 'CNPJ');
     Result.EmitNome   := GetNodeText(Root, 'xNome');
     Result.EmitLogr   := GetNodeText(Root, 'xLgr');
     Result.Emitnro    := GetNodeText(Root, 'nro');
     Result.EmitBairro := GetNodeText(Root, 'xBairro');
     Result.EmitMun    := GetNodeText(Root, 'cMun');
     Result.EmitUF     := GetNodeText(Root, 'UF');
     Result.EmitCEP    := GetNodeText(Root, 'CEP');
     Result.EmitFone   := GetNodeText(Root, 'Fone');
     Result.EmitIM     := GetNodeText(Root, 'IM');
     Result.EmitEmail  := GetNodeText(Root, 'email');
     
     // PRESTADOR.
     Result.TomaCNPJ   := GetNodeText(toma, 'CNPJ');
     Result.tomaNome   := GetNodeText(toma, 'xNome');
     Result.tomaLogr   := GetNodeText(toma, 'xLgr');
     Result.tomanro    := GetNodeText(toma, 'nro');
     Result.tomaBairro := GetNodeText(toma, 'xBairro');
     Result.tomaMun    := GetNodeText(toma, 'cMun');
     Result.tomaUF     := GetNodeText(toma, 'UF');
     Result.tomaCEP    := GetNodeText(toma, 'CEP');
     Result.tomaFone   := GetNodeText(toma, 'Fone');
     Result.tomaIM     := GetNodeText(toma, 'IM');
     Result.tomaEmail  := GetNodeText(toma, 'email');

     // SERVIÇO.
     Result.Servico          := GetNodeText(Root, 'cTribNac');
     Result.CodServico       := GetNodeText(Root, 'xTribNac');
     Result.Servico_Nacional := GetNodeText(Root, 'cNBS');

     // VALORES.
     Result.Valor_TotalNota         := ToFloat(GetNodeText(Root, 'vServ'));
     Result.Valor_TotalProdutos     := ToFloat(GetNodeText(Root, 'vServ'));
     Result.Valor_TotalLiquido      := ToFloat(GetNodeText(Root, 'vLiq'));
     Result.Valor_TotalLiquidoOrig  := Result.Valor_TotalLiquido;
     Result.Valor_TotalProdutosOrig := Result.Valor_TotalProdutos;

     // TRIBUTOS.
     Result.Aliquota_ISS := ToFloat(GetNodeText(Root, 'pAliqAplic'));
     Result.Valor_ISSQN  := ToFloat(GetNodeText(Root, 'vISSQN'));
     Result.Valor_PIS    := ToFloat(GetNodeText(Root, 'vPis'));
     Result.Valor_COFINS := ToFloat(GetNodeText(Root, 'vCofins'));
     
     // IBS / CBS (Reforma tributária).
     Result.Valor_BCIBS  := ToFloat(GetNodeText(Root, 'vBC'));
     Result.Valor_BCCBS  := ToFloat(GetNodeText(Root, 'vBC'));
     Result.Perc_IBSMun  := ToFloat(GetNodeText(Root, 'pIBSMun'));
     Result.Valor_IBSMun := ToFloat(GetNodeText(Root, 'vIBSMun'));
     Result.Perc_IBSUF   := ToFloat(GetNodeText(Root, 'pIBSUF'));
     Result.Valor_IBSUF  := ToFloat(GetNodeText(Root, 'vIBSUF'));
end;



end.
