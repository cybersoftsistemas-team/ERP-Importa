unit frmNotaFiscal_ImportarNFSe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, XSBuiltIns, Math, system.UITypes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Vcl.StdCtrls, Xml.XMLDoc, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, Vcl.DBCtrls, Xml.Win.msxmldom, VirtualTable, ACBrBase,
  ACBrSocket, ACBrConsultaCNPJ, Vcl.Mask, RxToolEdit, RxDBCtrl, Vcl.Buttons, System.TypInfo, System.DateUtils;

type
  TNotaFiscal_ImportarNFSe = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    XMLDocument1: TXMLDocument;
    tTmp: TMSQuery;
    cArqXML: TOpenDialog;
    Panel2: TPanel;
    XMLDoc: TXMLDocument;
    LayOut: TMSQuery;
    tNotas: TVirtualTable;
    dstNotas: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cLog: TMemo;
    StaticText1: TStaticText;
    cProc: TDBLookupComboBox;
    StaticText3: TStaticText;
    cNavio: TDBLookupComboBox;
    tForn: TVirtualTable;
    dstForn: TDataSource;
    oCNPJ: TACBrConsultaCNPJ;
    bImportar: TButton;
    StaticText13: TStaticText;
    cDataEnt: TDateEdit;
    bAbrir: TSpeedButton;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    gCampos: TStringGrid;
    Panel5: TPanel;
    Panel4: TPanel;
    cArquivos: TListBox;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    cRelacao: TStringGrid;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bAbrirClick(Sender: TObject);
    procedure cProcClick(Sender: TObject);
    procedure cArquivosClick(Sender: TObject);
  private
    { Private declarations }
    procedure GenereteTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
    procedure AbreXML(pXML: string);
//    procedure CarregaNotas;
//    procedure CarregaDados(Arquivo: string);
//    procedure ConsultaCNPJ(pCNPJ: string);
    procedure CarregaNFSe;
    procedure PegaLayout;
    procedure CarregaXML;
  public
    { Public declarations }
    mErro:boolean;
    mRelac: integer;
  end;

var
  NotaFiscal_ImportarNFSe: TNotaFiscal_ImportarNFSe;

implementation

{$R *.dfm}

uses FUNCOES, frmDMFiscal, frmDados, frmUtilitarios_Importar_NFe_Terceiros;

procedure TNotaFiscal_ImportarNFSe.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TNotaFiscal_ImportarNFSe.cArquivosClick(Sender: TObject);
begin
     tNotas.open;
     tNotas.Clear;
     tForn.Open;
     tForn.Clear;
     cLog.Clear;
     XMLDoc.LoadFromFile(cArquivos.Items[cArquivos.ItemIndex]);
     XMLDoc.Active := True;
     CarregaNFSe;
end;

procedure TNotaFiscal_ImportarNFSe.bImportarClick(Sender: TObject);
var
  reg: integer;
