unit frmNotaFiscal_ImportarNFSe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Math, system.UITypes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, MemDS, DBAccess, MSAccess, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, System.TypInfo, System.DateUtils, uNFSeModel, uNFSeXMLReader, RxToolEdit, Vcl.Grids,
  Xml.XMLIntf; //, Xml.adomxmldom,Xml.XMLDoc, 
type
  TNotaFiscal_ImportarNFSe = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tTmp: TMSQuery;
    cArqXML: TOpenDialog;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cProc: TDBLookupComboBox;
    StaticText3: TStaticText;
    cNavio: TDBLookupComboBox;
    StaticText13: TStaticText;
    cDataEnt: TDateEdit;
    bAbrir: TSpeedButton;
    Grade: TStringGrid;
    cSubs: TCheckBox;
    Prod: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bAbrirClick(Sender: TObject);
    procedure cProcClick(Sender: TObject);
  private
    { Private declarations }
    procedure SalvarNFSe(NFSe: TNFSe);
  public
    { Public declarations }
    mErro:boolean;
    mRelac
   ,mCodEmit: integer;    
  end;

var
  NotaFiscal_ImportarNFSe: TNotaFiscal_ImportarNFSe;

implementation

{$R *.dfm}

uses frmDMFiscal, frmDados, Funcoes;

procedure TNotaFiscal_ImportarNFSe.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TNotaFiscal_ImportarNFSe.bAbrirClick(Sender: TObject);
var
  Reader: TNFSeXMLReader;
  NFSe: TNFSe;
  mArq: string;
  i: integer;
  infNFSe: IXMLNode;
begin
     cArqXML.Execute;
     if cArqXML.Files.Count > 0 then begin
        Grade.RowCount := 0;
        Reader := TNFSeXMLReader.Create;
        for i :=  0 to pred(cArqXML.Files.Count) do begin
            try
               mArq := cArqXML.Files.Strings[i];

               // Lendo o arquivo XML.
               NFSe := Reader.LerArquivo(mArq);
               
               if NFSe.Nota > 0 then begin
                  // Verrificando se nota ja existe.
                  with ttmp do begin
                       sql.clear;
                       sql.add('select Nota from NotasTerceiros where Nota = :pNota and Data_Emissao = :pData and Fornecedor = (select Codigo from Fornecedores where CNPJ = :pCNPJ)');
                       ParamByName('pNota').asinteger  := NFSe.Nota;
                       ParamByName('pData').asdatetime := NFSe.Data_Emissao;
                       ParamByName('pCNPJ').asstring   := NFSe.EmitCNPJ;
                       open;
                       if (fieldbyname('Nota').asinteger > 0) and not cSubs.checked then begin
                          Grade.RowCount    := Grade.RowCount + 1;
                          Grade.Cells[0, i] := mArq;
                          Grade.cells[1, i] :='Nota Fiscal já importada anteriormente'
                       end else begin
                          // Salvando a nota carregada do xml.
                          SalvarNFSe(NFSe);
                          
                          Grade.RowCount    := Grade.RowCount + 1;
                          Grade.Cells[0, i] := mArq;
                          Grade.Cells[1, i] := 'SUCESSO';
                       end;
                  end;
               end else begin
                  Grade.RowCount    := Grade.RowCount + 1;
                  Grade.Cells[0, i] := mArq;
                  Grade.cells[1, i] :='XML da NFS-e invalido'
               end;
            except on E: Exception do 
               begin
                   Grade.RowCount    := Grade.RowCount + 1;
                   Grade.Cells[0, i] := mArq;
                   Grade.Cells[1, i] := 'ERRO: '+E.Message;
               end;
            end;
        end;
        Showmessage('Importação terminada!');
     end;
end;

procedure TNotaFiscal_ImportarNFSe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_ImportarNFSe.Release;
     NotaFiscal_ImportarNFSe := nil;
end;

procedure TNotaFiscal_ImportarNFSe.FormShow(Sender: TObject);
begin
     Grade.ColWidths[0] := 450;
     Grade.ColWidths[1] := 250;
     Grade.RowCount     := 0;
     cDataEnt.Date := date;
     with Dados do begin
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
     end;
end;

procedure TNotaFiscal_ImportarNFSe.cProcClick(Sender: TObject);
begin
     cNavio.Keyvalue := Dados.ProcessosDOC.fieldbyname('Navio_Ordem').asinteger;
end;

