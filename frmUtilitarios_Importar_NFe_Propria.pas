unit frmUtilitarios_Importar_NFe_Propria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, RXCtrls, Vcl.ExtCtrls, DB, XMLDoc, XMLIntf, xmldom, msxmldom, Grids,
  RXDBCtrl, Vcl.ComCtrls, DBCtrls, Funcoes, DBAccess, MSAccess, CalcExpress, strUtils, MaskUtils, RxCurrEdit, MemDS, RxToolEdit, Vcl.Buttons, ACBrBase, ACBrDFe, system.UITypes, ACBrNFe, math, Vcl.Samples.Spin, IniFiles;

type
  TUtilitarios_Importar_NFe_Propria = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    cPasta: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cDadosNfe: TGroupBox;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    StaticText13: TStaticText;
    cdEmi: TMaskEdit;
    cdSaiEnt: TMaskEdit;
    StaticText4: TStaticText;
    GroupBox1: TGroupBox;
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
    TabSheet3: TTabSheet;
    ccNF: TMaskEdit;
    cNatOp: TMaskEdit;
    StaticText24: TStaticText;
    ccUF: TMaskEdit;
    cChave: TMaskEdit;
    cnNF: TMaskEdit;
    StaticText35: TStaticText;
    cmod: TMaskEdit;
    StaticText27: TStaticText;
    cSerie: TMaskEdit;
    StaticText32: TStaticText;
    ctpNF: TMaskEdit;
    StaticText34: TStaticText;
    ccMunFG: TMaskEdit;
    ccMunFGNome: TMaskEdit;
    StaticText36: TStaticText;
    ctpEmis: TMaskEdit;
    ctpEmisDesc: TMaskEdit;
    StaticText37: TStaticText;
    ctpAmb: TMaskEdit;
    StaticText38: TStaticText;
    cfinNFe: TMaskEdit;
    cfinNFeDesc: TMaskEdit;
    StaticText39: TStaticText;
    cprocEmi: TMaskEdit;
    cprocEmiDesc: TMaskEdit;
    StaticText40: TStaticText;
    cverProc: TMaskEdit;
    cNotas: TListBox;
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
    TabSheet4: TTabSheet;
    GradeItens: TStringGrid;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    StaticText7: TStaticText;
    StaticText25: TStaticText;
    cBCICMS: TCurrencyEdit;
    cValorICMS: TCurrencyEdit;
    StaticText31: TStaticText;
    StaticText41: TStaticText;
    cBCICMSSub: TCurrencyEdit;
    cValorICMSSub: TCurrencyEdit;
    StaticText42: TStaticText;
    cProdutos: TCurrencyEdit;
    StaticText43: TStaticText;
    cFrete: TCurrencyEdit;
    StaticText44: TStaticText;
    cSeguro: TCurrencyEdit;
    StaticText45: TStaticText;
    cDesconto: TCurrencyEdit;
    StaticText46: TStaticText;
    cII: TCurrencyEdit;
    StaticText47: TStaticText;
    cIPI: TCurrencyEdit;
    StaticText48: TStaticText;
    cPIS: TCurrencyEdit;
    StaticText49: TStaticText;
    cCOFINS: TCurrencyEdit;
    StaticText50: TStaticText;
    cDespesas: TCurrencyEdit;
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
    tCodigo: TMSQuery;
    StaticText62: TStaticText;
    cBCIPI: TCurrencyEdit;
    StaticText63: TStaticText;
    cQtdeTotal: TCurrencyEdit;
    StaticText64: TStaticText;
    cLiquido: TCurrencyEdit;
    StaticText65: TStaticText;
    cPesoLiquido: TCurrencyEdit;
    StaticText66: TStaticText;
    cPesoBruto: TCurrencyEdit;
    cProtocolo: TMaskEdit;
    StaticText67: TStaticText;
    tProdutos: TMSQuery;
    IntegerField1: TIntegerField;
    GroupBox4: TGroupBox;
    StaticText57: TStaticText;
    cTipoNota: TDBLookupComboBox;
    StaticText58: TStaticText;
    cTipoProduto: TDBLookupComboBox;
    StaticText59: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    StaticText68: TStaticText;
    cOrigem: TComboBox;
    tContaPlano: TMSQuery;
    tCodigoPlano: TMSQuery;
    cRamoAtividade: TDBLookupComboBox;
    tProcuraProdutos: TMSQuery;
    cProcesso: TDBLookupComboBox;
    StaticText56: TStaticText;
    cCodigo: TMaskEdit;
    lFornecedor: TLabel;
    StaticText69: TStaticText;
    cInfCpl: TMemo;
    TabSheet6: TTabSheet;
    GroupBox5: TGroupBox;
    lTransportador: TLabel;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    StaticText72: TStaticText;
    StaticText73: TStaticText;
    StaticText74: TStaticText;
    StaticText75: TStaticText;
    StaticText76: TStaticText;
    StaticText77: TStaticText;
    StaticText78: TStaticText;
    cTransCNPJ: TMaskEdit;
    cTransNome: TMaskEdit;
    cTransRua: TMaskEdit;
    cTransRuaNumero: TMaskEdit;
    cTransBairro: TMaskEdit;
    cTransMunicipioCod: TMaskEdit;
    cTransMunicipioNome: TMaskEdit;
    cTransUF: TMaskEdit;
    cTransPaisCod: TMaskEdit;
    cTransPaisNome: TMaskEdit;
    cTransIE: TMaskEdit;
    StaticText79: TStaticText;
    cTransCodigo: TMaskEdit;
    cModalidadeFrete: TRadioGroup;
    StaticText80: TStaticText;
    cEspecie: TMaskEdit;
    StaticText81: TStaticText;
    cDestCEP: TMaskEdit;
    TabSheet7: TTabSheet;
    GradeCadastro: TStringGrid;
    StaticText82: TStaticText;
    cDestCPF: TMaskEdit;
    cSituacao: TRadioGroup;
    mMacro: TCalcExpress;
    StaticText84: TStaticText;
    cFCP: TCurrencyEdit;
    StaticText85: TStaticText;
    cAliquotaFCPST: TCurrencyEdit;
    StaticText87: TStaticText;
    cFCPST: TCurrencyEdit;
    StaticText88: TStaticText;
    cAliquotaFCP: TCurrencyEdit;
    cCodNota: TCheckBox;
    cSubst: TCheckBox;
    TabSheet8: TTabSheet;
    GradeDupl: TStringGrid;
    Panel2: TPanel;
    StaticText83: TStaticText;
    StaticText86: TStaticText;
    StaticText89: TStaticText;
    StaticText90: TStaticText;
    cFat: TMaskEdit;
    cTotal: TCurrencyEdit;
    cDesc: TCurrencyEdit;
    cLiq: TCurrencyEdit;
    cFormaPgto: TDBLookupComboBox;
    StaticText91: TStaticText;
    tProvisao: TMSQuery;
    StaticText92: TStaticText;
    cBanco: TDBLookupComboBox;
    StaticText93: TStaticText;
    cBCPIS: TCurrencyEdit;
    tSerial: TMSQuery;
    bPesqNav: TSpeedButton;
    StaticText94: TStaticText;
    cNavio: TDBLookupComboBox;
    NFe: TACBrNFe;
    tTmp: TMSQuery;
    tForn: TMSQuery;
    tFOB: TMSQuery;
    tItemAdicao: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure cNotasClick(Sender: TObject);
    procedure GradeItensDrawCell(Sender: TObject; ACol, ARow: Integer;Rect: TRect; State: TGridDrawState);
    procedure cTipoNotaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cTipoProdutoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cCentroCustoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cProcessoExit(Sender: TObject);
    procedure GradeCadastroDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure GradeItensDblClick(Sender: TObject);
    function  CalculaMacro(Campo: String): Real;
    procedure cCodNotaClick(Sender: TObject);
    procedure SalvarNFE;
    procedure cFormaPgtoClick(Sender: TObject);
    procedure GradeDuplDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
  private
    procedure GeraFinanceiro;
    { Private declarations }
  public
    { Public declarations }
    mArquivos       :Array[0..1000] of String;
    mTamanho,mErros :Integer;
    mContaDebito,
    mContaCredito,
    mTipo           :String;
    mAliquotaPIS,
    mAliquotaCOFINS :Real;
    mChave, mNaoImp:widestring;
    mPercentual,
    mParcelas       :Real;
  end;

var
  Utilitarios_Importar_NFe_Propria: TUtilitarios_Importar_NFe_Propria;

implementation

uses frmDados, frmDMFiscal, frmDMContab, frmJanela_Processamento, frmMenu_Principal, pcnConversao, pcnConversaoNFe;

{$R *.dfm}

procedure TUtilitarios_Importar_NFe_Propria.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TUtilitarios_Importar_NFe_Propria.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      with Dados do begin
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := trim(cnNF.Text)+trim('_IMPNF_'+cCNF.Text);
           TabParcelas.Execute;
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro) ORDER BY Registro, Parcela');
           TabParcelas.ParamByName('pRegistro').AsString := trim(cnNF.Text)+trim('_IMPNF_'+cCNF.Text);
           TabParcelas.Open;
           
           aINI.WriteBool   ('Importa_NFE_Propria', 'Vinculo'    , cCodNota.Checked);
           aINI.WriteBool   ('Importa_NFE_Propria', 'Substituir' , cSubst.Checked);
           aINI.WriteInteger('Importa_NFE_Propria', 'TipoNota'   , iif(cTipoNota.Text <> '', TipoNota.FieldByName('Codigo').AsInteger, -1));
           aINI.WriteString ('Importa_NFE_Propria', 'CentroCusto', CentroCusto.FieldByName('Codigo').asstring);
           aINI.WriteString ('Importa_NFE_Propria', 'Processo'   , cProcesso.Text);
           aINI.WriteString ('Importa_NFE_Propria', 'Origem'     , cOrigem.Text);
           aINI.WriteInteger('Importa_NFE_Propria', 'Situacao'   , cSituacao.ItemIndex);
           aINI.Free;
      end;
      

      LimpaMemoria;
      Utilitarios_Importar_NFe_Propria.Release;
      Utilitarios_Importar_NFe_Propria := nil;
end;

procedure TUtilitarios_Importar_NFe_Propria.FormShow(Sender: TObject);
Var
   I: Integer;
   aINI: TIniFile;
begin
     Screen.Cursor := crSQLWait;
     
     aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cCodNota.Checked        := aINI.Readbool   ('Importa_NFE_Propria', 'Vinculo'   , false);
     cSubst.Checked          := aINI.Readbool   ('Importa_NFE_Propria', 'Substituir', false);
     cTipoNota.keyvalue      := aINI.Readinteger('Importa_NFE_Propria', 'TipoNota'  , -1);
     cCentroCusto.KeyValue   := aINI.Readstring ('Importa_NFE_Propria', 'CentroCusto', '');
     cProcesso.keyvalue      := aINI.Readstring ('Importa_NFE_Propria', 'Processo', '');
     cOrigem.Text            := aINI.Readstring ('Importa_NFE_Propria', 'Origem', '');
     cSituacao.ItemIndex     := aINI.Readinteger('Importa_NFE_Propria', 'Situacao', 0);
     aINI.Free;
     
     With Dados, dmFiscal, dmContab do begin
          Notas.SQL.Clear;
          Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Numero = 1)');
          Notas.Open;

          NotasItens.SQL.Clear;
          NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = 1)');
          NotasItens.Open;

          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes');
          Clientes.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
          Fornecedores.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios');
          Municipios.Open;

          Unidades.SQL.Clear;
          Unidades.SQL.Add('SELECT * FROM UnidadeMedida');
          Unidades.Open;

          EnquadramentoIPI.SQL.Clear;
          EnquadramentoIPI.SQL.Add('SELECT * FROM EnquadramentoIPI');
          EnquadramentoIPI.Open;

          TipoProduto.SQL.Clear;
          TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
          TipoProduto.Open;

          RamoAtividade.SQL.Clear;
          RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Codigo');
          RamoAtividade.Open;

          CSTTabelaB.SQL.Clear;
          CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
          CSTTabelaB.Open;

          CSTIPI.SQL.Clear;
          CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Codigo');
          CSTIPI.Open;

          NCM.SQL.Clear;
          NCM.SQL.Add('SELECT * FROM NCM ORDER BY NCM');
          NCM.Open;

          Estados.SQL.Clear;
          Estados.SQL.Add('SELECT * FROM Estados');
          Estados.Open;

          TipoNota.SQL.Clear;
          TipoNota.SQL.Add('SELECT * FROM TipoNota ORDER BY Descricao');
          TipoNota.Open;

          TipoProduto.SQL.Clear;
          TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
          TipoProduto.Open;

          CentroCusto.SQL.Clear;
          CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
          CentroCusto.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
          ProcessosDOC.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
          Produtos.Open;

          Configuracao.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;

          Campos.SQL.Clear;
          Campos.SQL.Add('SELECT * FROM Campos ORDER BY Tabela');
          Campos.Open;

          ModalidadesPgto.SQL.Clear;
          ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento');
          ModalidadesPgto.Open;

          Bancos.SQL.Clear;
          Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
          Bancos.Open;
          
          with ControleNavios do begin 
               sql.Clear;
               sql.Add('select *');
               sql.Add('from  ControleNavios');
               sql.Add('where Status <> ''ENCERRADO''');
               sql.Add('order by Navio');
               open;
          end;
     End;

     For I := 0 to High(mArquivos) do begin
         If mArquivos[I] <> '' then cNotas.Items.Add(mArquivos[I]);
     End;
     cNotas.ItemIndex := 0;
     cNotasClick(Self);
     cPasta.ActivePageIndex := 0;
     Screen.Cursor := crDefault;
end;

procedure TUtilitarios_Importar_NFe_Propria.bImportarClick(Sender: TObject);
var
   mXML:integer;
