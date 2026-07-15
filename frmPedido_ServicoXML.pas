unit frmPedido_ServicoXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, 
  RxToolEdit, Vcl.Mask, Vcl.DBCtrls, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Buttons, Vcl.Grids,
  uNFSeModel, uNFSeXMLReader;

type
  TPedido_ServicoXML = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    Grade: TStringGrid;
    Prod: TMSQuery;
    cArqXML: TOpenDialog;
    tTmp: TMSQuery;
    Panel3: TPanel;
    bAbrir: TSpeedButton;
    StaticText1: TStaticText;
    cProc: TDBLookupComboBox;
    StaticText13: TStaticText;
    cDataEnt: TDateEdit;
    cSubs: TCheckBox;
    cCentroCusto: TDBLookupComboBox;
    StaticText60: TStaticText;
    tClientes: TMSQuery;
    StaticText20: TStaticText;
    cRef: TDBLookupComboBox;
    Refer: TMSQuery;
    dsRefer: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bAbrirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function SalvarNFSe(NFSe: TNFSe): boolean;
    { Private declarations }
  public
    { Public declarations }
    mNotas, mServ, mNat: string;
    mLin: integer;
    mCodRef
   ,mCodemit: integer;
  end;

var
  Pedido_ServicoXML: TPedido_ServicoXML;

implementation

{$R *.dfm}

uses frmDados, frmDMFiscal, Funcoes;

procedure TPedido_ServicoXML.bAbrirClick(Sender: TObject);
var
  Reader: TNFSeXMLReader;
  NFSe: TNFSe;
  mArq: string;
  i: integer;
  infNFSe: IXMLNode;
begin
     if trim(cRef.Text) = '' then begin 
        showmessage('Referência fiscal não informada!');
        abort;
     end;
     if cDataEnt.Date = 0 then begin 
        showmessage('Data de entrada invalida!');
        abort;
     end;
     
     mCodRef := Refer.FieldByName('Codigo').asinteger;
     mServ   := Refer.FieldByName('Servico').asstring;
     
     cArqXML.Execute;
     if cArqXML.Files.Count > 0 then begin
        mLin   := 0;
        Reader := TNFSeXMLReader.Create;
        for i :=  0 to pred(cArqXML.Files.Count) do begin
               mArq := cArqXML.Files.Strings[i];

               // Lendo o arquivo XML.
               NFSe := Reader.LerArquivo(mArq);
               mNat := iif(NFSe.TomaUF = Dados.EmpresasEstado.value, Refer.fieldbyname('Natureza_Dentro').asstring, Refer.fieldbyname('Natureza_Fora').asstring);
               
               if NFSe.Nota > 0 then begin
                  // Salvando a nota carregada do xml.
                  if SalvarNFSe(NFSe) then begin
                     Grade.Cells[0, mLin] := mArq;
                     Grade.Cells[1, mLin] := 'SUCESSO';
                     inc(mLin);
                  end;
               end else begin
                  Grade.Cells[0, mLin] := mArq;
                  Grade.cells[1, mLin] := 'XML da NFS-e invalido';
                  inc(mLin);
               end;
               Grade.RowCount := mlin;
        end;
        Showmessage('Importação terminada!');
     end;

end;

procedure TPedido_ServicoXML.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TPedido_ServicoXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Pedido_ServicoXML.Release;
     Pedido_ServicoXML := nil;
end;

procedure TPedido_ServicoXML.FormShow(Sender: TObject);
begin
     Grade.ColWidths[0] := 450;
     Grade.ColWidths[1] := 320;
     cDataEnt.Date := date;
     with Dados do begin
          with ProcessosDOC do begin
               sql.clear;
               sql.add('select * from ProcessosDocumentos where isnull(Desativado, 0) = 0 order by Processo');
               open;
          end;
          with CentroCusto do begin
               sql.clear;
               sql.add('select * from CentroCusto order by Descricao');
               open;
          end;
          with Refer do begin
               sql.clear;
               sql.add('select Codigo, Descricao, Natureza_Dentro, Natureza_Fora, Servico from ReferenciasFiscais where isnull(Servico, '''') <> '''' ');
               open;
          end;
     end;