procedure TNotaFiscal_ImportarNFSe.SalvarNFSe(NFSe: TNFSe);
var
  mCodRef: integer;
  mMuni
 ,mNat
 ,mServ
 ,mEst: string;
 mApura: boolean;
begin
     // Verifica se nota ja existe. 
     with Dados, dmFiscal do begin 
          try
             with ttmp do begin
                  // Verrificando se a referência existe com o codigo do serviço.
                  sql.clear;
                  sql.add('select Codigo, Natureza_Dentro, Natureza_Fora, Servico from ReferenciasFiscais where Servico_Nacional = :pServ');
                  parambyname('pServ').asstring := NFSe.Servico;
                  open;
                  mCodRef := FieldByName('Codigo').asinteger;
                  mServ   := FieldByName('Servico').asstring;
                  mNat    := iif(NFSe.EmitUF = EmpresasEstado.value, fieldbyname('Natureza_Dentro').asstring, fieldbyname('Natureza_Fora').asstring);
                  if isEmpty then begin
                     Grade.RowCount := Grade.RowCount + 1;
                     Grade.Cells[0, Grade.Rowcount] := NFSe.arq;
                     Grade.Cells[1, Grade.Rowcount] := '» ERRO: Codigo do serviço ('+NFSe.Servico+') não encontrado nas referências fiscais';
                     abort;
                  end;
               
                  // Verificando se o fornecedor já esta cadastrado, se não cadastro novo.
                  sql.clear;
                  sql.add('select Codigo from Fornecedores where CNPJ = :pCNPJ');
                  parambyname('pCNPJ').asstring := NFSe.EmitCNPJ;
                  open;
                  mCodEmit := FieldByName('Codigo').asinteger;
                  if isEmpty then begin
                     // Pegando o nome do municipio.
                     sql.clear;
                     sql.add('select Nome from cybersoft_Cadastros.dbo.Municipios where Codigo = :pCod');
                     parambyname('pCod').asstring := NFSe.EmitMun;
                     open;
                     mMuni := fieldbyname('Nome').AsString;
                     
                     // Pegando o nome do Estado.
                     sql.clear;
                     sql.add('select Nome from cybersoft_Cadastros.dbo.Estados where Codigo = :pCod');
                     parambyname('pCod').asstring := NFSe.EmitUF;
                     open;
                     mEst := fieldbyname('Nome').AsString;
                  
                     // Gerando o codigo do fornecedor.
                     sql.clear;
                     sql.add('select Codigo = isnull(max(Codigo), 0)+1 from Fornecedores');
                     open;
                     mCodEmit := fieldbyname('Codigo').asinteger;
                  
                     Fornecedores.append;
                                  FornecedoresCodigo.value              := mCodEmit;
                                  FornecedoresCNPJ.value                := NFSe.EmitCNPJ;
                                  FornecedoresNome.value                := NFSe.EmitNome;
                                  FornecedoresRua.value                 := NFSe.EmitLogr;
                                  FornecedoresRua_Numero.value          := NFSe.Emitnro;
                                  FornecedoresBairro.value              := NFSe.EmitBairro;
                                  FornecedoresMunicipio_Codigo.value    := strtoint(NFSe.EmitMun);
                                  FornecedoresMunicipio.value           := mMuni;
                                  FornecedoresEstado.value              := NFSe.EmitUF;
                                  FornecedoresCEP.value                 := NFSe.EmitCEP;
                                  FornecedoresTelefone1.value           := NFSe.EmitFone;
                                  FornecedoresInscricao_Municipal.value := NFSe.EmitIM;
                                  FornecedoresEstado_Nome.value         := mEst;
                                  FornecedoresEmail.value               := NFSe.EmitEMail;
                                  FornecedoresAtivo.value               := true;
                                  FornecedoresPais.value                := '1058';
                                  FornecedoresRamo_Atividade.value      := 7;
                                  FornecedoresIndicador_IE.value        := '9';
                                  FornecedoresIsento.value              := true;
                                  FornecedoresZona_Franca.value         := false;
                                  FornecedoresSimples.value             := false;
                                  FornecedoresMEI.value                 := false;
                                  FornecedoresMicro_Empresa.value       := false;
                     Fornecedores.post;
                  end;
             end;
             with ttmp do begin
                  // Deleta a nota casa ja exista.
                  sql.clear;
                  sql.add('delete from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn');
                  sql.add('delete from NotasTerceiros      where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn');
                  ParamByName('pNota').asinteger  := NFSe.Nota;
                  ParamByName('pData').asdatetime := NFSe.Data_Emissao;
                  ParamByName('pForn').asinteger  := mCodEmit;
                  execute;
             end;

             // Capa da Nota fiscal.
             with NotasTerceiros do begin
                  append;
                        NotasTerceirosNota.value                    := NFSe.Nota;
                        NotasTerceirosSerie.value                   := NFSe.Serie;
                        NotasTerceirosData_Emissao.value            := NFSe.Data_Emissao;
                        NotasTerceirosTipo.value                    := 'NFS';
                        NotasTerceirosModelo.value                  := '13';
                        NotasTerceirosNatureza_Codigo.value         := mNat;
                        NotasTerceirosEstado.value                  := NFSe.Estado;
                        NotasTerceirosFornecedor.value              := mCodEmit;
                        NotasTerceirosServico.value                 := mServ;
                        NotasTerceirosServico_Nacional.value        := NFSe.Servico_Nacional;
                        NotasTerceirosValor_TotalNota.value         := NFSe.Valor_TotalNota; 
                        NotasTerceirosAliquota_ISS.value            := NFSe.Aliquota_ISS;
                        NotasTerceirosValor_TotalProdutos.value     := NFSe.Valor_TotalProdutos;
                        NotasTerceirosValor_TotalLiquido.value      := NFSe.Valor_TotalLiquido;
                        NotasTerceirosValor_TotalLiquidoOrig.value  := NFSe.Valor_TotalLiquido;
                        NotasTerceirosValor_TotalProdutosOrig.value := NFSe.Valor_TotalProdutos;
                        NotasTerceirosValor_ISSQN.value             := NFSe.Valor_ISSQN;
                        NotasTerceirosValor_BCCBS.value             := NFSe.Valor_BCCBS;
                        NotasTerceirosValor_BCIBS.value             := NFSe.Valor_BCIBS;
                        NotasTerceirosValor_PIS.value               := NFSe.Valor_PIS;
                        NotasTerceirosValor_COFINS.value            := NFSe.Valor_COFINS;
                        NotasTerceirosReferencia_Fiscal.value       := mCodRef;
                        NotasTerceirosProcesso.value                := cProc.Text;
                        NotasTerceirosData_Entrada.value            := cDataEnt.Date;
                  post;      
             end;
             // Itens da nota fiscal.
             with Prod do begin
                  sql.clear;
                  sql.add('select Descricao');
                  sql.add('      ,Codigo');
                  sql.add('      ,Unidade');
                  sql.add('      ,NCM');
                  sql.add('      ,Aliquota_PIS');
                  sql.add('      ,Aliquota_COFINS');
                  sql.add('      ,CSTPIS_Entrada');
                  sql.add('      ,CSTCOFINS_Entrada');
                  sql.add('from Produtos');
                  sql.add('where Servico_Vinculado = :pServ');
                  parambyname('pserv').asstring := NFSe.Servico_Nacional;
                  open;
             end;
             with ttmp do begin
                  sql.clear;
                  sql.add('select tributavel from Cybersoft_Cadastros.dbo.CSTPIS where Codigo = :pCod');
                  parambyname('pCod').AsString := ProdutosCSTPIS_Entrada.AsString;
                  open;
                  mApuracaoPISCOFINS := tItem.FieldByName('Tributavel').AsBoolean;

                  sql.clear;
                  sql.add('select isnull(max(item), 0)+1 as item');
                  sql.add('from NnotasTerceirosItens');
                  sql.add('where Nota         = :pnota');
                  sql.add('  and Data_Emissao = :pdata');
                  sql.add('  and Fornecedor   = :pforn');
                  sql.add('  and (select isnull(Servico, '''') from NotasTerceiros where Nota = :pnota and Data_Emissao = :pdata and Fornecedor = :pforn) is not null');
                  parambyname('pnota').asinteger := NotasTerceirosNota.value;
                  parambyname('pdata').asdate    := NotasTerceirosData_emissao.value;
                  parambyname('pforn').asinteger := NotasTerceirosFornecedor.value;
                  open;
             end;
             NotasTerceirosItens.append;
                                 NotasTerceirosItensItem.Value                 := tItem.FieldByName('Item').AsInteger;
                                 NotasTerceirosItensNota.Value                 := NotasTerceirosNota.Value;
                                 NotasTerceirosItensData_Emissao.Value         := NotasTerceirosData_Emissao.Value;
                                 NotasTerceirosItensData_Entrada.Value         := NotasTerceirosData_Entrada.Value;
                                 NotasTerceirosItensFornecedor.Value           := NotasTerceirosFornecedor.Value;
                                 NotasTerceirosItensNatureza_Codigo.Value      := NotasTerceirosNatureza_Codigo.Value;
                                 NotasTerceirosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
                                 NotasTerceirosItensUnidade_Medida.Value       := ProdutosUnidade.Value;
                                 NotasTerceirosItensNCM.Value                  := ProdutosNCM.Value;
                                 NotasTerceirosItensCodigoTrib_TabA.Value      := Copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
                                 NotasTerceirosItensCodigoTrib_TabB.Value      := Copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
                                 NotasTerceirosItensDisponivel.Value           := 0;
                                 NotasTerceirosItensValor_Desconto.Value       := 0;
                                 NotasTerceirosItensAliquota_ICMSOper.Value    := 0;
                                 NotasTerceirosItensValor_BCICMSOper.Value     := 0;
                                 NotasTerceirosItensValor_ICMSOper.Value       := 0;
                                 NotasTerceirosItensValor_IsentasICMS.Value    := 0;
                                 NotasTerceirosItensValor_OutrasICMS.Value     := 0;
                                 NotasTerceirosItensAliquota_ICMSSub.Value     := 0;
                                 NotasTerceirosItensValor_BCICMSSub.Value      := 0;
                                 NotasTerceirosItensValor_ICMSSub.Value        := 0;
                                 NotasTerceirosItensAliquota_IPI.Value         := 0;
                                 NotasTerceirosItensValor_IPI.Value            := 0;
                                 NotasTerceirosItensValor_BCIPI.Value          := 0;
                                 NotasTerceirosItensValor_OutrasIPI.Value      := 0;
                                 NotasTerceirosItensValor_IsentasIPI.Value     := 0;
                                 NotasTerceirosItensPeso_Liquido.Value         := 0;
                                 NotasTerceirosItensPeso_Bruto.Value           := 0;
                                 NotasTerceirosItensTipo.Value                 := 'NF';
                                 NotasTerceirosItensValor_BCPIS.Value          := NotasTerceirosItensValor_Liquido.Value;
                                 NotasTerceirosItensValor_BCCOFINS.Value       := NotasTerceirosItensValor_Liquido.Value;
                                 NotasTerceirosItensAliquota_PIS.Value         := ProdutosAliquota_PIS.AsFloat;
                                 NotasTerceirosItensValor_PIS.Value            := NotasTerceirosItensValor_Liquido.Value * (ProdutosAliquota_PIS.Value/100);
                                 NotasTerceirosItensAliquota_COFINS.Value      := ProdutosAliquota_COFINS.AsFloat;
                                 NotasTerceirosItensValor_COFINS.Value         := NotasTerceirosItensValor_Liquido.Value * (ProdutosAliquota_COFINS.Value/100);
                                 NotasTerceirosItensCST_PIS.Value              := ProdutosCSTPIS_Entrada.AsString;
                                 NotasTerceirosItensCST_COFINS.Value           := ProdutosCSTCOFINS_Entrada.AsString;
                                 NotasTerceirosItensApuracao_PISCOFINS.Value   := mApuracaoPISCOFINS;
                                 NotasTerceirosItensConsumo_Energia.Value      := 0;
                                 NotasTerceirosItensCIAP_BCICMS.Value          := 0;
                                 NotasTerceirosItensCIAP_AliquotaICMS.Value    := 0;
                                 NotasTerceirosItensCIAP_ValorICMS.Value       := 0;
                                 NotasTerceirosItensCIAP_Parcela.Value         := 0;
                                 NotasTerceirosItensCST_IPI.Value              := ReferenciasFiscaisCSTIPI.AsString;
                                 NotasTerceirosItensNota_Referencia.Value      := 0;
                                 NotasTerceirosItensMovimenta_Estoque.Value    := false;
                                 NotasTerceirosItensMovimenta_Inventario.Value := false;
                                 NotasTerceirosItensInventario_Terceiros.Value := false;
                                 NotasTerceirosItensReferencia_Fiscal.Value    := NotasTerceirosReferencia_Fiscal.Value;
             post;     
          except on E: Exception do 
             begin
                  Grade.RowCount := Grade.RowCount + 1;
                  Grade.Cells[0, Grade.Rowcount] := NFSe.arq;
                  Grade.Cells[1, Grade.Rowcount] := '» ERRO: Não pode salvar a NFS-e.'+E.Message;
             end;
          end;
     end;
end;


end.

