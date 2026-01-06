unit frmNFe_RecuperarXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls,
  RXCtrls, Funcoes, NFe_Util_2G_TLB, XMLDoc, XMLIntf, DateUtils, system.UITypes, MemDS;

type
  TNFe_RecuperarXML = class(TForm)
    cTipo: TRadioGroup;
    Panel1: TPanel;
    bSair: TButton;
    bConsultar: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bRecuperar: TButton;
    Grade: TRxDBGrid;
    tNotasRef: TMSQuery;
    bBuscar: TButton;
    AbrirXML: TOpenDialog;
    bDownload: TButton;
    Image3: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cMensagens: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cTipoClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cDataChange(Sender: TObject);
    procedure bConsultarClick(Sender: TObject);
    procedure AssinarNFe;
    procedure GerarXML;
    function  MontaDetalhe(item:integer; i:Integer; Qtde:double; Valor:double): string;
    procedure bRecuperarClick(Sender: TObject);
    procedure BuscarNFe;
    procedure bBuscarClick(Sender: TObject);
    procedure bDownloadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NFe_RecuperarXML: TNFe_RecuperarXML;
  //======  Identificação do documento  =======
  ide_natOp,
  ide,
  ide_cMunFG,
  ide_NFref,
  ide_verProc:widestring;
  ide_cUF,
  ide_cNF,
  ide_indPag,
  ide_mode,
  ide_serie,
  ide_nNF,
  ide_tpNF,
  ide_tpIMP,
  ide_cDV,
  ide_tpAmb,
  ide_finNFe,
  ide_tpEmis,
  ide_procEmi:integer;
  ide_dEmi,
  ide_dSaiEnt:Tdatetime;
  //======  Dados do  Emitente  ==========
  emi,
  emi_CNPJ,
  emi_xNome,
  emi_xFant,
  emi_xLgr,
  emi_nro,
  emi_xCpl,
  emi_xBairro,
  emi_cMun,
  emi_xMun,
  emi_UF,
  emi_CEP,
  emi_cPais,
  emi_xPais,
  emi_fone,
  emi_IE,
  emi_IEST,
  emi_IM,
  emi_CNAE,
  emi_CRT : widestring;
  //======  Dados do Destinatário  ==========
  dest,
  dest_CNPJ,
  dest_CPF,
  dest_xNome,
  dest_xLgr,
  dest_nro,
  dest_xCpl,
  dest_xBairro,
  dest_cMun,
  dest_xMun,
  dest_UF,
  dest_CEP,
  dest_cPais,
  dest_xPais,
  dest_fone,
  dest_IE,
  dest_IESUF : widestring;
  //======  Valor total da NF-e  ============
  total,
  totICMS        : widestring;
  totICMS_vBC,
  totICMS_vICMS,
  totICMS_vBCST,
  totICMS_vST,
  totICMS_vProd,
  totICMS_vFrete,
  totICMS_vSeg,
  totICMS_vDesc,
  totICMS_vII,
  totICMS_vIPI,
  totICMS_vPIS,
  totICMS_vCOFINS,
  totICMS_vOutro,
  totICMS_vNF    : currency;
  //======  Dados do Transportador  =========
  Transp,
  TranspModFrete,
  Transportador,
  Veiculo,
  Reboque,
  Transp_CNPJ,
  Transp_CPF,
  Transp_xNome,
  Transp_xEnder,
  Transp_IE,
  Transp_xMun,
  Transp_UF,
  VeicTransp_placa,
  VeicTransp_UF,
  VeicTransp_RNTC,
  Reboque1Transp_placa,
  Reboque1Transp_UF,
  Reboque1Transp_RNTC,
  Reboque2Transp_placa,
  Reboque2Transp_UF,
  Reboque2Transp_RNTC : widestring;
  //======  Informações Adicionais  ==========
  infAdic,
  infAdic_infAdiFisco,
  infAdic_infCPL : widestring;
  //======  Nota Fiscal  ==================
  NFe,
  ChaveNFE,
  Versao,
  mVersaoNFE,
  id,
  Retirada,
  Entrega,
  Compra,
  Exporta,
  Cobr,
  Dupl,
  mDetalhes,
  NF_Ref: widestring;

  // Assinatura NFe.
  NFE_xmlDoc,
  xmlassinado,
  MsgResultado: WideString;
  xmlProtocolo: TMemo;
  mPasta      : String;
  mNota,
  mNotaIni,
  mResultado  : Integer;

  // Envio Nfe.
  RetWS,
  CabMsg,
  NomeCertificado,
  SiglaUF,
  Msg,
  Licenca,
  DadosMsg,
  Proxy,
  Usuario,
  Senha,
  SiglaWS,
  NroRecibo,
  NFeAssinada,
  mProtocolo,
  mProtocoloData  : WideString;
  TpAmb,
  mEnviadas,
  mRejeitadas     : Integer;
  mTamanhoArquivo : Real;
  mDenegada,
  mProcessamento  : Boolean;

  // Diversas
  mContaDebito,
  mContaCredito: String;
  dhRecbto,
  tMed,
  cMsg,
  DPECAssinado,
  dhRegDPEC,
  nRegDPEC,
  retCancNFe,
  xMsg       : WideString;
  cStat,
  TipoAmbiente, 
  mNormalDPEC: Integer;

implementation

uses frmDMFiscal, frmMenu_Principal, frmDados, frmJanela_Comunicacao;

{$R *.dfm}

procedure TNFe_RecuperarXML.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNFe_RecuperarXML.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      NFe_RecuperarXML.Release;
      NFe_RecuperarXML := nil;
end;

procedure TNFe_RecuperarXML.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFe_RecuperarXML.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmFiscal, Dados do begin
             Empresas.SQL.Clear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
             Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
             Empresas.Open;
             
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC, Numero DESC');
             Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
             Notas.Open;

             Produtos.Close;
             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
             Produtos.Open;

             Configuracao.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNFe_RecuperarXML.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmFiscal, Dados do Begin
          If (Column.FieldName = 'Cancelada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Cancelada').Value = True) then ImageList1.GetBitmap(6, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Complementar') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Complementar').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Devolucao') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Devolucao').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Nfe_Denegada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Nfe_Denegada').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TNFe_RecuperarXML.cTipoClick(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmFiscal do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
             Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
             Notas.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNFe_RecuperarXML.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
    mTipo     : Integer;
