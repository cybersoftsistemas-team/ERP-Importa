unit frmUtilitarios_Importar_CTe_Terceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, xmldom, DB, DBClient, Xmlxform, Mask,
  Vcl.ComCtrls, Funcoes, DBCtrls, DBAccess, MSAccess, DateUtils,  msxmldom, XMLDoc, XMLIntf, iniFiles, RXSpin, system.UITypes, Provider, RxCurrEdit, RxToolEdit, MemDS;

type
  TUtilitarios_Importar_CTe_Terceiros = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    XML: TXMLTransformProvider;
    dsCTe: TDataSource;
    CTe: TClientDataSet;
    cPasta: TPageControl;
    TabSheet1: TTabSheet;
    cDadosNfe: TGroupBox;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    StaticText13: TStaticText;
    cdEmi: TMaskEdit;
    cdSaiEnt: TMaskEdit;
    StaticText4: TStaticText;
    ccCT: TMaskEdit;
    cNatOp: TMaskEdit;
    StaticText24: TStaticText;
    ccUF: TMaskEdit;
    cChave: TMaskEdit;
    cCTe: TMaskEdit;
    StaticText35: TStaticText;
    cmod: TMaskEdit;
    StaticText27: TStaticText;
    cSerie: TMaskEdit;
    StaticText32: TStaticText;
    cEntSai: TMaskEdit;
    StaticText34: TStaticText;
    ccMunFG: TMaskEdit;
    ccMunFGNome: TMaskEdit;
    StaticText36: TStaticText;
    ctpEmis: TMaskEdit;
    ctpEmisDesc: TMaskEdit;
    StaticText37: TStaticText;
    ctpAmb: TMaskEdit;
    StaticText38: TStaticText;
    cTpCte: TMaskEdit;
    cTpCTeDesc: TMaskEdit;
    StaticText39: TStaticText;
    cprocEmi: TMaskEdit;
    cprocEmiDesc: TMaskEdit;
    StaticText40: TStaticText;
    cverProc: TMaskEdit;
    cProtocolo: TMaskEdit;
    StaticText67: TStaticText;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    lFornecedor: TLabel;
    StaticText12: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    cCNPJ: TMaskEdit;
    cxNome: TMaskEdit;
    cxFant: TMaskEdit;
    cxLgr: TMaskEdit;
    cCpl: TMaskEdit;
    cNro: TMaskEdit;
    cxBairro: TMaskEdit;
    cMun: TMaskEdit;
    cxMun: TMaskEdit;
    cUF: TMaskEdit;
    cCEP: TMaskEdit;
    cPais: TMaskEdit;
    cxPais: TMaskEdit;
    cFone: TMaskEdit;
    StaticText2: TStaticText;
    cIE: TMaskEdit;
    StaticText56: TStaticText;
    cCodigo: TMaskEdit;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText26: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText33: TStaticText;
    cDestCNPJ: TMaskEdit;
    cDestxNome: TMaskEdit;
    cDestxLgr: TMaskEdit;
    cDestNro: TMaskEdit;
    cDestxBairro: TMaskEdit;
    cDestcMun: TMaskEdit;
    cDestxMun: TMaskEdit;
    cDestUF: TMaskEdit;
    cDestcPais: TMaskEdit;
    cDestxPais: TMaskEdit;
    cDestIE: TMaskEdit;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    StaticText48: TStaticText;
    cValorPIS: TCurrencyEdit;
    StaticText49: TStaticText;
    cValorCOFINS: TCurrencyEdit;
    StaticText51: TStaticText;
    cTotalNota: TCurrencyEdit;
    StaticText52: TStaticText;
    cIsentasIPI: TCurrencyEdit;
    StaticText53: TStaticText;
    cOutrasIPI: TCurrencyEdit;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    cIsentasICMS: TCurrencyEdit;
    cOutrasICMS: TCurrencyEdit;
    StaticText64: TStaticText;
    cLiquido: TCurrencyEdit;
    GroupBox4: TGroupBox;
    StaticText57: TStaticText;
    cRefComImp: TDBLookupComboBox;
    cCentroCusto: TDBLookupComboBox;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    StaticText7: TStaticText;
    cAliquotaPIS: TCurrencyEdit;
    StaticText25: TStaticText;
    cAliquotaCOFINS: TCurrencyEdit;
    cProcesso: TDBLookupComboBox;
    tCodigo: TMSQuery;
    tContaPlano: TMSQuery;
    tCodigoPlano: TMSQuery;
    StaticText31: TStaticText;
    StaticText41: TStaticText;
    cBCICMS: TCurrencyEdit;
    cAliquotaICMS: TCurrencyEdit;
    StaticText42: TStaticText;
    cValorICMS: TCurrencyEdit;
    tExiste: TMSQuery;
    TabSheet4: TTabSheet;
    GroupBox5: TGroupBox;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText50: TStaticText;
    StaticText58: TStaticText;
    StaticText59: TStaticText;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    StaticText65: TStaticText;
    cRemCNPJ: TMaskEdit;
    cRemxNome: TMaskEdit;
    cRemxLgr: TMaskEdit;
    cRemNro: TMaskEdit;
    cRemxBairro: TMaskEdit;
    cRemcMun: TMaskEdit;
    cRemxMun: TMaskEdit;
    cRemUF: TMaskEdit;
    cRemcPais: TMaskEdit;
    cRemxPais: TMaskEdit;
    cRemIE: TMaskEdit;
    cArquivos: TListBox;
    TabSheet7: TTabSheet;
    cErros: TMemo;
    cSubst: TCheckBox;
    tEmpresas: TMSQuery;
    cDataEntra: TDateEdit;
    StaticText77: TStaticText;
    StaticText76: TStaticText;
    cToma: TMaskEdit;
    StaticText66: TStaticText;
    cRefSemImp: TDBLookupComboBox;
    Button1: TButton;
    StaticText44: TStaticText;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    cTudo: TCheckBox;
    bVerficar: TButton;
    cNomeToma: TMaskEdit;
    cCNPJToma: TMaskEdit;
    StaticText43: TStaticText;
    cNfe: TMaskEdit;
    TabSheet6: TTabSheet;
    StaticText68: TStaticText;
    StaticText69: TStaticText;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    StaticText72: TStaticText;
    StaticText73: TStaticText;
    StaticText74: TStaticText;
    StaticText75: TStaticText;
    StaticText78: TStaticText;
    cRecCNPJ: TMaskEdit;
    cRecxNome: TMaskEdit;
    cRecxLgr: TMaskEdit;
    cRecNro: TMaskEdit;
    cRecBairro: TMaskEdit;
    cRecMun: TMaskEdit;
    cRecxMun: TMaskEdit;
    cRecUF: TMaskEdit;
    cRecPais: TMaskEdit;
    cRecxPais: TMaskEdit;
    cRecIE: TMaskEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    Function  PegaTagXML(pNo,pTag: string): string;
    procedure SalvarCTE;
    function  VerCancelamento(arq:integer):boolean;
    procedure cArquivosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cTudoClick(Sender: TObject);
    procedure bVerficarClick(Sender: TObject);
  private
    procedure CarregaXML(arq:integer);
    { Private declarations }
  public
    { Public declarations }
    mPastaXML,
    mArqPDF,
    mPastaPDFOrig,
    mPastaPDFDest:string;
  end;