begin
     if MessageDlg('Deseja realmente importar as notas selecionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     if Trim(cTipoNota.Text) = '' then begin
        MessageDlg('Tipo de nota fiscal não informado!', mtInformation, [mbOK], 0);
        cTipoNota.SetFocus;
        Abort;
     end;
     if Trim(cOrigem.Text) = '' then begin
        MessageDlg('Origem da mercadoria não informado!', mtInformation, [mbOK], 0);
        cOrigem.SetFocus;
        Abort;
     end;

     mErros := 0;
     for mXML := 0 to cNotas.Items.Count-1 do begin
         cNotas.ItemIndex := mXML;
         cNotasClick(Self);
         if Panel2.Enabled then cFormaPgtoClick(self);
         Application.ProcessMessages;
         SalvarNFE;
     end;

     // Quando há erros na importação.
     if mErros > 0 then begin
        MessageDlg('Houve erro na importação das notas!'+#13+#13+'Relação de Notas não importadas:'+#13+#13+mNaoImp, mtError, [mbOK], 0);
     end;
     
     // Quando o usuário não importa uma nota mesmo que selecionada.
     if (mErros = 0) and (Trim(mNaoImp) <> '') then begin
        MessageDlg('Relação de Notas não importadas:'+#13+#13+mNaoImp, mtError, [mbOK], 0);
     end;
     if (mErros = 0) and (Trim(mNaoImp) = '') then begin
        MessageDlg('Importação de notas fiscais concluída.', mtInformation, [mbOK], 0);
     end;
end;

procedure TUtilitarios_Importar_NFe_Propria.SalvarNFE;
Var
    mReg,
    mOrdem,
    mCod,
    mQtdeItem: Integer;
    mUnitSaldo,
    mQtdeSaldo,
    mTotalSaldo,
    mTotalInventario,
    mAliqICMS: Real;
    mAchou,
    mSubst :boolean;
begin
       With Dados, dmFiscal, dmContab do begin
            Nfe.NotasFiscais.Clear;
            Nfe.NotasFiscais.LoadFromFile(cNotas.Items[cNotas.ItemIndex]);
            mChave := ApenasNumeros(NFe.NotasFiscais.Items[0].NFe.infNFe.ID);

            If Trim(cCNPJ.Text) <> Trim(EmpresasCNPJ.Value) then begin
               MessageDlg('Essa nota fiscal não pertence a empresa em uso atualmente!', mtInformation, [mbOK], 0);
               Inc(mErros);
               mNaoImp := mNaoImp + cChave.Text + #13;
            End;

            Notas.SQL.Clear;
            Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
            Notas.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
            Notas.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
            Notas.Open;

            mSubst := cSubst.Checked;

            if Notas.RecordCount = 0 then begin
               Notas.Append;
            end else begin
               if not cSubst.Checked then begin
                  if MessageDlg('Ja existe uma nota fiscal cadastrada com este número nesta data.'+#13+#13+
                                'Deseja substituir a nota fiscal existente?', mtInformation, [mbYes, mbNo], 0) = mrYes then begin
                     mSubst := true;
                   end else begin
                     mSubst  := false;
                     mNaoImp := mNaoImp + cChave.Text + #13;
                     Abort;
                   end;
               end;

               if mSubst then begin
                  Notas.SQL.Clear;
                  Notas.SQL.Add('DELETE FROM NotasFiscais WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
                  Notas.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                  Notas.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                  Notas.Execute;
                  Notas.SQL.Clear;
                  Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
                  Notas.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                  Notas.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                  Notas.Open;

                  // DELETA OS ITENS
                  NotasItens.SQL.Clear;
                  NotasItens.SQL.Add('DELETE FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
                  NotasItens.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                  NotasItens.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                  NotasItens.Execute;
                  NotasItens.SQL.Clear;
                  NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
                  NotasItens.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                  NotasItens.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                  NotasItens.Open;
                  Notas.Edit;
               end;
            end;

            // Cadastra o fornecedor se não encontrado.
            If Trim(cCodigo.Text) = '' then begin
               If ctpNF.Text = 'ENTRADA' then begin
                  tCodigo.SQL.Clear;
                  tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Fornecedores');
                  tCodigo.Open;

                  Fornecedores.Append;
                               tCodigo.Open;
                               FornecedoresCodigo.Value             := tCodigo.FieldByName('Codigo').Value;
                               tCodigo.Close;
                               FornecedoresNome.Value               := cDestxNome.Text;
                               FornecedoresPais.Value               := cDestcPais.Text;
                               FornecedoresEstado.Value             := cDestUF.Text;
                               FornecedoresMunicipio_Codigo.Value   := StrtoInt(cDestcMun.Text);
                               FornecedoresBairro.Value             := cDestxBairro.Text;
                               FornecedoresRua.Value                := cDestxLgr.Text;
                               FornecedoresRua_Numero.Value         := cDestNro.Text;
                               FornecedoresCEP.Value                := cDestCEP.Text;
                               FornecedoresCNPJ.Value               := cDestCNPJ.Text;
                               FornecedoresCPF.Value                := cDestCPF.Text;
                               FornecedoresInscricao_Estadual.Value := cDestIE.Text;
                               If Trim(cDestIE.Text)='' then FornecedoresIsento.Value:=True else FornecedoresIsento.Value:=False;
                               FornecedoresTelefone1.Value          := cFone.Text;
                               FornecedoresRamo_Atividade.Value     := RamoAtividadeCodigo.AsInteger;
                               FornecedoresTipo_Produto.Value       := TipoProdutoCodigo.Value;
                  Fornecedores.Post;
                  cCodigo.Text := FornecedoresCodigo.AsString;
               end else begin
                  tCodigo.SQL.Clear;
                  tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Clientes');
                  tCodigo.Open;

                  Clientes.Append;
                           tCodigo.Open;
                           ClientesCodigo.Value             := tCodigo.FieldByName('Codigo').Value;
                           tCodigo.Close;
                           ClientesNome.Value               := cDestxNome.Text;
                           ClientesAtivo.Value              := true;
                           ClientesPais.Value               := cDestcPais.Text;
                           ClientesEstado.Value             := cDestUF.Text;
                           ClientesMunicipio_Codigo.Value   := StrtoInt(cDestcMun.Text);
                           ClientesBairro.Value             := cDestxBairro.Text;
                           ClientesRua.Value                := cDestxLgr.Text;
                           ClientesRua_Numero.Value         := cDestNro.Text;
                           ClientesCEP.Value                := cDestCEP.Text;
                           ClientesCNPJ.Value               := cDestCNPJ.Text;
                           ClientesCPF.Value                := cDestCPF.Text;
                           ClientesInscricao_Estadual.Value := cDestIE.Text;
                           If Trim(cDestIE.Text) = '' then ClientesIsento.Value:=True else ClientesIsento.Value:=False;
                  Clientes.Post;
                  cCodigo.Text := ClientesCodigo.AsString;
               End;
            End;

            // Cadastra o transportador se não encontrado.
            If Trim(cTransCodigo.Text) = '' then begin
               tCodigo.SQL.Clear;
               tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Fornecedores');
               tCodigo.Open;

               Fornecedores.Append;
                            FornecedoresCodigo.Value             := tCodigo.FieldByName('Codigo').Value;
                            tCodigo.Close;
                            FornecedoresNome.Value               := cTransNome.Text;
                            FornecedoresEstado.Value             := cTransUF.Text;
                            FornecedoresRua.Value                := cTransRua.Text;
                            FornecedoresCNPJ.Value               := cTransCNPJ.Text;
                            FornecedoresInscricao_Estadual.Value := cTransIE.Text;
                            If Trim(cTransIE.Text)='' then FornecedoresIsento.Value:=True else FornecedoresIsento.Value := False;
               Fornecedores.Post;
               cTransCodigo.Text := FornecedoresCodigo.AsString;
            End;

            // Criando o processo interno.
            If Trim(cProcesso.Text) <> '' then begin
               If not ProcessosDOC.Locate('Processo', cProcesso.Text, [loCaseInsensitive]) then begin
                  ProcessosDOC.Append;
                               ProcessosDocProcesso.Value         := cProcesso.Text;
                               ProcessosDocTipo.Value             := mTipo;
                               ProcessosDocIncentivo_Fiscal.Value := 'IMPORTAÇÃO';
                  ProcessosDOC.Post;
               End;
            End;

            // Importando o cabeçalho da nota fiscal.
            NotasNumero.Value        := StrtoInt(cnNF.Text);
            NotasSaida_Entrada.Value := iif(ctpNF.Text = 'ENTRADA', 0, 1);
            NotasData_Emissao.Value  := StrtoDate(cdEmi.Text);
            NotasTipo_Nota.Value     := TipoNotaCodigo.Value;

            If ctpNF.Text = 'ENTRADA' then begin
               NotasFornecedor_Codigo.Value := StrtoInt(cCodigo.Text);
               NotasCliente_Codigo.Value    := 0;
            end else begin
               NotasFornecedor_Codigo.Value := 0;
               NotasCliente_Codigo.Value    := StrtoInt(cCodigo.Text);
            end;

            NotasTransportador_Codigo.Value   := StrtoInt(cTransCodigo.Text);

            NotasModalidade_Frete.Value       := 9;
            If cModalidadeFrete.ItemIndex < 3 then NotasModalidade_Frete.Value := cModalidadeFrete.ItemIndex;

            NotasEstado.Value                 := FornecedoresEstado.Value;
            NotasNatureza_Codigo.Value        := GradeItens.Cells[06,1];
            NotasModelo.Value                 := cMod.Text;
            NotasSerie.Value                  := cSerie.Text;
            NotasProcesso.Value               := cProcesso.Text;
            if trim(cProcesso.Text) <> '' then begin
               NotasDI.Value         := ProcessosDOCNumero_Declaracao.AsString;
               NotasData_DI.Value    := ProcessosDOCData_RegistroDeclaracao.AsDateTime;
               NotasImportacao.Value := true;
            end;
            NotasBCICMS.Value                 := cBCICMS.Value;
            NotasValor_ICMS.Value             := cValorICMS.Value;
            NotasBCICMS_Substitutivo.Value    := cBCICMSSub.Value;
            NotasValorICMS_Substitutivo.Value := cValorICMSSub.Value;
            NotasBCIPI.Value                  := cBCIPI.Value;
            NotasValor_TotalII.Value          := cII.Value;
            NotasValor_TotalIPI.Value         := cIPI.Value;
            NotasValor_IsentasICMS.Value      := cIsentasICMS.Value;
            NotasValor_OutrasICMS.Value       := cOutrasICMS.Value;
            NotasValor_IsentasIPI.Value       := cIsentasIPI.Value;
            NotasValor_OutrasIPI.Value        := cOutrasIPI.Value;
            NotasValor_BCPIS.Value            := cBCPIS.Value;
            NotasValor_PIS.Value              := cPIS.Value;
            NotasValor_COFINS.Value           := cCOFINS.Value;
            NotasValor_OutrasDespesas.Value   := cDespesas.Value;
            NotasValor_Seguro.Value           := cSeguro.Value;
            NotasTotal_Frete.Value            := cFrete.Value;
            NotasFUNDAP.Value                 := False;
            NotasIncentivo_Fiscal.Value       := Dados.EmpresasIncentivo_Fiscal.AsString;
            NotasValor_TotalProdutos.Value    := cProdutos.Value;
            NotasTotal_Descontos.Value        := cDesconto.Value;
            NotasValor_TotalNota.Value        := cTotalNota.Value;
            NotasVolume_Quantidade.Value      := cQtdeTotal.Value;
            NotasVolume_PesoLiquido.Value     := cPesoLiquido.Value;
            NotasVolume_PesoBruto.Value       := cPesoBruto.Value;
            NotasVolume_Especie.Value         := cEspecie.Text;
            NotasNFe_cNF.Value                := cChave.Text;
            NotasNFe_Protocolo.Value          := cProtocolo.Text;
            NotasNFe_DataProtocolo.Value      := StrtoDate(cdEmi.Text);
            NotasNatureza_Codigo.Value        := GradeItens.Cells[ 6, 1];
            NotasInf_Complementares.Value     := cInfCpl.Lines.Text;
            NotasCancelada.Value              := cSituacao.ItemIndex = 1;
            NotasNFE_Denegada.Value           := cSituacao.ItemIndex = 2;
            NotasComplementar.Value           := cSituacao.ItemIndex = 3;
            NotasDevolucao.Value              := cSituacao.ItemIndex = 4;
            NotasAjuste.Value                 := cSituacao.ItemIndex = 5;
            NotasBaixa_Estoque.Value          := cSituacao.ItemIndex = 6;
            NotasAliquota_ICMSSub.Value       := 0;
            NotasValor_Inventario.Value       := 0;

            If Trim(cDestCNPJ.Text) <> '' then begin
               NotasDestinatario_CNPJ_CPF.Value := cDestCNPJ.Text;
               NotasDestinatario_Juridica.Value := true;
            end else begin
               NotasDestinatario_CNPJ_CPF.Value := cDestCPF.Text;
               NotasDestinatario_Juridica.Value := false;
            end;
            NotasDestinatario_IE.Value        := cDestIE.Text;
            NotasDestinatario_Nome.Value      := cDestxNome.Text;
            NotasDestinatario_Rua.Value       := cDestxLgr.Text;
            NotasDestinatario_RuaNumero.Value := cDestNro.Text;
            NotasDestinatario_Bairro.Value    := cDestxBairro.Text;
            NotasDestinatario_Municipio.Value := StrtoInt(cDestcMun.Text);
            NotasDestinatario_Estado.Value    := cDestUF.Text;
            NotasDestinatario_CEP.Value       := cDestCEP.Text;
            NotasDestinatario_Pais.Value      := cDestcPais.Text;
            NotasApuracao_PISCOFINS.Value     := TipoNotaApuracao_PISCOFINS.Value;
            NotasAliquota_FCP.Value           := cAliquotaFCP.Value;
            NotasValor_FCP.Value              := cFCP.Value;
            NotasAliquota_FCPST.Value         := cAliquotaFCPST.Value;
            NotasValor_FCPST.Value            := cFCPST.Value;

            NotasValor_BCICMSMonoRet.value    := NFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.qBCMonoRet;
            NotasValor_ICMSMono.value         := NFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMSMono;
            NotasValor_ICMSMonoRet.value      := NFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMSMonoRet;

            Notas.Post;

            // Gerando os lançamentos financeiros se houver duplicatas e o tipo de nota estiver marcado para gerar contas a receber.
            if (TipoNotaGerar_Financeiro.AsBoolean) and (Trim(TipoNotaClassificacao_Saida.AsString) <> '') and (trim(cFat.Text) <> '')  then begin
               GeraFinanceiro;
            end;

            // Deleta os itens das notas da ficha de estoque/inventario.
            FichaEstoque.SQL.Clear;
            FichaEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Origem = ''NFP'' ');
            FichaEstoque.ParamByName('pNota').AsInteger := NotasNumero.Value;
            FichaEstoque.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
            FichaEstoque.Execute;
            FichaEstoque.SQL.Clear;
            FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Origem = ''NFP'' ');
            FichaEstoque.ParamByName('pNota').AsInteger := NotasNumero.Value;
            FichaEstoque.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
            FichaEstoque.Open;

            FichaInventario.SQL.Clear;
            FichaInventario.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Origem = ''NFP'' ');
            FichaInventario.ParamByName('pNota').AsInteger := NotasNumero.Value;
            FichaInventario.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
            FichaInventario.Execute;
            FichaInventario.SQL.Clear;
            FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Origem = ''NFP'' ');
            FichaInventario.ParamByName('pNota').AsInteger := NotasNumero.Value;
            FichaInventario.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
            FichaInventario.Open;

            // Exclui as notas da tabela de seriais/chassis para notas canceladas/denegadas.
            if cSituacao.ItemIndex in([1, 2]) then begin
               with tSerial do begin
                    SQL.Clear;
                    SQL.Add('delete from ProdutosSeriaisNotas where Nota = :pNota AND Data = :pData');
                    ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                    ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                    Execute;
               end;
            end;

            // Totalizando o FOB para calculo do rateio da "AFRMM".
            with tFOB do begin
                 sql.Clear;
                 sql.Add('select FOB_Total = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from Adicoes where (DI = :pDI)), 0) ');
                 paramByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
                 //sqL.SaveToFile('c:\temp\Importacao_Nota_Propria_tFOB.sql');
                 open;
            end;
            // Pegando o valor do AFRMM no financeiro.
            with tTmp do begin
                 sql.clear;
                 sql.add('select Valor_Operacao = sum(Valor_Operacao)');
                 sql.add('from PagarReceber');
                 sql.add('where Processo = :pProcesso');
                 sql.add('and Classificacao = (select Classificacao_AFRMM from TiposProcesso where Codigo = (select Modalidade_Importacao from ProcessosDocumentos pd where pd.Processo = :pProcesso))');
                 ParamByName('pProcesso').AsString := cProcesso.text;
                 Open;
                 //mAFRMM := FieldByName('Valor_Operacao').AsCurrency;
            end;
       
            // Importando os itens da nota fiscal.
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.lProcesso.Caption  := 'Importando os itens do arquivo XML...';
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := GradeItens.RowCount;
            Janela_Processamento.Show;

            mAliqICMS := 0;
            mQtdeItem := 1;
            mTotalInventario := 0;

            Try
                While mQtdeItem <= GradeItens.RowCount do begin
                      if Trim(GradeItens.Cells[01,mQtdeItem]) <> '' then begin
                         // Cadastrando novos produtos.
                         mAchou := false;
                         if Trim(GradeCadastro.Cells[02,mQtdeItem]) <> '' then begin
                            mAchou := Produtos.Locate('Codigo', GradeCadastro.Cells[02,mQtdeItem], [loCaseInsensitive]);
                         end else begin
                            mAchou := Produtos.Locate('Codigo_Fabricante', Strtoint(GradeCadastro.Cells[01,mQtdeItem]), [loCaseInsensitive]);
                         end;
                         if not mAchou then begin
                            tProdutos.Open;
                            Produtos.Append;
                                     ProdutosCodigo.Value               := tProdutos.FieldByName('Codigo').AsInteger + 1;
                                     ProdutosCodigo_Fabricante.AsString := GradeItens.Cells[01,mQtdeItem];
                                     ProdutosDescricao.Value            := GradeItens.Cells[02,mQtdeItem];
                                     ProdutosNCM.Value                  := GradeItens.Cells[04,mQtdeItem];
                                     ProdutosEstoque_Disponivel.Value   := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                     ProdutosDescricao_Reduzida.Value   := Copy(GradeItens.Cells[02,mQtdeItem],1,60);
                                     If Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then ProdutosAliquota_IPI.Value    := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                     If Trim(GradeItens.Cells[37,mQtdeItem]) <> '' then ProdutosAliquota_PIS.Value    := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                     If Trim(GradeItens.Cells[41,mQtdeItem]) <> '' then ProdutosAliquota_COFINS.Value := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                     If NCM.Locate('NCM', GradeItens.Cells[04,mQtdeItem], [loCaseInsensitive]) = True then ProdutosAliquota_II.Value := dmFiscal.NCMII.Value;
                            Produtos.Post;
                            tProdutos.Close;
                         end;

                         // Cadastrando novas NCM's.
                         If NCM.Locate('NCM', GradeItens.Cells[04,mQtdeItem], [loCaseInsensitive]) = False then begin
                            NCM.Append;
                                     NCMNCM.Value     := GradeItens.Cells[04,mQtdeItem];
                                     NCMProduto.Value := GradeItens.Cells[02,mQtdeItem];
                                     NCMUnidade.Value := GradeItens.Cells[07,mQtdeItem];
                                     If Trim(GradeItens.Cells[37,mQtdeItem]) <> '' then NCMPIS.Value    := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                     If Trim(GradeItens.Cells[41,mQtdeItem]) <> '' then NCMCOFINS.Value := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                     If Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then NCMIPI.Value    := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                     NCMII.Value              := 0;
                                     NCMDNF.Value             := false;
                                     NCMCodigoTrib_TabA.Value := '2';
                            NCM.Post;
                         End;

                         // Salvando os itens da nota fiscal.
                         NotasItens.Append;
                                    NotasItensNota.Value                 := StrtoInt(cnNF.Text);
                                    NotasItensItem.Value                 := mQtdeItem;
                                    NotasItensSequencia.Value            := mQtdeItem;
                                    NotasItensSequencia_SISCOMEX.Value   := strtoint(GradeItens.Cells[17, mQtdeitem]);
                                    NotasItensData.Value                 := StrtoDate(cdEmi.Text);
                                    NotasItensSaida_Entrada.Value        := NotasSaida_Entrada.Value;
                                    NotasItensProcesso.Value             := cProcesso.Text;
                                    NotasItensDi.Value                   := GradeItens.Cells[10, mQtdeItem];
                                    NotasItensCodigo_Mercadoria.Value    := ProdutosCodigo.Value;
                                    NotasItensCodigo_Fabricante.Value    := ProdutosCodigo_Fabricante.AsString;
                                    NotasItensDescricao_Mercadoria.Value := RemoveCaracter('<{'+ProdutosCodigo.AsString+'}>', '', ProdutosDescricao.Value);
                                    NotasItensAdicao.Value               := StrtoInt(GradeItens.Cells[16,mQtdeItem]);
                                    NotasItensNCM.Value                  := GradeItens.Cells[04,mQtdeItem];
                                    NotasItensUnidade_Medida.Value       := GradeItens.Cells[07,mQtdeItem];
                                    NotasItensCodigoTrib_TabA.Value      := Copy(cOrigem.Text,1,1);
                                    NotasItensCodigoTrib_TabB.Value      := GradeItens.Cells[20,mQtdeItem];
                                    NotasItensNatureza_Codigo.Value      := NotasNatureza_Codigo.Value;
                                    NotasItensQuantidade.Value           := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                    NotasItensDisponivel.Value           := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                    NotasItensValor_Unitario.Value       := StrtoFloat(GradeItens.Cells[09,mQtdeItem]);
                                    NotasItensValor_Total.Value          := StrtoFloat(GradeItens.Cells[47,mQtdeItem]);
                                    If Trim(GradeItens.Cells[24,mQtdeItem]) <> '' then NotasItensAliquota_ICMSOper.Value := StrtoFloat(GradeItens.Cells[24,mQtdeItem]);
                                    If Trim(GradeItens.Cells[23,mQtdeItem]) <> '' then NotasItensValor_BCICMSOper.Value  := StrtoFloat(GradeItens.Cells[23,mQtdeItem]);
                                    If Trim(GradeItens.Cells[25,mQtdeItem]) <> '' then NotasItensValor_ICMSOper.Value    := StrtoFloat(GradeItens.Cells[25,mQtdeItem]);
                                    If Trim(GradeItens.Cells[43,mQtdeItem]) <> '' then NotasItensValor_IsentasICMS.Value := StrtoFloat(GradeItens.Cells[43,mQtdeItem]);
                                    If Trim(GradeItens.Cells[44,mQtdeItem]) <> '' then NotasItensValor_OutrasICMS.Value  := StrtoFloat(GradeItens.Cells[44,mQtdeItem]);

                                    If Trim(GradeItens.Cells[48,mQtdeItem]) <> '' then NotasItensValor_BCICMSSub.Value   := StrtoFloat(GradeItens.Cells[48,mQtdeItem]);
                                    If Trim(GradeItens.Cells[49,mQtdeItem]) <> '' then NotasItensAliquota_ICMSSub.Value  := StrtoFloat(GradeItens.Cells[49,mQtdeItem]);
                                    If Trim(GradeItens.Cells[50,mQtdeItem]) <> '' then NotasItensValor_ICMSSub.Value     := StrtoFloat(GradeItens.Cells[50,mQtdeItem]);

                                    If Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then NotasItensAliquota_IPI.Value      := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                    If Trim(GradeItens.Cells[28,mQtdeItem]) <> '' then NotasItensValor_BCIPI.Value       := StrtoFloat(GradeItens.Cells[28,mQtdeItem]) / iif(NotasItensQuantidade.asfloat> 0, NotasItensQuantidade.asfloat, 1);
                                    If Trim(GradeItens.Cells[30,mQtdeItem]) <> '' then NotasItensTotal_IPI.Value         := StrtoFloat(GradeItens.Cells[30,mQtdeItem]);
                                    If NotasItensTotal_IPI.AsFloat          <> 0  then NotasItensValor_IPI.Value         := (NotasItensTotal_IPI.AsFloat / iif(NotasItensQuantidade.AsFloat > 0, NotasItensQuantidade.asfloat, 1));
                                    If Trim(GradeItens.Cells[46,mQtdeItem]) <> '' then NotasItensValor_OutrasIPI.Value   := StrtoFloat(GradeItens.Cells[46,mQtdeItem]);
                                    If Trim(GradeItens.Cells[45,mQtdeItem]) <> '' then NotasItensValor_IsentasIPI.Value  := StrtoFloat(GradeItens.Cells[45,mQtdeItem]);

                                    NotasItensPeso_Liquido.Value := 0;
                                    NotasItensPeso_Bruto.Value   := 0;
                                    If Trim(GradeItens.Cells[36,mQtdeItem]) <> '' then NotasItensValor_BCPIS.Value          := StrtoFloat(GradeItens.Cells[36,mQtdeItem]);
                                    If Trim(GradeItens.Cells[37,mQtdeItem]) <> '' then NotasItensAliquota_PIS.Value         := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                    If Trim(GradeItens.Cells[38,mQtdeItem]) <> '' then NotasItensValor_PIS.Value            := StrtoFloat(GradeItens.Cells[38,mQtdeItem]);
                                    If Trim(GradeItens.Cells[41,mQtdeItem]) <> '' then NotasItensAliquota_COFINS.Value      := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                    If Trim(GradeItens.Cells[42,mQtdeItem]) <> '' then NotasItensValor_COFINS.Value         := StrtoFloat(GradeItens.Cells[42,mQtdeItem]);

                                    NotasItensCSTIPI.Value                := GradeItens.Cells[27,mQtdeItem];
                                    NotasItensCSTPIS.Value                := GradeItens.Cells[35,mQtdeItem];
                                    NotasItensCSTCOFINS.Value             := GradeItens.Cells[39,mQtdeItem];
                                    NotasItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.Value;
                                    NotasItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.Value;
                                    NotasItensApuracao_PISCOFINS.Value    := TipoNotaApuracao_PISCOFINS.Value;
                                    NotasItensCancelada.Value             := NotasCancelada.Value;
                                    NotasItensNfe_Denegada.Value          := NotasNfe_Denegada.Value;
                                    NotasItensTipo_Nota.Value             := TipoNotaCodigo.Value;
                                    NotasItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;

                                    If Trim(GradeItens.Cells[53,mQtdeItem]) <> '' then NotasItensValor_BCICMSDest.Value     := StrtoFloat(GradeItens.Cells[53,mQtdeItem]);
                                    If Trim(GradeItens.Cells[55,mQtdeItem]) <> '' then NotasItensAliquota_ICMSDest.Value    := StrtoFloat(GradeItens.Cells[55,mQtdeItem]);
                                    If Trim(GradeItens.Cells[63,mQtdeItem]) <> '' then NotasItensValor_ICMSDest.Value       := StrtoFloat(GradeItens.Cells[63,mQtdeItem])+StrtoFloat(GradeItens.Cells[25, mQtdeItem]);
                                    If Trim(GradeItens.Cells[63,mQtdeItem]) <> '' then NotasItensDIFAL_Valor.Value          := StrtoFloat(GradeItens.Cells[63,mQtdeItem]);
                                    If Trim(GradeItens.Cells[62,mQtdeItem]) <> '' then NotasItensDIFAL_PercOrig.Value       := StrtoFloat(GradeItens.Cells[62,mQtdeItem]);
                                    If Trim(GradeItens.Cells[61,mQtdeItem]) <> '' then NotasItensDIFAL_ValorOrig.Value      := StrtoFloat(GradeItens.Cells[61,mQtdeItem]);
                                    If Trim(GradeItens.Cells[57,mQtdeItem]) <> '' then NotasItensDIFAL_PercDest.Value       := StrtoFloat(GradeItens.Cells[57,mQtdeItem]);

                                    If Trim(GradeItens.Cells[55,mQtdeItem]) <> '' then NotasItensDIFAL_ValorDest.Value      := StrtoFloat(GradeItens.Cells[55,mQtdeItem]);
                                    If Trim(GradeItens.Cells[53,mQtdeItem]) <> '' then NotasItensFCP_Aliquota.Value         := StrtoFloat(GradeItens.Cells[53,mQtdeItem]);
                                    If Trim(GradeItens.Cells[55,mQtdeItem]) <> '' then NotasItensFCP_ValorDest.Value        := StrtoFloat(GradeItens.Cells[55,mQtdeItem]);
                                    If Trim(GradeItens.Cells[53,mQtdeItem]) <> '' then NotasItensFCP_ICMSOrig.Value         := StrtoFloat(GradeItens.Cells[53,mQtdeItem]);
                                    If Trim(GradeItens.Cells[55,mQtdeItem]) <> '' then NotasItensFCP_ICMSDest.Value         := StrtoFloat(GradeItens.Cells[55,mQtdeItem]);

                                    If Trim(GradeItens.Cells[64,mQtdeItem]) <> '' then NotasItensValor_BCFCP.Value          := StrtoFloat(GradeItens.Cells[64,mQtdeItem]);
                                    If Trim(GradeItens.Cells[65,mQtdeItem]) <> '' then NotasItensValor_FCP.Value            := StrtoFloat(GradeItens.Cells[65,mQtdeItem]);
                                    If Trim(GradeItens.Cells[66,mQtdeItem]) <> '' then NotasItensValor_BCFCPST.Value        := StrtoFloat(GradeItens.Cells[66,mQtdeItem]);
                                    If Trim(GradeItens.Cells[67,mQtdeItem]) <> '' then NotasItensValor_FCPST.Value          := StrtoFloat(GradeItens.Cells[67,mQtdeItem]);

                                    If Trim(GradeItens.Cells[32,mQtdeItem]) <> '' then NotasItensValor_Despesa.Value        := StrtoFloat(GradeItens.Cells[32,mQtdeItem]) / iif(NotasItensQuantidade.asfloat > 0, NotasItensQuantidade.asfloat, 1);
                                    If Trim(GradeItens.Cells[33,mQtdeItem]) <> '' then NotasItensValor_II.Value             := StrtoFloat(GradeItens.Cells[33,mQtdeItem]);

                                    // CALCULO DO VALOR DO INVENTARIO PELA FORMULA DO TIPO DE NOTA.
                                    if TipoNotaSaida_Entrada.AsInteger = 0 then begin
                                       if Trim(TipoNotaCalculo_Inventario.AsString) <> '' then begin
                                          NotasItensValor_Inventario.Value := CalculaMacro('Calculo_Inventario');
                                       end;
                                    end;

                                    mTotalInventario := mTotalInventario + NotasItensValor_Inventario.Value;
                                    NotasItensNavio.Value := ControleNaviosOrdem.AsInteger;
                                    NotasItensPercentual_ICMSMono.Value    := StrtoFloat(GradeItens.Cells[68,mQtdeItem]);
                                    NotasItensValor_BCICMSMono.Value       := StrtoFloat(GradeItens.Cells[69,mQtdeItem]);
                                    NotasItensValor_ICMSMono.Value         := StrtoFloat(GradeItens.Cells[70,mQtdeItem]);
                                    NotasItensPercentual_ICMSMonoRet.Value := StrtoFloat(GradeItens.Cells[71,mQtdeItem]);
                                    NotasItensValor_BCICMSMonoRet.Value    := StrtoFloat(GradeItens.Cells[72,mQtdeItem]);
                                    NotasItensValor_ICMSMonoRet.Value      := StrtoFloat(GradeItens.Cells[73,mQtdeItem]);

                                    // Recalcula a marinha mercante "AFRMM", devido não existir o valor no XML da NFE.
                                    if (trim(cProcesso.text) <> '') and (ctpNF.text = 'ENTRADA') then begin
                                       if ttmp.fieldbyName('Valor_Operacao').AsCurrency > 0 then begin
                                          with tItemAdicao do begin
                                               sql.Clear;
                                               sql.Add('select Valor_SemAdValorem from Adicoes where DI = :pDI and Codigo_Mercadoria = :pCod and Sequencia_Siscomex = :pItem');
                                               parambyname('pDI').value   := NotasItensDI.AsString;
                                               parambyname('pCod').value  := NotasItensCodigo_Mercadoria.AsInteger;
                                               parambyname('pItem').value := strtoint(GradeItens.Cells[17, mQtdeitem]);
                                               open;
                                               if recordcount > 0 then begin
                                                  NotasItensValor_AFRMM.Value := (tTmp.FieldByName('Valor_Operacao').value / tFOB.FieldByName('FOB_Total').Value) * fieldbyname('Valor_SemAdValorem').value;
                                               end;
                                          end;
                                       end;
                                    end;
                         NotasItens.Post;

                         mAliqICMS := NotasItensAliquota_ICMSOper.Value;

                         // Adiciona o item a ficha de Estoque.
                         If (NotasItensMovimenta_Estoque.AsBoolean) and (cSituacao.ItemIndex <> 1) and (cSituacao.ItemIndex <> 2) then begin
                            Try
                                tEstoque.SQL.Clear;
                                tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                                tEstoque.SQL.Add('FROM   FichaEstoque');
                                tEstoque.Open;
                                mReg := tEstoque.FieldByName('Registro').AsInteger;

                                tEstoque.SQL.Clear;
                                tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
                                tEstoque.SQL.Add('FROM   FichaEstoque');
                                tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                                tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                                tEstoque.Open;
                                mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

                                tEstoque.SQL.Clear;
                                tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
                                tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
                                tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
                                tEstoque.SQL.Add('FROM   FichaEstoque');
                                tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                                tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                                tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                                tEstoque.Open;

                                mUnitSaldo  := 0;
                                mQtdeSaldo  := 0;
                                mTotalSaldo := 0;
                                If tEstoque.RecordCount > 0 then begin
                                   mUnitSaldo  := tEstoque.FieldByName('Unitario_Saldo').AsFloat;
                                   mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                                   mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
                                End;                           

                                FichaEstoque.SQL.Clear;
                                FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Codigo = :pCodigo AND Registro = :pRegistro');
                                FichaEstoque.ParamByName('pCodigo').AsInteger   := NotasItensCodigo_Mercadoria.AsInteger;
                                FichaEstoque.ParamByName('pRegistro').AsInteger := mReg;
                                FichaEstoque.Open;

                                FichaEstoque.Append;
                                             FichaEstoqueRegistro.Value  := mReg;
                                             FichaEstoqueItem.Value      := mOrdem;
                                             FichaEstoqueCodigo.Value    := NotasItensCodigo_Mercadoria.AsInteger;
                                             FichaEstoqueDescricao.Value := NotasItensDescricao_Mercadoria.AsString;
                                             FichaEstoqueUM.Value        := NotasItensUnidade_Medida.AsString;
                                             FichaEstoqueCFOP.Value      := dmfiscal.NotasNatureza_Codigo.AsString;

                                             Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                                  0: FichaEstoqueHistorico.Value := 'COMPRA - REVENDA';
                                                  1: FichaEstoqueHistorico.Value := 'COMPRA - CONSUMO';
                                                  2: FichaEstoqueHistorico.Value := 'DEVOLUÇÃO';
                                                  3: FichaEstoqueHistorico.Value := 'EXPORTAÇÃO';
                                                  4: FichaEstoqueHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                                  5: FichaEstoqueHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                                  6: FichaEstoqueHistorico.Value := 'COMPRA - IMOBILIZADO';
                                                  9: FichaEstoqueHistorico.Value := 'OUTRAS';
                                             End;
                                             Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                                  0: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  1: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  2: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  3: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  4: FichaEstoqueEstoque.Value := '1-ARMAZEM';
                                                  5: FichaEstoqueEstoque.Value := '2-TERCEIROS';
                                                  6: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  9: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             End;

                                             FichaEstoqueEmissor.Value := 'P';
                                             FichaEstoqueOrigem.Value  := 'NFP';
                                             FichaEstoqueNota.Value    := NotasItensNota.AsInteger;
                                             FichaEstoqueData.Value    := NotasItensData.Value;

                                             If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                                FichaEstoqueES.Value                  := 'E';
                                                FichaEstoqueDestinatario_Codigo.Value := NotasFornecedor_Codigo.AsInteger;
                                             end else begin
                                                FichaEstoqueES.Value := 'S';
                                                FichaEstoqueDestinatario_Codigo.Value := NotasCliente_Codigo.AsInteger;
                                             End;

                                             FichaEstoqueDestinatario_Nome.Value := Trim(NotasDestinatario_Nome.AsString);
                                             FichaEstoqueDestinatario_CNPJ.Value := NotasDestinatario_CNPJ_CPF.AsString;
                                             FichaEstoqueFinalidade.Value        := TipoNotaFinalidade_Mercadoria.AsInteger;
                         
                                             If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                                FichaEstoqueQtde_Entrada.Value     := NotasItensQuantidade.AsFloat;
                                                FichaEstoqueUnitario_Entrada.Value := NotasItensValor_Inventario.Value;
                                                FichaEstoqueTotal_Entrada.Value    := NotasItensQuantidade.AsFloat * NotasItensValor_Inventario.AsCurrency;
                                                FichaEstoqueQtde_Saida.Value       := 0;
                                                FichaEstoqueUnitario_Saida.Value   := 0;
                                                FichaEstoqueTotal_Saida.Value      := 0;
                                                FichaEstoqueQtde_Saldo.Value       := mQtdeSaldo  + NotasItensQuantidade.AsFloat;
                                                FichaEstoqueTotal_Saldo.Value      := mTotalSaldo + FichaEstoqueTotal_Entrada.AsCurrency;
                                                FichaEstoqueUnitario_Saldo.Value   := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsCurrency;
                                             end else begin
                                                FichaEstoqueQtde_Entrada.Value     := 0;
                                                FichaEstoqueUnitario_Entrada.Value := 0;
                                                FichaEstoqueTotal_Entrada.Value    := 0;
                                                FichaEstoqueQtde_Saida.Value       := NotasItensQuantidade.AsFloat;
                                                FichaEstoqueUnitario_Saida.Value   := mUnitSaldo;
                                                FichaEstoqueTotal_Saida.Value      := NotasItensQuantidade.AsFloat * mUnitSaldo;
                                                FichaEstoqueQtde_Saldo.Value       := mQtdeSaldo - NotasItensQuantidade.AsFloat;
                                                FichaEstoqueTotal_Saldo.Value      := mTotalSaldo - FichaEstoqueTotal_Saida.AsCurrency;
                                                If (FichaEstoqueTotal_Saldo.AsCurrency > 0) then
                                                   FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsFloat
                                                else
                                                   FichaEstoqueUnitario_Saldo.Value := 0;
                                             End;

                                             FichaEstoqueProcesso.Value := NotasItensProcesso.Value;
                                             If ProcessosDOC.Locate('Processo', NotasItensProcesso.AsString, [loCaseInsensitive]) then begin
                                                FichaEstoqueTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                                             End;
                                FichaEstoque.Post;
                            Except
                                LogDados(Dados.FichaEstoque, '('+Dados.PedidosNota.AsString+') Nota fiscal não adicionada na ficha de estoque', dsInsert);
                            End;
                         End;

                         // Adiciona o item a ficha de Inventario.
                         If (NotasItensMovimenta_Inventario.AsBoolean) and (cSituacao.ItemIndex <> 1) and (cSituacao.ItemIndex <> 2) then begin
                            Try
                                tEstoque.SQL.Clear;
                                tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                                tEstoque.SQL.Add('FROM   FichaInventario');
                                tEstoque.Open;
                                mReg := tEstoque.FieldByName('Registro').AsInteger;

                                tEstoque.SQL.Clear;
                                tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
                                tEstoque.SQL.Add('FROM   FichaInventario');
                                tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                                tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                                tEstoque.Open;
                                mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

                                tEstoque.SQL.Clear;
                                tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
                                tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
                                tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
                                tEstoque.SQL.Add('FROM   FichaInventario');
                                tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                                tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                                tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                                tEstoque.Open;

                                mUnitSaldo  := 0;
                                mQtdeSaldo  := 0;
                                mTotalSaldo := 0;
                                If tEstoque.RecordCount > 0 then begin
                                   mUnitSaldo  := tEstoque.FieldByName('Unitario_Saldo').AsFloat;
                                   mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                                   mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
                                End;                           

                                FichaInventario.SQL.Clear;
                                FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Codigo = :pCodigo AND Registro = :pRegistro');
                                FichaInventario.ParamByName('pCodigo').AsInteger   := NotasItensCodigo_Mercadoria.AsInteger;
                                FichaInventario.ParamByName('pRegistro').AsInteger := mReg;
                                FichaInventario.Open;

                                FichaInventario.Append;
                                             FichaInventarioRegistro.Value  := mReg;
                                             FichaInventarioItem.Value      := mOrdem;
                                             FichaInventarioCodigo.Value    := NotasItensCodigo_Mercadoria.AsInteger;
                                             FichaInventarioNCM.Value       := NotasItensNCM.Value;
                                             FichaInventarioDescricao.Value := NotasItensDescricao_Mercadoria.AsString;
                                             FichaInventarioUM.Value        := NotasItensUnidade_Medida.AsString;
                                             FichaInventarioCFOP.Value      := dmfiscal.NotasNatureza_Codigo.AsString;

                                             Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                                  0: FichaInventarioHistorico.Value := 'COMPRA - REVENDA';
                                                  1: FichaInventarioHistorico.Value := 'COMPRA - CONSUMO';
                                                  2: FichaInventarioHistorico.Value := 'DEVOLUÇÃO';
                                                  3: FichaInventarioHistorico.Value := 'EXPORTAÇÃO';
                                                  4: FichaInventarioHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                                  5: FichaInventarioHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                                  6: FichaInventarioHistorico.Value := 'COMPRA - IMOBILIZADO';
                                                  9: FichaInventarioHistorico.Value := 'OUTRAS';
                                             End;

                                             Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                                  0: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  1: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  2: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  3: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  4: FichaInventarioEstoque.Value := '1-ARMAZEM';
                                                  5: FichaInventarioEstoque.Value := '2-TERCEIROS';
                                                  6: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  9: FichaInventarioEstoque.Value := '0-EMPRESA';
                                             End;

                                             FichaInventarioEmissor.Value := 'P';
                                             FichaInventarioOrigem.Value  := 'NFP';
                                             FichaInventarioNota.Value    := NotasItensNota.AsInteger;
                                             FichaInventarioData.Value    := NotasItensData.Value;

                                             If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                                FichaInventarioES.Value                  := 'E';
                                                FichaInventarioDestinatario_Codigo.Value := NotasFornecedor_Codigo.AsInteger;
                                             end else begin
                                                FichaInventarioES.Value := 'S';
                                                FichaInventarioDestinatario_Codigo.Value := NotasCliente_Codigo.AsInteger;
                                             End;

                                             FichaInventarioDestinatario_Nome.Value := Trim(NotasDestinatario_Nome.AsString);
                                             FichaInventarioDestinatario_CNPJ.Value := NotasDestinatario_CNPJ_CPF.AsString;
                                             FichaInventarioFinalidade.Value        := TipoNotaFinalidade_Mercadoria.AsInteger;

                                             If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                                FichaInventarioQtde_Entrada.Value     := NotasItensQuantidade.AsFloat;
                                                FichaInventarioUnitario_Entrada.Value := NotasItensValor_Inventario.Value;
                                                FichaInventarioTotal_Entrada.Value    := NotasItensQuantidade.AsFloat * NotasItensValor_Inventario.AsCurrency;
                                                FichaInventarioQtde_Saida.Value       := 0;
                                                FichaInventarioUnitario_Saida.Value   := 0;
                                                FichaInventarioTotal_Saida.Value      := 0;
                                                FichaInventarioQtde_Saldo.Value       := mQtdeSaldo  + NotasItensQuantidade.AsFloat;
                                                FichaInventarioTotal_Saldo.Value      := mTotalSaldo + FichaInventarioTotal_Entrada.AsCurrency;
                                                FichaInventarioUnitario_Saldo.Value   := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsCurrency;
                                             end else begin
                                                FichaInventarioQtde_Entrada.Value     := 0;
                                                FichaInventarioUnitario_Entrada.Value := 0;
                                                FichaInventarioTotal_Entrada.Value    := 0;
                                                FichaInventarioQtde_Saida.Value       := NotasItensQuantidade.AsFloat;
                                                FichaInventarioUnitario_Saida.Value   := mUnitSaldo;
                                                FichaInventarioTotal_Saida.Value      := NotasItensQuantidade.AsFloat * mUnitSaldo;
                                                FichaInventarioQtde_Saldo.Value       := mQtdeSaldo - NotasItensQuantidade.AsFloat;
                                                FichaInventarioTotal_Saldo.Value      := mTotalSaldo - FichaInventarioTotal_Saida.AsCurrency;
                                                If (FichaInventarioTotal_Saldo.AsCurrency > 0) then
                                                   FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsFloat
                                                else
                                                   FichaInventarioUnitario_Saldo.Value := 0;
                                             End;

                                             FichaInventarioProcesso.Value := NotasItensProcesso.Value;
                                             If ProcessosDOC.Locate('Processo', NotasItensProcesso.AsString, [loCaseInsensitive]) then begin
                                                FichaInventarioTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                                             End;
                                FichaInventario.Post;
                            Except
                                LogDados(Dados.FichaInventario, '('+Dados.PedidosNota.AsString+') Nota fiscal não adicionada na ficha de inventario', dsInsert);
                            End;
                         End;
                      End;

                      Inc(mQtdeItem);
                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                End;

                Notas.Edit;
                      NotasAliquota_ICMSOper.Value := mAliqICMS;
                      NotasValor_Inventario.Value  := mTotalInventario;
                Notas.Post;
            //Except
            Except on E:Exception do begin
                    // Em caso de alguma erro nos itens, deleta a nota e seus itens.
                    Inc(mErros);
                    mNaoImp := mNaoImp + cChave.Text + #13+#13+E.Message;

                    Notas.SQL.Clear;
                    Notas.SQL.Add('DELETE FROM NotasFiscais WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
                    Notas.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                    Notas.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                    Notas.Execute;
                    Notas.SQL.Clear;
                    Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
                    Notas.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                    Notas.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                    Notas.Open;

                    // DELETA OS ITENS
                    NotasItens.SQL.Clear;
                    NotasItens.SQL.Add('DELETE FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
                    NotasItens.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                    NotasItens.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                    NotasItens.Execute;
                    NotasItens.SQL.Clear;
                    NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
                    NotasItens.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
                    NotasItens.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
                    NotasItens.Open;
                    Notas.Edit;
                end;
            end;

            Janela_Processamento.Close;
       End;
end;

procedure TUtilitarios_Importar_NFe_Propria.cNotasClick(Sender: TObject);
var
   mXML : TXMLDocument;

   mNodeNFe,
   mNodeInfNFe,
   mNodeIde,
   mNodeEmit,
   mNodeEmitEnd,
   mNodeDest,
   mNodeDestEnd,
   mNodedet,
   mNodeTransp,
   mNodeTransporta,
   mNodeTranspVol,
   mNodeProtNFe,
   mNodeProtNFeInf,
   mNodedetProd,
   mNodedetProdDI,
   mNodedetProdDIAdi,
   mNodedetImposto,
   mNodedetImpostoICMS,
   mNodedetImpostoICMSDIF,
   mNodedetImpostoICMSCST,
   mNodeDetImpostoIPI,
   mNodeDetImpostoIPITrib,
   mNodeDetImpostoTributos,
   mNodeDetImpostoII,
   mNodeDetImpostoPIS,
   mNodeDetImpostoPISAliq,
   mNodeDetImpostoCOF,
   mNodeDetImpostoCOFAliq,
   mNodeTotal,
   mNodeTotalICMSTot,
   mNodeCobr,
   mNodeFat,
   mNodeDup,
   mNodeInfAdic : IXMLNode;

   mdEmi,
   mdSaiEnt,
   mdDI,
   mdDesemb : WideString;

   mtpEmis     : Array[1..5] of String;
   mfinNFe     : Array[1..3] of String;
   mprocEmi    : Array[0..4] of String;
   mOrigemMerc : Array[0..2] of String;
   mModalidade : Array[0..3] of String;

   mChave,
   mCodigoCSTICMS: String;

   mApuracao1,
   mApuracao2,
   mBCICMS,
   mValorTotal : Real;

   mEstado,
   mMunicipio,
   mAmbiente,
   i,
   mItens : Integer;
begin
       try
           // Típos de emissao da NF-e.
           mtpEmis[1] := 'Normal – emissão normal';
           mtpEmis[2] := 'Contingência FS – emissão em contingência com impressão do DANFE em Formulário de Segurança';
           mtpEmis[3] := 'Contingência SCAN – emissão em contingência no Sistema de Contingência do Ambiente Nacional – SCAN';
           mtpEmis[4] := 'Contingência DPEC - emissão em contingência com envio da Declaração Prévia de Emissão em Contingência – DPEC';
           mtpEmis[5] := 'Contingência FS-DA - emissão em contingência c/impressão DANFE Formulário Seg.p/Impressão Doc.Aux.de Doc.Fiscal Eletrônico (FS-DA)';

           // Finalidades de emissão.
           mfinNFe[1] := 'NF-e Normal';
           mfinNFe[2] := 'NF-e Complementar';
           mfinNFe[3] := 'NF-e de Ajuste';

           // Processo de emissão.
           mprocEmi[0] := 'Emissão de NF-e com aplicativo do contribuinte.';
           mprocEmi[1] := 'Emissão de NF-e avulsa pelo Fisco.';
           mprocEmi[2] := 'Emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco.';
           mprocEmi[3] := 'Emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.';

           // Origem da mercadoria:
           mOrigemMerc[0] := 'Nacional';
           mOrigemMerc[1] := 'Estrangeira – Importação direta';
           mOrigemMerc[2] := 'Estrangeira – Adquirida no mercado interno';

           // Modalidade de determinação da BC do ICMS.
           mModalidade[0] := 'Margem Valor Agregado (%)';
           mModalidade[1] := 'Pauta (Valor)';
           mModalidade[2] := 'Preço Tabelado Máx. (valor)';
           mModalidade[3] := 'Valor da operação.';

           mXML := TXMLDocument.Create(Self);
           mXML.LoadFromFile(cNotas.Items[cNotas.ItemIndex]);
           mXML.Active := True;

           // Limpando o grid de itens.
           for i := 0 to Gradeitens.RowCount -1 do begin
               Gradeitens.Rows[I].Clear;
           end;

           // Posiciona nos nós.
           try
               mNodeNFe          := mXML.DocumentElement.ChildNodes.FindNode('NFe');
               mNodeInfNFe       := mNodeNfe.ChildNodes.FindNode('infNFe');
               mNodeIde          := mNodeinfNFe.ChildNodes.FindNode('ide');
               mNodeEmit         := mNodeinfNFe.ChildNodes.FindNode('emit');
               mNodeCobr         := mNodeinfNfe.ChildNodes.FindNode('cobr');
               mNodeEmitEnd      := mNodeEmit.ChildNodes.FindNode('enderEmit');
               mNodeDest         := mNodeinfNFe.ChildNodes.FindNode('dest');
               mNodeDestEnd      := mNodeDest.ChildNodes.FindNode('enderDest');
               mNodeDet          := mNodeinfNFe.ChildNodes.FindNode('det');
               mNodeTransp       := mNodeinfNFe.ChildNodes.FindNode('transp');
               mNodeTransporta   := mNodeTransp.ChildNodes.FindNode('transporta');
               mNodeTranspVol    := mNodeTransp.ChildNodes.FindNode('vol');
               mNodeDetProd      := mNodeDet.ChildNodes.FindNode('prod');
               mNodeTotal        := mNodeinfNFe.ChildNodes.FindNode('total');
               mNodeTotalICMSTot := mNodeTotal.ChildNodes.FindNode('ICMSTot');
               mNodeProtNFe      := mXML.DocumentElement.ChildNodes.FindNode('protNFe');
               mNodeProtNFeInf   := mNodeProtNFe.ChildNodes.FindNode('infProt');
               mNodeInfAdic      := mNodeinfNFe.ChildNodes.FindNode('infAdic');
               mChave            := mNodeInfNFe.AttributeNodes.Nodes[1].Text;
               cProtocolo.Text   := mNodeProtNFeInf.ChildNodes.FindNode('nProt').Text;
               cChave.Text       := mNodeProtNFeInf.ChildNodes.FindNode('chNFe').Text;
               mEstado           := mNodeIde.ChildNodes['cUF'].NodeValue;
           except
               mNodeInfNFe       := mXML.DocumentElement.ChildNodes.FindNode('infNFe');
               mNodeIde          := mNodeinfNFe.ChildNodes.FindNode('ide');
               mNodeEmit         := mNodeinfNFe.ChildNodes.FindNode('emit');
               mNodeCobr         := mNodeinfNfe.ChildNodes.FindNode('cobr');
               mNodeEmitEnd      := mNodeEmit.ChildNodes.FindNode('enderEmit');
               mNodeDest         := mNodeinfNFe.ChildNodes.FindNode('dest');
               mNodeDestEnd      := mNodeDest.ChildNodes.FindNode('enderDest');
               mNodeDet          := mNodeinfNFe.ChildNodes.FindNode('det');
               mNodeTransp       := mNodeinfNFe.ChildNodes.FindNode('transp');
               mNodeTransporta   := mNodeTransp.ChildNodes.FindNode('transporta');
               mNodeTranspVol    := mNodeTransp.ChildNodes.FindNode('vol');
               mNodeDetProd      := mNodeDet.ChildNodes.FindNode('prod');
               mNodeTotal        := mNodeinfNFe.ChildNodes.FindNode('total');
               mNodeTotalICMSTot := mNodeTotal.ChildNodes.FindNode('ICMSTot');
               mNodeInfAdic      := mNodeinfNFe.ChildNodes.FindNode('infAdic');
               mChave            := mNodeInfNFe.AttributeNodes.Nodes[1].Text;
               cChave.Text       := ApenasNumeros(mChave);
               mEstado           := mNodeIde.ChildNodes['cUF'].NodeValue;
           end;

           Dados.Estados.Locate('Numero', mEstado, [loCaseInsensitive]);

           Dados.TipoNota.SQL.Clear;
           If mNodeIde.ChildNodes['tpNF'].NodeValue = 0 then begin
              ctpNF.Text := 'ENTRADA';
              Dados.TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Saida_Entrada = 0 ORDER BY Descricao');
           end else begin
              ctpNF.Text := 'SAÍDA';
              Dados.TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Saida_Entrada = 1 ORDER BY Descricao');
           End;

           Dados.TipoNota.Open;

           ccNF.Text     := mNodeIde.ChildNodes['cNF'].text;
           cnNF.Text     := mNodeIde.ChildNodes['nNF'].text;
           ccUF.Text     := Dados.EstadosCodigo.Value;
           cNatOp.Text   := mNodeIde.ChildNodes['natOp'].text;
           If mNodeIde.ChildNodes.FindNode('dEmi') <> nil then
              mdEmi := mNodeIde.ChildNodes['dEmi'].text
           else
              mdEmi := mNodeIde.ChildNodes['dhEmi'].text;

           cdEmi.Text    := Copy(mdEmi, 9,2)+'/'+Copy(mdEmi, 6,2)+'/'+Copy(mdEmi, 1, 4);
           mdSaiEnt      := mNodeIde.ChildNodes['dSaiEnt'].text;
           cdSaiEnt.Text := Copy(mdSaiEnt, 9,2)+'/'+Copy(mdSaiEnt, 6,2)+'/'+Copy(mdSaiEnt, 1, 4);
           cMod.Text     := mNodeIde.ChildNodes['mod'].text;
           cSerie.Text   := mNodeIde.ChildNodes['serie'].text;
           ccMunFG.Text  := mNodeIde.ChildNodes['cMunFG'].text;
           mMunicipio    := mNodeIde.ChildNodes['cMunFG'].NodeValue;

           Dados.Municipios.Locate('Codigo; Estado', VarArrayOf([mMunicipio,mEstado]), [loCaseInsensitive]);
           ccMunFGNome.Text := Dados.MunicipiosNome.AsString;
           ctpEmis.Text     := mNodeIde.ChildNodes['tpEmis'].Text;
           ctpEmisDesc.Text := mtpEmis[strtoInt(ctpEmis.Text)];
           mAmbiente        := mNodeIde.ChildNodes['tpAmb'].NodeValue;

           If mAmbiente = 1 then
              ctpAmb.Text := 'PRODUÇÃO'
           else begin
              ctpAmb.Text := 'HOMOLOGAÇÃO';
              ShowMessage('Atenção!'+#13+#13+'A nota fiscal selecionada foi emitida em modo de <HOMOLOGAÇÃO> sem valor fiscal.'+#13+#13+'A nota fiscal não será importada.');
           End;

           cfinNFe.Text      := mNodeIde.ChildNodes['finNFe'].Text;
           cfinNFeDesc.Text  := mfinNFe[strtoInt(cfinNFe.Text)];
           cprocEmi.Text     := mNodeIde.ChildNodes['procEmi'].Text;
           cprocEmiDesc.Text := mprocEmi[strtoInt(cprocEmi.Text)];
           cverProc.Text     := mNodeIde.ChildNodes['verProc'].Text;

           // Dados do emitente.
           cCNPJ.Text    := mNodeEmit.ChildNodes['CNPJ'].Text;
           cxNome.Text   := mNodeEmit.ChildNodes['xNome'].Text;
           cxFant.Text   := mNodeEmit.ChildNodes['xFant'].Text;
           cIE.Text      := mNodeEmit.ChildNodes['IE'].Text;
           cxLgr.Text    := mNodeEmitEnd.ChildNodes['xLgr'].Text;
           cxLgr.Text    := mNodeEmitEnd.ChildNodes['xLgr'].Text;
           cCpl.Text     := mNodeEmitEnd.ChildNodes['xCpl'].Text;
           cNro.Text     := mNodeEmitEnd.ChildNodes['nro'].Text;
           cxBairro.Text := mNodeEmitEnd.ChildNodes['xBairro'].Text;
           cMun.Text     := mNodeEmitEnd.ChildNodes['cMun'].Text;
           cxMun.Text    := mNodeEmitEnd.ChildNodes['xMun'].Text;
           cUF.Text      := mNodeEmitEnd.ChildNodes['UF'].Text;
           cCEP.Text     := mNodeEmitEnd.ChildNodes['CEP'].Text;
           cPais.Text    := mNodeEmitEnd.ChildNodes['cPais'].Text;
           cxPais.Text   := mNodeEmitEnd.ChildNodes['xPais'].Text;

           // Dados do destinatario.
           If mNodeDest.ChildNodes.FindNode('CNPJ') <> nil then begin
              cDestCNPJ.Text := mNodeDest.ChildNodes['CNPJ'].Text;
           End;
           If mNodeDest.ChildNodes.FindNode('CPF') <> nil then begin
              cDestCPF.Text := mNodeDest.ChildNodes['CPF'].Text;
           End;

           cDestxNome.Text   := mNodeDest.ChildNodes['xNome'].Text;
           cDestIE.Text      := mNodeDest.ChildNodes['IE'].Text;
           cDestxLgr.Text    := mNodeDestEnd.ChildNodes['xLgr'].Text;
           cDestNro.Text     := mNodeDestEnd.ChildNodes['nro'].Text;
           cDestxBairro.Text := mNodeDestEnd.ChildNodes['xBairro'].Text;
           cDestCEP.Text     := mNodeDestEnd.ChildNodes['CEP'].Text;
           cDestcMun.Text    := mNodeDestEnd.ChildNodes['cMun'].Text;
           cDestxMun.Text    := mNodeDestEnd.ChildNodes['xMun'].Text;
           cDestUF.Text      := mNodeDestEnd.ChildNodes['UF'].Text;
           cDestcPais.Text   := mNodeDestEnd.ChildNodes['cPais'].Text;
           cDestxPais.Text   := mNodeDestEnd.ChildNodes['xPais'].Text;

           If ctpNF.Text = 'ENTRADA' then begin
              If Dados.Fornecedores.Locate('Nome', mNodeDest.ChildNodes['xNome'].Text, [loCaseInsensitive] ) = True then begin
                 cCodigo.Text            := Dados.FornecedoresCodigo.AsString;
                 lFornecedor.Caption     := 'Fornecedor já cadastrado.';
                 cRamoAtividade.Enabled  := False;
                 cRamoAtividade.KeyValue := Dados.FornecedoresRamo_Atividade.AsInteger;
                 cTipoProduto.KeyValue   := Dados.FornecedoresTipo_Produto.Value;
                 cTipoProduto.Enabled    := False;
              end else begin
                 cCodigo.Clear;
                 lFornecedor.Caption     := 'Fornecedor Novo.';
                 cRamoAtividade.Enabled  := True;
                 cRamoAtividade.KeyValue := -1;
                 cTipoProduto.KeyValue   := 0;
                 cTipoProduto.Enabled    := True;
              End;
           end else begin
              If (Trim(cDestCNPJ.Text) <> '') and (Dados.Clientes.Locate('CNPJ', cDestCNPJ.Text, [loCaseInsensitive] ) = True) then begin
                 cCodigo.Text            := Dados.ClientesCodigo.AsString;
                 lFornecedor.Caption     := 'Clientes já cadastrado.';
                 cRamoAtividade.Enabled  := False;
                 cRamoAtividade.KeyValue := Dados.FornecedoresRamo_Atividade.AsInteger;
                 cTipoProduto.KeyValue   := Dados.FornecedoresTipo_Produto.Value;
                 cTipoProduto.Enabled    := False;
              end else begin
                 If (Trim(cDestCPF.Text) <> '') and (Dados.Clientes.Locate('CPF', cDestCPF.Text, [loCaseInsensitive] ) = True) then begin
                    cCodigo.Text            := Dados.ClientesCodigo.AsString;
                    lFornecedor.Caption     := 'Clientes já cadastrado.';
                    cRamoAtividade.Enabled  := False;
                    cRamoAtividade.KeyValue := Dados.FornecedoresRamo_Atividade.AsInteger;
                    cTipoProduto.KeyValue   := Dados.FornecedoresTipo_Produto.Value;
                    cTipoProduto.Enabled    := False;
                 end else begin
                    cCodigo.Clear;
                    lFornecedor.Caption     := 'Cliente Novo.';
                    cRamoAtividade.Enabled  := True;
                    cRamoAtividade.KeyValue := -1;
                    cTipoProduto.KeyValue   := 0;
                    cTipoProduto.Enabled    := True;
                 End;
              End;
           End;

           // Dados do Transportador.
           cModalidadeFrete.ItemIndex := StrtoInt(mNodeTransp.ChildNodes['modFrete'].Text);
           If mNodeTransp.ChildNodes.FindNode('transporta') <> nil then begin
              cTransCNPJ.Text            := mNodeTransporta.ChildNodes['CNPJ'].Text;
              cTransNome.Text            := mNodeTransporta.ChildNodes['xNome'].Text;
              cTransIE.Text              := mNodeTransporta.ChildNodes['IE'].Text;
              cTransRua.Text             := mNodeTransporta.ChildNodes['xEnder'].Text;
              cTransMunicipioCod.Text    := mNodeTransporta.ChildNodes['cMun'].Text;
              cTransUF.Text              := mNodeTransporta.ChildNodes['UF'].Text;
           End;

           lTransportador.Caption := 'Não informado.';
           if Trim(cTransCNPJ.Text) <> '' then begin
              if Dados.Fornecedores.Locate('CNPJ', cTransCNPJ.Text, [loCaseInsensitive]) then begin
                 cTransCodigo.Text      := Dados.FornecedoresCodigo.AsString;
                 lTransportador.Caption := 'Transportador já cadastrado.';
              end else begin
                 cTransCodigo.Clear;
                 lTransportador.Caption := 'Transportador Novo.';
              end;
           end;

           If mNodeinfNFe.ChildNodes.FindNode('transp').ChildNodes.FindNode('vol') <> nil then begin
              cPesoLiquido.Text := RemoveCaracter('.', ',', mNodeTranspVol.ChildNodes['pesoL'].Text);
              cPesoBruto.Text   := RemoveCaracter('.', ',', mNodeTranspVol.ChildNodes['pesoB'].Text);
              Try
                 cQtdeTotal.Value  := StrtoInt(mNodeTranspVol.ChildNodes['qVol'].Text);
              Except
                 cQtdeTotal.Value  := 0;
              End;
              cEspecie.Text := mNodeTranspVol.ChildNodes['esp'].Text;
           End;

           // Informações complementares.
           cInfCpl.Clear;
           If mNodeinfNFe.ChildNodes.FindNode('infAdic') <> nil then begin
              If mNodeinfAdic.ChildNodes.FindNode('infCpl') <> nil then begin
                 cInfCpl.Lines.Add(mNodeinfAdic.ChildNodes['infCpl'].Text);
              End;
           End;

           // Pegando a quantidade de itens no XML.
           mNodeDet.ChildNodes.First;
           mItens := 0;
           Repeat
                 inc(mItens);
                 mNodeDet := mNodeDet.NextSibling;
           Until mNodeDet = nil;
           mNodeDet := mNodeinfNFe.ChildNodes.FindNode('det');

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.lProcesso.Caption  := 'Lendo os itens do arquivo XML...';
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := mItens;
           Janela_Processamento.Show;

           // Dados do cadastro.
           With GradeCadastro do begin
                RowCount     := 2;
                Cells[00,0]  := 'Item';
                ColWidths[0] := 30;
                Cells[01,0]  := 'Cód.Fornecedor';
                ColWidths[1] := 100;
                Cells[02,0]  := 'Código Cadastro';
                ColWidths[2] := 100;
                Cells[03,0]  := 'CFOP';
                ColWidths[3] := 40;
                Cells[04,0]  := 'Descrição';
                ColWidths[4] := 440;
           end;

           // Dados do item.
           With GradeItens do begin
                RowCount  := 2;
                FixedRows := 1;
                ColCount  := 74;

                Cells[00,0] := 'Item';
                GradeItens.ColWidths[0] := 30;
                Cells[01,0] := 'Código';
                GradeItens.ColWidths[1] := 120;
                Cells[02,0] := 'Descrição';
                GradeItens.ColWidths[2] := 400;

                Cells[03,0] := 'EAN';
                Cells[04,0] := 'NCM';
                Cells[05,0] := 'Genero';
                Cells[06,0] := 'CFOP';
                Cells[07,0] := 'Unidade';
                Cells[08,0] := 'Quantidade';
                Cells[09,0] := 'Vlr.Unitário';
                Cells[10,0] := 'Nº DI';
                Cells[11,0] := 'Data DI';
                Cells[12,0] := 'Loc.Des.';
                Cells[13,0] := 'UF Des.';
                Cells[14,0] := 'Data Des.';
                Cells[15,0] := 'Exportador';
                Cells[16,0] := 'Adição';
                Cells[17,0] := 'Seq Ad.';
                Cells[18,0] := 'Fabric.';

                Cells[19,0] := 'Origem';
                Cells[20,0] := 'CST ICMS';
                Cells[21,0] := 'Mod.BC ICMS';
                Cells[22,0] := 'Red.BC ICMS';
                Cells[23,0] := 'Vlr.BC ICMS';
                Cells[24,0] := 'Aliq.ICMS';
                Cells[25,0] := 'Vlr ICMS';

                Cells[26,0] := 'Enquad.IPI';
                Cells[27,0] := 'CST IPI';
                Cells[28,0] := 'BC IPI';
                Cells[29,0] := 'Aliq.IPI';
                Cells[30,0] := 'Vlr.IPI';

                Cells[31,0] := 'BC II';
                Cells[32,0] := 'Vlr Desp.';
                Cells[33,0] := 'Vlr.II';
                Cells[34,0] := 'Vlr.IOF';

                Cells[35,0] := 'CST PIS';
                Cells[36,0] := 'BC PIS';
                Cells[37,0] := 'Aliq.PIS';
                Cells[38,0] := 'Vlr.PIS';

                Cells[39,0] := 'CST COFINS';
                Cells[40,0] := 'BC COFINS';
                Cells[41,0] := 'Aliq.COFINS';
                Cells[42,0] := 'Vlr.COFINS';

                Cells[43,0] := 'Isentas ICMS';
                Cells[44,0] := 'Outras ICMS';
                Cells[45,0] := 'Isentas IPI';
                Cells[46,0] := 'Outras IPI';
                Cells[47,0] := 'Total Item';

                Cells[48,0] := 'BC ICMS ST';
                Cells[49,0] := 'Aliq.ICMS ST';
                Cells[50,0] := 'Vlr ICMS ST';

                Cells[51,0] := 'Total Trib.';
                Cells[52,0] := 'Vlr.Desconto';

                Cells[53,0] := 'BC ICMS Dest';
                Cells[54,0] := '% FCP Dest';
                Cells[55,0] := '% ICMS Dest';
                Cells[56,0] := '% ICMS Inter';
                Cells[57,0] := '% ICMS Inter.Part';
                Cells[58,0] := 'Vlr.FCP Dest';
                Cells[59,0] := 'Vlr.ICMS Dest';
                Cells[60,0] := 'Vlr.ICMS Rem';
                Cells[61,0] := 'DIFAL Valor';
                Cells[62,0] := '% DIFAL Origem';
                Cells[63,0] := 'Vlr DIFAL Origem';

                Cells[64,0] := 'Vlr.BC FCP';
                Cells[65,0] := 'Vlr.FCP';
                Cells[66,0] := 'Vlr.BC FCP ST';
                Cells[67,0] := 'Vlr.FCP ST';

                Cells[68,0] := '% ICMS Mono';
                Cells[69,0] := 'BC ICMS Mono';
                Cells[70,0] := 'Vlr.ICMS Mono';
                Cells[71,0] := '% ICMS Mono Ret';
                Cells[72,0] := 'BC ICMS Mono Ret';
                Cells[73,0] := 'Vlr.ICMS Mono Ret';

                ColWidths[53] := 100;
                ColWidths[54] := 100;
                ColWidths[55] := 100;
                ColWidths[56] := 100;
                ColWidths[57] := 100;
                ColWidths[58] := 100;
                ColWidths[59] := 100;
                ColWidths[60] := 100;
                ColWidths[61] := 100;
                ColWidths[62] := 100;
                ColWidths[63] := 100;
                ColWidths[64] := 100;
                ColWidths[65] := 100;
                ColWidths[66] := 100;
                ColWidths[67] := 100;
                ColWidths[68] := 100;
                ColWidths[69] := 100;
                ColWidths[70] := 100;
                ColWidths[71] := 100;
                ColWidths[72] := 100;
                ColWidths[73] := 100;

                mNodeDet.ChildNodes.First;

                cBCIPI.Value      := 0;
                cBCPIS.value      := 0;
                cOutrasICMS.Value := 0;
                cOutrasIPI.Value  := 0;

                tProcuraProdutos.SQL.Clear;
                tProcuraProdutos.SQL.Add('SELECT * FROM Produtos WHERE(ISNULL(Codigo_Fabricante,'''') <> '''')');
                tProcuraProdutos.Open;

                Repeat
                      mNodeDetProd := mNodeDet.ChildNodes.FindNode('prod');

                      If mNodeDetProd <> nil then begin
                         If mNodeDet.ChildNodes.FindNode('prod').ChildNodes.FindNode('DI') <> nil then begin
                            mNodeDetProdDI    := mNodeDetProd.ChildNodes.FindNode('DI');
                            mNodeDetProdDIAdi := mNodeDetProdDI.ChildNodes.FindNode('adi');
                         End;
                         mNodeDetImposto        := mNodeDet.ChildNodes.FindNode('imposto');
                         mNodeDetImpostoICMS    := mNodeDetImposto.ChildNodes.FindNode('ICMS');
                         mNodeDetImpostoICMSDIF := mNodeDetImposto.ChildNodes.FindNode('ICMSUFDest');
                         mNodeDetImpostoIPI     := mNodeDetImposto.ChildNodes.FindNode('IPI');
                         mNodeDetImpostoTributos:= mNodeDetImposto.ChildNodes.FindNode('vTotTrib');

                         If mNodeDetImposto.ChildNodes.FindNode('IPI') <> nil then begin
                            If mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib') <> nil then begin
                               mNodeDetImpostoIPITrib := mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib');
                            End;
                         End;

                         mNodeDetImpostoII  := mNodeDetImposto.ChildNodes.FindNode('II');

                         mNodeDetImpostoPIS := mNodeDetImposto.ChildNodes.FindNode('PIS');
                         If mNodeDetImpostoPIS.ChildNodes.FindNode('PISAliq') <> nil then
                            mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISAliq');
                         If mNodeDetImpostoPIS.ChildNodes.FindNode('PISOutr') <> nil then
                            mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISOutr');
                         If mNodeDetImpostoPIS.ChildNodes.FindNode('PISQtde') <> nil then
                            mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISQtde');

                         mNodeDetImpostoCOF := mNodeDetImposto.ChildNodes.FindNode('COFINS');
                         If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSAliq') <> nil then
                            mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSAliq');
                         If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSOutr') <> nil then
                            mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSOutr');
                         If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSQtde') <> nil then
                            mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSQtde');

                         // Procurando o campo de ICMS.
                         Dados.CSTTabelaB.Open;
                         Dados.CSTTabelaB.First;
                         While not Dados.CSTTabelaB.Eof do begin
                               mCodigoCSTICMS := 'ICMS'+Trim(Dados.CSTTabelaBCodigo.AsString);
                               If mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS) <> nil then begin
                                  mNodeDetImpostoICMSCST := mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS);
                                  Break;
                               End;
                               Dados.CSTTabelaB.Next
                         End;

                         // Grade Cadastros.
                         GradeCadastro.Cells[ 0, GradeCadastro.RowCount-1] := PoeZero(4,RowCount-1);
                         GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1] := mNodeDetProd.ChildNodes['cProd'].Text;
                         GradeCadastro.Cells[ 4, GradeCadastro.RowCount-1] := mNodeDetProd.ChildNodes['xProd'].Text;

                         // Verifica se o codigo do Fabricante existe para vincular.
                         if cCodNota.Checked then begin
                            if Dados.Produtos.Locate('Codigo_Fabricante', GradeCadastro.Cells[1, GradeCadastro.RowCount-1], [loCaseInsensitive]) then begin
                               GradeCadastro.Cells[ 2, GradeCadastro.RowCount-1] := Dados.Produtos.FieldByName('Codigo').AsString;
                            end;
                         end else begin
                              GradeCadastro.Cells[ 2, GradeCadastro.RowCount-1] := GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1] 
                         end;

                         If Trim(GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1]) = '' then
                            GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1] := mNodeDetProd.ChildNodes['cProd'].Text;

                         If Trim(Dados.FornecedoresEstado.AsString) = Trim(Dados.EmpresasEstado.Value) then
                            GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := Dados.ReferenciasFiscaisNatureza_Dentro.AsString
                         else
                            GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := Dados.ReferenciasFiscaisNatureza_Fora.AsString;

                         // Dados do produto.
                         Cells[00, RowCount-1] := PoeZero(4,RowCount-1);
                         Cells[01, RowCount-1] := mNodeDetProd.ChildNodes['cProd'].Text;
                         Cells[02, RowCount-1] := mNodeDetProd.ChildNodes['xProd'].Text;
                         Cells[03, RowCount-1] := mNodeDetProd.ChildNodes['cEAN'].Text;
                         Cells[04, RowCount-1] := mNodeDetProd.ChildNodes['NCM'].Text;
                         Cells[05, RowCount-1] := mNodeDetProd.ChildNodes['genero'].Text;

                         // CFOP.
                         Cells[06, RowCount-1] := mNodeDetProd.ChildNodes['CFOP'].Text;
                         Cells[07, RowCount-1] := mNodeDetProd.ChildNodes['uCom'].Text;
                         Cells[08, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['qCom'].Text);
                         Cells[09, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vUnCom'].Text);
                         Cells[47, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vProd'].Text);

                         // Dados da DI.
                         If mNodeDet.ChildNodes.FindNode('prod').ChildNodes.FindNode('DI') <> nil then begin
                            Cells[10, RowCount-1] := mNodeDetProdDI.ChildNodes['nDI'].Text;
                            mdDI                  := mNodeDetProdDI.ChildNodes['dDI'].Text;
                            Cells[11, RowCount-1] := Copy(mdDI, 9,2)+'/'+Copy(mdDI, 6,2)+'/'+Copy(mdDI, 1, 4);
                            Cells[12, RowCount-1] := mNodeDetProdDI.ChildNodes['xLocDesemb'].Text;
                            Cells[13, RowCount-1] := mNodeDetProdDI.ChildNodes['UFDesemb'].Text;
                            mdDesemb              := mNodeDetProdDI.ChildNodes['dDesemb'].Text;
                            Cells[14, RowCount-1] := Copy(mdDesemb, 9,2)+'/'+Copy(mdDesemb, 6,2)+'/'+Copy(mdDesemb, 1, 4);
                            Cells[15, RowCount-1] := mNodeDetProdDI.ChildNodes['cExportador'].Text;
                            
                            if mNodedetProdDIAdi.ChildNodes.FindNode('nAdicao') <> nil then begin
                               Cells[16, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['nAdicao'].NodeValue;
                            end;
                            
                            Cells[17, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['nSeqAdic'].NodeValue;
                            Cells[18, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['cFabricante'].Text;
                         end else begin
                            Cells[16, RowCount-1] := '0';
                            Cells[17, RowCount-1] := '0';
                         End;

                         // Impostos ICMS Operacional.
                         Cells[19, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['orig'].Text;
                         Cells[20, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['CST'].Text;
                         Cells[21, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['modBC'].Text;
                         Cells[22, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pRedBC'].Text);
                         Cells[23, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vBC'].Text);
                         Cells[24, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pICMS'].Text);
                         Cells[25, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vICMS'].Text);

                         Cells[68,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['adRemICMSRet'].Text);
                         Cells[69,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['qBCMono'].Text);
                         Cells[70,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vICMSMono'].Text);
                         Cells[71,RowCount-1] := '0';
                         Cells[72,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['qBCMonoRet'].Text);
                         Cells[73,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vICMSMonoRet'].Text);

                         if trim(Cells[68,RowCount-1]) = '' then Cells[68,RowCount-1] := '0';
                         if trim(Cells[69,RowCount-1]) = '' then Cells[69,RowCount-1] := '0';
                         if trim(Cells[70,RowCount-1]) = '' then Cells[70,RowCount-1] := '0';
                         if trim(Cells[71,RowCount-1]) = '' then Cells[71,RowCount-1] := '0';
                         if trim(Cells[72,RowCount-1]) = '' then Cells[72,RowCount-1] := '0';
                         if trim(Cells[73,RowCount-1]) = '' then Cells[73,RowCount-1] := '0';

                         // Impostos ICMS ST.
                         Cells[48, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vBCST'].Text);
                         Cells[49, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pICMSST'].Text);
                         Cells[50, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vICMSST'].Text);

                         // Total de tributos.
                         If mNodeDetImposto.ChildNodes.FindNode('vTotTrib') <> nil then begin
                            Cells[51, RowCount-1] := RemoveCaracter('.',',',mNodeDetImposto.ChildNodes.FindNode('vTotTrib').Text);
                         End;

                         // Impostos IPI.
                         If mNodeDetImposto.ChildNodes.FindNode('IPI') <> nil then begin
                            Cells[26, RowCount-1] := mNodeDetImpostoIPI.ChildNodes['cEnq'].Text;

                            If mNodeDetImposto.ChildNodes.FindNode('IPI').ChildNodes.FindNode('CST') <> nil then begin
                               Cells[27, RowCount-1] := mNodeDetImpostoIPITrib.ChildNodes['CST'].Text;
                            end;
                            If mNodeDetImposto.ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPINT') <> nil then begin
                               Cells[27, RowCount-1] := mNodeDetImposto.ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPINT').ChildNodes['CST'].Text;
                            End;

                            Cells[28, RowCount-1] := '0,00';
                            Cells[29, RowCount-1] := '0,00';
                            Cells[30, RowCount-1] := '0,00';

                            If mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib') <> nil then begin
                               If mNodeDetImpostoIPITrib.ChildNodes['vBC'] <> nil then begin
                                  Cells[26, RowCount-1] := mNodeDetImpostoIPI.ChildNodes['cEnq'].Text;
                                  Cells[27, RowCount-1] := mNodeDetImpostoIPITrib.ChildNodes['CST'].Text;
                                  Cells[28, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['vBC'].Text);
                                  Cells[29, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['pIPI'].Text);
                                  Cells[30, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['vIPI'].Text);
                               End;
                            End;
                            if Trim(Cells[28, RowCount-1]) = '' then Cells[28, RowCount-1]  := '0,00';
                            if Trim(Cells[29, RowCount-1]) = '' then Cells[29, RowCount-1]  := '0,00';
                            if Trim(Cells[30, RowCount-1]) = '' then Cells[30, RowCount-1]  := '0,00';
                         end else begin
                            Cells[26, RowCount-1] := '';
                            Cells[27, RowCount-1] := '';
                            Cells[28, RowCount-1] := '0,00';
                            Cells[29, RowCount-1] := '0,00';
                            Cells[30, RowCount-1] := '0,00';
                         End;

                         If StrtoFloat(Cells[30, RowCount-1]) > 0 then
                            cBCIPI.Value := cBCIPI.Value + StrtoFloat(Cells[28, RowCount-1]);

                         // Impostos II.
                         If mNodeDetImposto.ChildNodes.FindNode('II') <> nil then begin
                            Cells[31, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vBC'].Text);
                            Cells[32, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vDespAdu'].Text);
                            Cells[33, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vII'].Text);
                            Cells[34, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vIOF'].Text);
                         End;

                         // Impostos PIS.
                         If mNodeDetImposto.ChildNodes.FindNode('PIS') <> nil then begin
                            If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq') <> nil then begin
                               Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                               Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text);
                               cBCPIS.Value := cBCPIS.Value + StrtoFloat(Cells[36, RowCount-1]);
                               Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['pPIS'].Text);
                               Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                            end;
                            If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISOutr') <> nil then begin
                               Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                               Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text);
                               Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['pPIS'].Text);
                               Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                            end;
                            If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISQtde') <> nil then begin
                               Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                               Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['qBCProd'].Text);
                               Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vAliqProd'].Text);
                               Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                            end;
                         End;

                         // Impostos COFINS.
                         If mNodeDetImposto.ChildNodes.FindNode('COFINS') <> nil then begin
                            If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq') <> nil then begin
                               Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                               Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vBC'].Text);
                               Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['pCOFINS'].Text);
                               Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                            End;
                            If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSOutr') <> nil then begin
                               Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                               Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vBC'].Text);
                               Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['pCOFINS'].Text);
                               Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                            End;
                            If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSQtde') <> nil then begin
                               Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                               Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['qBCProd'].Text);
                               Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vAliqProd'].Text);
                               Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                            End;
                         End;

                         // Isentas e Outras de ICMS.
                         mBCICMS := 0;
                         If Cells[23, RowCount-1] <> '' then begin
                            mBCICMS := StrtoCurr(Cells[23, RowCount-1]);
                         End;

                         mValorTotal := (StrtoFloat(Cells[08, RowCount-1]) * StrtoFloat(Cells[09, RowCount-1]));
                         mApuracao1  := (mValorTotal - mBCICMS);
                         If mApuracao1 < 0 then mApuracao1 := 0;
                         mApuracao2 := mValorTotal - mBCICMS - mApuracao1 + StrtoFloat(Cells[30, RowCount-1]);
                         If mApuracao2 < 0 then mApuracao2 := 0;

                         Dados.CSTTabelaB.Locate('Codigo', Cells[20, RowCount-1], [loCaseInsensitive]);

                         If Dados.CSTTabelaBApuracao1.Value <> Dados.CSTTabelaBApuracao2.Value then begin
                            If Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                               Cells[43, RowCount-1] := CurrtoStr(mApuracao1);
                               Cells[44, RowCount-1] := CurrtoStr(mApuracao2);
                               cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao1;
                               cOutrasICMS.Value     := cOutrasICMS.Value  + mApuracao2;
                            End;
                            If Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                               Cells[43, RowCount-1] := CurrtoStr(mApuracao2);
                               Cells[44, RowCount-1] := CurrtoStr(mApuracao1);
                               cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao2;
                               cOutrasICMS.Value     := cOutrasICMS.Value  + mApuracao1;
                            End;
                         end else begin
                            If Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                               Cells[43, RowCount-1] := CurrtoStr(mApuracao1 + mApuracao2);
                               Cells[44, RowCount-1] := '0';
                               cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao1 + mApuracao2
                            End;
                            If Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                               Cells[43, RowCount-1] := '0';
                               Cells[44, RowCount-1] := CurrtoStr(mApuracao1 + mApuracao2);
                               cOutrasICMS.Value     := cOutrasICMS.Value + mApuracao1 + mApuracao2;
                            End;
                         End;

                         // Isentas e Outras de IPI.
                         Dados.CSTIPI.Locate('Codigo', Cells[27, RowCount-1], [loCaseInsensitive]);
                         mApuracao1 := 0;
                         If StrToFloat(Cells[30, RowCount-1]) = 0 then
                            mApuracao1 := mApuracao1 + mValorTotal;

                         If Dados.CSTIPI.FieldByName('Apuracao').Value = 'O' then begin
                            Cells[46, RowCount-1] := CurrtoStr(mApuracao1);
                            cOutrasIPI.Value      := cOutrasIPI.Value + mApuracao1;
                         end else begin
                            Cells[45, RowCount-1] := CurrtoStr(mApuracao1);
                            cIsentasIPI.Value     := cIsentasIPI.Value + mApuracao1;
                         End;

                         Cells[52, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vDesc'].Text);

                         // Impostos ICMS (Diferencial de Alíquota).
                         If mNodeDetImposto.ChildNodes.FindNode('ICMSUFDest') <> nil then begin
                            If mNodeDetImposto.ChildNodes.FindNode('ICMSUFDest').ChildNodes.FindNode('vFCPUFDest') <> nil then begin
                               Cells[53,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vBCUFDest'].Text);
                               Cells[54,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['pFCPUFDest'].Text);
                               Cells[55,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['pICMSUFDest'].Text);
                               Cells[56,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['pICMSInter'].Text);
                               Cells[57,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['pICMSInterPart'].Text);
                               Cells[58,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vFCPUFDest'].Text);
                               Cells[59,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vICMSUFDest'].Text);
                               Cells[60,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vICMSUFRemet'].Text);
                               Cells[61,RowCount-1] := FormatFloat('##0.00', StrtoFloat(Cells[53,RowCount-1]) * (StrtoFloat(Cells[55,RowCount-1])/100) - StrtoFloat(Cells[25, RowCount-1]));
                               Cells[62,RowCount-1] := FormatFloat('##0.00', 100 - StrtoFloat(Cells[57,RowCount-1]));
                               Cells[63,RowCount-1] := FormatFloat('##0.00', Percentual(StrtoFloat(Cells[61,RowCount-1]), StrtoFloat(Cells[62,RowCount-1])) );

                               cAliquotaFCP.Text    := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['pFCP'].Text);
                               cAliquotaFCPST.Text  := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['pFCPST'].Text);
                               Cells[64,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vBCFCP'].Text);
                               Cells[65,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vFCP'].Text);
                               Cells[66,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vBCFCPST'].Text);
                               Cells[67,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSDIF.ChildNodes['vFCPST'].Text);
                            End;
                         End;

                         // Pegando FCP pela CST ICMS.
                         case AnsiIndexStr(mNodeDetImpostoICMSCST.ChildNodes['CST'].Text, ['10','20','51','70','90']) of
                              0..4: begin
                                         cAliquotaFCP.Text    := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pFCP'].Text);
                                         Cells[64,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vBCFCP'].Text);
                                         Cells[65,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vFCP'].Text);
                                    end;
                         end;
                         // Pegando FCP ST pela CST ICMS.
                         case AnsiIndexStr(mNodeDetImpostoICMSCST.ChildNodes['CST'].Text, ['10','30','70','90','201','202','203','900']) of
                              0..7: begin
                                         cAliquotaFCPST.Text  := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pFCPST'].Text);
                                         Cells[66,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vBCFCPST'].Text);
                                         Cells[67,RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vFCPST'].Text);
                                    end;
                         end;

                         RowCount               := RowCount + 1;
                         GradeCadastro.RowCount := GradeCadastro.RowCount + 1;
                      End;
                      mNodeDet := mNodeDet.NextSibling;
                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                      Application.ProcessMessages;
                Until mNodeDet = nil;
           End;
           Janela_Processamento.Close;

           cBCICMS.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vBC'].Text);
           cValorICMS.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vICMS'].Text);
           cValorICMS.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vICMS'].Text);
           cBCICMSSub.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vBCST'].Text);
           cValorICMSSub.Text := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vST'].Text);
           cProdutos.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vProd'].Text);
           cFrete.Text        := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vFrete'].Text);
           cSeguro.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vSeg'].Text);
           cDesconto.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vDesc'].Text);
           cII.Text           := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vII'].Text);
           cIPI.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vIPI'].Text);
           cPIS.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vPIS'].Text);
           cCOFINS.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vCOFINS'].Text);
           cDespesas.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vOutro'].Text);
           cTotalNota.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vNF'].Text);
           cFCP.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vFCP'].Text);
           cFCPST.Text        := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vFCPST'].Text);
           cLiquido.Value     := cTotalNota.Value - cDesconto.Value;

           // Dados de cobrança.
           with GradeDupl do begin
                RowCount     := 2;
                FixedRows    := 1;
                Cells[00,0]  := 'Parcela';
                ColWidths[0] := 210;
                Cells[01,0]  := 'Vencimento';
                ColWidths[1] := 240;
                Cells[02,0]  := 'Valor';
                ColWidths[2] := 242;

                if mNodeCobr <> nil then begin
                   // Fatura.
                   mNodeFat := mNodeCobr.ChildNodes.FindNode('fat');
                   if mNodeCobr.ChildNodes['nFat'] <> nil then begin
                      cFat.Text   := mNodeFat.ChildNodes['nFat'].Text;
                      cTotal.Text := RemoveCaracter('.',',', mNodeFat.ChildNodes['vOrig'].Text);
                      cDesc.Text  := RemoveCaracter('.',',', mNodeFat.ChildNodes['vDesc'].Text);
                      cLiq.Text   := RemoveCaracter('.',',', mNodeFat.ChildNodes['vLiq'].Text);
                   end;

                   // Duplicatas.
                   mNodeDup := mNodeCobr.ChildNodes.FindNode('dup');
                   if mNodeCobr.ChildNodes['dup'] <> nil then begin
                      while mNodeDup <> nil do begin
                           if trim(mNodeDup.ChildNodes['nDup'].Text) <> '' then begin
                              Cells[00, RowCount-1] := mNodeDup.ChildNodes['nDup'].Text;
                              Cells[01, RowCount-1] := Copy(mNodeDup.ChildNodes['dVenc'].Text, 9, 2)+'/'+Copy(mNodeDup.ChildNodes['dVenc'].Text, 6, 2)+'/'+Copy(mNodeDup.ChildNodes['dVenc'].Text, 1, 4);
                              Cells[02, RowCount-1] := RemoveCaracter('.', ',', mNodeDup.ChildNodes['vDup'].Text);
                              RowCount := RowCount + 1;
                           end;
                           mNodeDup := mNodeDup.NextSibling;
                      end;
                      RowCount := RowCount -1;
                   end;

                   // Contando as parcelas
                   for i := 1 to Pred(RowCount) do begin
                       Cells[0, i] := InttoStr(StrtoInt(Cells[0, i]))+'/'+InttoStr(RowCount-1);
                   end;

                   Panel2.enabled    := false;
                   GradeDupl.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goColSizing,goRowSelect];
                end else begin
                   Panel2.enabled    := true;
                   GradeDupl.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goColSizing,goEditing,goRowSelect];
                   cFormaPgtoClick(self);
                end;
           end;

           mXML.Free;
       Except
           bImportar.Enabled := False;
           ShowMessage('Arquivos XML de nota fiscal eletrônica inválido!');
       End;
end;

procedure TUtilitarios_Importar_NFe_Propria.GradeItensDrawCell(Sender: TObject;ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
{
      If (ARow = 0) and (GradeItens.Cells[ACol,ARow] <> '') then begin
         With GradeItens.Canvas do begin
              FillRect(Rect);
              TextOut(StrToInt(FloatToStr(Int((Rect.Right-Rect.Left-TextWidth(GradeItens.Cells[ACol,ARow]))/2)))+Rect.Left,
              Rect.Top+2, GradeItens.Cells[ACol,ARow]);
         end;
      End;
}
end;

procedure TUtilitarios_Importar_NFe_Propria.cTipoNotaKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then cTipoNota.KeyValue := 0;
end;

procedure TUtilitarios_Importar_NFe_Propria.cTipoProdutoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then cTipoProduto.KeyValue := 0;
end;

procedure TUtilitarios_Importar_NFe_Propria.cCentroCustoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then cCentroCusto.KeyValue := 0;
end;

procedure TUtilitarios_Importar_NFe_Propria.cProcessoExit(Sender: TObject);
begin
     // Pergunta ao usúario qual o tipo do processo.
     With Dados, dmFiscal do begin
          If Trim(cProcesso.Text) <> '' then begin
             mAliquotaPIS    := 0;
             mAliquotaCOFINS := 0;
             If ProcessosDOC.Locate('Processo', cProcesso.Text, [loCaseInsensitive]) = False then begin
                If MessageDlg('Processo não encontrado!'+#13+#13'É um processo de Exportação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                   mTipo := 'EXPORTAÇÃO';
                end else begin
                   mTipo           := 'COMPRA INTERNA';
                   mAliquotaPIS    := ConfiguracaoPIS_CTR.Value;
                   mAliquotaCOFINS := ConfiguracaoCOFINS_CTR.Value;
                End;
             end else begin
                If (Dados.ProcessosDOCModalidade_Importacao.Value = 2) or (Dados.ProcessosDOCModalidade_IMportacao.Value = 3) then begin
                   mAliquotaPIS    := ConfiguracaoPIS_CTR.Value;
                   mAliquotaCOFINS := ConfiguracaoCOFINS_CTR.Value;
                End;
             End;
          End;
     End;
end;

procedure TUtilitarios_Importar_NFe_Propria.GradeCadastroDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
begin
{
      If (ARow = 0) and (GradeCadastro.Cells[ACol,ARow] <> '') then begin
         With GradeCadastro.Canvas do begin
              FillRect(Rect);
              TextOut(StrToInt(FloatToStr(Int((Rect.Right-Rect.Left-TextWidth(GradeCadastro.Cells[ACol,ARow]))/2)))+Rect.Left,
              Rect.Top+2, GradeCadastro.Cells[ACol,ARow]);
         end;
      End;
}
end;

procedure TUtilitarios_Importar_NFe_Propria.GradeItensDblClick(Sender: TObject);
begin
      If Menu_Principal.mUsuarioNome = 'ADMINISTRADOR' then begin
         GradeItens.Cols[09].SaveToFile('c:\temp\PROD_UNIT.txt');          //Valor_Unitario.
         GradeItens.Cols[23].SaveToFile('c:\temp\BC_ICMS.txt');            //bc icms oper.
         GradeItens.Cols[25].SaveToFile('c:\temp\ICMS.txt');               //ICMS Oper.
         GradeItens.Cols[48].SaveToFile('c:\temp\BC_ICMS_ST.txt');         //bc icms st.
         GradeItens.Cols[50].SaveToFile('c:\temp\ICMS_ST.txt');            //ICMS st.
         GradeItens.Cols[30].SaveToFile('c:\temp\IPI.txt');                //IPI.
         GradeItens.Cols[32].SaveToFile('c:\temp\Despesas.txt');           //Despesas.
         GradeItens.Cols[33].SaveToFile('c:\temp\II.txt');                 //II.
         GradeItens.Cols[38].SaveToFile('c:\temp\PIS.txt');                //PIS
         GradeItens.Cols[42].SaveToFile('c:\temp\COFINS.txt');             //COFINS.
         GradeItens.Cols[47].SaveToFile('c:\temp\PROD_TOTAL.txt');         //Total do item.
         GradeItens.Cols[51].SaveToFile('c:\temp\Tributos.txt');           //Total dos tributos.
         GradeItens.Cols[52].SaveToFile('c:\temp\Descontos.txt');          //Valor dos Descontos.
      End;
end;

// Executa os calculos dos macro passados como strings.
Function TUtilitarios_Importar_NFe_Propria.CalculaMacro(Campo:String):Real;
var
    mFormula     : String;
    mPos         : Integer;
    mTam         : Integer;
    mPosFun      : Integer;
    mCampo       : String;
    mSQL         : String;
    mResultado   : Real;
    mFuncao      : String;
    mFunTermo1   : String;
    mFunTermo2   : String;
    mFunCondic   : String;
    mSinal       : String;
    i            : Integer;
    mValorCondic1: String;
    mValorCondic2: String;
begin
     With Dados, dmFiscal do begin
          // Convertendo a formulas do campo.
          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#10,'',TipoNota.FieldByName(Campo).AsString);

          Campos.First;
          While not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos(CamposCampo.Value, mFormula);
                mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60);
                mCampo := Trim(Copy(mCampo, 1, Pos(']',mCampo)-1));

                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30);
                   mCampo := Copy(mCampo, 1, Pos(']',mCampo)-1);
                End;
                If (mPos <> 0) then begin
                   Delete(mFormula, mPos, mTam);
                   If UpperCase(CamposTabela.Value) = 'PEDIDOS' then begin
                      If Trim(Notas.FieldByName(mCampo).AsString) <> '' then
                         Insert( Notas.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PEDIDOSITENS' then begin
                      If Trim(NotasItens.FieldByName(mCampo).AsString) <> '' then begin
                         Insert( NotasItens.FieldByName(mCampo).AsString, mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROSITENS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASITENS' then begin
                      If Trim(NotasItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PROCESSOSDOCUMENTOS' then begin
                      If Trim(ProcessosDOC.FieldByName(mCampo).AsString) <> '' then
                         Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ADICOES' then begin
                      If Trim(Adicoes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Adicoes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'CLIENTES' then begin
                      If Trim(Clientes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Clientes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NCM' then begin
                      If Trim(NCM.FieldByName(mCampo).AsString) <> '' then
                         Insert( NCM.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PRODUTOS' then begin
                      If Trim(Produtos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Produtos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAESTOQUE' then begin
                      If Trim(FichaEstoque.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaEstoque.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAINVENTARIO' then begin
                      If Trim(FichaInventario.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaInventario.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ICMS' then begin
                      If EmpresasEstado.Value = ClientesEstado.Value then begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_DentroNContrib'
                         else
                            mCampo := 'Imp_DentroContrib';
                      End else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_ForaNContrib'
                         else
                            mCampo := 'Imp_ForaContrib';
                      End;
                      Insert( ICMS.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PAGARRECEBER' then begin
                      // Filtra a tabela para pegar o valor do lançamento.
                      If CamposPesquisa.Value <> '' then begin
                         mSQL := PagarReceber.SQL.Text;
                         PagarReceber.SQL.Clear;
                         PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = '+QuotedStr(ProcessosDOCProcesso.Value)+') and ('+CamposCampo_Chave.Value+' = '+QuotedStr(CamposPesquisa.Value)+')' );
                         PagarReceber.Open;

                         // Se não houver lançamento feito insere o valor 0 na formula.
                         If PagarReceber.RecordCount <> 0 then
                            Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      end else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          End;

          While Pos('{', mFormula) > 0 do begin
                mPosFun := Pos('{', mFormula)+1;
                mFuncao := Copy(mFormula, mPosFun, Pos('}', mFormula)-mPosFun);
                
                // Condição da função.
                mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunCondic, '', mFuncao);
                mFunCondic := RemoveCaracter(';', '', mFunCondic);

                // Primeiro termo da função.
                mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunTermo1, '', mFuncao);
                mFunTermo1 := RemoveCaracter(';', '', mFunTermo1);

                // Segundo termo da função.
                mFunTermo2 := RemoveCaracter(';', '', mFuncao);

                // Sinal utilizado no teste de condição.
                mSinal := '';
                For i := 1 to Length(mFunCondic) do begin
                    If (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
                End;

                // Valores da condição.
                mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
                mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
                mFuncao := '';
                For i := Pos('{', mFormula) to Length(mFormula) do begin
                    mFuncao := mFuncao + mFormula[i];
                    If mFormula[i] = '}' then break;
                End;

                if ApenasNumeros(mValorCondic2) <> '' then begin
                   if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                      (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                      (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                      (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end else begin
                   if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                      (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                      (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                      (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                      (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                      (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end;
          End;
     End;
     
     mMacro.Formula := mFormula;
     mResultado     := mMacro.Calc([0]);
     If mResultado <= 0 then mResultado := 0;

     Result := mResultado;
end;


procedure TUtilitarios_Importar_NFe_Propria.cCodNotaClick(Sender: TObject);
var
    l:integer;
begin
     // Atualiza o código do cadastro com o código do fabricante.
     with Dados do begin
          if cCodNota.Checked then begin
             for l := 1 to GradeCadastro.RowCount-1 do begin
                 if Trim(GradeCadastro.Cells[1, l]) <> '' then begin
                    if Produtos.Locate('Codigo_Fabricante', GradeCadastro.Cells[1, l], [loCaseInsensitive]) then begin
                       GradeCadastro.Cells[2, l] := Produtos.FieldByName('Codigo').AsString;
                    end else begin
                       GradeCadastro.Cells[ 2, l] := '';
                    end;
                 end;
             end;
          end else begin
             for l := 1 to GradeCadastro.RowCount-1 do begin
                 GradeCadastro.Cells[ 2, l] := GradeCadastro.Cells[ 1, l];
             end;
          end;
     end;
end;

procedure TUtilitarios_Importar_NFe_Propria.cFormaPgtoClick(Sender: TObject);
var
   ln:integer;
begin
      with Dados do begin
           cFat.Text    := cnNF.Text;
           cTotal.Value := cTotalNota.Value;
           cDesc.Value  := cDesconto.Value;
           cLiq.Value   := cLiquido.Value;
           
           ModalidadeParcelas(cTotal.Value,
                              cProdutos.Value,
                              cIPI.value,
                              StrtoDate(cdEmi.Text),
                              ModalidadesPgtoNumero_Parcelas.Value,
                              ModalidadesPgtoPrazo_Primeira.Value,
                              ModalidadesPgtoPrazo_Demais.Value,
                              cnNF.Text,
                              '_IMPNF_'+cCNF.Text,
                              ModalidadesPgtoPrazo_Dia.AsInteger,
                              ModalidadesPgtoCodigo.AsInteger);

           with GradeDupl, TabParcelas do begin
                for ln := 1 to Pred(RowCount) do begin
                    Rows[ln].Clear;
                end;    
                RowCount := 2;
                ln       := 1;
                first;
                while not eof do begin
                      Cells[0, ln] := FieldByName('Parcela').AsString;
                      Cells[1, ln] := FieldByName('Vencimento').AsString;
                      Cells[2, ln] := FieldByName('Valor').AsString;
                      next;
                      inc(ln);
                      RowCount := RowCount + 1;
                end;
                RowCount := RowCount - 1;
           end;
      end;
end;

procedure TUtilitarios_Importar_NFe_Propria.GradeDuplDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
var
   strTemp:string;
   Format:integer;
begin
     Format := 0;
     strTemp := GradeDupl.Cells[aCol,aRow];
     GradeDupl.Canvas.FillRect(Rect);
     if (aCol = 0) then Format := DT_LEFT;
     if (aCol = 1) then Format := DT_CENTER;
     if (aCol = 2) then Format := DT_RIGHT;
     if (aRow = 0) then begin
        GradeDupl.Canvas.Font.Style := [fsBold];
        Format := DT_CENTER
     end;
     DrawText(GradeDupl.Canvas.Handle,PChar(strTemp),-1,Rect,Format);
end;

procedure TUtilitarios_Importar_NFe_Propria.GeraFinanceiro;
var
   ln:integer;
begin
      with Dados, dmFiscal, dmContab, GradeDupl do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber');
           PagarReceber.SQL.add('WHERE  Numero_Documento in(select SUBSTRING(Numero, 1, LEN(Numero)-1)+''-''+SUBSTRING(Numero, LEN(Numero), 1) FROM Duplicatas WHERE CAST(Fatura AS Int) = :pFat)');
           PagarReceber.SQL.add('AND    Data_Documento in(select Data_Emissao FROM Duplicatas WHERE CAST(Fatura AS Int) = :pFat)');
           PagarReceber.SQL.add('AND    Data_Vencimento in(select Data_Vencimento FROM Duplicatas WHERE CAST(Fatura AS Int) = :pFat)');
           PagarReceber.SQL.add('AND    Valor_Parcela in(select Valor FROM Duplicatas WHERE CAST(Fatura AS Int) = :pFat)');
           PagarReceber.SQL.add('AND    Classificacao in(select Classificacao FROM Duplicatas WHERE CAST(Fatura AS Int) = :pFat)');
           PagarReceber.SQL.add('AND    Cliente = :pCli');
           PagarReceber.SQL.add('AND    Tipo = ''R'' ');
           PagarReceber.ParamByName('pCli').AsInteger := ClientesCodigo.AsInteger;
           PagarReceber.ParamByName('pFat').AsInteger := NotasNumero.AsInteger;
           PagarReceber.Execute;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = (SELECT ISNULL(MAX(Numero), 0) FROM PagarReceber)');
           PagarReceber.Open;

           Duplicatas.SQL.Clear;
           Duplicatas.SQL.Add('DELETE FROM Duplicatas WHERE Fatura = :pFatura AND Data_Emissao = :pDataEmissao');
           Duplicatas.ParamByName('pFatura').AsString    := PoeZero(9, NotasNumero.Value);
           Duplicatas.ParamByName('pDataEmissao').AsDate := NotasData_Emissao.Value;
           Duplicatas.Execute;
           Duplicatas.SQL.Clear;
           Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE Fatura = :pFatura AND Data_Emissao = :pDataEmissao ORDER BY Fatura, Duplicata');
           Duplicatas.ParamByName('pFatura').value       := PoeZero(9, NotasNumero.Value);
           Duplicatas.ParamByName('pDataEmissao').AsDate := NotasData_Emissao.Value;
           Duplicatas.Open;

           Fatura.SQL.Clear;
           Fatura.SQL.Add('DELETE FROM Fatura WHERE Nota = :pNota AND Data_Nota = :pData');
           Fatura.ParamByName('pNota').AsInteger := NotasNumero.Value;
           Fatura.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
           Fatura.Execute;
           Fatura.SQL.Clear;
           Fatura.SQL.Add('SELECT * FROM Fatura WHERE Nota = :pNota AND Data_Nota = :pData');
           Fatura.ParamByName('pNota').AsInteger := NotasNumero.Value;
           Fatura.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
           Fatura.Open;

           if trim(cFat.Text) > '' then begin
              // Cria o registro de cabeçalho das duplicatas "FATURA".
              Fatura.Append;
                     FaturaFatura.Value        := cFat.Text;
                     FaturaData_Emissao.Value  := StrtoDate(cdEmi.text);
                     FaturaNota.Value          := strtoint(cnNF.Text);
                     FaturaData_Nota.Value     := StrtoDate(cdEmi.text);
                     FaturaCliente.Value       := StrtoInt(cCodigo.Text);
                     FaturaForma_Pgto.Value    := ModalidadesPgtoCodigo.Value;
                     FaturaValor_Total.Value   := cTotal.value;
                     FaturaOrigem_Pedido.Value := false;
                     FaturaProcesso.Value      := cProcesso.Text;
                     FaturaCentro_Custo.Value  := CentroCustoCodigo.Value;
                     FaturaBanco.Value         := BancosCodigo.Value;
              Fatura.Post;

              // Salvando as Duplicatas.
              for ln := 1 to Pred(RowCount) do begin
                  Duplicatas.Append;
                             DuplicatasDuplicata.Value         := PoeZero(9, StrtoInt(cnNF.Text))+InttoStr(ln);
                             DuplicatasFatura.Value            := PoeZero(9, StrtoInt(cnNF.Text));
                             DuplicatasVencimento.Value        := iif(RowCount = 2, 'A VISTA', 'A PRAZO');
                             DuplicatasData_Vencimento.Value   := StrtoDate(Cells[1, ln]);
                             DuplicatasValor.Value             := StrtoCurr(Cells[2, ln]);
                             DuplicatasAliquota_Desconto.Value := 0;
                             DuplicatasDesconto.Value          := 0;
                             DuplicatasValor_Liquido.Value     := StrtoCurr(Cells[2, ln]);
                             DuplicatasData_Emissao.Value      := StrtoDate(cdEmi.Text);
                             DuplicatasClassificacao.Value     := TipoNotaClassificacao_Saida.AsString;
                             DuplicatasNumero.Value            := PoeZero(9, StrtoInt(cnNF.Text))+Chr(64+ln);
                  Duplicatas.Post;

                  // Gerando o lancamento no financeiro para cada duplicata.
                  tProvisao.SQL.Clear;
                  tProvisao.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM PagarReceber');
                  tProvisao.Open;

                  PagarReceber.Append;
                               PagarReceberNumero.Value           := tProvisao.FieldByName('Numero').Value;
                               PagarReceberTipo.Value             := 'R';
                               PagarReceberClassificacao.Value    := TipoNotaClassificacao_Saida.AsString;
                               PagarReceberCentro_Custo.Value     := CentroCustoCodigo.Value;
                               PagarReceberData_Documento.Value   := StrtoDate(cdEmi.Text);
                               PagarReceberData_Vencimento.Value  := DuplicatasData_Vencimento.Value;
                               PagarReceberValor_Documento.Value  := cTotal.Value;
                               PagarReceberValor_Parcela.Value    := DuplicatasValor.Value;
                               PagarReceberMulta.Value            := 0;
                               PagarReceberJuros.Value            := 0;
                               PagarReceberDesconto.Value         := 0;
                               PagarReceberValor_Total.Value      := DuplicatasValor_Liquido.Value;
                               PagarReceberValor_Operacao.Value   := DuplicatasValor_Liquido.Value;
                               PagarReceberCliente.Value          := ClientesCodigo.Value;
                               PagarReceberDocumento.Value        := TipoNotaTipo_Documento.Value;
                               PagarReceberNumero_Documento.Value := iif(ConfiguracaoSequencial_Duplicata.AsInteger = 0, FormatMaskText('999999999-A;0; ',DuplicatasDuplicata.Value), FormatMaskText('999999999-A;0; ',DuplicatasNumero.Value));
                               PagarReceberProcesso.Value         := NotasProcesso.Value;
                               PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                               PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                               PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                               PagarReceberFiscal.Value           := NotasNumero.AsString;
                               PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                               PagarReceberBanco.Value            := PedidosFaturaBanco.AsInteger;
                               PagarReceberTipo_Nota.Value        := 'SD';
                               PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                               PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                               PagarReceberBanco.Value            := BancosCodigo.Value;
                  PagarReceber.Post;
                  tProvisao.Close;
              end;

              if Panel2.Enabled then begin
                 // Apaga os registros gerados na tabela de parcelas "TabPearcelas".
                 TabParcelas.sql.Clear;
                 TabParcelas.sql.add('DELETE FROM TabParcelas WHERE Registro = :pReg');
                 TabParcelas.ParamByName('pReg').AsString := Trim(cFat.Text)+Trim('_IMPNF_'+cCNF.Text);
                 TabParcelas.Execute;
                 TabParcelas.sql.Clear;
                 TabParcelas.sql.add('SELECT * FROM TabParcelas WHERE Registro = :pReg');
                 TabParcelas.ParamByName('pReg').AsString := Trim(cFat.Text)+Trim('_IMPNF_'+cCNF.Text);
                 TabParcelas.Open;
                 TabParcelas.close;
              end;
           end;
      end;
end;



end.