begin
     // Cadastrando os fornecedores não encontrados.
     with Dados, dmFiscal do begin
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
                                      fieldbyname('Ativo').value               := 1;
                                      fieldbyname('Pais').value                := '1058';
                                      fieldbyname('Ramo_Atividade').value      := 7;
                                      fieldbyname('Indicador_IE').value        := 9;
                                      fieldbyname('Isento').value              := tForn.fieldbyname('Isento').asboolean;
                                      fieldbyname('Zona_Franca').value         := 0;
                                      fieldbyname('Simples').value             := 0;
                                      fieldbyname('MEI').value                 := 0;
                                      fieldbyname('Micro_Empresa').value       := 0;
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
          mRelac := 1;
          with tNotas do begin
               first;
               while not eof do begin
                     with NotasTerceiros do begin
                          with ttmp do begin
                               // Verifica se a nota fiscal ja existe e exclui para não duplicar.
                               sql.clear;
                               sql.add('select count(*) as Qtde from NotasTerceiros where Nota = :pNota and Data_Emissao = :pData and Valor_TotalNota = :pValor and Servico = :pServ');
                               parambyname('pNota').value  := tNotas.fieldbyname('Nota').asinteger;
                               parambyname('pData').value  := tNotas.fieldbyname('Data_Emissao').value;
                               parambyname('pValor').value := tNotas.fieldbyname('Valor_TotalNota').value;
                               parambyname('pServ').value  := tNotas.fieldbyname('Servico').value;
                               open;
                               if fieldbyname('Qtde').AsInteger > 0 then begin
                                  sql.clear;
                                  sql.add('delete from NotasTerceirosItens where Nota = :pNota and Fornecedor = (select Fornecedor from NotasTerceiros where Nota = :pNota and Data_Emissao = :pData and Valor_TotalNota = :pValor and Servico = :pServ)');
                                  parambyname('pNota').value  := tNotas.fieldbyname('Nota').asinteger;
                                  parambyname('pData').value  := tNotas.fieldbyname('Data_Emissao').value;
                                  parambyname('pValor').value := tNotas.fieldbyname('Valor_TotalNota').value;
                                  parambyname('pServ').value  := tNotas.fieldbyname('Servico').value;
                                  execute;
                                  sql.clear;
                                  sql.add('delete from NotasTerceiros where Nota = :pNota and Data_Emissao = :pData and Valor_TotalNota = :pValor and Servico = :pServ');
                                  parambyname('pNota').value  := tNotas.fieldbyname('Nota').asinteger;
                                  parambyname('pData').value  := tNotas.fieldbyname('Data_Emissao').value;
                                  parambyname('pValor').value := tNotas.fieldbyname('Valor_TotalNota').value;
                                  parambyname('pServ').value  := tNotas.fieldbyname('Servico').value;
                                  execute;
                               end;
                          end;
                          Append;
                               for reg := 0 to pred(fieldcount) do begin
                                   fields[reg].value := tNotas.fields[Reg].value;
                               end;
                               // Pega codigo do fornecedor pela relação de Notas/CNPJ.
                               if fieldbyname('Fornecedor').asinteger = 0 then begin
                                  if Fornecedores.locate('CNPJ', cRelacao.cells[1, mRelac], [loCaseInsensitive]) then begin
                                     fieldbyname('Fornecedor').value := Fornecedores.fieldbyname('Codigo').asinteger;
                                  end else begin
                                     if Fornecedores.locate('CPF', cRelacao.cells[1, mRelac], [loCaseInsensitive]) then begin
                                        fieldbyname('Fornecedor').value := Fornecedores.fieldbyname('Codigo').asinteger;
                                     end;
                                  end;
                               end;
                          post;
                     end;
                     next;
                     inc(mRelac);
               end;
          end;
     end;
     MessageDlg('Notas Fiscais de serviço importadas com sucesso!', mtinformation, [mbok], 0);
end;

{
procedure TNotaFiscal_ImportarNFSe.CarregaNotas;
var
   i:integer;
begin
     tNotas.open;
     tNotas.Clear;
     tForn.Open;
     tForn.Clear;
     cArquivos.SelectAll;
     for i := 0 to pred(cArquivos.Items.Count) do begin
//         CarregaDados(cArquivos.Items[i]);
         cLog.lines.add('');
         cArquivos.Selected[i] := false;
         Application.ProcessMessages;
     end;
     tNotas.Refresh;
     tForn.Refresh;
     bImportar.Enabled := not mErro;
end;
}
{
procedure TNotaFiscal_ImportarNFSe.CarregaDados(Arquivo: string);
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
              cLog.lines.add(XMLDoc.FileName);
              cLog.lines.Add('');
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
                         if Filho <> nil then begin
                            mVal := Filho.Text;
                            cLog.lines.add(concat(fieldbyname('Campo_Tabela').asstring, StringOfChar('.',30-Length(fieldbyname('Campo_Tabela').asstring)), Fields[Nivel].asstring, StringOfChar('.',30-Length(Fields[Nivel].asstring)),': ', mval) );
                         end;

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
                        if ReferenciasFiscais.locate('Servico_Nacional', ApenasNumeros(fieldbyname('Servico_Nacional').asstring), [loCaseInsensitive]) then begin
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
              cLog.lines.add('     » ERRO: TAG NÃO ENCONTRADA. '+E.Message);
              //cLog.lines.add('     » '+Arquivo);
            end;
          end;
     end;
end;
}
procedure TNotaFiscal_ImportarNFSe.bAbrirClick(Sender: TObject);
var
   i:integer;
begin
     cArqXML.Execute;
     if cArqXML.Files.Count > 0 then begin
        cArquivos.Clear;
        cLog.Clear;
        tForn.open;
        tForn.Clear;
        tNotas.Open;
        tNotas.Clear;
        mErro := false;
        // Preenchendo o vetor com os nomes dos arquivos "XML".
        tNotas.Clear;
        cArquivos.clear;
        for i := 0 to pred(cArqXML.Files.Count) do begin
            cArquivos.items.add(cArqXML.Files.Strings[i]);
        end;
     end;
     cArquivos.SelectAll;
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
     CarregaXML;
end;
     
procedure TNotaFiscal_ImportarNFSe.CarregaXML;
var
   i:integer;