var
  Utilitarios_Importar_CTe_Terceiros: TUtilitarios_Importar_CTe_Terceiros;

implementation

uses frmDados, frmDMFiscal, frmDMContab, frmJanela_Processamento;

{$R *.dfm}

procedure TUtilitarios_Importar_CTe_Terceiros.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
     With Dados do begin
          ReferenciasFiscais.SQL.Clear;
          ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE(Ativo = 1) AND (Servico IS NULL) OR (Servico = '''') ORDER BY Descricao');
          ReferenciasFiscais.Open;
     End;

     // Salvando as ultimas opções utilizadas como default.
     aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     aINI.Writestring ('IMP_CTE', 'CentroCusto', iif(cCentroCusto.KeyValue <> null, cCentroCusto.KeyValue, ''));
     aINI.Writestring ('IMP_CTE', 'Processo'   , cProcesso.KeyValue);
     aINI.WriteDate   ('IMP_CTE', 'Data'       , cDataEntra.Date);
     aINI.WriteBool   ('IMP_CTE', 'Subst'      , cSubst.Checked);
     aINI.Writeinteger('IMP_CTE', 'Mes'        , cMes.ItemIndex);
     aINI.Writeinteger('IMP_CTE', 'Ano'        , cAno.asinteger);
     aINI.WriteBool   ('IMP_CTE', 'Tudo'       , cTudo.Checked);
     aINI.Free;

     LimpaMemoria;
     Utilitarios_Importar_CTe_Terceiros.Release;
     Utilitarios_Importar_CTe_Terceiros := nil;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
     // Carregando as ultimas opções utilizadas como default.
     aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cCentroCusto.KeyValue := aINI.Readstring ('IMP_CTE', 'CentroCusto', '');
     cProcesso.KeyValue    := aINI.Readstring ('IMP_CTE', 'Processo'   , '');
     cDataEntra.Date       := aINI.ReadDate   ('IMP_CTE', 'Data'       , date());
     cSubst.Checked        := aINI.ReadBool   ('IMP_CTE', 'Subst'      , false);
     cMes.Itemindex        := aINI.Readinteger('IMP_CTE', 'Mes'        , MonthOf(Date)-1);
     cAno.value            := aINI.Readinteger('IMP_CTE', 'Ano'        , Yearof(Date));
     aINI.Free;

     cTudo.Checked := true;

     with Dados do begin
          ReferenciasFiscais.SQL.Clear;
          ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE(Ativo = 1) AND (Especie IN(''CTR'', ''CTE'')) ORDER BY Descricao');
          ReferenciasFiscais.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos WHERE Desativado <> 1');
          Produtos.Open;
     end;
     cPasta.ActivePageIndex := 0;
     if cArquivos.Items.Count > 0 then begin
        XML.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName)+'\CTe_Util\CTE01.xtr';
        CarregaXML(0);
     end else begin
        Showmessage('Nenhum arquivo selecionado ou mais de 1000 (Mil) arquios selecionados.'+#13+'Selecione no maxímo 1000 (Mil) arquivos para importar.');
     end;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.bImportarClick(Sender: TObject);
var
   i:integer;
begin
     cPasta.ActivePageIndex := 5;
     cErros.Clear;
     with Dados, dmFiscal do begin
          // Verifica se o produto esta informado nas configurações, se estiver verifica se esta cadastrado.
          if ConfiguracaoItem_CTR.Asinteger < 1 then begin
             MessageDlg('Erro de Item!'+#13+#13+'Código do item padrão para o CT-e não informado nas configurações do sistema.'+#13+#13+'Conhecimento de Transporte não será importado.', mtError,[mbOK], 0);
             Abort;
          end;
          if not Produtos.Locate('Codigo', ConfiguracaoItem_CTR.Asinteger, [loCaseInsensitive]) then begin
             MessageDlg('Erro de Item!'+#13+#13+'Código do item padrão não encontrado no cadastro dos produtos.'+#13+#13+'Conhecimento de Transporte não será importado.', mtError,[mbOK], 0);
             Abort;
          end;
          if MessageDlg('Deseja realmente importar os CT-E?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
             NotasTerceiros.DisableControls;
             NotasTerceirosItens.DisableControls;

             SalvarCTE;

             if cErros.Text <> '' then begin
                cPasta.ActivePageIndex := 5;
             end;

             NotasTerceiros.EnableControls;
             NotasTerceirosItens.EnableControls;
          end;
          if (not cTudo.Checked) and (trim(cMes.Text) = '') then begin
             MessageDlg('Erro!'+#13+#13+'"MÊS" inválido, informe o mês de Referência ou marque "TODOS".', mtError, [mbOK], 0);
             cMes.SetFocus;
             Abort;
          end;
          if (not cTudo.Checked) and (cAno.value < 2007) then begin
             MessageDlg('Erro!'+#13+#13+'"ANO" inválido, informe o ano de Referência ou marque "TODOS".', mtError, [mbOK], 0);
             cAno.SetFocus;
             Abort;
          end;

          MessageDlg('Importação de CT-e conluída.', mtInformation, [mbOK], 0);

          NotasTerceiros.SQL.Clear;
          NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros ORDER BY Nota');
          NotasTerceiros.Open;
          NotasTerceiros.Locate('Nota; Data_Emissao', VarArrayOf([StrtoInt(cCTe.Text), cdEmi.Text]), [loCaseInsensitive]);
     end;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.SalvarCTE;
Var
    mConta,
    mGrupo:string;
    i,mModal:integer;
    mImp:boolean;
begin
     Screen.Cursor := crSQLWait;
     mModal := 0;
     with Dados, dmFiscal, dmContab do begin
          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.lProcesso.Caption  := 'Importando CT-e...';
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := cArquivos.Items.Count;
          Janela_Processamento.Show;

          // Posiciona no cadastro de produtos no item do conhecimento.
          Produtos.Locate('Codigo', ConfiguracaoItem_CTR.Asinteger, [loCaseInsensitive]);

          for i := 0 to cArquivos.Items.Count-1 do begin
              if Funcoes.Cancelado then begin
                 ShowMessage('Importação cancelada pelo usuário!');
                 Break;
              end;

              cArquivos.ItemIndex := i;
              mImp                := false;

              Application.processmessages;
              CarregaXML(i);

              // Verifica quem é o tomador de serviço.
              // Tipos de Emitentes: 0-Remetente / 1-Expedidor / 2-Recebedor / 3-Destinatário / 4-Outros.
              if (cToma.text = 'Remetente') and (cRemCNPJ.text = EmpresasCNPJ.AsString) then begin
                 mImp   := true;
                 mModal := 1;
              end;
              if (cToma.text = 'Destinatário') and (cDestCNPJ.text = EmpresasCNPJ.AsString) then begin
                 mImp   := true;
                 mModal := 1;
              end;
              if (cToma.text = 'Recebedor') then begin
                 mImp   := true;
                 mModal := 1;
              end;
              if (cToma.text = 'Outros') and (cCNPJToma.text = EmpresasCNPJ.AsString) then begin
                 mImp   := true;
                 mModal := 1;
              end;

              // Verifica se o xml esta dentro do mes e do ano informados.
              if not cTudo.Checked then begin
                 if YearOf(StrtoDate(cdEmi.Text)) = cAno.Asinteger then begin
                    if MonthOf(StrtoDate(cdEmi.Text)) <> (cMes.ItemIndex+1) then begin
                       mImp := false;
                    end;
                 end;
              end;

              if (mImp) and (trim(cChave.Text) <> '') then begin
                 // Verifica se XML esta cancelado.
                 if VerCancelamento(i) then begin
                    cErros.Lines.Add('CT-e: '+cChave.Text+' [ C A N C E L A D O ].');
                    mImp := false;
                 end;

                 if mImp then begin
                    // Verifica se o período fiscal esta bloqueado.
                    tExiste.SQL.Clear;
                    tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
                    tExiste.ParamByName('pAno').AsInteger := YearOf(StrtoDate(cdSaiEnt.Text));
                    tExiste.ParamByName('pMes').AsInteger := MonthOf(StrtoDate(cdSaiEnt.Text));
                    tExiste.Open;
                    if tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                       cErros.Lines.Add('CT-E :'+cChave.Text+' Dentro de um período bloqueado (Não importado)');
                       mImp := false;
                    end;

                    // Verifica o último período contabil encerrado.
                    if StrtoDate(cdSaiEnt.Text) <= EmpresasUltimo_Encerramento.Value then begin
                       cErros.Lines.Add('CT-E :'+cChave.Text+' Lançamento inválido (Data da entrada do CT-E maior que o último período contabil encerrado.'+#13+#13+'O último período ('+EmpresasUltimo_Encerramento.AsString+') encerrado.');
                       mImp:= false;
                    end;

                    // Pegando a referencia fiscal pela nota de referência.
                    tExiste.SQL.Clear;
                    tExiste.SQL.Add('SELECT Codigo');
                    tExiste.SQL.Add('FROM   ReferenciasFiscais');
                    tExiste.SQL.Add('WHERE  Especie IN(''CTE'',''CTR'')');
                    tExiste.SQL.Add('AND    Apuracao_PISCOFINS = (SELECT Apuracao_PISCOFINS');
                    tExiste.SQL.Add('                             FROM   Cybersoft_Cadastros.dbo.Natureza');
                    tExiste.SQL.Add('                             WHERE  Codigo = (SELECT Natureza_Codigo');
                    tExiste.SQL.Add('                                              FROM   NotasFiscais');
                    tExiste.SQL.Add('                                              WHERE NFe_cNF = '+QuotedStr(cNFE.Text) );
                    tExiste.SQL.Add('                                )');
                    tExiste.SQL.Add('                            )');
                    tExiste.Open;

                    if tExiste.RecordCount > 0 then begin
                       ReferenciasFiscais.Locate('Codigo', tExiste.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
                    end else begin
                       if not ReferenciasFiscais.Locate('Especie;Apuracao_PISCOFINS', VarArrayOf(['CTE','true']), [loCaseInsensitive]) then begin
                          if not ReferenciasFiscais.Locate('Especie;Apuracao_PISCOFINS', VarArrayOf(['CTE','false']), [loCaseInsensitive]) then begin
                             mImp := false;
                          end;
                       end;
                    end;

                    // Verifica se CT-e ja existe no banco de dados.
                    NotasTerceiros.SQL.Clear;
                    NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE NFe_cNF = :pChave');
                    NotasTerceiros.ParamByName('pChave').Asstring := cChave.Text;
                    NotasTerceiros.Open;

                    if NotasTerceiros.RecordCount > 0 then begin
                       if not cSubst.Checked then begin
                          cErros.Lines.Add('Ja existe uma CT-e cadastrado com este número: '+cChave.Text);
                          mImp := false;
                       end else
                          NotasTerceiros.Edit;
                    end else begin
                       NotasTerceiros.Append;
                    end;

                    if mImp then begin
                       // Cadastra o fornecedor se não encontrado.
                       if Trim(cCodigo.Text) = '0' then begin
                          Fornecedores.Append;
                                       tCodigo.Open;
                                       FornecedoresCodigo.Value             := tCodigo.FieldByName('Codigo').AsInteger+1;
                                       FornecedoresNome.Value               := cxNome.Text;
                                       FornecedoresNome_Fantasia.Value      := cxNome.Text;
                                       FornecedoresPais.Value               := cPais.Text;
                                       FornecedoresEstado.Value             := cUF.Text;
                                       FornecedoresMunicipio_Codigo.Value   := StrtoInt(cMun.Text);
                                       FornecedoresBairro.Value             := cxBairro.Text;
                                       FornecedoresRua.Value                := cxLgr.Text;
                                       FornecedoresRua_Numero.Value         := cNro.Text;
                                       FornecedoresCEP.Value                := cCEP.Text;
                                       FornecedoresCNPJ.Value               := cCNPJ.Text;
                                       FornecedoresInscricao_Estadual.Value := cIE.Text;

                                       If Trim(cIE.Text)='' then
                                          FornecedoresIsento.Value := True
                                       else
                                          FornecedoresIsento.Value :=False;

                                       FornecedoresTelefone1.Value      := cFone.Text;
                                       FornecedoresRamo_Atividade.Value := RamoAtividadeCodigo.AsInteger;
                                       FornecedoresTipo_Produto.Value   := TipoProdutoCodigo.Value;
                                       FornecedoresAtivo.Value          := true;
                          Fornecedores.Post;
                          tCodigo.Close;
                          cCodigo.Text := FornecedoresCodigo.AsString;

                          // Abre a conta do fornecedor no plano de contas se estiver parâmetrizado.
                          If Trim(RamoAtividadeConta_Fornecedor.AsString) <> '' then  begin
                             PlanoContas.SQL.Clear;
                             PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
                             PlanoContas.Open;

                             PlanoContas.Locate('Codigo', Trim(RamoAtividadeConta_Fornecedor.AsString), [loCaseInsensitive]);
                             mGrupo := Trim(PlanoContasConta.Value);

                             If PlanoContasSintetica.AsBoolean = False then begin
                                FornecedoresConta.Value := PlanoContasCodigo.Value;
                             end else begin
                                If mGrupo <> '' then begin
                                   // Verificando se a conta ja esta cadastrada.
                                   PlanoContas.SQL.Clear;
                                   PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                                   PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                                   PlanoContas.ParamByName('pDescricao').AsString := FornecedoresNome.Value;
                                   PlanoContas.Open;

                                   If PlanoContas.RecordCount = 0 then begin
                                      // Pegando o número da última conta.
                                      tContaPlano.SQL.Clear;
                                      tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                                      tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                                      tContaPlano.Open;

                                      // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                                      If tContaPlano.FieldByName('Conta').Value = Null then
                                         mConta := CriaAnalitica( mGrupo, Dados.EmpresasMascara_PlanoContas.Value )
                                      else
                                         If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                                            mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                                         else
                                            mConta := tContaPlano.FieldByName('Conta').AsString;

                                      // Pegando o número do último código reduzido sem o último digito.
                                      tCodigoPlano.SQL.Clear;
                                      tCodigoPlano.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM PlanoContas' );
                                      tCodigoPlano.Open;

                                      PlanoContas.Append;
                                                  PlanoContasConta.Value           := mConta;
                                                  PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger + 1);
                                                  PlanoContasDescricao.Value       := FornecedoresNome.Value;
                                                  PlanoContasSaldo_Anterior.Value  := 0;
                                                  PlanoContasDebito.Value          := 0;
                                                  PlanoContasCredito.Value         := 0;
                                                  PlanoContasSintetica.Value       := False;
                                                  PlanoContasNatureza.Value        := 'C';
                                                  PlanoContasLALUR.Value           := False;
                                                  PlanoContasMostrar_Balanco.Value := False;
                                                  PlanoContasImprimir_Razao.Value  := False;
                                      PlanoContas.Post;

                                      // Registra a conta aberta no plano no cadastro do cliente.
                                      Fornecedores.Edit;
                                                   FornecedoresConta.Value := PlanoContasCodigo.Value;
                                      Fornecedores.Post;
                                   end;
                                end;
                             end;
                          end;
                       end;

                       // Importando o cabeçalho do CT-e.
                                      NotasTerceirosNota.Value         := StrtoInt(cCTe.Text);
                                      NotasTerceirosData_Emissao.Value := StrtoDate(cdEmi.Text);
                                      if DataLimpa(cDataEntra.Text) then
                                         NotasTerceirosData_Entrada.Value := StrtoDate(cdSaiEnt.Text)
                                      else
                                         NotasTerceirosData_Entrada.Value := cDataEntra.Date;

                                      // Verifica se a empresa remetente e a destinataria são do mesmo grupo para os casos de transferência.
                                      tEmpresas.SQL.Clear;
                                      tEmpresas.SQL.Add('SELECT COUNT(*) AS Qtde FROM Empresas WHERE CNPJ IN(:pCNPJRem, :pCNPJDest)');
                                      tEmpresas.ParamByName('pCNPJRem').Asstring  := cRemCNPJ.Text;
                                      tEmpresas.ParamByName('pCNPJDest').Asstring := cDestCNPJ.Text;
                                      tEmpresas.Open;
                                      if tEmpresas.FieldByName('Qtde').AsInteger > 1 then begin
                                         NotasTerceirosNatureza_Frete.Value := 4;
                                      end else begin
                                         NotasTerceirosNatureza_Frete.Value := 0;
                                      end;

                                      NotasTerceirosReferencia_Fiscal.Value := ReferenciasFiscais.FieldByName('Codigo').AsInteger;
                                      NotasTerceirosClassificacao.Value     := ReferenciasFiscaisClassificacao_TotalNota.Value;

                                      If FornecedoresEstado.Value = EmpresasEstado.Value then begin
                                         NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value;
                                      end else begin
                                         NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
                                      end;

                                      if Trim(cCentroCusto.Text) <> '' then begin
                                         NotasTerceirosCentro_Custo.Value := CentroCustoCodigo.Value;
                                      end;

                                      NotasTerceirosFornecedor.Value              := StrtoInt(cCodigo.Text);
                                      NotasTerceirosEstado.Value                  := FornecedoresEstado.Value;
                                      NotasTerceirosTIPO.Value                    := 'CTE';
                                      NotasTerceirosModelo.Value                  := cMod.Text;
                                      NotasTerceirosSerie.Value                   := cSerie.Text;
                                      NotasTerceirosProcesso.Value                := cProcesso.Text;
                                      NotasTerceirosValor_TotalProdutos.Value     := cTotalNota.Value;
                                      NotasTerceirosValor_TotalProdutosOrig.Value := cTotalNota.Value;
                                      NotasTerceirosValor_TotalNota.Value         := cTotalNota.Value;
                                      NotasTerceirosValor_BCICMSOper.Value        := cBCICMS.Value;
                                      NotasTerceirosValor_ICMSOper.Value          := cValorICMS.Value;
                                      NotasTerceirosAliquota_ICMSOper.Value       := cAliquotaICMS.Value;
                                      NotasTerceirosValor_IsentasICMS.Value       := cIsentasICMS.Value;
                                      NotasTerceirosValor_OutrasICMS.Value        := cOutrasICMS.Value;
                                      NotasTerceirosValor_BCICMSSub.Value         := 0;
                                      NotasTerceirosValor_ICMSSub.Value           := 0;
                                      NotasTerceirosValor_TotalBCIPI.Value        := 0;
                                      NotasTerceirosValor_TotalIPI.Value          := 0;
                                      NotasTerceirosValor_IsentasIPI.Value        := cIsentasIPI.Value;
                                      NotasTerceirosValor_OutrasIPI.Value         := cOutrasIPI.Value;
                                      NotasTerceirosValor_TotalDescontos.Value    := 0;
                                      NotasTerceirosValor_TotalLiquido.Value      := cTotalNota.Value;
                                      NotasTerceirosValor_PIS.Value               := cValorPIS.Value;
                                      NotasTerceirosValor_COFINS.Value            := cValorCOFINS.Value;
                                      NotasTerceirosFUNDAP.Value                  := False;
                                      NotasTerceirosIncentivo_Fiscal.Value        := 'OUTROS';
                                      NotasTerceirosQuantidade.Value              := 1;
                                      NotasTerceirosValor_TotalDescontos.Value    := 0;
                                      NotasTerceirosVolume_PesoLiquido.Value      := 0;
                                      NotasTerceirosVolume_PesoBruto.Value        := 0;
                                      NotasTerceirosNFe_cNF.Value                 := cChave.Text;
                                      NotasTerceirosNFe_Protocolo.Value           := cProtocolo.Text;
                                      NotasTerceirosProvisoria.Value              := false;
                                      NotasTerceirosModalidade_Frete.Value        := mModal;
                                      NotasTerceirosMunicipio_Origem.Value        := StrtoInt(cRemcMun.Text);
                                      NotasTerceirosMunicipio_Destino.Value       := StrtoInt(cDestcMun.Text);
                       NotasTerceiros.Post;

                       // Importando os itens do CT-e.
                       NotasTerceirosItens.SQL.Clear;
                       NotasTerceirosItens.SQL.Add('DELETE FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
                       NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
                       NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                       NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                       NotasTerceirosItens.Execute;
                       NotasTerceirosItens.SQL.Clear;
                       NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
                       NotasTerceirositens.ParamByName('pNota').AsInteger       := StrtoInt(cCTe.Text);
                       NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                       NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                       NotasTerceirosItens.Open;

                       NotasTerceirosItens.Append;
                                           NotasTerceirosItensNota.Value                 := StrtoInt(cCTe.Text);
                                           NotasTerceirosItensItem.Value                 := 1;
                                           NotasTerceirosItensData_Emissao.Value         := StrtoDate(cdEmi.Text);
                                           NotasTerceirosItensData_Entrada.Value         := NotasTerceirosData_Entrada.Value;
                                           NotasTerceirosItensProcesso.Value             := cProcesso.Text;
                                           NotasTerceirosItensFornecedor.Value           := StrtoInt(cCodigo.Text);
                                           NotasTerceirosItensNatureza_Codigo.Value      := NotasTerceirosNatureza_Codigo.Value;
                                           NotasTerceirosItensCodigo_Mercadoria.Value    := ProdutosCodigo.Value;
                                           NotasTerceirosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
                                           NotasTerceirosItensNCM.Value                  := ProdutosNCM.Value;
                                           NotasTerceirosItensUnidade_Medida.Value       := ProdutosUnidade.Value;
                                           NotasTerceirosItensCodigoTrib_TabA.Value      := Copy(ReferenciasFiscaisCSTICMS.Text,1,1);
                                           NotasTerceirosItensCodigoTrib_TabB.Value      := Copy(ReferenciasFiscaisCSTICMS.Text,2,2);
                                           NotasTerceirosItensQuantidade.Value           := 1;
                                           NotasTerceirosItensDisponivel.Value           := 1;
                                           NotasTerceirosItensValor_Unitario.Value       := cTotalNota.Value;
                                           NotasTerceirosItensValor_UnitarioOrig.Value   := cTotalNota.Value;
                                           NotasTerceirosItensValor_Inventario.Value     := cTotalNota.Value;
                                           NotasTerceirosItensValor_Desconto.Value       := 0;
                                           NotasTerceirosItensValor_Liquido.Value        := cTotalNota.Value;
                                           NotasTerceirosItensValor_LiquidoOrig.Value    := cTotalNota.Value;
                                           NotasTerceirosItensValor_IsentasICMS.Value    := cIsentasICMS.Value;
                                           NotasTerceirosItensValor_OutrasICMS.Value     := cOutrasICMS.Value;
                                           NotasTerceirosItensValor_OutrasIPI.Value      := cOutrasIPI.Value;
                                           NotasTerceirosItensValor_IsentasIPI.Value     := cIsentasIPI.Value;
                                           NotasTerceirosItensPeso_Liquido.Value         := 0;
                                           NotasTerceirosItensPeso_Bruto.Value           := 0;
                                           NotasTerceirosItensTipo.Value                 := NotasTerceirosTipo.Value;
                                           NotasTerceirosItensValor_BCPIS.Value          := cTotalNota.Value;
                                           NotasTerceirosItensAliquota_PIS.Value         := cAliquotaPIS.Value;
                                           NotasTerceirosItensValor_PISOrig.Value        := cValorPIS.Value;
                                           NotasTerceirosItensValor_BCCOFINS.Value       := cTotalNota.Value;
                                           NotasTerceirosItensAliquota_COFINS.Value      := cAliquotaCOFINS.Value;
                                           NotasTerceirosItensValor_COFINSOrig.Value     := cValorCOFINS.Value;
                                           NotasTerceirosItensCST_IPI.Value              := ReferenciasFiscaisCSTIPI.AsString;
                                           NotasTerceirosItensCST_PIS.Value              := ReferenciasFiscaisCSTPIS.AsString;
                                           NotasTerceirosItensCST_COFINS.Value           := ReferenciasFiscaisCSTCOFINS.AsString;
                                           NotasTerceirosItensMovimenta_Estoque.Value    := ReferenciasFiscaisMovimenta_Estoque.Value;
                                           NotasTerceirosItensMovimenta_Inventario.Value := ReferenciasFiscaisMovimenta_Inventario.Value;
                                           NotasTerceirosItensInventario_Terceiros.Value := ReferenciasFiscaisInventario_Terceiros.Value;
                                           NotasTerceirosItensApuracao_PISCOFINS.Value   := ReferenciasFiscaisApuracao_PISCOFINS.Value;
                                           NotasTerceirosItensReferencia_Fiscal.Value    := ReferenciasFiscaisCodigo.Value;
                                           NotasTerceirosItensValor_BCICMSOper.Value     := cBCICMS.Value;
                                           NotasTerceirosItensValor_ICMSOper.Value       := cValorICMS.Value;
                                           NotasTerceirosItensAliquota_ICMSOper.Value    := cAliquotaICMS.Value;
                                           NotasTerceirosItensValor_ICMSOperOrig.Value   := cValorICMS.Value;
                                           NotasTerceirosItensValor_BCPIS.Value          := CalculaBCPISCTe(NotasTerceirosReferencia_Fiscal.asinteger);
                                           NotasTerceirosItensValor_PIS.Value            := NotasTerceirosItensValor_BCPIS.Value * (NotasTerceirosItensAliquota_PIS.Value/100);
                                           NotasTerceirosItensValor_BCCOFINS.Value       := CalculaBCCOFINSCTe(NotasTerceirosReferencia_Fiscal.asinteger);
                                           NotasTerceirosItensValor_COFINS.Value         := NotasTerceirosItensValor_BCCOFINS.Value * (NotasTerceirosItensAliquota_COFINS.Value/100);
                       NotasTerceirosItens.Post;

                       // Movendo o arquivo para a pasta de importados.   
                       if Empresas.FieldByName('Numero_Filial').asinteger <> 0 then begin
                          mPastaXML     := ExtractFilePath(cArquivos.Items[i]) + 'Importados\'+removecaracter('/', '', Empresas.FieldByName('Razao_Social').asstring) + '_Filial'+PoeZero(2, Empresas.FieldByName('Numero_Filial').asinteger);
                          mPastaPDFDest := mPastaXML;
                          mPastaPDFOrig := ExtractFilePath(cArquivos.Items[i]);
                       end else begin
                          mPastaXML     := ExtractFilePath(cArquivos.Items[i]) + 'Importados\'+Empresas.FieldByName('Razao_Social').asstring + '_Matriz';
                          mPastaPDFDest := mPastaXML;
                          mPastaPDFOrig := ExtractFilePath(cArquivos.Items[i]);
                       end;

                       // Verifica se a pasta de destino existe, se não cria.
                       if not DirectoryExists(mPastaXML) then begin
                          ForceDirectories(mPastaXML);
                       end;

                       // Move o arquivo XML importado para a pasta de destino.
                       mPastaXML := mPastaXML + '\'+ExtractFileName(cArquivos.Items[i]);
                       if not MoveFile(PChar(cArquivos.Items[i]), PChar(mPastaXML)) then begin
                          cErros.lines.add('Erro ao mover arquivo XML: '+cArquivos.Items[i]);
                       end;

                       // Move o arquivo PDF do DACTE do XML importado para a pasta de destino.
                       mArqPDF       := cChave.text + '.pdf';
                       mPastaPDFOrig := mPastaPDFOrig + '\' + mArqPDF;
                       mPastaPDFDest := mPastaPDFDest + '\' + mArqPDF;
                       if fileexists(PChar(mPastaPDFOrig)) then begin
                          if not MoveFile(PChar(mPastaPDFOrig), PChar(mPastaPDFDest)) then begin
                             cErros.lines.add('Erro ao mover arquivo PDF: '+mPastaPDFOrig);
                             cErros.lines.add('Erro ao mover arquivo PDF: '+mPastaPDFDest);
                          end;
                       end;
                    end else begin
                       cErros.lines.add('XML não importado: '+ExtractFileName(cArquivos.Items[i]));
                    end;
                 end;
              end;

              Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
              Application.ProcessMessages;
          end;
     end;
     
     Screen.Cursor := crDefault;
     Janela_Processamento.Close;
end;

Function TUtilitarios_Importar_CTe_Terceiros.PegaTagXML(pNo, pTag: string): string;
var
    vXMLDoc:TXMLDocument;
    NodeCTe,
    NodeInfCTe,
    NodeIde,
    mNo    :IXMLNode;
    i      :integer;
begin
    vXMLDoc := TXMLDocument.Create(self);
    vXMLDoc.LoadFromFile(XML.XMLDataFile);
    vXMLDoc.Active := true;

    NodeCTe    := vXMLDoc.DocumentElement.ChildNodes.FindNode('CTe');
    NodeInfCTe := NodeCTe.ChildNodes.FindNode('infCte');
    NodeIde    := NodeinfCTe.ChildNodes.FindNode('ide');
    mNo        := NodeIde.ChildNodes.FindNode(pNo);

    if mNo <> nil then begin
       for i := 0 to mNo.ChildNodes.Count-1 do begin
           if mNo.ChildNodes.Nodes[i].IsTextElement then begin
              if mNo.ChildNodes.Nodes[i].NodeName = pTag then begin
                 result := mNo.ChildNodes.Nodes[i].NodeValue;
                 break;
              end;
           end;
       end;
    end;
    vXMLDoc.Active := false;
    vXMLDoc.Free;
    vXMLDoc := nil;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.CarregaXML(arq:integer);
begin
     if FileExists(cArquivos.Items[arq]) then begin
        CTe.Active      := false;
        XML.XMLDataFile := cArquivos.Items[arq];
        CTe.Active      := true;

        with Dados do begin
             // Dados do CT-e.
             cEntSai.Text := 'ENTRADA';

             If CTe.FieldByName('tpAmb1').AsInteger = 1 then
                ctpAmb.Text := 'PRODUÇÃO'
             else
                ctpAmb.Text := 'HOMOLOGAÇÃO';

             cProtocolo.Text  := CTe.FieldByName('nProt').AsString;
             cCTe.Text        := CTe.FieldByName('nCT').AsString;
             cdEmi.Text       := Copy(CTe.FieldByName('dhEmi').AsString, 9, 2)+'/'+Copy(CTe.FieldByName('dhEmi').AsString, 6, 2)+'/'+Copy(CTe.FieldByName('dhEmi').AsString, 1, 4);
             cdSaiEnt.Text    := cdEmi.Text;
             ccUF.Text        := CTe.FieldByName('UFini').AsString;
             cChave.Text      := CTe.FieldByName('chCTe').AsString;
             cNfe.Text        := CTe.FieldByName('Chave').AsString;

             ccCT.Text        := Copy(CTe.FieldByName('chCTe').AsString, 36, 9);
             cMod.Text        := CTe.FieldByName('mod').AsString;
             cSerie.Text      := CTe.FieldByName('serie').AsString;
             ccMunFG.Text     := CTe.FieldByName('cMunEnv').AsString;
             ccMunFGNome.Text := CTe.FieldByName('xMunEnv').AsString;
             cNatOp.Text      := CTe.FieldByName('natOp').AsString;
             ctpEmis.Text     := CTe.FieldByName('tpEmis').AsString;

             If ctpEmis.Text = '1' then ctpEmisDesc.Text := 'Normal';
             If ctpEmis.Text = '5' then ctpEmisDesc.Text := 'Contingência FSDA';
             If ctpEmis.Text = '7' then ctpEmisDesc.Text := 'Autorização pela SVC-RS';
             If ctpEmis.Text = '8' then ctpEmisDesc.Text := 'Autorização pela SVC-SP.';

             ctpCTe.Text := CTe.FieldByName('tpCTe').AsString;
             If ctpCTe.Text = '0' then ctpCTeDesc.Text := 'CT-e Normal';
             If ctpCTe.Text = '1' then ctpCTeDesc.Text := 'CT-e de Complemento de Valores';
             If ctpCTe.Text = '2' then ctpCTeDesc.Text := 'CT-e de Anulação de Valores';
             If ctpCTe.Text = '3' then ctpCTeDesc.Text := 'CT-e Substituto.';

             cProcEmi.Text := CTe.FieldByName('procEmi').AsString;
             If cProcEmi.Text = '0' then cProcEmiDesc.Text := '0 - Emissão de CT-e com aplicativo do contribuinte';
             If cProcEmi.Text = '1' then cProcEmiDesc.Text := '1 - Emissão de CT-e avulsa pelo Fisco';
             If cProcEmi.Text = '2' then cProcEmiDesc.Text := '2 - Emissão de CT-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco';
             If cProcEmi.Text = '3' then cProcEmiDesc.Text := '3 - Emissão CT-e pelo contribuinte com aplicativo fornecido pelo Fisco.';

             cVerProc.Text := CTe.FieldByName('verProc').AsString;

             // Dados do emitente.
             if Dados.Fornecedores.Locate('CNPJ', CTe.FieldByName('Emit_CNPJ').AsString, [loCaseInsensitive] ) = True then begin
                cCodigo.Text        := Dados.FornecedoresCodigo.AsString;
                lFornecedor.Caption := 'Fornecedor já cadastrado.';
             end else begin
                cCodigo.Text        := '0';
                lFornecedor.Caption := 'Fornecedor Novo.';
             end;

             cCNPJ.Text    := CTe.FieldByName('Emit_CNPJ').AsString;
             cxNome.Text   := CTe.FieldByName('emit_xNome').AsString;
             cIE.Text      := CTe.FieldByName('Emit_IE').AsString;
             cxFant.Text   := CTe.FieldByName('emit_xNome').AsString;
             cxLgr.Text    := CTe.FieldByName('enderEmit_xLgr').AsString;
             cCpl.Text     := '';
             cNro.Text     := CTe.FieldByName('enderEmit_nro').AsString;
             cxBairro.Text := CTe.FieldByName('enderEmit_xBairro').AsString;
             cMun.Text     := CTe.FieldByName('enderEmit_cMun').AsString;
             cxMun.Text    := CTe.FieldByName('enderEmit_xMun').AsString;
             cUF.Text      := CTe.FieldByName('enderEmit_UF').AsString;
             cCEP.Text     := CTe.FieldByName('enderEmit_CEP').AsString;

             try
                 cFone.Text := CTe.FieldByName('fone').AsString;
             except
                 cFone.Text := CTe.FieldByName('fone1').AsString;
             end;
             
             cPais.Text  := '1058';
             cxPais.Text := 'BRASIL';

             // Dados do destinatario.
             cDestCNPJ.Text    := CTe.FieldByName('dest_CNPJ').AsString;
             cDestIE.Text      := CTe.FieldByName('dest_IE').AsString;
             cDestxNome.Text   := CTe.FieldByName('dest_xNome').AsString;
             cDestxLgr.Text    := CTe.FieldByName('enderDest_xLgr').AsString;
             cDestNro.Text     := CTe.FieldByName('enderDest_nro').AsString;
             cDestxBairro.Text := CTe.FieldByName('enderDest_xBairro').AsString;
             cDestcMun.Text    := CTe.FieldByName('enderDest_cMun').AsString;
             cDestxMun.Text    := CTe.FieldByName('enderDest_xMun').AsString;
             cDestUF.Text      := CTe.FieldByName('enderDest_UF').AsString;
             cDestcPais.Text   := CTe.FieldByName('enderDest_cPais').AsString;
             cDestxPais.Text   := CTe.FieldByName('enderDest_xPais').AsString;

             // Dados do Remetente.
             cRemCNPJ.Text    := CTe.FieldByName('rem_CNPJ').AsString;
             cRemIE.Text      := CTe.FieldByName('rem_IE').AsString;
             cRemxNome.Text   := CTe.FieldByName('rem_xNome').AsString;
             cRemxLgr.Text    := CTe.FieldByName('enderReme_xLgr').AsString;
             cRemNro.Text     := CTe.FieldByName('enderReme_nro').AsString;
             cRemxBairro.Text := CTe.FieldByName('enderReme_xBairro').AsString;
             cRemcMun.Text    := CTe.FieldByName('enderReme_cMun').AsString;
             cRemxMun.Text    := CTe.FieldByName('enderReme_xMun').AsString;
             cRemUF.Text      := CTe.FieldByName('enderReme_UF').AsString;
             cRemcPais.Text   := CTe.FieldByName('enderReme_cPais').AsString;
             cRemxPais.Text   := CTe.FieldByName('enderReme_xPais').AsString;

             // Dados do Tomador.
             if PegaTagXML('toma03', 'toma') <> '' then begin
                case strtoint(PegaTagXML('toma03', 'toma')) of
                     0:cToma.Text := 'Remetente';
                     1:cToma.Text := 'Expedidor';
                     2:cToma.Text := 'Recebedor';
                     3:cToma.Text := 'Destinatário';
                     4:cToma.Text := 'Outros';
                end;
             end;
             if PegaTagXML('toma3', 'toma') <> '' then begin
                case strtoint(PegaTagXML('toma3', 'toma')) of
                     0:cToma.Text := 'Remetente';
                     1:cToma.Text := 'Expedidor';
                     2:cToma.Text := 'Recebedor';
                     3:cToma.Text := 'Destinatário';
                     4:cToma.Text := 'Outros';
                end;
             end;
             if PegaTagXML('toma4', 'toma') <> '' then begin
                case strtoint(PegaTagXML('toma4', 'toma')) of
                     0:cToma.Text := 'Remetente';
                     1:cToma.Text := 'Expedidor';
                     2:cToma.Text := 'Recebedor';
                     3:cToma.Text := 'Destinatário';
                     4:cToma.Text := 'Outros';
                end;
                if strtoint(PegaTagXML('toma4', 'toma')) = 4 then begin
                   if PegaTagXML('toma4', 'CNPJ') = EmpresasCNPJ.Value then begin
                      cNomeToma.text := EmpresasRazao_Social.value;
                      cCNPJToma.text := EmpresasCNPJ.value;
                   end;
                end;
             end;

             // Dados do Recebedor.
             {
             cRecCNPJ.Text    := CTe.FieldByName('Rec_CNPJ').AsString;
             cRecIE.Text      := CTe.FieldByName('Rec_IE').AsString;
             cRecxNome.Text   := CTe.FieldByName('Rec_xNome').AsString;
             cRecxLgr.Text    := CTe.FieldByName('enderReme_xLgr').AsString;
             cRecNro.Text     := CTe.FieldByName('enderReme_nro').AsString;
             cRecBairro.Text  := CTe.FieldByName('enderReme_xBairro').AsString;
             cRecMun.Text     := CTe.FieldByName('enderReme_cMun').AsString;
             cRecxMun.Text    := CTe.FieldByName('enderReme_xMun').AsString;
             cRecUF.Text      := CTe.FieldByName('enderReme_UF').AsString;
             cRecPais.Text    := CTe.FieldByName('enderReme_cPais').AsString;
             cRecxPais.Text   := CTe.FieldByName('enderReme_xPais').AsString;
             }
             // Valores totais.
             cTotalNota.Value      := StrtoCurr(RemoveCaracter('.', ',', CTe.FieldByName('vtPrest').AsString));
             cLiquido.Value        := cTotalNota.Value;
             cOutrasICMS.Value     := 0;
             cOutrasIPI.Value      := cTotalNota.Value;
             cAliquotaPIS.Value    := ConfiguracaoPIS_CTR.Value;
             cAliquotaCOFINS.Value := ConfiguracaoCOFINS_CTR.Value;
             cValorPIS.Value       := Percentual(cTotalNota.Value, cAliquotaPIS.Value);
             cValorCOFINS.Value    := Percentual(cTotalNota.Value, cAliquotaCOFINS.Value);

             if Trim(CTe.FieldByName('vBC').AsString) <> '' then begin
                cBCICMS.Value       := StrtoCurr(RemoveCaracter('.', ',', CTe.FieldByName('vBC').AsString));
                cAliquotaICMS.Value := StrtoCurr(RemoveCaracter('.', ',', CTe.FieldByName('pICMS').AsString));
                cValorICMS.Value    := StrtoCurr(RemoveCaracter('.', ',', CTe.FieldByName('vICMS').AsString));
             end else begin
                cBCICMS.Value       := 0;
                cAliquotaICMS.Value := 0;
                cValorICMS.Value    := 0;
             end;

             if cValorICMS.Value = 0 then begin
                cOutrasICMS.Value := cTotalNota.Value;
             end;

             if (cToma.text = 'Remetente') then begin
                cNomeToma.Text := cRemxNome.Text;
                cCNPJToma.Text := cRemCNPJ.Text
             end;
             if cToma.text = 'Destinatário' then begin
                cNomeToma.Text := cDestxNome.Text;
                cCNPJToma.Text := cDestCNPJ.text;
             end;
        end;
     end;
     CTe.Active := false;
end;

function TUtilitarios_Importar_CTe_Terceiros.VerCancelamento(arq:integer):boolean;
var
    mXML : TXMLDocument;
    NoEvento,
    NoinfEvento,
    NoevCancCTe,
    nodetEvento: IXMLNode;
begin
      mXML := TXMLDocument.Create(Self);
      mXML.LoadFromFile(cArquivos.Items[arq]);
      mXML.Active := True;

      try
         NoEvento    := mXML.DocumentElement.ChildNodes.FindNode('eventoCTe');
         NoInfEvento := NoEvento.ChildNodes.FindNode('infEvento');
         NodetEvento := NoinfEvento.ChildNodes.FindNode('detEvento');
         NoevCancCTe := NodetEvento.ChildNodes.FindNode('evCancCTe');

         cErros.lines.Add('CT-e cancelado, não será importado.');
         cErros.lines.Add('     >Arquivo                   :'+cArquivos.Items[arq]);
         cErros.lines.Add('     >Chave                     :'+NoinfEvento.ChildNodes.FindNode('chCTe').Text);
         cErros.lines.Add('     >Evento                    :'+NoevCancCTe.ChildNodes.FindNode('descEvento').Text);
         cErros.lines.Add('     >Data                      :'+NoinfEvento.ChildNodes.FindNode('dhEvento').Text);
         cErros.lines.Add('     >Motivo do cancelamento    :'+NoevCancCTe.ChildNodes.FindNode('xJust').Text);
         cErros.lines.Add('     >Protocolo de cancelamento :'+NoevCancCTe.ChildNodes.FindNode('nProt').Text);
         result := true;
      except
         result := false;
      end;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.cArquivosClick(Sender: TObject);
begin
     cPasta.ActivePageIndex := 0;
     CarregaXML(cArquivos.ItemIndex);
end;

procedure TUtilitarios_Importar_CTe_Terceiros.Button1Click(Sender: TObject);
begin
     cRefComImp.KeyValue   := -1;
     cRefSemImp.KeyValue   := -1;
     cCentroCusto.KeyValue := '';
     cProcesso.Keyvalue    := '';
     cSubst.Checked        := false;
     cDataEntra.Clear;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.cTudoClick(Sender: TObject);
begin
      cAno.Enabled := not cTudo.Checked;
      cMes.Enabled := not cTudo.Checked;
      cAno.Clear;
      cMes.ItemIndex := -1;
end;

procedure TUtilitarios_Importar_CTe_Terceiros.bVerficarClick(Sender: TObject);
var
   i:integer;
   mImp:boolean;
begin
     cPasta.ActivePageIndex := 5;
     cErros.Clear;

     Janela_Processamento                    := TJanela_Processamento.Create(Self);
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.Max      := cArquivos.Items.Count;
     Janela_Processamento.Show;

     for i := 0 to cArquivos.Items.Count-1 do begin
         if Funcoes.Cancelado then begin
            ShowMessage('Verificação cancelada pelo usuário!');
            Break;
         end;

         CarregaXML(i);

         Janela_Processamento.lProcesso.Caption := 'CT-e:' + cChave.Text;

         // Verifica quem é o tomador de serviço.
         // Tipos de Emitentes: Remetente / Expedidor / Recebedor / Destinatário / Outros.
         mImp := false;
         if (cToma.text = 'Remetente') and (cRemCNPJ.text  = Dados.EmpresasCNPJ.AsString) then begin
            mImp := true;
         end;
         if (cToma.text = 'Destinatário') and (cDestCNPJ.text = Dados.EmpresasCNPJ.AsString) then begin
            mImp := true;
         end;
         if mImp then begin
            if not dmFiscal.NotasTerceiros.Locate('Nfe_cNF', cChave.Text, [loCaseInsensitive]) then begin
               cErros.Lines.Add('Não encontrada:'+cChave.Text+ ' de '+cdEmi.Text);
            end;
         end;

         Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
         Application.ProcessMessages;
     end;

     Janela_Processamento.Close;
     Showmessage('Verificação concluída');
end;



end.
