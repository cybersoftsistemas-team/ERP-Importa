unit frmNotaFiscal_ServicoXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, XSBuiltIns, Math, system.UITypes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Vcl.StdCtrls, Xml.XMLDoc, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, Vcl.DBCtrls, Xml.Win.msxmldom, VirtualTable, ACBrBase,
  ACBrSocket, ACBrConsultaCNPJ, Vcl.Mask, RxToolEdit, RxDBCtrl, Vcl.Buttons;

type
  TNotaFiscal_ServicoXML = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    XMLDocument1: TXMLDocument;
    tTmp: TMSQuery;
    cArqXML: TOpenDialog;
    Panel2: TPanel;
    cMuni: TDBLookupComboBox;
    XMLDoc: TXMLDocument;
    LayOut: TMSQuery;
    tNotas: TVirtualTable;
    dstNotas: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cLog: TMemo;
    cArquivos: TListBox;
    DBGrid1: TDBGrid;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    cProc: TDBLookupComboBox;
    StaticText3: TStaticText;
    cNavio: TDBLookupComboBox;
    tForn: TVirtualTable;
    dstForn: TDataSource;
    DBGrid2: TDBGrid;
    oCNPJ: TACBrConsultaCNPJ;
    bImportar: TButton;
    StaticText13: TStaticText;
    cDataEnt: TDateEdit;
    bCarregar: TSpeedButton;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cMuniClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bCarregarClick(Sender: TObject);
    procedure cProcClick(Sender: TObject);
  private
    { Private declarations }
    procedure GenereteTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
    procedure AbreXML(pXML: string);
//    procedure Mun2611606;
//    procedure Mun3543402;
    procedure CarregaNotas;
    procedure CarregaDados(Arquivo: string);
    procedure ConsultaCNPJ(pCNPJ: string);
  public
    { Public declarations }
    mErro:boolean;
  end;

var
  NotaFiscal_ServicoXML: TNotaFiscal_ServicoXML;

implementation

{$R *.dfm}

uses FUNCOES, frmDMFiscal, frmDados, frmUtilitarios_Importar_NFe_Terceiros;

{ TNotaFiscal_ServicoXML }

procedure TNotaFiscal_ServicoXML.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TNotaFiscal_ServicoXML.cMuniClick(Sender: TObject);
begin
     bCarregar.Enabled := cMuni.Text <> '';
     with LayOut do begin
          sql.clear;
          sql.add('select * from LayOutNFS where Municipio = :pMuni');
          parambyname('pMuni').value := Dados.Municipios.FieldByName('Codigo').value;
          open;
     end;
end;

procedure TNotaFiscal_ServicoXML.bImportarClick(Sender: TObject);
begin
     // Cadastrando os fornecedores não encontrados.
     with Dados do begin
          with tForn do begin
               first;
               while not eof do begin
                     if fieldbyname('Codigo').AsInteger = 0 then begin
                        with tTmp do begin
                             sql.Clear;
                             sql.Add('select isnull(max(Codigo), 0)+1 as Cod from Fornecedores');
                             open;
                        end;
                        Estados.locate('Codigo', tForn.fieldbyname('Estado').AsString, [loCaseInsensitive]);
                        Municipios.locate('Codigo', tForn.fieldbyname('Municipio_Codigo').AsString, [loCaseInsensitive]);
                        with Fornecedores do begin
                             if not locate('CNPJ', tForn.fieldbyname('CNPJ').asstring, [loCaseInsensitive]) then begin
                                append;
                                      fieldbyname('Codigo').value              := tTmp.fieldbyname('Cod').asInteger;
                                      fieldbyname('CNPJ').value                := apenasnumeros(tForn.fieldbyname('CNPJ').asstring);
                                      fieldbyname('Inscricao_Municipal').value := apenasnumeros(tForn.fieldbyname('Inscricao_Estadual').asstring);
                                      fieldbyname('Nome').value                := tForn.fieldbyname('Nome').asstring;
                                      fieldbyname('Rua').value                 := tForn.fieldbyname('Rua').asstring;
                                      fieldbyname('Rua_Numero').value          := tForn.fieldbyname('Rua_Numero').asstring;
                                      fieldbyname('Bairro').value              := tForn.fieldbyname('Bairro').asstring;
                                      fieldbyname('Estado').value              := tForn.fieldbyname('Estado').asstring;
                                      fieldbyname('Estado_Nome').value         := Estados.fieldbyname('Nome').asstring;
                                      fieldbyname('Municipio').value           := Municipios.fieldbyname('Nome').asstring;
                                      fieldbyname('Municipio_Codigo').value    := tForn.fieldbyname('Municipio_Codigo').asinteger;
                                      fieldbyname('Estado').value              := tForn.fieldbyname('Estado').asstring;
                                      fieldbyname('CEP').value                 := apenasnumeros(tForn.fieldbyname('CEP').asstring);
                                      fieldbyname('Telefone1').value           := apenasnumeros(tForn.fieldbyname('Telefone1').asstring);
                                      fieldbyname('Email').value               := tForn.fieldbyname('Email').asstring;
                                      fieldbyname('Ativo').value               :=  1;
                                      fieldbyname('Pais').value                :=  '1058';
                                      fieldbyname('Ramo_Atividade').value      :=  7;
                                      fieldbyname('Indicador_IE').value        :=  9;
                                      fieldbyname('Isento').value              :=  tForn.fieldbyname('Isento').asboolean;
                                      fieldbyname('Zona_Franca').value         :=  0;
                                      fieldbyname('Simples').value             :=  0;
                                      fieldbyname('MEI').value                 :=  0;
                                      fieldbyname('Micro_Empresa').value       :=  0;
                                post;
                             end;
                        end;
                        edit;
                           fieldbyname('Codigo').value := tTmp.fieldbyname('Cod').asInteger;
                        post;
                     end;
                     next;
               end;
          end;
     end;
     MessageDlg('Notas Fiscais de serviço importadas com sucesso!', mtinformation, [mbok], 0);
end;

procedure TNotaFiscal_ServicoXML.CarregaNotas;
var
   i:integer;
begin
     tNotas.open;
     tNotas.Clear;
     tForn.Open;
     tForn.Clear;
     cArquivos.SelectAll;
     for i := 0 to pred(cArquivos.Items.Count) do begin
         CarregaDados(cArquivos.Items[i]);
         cLog.lines.add('');
         cArquivos.Selected[i] := false;
         Application.ProcessMessages;
     end;
     tNotas.Refresh;
     tForn.Refresh;
     bImportar.Enabled := not mErro;
end;

procedure TNotaFiscal_ServicoXML.CarregaDados(Arquivo: string);
var
   mVal, mCampo, mCFOP: string;
   Nivel:integer;
   Pai, Filho: IXMLNode;
   mValPIS, mValCofins, mValIR, mValCSLL:real;