begin
      mTipo     := cTipo.ItemIndex;
      mPesquisa := InputBox('Pesquisar','Nº da Nota:', mPesquisa);
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais ORDER BY Numero DESC');
           Notas.Open;
           If Notas.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
              ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
              cTipo.ItemIndex := mTipo;
           end else begin
              cTipo.ItemIndex := NotasSaida_Entrada.AsInteger;
              Notas.Locate('Numero', mPesquisa, [loCaseInsensitive])
           End;
      End;
      Grade.SetFocus;
end;

procedure TNFe_RecuperarXML.cDataChange(Sender: TObject);
begin
       With dmFiscal do begin
            Notas.SQL.Clear;
            Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
            Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
            Notas.Open;
       End;
end;

procedure TNFe_RecuperarXML.bConsultarClick(Sender: TObject);
var
    Util          : NFe_Util_2G_Interface;
    i             : integer;
    mXML          : TXMLDocument;
    mStat         : WideString;
    mMotivo       : WideString;
    mProtocolo    : WideString;
    mProtocoloData: WideString;
    NodeRec       : IXMLNode;
begin
      mXML := TXMLDocument.Create(Self);
      cMensagens.Clear;
      With Dados, dmFiscal do begin
           Configuracao.Open;

           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaUF         := Trim(EmpresasEstado.AsString);
           SiglaWS         := Trim(EmpresasUF_WebService.AsString);
           TipoAmbiente    := Menu_Principal.Amb_Producao;
           Licenca         := Trim(EmpresasLicensa_NFE_Util.AsString);
           retWS           := '';
           Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

           Screen.Cursor := crHourGlass;
           Janela_Comunicacao := TJanela_Comunicacao.Create(Self);
           Janela_Comunicacao.Show;
           Application.ProcessMessages;

           i := Util.ConsultaNF2G(SiglaWS, TipoAmbiente, NomeCertificado, '1.07', MsgDados, MsgRetWS, MsgResultado, Trim(NotasNFe_cNF.AsString), Proxy, Usuario, Senha);

           Janela_Comunicacao.Close;
           Screen.Cursor := CrDefault;

           mXML.XML.Text  := MsgRetWS;
           mXML.Active    := True;
           NodeRec        := mXML.DocumentElement.ChildNodes.FindNode('infProt');
           mStat          := NodeRec.ChildNodes['cStat'].text;
           mMotivo        := NodeRec.ChildNodes['xMotivo'].text;
           mProtocolo     := NodeRec.ChildNodes['nProt'].text;
           mProtocoloData := Copy(NodeRec.ChildNodes['dhRecbto'].text, 9, 2)+'/'+Copy(NodeRec.ChildNodes['dhRecbto'].text, 6, 2)+'/'+Copy(NodeRec.ChildNodes['dhRecbto'].text, 1, 4);

           If i > 101 then begin
              cMensagens.Lines.Add('Falha na chamada do WS...');
              cMensagens.Lines.Add(MsgResultado);
           end else begin
              cMensagens.Lines.Add('Situação: '+MsgResultado + ' ['+PoeZero(9, NotasNumero.AsInteger)+']');
              cMensagens.Lines.Add('Protocolo de autorização nº: ['+mProtocolo +'] de ' + mProtocoloData);
           End;    
      End;

      Util := nil;
      mXML.Free;
end;


// Rotinas de geração da nota fiscal eletronica arquivo XML.
procedure TNFe_RecuperarXML.GerarXML;
Var
    Util    : NFe_Util_2G_Interface;
    mAno    : String;
    mMes    : String;
    _Vol    : WideString;
    ChaveNFE: WideString;