begin
     mRelac := 1;
     if cArqXML.Files.Count > 0 then begin
        tNotas.open;
        tNotas.Clear;
        tForn.Open;
        tForn.Clear;
        cArquivos.SelectAll;
        for i := 0 to pred(cArquivos.Items.Count) do begin
            if cArquivos.Selected[i] then begin
               XMLDoc.LoadFromFile(cArquivos.Items[i]);
               XMLDoc.Active := True;
               cLog.lines.add('');
               cLog.lines.add(StringOfChar('*', 120));
               cLog.lines.add(cArquivos.Items[i]);
               cLog.lines.add(StringOfChar('*', 120));
               CarregaNFSe;
            end;
            Application.ProcessMessages;
        end;
     end;
     cRelacao.RowCount := tNotas.recordcount+1;
end;

procedure TNotaFiscal_ImportarNFSe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_ImportarNFSe.Release;
     NotaFiscal_ImportarNFSe := nil;
end;

procedure TNotaFiscal_ImportarNFSe.FormShow(Sender: TObject);
var
   mxml:TMemo;
   i,l:integer;
   mCod,mMun:widestring;
begin
     PageControl1.ActivePageIndex := 0;
     cRelacao.Cells[0,0] := 'NOTA Nº';
     cRelacao.Cells[1,0] := 'FORNECEDOR';
     cDataEnt.Date := date;
     with Dados do begin
          PegaLayout;
          with Municipios do begin
               sql.clear;
               sql.add('select * from Municipios');
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
     bAbrirclick(nil);
end;

procedure TNotaFiscal_ImportarNFSe.GenereteTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
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

procedure TNotaFiscal_ImportarNFSe.AbreXML(pXML:string);
begin
    XMLDocument1.LoadFromFile(pXML);
    XMLDocument1.Active := True;
    GenereteTree(XMLDocument1.DocumentElement, nil);
end;

{
procedure TNotaFiscal_ImportarNFSe.ConsultaCNPJ(pCNPJ: string);
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
}
procedure TNotaFiscal_ImportarNFSe.cProcClick(Sender: TObject);
begin
     cNavio.Keyvalue := Dados.ProcessosDOC.fieldbyname('Navio_Ordem').asinteger;
end;

procedure TNotaFiscal_ImportarNFSe.CarregaNFSe;
var
   mVal, mCampo: string;
   l, ult, i, maxNivel, Nivel:integer;
   Pai, Filho: IXMLNode;
   mTipo:TFieldType;
const   
   Tipos = 'ftCurrency, ftFloat, ftDouble';