begin
     with Dados do begin
          try
              XMLDoc.LoadFromFile(Arquivo);
              XMLDoc.Active := True;
              tForn.append;
              tNotas.append;
                     with LayOut do begin
                          Pai := XMLDoc.DocumentElement.ChildNodes.FindNode(LayOut.fieldbyname('Node02').asstring);
                          first;
                          while not eof do begin
                                Filho := Pai;
                                for Nivel := 4 to 16 do begin
                                    if trim(Fields[Nivel].AsString) <> '' then begin
                                       Filho := Filho.ChildNodes.FindNode(Fields[Nivel].AsString);
                                    end else begin
                                       break;
                                    end;
                                end;
                                Dec(Nivel);
                                mVal := Filho.Text;
                                cLog.lines.add(concat(fieldbyname('Campo_Tabela').asstring, StringOfChar('.',30-Length(fieldbyname('Campo_Tabela').asstring)), Fields[Nivel].asstring, StringOfChar('.',30-Length(Fields[Nivel].asstring)),': ', mval) );

                                // Salva a nota no banco de dados - Capa da Nota.
                                // Dados da Nota fiscal.
                                mCampo := LayOut.fieldbyname('Campo_Tabela').asstring;
                                if copy(mCampo,1,6) <> '_Forn_' then begin
                                   with tNotas do begin
                                        try
                                            if fieldbyname(mCampo).DataType = ftString   then fieldbyname(mCampo).value := mval;
                                            if fieldbyname(mCampo).DataType = ftInteger  then fieldbyname(mCampo).value := strtoint(mval);
                                            if fieldbyname(mCampo).DataType = ftSmallint then fieldbyname(mCampo).value := strtoint(mval);
                                            if fieldbyname(mCampo).DataType = ftDateTime then fieldbyname(mCampo).value := strtoDatetime(copy(mVal, 9, 2)+'/'+Copy(mVal, 6,2)+'/'+Copy(mVal,1,4));
                                            if fieldbyname(mCampo).DataType = ftBoolean  then fieldbyname(mCampo).value := strtobool(mval);
                                            if fieldbyname(mCampo).DataType = ftCurrency then fieldbyname(mCampo).value := strtocurr(stringreplace(mval,'.',',', [rfReplaceAll]));
                                            if fieldbyname(mCampo).DataType = ftFloat    then fieldbyname(mCampo).value := strtofloat(stringreplace(mval,'.',',', [rfReplaceAll]));
                                            if fieldbyname(mCampo).DataType = ftMemo     then fieldbyname(mCampo).value := mVal;
                                        except on E: Exception do begin
                                               cLog.lines.add('    » ERRO: CAMPO DA NF: '+E.Message);
                                               mErro := true;
                                            end;
                                        end;
                                   end;
                                end else begin
                                   // Dados do Fornecedor.
                                   with tForn do begin
                                        mCampo := StringReplace(mCampo, '_Forn_','', [rfReplaceAll]);
                                        if mCampo = 'CNPJ' then begin
                                           with tTmp do begin
                                                sql.Clear;
                                                sql.Add('select * from Fornecedores where CNPJ = :pCNPJ');
                                                parambyname('pCNPJ').Value := mVal;
                                                open;
                                           end;
                                           if tTmp.recordcount > 0 then begin
                                              fieldbyname('Nome').value   := tTmp.FieldByName('Nome').asstring;
                                              fieldbyname('Codigo').value := tTmp.FieldByName('Codigo').asinteger;
                                           end else begin
                                              ConsultaCNPJ(mVal);
                                           end;
                                        end;
                                        try
                                            if fieldbyname(mCampo).DataType = ftString   then fieldbyname(mCampo).value := mval;
                                            if fieldbyname(mCampo).DataType = ftInteger  then fieldbyname(mCampo).value := strtoint(mval);
                                            if fieldbyname(mCampo).DataType = ftSmallint then fieldbyname(mCampo).value := strtoint(mval);
                                            if fieldbyname(mCampo).DataType = ftDateTime then fieldbyname(mCampo).value := strtoDatetime(copy(mVal, 9, 2)+'/'+Copy(mVal, 6,2)+'/'+Copy(mVal,1,4));
                                            if fieldbyname(mCampo).DataType = ftBoolean  then fieldbyname(mCampo).value := strtobool(mval);
                                            if fieldbyname(mCampo).DataType = ftCurrency then fieldbyname(mCampo).value := strtocurr(stringreplace(mval,'.',',', [rfReplaceAll]));
                                            if fieldbyname(mCampo).DataType = ftFloat    then fieldbyname(mCampo).value := strtofloat(stringreplace(mval,'.',',', [rfReplaceAll]));
                                            if fieldbyname(mCampo).DataType = ftMemo     then fieldbyname(mCampo).value := mVal;
                                        except on E: Exception do
                                            begin
                                                cLog.lines.add('     » ERRO: CAMPO DO FORNECEDOR: '+E.Message);
                                                mErro := true;
                                            end;
                                        end;
                                        fieldbyname('Pais').value := '1058';
                                   end;
                                end;
                                next;
                                Filho := nil;
                          end;
                          with Dados, dmFiscal, tNotas do begin
                               // Pegando a referência fiscal.
                               if ReferenciasFiscais.locate('Servico', ApenasNumeros(fieldbyname('Servico').asstring), [loCaseInsensitive]) then begin
                                  fieldbyname('Referencia_Fiscal').value := ReferenciasFiscaisCodigo.AsInteger;
                               end else begin
                                  cLog.lines.add('');
                                  cLog.lines.add('     » ERRO: REFERÊNCIA FISCAL NÃO ENCONTRADA.');
                                  mErro := true;
                                  tNotas.Delete;
                                  Abort;
                               end;
                               if Servicos.locate('Codigo', fieldbyname('Servico').AsString, [loCaseInsensitive]) then begin
                                  fieldbyname('Codigo_Adicional01').value   := iif(FieldByName('Valor_PIS').AsCurrency > 0, Servicos.FieldByName('PIS_Recolher').AsString, null);
                                  fieldbyname('Aliquota_Adicional01').value := 0;
                                  fieldbyname('Valor_Adicional01').value    := FieldByName('Valor_PIS').AsCurrency ;
                                  fieldbyname('Codigo_Adicional02').value   := iif(FieldByName('Valor_COFINS').AsCurrency > 0, Servicos.FieldByName('COFINS_Recolher').AsString, null);
                                  fieldbyname('Aliquota_Adicional02').value := 0;
                                  fieldbyname('Valor_Adicional02').value    := FieldByName('Valor_COFINS').AsCurrency;
                                  fieldbyname('Codigo_Adicional03').value   := iif(FieldByName('Valor_IR').AsCurrency > 0, Servicos.FieldByName('IR_Recolher').AsString, null);
                                  fieldbyname('Aliquota_Adicional03').value := 0;
                                  fieldbyname('Valor_Adicional03').value    := FieldByName('Valor_IR').AsCurrency;
                                  fieldbyname('Codigo_Adicional04').value   := iif(FieldByName('Valor_CSLL').AsCurrency > 0, Servicos.FieldByName('CSLL_Recolher').AsString, null);
                                  fieldbyname('Aliquota_Adicional04').value := 0;
                                  fieldbyname('Valor_Adicional04').value    := FieldByName('Valor_PIS').AsCurrency;
                                  fieldbyname('Codigo_Adicional05').value   := iif(FieldByName('Valor_INSS').AsCurrency > 0, Servicos.FieldByName('INSS_Recolher').AsString, null);
                                  fieldbyname('Aliquota_Adicional05').value := 0;
                                  fieldbyname('Valor_Adicional05').value    := FieldByName('Valor_INSS').AsCurrency;
                               end;
                               if fieldbyname('Aliquota_ISS').asfloat < 0.10 then fieldbyname('Aliquota_ISS').asfloat := fieldbyname('Aliquota_ISS').asfloat * 100;

                               mCFOP := iif(tForn.fieldbyname('Estado').asstring = EmpresasEstado.AsString, ReferenciasFiscaisNatureza_Dentro.AsString, ReferenciasFiscaisNatureza_Fora.AsString);
                               fieldbyname('Natureza_Codigo').value   := mCFOP;
                               fieldbyname('Data_Entrada').value      := iif(DataLimpa(cDataEnt.text), date, cDataEnt.Date);
                               fieldbyname('Estado').value            := tForn.fieldbyname('Estado').AsString;
                               fieldbyname('Processo').value          := cProc.Text;
                               fieldbyname('Referencia_Fiscal').value := ReferenciasFiscais.fieldbyname('Codigo').asinteger;
                               fieldbyname('Servico').value           := ReferenciasFiscais.fieldbyname('Servico').asstring;
                               fieldbyname('Tipo').value              := 'NFS';
                               fieldbyname('Modelo').value            := 01;
                          end;
                     end;

              if not mErro then
                 tNotas.Post
              else
                 tNotas.Cancel;

              // Dados fixos do cadastro de fornecedores.
              tForn.FieldByName('Isento').Value := true;
              tForn.FieldByName('Ativo').Value  := true;
              tForn.FieldByName('Pais').Value   := '1058';

              if not mErro then
                 tForn.Post
              else
                 tForn.cancel;
              cLog.lines.add(replicate('»',139));
              pai := nil;
            except on E: Exception do begin
              cLog.lines.add('');
              cLog.lines.add('     » ERRO: NÃO IMPORTADA. '+E.Message);
              cLog.lines.add('     » '+Arquivo);
            end;
          end;
     end;
