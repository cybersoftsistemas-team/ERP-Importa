unit frmBuscarXMLTerceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, VirtualTable, ACBrBase, ACBrDFe, ACBrNFe, DBAccess, MSAccess, Vcl.WinXCtrls;

type
  TBuscarXMLTerceiros = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bSair: TButton;
    bBuscar: TButton;
    tNSU: TVirtualTable;
    tNSUNSU: TIntegerField;
    tNSUChave: TStringField;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    StaticText1: TStaticText;
    cNSU: TEdit;
    dstNSU: TDataSource;
    mLog: TMemo;
    bImportar: TButton;
    NFe: TACBrNFe;
    tTmp: TMSQuery;
    cSobrepor: TToggleSwitch;
    tForn: TMSQuery;
    tRef: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   mPasta:string;
  end;

var
  BuscarXMLTerceiros: TBuscarXMLTerceiros;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, NFe_Util_2G_TLB, FUNCOES, frmDMFiscal;

procedure TBuscarXMLTerceiros.bBuscarClick(Sender: TObject);
var
   txtNSU
  ,mschema
  ,mChave: string;
   txtXML
  ,txtNFe: widestring;
   Util: NFe_Util_2G_Interface;
   MsgDados
  ,MsgRetWS
  ,msgResultado
  ,Proxy
  ,Usuario
  ,Senha
  ,verAplic
  ,dhResp
  ,UltNSU
  ,maxNSU: widestring;
   qtdeDocto
  ,i
  ,cStat: integer;
   Arq: TMemo;
   linha:TStringList;
begin
    txtNFe := '';
    Util   := NFe_Util_2G_TLB.CoUtil.Create;
    mLog.Clear;
    with Dados do begin
         txtNFe := util.distNSU('AN'                                         // Informar "AN" - o WS do Ambiente Nacional (AN) atende destinatário de qualquer UF.
                               ,EmpresasAmbiente.asinteger                   // Informar o código do ambiente desejado: 1- produção ou 2-homologação.
                               ,Trim(EmpresasCertificado_Digital.AsString)   // Informar o certificado digital que será utilizado para assinatura:.
                               ,Trim(EmpresasNFEletronica_Layout.AsString)   // Informar a versão da mensagem do WS: 4.00.
                               ,msgDados                                     // Retorna a mensagem XML enviada para o WS.
                               ,msgRetWS                                     // Retorna a mensagem XML de resposta do WS.
                               ,cStat                                        // Retorna o resultado da chamada do WS.
                               ,msgResultado                                 // Retorna a literal do resultado da chamada do WS.
                               ,Empresas.fieldbyname('CNPJ').asstring        // Informar o CNPJ ou CPF do ator que se deseja consultar os documentos fiscais.
                               ,Estados.fieldbyname('Numero').asstring       // Informar o cUF.
                               ,cNSU.text                                    // Informar o NSU a partir do qual deseja realizar a consulta.
                               ,verAplic                                     // Retorna a versão da aplicação do Web Service.
                               ,dhResp                                       // Retorna a Data e hora da mensagem de Resposta.
                               ,ultNSU                                       // Retorna o Último NSU pesquisado na Web Service.
                               ,maxNSU                                       // Retorna Maior NSU existente no Ambiente Nacional para o CNPJ/CPF informado.
                               ,qtdeDocto                                    // Retorna a quantidade de documentos devolvidos pelo WS.
                               ,proxy                                        // Endereço Proxy.
                               ,usuario                                      // Usuario proxy.
                               ,senha                                        // Senha do proxy.
                               ,EmpresasLicensa_NFE_Util.AsString );         // Licensa ds DLL.

         mLog.lines.add('Status    : '+msgResultado);
         mLog.lines.add('Último NSU: '+ultNSU);
         mLog.lines.add('Maximo NSU: '+maxNSU);

         if strtoint(UltNSU) > 0 then begin
            with Empresas do begin
                 edit;
                     fieldbyname('Ultimo_NSU').value := strtoint(UltNSU);
                 post;
            end;
         end;
         Arq := TMemo.create(Menu_Principal);
         with arq do begin
              parent  := Menu_Principal;
              visible := false;
              lines.Clear;
         end;
         // quebra o TXT no vetor linha, o delimitador da linha é caracter ASC=13
         Linha           := TStringList.Create;
         Linha.Delimiter := chr(13);
         Linha.Text      := txtNFe;
         TNSU.Open;
         Linha.SaveToFile(mPasta+'\Retorno.txt');
         
         for i := 0 to pred(linha.Count) do begin
             txtNSU  := copy(Linha[i],  1, 15);
             txtXML  := copy(Linha[i], 53, length(linha[i])-52);
             mSchema := copy(Linha[i], 17, 35);
             mChave  := copy(Linha[i], pos('<chNFe>', linha[i])+7, 44);
             if pos('procNFe_', mSchema) > 0 then begin
                Arq.Lines.add(txtXML);
                Arq.Lines.SaveToFile(mPasta+'\NFe_'+mChave+'.xml');
                Arq.lines.Clear;
                with tNSU do begin
                     append;
                          fieldbyname('NSU').Value   := strtoint(txtNSU);
                          fieldbyname('Chave').Value := mChave;
                     post;
                end;
             end;
         end;
    end;