end;

function TPedido_ServicoXML.SalvarNFSe(NFSe: TNFSe): boolean;
var
  mItem: integer;
  mMuni
 ,mEst: string;
  mApura
 ,mTrib: boolean;
begin
     // Verifica se nota ja existe. 
     result := true;
     with Dados, dmFiscal do begin 
             with ttmp do begin
                  // Verificando se o clientes esta cadastrado (Tomador do Serviço).
                  with tClientes do begin
                       sql.Clear;
                       sql.add('select Codigo from Clientes where CNPJ = :pCNPJ');
                       parambyname('pCNPJ').asstring := NFSe.tomaCNPJ;
                       open;
                       if isempty then begin
                          Grade.Cells[0, mLin] := NFSe.arq;
                          Grade.Cells[1, mLin] := 'Cliente ('+NFSe.tomaNome+') não cadastrado';
                          inc(mLin);
                          result := false;
                       end;
                  end;
                  // Verifica se nota ja existe.
                  with ttmp do begin
                       sql.clear;
                       sql.add('select Numero from NotasServico where Numero = :pNota and Data_Emissao = :pData and Cliente = :pCli');
                       ParamByName('pNota').asinteger:= NFSe.Nota;
                       ParamByName('pData').asdate   := NFSe.Data_Emissao;
                       parambyname('pCli').Value     := ClientesCodigo.AsInteger;
                       open;
                       if (fieldbyname('Numero').asinteger > 0) and not cSubs.checked then begin
                          Grade.Cells[0, mLin] := NFSe.Arq;
                          Grade.cells[1, mLin] := 'Nota Fiscal já importada anteriormente';
                          inc(mLin);
                          result := false;
                       end;
                  end;
                  // Verificando se o produto já esta cadastrado.
                  if result then begin
                     with Prod do begin
                          sql.clear;
                          sql.add('select Codigo');
                          sql.add('      ,Aliquota_PIS');
                          sql.add('      ,Aliquota_COFINS');
                          sql.add('      ,CSTPIS_Entrada');
                          sql.add('      ,CSTCOFINS_Entrada');
                          sql.add('from Produtos');
                          sql.add('where Servico_Vinculado = :pServ');
                          parambyname('pserv').asstring := mServ;
                          open;
                          if isEmpty then begin
                             Grade.Cells[0, mLin] := NFSe.arq;
                             Grade.Cells[1, mLin] := 'Codigo do Produto('+NFSe.Servico+') não cadastrado';
                             inc(mLin);
                             result := false;
                          end;
                     end;
                  end;
                  // Capa da Nota fiscal.
                  if result then begin
                     with ttmp do begin 
                          sql.Clear;
                          sql.Add('delete from NotasServico where Numero = :pNota and Data_Emissao = :pData and Cliente = :pCli');
                          sql.Add('delete from NotasServicoItens where Nota = :pNota and Data = :pData');
                          ParamByName('pNota').asinteger := NFSe.Nota;
                          ParamByName('pData').asdate    := NFSe.Data_Emissao;
                          ParamByName('pCli').asinteger  := ClientesCodigo.AsInteger;
                          execute;
                     end;
                     with NotasServico do begin
                          append;
                               fieldbyname('Numero').Value            := NFSe.Nota;
                               fieldbyname('Data_Emissao').Value      := NFSe.Data_Emissao;
                               fieldbyname('Referencia_Fiscal').Value := ReferenciasFiscaisCodigo.AsInteger;
                               fieldbyname('Descricao_Servico').Value := ReferenciasFiscaisDescricao.asstring;
                               fieldbyname('Modelo').Value            := Empresas.FieldByName('NFServico_Modelo').Value;
                               fieldbyname('Serie').Value             := Empresas.FieldByName('NFServico_Serie').Value;
                               fieldbyname('Processo').Value          := cProc.Text;
                               fieldbyname('Cliente').Value           := ClientesCodigo.AsInteger;
                               fieldbyname('Servico').Value           := ReferenciasFiscaisServico.value;
                               fieldbyname('Natureza_Operacao').Value := iif(ClientesEstado.Value = EmpresasEstado.Value, ReferenciasFiscaisNatureza_Dentro.Value, ReferenciasFiscaisNatureza_Fora.Value);
                               fieldbyname('Aliquota_ISS').Value      := NFSe.Aliquota_ISS;
                               fieldbyname('Valor_ISS').Value         := NFSe.Valor_ISSQN;
                               fieldbyname('Valor_Servico').Value     := NFSe.Valor_TotalNota;
                               fieldbyname('Total_Servicos').Value    := NFSe.Valor_TotalNota;
                               fieldbyname('Total_Nota').Value        := NFSe.Valor_TotalNota;
                               fieldbyname('Valor_Liquido').Value     := NFSe.Valor_TotalLiquido;
                               fieldbyname('Aliquota_PIS').Value      := ServicosAliquota_PIS.Value;
                               fieldbyname('Aliquota_COFINS').Value   := ServicosAliquota_COFINS.Value;
                               fieldbyname('Cancelada').Value         := false;
                               fieldbyname('Total_Dedutiveis').Value  := 0;
                               fieldbyname('Servico_Nacional').Value  := NFSe.Servico_Nacional;
                               fieldbyname('Centro_Custo').Value      := iif(trim(cCentroCusto.text) <> '', CentroCustoCodigo.value, null);
                         post;
                     end;
                     
                     // Itens da nota fiscal.
                     with ttmp do begin
                          sql.clear;
                          sql.add('select isnull(max(item), 0)+1 as item');
                          sql.add('from NotasServicoItens');
                          sql.add('where Nota = :pNota');
                          sql.add('and Data = :pdata');
                          parambyname('pnota').asinteger := NotasServicoNumero.value;
                          parambyname('pdata').asdate := NotasServicoData_emissao.value;
                          open;
                          mItem := fieldbyname('Item').asinteger;
                     end;
                     with NotasServicoItens do begin
                          sql.clear;
                          sql.add('select * from NotasServicoItens where Nota is null');
                          open;
                          append;
                               NotasServicoItensItem.Value                 := mItem;
                               NotasServicoItensNota.Value                 := NotasServicoNumero.Value;
                               NotasServicoItensData.Value                 := NotasServicoData_Emissao.Value;
                               NotasServicoItensCodigo_Mercadoria.Value    := Prod.FieldByName('Codigo').AsInteger;
                               NotasServicoItensProcesso.Value             := NotasServicoProcesso.Value;
                               NotasServicoItensQuantidade.Value           := 1;
                               NotasServicoItensValor_Unitario.Value       := NFSe.Valor_TotalLiquido;
                               NotasServicoItensValor_Total.Value          := NFSe.Valor_TotalLiquido;
                               NotasServicoItensAliquota_PIS.Value         := Prod.fieldbyname('Aliquota_PIS').AsFloat;
                               NotasServicoItensValor_PIS.Value            := 0;
                               NotasServicoItensAliquota_COFINS.Value      := Prod.fieldbyname('Aliquota_COFINS').AsFloat;
                               NotasServicoItensValor_COFINS.Value         := 0;
                               //NotasServicoItensValor_IBSUF.Value          := NFSe.Valor_IBSUF;
                               //NotasServicoItensValor_IBSMun.Value         := NFSe.Valor_IBSMun;
                               //NotasServicoItensPercentual_IBSUF.Value     := NFSe.Perc_IBSUF;
                               //NotasServicoItensPercentual_IBSMun.Value    := NFSe.Perc_IBSMun;
                          post;     
                     end;
                  end;
             end;
     end;
end;


end.