begin
     i := 0;
     l := 0;
     tForn.Append;
     tNotas.Append;
     with XMLDoc do begin
          Pai := DocumentElement.ChildNodes.FindNode(gCampos.cells[2, l]);
          for l := 0 to pred(gCampos.RowCount) do begin
              if trim(gCampos.cells[0, l]) = '' then break;
              MaxNivel := 2;
              while trim(gCampos.cells[MaxNivel, l]) <> '' do begin
                    inc(MaxNivel);
              end;
              dec(MaxNivel);
              try
                 Filho := Pai;
                 for Nivel := 3 to MaxNivel do begin
                     Filho := Filho.ChildNodes.FindNode(gCampos.cells[Nivel, l]);
                 end;
                 if Filho <> nil then begin
                    mVal := Filho.Text;
                    cLog.lines.add(concat(gCampos.cells[0, l]
                                  ,StringOfChar('.',30-Length(gCampos.cells[0, l]))
                                  ,' '
                                  ,gCampos.cells[MaxNivel,l]
                                  ,StringOfChar('.',30-Length(gCampos.cells[maxnivel, l]))
                                  ,': '
                                  , mval) );

                    try              
                       if pos('_Forn_', gCampos.cells[0, l]) > 0 then begin
                          // Dados do Fornecedor 
                          mCampo := trim(stringreplace(gCampos.cells[0, l], '_Forn_', '', [rfReplaceAll]));
                          with tForn do begin
                               mTipo := FieldByName(mCampo).DataType;
                               if mTipo = ftString then fieldbyname(mCampo).value := mVal;
                               if (mTipo = ftInteger) or (mTipo = ftSmallint) then fieldbyname(mCampo).value := strtoint(mVal);
                               if pos(GetEnumName(TypeInfo(TFieldType), Integer(FieldByName(mCampo).DataType)), Tipos) > 0 then begin
                                  mVal := StringReplace(mVal, '.', ',', [rfReplaceAll]);
                                  fieldbyname(mCampo).value := strtofloat(mVal);
                               end;
                               if mTipo = ftDateTime then fieldbyname(mCampo).value := ISO8601ToDate(mVal);
                               if mTipo = ftDate then fieldbyname(mCampo).value := ISO8601ToDate(mVal);
                          end;
                       end else begin
                          // Dados do Nota Fiscal.
                          mCampo := gCampos.cells[0, l];
                          with tNotas do begin 
                               mTipo := FieldByName(mCampo).DataType;
                               if mTipo = ftString then fieldbyname(mCampo).value := mVal;
                               if (mTipo = ftInteger) or (mTipo = ftSmallint) then fieldbyname(mCampo).value := strtoint(mVal);
                               if mTipo = ftDateTime then fieldbyname(mCampo).value := ISO8601ToDate(mVal);
                               if mTipo = ftDate then fieldbyname(mCampo).value := ISO8601ToDate(mVal);
                               if pos(GetEnumName(TypeInfo(TFieldType), Integer(FieldByName(mCampo).DataType)), Tipos) > 0 then begin
                                  mVal := StringReplace(mVal, '.', ',', [rfReplaceAll]);
                                  fieldbyname(mCampo).value := strtofloat(mVal);
                               end;
                          end;
                       end;
                    except
                       cLog.lines.add('        ERRO DE CONVERSÃO: '+mCampo+ ' TIPO: ' + GetEnumName(TypeInfo(TFieldType), Integer(tForn.FieldByName(mCampo).DataType)));
                    end;
                 end;
              except 
                 cLog.lines.add(concat(gCampos.cells[0, l]
                               ,StringOfChar('.',30-Length(gCampos.cells[0, l]))
                               ,' '
                               ,gCampos.cells[MaxNivel,l]
                               ,StringOfChar('.',30-Length(gCampos.cells[maxnivel, l]))
                               ,': '
                               ,'********** TAG NÃO ENCONTRADA NO ARQUIVO XML **********'));
              end;
          end;
     end;
     with tForn do begin
          FieldByName('Isento').Value := true;
          FieldByName('Ativo').Value  := true;
          FieldByName('Pais').Value   := '1058';
          fieldbyname('Codigo').value := 0;
          if trim(fieldbyname('CNPJ').asstring) <> '' then begin
             if Dados.Fornecedores.locate('CNPJ', FieldByName('CNPJ').value, [loCaseInsensitive]) then begin
                fieldbyname('Codigo').value := Dados.Fornecedores.fieldbyname('Codigo').value;
             end;
          end else begin
             if trim(fieldbyname('CPF').asstring) <> '' then begin
                if Dados.Fornecedores.locate('CPF', FieldByName('CPF').value, [loCaseInsensitive]) then begin
                   fieldbyname('Codigo').value := Dados.Fornecedores.fieldbyname('Codigo').value;
                end;
             end;
          end;
          post;
     end;
     with tNotas do begin                       
          fieldbyname('Data_Entrada').value     := cDataEnt.Date;
          fieldbyname('Tipo').value             := 'NF';
          fieldbyname('Tipo_Pagamento').value   := 2;
          fieldbyname('Modelo').value           := '01';
          fieldbyname('Natureza_Codigo').value  := iif(fieldbyname('Estado').asstring = Dados.EmpresasEstado.AsString, Dados.ReferenciasFiscaisNatureza_Dentro.AsString, Dados.ReferenciasFiscaisNatureza_Fora.AsString);
          fieldbyname('Complementar').value     := false;
          fieldbyname('Incentivo_Fiscal').value := 'OUTROS';
          fieldbyname('Fornecedor').value       := tForn.fieldbyname('Codigo').asinteger;
          if Dados.ReferenciasFiscais.locate('Servico_Nacional', ApenasNumeros(fieldbyname('Servico_Nacional').asstring), [loCaseInsensitive]) then begin
             fieldbyname('Referencia_Fiscal').value := Dados.ReferenciasFiscaisCodigo.AsInteger;
          end;
     end;
     with cRelacao do begin
          cells[0, mRelac] := tNotas.fieldbyname('Nota').AsString;
          cells[1, mRelac] := trim(tForn.fieldbyname('CNPJ').AsString) + trim(tForn.fieldbyname('CPF').AsString);
          inc(mRelac);
     end;
     tNotas.post;
end;

procedure TNotaFiscal_ImportarNFSe.PegaLayout;
var
   col, lin:integer;
begin
     lin := 0;
     with ttmp do begin
          sql.clear;
          sql.add('select * from Cybersoft_Cadastros.dbo.LayoutNFS where Municipio = :pMun');
          parambyname('pMun').AsString := '9999999';
          open;
          first;
          gCampos.RowCount  := recordcount+1;
          while not eof do begin
                for col := 1 to pred(FieldCount) do begin
                    gCampos.cells[col-1, lin] := Fields[col].AsString;
                end;
                inc(lin);
                next;
          end;
     end;
     autoajustecol(gCampos);
end;



end.