end;

procedure TBuscarXMLTerceiros.bImportarClick(Sender: TObject);
var
  F: TSearchRec;
  Ret: Integer;
  mChave: string;
  existe:boolean;
begin
     mLog.Lines.clear;
     mLog.Refresh;
     with Dados, dmFiscal do begin
          Ret := FindFirst(mPasta+'\*.xml', faAnyFile, F);
          try
              while Ret = 0 do begin
                    Nfe.NotasFiscais.Clear;
                    Nfe.NotasFiscais.LoadFromFile(mPasta+'\'+f.name);
                    mChave := ApenasNumeros(NFe.NotasFiscais.Items[Ret].NFe.infNFe.ID);
                    mLog.Lines.Add('CHAVE: '+mChave);
                    //mLog.Lines.Add('NOTA : '+inttostr(NFe.NotasFiscais.Items[Ret].NFe.Ide.nNF));

                    // Caso selecionado para sobrepor deleta a nota existente e importa novamente.
                    if cSobrepor.State = tsson then begin
                       with tTmp do begin
                            sql.clear;
                            sql.add('delete from NotasTerceiros where NFe_cNF = '+quotedstr(mChave));
                            execute;
                       end;
                    end;
                    with tTmp do begin
                         sql.clear;
                         sql.add('select NFe_cNF from NotasTerceiros where NFe_cNF = '+quotedstr(mChave));
                         open;
                         Existe := recordcount > 0;
                    end;
                    with tRef do begin
                         sql.clear;
                         sql.add('select Codigo, CSTICMS = isnull(CSTICMS, ''000'') from ReferenciasFiscais where Natureza_RefDentro = :pCFOP or Natureza_RefFora = :pCFOP');
                         parambyname('pCFOP').Value := NFe.NotasFiscais.Items[Ret].NFe.Det[0].Prod.CFOP;
                         open;
                    end;
                    if not Existe then begin
                       // Importando o cabeçalho da nota fiscal.
                       with tForn do begin
                            sql.clear;
                            sql.add('select Codigo from Fornecedores where CNPJ = :pCNPJ');
                            parambyname('pCNPJ').value := NFe.NotasFiscais.Items[Ret].NFe.Emit.CNPJCPF;
                            open;
                       end;

                       with NotasTerceiros do begin
                            open;
                            Append;
                                 NotasTerceirosNota.Value                    := NFe.NotasFiscais.Items[Ret].NFe.Ide.nNF;
                                 NotasTerceirosData_Emissao.Value            := NFe.NotasFiscais.Items[Ret].NFe.Ide.dEmi;
                                 NotasTerceirosData_Entrada.Value            := NFe.NotasFiscais.Items[Ret].NFe.Ide.dSaiEnt;
                                 NotasTerceirosNFe_cNF.Value                 := mChave;
                                 NotasTerceirosNFe_Protocolo.Value           := NFe.NotasFiscais.Items[Ret].NFe.procNFe.nProt;
                                 NotasTerceirosTipo.Value                    := 'NF';
                                 NotasTerceirosModelo.Value                  := inttostr(NFe.NotasFiscais.Items[Ret].NFe.Ide.modelo);
                                 NotasTerceirosSerie.Value                   := inttostr(NFe.NotasFiscais.Items[Ret].NFe.Ide.serie);
                                 NotasTerceirosFornecedor.Value              := tForn.fieldbyname('Codigo').asinteger;
                                 NotasTerceirosEstado.Value                  := NFe.NotasFiscais.Items[Ret].NFe.Emit.EnderEmit.UF;
                                 NotasTerceirosReferencia_Fiscal.Value       := tRef.fieldbyname('Codigo').asinteger;
                                 NotasTerceirosNatureza_Codigo.Value         := NFe.NotasFiscais.Items[Ret].NFe.Det[0].Prod.CFOP;
                                 NotasTerceirosProvisoria.Value              := false;
                                 NotasTerceirosFUNDAP.Value                  := False;
                                 NotasTerceirosValor_TotalProdutos.Value     := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vProd;
                                 NotasTerceirosValor_TotalProdutosOrig.Value := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vProd;
                                 NotasTerceirosValor_TotalNota.Value         := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vNF;
                                 NotasTerceirosValor_BCICMSOper.Value        := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vBC;
                                 NotasTerceirosValor_ICMSOper.Value          := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vICMS;
                                 NotasTerceirosValor_BCICMSSub.Value         := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vBCST;
                                 NotasTerceirosValor_ICMSSub.Value           := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vST;
                                 NotasTerceirosValor_TotalBCIPI.Value        := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vProd;
                                 NotasTerceirosValor_TotalIPI.Value          := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vIPI;
                                 NotasTerceirosValor_TotalDescontos.Value    := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vDesc;
                                 NotasTerceirosValor_PIS.Value               := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vPIS;
                                 NotasTerceirosValor_COFINS.Value            := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vCOFINS;
                                 NotasTerceirosTotal_Despesas.Value          := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vOutro;
                                 NotasTerceirosValor_IsentasICMS.Value       := 0;
                                 NotasTerceirosValor_OutrasICMS.Value        := 0;
                                 NotasTerceirosValor_IsentasIPI.Value        := 0;
                                 NotasTerceirosValor_OutrasIPI.Value         := 0;
                                 NotasTerceirosValor_TotalLiquido.Value      := NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vNF - NFe.NotasFiscais.Items[Ret].NFe.Total.ICMSTot.vDesc;
                                 if tRef.RecordCount > 0 then NotasTerceirosOrigem_Mercadoria.Value := strtoint(copy(tRef.fieldbyname('CSTICMS').asstring, 1, 1));
                                 NotasTerceirosProcesso.value                := NULL;
                                 
                                 (*
                                 NotasTerceirosCentro_Custo.value            :=
                                 NotasTerceirosData_Entrada.value            :=
                                 NotasTerceirosQuantidade.value              :=
                                 NotasTerceirosAliquota_ICMSOper.value       :=
                                 NotasTerceirosValor_TotalDescontos.value    :=
                                 NotasTerceirosValor_IsentasICMSSub.value    :=
                                 NotasTerceirosValor_OutrasICMSSub.value     :=
                                 NotasTerceirosObservacoes.value             :=
                                 NotasTerceirosVolume_PesoLiquido.value      :=
                                 NotasTerceirosVolume_PesoBruto.value        :=
                                 NotasTerceirosAliquota_PIS.value            :=
                                 NotasTerceirosValor_PIS.value               :=
                                 NotasTerceirosAliquota_COFINS.value         :=
                                 NotasTerceirosValor_COFINS.value            :=
                                 NotasTerceirosClassificacao .value          :=
                                 NotasTerceirosModalidade_Pgto.value         :=
                                 NotasTerceirosAliquota_ISS.value            :=
                                 NotasTerceirosIncentivo_Fiscal .value       :=
                                 NotasTerceirosValor_TotalLiquidoOrig.value  :=
                                 NotasTerceirosDesdobramento.value           := false;
                                 NotasTerceirosModalidade_Frete.value        :=
                                 NotasTerceirosNatureza_Frete.value          :=
                                 NotasTerceirosTransportador_Codigo.value    :=
                                 NotasTerceirosValor_TotalFrete.value        :=
                                 NotasTerceirosMunicipio_Origem.value        :=
                                 NotasTerceirosMunicipio_Destino.value       :=
                                 NotasTerceirosTotal_Despesas.value          :=
                                 NotasTerceirosTipo_Pagamento.value          :=
                                 NotasTerceirosComplementar.value            :=
                                 NotasTerceirosValor_IR.value                :=
                                 NotasTerceirosValor_CSLL.value              :=
                                 NotasTerceirosValor_INSS.value              :=
                                 NotasTerceirosArmazem.value                 :=
                                 *)
                                 
                                 {
                                 NotasTerceirosIncentivo_Fiscal.Value        := 'OUTROS';
                                 NotasTerceirosQuantidade.Value              := cQtdeTotal.Value;
                                 NotasTerceirosVolume_PesoLiquido.Value      := cPesoLiquido.Value;
                                 NotasTerceirosVolume_PesoBruto.Value        := cPesoBruto.Value;
                                 NotasTerceirosClassificacao.Value           := ReferenciasFiscaisClassificacao_TotalNota.Value;
                                 NotasTerceirosCentro_Custo.Value            := '';
                                 NotasTerceirosProcesso.Value                := '';
                                 }
                                 
                            post;
                       end;
                    end;
                    Ret := FindNext(F);
              end;
          finally
              FindClose(F);
          end;
     end;
end;

procedure TBuscarXMLTerceiros.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TBuscarXMLTerceiros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     BuscarXMLTerceiros.release;
     BuscarXMLTerceiros          := nil;
end;

procedure TBuscarXMLTerceiros.FormShow(Sender: TObject);
begin
     mLog.Clear;
     with Dados do begin
          with Empresas do begin
               sql.clear;
               sql.add('select * from Empresas where Codigo = :pEmp');
               parambyname('pEmp').asinteger := Menu_Principal.mEmpresa;
               open;
               cNSU.text := iif(trim(fieldbyname('Ultimo_NSU').asstring) = '', 0, fieldbyname('Ultimo_NSU').asstring);
          end;
          with Estados do begin
               SQL.Clear;
               SQL.Add('select * from Estados where Codigo = :pUF');
               ParamByName('pUF').Asstring := Empresas.fieldbyname('Estado').asstring;
               Open;
          end;
          Configuracao.Open;

          mPasta := Trim(ConfiguracaoPasta_Importacao.asstring)+'\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
          if EmpresasMatriz_Filial.AsBoolean = true then
             mPasta := mPasta + '_Matriz'
          else
             mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);
          mPasta := mPasta+'\NF_Terceiros';
          if not DirectoryExists(mPasta) then begin
             ForceDirectories(mPasta);
          end;
     end;
end;



end.