begin
       Screen.Cursor := crSQLWait;
       Util          := CoUtil.Create;

       With Dados, dmFiscal do begin
            // Posicionando as tabelas auxiliares.
            Natureza.SQL.Clear;
            Natureza.SQL.Add('SELECT * FROM Natureza');
            Natureza.Open;
            Natureza.Locate('Codigo', NotasNatureza_Codigo.Value, [loCaseInsensitive]);

            Municipios.SQL.Clear;
            Municipios.SQL.Add('SELECT * FROM Municipios ');
            Municipios.Open;
            Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

            NotasItens.SQL.Clear;
            NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData) ORDER BY Item');
            NotasItens.ParamByName('pNota').AsInteger  := NotasNumero.Value;
            NotasItens.ParamByName('pData').AsDateTime := NotasData_Emissao.AsDateTime;
            NotasItens.Open;

            Paises.SQL.Clear;
            Paises.SQL.Add('SELECT * FROM Paises');
            Paises.Open;

            ProcessosDOC.SQL.Clear;
            ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Processo = :pProcesso)');
            ProcessosDOC.ParamByName('pProcesso').AsString := NotasProcesso.Value;
            ProcessosDOC.Open;

            Adicoes.SQL.Clear;
            Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI)');
            Adicoes.ParamByName('pDI').AsString := NotasDI.Value;
            Adicoes.Open;

            Estados.SQL.Clear;
            Estados.SQL.Add('SELECT * FROM Estados');
            Estados.Open;
            Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

            ModalidadesPgto.SQL.Clear;
            ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento WHERE(Codigo = :pCodigo)');
            ModalidadesPgto.ParamByName('pCodigo').AsInteger := NotasModalidade_Pgto.Value;
            ModalidadesPgto.Open;

            TipoNota.SQL.Clear;
            TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Codigo = :pCodigo)');
            TipoNota.ParamByName('pCodigo').AsInteger := NotasTipo_Nota.AsInteger;
            TipoNota.Open;

            Fatura.SQL.Clear;
            Fatura.SQL.Add('SELECT * FROM Fatura WHERE(Nota = :pNota) ORDER BY Fatura');
            Fatura.ParamByName('pNota').AsInteger := NotasNumero.Value;
            Fatura.Open;

            Duplicatas.SQL.Clear;
            Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE(Fatura = :pFatura) ORDER BY Duplicata');
            Duplicatas.ParamByName('pFatura').AsInteger := NotasNumero.Value;
            Duplicatas.Open;

            NCM.SQL.Clear;
            NCM.SQL.Add('SELECT * FROM NCM');
            NCM.Open;

            LocalDesembaraco.SQL.Clear;
            LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco WHERE(Codigo = :pCodigo)');
            LocalDesembaraco.ParamByName('pCodigo').AsInteger := ProcessosDOCLocal_DesembaracoCodigo.AsInteger;
            LocalDesembaraco.Open;

            // Itens da nota fiscal.
            mDetalhes := '';
            NotasItens.First;
            While not NotasItens.Eof do begin
                  mDetalhes := mDetalhes + MontaDetalhe( NotasItensItem.AsInteger, NotasItensCodigo_Mercadoria.Value, NotasItensQuantidade.Value, NotasItensValor_Total.Value );
                  NotasItens.Next;
            End;

            // Identificação da nota fiscal.
            Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
            ide_cUF := EstadosNumero.Value;

            // Pegando a descrição da natureza da operação "Pelo tipo de nota ou pelo cadastro".
            If Trim(TipoNota.FieldByName('Descricao_CFOP_Nota').AsString) = '' then
               ide_natOp := UpperCase(RemoveCaracterXML(Copy(NaturezaDescricao_NF.Value,1,60)))
            else
               ide_natOp := UpperCase(RemoveCaracterXML(Copy(TipoNotaDescricao_CFOP_Nota.AsString,1,60)));

            ide_indPag  := ModalidadesPgtoForma_Pagamento.Value;

            If NotasSaida_Entrada.Value = 0 then begin
               ide_mode  := EmpresasNFEletronica_ModeloEntrada.AsInteger;
               ide_serie := EmpresasNFEletronica_SerieEntrada.AsInteger;
            end else begin
               ide_mode  := EmpresasNFEletronica_Modelo.AsInteger;
               ide_serie := EmpresasNFEletronica_Serie.AsInteger;
            End;

            ide_nNF     := NotasNumero.AsInteger;
            ide_dEmi    := NotasData_Emissao.AsDateTime;
            ide_dSaiEnt := NotasData_EntradaSaida.AsDateTime;
            ide_tpNF    := NotasSaida_Entrada.AsInteger;
            ide_tpImp   := ConfiguracaoNFe_DANFE_Orientacao.Value;
            ide_tpAmb   := Menu_Principal.Amb_Producao;

            // Dados da Nota fiscal referenciada quando complementar, Devolução...
            If Trim(NotasNFe_cNFRef.Value) <> '' then begin
               tNotasRef.SQL.Clear;
               tNotasRef.SQL.Add('SELECT * FROM NotasFiscais WHERE (NFe_cNF = :pNFe)');
               tNotasRef.ParamByName('pNFe').AsString := NotasNFe_cNFRef.AsString;
               tNotasRef.Open;

               mAno      := Copy(InttoStr(YearOf(tNotasRef.FieldByName('Data_Emissao').AsDateTime)), 3,2);
               mMes      := PoeZero(2, MonthOf(tNotasRef.FieldByName('Data_Emissao').AsDateTime));
               ide_NFRef := Util.NFeRef(tNotasRef.FieldByName('NFe_cNF').AsString);
            End;

            If (NotasComplementar.Value <> True) and (NotasAjuste.Value <> True) then ide_finNFe := 1;
            If NotasComplementar.Value = True then ide_finNFe := 2;
            If NotasAjuste.Value = True then ide_finNFE := 3;

            ide_procEmi := 0;
            ide_verProc := Menu_Principal.mVersao_Sistema;
            ide_cMunFG  := MunicipiosCodigo.AsString;

            // Pegando a chave de acesso da nota fiscal.
            ChaveNFe := Trim(NotasNFe_cNF.AsString);
            ide_cDV  := StrtoInt(Copy(ChaveNFe,44,1));
            ide_cNF  := StrtoInt(Copy(ChaveNFe,36,8));

            If NotasDPEC.AsBoolean = false then ide_tPEmis := 1 else ide_tPEmis := 4;

            ide := Util.Identificador2G(ide_cUF, ide_cNF, ide_NatOP, ide_IndPag, ide_Mode, ide_Serie, ide_nNF, ide_dEmi, ide_dSaiEnt, '', ide_tpNF, ide_cMunFG, ide_NFRef, ide_tpImp, ide_tpEmis, ide_cDV, ide_tpAmb, ide_finNFe, ide_procEmi, ide_verProc, 0   , '' );

            // Dados do emitente.
            emi         := '';
            emi_CNPJ    := Trim(EmpresasCNPJ.Value);
            emi_xNome   := RemoveCaracterXML(EmpresasRazao_Social.Value);
            emi_xFant   := RemoveCaracterXML(EmpresasNome_Fantasia.Value);
            emi_xLgr    := RemoveCaracterXML(EmpresasRua.Value);
            emi_nro     := Trim(EmpresasRua_Numero.AsString);
            emi_xCpl    := RemoveCaracterXML(EmpresasComplemento.Value);
            emi_xBairro := RemoveCaracterXML(EmpresasBairro.Value);
            emi_xMun    := RemoveCaracterXML(MunicipiosNome.Value);
            emi_cMun    := EmpresasMunicipio_Codigo.AsString;
            emi_UF      := EmpresasEstado.Value;
            emi_CEP     := EmpresasCEP.Value;
            emi_cPais   := '1058';
            emi_xPais   := 'BRASIL';
            emi_fone    := EmpresasTelefone1.Value;
            emi_IE      := EmpresasIE.Value;
            emi_IEST    := '';
            emi_IEST    := '';
            emi_IM      := '';
            emi_CNAE    := '';
            emi_CRT     := Trim(EmpresasRegime_Apuracao.AsString);

            // CRT.
            emi := Util.Emitente2G(emi_CNPJ, '', emi_xNome, emi_xFant, emi_xLgr, emi_nro, emi_xCpl, emi_xBairro, emi_cMun, emi_xMun, emi_UF, emi_CEP, emi_cPais, emi_xPais, emi_fone, emi_IE, emi_IEST, emi_IM, emi_CNAE, emi_CRT );

            // Dados do destinatário. ( Entrada - Pega Fornecedor / Saída - pega Cliente ).
            If NotasSaida_Entrada.Value = 0 then begin
               Fornecedores.Locate('Codigo', NotasFornecedor_Codigo.Value, [loCaseInsensitive]);
               Municipios.Locate('Codigo', FornecedoresMunicipio_Codigo.Value, [loCaseInsensitive]);
               Paises.Locate('Codigo', FornecedoresPais.Value, [loCaseInsensitive]);

               dest      := '';
               dest_CPF  := '';
               dest_CNPJ := '';
               If Trim(FornecedoresCNPJ.AsString) <> '' then dest_CNPJ := FornecedoresCNPJ.Value else dest_CPF  := FornecedoresCPF.AsString;
               dest_IE      := Trim(FornecedoresInscricao_Estadual.Value);
               dest_IESUF   := '';
               dest_xNome   := RemoveCaracterXML(FornecedoresNome.Value);
               dest_xLgr    := RemoveCaracterXML(FornecedoresRua.Value);
               If Trim(FornecedoresRua_Numero.Value) <> '' then
                  dest_nro := RemoveCaracterXML(Trim(FornecedoresRua_Numero.Value))
               else
                  dest_nro := 'S/N';

               dest_xCpl    := '';
               dest_xBairro := RemoveCaracterXML(FornecedoresBairro.Value);
               dest_xMun    := RemoveCaracterXML(FornecedoresMunicipio.Value);
               dest_cMun    := RemoveCaracterXML(FornecedoresMunicipio_Codigo.AsString);
               dest_UF      := RemoveCaracterXML(FornecedoresEstado.Value);
               dest_cPais   := FornecedoresPais.AsString;
               dest_xPais   := RemoveCaracterXML(PaisesNome.Value);
               dest_fone    := FornecedoresTelefone1.Value;
               Dest         := Util.Destinatario(dest_CNPJ, dest_CPF, dest_xNome, dest_xLgr, dest_nro, dest_xCpl, dest_xBairro, dest_cMun, dest_xMun, dest_UF, dest_CEP, dest_cPais, dest_xPais, dest_fone, dest_IE, dest_IESUF);
            end else begin
               Clientes.Locate('Codigo', NotasCliente_Codigo.Value, [loCaseInsensitive]);
               Municipios.Locate('Codigo', ClientesMunicipio_Codigo.Value, [loCaseInsensitive]);
               Paises.Locate('Codigo', ClientesPais.Value, [loCaseInsensitive]);

               dest      := '';
               dest_CPF  := '';
               dest_CNPJ := '';
               If Trim(ClientesCNPJ.AsString) <> '' then dest_CNPJ := ClientesCNPJ.Value else dest_CPF  := ClientesCPF.AsString;
               dest_IE      := Trim(ClientesInscricao_Estadual.Value);
               dest_IESUF   := '';
               dest_xNome   := RemoveCaracterXML(ClientesNome.Value);
               dest_xLgr    := RemoveCaracterXML(ClientesRua.Value);
               If Trim(ClientesRua_Numero.Value) <> '' then
                  dest_nro := RemoveCaracterXML(Trim(ClientesRua_Numero.Value))
               else
                  dest_nro := 'S/N';

               dest_xCpl    := '';
               dest_xBairro := RemoveCaracterXML(ClientesBairro.Value);
               dest_xMun    := RemoveCaracterXML(ClientesMunicipio.Value);
               dest_cMun    := RemoveCaracterXML(ClientesMunicipio_Codigo.AsString);
               dest_UF      := RemoveCaracterXML(ClientesEstado.Value);
               dest_cPais   := '1058';
               dest_xPais   := 'Brasil';
               dest_fone    := ClientesTelefone1.Value;
               Dest         := Util.Destinatario(dest_CNPJ, dest_CPF, dest_xNome, dest_xLgr, dest_nro, dest_xCpl, dest_xBairro, dest_cMun, dest_xMun, dest_UF, dest_CEP, dest_cPais, dest_xPais, dest_fone, dest_IE, dest_IESUF);
            End;

            // Dados de cobrança.
            If NotasSaida_Entrada.Value = 1 then begin
               If Fatura.RecordCount <> 0 then begin
                  Duplicatas.First;
                  Cobr := '';
                  Dupl := '';
                  While (not Duplicatas.Eof) do begin
                        Dupl := Dupl + Util.Dup( Poezero(9, NotasNumero.AsInteger)+Copy(DuplicatasDuplicata.Value, 10, 1), DuplicatasData_Vencimento.Value, DuplicatasValor.Value );
                        Duplicatas.Next;
                  End;
                  Cobr := Cobr + Util.Cobr(InttoStr(NotasNumero.AsInteger), NotasValor_TotalNota.Value , NotasTotal_Descontos.Value, (NotasValor_TotalNota.Value - NotasTotal_Descontos.Value), Dupl);
               End;
            End;

            // Pega os totais da nota fiscal.
            Total           := '';
            totICMS         := '';
            totICMS_vBC     := NotasBCICMS.AsFloat;
            totICMS_vICMS   := NotasValor_ICMS.AsFloat;
            totICMS_vBCST   := NotasBCICMS_Substitutivo.AsFloat;
            totICMS_vST     := NotasValorICMS_Substitutivo.AsFloat;
            totICMS_vProd   := NotasValor_TotalProdutos.AsFloat;
            totICMS_vFrete  := NotasTotal_Frete.AsFloat;
            totICMS_vSeg    := NotasValor_Seguro.AsFloat;
            totICMS_vDesc   := NotasTotal_Descontos.AsFloat;
            totICMS_vII     := NotasValor_TotalII.AsFloat;
            totICMS_vIPI    := NotasValor_TotalIPI.AsFloat;
            totICMS_vPIS    := NotasValor_PIS.AsFloat;
            totICMS_vCOFINS := NotasValor_COFINS.AsFloat;
            totICMS_vOutro  := NotasValor_OutrasDespesas.AsFloat;
            totICMS_vNF     := NotasValor_TotalNota.AsFloat;

            // Omitindo valores de ISSQN e retTrib
            totICMS := Util.TotalICMS(totICMS_vBC, totICMS_vICMS, totICMS_vBCST, totICMS_vST, totICMS_vProd, totICMS_vFrete, totICMS_vSeg, totICMS_vDesc, totICMS_vII, totICMS_vIPI, totICMS_vPIS, totICMS_vCOFINS, totICMS_vOutro, totICMS_vNF);
            total   := Util.Total(totICMS,'',''); // omitido valores de ISSQN e RetTributos

            TranspModFrete := NotasModalidade_Frete.AsString;

            // Dados do transportador
            If NotasTransportador_Codigo.Value <> 0 then begin
               Fornecedores.Locate('Codigo', NotasTransportador_Codigo.Value , [loCaseInsensitive]);
               Municipios.Locate('Codigo', FornecedoresMunicipio_Codigo.Value, [loCaseInsensitive]);

               Transp               := '';
               Transportador        := '';
               Veiculo              := '';
               Reboque              := '';
               Transp_CNPJ          := '';
               Transp_CPF           := '';
               If Trim(FornecedoresCNPJ.Value) <> '' then Transp_CNPJ := FornecedoresCNPJ.Value else Transp_CPF := FornecedoresCPF.Value;
               transp_xNome         := RemoveCaracterXML(FornecedoresNome.Value);
               transp_xEnder        := Trim(RemoveCaracterXML(FornecedoresRua.Value))+','+Trim(FornecedoresRua_Numero.Value)+' - '+Trim(RemoveCaracterXML(FornecedoresBairro.Value));
               transp_IE            := Trim(FornecedoresInscricao_Estadual.Value);
               transp_xMun          := RemoveCaracterXML(FornecedoresMunicipio.Value);
               transp_UF            := FornecedoresEstado.Value;
               veicTransp_placa     := Trim(NotasTransporte_Placa.AsString);
               veicTransp_UF        := Trim(NotasTransporte_PlacaUF.AsString);
               veicTransp_RNTC      := Trim(NotasTransporte_CodigoANTT.AsString);
               reboque1Transp_placa := '';
               reboque1Transp_UF    := '';
               reboque1Transp_RNTC  := '';
               reboque2Transp_placa := '';
               reboque2Transp_UF    := '';
               reboque2Transp_RNTC  := '';

               Transportador := Util.Transporta(transp_CNPJ, transp_CPF, transp_xNome, transp_IE, transp_xEnder, transp_xMun, transp_UF);
               _Vol          := Util.Vol(NotasVolume_Quantidade.AsInteger, RemoveCaracterXML(NotasVolume_Especie.AsString), RemoveCaracterXML(NotasVolume_Marca.AsString), NotasVolume_Numero.AsString, NotasVolume_PesoLiquido.AsFloat, NotasVolume_PesoBruto.AsFloat, '');

               If VeicTransp_Placa     <> '' then Veiculo := Util.veicTransp(veicTransp_Placa, veicTransp_UF,veicTransp_RNTC);
               If Reboque1Transp_Placa <> '' then Reboque := Util.reboque(reboque1Transp_Placa, reboque1Transp_UF,reboque1Transp_RNTC);
               If reboque2Transp_Placa <> '' then Reboque := reboque + Util.reboque(reboque2Transp_Placa, reboque2Transp_UF,reboque2Transp_RNTC);

               Transp := Util.Transportador(TranspModFrete, Transportador, '', '', '', _Vol);
            end else begin
               _Vol   := Util.Vol( NotasVolume_Quantidade.AsInteger, RemoveCaracterXML(NotasVolume_Especie.AsString), RemoveCaracterXML(NotasVolume_Marca.AsString), NotasVolume_Numero.AsString, NotasVolume_PesoLiquido.AsFloat, NotasVolume_PesoBruto.AsFloat, '');
               Transp := Util.Transportador(TranspModFrete, '', '', '', '', _Vol);
            End;

            // Informações adicionais
            InfAdic             := '';
            InfAdic_InfAdiFisco := '';
            InfAdic_InfCpl      := Trim(RemoveCaracterXML(NotasInf_Complementares.AsString));
            InfAdic_InfCpl      := RemoveCaracter(#13, '', InfAdic_InfCpl);
            InfAdic_InfCpl      := RemoveCaracter(#12, '', InfAdic_InfCpl);
            InfAdic_InfCpl      := RemoveCaracter(#10, '', InfAdic_InfCpl);

            infAdic := Util.InfAdic2G(InfAdic_InfAdiFisco, InfAdic_infCpl, '', '', '');

            // Inicializa grupos não utilizados
            Retirada := '';
            Entrega  := '';
            Compra   := '';
            Exporta  := '';

            // Monta a NF-e
            Versao := Trim(EmpresasNFEletronica_Layout.Value);
            NFE    := Util.NFe2G(Versao, ChaveNFe, Ide, Emi, '', Dest, Retirada, Entrega, mDetalhes, Total, Transp, Cobr, InfAdic, Exporta, Compra, '');

{
cMensagens.Lines.Clear;
cmensagens.Lines.Add(NFE);
cMensagens.Lines.Add('-<protNFe xmlns="http://www.portalfiscal.inf.br/nfe" versao="2.00">-<infProt Id="ID432120002790663"><tpAmb>1</tpAmb><verAplic>SVAN_4.01</verAplic><chNFe>32120106213450000149550000000016141000226722</chNFe><dhRecbto>');
cMensagens.Lines.Add('2012-01-30T11:06:00</dhRecbto><nProt>432120002790663</nProt><digVal>CjXDBw3TWk044V9HO+nC7BANuK4=</digVal><cStat>100</cStat><xMotivo>Autorizado o uso da NF-e</xMotivo></infProt></protNFe> </nfeProc>');
cMensagens.Lines.SaveToFile('c:\temp\NFE_Recuperado.XML');
}

            Util   := nil;
       End;
       Util := nil;
       Screen.Cursor := crDefault;
end;

// Monta os itens da nota o arquivo XML.
Function TNFe_RecuperarXML.MontaDetalhe(item:integer; i:Integer; Qtde:double; Valor:double): string;
var
     Util       : NFe_Util_2G_Interface;
     _produto   : WideString;
     _DI        : WideString;
     _Adi       : WideString;
     _ICMS      : WideString;
     _PIS       : WideString;
     _COFINS    : WideString;
     _IPI       : WideString;
     _Imposto   : WideString;
     _Detalhe   : WideString;
     _II        : WideString;
     mDescricao : String;
     mCodigoProd: String;
begin
      With Dados, dmFiscal do Begin
           Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
           NCM.Locate('NCM', NotasItensNCM.Value, [loCaseInsensitive]);

           // Remove caracteres de controle como quebra de linha. . .e o código de controle do siscomex.
           mDescricao := Copy(NotasItensDescricao_Mercadoria.AsString,1,120);
           mDescricao := RemoveAcentos(mDescricao);
           mDescricao := RemoveCaracter(#13, '', mDescricao);
           mDescricao := RemoveCaracter(#12, '', mDescricao);
           mDescricao := RemoveCaracter(#10, '', mDescricao);
           mDescricao := RemoveCaracter('<{'+NotasItensCodigo_Mercadoria.AsString+'}>', '', mDescricao);
           mDescricao := RemoveCaracterXML(mDescricao);
           mDescricao := Trim(mDescricao);

           Util := CoUtil.Create;

           Adicoes.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

           If (Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO') and (not ProcessosDOCCourrier.Value) then begin
              If Trim(NotasDI.AsString) <> '' then begin
                  _Adi := Util.adi( NotasItensAdicao.AsInteger,
                                    AdicoesSequencia.AsInteger,
                                    AdicoesExportador.AsString,
                                    0 );

                  _DI := Util.DI(NotasDI.AsString,
                                 NotasData_DI.AsDateTime,
                                 RemoveCaracterXML(LocalDesembaracoDescricao.AsString),
                                 ProcessosDOCUF_Desembaraco.AsString,
                                 ProcessosDOCData_DesembaracoDeclaracao.AsDateTime,
                                 AdicoesExportador.AsString,
                                 _Adi );
              End;
           End;

           mCodigoProd := Trim(NotasItensCodigo_Fabricante.AsString);
           If mCodigoProd = '' then 
              mCodigoProd := Trim(NotasItensCodigo_Mercadoria.AsString);

           If Trim(NotasItensNCM.AsString) = '' then begin
              cMensagens.Lines.Add('       Erro no Item '+mCodigoProd + ': Falta informar o número da "NCM"');
           End;
             
           _produto := Util.produto2G(mCodigoProd,                                                      // 01.
                                      '',                                                               // 02.
                                      mDescricao,                                                       // 03.
                                      NotasItensNCM.Value,                                              // 04.
                                      Trim(NCMCodigo_EXTIPI.AsString),                                  // 05. - EXTIPI.
                                      NotasNatureza_Codigo.AsInteger,                                   // 06.
                                      NotasItensUnidade_Medida.Value,                                   // 07.
                                      NotasItensQuantidade.AsString,                                    // 08.
                                      FormatFloat('0.0000000000', NotasItensValor_Unitario.Value),      // 09.
                                      NotasItensValor_Total.Value,
                                      '',                                                               // Codigo EAN.
                                      NotasItensUnidade_Medida.Value,                                   // Unidade Tributavel.
                                      FormatFloat('0.0000', NotasItensQuantidade.Value),                // Qtde Tributação.
                                      FormatFloat('0.0000', NotasItensValor_Unitario.Value),            // Valor Unitario de tributação.
                                      0,                                                                // Valor Frete.
                                      0,                                                                // Valor Seguro.
                                      0,                                                                // Valor Desconto.
                                      0,                                                                // Valor Outros.
                                      1,                                                                // Indicador.
                                      _DI,
                                      '',
                                      '',
                                      0);


           _ICMS := Util.ICMS2G(NotasItensCodigoTrib_TabA.Value,
                                NotasItensCodigoTrib_TabB.Value,
                                NotasItensModalidade_BCICMS.Value,
                                NotasItensAliquota_ICMSReducao.Value,
                                NotasItensValor_BCICMSOper.Value,
                                NotasItensAliquota_ICMSOper.Value,
                                NotasItensValor_ICMSOper.Value,
                                NotasItensModalidade_BCICMSST.Value,
                                NotasItensAliquota_MVA.Value,
                                NotasItensAliquota_ICMSReducao.Value,
                                NotasItensValor_BCICMSSub.Value,
                                NotasItensAliquota_ICMSSub.Value,
                                NotasItensValor_ICMSSub.Value,
                                0,
                                0,
                                0,
                                0,
                                ClientesDesoneracao.AsInteger,
                                0,
                                '',
                                0,
                                0);

           _PIS := Util.PIS(NotasItensCSTPIS.Value,
                            NotasItensValor_Total.Value,
                            NotasItensAliquota_PIS.Value,
                            (NotasItensValor_PIS.Value*NotasItensQuantidade.Value),
                            0,
                            0);

           _COFINS := Util.COFINS(NotasItensCSTCOFINS.Value,
                                  NotasItensValor_Total.Value,
                                  NotasItensAliquota_COFINS.Value,
                                  (NotasItensValor_COFINS.Value*NotasItensQuantidade.Value),
                                  0,
                                  0);

           _IPI := Util.IPI( ProdutosClasseEnquadra_IPI.AsString,       // Classe de enquadramento do IPI.
                            '',                                         // CNPJ do produtor.
                            Trim(NCMSelo_IPI.Value),                    // Selo do IPI.
                            0,                                          // Quantidade de selos.
                            Trim(NCMEnquadramento_IPI.AsString),        // Código do enquadramento IPI.
                            NotasItensCSTIPI.Value,                   // Código da situação tributária do IPI.
                            NotasItensValor_Total.Value,              // Valor da base de calculo.
                            NotasItensAliquota_IPI.Value,             // Aliquota do IPI.
                            NotasItensTotal_IPI.Value,                // Valor do IPI.
                            ProdutosQuantidade_Unidade.Value,
                            ProdutosValor_IPI.Value);

           _II := Util.II( NotasItensValor_Total.Value,
                           NotasItensValor_Despesa.Value,
                           NotasItensValor_II.Value,
                           0);

           _Imposto := Util.imposto(_ICMS, _IPI, _II, _PIS,     '', _COFINS,        '', '');
           _Detalhe := Util.detalhe(item, _Produto, _Imposto, '');

           Util := nil;

           MontaDetalhe := _Detalhe;
      End;
end;

// Rotina de assinatura da NFe usando o certificado selecionado na empresa.
procedure TNFe_RecuperarXML.AssinarNFe;
var
    Util: NFe_Util_2G_Interface;
begin
      With Dados, dmFiscal do Begin
           If NFe <> '' then begin
              Util            := CoUtil.Create;
              NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);

              NFeAssinada := Util.Assinar(NFe, 'infNFe', NomeCertificado, mResultado, MsgResultado);

              If mResultado <> 5300 then begin
                 cMensagens.Lines.Add( 'Pedido: '+NotasNumero.AsString);
                 cMensagens.Lines.Add( 'Erro  : '+MsgResultado);
                 cMensagens.Lines.Add( 'Processo de assinatura falhou...');
              end else begin
                 cMensagens.Lines.Add( 'Nota: '+dmFiscal.NotasNFe_cNF.AsString+ '  ('+MsgResultado+')');
              End;
              Util := nil;
           end else begin
              cMensagens.Lines.Add( 'Nota : '+dmFiscal.NotasNFe_cNF.AsString+'Erro na geração do Documento XML para assinatura...');
           end;
      End;
End;

procedure TNFe_RecuperarXML.BuscarNFe;
var
    Util: NFe_Util_2G_Interface;
    mDigNovo,
    retCancNFe,
    mDigOriginal: Widestring;
    mTam,
    mPosIni: Integer;
begin
      XMLProtocolo         := TMemo.Create(NFe_RecuperarXML);
      XMLProtocolo.Visible := False;
      XMLProtocolo.Parent  := NFe_RecuperarXML;

      With Dados, dmFiscal do begin
           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaUF         := Trim(EmpresasEstado.AsString);
           SiglaWS         := Trim(EmpresasUF_WebService.AsString);
           tpAmb           := Menu_Principal.Amb_Producao;
           Licenca         := Trim(EmpresasLicensa_NFE_Util.AsString);
           RetWS           := '';
           CabMsg          := '';
           Msg             := '';
           DadosMsg        := '';
           NroRecibo       := NotasNFe_Recibo.Value;
           mProtocolo      := '';
           mProtocoloData  := '';
           Versao          := Trim(EmpresasNFEletronica_Layout.AsString);
           retCancNFe      := '';
           Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

           Screen.Cursor := crHourGlass;
           Janela_Comunicacao := TJanela_Comunicacao.Create(Self);
           Janela_Comunicacao.Show;
           Application.ProcessMessages;

           // XML da NF-e com o protocolo de autorização.
           XMLProtocolo.Text := Util.BuscaNFe2G(SiglaWS, tpAmb, NFeAssinada, NroRecibo, NomeCertificado, Versao, MsgDados, MsgRetWS, cStat, MsgResultado, mProtocolo, mProtocoloData, cMsg, xMsg, Proxy, Usuario, Senha, Licenca);

           If (cStat <> 100) and (cStat <> 301) and (cStat <> 302) then begin
              cMensagens.Lines.Add(MsgRetWS);
              cMensagens.Lines.Add('                          cMsg: '+cMsg+' - '+xMsg);
           End;

           mPosIni      := Pos(widestring('<digVal>'), MsgRetWS)+8;
           mTam         := Pos(widestring('</digVal>'), MsgRetWS) - mPosIni;
           mDigOriginal := '<DigestValue>' + Copy(MsgRetWS, mPosIni, mTam) +'</DigestValue>';

           mPosIni  := Pos(widestring('<DigestValue>'), NFeAssinada)+13;
           mTam     := Pos(widestring('</DigestValue>'), NFeAssinada) - mPosIni;
           mDigNovo := '<DigestValue>' + Copy(NFeAssinada, mPosIni, mTam) +'</DigestValue>';

           NFeAssinada       := RemoveCaracter(mDigNovo, mDigOriginal, NFeAssinada);
           XMLProtocolo.Text := Util.BuscaNFe2G(SiglaWS, tpAmb, NFeAssinada, NroRecibo, NomeCertificado, Versao, MsgDados, MsgRetWS, cStat, MsgResultado, mProtocolo, mProtocoloData, cMsg, xMsg, Proxy, Usuario, Senha, Licenca);

           Janela_Comunicacao.Close;
           Screen.Cursor := crDefault;

           XMLProtocolo.Lines.SaveToFile(mPasta);

           If (cStat <> 100) and (cStat <> 301) and (cStat <> 302) then begin
              cMensagens.Lines.Add('       Código de erro/rejeição: '+InttoStr(cStat)+' - '+MsgResultado );
              cMensagens.Lines.Add('                          cMsg: '+cMsg+' - '+xMsg);
           end else begin
              If (cStat = 100) then begin
                 cMensagens.Lines.Add('       Autorizada '+ InttoStr(cStat)+': Protocolo de autorização da NF-e ' + PoeZero(9, NotasNumero.AsInteger) +': '+mProtocolo );
              end;
              If (cStat = 301) then begin
                 cMensagens.Lines.Add('       '+ InttoStr(cStat)+': Protocolo de denegação de uso : ' + mProtocolo+' Irregularidade fiscal do emitente' );
              End;
              If (cStat = 302) then begin
                 cMensagens.Lines.Add('       '+ InttoStr(cStat)+': Protocolo de denegação de uso: ' + mProtocolo+' Irregularidade fiscal do destinatário' );
              End;
              cMensagens.Lines.Add('');
              cMensagens.Lines.Add('Arquivo XML salvo em...');
              cMensagens.Lines.Add(mPasta);
           End;
      End;
      XMLProtocolo := nil;
      Util         := nil;
end;


procedure TNFe_RecuperarXML.bRecuperarClick(Sender: TObject);
begin
       mPasta := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+TRim(Dados.EmpresasRazao_Social.AsString);
       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPasta := mPasta + '_Matriz'
       else
          mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

       if Dados.ConfiguracaoSeparar_NFE.AsBoolean then begin
          if dmFiscal.NotasSaida_Entrada.AsInteger = 0 then
             mPasta := mPasta + '\ENTRADAS'
          else
             mPasta:= mPasta + '\SAIDAS'
       end;
       if Dados.ConfiguracaoSeparar_NFEMes.AsBoolean then begin
          mPasta := mPasta + '\Ano_'+InttoStr(YearOf(dmFiscal.NotasData_Emissao.AsDateTime))+'\'+Trim(NomeMes(MonthOf(dmFiscal.NotasData_Emissao.AsDateTime)));
       end;

       mPasta := mPasta + '\NFe_'+dmFiscal.NotasNFe_cNF.Value+'.xml';

      GerarXML;
      AssinarNFe;
      BuscarNFe;
end;

procedure TNFe_RecuperarXML.bBuscarClick(Sender: TObject);
var
    Util        : NFe_Util_2G_Interface;
//    NFe_Assinada: WideString;
    mArquivoXML : TMemo;
    xmlProtocolo: TMemo;
begin
     If not Internet then begin
        MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
        Abort;
     End;

      mArquivoXML          := TMemo.Create(NFe_RecuperarXML);
      mArquivoXML.Visible  := False;
      mArquivoXML.Parent   := NFe_RecuperarXML;

      xmlProtocolo         := TMemo.Create(NFe_RecuperarXML);
      xmlProtocolo.Visible := False;
      xmlProtocolo.Parent  := NFe_RecuperarXML;

      If not AbrirXML.Execute then begin
         ShowMessage('Erro na abertura do arquivo XML');
         Abort;
      End;
      mArquivoXML.Lines.LoadFromFile(AbrirXML.FileName);

      With Dados, dmFiscal do begin
           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaUF         := Trim(EmpresasEstado.AsString);
           SiglaWS         := Trim(EmpresasUF_WebService.AsString);
           tpAmb           := Menu_Principal.Amb_Producao;
           Licenca         := Trim(EmpresasLicensa_NFE_Util.AsString);
           RetWS           := '';
           CabMsg          := '';
           Msg             := '';
           DadosMsg        := '';
           NroRecibo       := NotasNFe_Recibo.Value;
           mProtocolo      := '';
           mProtocoloData  := '';
           Versao          := Trim(EmpresasNFEletronica_Layout.AsString);
           Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);
           mProtocolo      := dmFiscal.NotasNFe_Protocolo.AsString;
           NFeAssinada     := mArquivoXML.Lines.Text;

           // XML da NF-e com o protocolo de autorização.
           XMLProtocolo.Text := Util.BuscaNFe2G(SiglaWS, tpAmb, NFeAssinada, NroRecibo, NomeCertificado, Versao, MsgDados, MsgRetWS, cStat, MsgResultado, mProtocolo, mProtocoloData, cMsg, xMsg, Proxy, Usuario, Senha, Licenca);

           mDenegada      := False;
           mProcessamento := false;

           If (cStat <> 100) and (cStat <> 301) and (cStat <> 302) then begin
              cMensagens.Lines.Add('       Código de erro/rejeição: '+InttoStr(cStat)+' - '+MsgResultado );

              If (cStat <> 105) then begin
                 mProcessamento := false;
                 If cStat = 217 then begin
                    Dados.Pedidos.Edit;
                                  Dados.PedidosAguardando.Value := false;
                    Dados.Pedidos.Post;
                 End;
              end else begin
                 mProcessamento := true;
                 If Dados.PedidosAguardando.Value = false then begin
                    Dados.Pedidos.Edit;
                                  If cStat <> 217 then
                                      Dados.PedidosAguardando.Value := true
                                  else
                                      Dados.PedidosAguardando.Value := false;
                    Dados.Pedidos.Post;
                 End;
              End;   
           end else begin
              If (cStat = 100) then begin
                 cMensagens.Lines.Add('       Autorizada '+ InttoStr(cStat)+': Protocolo de autorização da NF-e ' + PoeZero(9, PedidosNota.AsInteger) +': '+mProtocolo );
              end;
              If (cStat = 301) then begin
                 cMensagens.Lines.Add('       '+ InttoStr(cStat)+': Protocolo de denegação de uso : ' + mProtocolo+' Irregularidade fiscal do emitente' );
                 mDenegada := True;
              End;
              If (cStat = 302) then begin
                 cMensagens.Lines.Add('       '+ InttoStr(cStat)+': Protocolo de denegação de uso: ' + mProtocolo+' Irregularidade fiscal do destinatário' );
                 mDenegada := True;
              End;
           End;
      End;
      Util := nil;
end;

procedure TNFe_RecuperarXML.bDownloadClick(Sender: TObject);
Var
    //objNFeUtil     : OleVariant;   // declarar a interface da DLL
    Util           : NFe_Util_2G_Interface;
    siglaWS        : widestring;   // sigla do WS: AN para Ambiente Nacional ou RS
    siglaUF        : widestring;   // sigla da UF do destinatário
    nomeCertificado: widestring;   // campo assunto do certificado digital
    versao         : widestring;   // versão= 1.00
    CNPJDest       : widestring;   // CNPJ do destinatário
    proxy          : widestring;   // IP e porta do proxy, informar se existir proxy
    usuario        : widestring;   // usuario do proxy
    senha          : widestring;   // senha do proxy
    licenca        : widestring;   // licenca de uso, necessário informar para produção
    cStat          : integer;         // retorna o código do resultado da chamada
    msgResultado   : widestring;      // retorna o literal do resultado da chamada
    procNFe        : widestring;      // retorna o XML do procNFe
    mArquivoXML    : TMemo;
begin
      With Dados, dmFiscal do begin
           SiglaUF         := Trim(EmpresasEstado.AsString);
           //SiglaWS         := Trim(EmpresasUF_WebService.AsString);
           SiglaWS         := 'AN';
           tpAmb           := Menu_Principal.Amb_Producao;
           //tpAmb           := 1;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           Versao          := '1.00';
           DadosMsg        := '';
           Msg             := '';
           cStat           := 0;
           Licenca         := Trim(EmpresasLicensa_NFE_Util.AsString);
           RetWS           := '';
           CabMsg          := '';
           NroRecibo       := NotasNFe_Recibo.Value;
           mProtocolo      := '';
           mProtocoloData  := '';
           Proxy           := Trim(ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(ConfiguracaoSenha_Proxy.AsString);
           mProtocolo      := NotasNFe_Protocolo.AsString;
           ChaveNFe        := Trim(NotasNFe_cNF.AsString);
           CNPJDest        := EmpresasCNPJ.AsString;
      End;

      Util    := coUtil.Create;
      procNFe := Util.DownloadNFWS(SiglaWS, SiglaUF, tpAmb, NomeCertificado, Versao, DadosMsg, Msg, cStat, msgResultado, CNPJDest, chaveNFe, proxy, usuario, senha, licenca);

      mArquivoXML         := TMemo.Create(NFe_RecuperarXML);
      mArquivoXML.Visible := False;
      mArquivoXML.Parent  := NFe_RecuperarXML;
      mArquivoXML.Lines.Add(procNFe);

      If not DirectoryExists('c:\temp\NFE') then forceDirectories('c:\temp\NFE\');
      mArquivoXML.Lines.SaveToFile('c:\temp\NFE\NFE_'+dmFiscal.NotasNFe_cNF.AsString+'.XML');

      MessageDlg( msgResultado + chr(13)+chr(13)+ procNFe, mtInformation, [mbOk], 0);
end;


end.