end;
{
procedure TNotaFiscal_ServicoXML.Mun2611606;
var
  SR: TSearchRec;
  XMLDoc: IXMLDocument;
  Pai, Comp, nfse, Info, Serv, Prest, PrestID, PrestEnd, PrestCont, Rps, val: IXMLNode;
  i, mNota, mForn: integer;
  mDir, mCFOP: String;
  mData: TDate;
  mVlPIS, mVlCOF, mVLCSLL, mVlIR, mVlISS, mVlServ: real;
begin
     cLog.Clear;
     with Dados, dmfiscal do begin
          for i := 0 to pred(cArquivos.Count) do begin
              cArquivos.Selected[i] := true;;
              XMLDoc := TXMLDocument.Create(nil);
              if findFirst(cArquivos.Items[i], faAnyFile, SR) = 0 then begin
                 XMLDoc.LoadFromFile(cArquivos.Items[i]);
          
                 Pai       := XMLDoc.DocumentElement.ChildNodes.FindNode('ListaNfse');
                 Comp      := Pai.ChildNodes.FindNode('CompNfse');
                 nfse      := Comp.ChildNodes.FindNode('Nfse');
                 Info      := nfse.ChildNodes.FindNode('InfNfse');
                 Serv      := info.ChildNodes.FindNode('Servico');
                 Val       := Serv.ChildNodes.FindNode('Valores');
                 Prest     := info.ChildNodes.FindNode('PrestadorServico');
                 PrestID   := Prest.ChildNodes.FindNode('IdentificacaoPrestador');
                 PrestEnd  := Prest.ChildNodes.FindNode('Endereco');
                 PrestCont := Prest.ChildNodes.FindNode('Contato');
                 Rps       := info.ChildNodes.FindNode('IdentificacaoRps');
                 
                 cLog.lines.add('Nota............: '+Info.ChildNodes['Numero'].Text);
                 cLog.lines.add('Emissao.........: '+Info.ChildNodes['DataEmissao'].Text);
                 cLog.lines.add('Entrada.........: '+Info.ChildNodes['DataEmissao'].Text);
                 cLog.lines.add('Serviço.........: '+serv.ChildNodes['ItemListaServico'].Text);
                 cLog.lines.add('Prestador CNPJ..: '+PrestID.ChildNodes['Cnpj'].Text);
                 cLog.lines.add('Serie...........: '+Rps.ChildNodes['Serie'].Text);
                 cLog.lines.add('Modelo..........: '+'01');
                 cLog.lines.add('Observações.....: '+serv.ChildNodes['Discriminacao'].Text);
                 cLog.lines.add('Valor Serviço...: '+val.ChildNodes['ValorServicos'].Text);
                 cLog.lines.add('Aliquota ISS....: '+val.ChildNodes['Aliquota'].Text);
                 cLog.lines.add('Valor ISS.......: '+val.ChildNodes['ValorIss'].Text);
                 cLog.lines.add('Valor PIS.......: '+val.ChildNodes['ValorPis'].Text);
                 cLog.lines.add('Valor COFINS....: '+val.ChildNodes['ValorCofins'].Text);
                 cLog.lines.add('Valor IR........: '+val.ChildNodes['ValorIr'].Text);
                 cLog.lines.add('Valor CSLL......: '+val.ChildNodes['ValorCsll'].Text);
                 cLog.lines.add(replicate('-', 98));
                 cLog.lines.add('');

                 mVlPIS  := strtocurr(stringreplace(val.ChildNodes['ValorPis'].Text     , '.', ',',[rfReplaceAll]));
                 mVlCOF  := strtocurr(stringreplace(val.ChildNodes['ValorCofins'].Text  , '.', ',',[rfReplaceAll]));
                 mVlIR   := strtocurr(stringreplace(val.ChildNodes['ValorIr'].Text      , '.', ',',[rfReplaceAll]));
                 mVlCSLL := strtocurr(stringreplace(val.ChildNodes['ValorCsll'].Text    , '.', ',',[rfReplaceAll]));
                 mVlISS  := strtocurr(stringreplace(val.ChildNodes['ValorIss'].Text     , '.', ',',[rfReplaceAll]));
                 mVlServ := strtocurr(stringreplace(val.ChildNodes['ValorServicos'].Text, '.', ',',[rfReplaceAll]));
          
                 if ReferenciasFiscais.locate('Servico', ApenasNumeros(serv.ChildNodes['ItemListaServico'].Text), [loCaseInsensitive]) then begin
                    if Servicos.locate('Codigo', ReferenciasFiscaisServico.AsString, [loCaseInsensitive]) then begin
                       // Cadastra o fornecedor.
                       if not Fornecedores.locate('CNPJ', PrestID.ChildNodes['Cnpj'].Text, [loCaseInsensitive]) then begin
                          Estados.locate('Codigo', PrestEnd.ChildNodes['Uf'].Text, [loCaseInsensitive]);
                          with ttmp do begin 
                               sql.clear;
                               sql.add('select isnull(max(Codigo), 0)+1 as Cod from Fornecedores');
                               open;
                          end;
                          with Fornecedores do begin
                               append;
                                    fieldbyname('Codigo').value              :=  tTmp.fieldbyname('Cod').asInteger;
                                    fieldbyname('CNPJ').value                :=  trim(PrestID.ChildNodes['Cnpj'].Text);
                                    fieldbyname('Inscricao_Municipal').value :=  PrestID.ChildNodes['InscricaoMunicipal'].Text;
                                    fieldbyname('Nome').value                :=  Prest.ChildNodes['RazaoSocial'].Text;
                                    fieldbyname('Rua').value                 :=  PrestEnd.ChildNodes['Endereco'].Text;
                                    fieldbyname('Rua_Numero').value          :=  PrestEnd.ChildNodes['Numero'].Text;
                                    fieldbyname('Bairro').value              :=  PrestEnd.ChildNodes['Bairro'].Text;
                                    fieldbyname('Estado_Nome').value         :=  EstadosNome.asstring;
                                    fieldbyname('Municipio').value           :=  MunicipiosNome.Asstring;
                                    fieldbyname('Municipio_Codigo').value    :=  PrestEnd.ChildNodes['CodigoMunicipio'].Text;
                                    fieldbyname('Estado').value              :=  PrestEnd.ChildNodes['Uf'].Text;
                                    fieldbyname('CEP').value                 :=  ApenasNumeros(PrestEnd.ChildNodes['Cep'].Text);
                                    fieldbyname('Telefone1').value           :=  ApenasNumeros(PrestCont.ChildNodes['Telefone'].Text);
                                    fieldbyname('Email').value               :=  PrestCont.ChildNodes['Email'].Text;
                                    fieldbyname('Ativo').value               :=  1;
                                    fieldbyname('Pais').value                :=  '1058';
                                    fieldbyname('Ramo_Atividade').value      :=  7;
                                    fieldbyname('Indicador_IE').value        :=  9;
                                    fieldbyname('Isento').value              :=  1;
                                    fieldbyname('Zona_Franca').value         :=  0;
                                    fieldbyname('Simples').value             :=  0;
                                    fieldbyname('MEI').value                 :=  0;
                                    fieldbyname('Micro_Empresa').value       :=  0;
                               post;
                          end;
                       end;

                       mNota := strtoint(Info.ChildNodes['Numero'].Text);
                       mData := XMLTimeToDateTime(copy(Info.ChildNodes['DataEmissao'].Text, 1, 10), true);
                       mForn := FornecedoresCodigo.asinteger;
                       mCFOP := iif(PrestEnd.ChildNodes['UF'].Text = EmpresasEstado.AsString, ReferenciasFiscaisNatureza_Dentro.AsString, ReferenciasFiscaisNatureza_Fora.AsString);

                       // Capa da nota fiscal.
                       with TTmp do begin
                             // Deleta se a nota ja existe.
                             sql.clear;
                             sql.add('delete from NotasTerceiros where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                             parambyname('pNota').asInteger  := mNota;
                             parambyname('pForn').asinteger  := mForn;
                             parambyname('pData').AsDateTime := mData;
                             execute;
                       end;
                       with NotasTerceiros do begin
                            sql.clear;
                            sql.add('select * from NotasTerceiros where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                            parambyname('pNota').asInteger  := mNota;
                            parambyname('pForn').asinteger  := mForn;
                            parambyname('pData').AsDateTime := mData;
                            open;
                            Append;
                                 fieldByName('Nota').Value                 := mNota;
                                 fieldByName('Data_Emissao').value         := mData;
                                 fieldByName('Data_Entrada').value         := mData;
                                 fieldByName('Referencia_Fiscal').value    := ReferenciasFiscaisCodigo.AsInteger;
                                 fieldByName('FUNDAP').value               := false;
                                 fieldByName('Fornecedor').value           := mForn;
                                 fieldByName('Estado').value               := PrestEnd.ChildNodes['UF'].Text;
                                 fieldByName('Tipo').value                 := 'NF';
                                 fieldByName('Modelo').value               := 1;
                                 fieldByName('Serie').value                := Rps.ChildNodes['Serie'].Text;
                                 fieldByName('Natureza_Codigo').value      := mCFOP;
                                 fieldByName('Servico').value              := ApenasNumeros(serv.ChildNodes['ItemListaServico'].Text);
                                 fieldByName('Valor_TotalProdutos').value  := mVlServ;
                                 fieldByName('Valor_TotalNota').value      := mVlServ;
                                 fieldByName('Valor_TotalLiquido').value   := mVlServ;
                                 fieldByName('Observacoes').value          := Serv.ChildNodes['Discriminacao'].Text;
                                 fieldByName('Valor_PIS').value            := 0;
                                 fieldByName('Valor_cofins').value         := 0;
                                 fieldByName('Provisoria').value           := false;
                                 fieldByName('Desdobramento').value        := false;
                                 fieldByName('Valor_ISS').value            := mVlISS;
                                 fieldByName('Aliquota_ISS').value         := strtofloat(stringreplace(val.ChildNodes['Aliquota'].Text, '.', ',', [rfReplaceAll]))*100;
                                 fieldByName('Complementar').value         := false;
                                 fieldbyname('Quantidade').value           := 1;
                                 fieldbyname('Codigo_Adicional01').value   := iif(mVlPIS > 0, Servicos.FieldByName('PIS_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional01').value := 0;
                                 fieldbyname('Valor_Adicional01').value    := mVlPIS;
                                 fieldbyname('Codigo_Adicional02').value   := iif(mVlCOF > 0, Servicos.FieldByName('COFINS_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional02').value := 0;
                                 fieldbyname('Valor_Adicional02').value    := mVlCOF;
                                 fieldbyname('Codigo_Adicional03').value   := iif(mVlIR> 0, Servicos.FieldByName('IR_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional03').value := 0;
                                 fieldbyname('Valor_Adicional03').value    := mVlIR;
                                 fieldbyname('Codigo_Adicional04').value   := iif(mVlCSLL > 0, Servicos.FieldByName('CSLL_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional04').value := 0;
                                 fieldbyname('Valor_Adicional04').value    := mVlCSLL;
                            Post;
                       end;
                       // Item da nota fiscal
                       // Deleta os itens se a nota ja existe.
                       with TTmp do begin
                            sql.clear;
                            sql.add('delete from NotasTerceirosItens where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                            parambyname('pNota').asInteger  := mNota;
                            parambyname('pForn').asinteger  := mForn;
                            parambyname('pData').AsDateTime := mData;
                            execute;
                       end;
                       // Procura o produto no cadastro.  
                       with Produtos do begin
                            sql.clear;
                            sql.add('select * from Produtos where Codigo_Fabricante = :pCod and isnull(Servico, 0) = 1');
                            parambyname('pCod').AsString := serv.ChildNodes['ItemListaServico'].Text; 
                            open;
                            if recordcount = 0 then begin
                               with tTmp do begin
                                    SQL.clear;
                                    sql.add('select isnull(max(Codigo), 0)+1 as Cod from Produtos');
                                    open;
                               end;
                               append;
                                    fieldbyname('Codigo').value             := tTmp.fieldbyName('Cod').AsInteger;
                                    fieldbyname('Codigo_Fabricante').value  := serv.ChildNodes['ItemListaServico'].Text; 
                                    fieldbyname('Tipo_Item').value          := 9;
                                    fieldbyname('Unidade').value            := 'UN';
                                    fieldbyname('Quantidade_Unidade').value := 1;
                                    fieldbyname('Quantidade_Volumes').value := 1;
                                    fieldbyname('NCM').value                := '00000000';
                                    fieldbyname('Descricao_Reduzida').value := Servicos.FieldByName('Descricao').AsString;
                                    fieldbyname('Descricao').value          := Servicos.FieldByName('Descricao').AsString;
                                    fieldbyname('Servico').value            := true;
                                    fieldbyname('Desativado').value         := false;
                                    fieldByName('CSTPIS_Entrada').value     := ReferenciasFiscaisCSTPIS.AsString;
                                    fieldByName('CSTCOFINS_Entrada').value  := ReferenciasFiscaisCSTCOFINS.AsString;
                               post;
                            end;
                       end;
                       with NotasTerceirosItens do begin
                            sql.clear;
                            sql.add('select * from NotasTerceirosItens where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                            parambyname('pNota').asInteger  := mNota;
                            parambyname('pForn').asinteger  := mForn;
                            parambyname('pData').AsDateTime := mData;
                            open;
                            append;
                                 fieldByName('Nota').Value                 := mNota;
                                 fieldByName('Data_Emissao').value         := mData;
                                 fieldByName('Item').value                 := 1;
                                 fieldByName('Data_Entrada').value         := mData;
                                 fieldByName('Fornecedor').value           := mForn;
                                 fieldByName('Natureza_Codigo').value      := mCFOP;
                                 fieldByName('Unidade_Medida').value       := 'UN';
                                 fieldByName('CodigoTrib_TabA').value      := copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
                                 fieldByName('CodigoTrib_TabB').value      := copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
                                 fieldByName('Quantidade').value           := 1;
                                 fieldByName('Disponivel').value           := 1;
                                 fieldByName('Valor_Unitario').value       := mVlServ;
                                 fieldByName('Valor_Liquido').value        := mVlServ;
                                 fieldByName('Valor_Desconto').value       := 0;
                                 fieldByName('Aliquota_PIS').value         := roundto((mVlPIS/mVlServ)*100, -2);
                                 fieldByName('Valor_PIS').value            := mVlPIS;
                                 fieldByName('Aliquota_COFINS').value      := roundto((mVlCOF/mVlServ)*100, -2);
                                 fieldByName('Valor_COFINS').value         := mVlCOF;
                                 fieldByName('CST_IPI').value              := ReferenciasFiscaisCSTIPI.AsString;
                                 fieldByName('CST_PIS').value              := ReferenciasFiscaisCSTPIS.AsString;
                                 fieldByName('CST_COFINS').value           := ReferenciasFiscaisCSTCOFINS.AsString;
                                 fieldByName('Movimenta_Estoque').value    := false;
                                 fieldByName('Movimenta_Inventario').value := false;
                                 fieldByName('Apuracao_PISCOFINS').value   := ReferenciasFiscaisApuracao_PISCOFINS.asboolean;
                                 fieldByName('Referencia_Fiscal').value    := ReferenciasFiscaisCodigo.asinteger;
                                 fieldByName('Valor_BCPIS').value          := mVlServ;
                                 fieldByName('Valor_BCCOFINS').value       := mVlServ;
                                 fieldByName('Movimenta_EstoqueRep').value := false;
                                 fieldByName('Codigo_Mercadoria').value    := ProdutosCodigo.AsInteger;
                                 fieldByName('Descricao_Mercadoria').value := ProdutosDescricao.AsString;
                            post;
                       end;
                    end else begin
                        cLog.lines.add('ERRO: Nota Fiscal '+inttostr(mNota)+' não importada, "Serviço" não cadastrado.');
                    end;
                 end else begin
                    cLog.lines.add('ERRO: Nota Fiscal '+inttostr(mNota)+' não importada, "Referência Fiscal" não cadastrada.');
                 end;
                 Application.ProcessMessages;
              end;
          end;
     end;
end; 

procedure TNotaFiscal_ServicoXML.Mun3543402;
var
  SR: TSearchRec;
  XMLDoc: IXMLDocument;
  Pai, Comp, nfse, Info, Serv, Prest, PrestID, PrestEnd, PrestCont, PrestRaz, Rps, val: IXMLNode;
  i, mNota, mForn: integer;
  mDir, mCFOP: String;
  mData: TDate;
  mVlPIS, mVlCOF, mVLCSLL, mVlIR, mVlISS, mVlServ: real;
begin
     cLog.Clear;
     with Dados, dmfiscal do begin
          for i := 0 to pred(cArquivos.Count) do begin
              cArquivos.Selected[i] := true;;
              XMLDoc := TXMLDocument.Create(nil);
              if findFirst(cArquivos.Items[i], faAnyFile, SR) = 0 then begin
                 XMLDoc.LoadFromFile(cArquivos.Items[i]);
          
                 Pai       := XMLDoc.DocumentElement.ChildNodes.FindNode('ListaNfse');
                                                                           Comp      := Pai.ChildNodes.FindNode('CompNfse');
                 nfse      := Comp.ChildNodes.FindNode('Nfse');
                 Info      := nfse.ChildNodes.FindNode('InfNfse');
                 Serv      := info.ChildNodes.FindNode('DeclaracaoPrestacaoServico').ChildNodes.FindNode('InfDeclaracaoPrestacaoServico').ChildNodes.FindNode('Servico');
                 Val       := Serv.ChildNodes.FindNode('Valores');
                 Prest     := info.ChildNodes.FindNode('DeclaracaoPrestacaoServico').ChildNodes.FindNode('InfDeclaracaoPrestacaoServico').ChildNodes.FindNode('Prestador');
                 PrestID   := Prest.ChildNodes.FindNode('CpfCnpj');
                 PrestEnd  := info.ChildNodes.FindNode('PrestadorServico').ChildNodes.FindNode('Endereco');
                 PrestCont := info.ChildNodes.FindNode('PrestadorServico').ChildNodes.FindNode('Contato');
                 PrestRaz  := info.ChildNodes.FindNode('PrestadorServico');

                 cLog.lines.add('Nota............: '+Info.ChildNodes['Numero'].Text);
                 cLog.lines.add('Emissao.........: '+Info.ChildNodes['DataEmissao'].Text);
                 cLog.lines.add('Entrada.........: '+Info.ChildNodes['DataEmissao'].Text);
                 cLog.lines.add('Serviço.........: '+serv.ChildNodes['ItemListaServico'].Text);
                 cLog.lines.add('Prestador CNPJ..: '+PrestID.ChildNodes['Cnpj'].Text);
                 cLog.lines.add('Prestador IM....: '+Prest.ChildNodes['InscricaoMunicipal'].Text);
                 cLog.lines.add('Serie...........: ');
                 cLog.lines.add('Modelo..........: '+'01');
                 cLog.lines.add('Observações.....: '+info.ChildNodes['OutrasInformacoes'].Text);
                 cLog.lines.add('Valor Serviço...: '+val.ChildNodes['ValorServicos'].Text);
                 cLog.lines.add('Aliquota ISS....: '+val.ChildNodes['Aliquota'].Text);
                 cLog.lines.add('Valor ISS.......: '+val.ChildNodes['ValorIss'].Text);
                 cLog.lines.add('Valor INSS......: '+val.ChildNodes['ValorInss'].Text);
                 cLog.lines.add('Valor PIS.......: '+val.ChildNodes['ValorPis'].Text);
                 cLog.lines.add('Valor COFINS....: '+val.ChildNodes['ValorCofins'].Text);
                 cLog.lines.add('Valor IR........: '+val.ChildNodes['ValorIr'].Text);
                 cLog.lines.add('Valor CSLL......: '+val.ChildNodes['ValorCsll'].Text);
                 cLog.lines.add(replicate('-', 98));
                 cLog.lines.add('');
                 
                 mVlPIS  := strtocurr(stringreplace(val.ChildNodes['ValorPis'].Text     , '.', ',',[rfReplaceAll]));
                 mVlCOF  := strtocurr(stringreplace(val.ChildNodes['ValorCofins'].Text  , '.', ',',[rfReplaceAll]));
                 mVlIR   := strtocurr(stringreplace(val.ChildNodes['ValorIr'].Text      , '.', ',',[rfReplaceAll]));
                 mVlCSLL := strtocurr(stringreplace(val.ChildNodes['ValorCsll'].Text    , '.', ',',[rfReplaceAll]));
                 mVlISS  := strtocurr(stringreplace(val.ChildNodes['ValorIss'].Text     , '.', ',',[rfReplaceAll]));
                 mVlServ := strtocurr(stringreplace(val.ChildNodes['ValorServicos'].Text, '.', ',',[rfReplaceAll]));
                 
                 if ReferenciasFiscais.locate('Servico', ApenasNumeros(serv.ChildNodes['ItemListaServico'].Text), [loCaseInsensitive]) then begin
                    if Servicos.locate('Codigo', ReferenciasFiscaisServico.AsString, [loCaseInsensitive]) then begin
                       // Cadastra o fornecedor.
                       if not Fornecedores.locate('CNPJ', PrestID.ChildNodes['Cnpj'].Text, [loCaseInsensitive]) then begin
                          Estados.locate('Codigo', PrestEnd.ChildNodes['Uf'].Text, [loCaseInsensitive]);
                          with ttmp do begin 
                               sql.clear;
                               sql.add('select isnull(max(Codigo), 0)+1 as Cod from Fornecedores');
                               open;
                          end;
                          with Fornecedores do begin
                               append;
                                    fieldbyname('Codigo').value              :=  tTmp.fieldbyname('Cod').asInteger;
                                    fieldbyname('CNPJ').value                :=  trim(PrestID.ChildNodes['Cnpj'].Text);
                                    fieldbyname('Inscricao_Municipal').value :=  PrestID.ChildNodes['InscricaoMunicipal'].Text;
                                    fieldbyname('Nome').value                :=  PrestRaz.ChildNodes['RazaoSocial'].Text;
                                    fieldbyname('Nome_Fantasia').value       :=  PrestRaz.ChildNodes['NomeFantasia'].Text;
                                    fieldbyname('Rua').value                 :=  PrestEnd.ChildNodes['Endereco'].Text;
                                    fieldbyname('Rua_Numero').value          :=  PrestEnd.ChildNodes['Numero'].Text;
                                    fieldbyname('Bairro').value              :=  PrestEnd.ChildNodes['Bairro'].Text;
                                    fieldbyname('Estado_Nome').value         :=  EstadosNome.asstring;
                                    fieldbyname('Municipio').value           :=  MunicipiosNome.Asstring;
                                    fieldbyname('Municipio_Codigo').value    :=  PrestEnd.ChildNodes['CodigoMunicipio'].Text;
                                    fieldbyname('Estado').value              :=  PrestEnd.ChildNodes['Uf'].Text;
                                    fieldbyname('CEP').value                 :=  ApenasNumeros(PrestEnd.ChildNodes['Cep'].Text);
                                    fieldbyname('Telefone1').value           :=  ApenasNumeros(PrestCont.ChildNodes['Telefone'].Text);
                                    fieldbyname('Email').value               :=  PrestCont.ChildNodes['Email'].Text;
                                    fieldbyname('Ativo').value               :=  1;
                                    fieldbyname('Pais').value                :=  '1058';
                                    fieldbyname('Ramo_Atividade').value      :=  7;
                                    fieldbyname('Indicador_IE').value        :=  9;
                                    fieldbyname('Isento').value              :=  1;
                                    fieldbyname('Zona_Franca').value         :=  0;
                                    fieldbyname('Simples').value             :=  0;
                                    fieldbyname('MEI').value                 :=  0;
                                    fieldbyname('Micro_Empresa').value       :=  0;
                               post;
                          end;
                       end;
                       
                       mNota := strtoint(Info.ChildNodes['Numero'].Text);
                       mData := XMLTimeToDateTime(copy(Info.ChildNodes['DataEmissao'].Text, 1, 10), true);
                       mForn := FornecedoresCodigo.asinteger;
                       mCFOP := iif(PrestEnd.ChildNodes['UF'].Text = EmpresasEstado.AsString, ReferenciasFiscaisNatureza_Dentro.AsString, ReferenciasFiscaisNatureza_Fora.AsString);

                       // Capa da nota fiscal.
                       with TTmp do begin
                             // Deleta se a nota ja existe.
                             sql.clear;
                             sql.add('delete from NotasTerceiros where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                             parambyname('pNota').asInteger  := mNota;
                             parambyname('pForn').asinteger  := mForn;
                             parambyname('pData').AsDateTime := mData;
                             execute;
                       end;
                       with NotasTerceiros do begin
                            sql.clear;
                            sql.add('select * from NotasTerceiros where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                            parambyname('pNota').asInteger  := mNota;
                            parambyname('pForn').asinteger  := mForn;
                            parambyname('pData').AsDateTime := mData;
                            open;
                            Append;
                                 fieldByName('Nota').Value                 := mNota;
                                 fieldByName('Data_Emissao').value         := mData;
                                 fieldByName('Data_Entrada').value         := mData;
                                 fieldByName('Referencia_Fiscal').value    := ReferenciasFiscaisCodigo.AsInteger;
                                 fieldByName('FUNDAP').value               := false;
                                 fieldByName('Fornecedor').value           := mForn;
                                 fieldByName('Estado').value               := PrestEnd.ChildNodes['UF'].Text;
                                 fieldByName('Tipo').value                 := 'NF';
                                 fieldByName('Modelo').value               := 1;
                                 fieldByName('Serie').value                := null;
                                 fieldByName('Natureza_Codigo').value      := mCFOP;
                                 fieldByName('Servico').value              := ApenasNumeros(serv.ChildNodes['ItemListaServico'].Text);
                                 fieldByName('Valor_TotalProdutos').value  := mVlServ;
                                 fieldByName('Valor_TotalNota').value      := mVlServ;
                                 fieldByName('Valor_TotalLiquido').value   := mVlServ;
                                 fieldByName('Observacoes').value          := Serv.ChildNodes['Discriminacao'].Text;
                                 fieldByName('Valor_PIS').value            := 0;
                                 fieldByName('Valor_cofins').value         := 0;
                                 fieldByName('Provisoria').value           := false;
                                 fieldByName('Desdobramento').value        := false;
                                 fieldByName('Valor_ISS').value            := mVlISS;
                                 fieldByName('Aliquota_ISS').value         := strtofloat(stringreplace(val.ChildNodes['Aliquota'].Text, '.', ',', [rfReplaceAll]))*100;
                                 fieldByName('Complementar').value         := false;
                                 fieldbyname('Quantidade').value           := 1;
                                 fieldbyname('Codigo_Adicional01').value   := iif(mVlPIS > 0, Servicos.FieldByName('PIS_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional01').value := 0;
                                 fieldbyname('Valor_Adicional01').value    := mVlPIS;
                                 fieldbyname('Codigo_Adicional02').value   := iif(mVlCOF > 0, Servicos.FieldByName('COFINS_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional02').value := 0;
                                 fieldbyname('Valor_Adicional02').value    := mVlCOF;
                                 fieldbyname('Codigo_Adicional03').value   := iif(mVlIR> 0, Servicos.FieldByName('IR_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional03').value := 0;
                                 fieldbyname('Valor_Adicional03').value    := mVlIR;
                                 fieldbyname('Codigo_Adicional04').value   := iif(mVlCSLL > 0, Servicos.FieldByName('CSLL_Recolher').AsString, null);
                                 fieldbyname('Aliquota_Adicional04').value := 0;
                                 fieldbyname('Valor_Adicional04').value    := mVlCSLL;
                            Post;
                       end;
                       // Item da nota fiscal
                       // Deleta os itens se a nota ja existe.
                       with TTmp do begin
                            sql.clear;
                            sql.add('delete from NotasTerceirosItens where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                            parambyname('pNota').asInteger  := mNota;
                            parambyname('pForn').asinteger  := mForn;
                            parambyname('pData').AsDateTime := mData;
                            execute;
                       end;
                       // Procura o produto no cadastro.  
                       with Produtos do begin
                            sql.clear;
                            sql.add('select * from Produtos where Codigo_Fabricante = :pCod and isnull(Servico, 0) = 1');
                            parambyname('pCod').AsString := serv.ChildNodes['ItemListaServico'].Text; 
                            open;
                            if recordcount = 0 then begin
                               with tTmp do begin
                                    SQL.clear;
                                    sql.add('select isnull(max(Codigo), 0)+1 as Cod from Produtos');
                                    open;
                               end;
                               append;
                                    fieldbyname('Codigo').value             := tTmp.fieldbyName('Cod').AsInteger;
                                    fieldbyname('Codigo_Fabricante').value  := ApenasNumeros(serv.ChildNodes['ItemListaServico'].Text); 
                                    fieldbyname('Tipo_Item').value          := 9;
                                    fieldbyname('Unidade').value            := 'UN';
                                    fieldbyname('Quantidade_Unidade').value := 1;
                                    fieldbyname('Quantidade_Volumes').value := 1;
                                    fieldbyname('NCM').value                := '00000000';
                                    fieldbyname('Descricao_Reduzida').value := Servicos.FieldByName('Descricao').AsString;
                                    fieldbyname('Descricao').value          := Servicos.FieldByName('Descricao').AsString;
                                    fieldbyname('Servico').value            := true;
                                    fieldbyname('Desativado').value         := false;
                                    fieldByName('CSTPIS_Entrada').value     := ReferenciasFiscaisCSTPIS.AsString;
                                    fieldByName('CSTCOFINS_Entrada').value  := ReferenciasFiscaisCSTCOFINS.AsString;
                               post;
                            end;
                       end;
                       with NotasTerceirosItens do begin
                            sql.clear;
                            sql.add('select * from NotasTerceirosItens where Nota = :pNota and Fornecedor = :pForn and Data_Emissao = :pData');
                            parambyname('pNota').asInteger  := mNota;
                            parambyname('pForn').asinteger  := mForn;
                            parambyname('pData').AsDateTime := mData;
                            open;
                            append;
                                 fieldByName('Nota').Value                 := mNota;
                                 fieldByName('Data_Emissao').value         := mData;
                                 fieldByName('Item').value                 := 1;
                                 fieldByName('Data_Entrada').value         := mData;
                                 fieldByName('Fornecedor').value           := mForn;
                                 fieldByName('Natureza_Codigo').value      := mCFOP;
                                 fieldByName('Unidade_Medida').value       := 'UN';
                                 fieldByName('CodigoTrib_TabA').value      := copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
                                 fieldByName('CodigoTrib_TabB').value      := copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
                                 fieldByName('Quantidade').value           := 1;
                                 fieldByName('Disponivel').value           := 1;
                                 fieldByName('Valor_Unitario').value       := mVlServ;
                                 fieldByName('Valor_Liquido').value        := mVlServ;
                                 fieldByName('Valor_Desconto').value       := 0;
                                 fieldByName('Aliquota_PIS').value         := roundto((mVlPIS/mVlServ)*100, -2);
                                 fieldByName('Valor_PIS').value            := mVlPIS;
                                 fieldByName('Aliquota_COFINS').value      := roundto((mVlCOF/mVlServ)*100, -2);
                                 fieldByName('Valor_COFINS').value         := mVlCOF;
                                 fieldByName('CST_IPI').value              := ReferenciasFiscaisCSTIPI.AsString;
                                 fieldByName('CST_PIS').value              := ReferenciasFiscaisCSTPIS.AsString;
                                 fieldByName('CST_COFINS').value           := ReferenciasFiscaisCSTCOFINS.AsString;
                                 fieldByName('Movimenta_Estoque').value    := false;
                                 fieldByName('Movimenta_Inventario').value := false;
                                 fieldByName('Apuracao_PISCOFINS').value   := ReferenciasFiscaisApuracao_PISCOFINS.asboolean;
                                 fieldByName('Referencia_Fiscal').value    := ReferenciasFiscaisCodigo.asinteger;
                                 fieldByName('Valor_BCPIS').value          := mVlServ;
                                 fieldByName('Valor_BCCOFINS').value       := mVlServ;
                                 fieldByName('Movimenta_EstoqueRep').value := false;
                                 fieldByName('Codigo_Mercadoria').value    := ProdutosCodigo.AsInteger;
                                 fieldByName('Descricao_Mercadoria').value := ProdutosDescricao.AsString;
                            post;
                       end;
                    end else begin
                        cLog.lines.add('ERRO: Nota Fiscal '+inttostr(mNota)+' não importada, "Serviço" não cadastrado.');
                    end;
                 end else begin
                    cLog.lines.add('ERRO: Nota Fiscal '+inttostr(mNota)+' não importada, "Referência Fiscal" não cadastrada.');
                 end;
                 Application.ProcessMessages;
              end;
          end;
     end;
end; 
}
procedure TNotaFiscal_ServicoXML.bCarregarClick(Sender: TObject);
var
   i:integer;
begin
     if trim(cMuni.Text) = '' then begin
        messagedlg('Por favor Informe o municipio de referência para abrir os arquivos!', mtinformation, [mbok], 0);
        abort;
     end;

     cArqXML.Execute;
     if cArqXML.Files.Count > 0 then begin
        // Preenchendo o vetor com os nomes dos arquivos "XML".
        tNotas.Clear;
        cArquivos.clear;
        for i := 0 to pred(cArqXML.Files.Count) do begin
            cArquivos.items.add(cArqXML.Files.Strings[i]);
        end;
     end;

     cLog.Clear;
     with Dados, dmfiscal do begin
          with Fornecedores do begin
               sql.clear;
               sql.add('select * from Fornecedores order by CNPJ');
               open;
          end;
          with Servicos do begin
               sql.clear;
               sql.add('select * from Servicos order by Codigo');
               open;
          end;
          with Estados do begin
               sql.clear;
               sql.add('select * from Estados order by Codigo');
               open;
          end;
     end;
     if cArqXML.Files.Count > 0 then begin
        cLog.lines.clear;
        mErro := false;
        CarregaNotas;
     end;
end;

procedure TNotaFiscal_ServicoXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_ServicoXML.Release;
     NotaFiscal_ServicoXML := nil;
end;

procedure TNotaFiscal_ServicoXML.FormShow(Sender: TObject);
var
   mxml:TMemo;
   i,l:integer;
   mCod,mMun:widestring;
begin
     cDataEnt.Date := date;
     with Dados do begin
          with Municipios do begin
               sql.clear;
               sql.add('select * from Municipios where Codigo in(select distinct Municipio from LayoutNFS) order by Nome');
               //sql.savetofile('c:\temp\Importar_XML_Servico.sql');
               open;
          end;
          with ControleNavios do begin
               sql.clear;
               sql.add('select * from ControleNavios where Status <> ''ENCERRADO'' order by Navio');
               open;
          end;
          with ProcessosDOC do begin
               sql.clear;
               sql.add('select * from ProcessosDocumentos where isnull(Desativado, 0) = 0 order by Processo');
               open;
          end;
          with ReferenciasFiscais do begin
               sql.clear;
               sql.add('select * from ReferenciasFiscais where isnull(Servico, '''') <> '''' ');
               open;
          end;
     end;
end;

procedure TNotaFiscal_ServicoXML.GenereteTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
var
   NodeText: string;
   NewTreeNode: TTreeNode;
   i: Integer;
begin
     NewTreeNode := nil;
     if XMLNode.NodeType <> ntElement then Exit;
     NodeText := XMLNode.NodeName;
     if XMLNode.IsTextElement then NodeText := NodeText + '=' + XMLNode.NodeValue;
     if XMLNode.HasChildNodes then begin
        for i := 0 to XMLNode.ChildNodes.Count - 1 do begin
            GenereteTree(XMLNode.ChildNodes[i], NewTreeNode);
        end;
     end;
end;

procedure TNotaFiscal_ServicoXML.AbreXML(pXML:string);
begin
    XMLDocument1.LoadFromFile(pXML);
    XMLDocument1.Active := True;
    GenereteTree(XMLDocument1.DocumentElement, nil);
end;

procedure TNotaFiscal_ServicoXML.ConsultaCNPJ(pCNPJ: string);
var
  i:integer;
  Provedor: TACBrCNPJProvedorWS;
begin
     if trim(pCNPJ) <> '' then begin
        with oCNPJ do begin
             Provedor := TACBrCNPJProvedorWS(cwsBrasilAPI);
             if Consulta(pCNPJ) then begin
                tForn.FieldByName('Nome').value          := iif(trim(tForn.FieldByName('Nome').asstring)          = '', RazaoSocial  , tForn.FieldByName('Nome').value);
                tForn.FieldByName('Nome_Fantasia').Value := iif(trim(tForn.FieldByName('Nome_Fantasia').asstring) = '', Fantasia     , tForn.FieldByName('Nome_Fantasia').value);
                tForn.FieldByName('Rua').Value           := iif(trim(tForn.FieldByName('Rua').asstring)           = '', Endereco     , tForn.FieldByName('Rua').value);
                tForn.FieldByName('Rua_Numero').value    := iif(trim(tForn.FieldByName('Rua_Numero').asstring)    = '', Numero       , tForn.FieldByName('Rua_Numero').value);
                tForn.FieldByName('Complemento').value   := iif(trim(tForn.FieldByName('Complemento').asstring)   = '', Complemento  , tForn.FieldByName('Complemento').value);
                tForn.FieldByName('Bairro').value        := iif(trim(tForn.FieldByName('Bairro').asstring)        = '', Bairro       , tForn.FieldByName('Bairro').asstring);
                tForn.FieldByName('Municipio').value     := iif(trim(tForn.FieldByName('Municipio').asstring)     = '', Cidade       , tForn.FieldByName('Municipio').asstring);
                tForn.FieldByName('Estado').value        := iif(trim(tForn.FieldByName('Estado').asstring)        = '', UF           , tForn.FieldByName('Estado').asstring);
                tForn.FieldByName('CEP').value           := iif(trim(tForn.FieldByName('CEP').asstring)           = '', CEP          , tForn.FieldByName('CEP').asstring);
                tForn.FieldByName('Email').value         := iif(trim(tForn.FieldByName('Email').asstring)         = '', EndEletronico, tForn.FieldByName('Email').asstring);
                tForn.FieldByName('Telefone1').value     := iif(trim(tForn.FieldByName('Telefone1').asstring)     = '', Telefone     , tForn.FieldByName('Telefone1').value);
                tForn.FieldByName('Pais').value          := '1058';
             end;
        end;
     end;
end;



procedure TNotaFiscal_ServicoXML.cProcClick(Sender: TObject);
begin
     cNavio.Keyvalue := Dados.ProcessosDOC.fieldbyname('Navio_Ordem').asinteger;
end;

end.

