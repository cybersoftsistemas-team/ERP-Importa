unit frmFiscal_GNRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Grids, DBGrids, DBCtrls, Vcl.StdCtrls, DB, DBAccess, MSAccess, Vcl.ComCtrls, Funcoes,
  DateUtils, NFe_Util_2G_TLB, xmldom, ppCtrls, ppDBPipe, ppParameter, ppBarCod, ppPrnabl,ppBands, ppProd, system.UITypes, ppReport, Mask, RxLookup, msxmldom, ppTypes, RxToolEdit, ppDesignLayer, ppClass, ppCache, ppDB, ppComm, ppRelatv, MemDS;

type
  TFiscal_GNRE = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bSelTodos: TButton;
    bDesTodos: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grade: TDBGrid;
    Grade2: TDBGrid;
    GNREEnv: TMSQuery;
    dsGNREEnv: TDataSource;
    bEnviar: TButton;
    TabSheet3: TTabSheet;
    cMensagens: TMemo;
    Panel2: TPanel;

    lTempo: TLabel;
    bConsultar: TButton;
    TabSheet4: TTabSheet;
    cPendencias: TMemo;
    pGNRE: TppDBPipeline;
    rGNRE: TppReport;
    ppParameterList2: TppParameterList;
    bImprimir: TButton;
    tGNRE: TMSQuery;
    dstGNRE: TDataSource;
    ppDetailBand2: TppDetailBand;
    ppShape20: TppShape;
    ppLine20: TppLine;
    ppLabel38: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel44: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel50: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel43: TppLabel;
    ppLine31: TppLine;
    ppLine41: TppLine;
    ppLabel48: TppLabel;
    ppLabel53: TppLabel;
    ppLabel63: TppLabel;
    ppLabel70: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine49: TppLine;
    cDataVenc: TDateEdit;
    StaticText2: TStaticText;
    cDataPag: TDateEdit;
    StaticText1: TStaticText;
    cEstados: TRxDBLookupList;
    tEstados: TMSQuery;
    dstEstados: TDataSource;
    lAmbiente: TRxLabel;
    GNREEnvRegistro: TIntegerField;
    GNREEnvEmpresa: TSmallintField;
    GNREEnvNota: TIntegerField;
    GNREEnvChave: TStringField;
    GNREEnvData_Nota: TDateTimeField;
    GNREEnvUF_Favorecido: TStringField;
    GNREEnvUF_FavorecidoCod: TStringField;
    GNREEnvDestinatario_CNPJ_CPF: TStringField;
    GNREEnvDestinatario_IE: TStringField;
    GNREEnvDestinatario_RazaoSocial: TStringField;
    GNREEnvDestinatario_Municipio: TStringField;
    GNREEnvNumero_Convenio: TStringField;
    GNREEnvCodigo_Receita: TStringField;
    GNREEnvValor: TCurrencyField;
    GNREEnvData_Vencimento: TDateTimeField;
    GNREEnvDestinatario_MunicipioCod: TStringField;
    GNREEnvProtocolo_Numero: TStringField;
    GNREEnvProtocolo_Data: TDateTimeField;
    GNREEnvSelecao: TBooleanField;
    GNREEnvAutorizada: TBooleanField;
    GNREEnvData_Pagamento: TDateTimeField;
    ppLine7: TppLine;
    ppDBText19: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel4: TppLabel;
    ppLine11: TppLine;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel10: TppLabel;
    ppDBText20: TppDBText;
    ppDBText1: TppDBText;
    ppLabel12: TppLabel;
    ppDBText21: TppDBText;
    ppLine6: TppLine;
    ppLabel13: TppLabel;
    ppLine14: TppLine;
    ppLabel14: TppLabel;
    ppDBText6: TppDBText;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppShape1: TppShape;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel16: TppLabel;
    ppLine17: TppLine;
    ppLabel17: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine22: TppLine;
    ppLine25: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine27: TppLine;
    ppDBText36: TppDBText;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLabel35: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel37: TppLabel;
    ppDBText37: TppDBText;
    ppLabel39: TppLabel;
    ppDBText38: TppDBText;
    ppLine40: TppLine;
    ppLine42: TppLine;
    ppLabel40: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLabel41: TppLabel;
    ppDBText41: TppDBText;
    ppLine43: TppLine;
    ppLabel42: TppLabel;
    ppLine44: TppLine;
    ppLabel45: TppLabel;
    ppDBText42: TppDBText;
    ppLine45: TppLine;
    ppLabel46: TppLabel;
    GNREEnvCodigo_Barras: TStringField;
    GNREEnvNumero_Controle: TStringField;
    GNREEnvFinanceiro_Numero: TIntegerField;
    ppLabel47: TppLabel;
    lCarimbo: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppDBBarCode1: TppDBBarCode;
    tTemp: TMSQuery;
    pProg: TPanel;
    lProg: TLabel;
    bProg: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSelTodosClick(Sender: TObject);
    procedure bDesTodosClick(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure Filtra;
    procedure EnviarXML(Chave:string);
    procedure bConsultarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cEstadosClick(Sender: TObject);
    procedure Grade2DrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Grade2CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    mXML,
    mRecibo,
    mTempo,
    mRet2,
    RetWS,
    CabMsg,
    Msg,
    NomeCertificado,
    Versao,
    mDtRecibo: Widestring;
    tpAmb,
    cStat,
    mRet, i:integer;
  end;

var
  Fiscal_GNRE: TFiscal_GNRE;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TFiscal_GNRE.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFiscal_GNRE.FormShow(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     TabSheet4.TabVisible         := false;
     with Dados do begin
          Configuracao.Open;
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          lAmbiente.Caption := '(Ambiente - PRODUÇÃO)';
          lCarimbo.Visible  := false;
          If EmpresasAmbiente_GNRE.AsInteger = 2 then begin
             lAmbiente.Caption := '(Ambiente - HOMOLOGAÇÃO)';
             lCarimbo.Visible  := true;
          end;

          tEstados.SQL.Clear;
          tEstados.SQL.Add('SELECT Codigo');
          tEstados.SQL.Add('      ,Nome');
          tEstados.SQL.Add('      ,Codigo_GNRE = (SELECT Codigo_GNRE FROM ICMS WHERE UF = Codigo)');
          tEstados.SQL.Add('      ,De_Do');
          tEstados.SQL.Add('FROM Cybersoft_Cadastros.dbo.Estados');
          tEstados.SQL.Add('WHERE (SELECT GNRE FROM ICMS WHERE UF = Codigo) = 1');
          tEstados.SQL.Add('ORDER BY Nome');
          tEstados.Open;
     end;

     cDataVenc.Date := Date;
     cDataPag.Date  := Date;

     Filtra;
end;

procedure TFiscal_GNRE.GradeCellClick(Column: TColumn);
begin
      With dmFiscal do begin
           GNRE.Edit;
                GNRESelecao.Value := not GNRESelecao.Value;
           GNRE.Post;
      End;
end;

procedure TFiscal_GNRE.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With dmFiscal, Dados do begin
          If (Column.FieldName = 'Selecao') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (GNRE.FieldByName('Selecao').Value = True) then
                     ImageList1.GetBitmap(11, Icon)
                  else
                     ImageList1.GetBitmap(10, Icon);
                     
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
      End;
end;

procedure TFiscal_GNRE.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFiscal_GNRE.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados,dmFiscal,nil,nil);
      LimpaMemoria;
      Fiscal_GNRE.Release;
      Fiscal_GNRE := nil;
end;

procedure TFiscal_GNRE.bSelTodosClick(Sender: TObject);
begin
     With dmFiscal do begin
          GNRE.SQL.Clear;
          GNRE.SQL.Add('UPDATE GNRE SET Selecao = 1');
          if PageControl1.ActivePageIndex = 0 then begin
             GNRE.SQL.Add('WHERE  ISNULL(Protocolo_Numero, '''') = '''' ');
             GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString) );
          end;
          if PageControl1.ActivePageIndex = 1 then begin
             GNRE.SQL.Add('WHERE  ISNULL(Protocolo_Numero, '''') <> '''' ');
             GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString) );
          end;
          GNRE.Execute;
          Filtra;
     end;
end;

procedure TFiscal_GNRE.bDesTodosClick(Sender: TObject);
begin
     With dmFiscal do begin
          GNRE.SQL.Clear;
          GNRE.SQL.Add('UPDATE GNRE SET Selecao = 0');
          if PageControl1.ActivePageIndex = 0 then begin
             GNRE.SQL.Add('WHERE  ISNULL(Protocolo_Numero, '''') = '''' ');
             GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString) );
          end;
          if PageControl1.ActivePageIndex = 1 then begin
             GNRE.SQL.Add('WHERE  ISNULL(Protocolo_Numero, '''') <> '''' ');
             GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString) );
          end;
          GNRE.Execute;
          Filtra;
     end;
end;

(*
procedure TFiscal_GNRE.bEnviarClick(Sender: TObject);
var
   mXML : Widestring;
   mDataVenc,mDataPag: String;
   Arq  :TextFile;
   i    :integer;
begin
      if DataLimpa(cDataVenc.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a "Data de Vencimento" da GNRE.', mtError,[mbOK], 0);
         cDataVenc.SetFocus;
         Abort;
      end;
      if DataLimpa(cDataPag.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a "Data de Pagamentoda" GNRE.', mtError,[mbOK], 0);
         cDataPag.SetFocus;
         Abort;
      end;
      if Trim(Dados.ConfiguracaoPasta_GNRE.AsString) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a "Pasta da GNRE" em "Configurações do Sistema".', mtError,[mbOK], 0);
         cDataVenc.SetFocus;
         Abort;
      end;

      cPendencias.Lines.Clear;
      TabSheet4.TabVisible := false;
      with Dados, dmFiscal do begin
           GNRE.SQL.Clear;
           GNRE.SQL.Add('SELECT * FROM GNRE');
           GNRE.SQL.Add('WHERE  Selecao = 1');
           GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString));
           GNRE.Open;

           If GNRE.RecordCount = 0 then begin
              MessageDlg('Erro!'+#13+#13+'Não existe nenhuma GNRE selecionada para envio.', mtError,[mbOK], 0);
              Filtra;
              Abort;
           end;

           PageControl1.ActivePageIndex := 2;
           cMensagens.Clear;
           cMensagens.Lines.add('1. Gerando XML de lote da GNRE.');

           i := 1;

           mXML := '<TLote_GNRE xmlns="http://www.gnre.pe.gov.br">'+
                     '<guias>';

           GNRE.First;
           while not GNRE.Eof do begin
                 ICMS.SQL.Clear;
                 ICMS.SQL.Add('SELECT * FROM ICMS WHERE UF = '+ QuotedStr(GNREUF_Favorecido.AsString));
                 ICMS.Open;

                 mDataVenc := PoeZero(4, YearOf(cDataVenc.Date))+'-'+PoeZero(2, MonthOf(cDataVenc.Date))+'-'+PoeZero(2, DayOf(cDataVenc.Date));
                 mDataPag  := PoeZero(4, YearOf(cDataPag.Date ))+'-'+PoeZero(2, MonthOf(cDataPag .Date))+'-'+PoeZero(2, DayOf(cDataPag.Date ));
                 mXML  := mXML + '<TDadosGNRE>';
                          If ICMS.FieldByName('GNRE_c01').AsBoolean then mXML := mXML + '<c01_UfFavorecida>' + GNREUF_Favorecido.AsString + '</c01_UfFavorecida>';
                          If ICMS.FieldByName('GNRE_c02').AsBoolean then mXML := mXML + '<c02_receita>' + PoeZero(6, GNRECodigo_Receita.AsInteger) + '</c02_receita>';
                          If ICMS.FieldByName('GNRE_c27').AsBoolean then mXML := mXML + '<c27_tipoIdentificacaoEmitente>'+ '1' + '</c27_tipoIdentificacaoEmitente>';
                          If ICMS.FieldByName('GNRE_c03').AsBoolean then begin
                             mXML := mXML + '<c03_idContribuinteEmitente>'+
                                                 '<CNPJ>'+ EmpresasCNPJ.AsString + '</CNPJ>'+
                                            '</c03_idContribuinteEmitente>';
                          end;
                          If ICMS.FieldByName('GNRE_c28').AsBoolean then mXML := mXML + '<c28_tipoDocOrigem>'+ '01' + '</c28_tipoDocOrigem>';
                          If ICMS.FieldByName('GNRE_c04').AsBoolean then mXML := mXML + '<c04_docOrigem>'+ GNRENota.AsString + '</c04_docOrigem>';
                          If ICMS.FieldByName('GNRE_c06').AsBoolean then mXML := mXML + '<c06_valorPrincipal>'+ RemoveCaracter(',','.', FormatFloat('0.00', GNREValor.Value)) + '</c06_valorPrincipal>';
                          If ICMS.FieldByName('GNRE_c10').AsBoolean then mXML := mXML + '<c10_valorTotal>'+ RemoveCaracter(',','.', FormatFloat('0.00',GNREValor.Value)) + '</c10_valorTotal>';
                          If ICMS.FieldByName('GNRE_c14').AsBoolean then mXML := mXML + '<c14_dataVencimento>'+ mDataVenc + '</c14_dataVencimento>';
                          If (ICMS.FieldByName('GNRE_c15').AsBoolean) and (Trim(ICMS.FieldByName('Convenio').AsString) <> '') then begin
                             mXML := mXML + '<c15_convenio>'+ Trim(ICMS.FieldByName('Convenio').AsString) + '</c15_convenio>';
                          end;
                          If ICMS.FieldByName('GNRE_c16').AsBoolean then mXML := mXML + '<c16_razaoSocialEmitente>'+ LimpaXML(EmpresasRazao_Social.AsString) + '</c16_razaoSocialEmitente>';
                          If ICMS.FieldByName('GNRE_c17').AsBoolean then mXML := mXML + '<c17_inscricaoEstadualEmitente>'+ ICMSInscricao.AsString + '</c17_inscricaoEstadualEmitente>';
                          If ICMS.FieldByName('GNRE_c18').AsBoolean then begin
                             mXML := mXML + '<c18_enderecoEmitente>'+ LimpaXML(EmpresasRua.AsString)+', '+
                                                                      LimpaXML(EmpresasRua_Numero.AsString)+' - '+
                                                                      LimpaXML(EmpresasBairro.AsString)+
                                            '</c18_enderecoEmitente>';
                          end;
                          If ICMS.FieldByName('GNRE_c19').AsBoolean then mXML := mXML + '<c19_municipioEmitente>' + Copy(EmpresasMunicipio_Codigo.AsString, 3, 5) + '</c19_municipioEmitente>';
                          If ICMS.FieldByName('GNRE_c20').AsBoolean then mXML := mXML + '<c20_ufEnderecoEmitente>' + EmpresasEstado.AsString + '</c20_ufEnderecoEmitente>';
                          If ICMS.FieldByName('GNRE_c21').AsBoolean then mXML := mXML + '<c21_cepEmitente>' + EmpresasCEP.AsString + '</c21_cepEmitente>';
                          If ICMS.FieldByName('GNRE_c22').AsBoolean then mXML := mXML + '<c22_telefoneEmitente>' + EmpresasTelefone1.AsString + '</c22_telefoneEmitente>';
                          If ICMS.FieldByName('GNRE_c34').AsBoolean then mXML := mXML + '<c34_tipoIdentificacaoDestinatario>' + '2' + '</c34_tipoIdentificacaoDestinatario>';
                          If ICMS.FieldByName('GNRE_c35').AsBoolean then begin
                             mXML := mXML + '<c35_idContribuinteDestinatario>'+
                                                '<CPF>'+ GNREDestinatario_CNPJ_CPF.AsString + '</CPF>'+
                                            '</c35_idContribuinteDestinatario>';
                          end;
                          if ICMS.FieldByName('GNRE_c36').AsBoolean then begin
                             if ApenasNumeros(GNREDestinatario_IE.AsString) <> '' then begin
                                mXML := mXML + '<c36_inscricaoEstadualDestinatario>'+GNREDestinatario_IE.AsString+'</c36_inscricaoEstadualDestinatario>';
                             end;
                          end;
                          If ICMS.FieldByName('GNRE_c37').AsBoolean then mXML := mXML + '<c37_razaoSocialDestinatario>'+ LimpaXML(GNREDestinatario_RazaoSocial.AsString) + '</c37_razaoSocialDestinatario>';
                          If ICMS.FieldByName('GNRE_c38').AsBoolean then mXML := mXML + '<c38_municipioDestinatario>'+ GNREDestinatario_MunicipioCod.AsString + '</c38_municipioDestinatario>';
                          If ICMS.FieldByName('GNRE_c33').AsBoolean then mXML := mXML + '<c33_dataPagamento>'+ mDataPag + '</c33_dataPagamento>';
                          If ICMS.FieldByName('GNRE_c05').AsBoolean then begin
                             mXML := mXML + '<c05_referencia>'+
                                                 '<periodo>'+'0'+'</periodo>'+
                                                 '<mes>'+ FormatDateTime('mm', GNREData_Vencimento.Value) + '</mes>'+
                                                 '<ano>'+ FormatDateTime('yyyy',GNREData_Vencimento.Value)+ '</ano>'+
                                             '</c05_referencia>';
                          end;
                          If ICMS.FieldByName('GNRE_c39').AsBoolean then begin
                             mXML := mXML +'<c39_camposExtras>'+
                                                '<campoExtra>'+
                                                     '<codigo>'+ICMSGNRE_AdicCod.Value+'</codigo>'+
                                                     '<tipo>'+ICMSGNRE_AdicTipo.Value+'</tipo>'+
                                                     '<valor>'+GNREChave.AsString+'</valor>'+
                                                '</campoExtra>'+
                                           '</c39_camposExtras>';
                          end;
                          If ICMS.FieldByName('GNRE_c42').AsBoolean then mXML := mXML + '<c42_identificadorGuia>'+ PoeZero(9, i)+'</c42_identificadorGuia>';
                  mXML := mXML +'</TDadosGNRE>';

                  GNRE.Next;
                  Inc(i);
            end;

            mXML := mXML +
                    '</guias>'+
                    '</TLote_GNRE>';

            // Salva o arquivo de lote XML no disco.
            cMensagens.Lines.add('   XML Gerado com sucesso...');
            cMensagens.Lines.add('2. Salvando arquivo XML de lote no disco...');

            If not DirectoryExists(Dados.ConfiguracaoPasta_GNRE.AsString) then begin
               ForceDirectories(Dados.ConfiguracaoPasta_GNRE.AsString);
            end;
            AssignFile(Arq, Dados.ConfiguracaoPasta_GNRE.AsString+'\GNRE_Temp.xml');
            ReWrite(Arq);
            Write(Arq, mXML);
            CloseFile(Arq);
            cMensagens.Lines.add('   Arquivo salvo...');

            EnviarXML;
      end;

      
      
      lTempo.Visible    := false;
end;
*)

procedure TFiscal_GNRE.bEnviarClick(Sender: TObject);
var
   mDataVenc
  ,mDataPag: String;
   Arq: TextFile;
begin
      bEnviar.Enabled := false;
      if DataLimpa(cDataVenc.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a "Data de Vencimento" da GNRE.', mtError,[mbOK], 0);
         cDataVenc.SetFocus;
         bEnviar.Enabled := true;
         Abort;
      end;
      if DataLimpa(cDataPag.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a "Data de Pagamentoda" GNRE.', mtError,[mbOK], 0);
         cDataPag.SetFocus;
         bEnviar.Enabled := true;
         Abort;
      end;
      if Trim(Dados.ConfiguracaoPasta_GNRE.AsString) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a "Pasta da GNRE" em "Configurações do Sistema".', mtError,[mbOK], 0);
         cDataVenc.SetFocus;
         bEnviar.Enabled := true;
         Abort;
      end;
      if Trim(Dados.EmpresasGNRE_Layout.AsString) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Você deve informar a versão do Layout da GNRE em "Cadastros/Empresas/Parâmetros".', mtError,[mbOK], 0);
         cDataVenc.SetFocus;
         bEnviar.Enabled := true;
         Abort;
      end;

      cPendencias.Lines.Clear;
      TabSheet4.TabVisible := false;
      
      with Dados, dmFiscal do begin
           GNRE.SQL.Clear;
           GNRE.SQL.Add('SELECT * FROM GNRE');
           GNRE.SQL.Add('WHERE  Selecao = 1');
           GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString));
           GNRE.SQL.Add('AND    ISNULL(Autorizada, 0) = 0');
           GNRE.Open;

           If GNRE.RecordCount = 0 then begin
              MessageDlg('Erro!'+#13+#13+'Não existe nenhuma GNRE selecionada para envio.', mtError,[mbOK], 0);
              Filtra;
              Abort;
           end;

           PageControl1.ActivePageIndex := 2;
           cMensagens.Clear;

           pProg.Visible  := true;
           bProg.Position := 0;
           bProg.Max      := GNRE.RecordCount;

           GNRE.First;
           while not GNRE.Eof do begin
                 cMensagens.Lines.add('1. Gerando XML de GNRE da Nota Fiscal '+GNRENota.AsString);
                 
                 ICMS.SQL.Clear;
                 ICMS.SQL.Add('SELECT * FROM ICMS WHERE UF = '+ QuotedStr(GNREUF_Favorecido.AsString));
                 ICMS.Open;

                 mDataVenc := PoeZero(4, YearOf(cDataVenc.Date))+'-'+PoeZero(2, MonthOf(cDataVenc.Date))+'-'+PoeZero(2, DayOf(cDataVenc.Date));
                 mDataPag  := PoeZero(4, YearOf(cDataPag.Date ))+'-'+PoeZero(2, MonthOf(cDataPag .Date))+'-'+PoeZero(2, DayOf(cDataPag.Date ));

                 mXML := '<TLote_GNRE xmlns="http://www.gnre.pe.gov.br">'+
                         '<guias>'+
                         '<TDadosGNRE>';
                         
                          If ICMS.FieldByName('GNRE_c01').AsBoolean then mXML := mXML + '<c01_UfFavorecida>' + GNREUF_Favorecido.AsString + '</c01_UfFavorecida>';
                          If ICMS.FieldByName('GNRE_c02').AsBoolean then mXML := mXML + '<c02_receita>' + PoeZero(6, GNRECodigo_Receita.AsInteger) + '</c02_receita>';
                          If ICMS.FieldByName('GNRE_c27').AsBoolean then mXML := mXML + '<c27_tipoIdentificacaoEmitente>'+ '1' + '</c27_tipoIdentificacaoEmitente>';
                          If ICMS.FieldByName('GNRE_c03').AsBoolean then begin
                             mXML := mXML + '<c03_idContribuinteEmitente>'+
                                                 '<CNPJ>'+ EmpresasCNPJ.AsString + '</CNPJ>'+
                                            '</c03_idContribuinteEmitente>';
                          end;
                          If ICMS.FieldByName('GNRE_c28').AsBoolean then mXML := mXML + '<c28_tipoDocOrigem>'+ '01' + '</c28_tipoDocOrigem>';
                          If ICMS.FieldByName('GNRE_c04').AsBoolean then mXML := mXML + '<c04_docOrigem>'+ GNRENota.AsString + '</c04_docOrigem>';
                          If ICMS.FieldByName('GNRE_c06').AsBoolean then mXML := mXML + '<c06_valorPrincipal>'+ RemoveCaracter(',','.', FormatFloat('0.00', GNREValor.Value)) + '</c06_valorPrincipal>';
                          If ICMS.FieldByName('GNRE_c10').AsBoolean then mXML := mXML + '<c10_valorTotal>'+ RemoveCaracter(',','.', FormatFloat('0.00',GNREValor.Value)) + '</c10_valorTotal>';
                          If ICMS.FieldByName('GNRE_c14').AsBoolean then mXML := mXML + '<c14_dataVencimento>'+ mDataVenc + '</c14_dataVencimento>';
                          If (ICMS.FieldByName('GNRE_c15').AsBoolean) and (Trim(ICMS.FieldByName('Convenio').AsString) <> '') then begin
                             mXML := mXML + '<c15_convenio>'+ Trim(ICMS.FieldByName('Convenio').AsString) + '</c15_convenio>';
                          end;
                          If ICMS.FieldByName('GNRE_c16').AsBoolean then mXML := mXML + '<c16_razaoSocialEmitente>'+ LimpaXML(EmpresasRazao_Social.AsString) + '</c16_razaoSocialEmitente>';
                          If ICMS.FieldByName('GNRE_c17').AsBoolean then mXML := mXML + '<c17_inscricaoEstadualEmitente>'+ ICMSInscricao.AsString + '</c17_inscricaoEstadualEmitente>';
                          If ICMS.FieldByName('GNRE_c18').AsBoolean then begin
                             mXML := mXML + '<c18_enderecoEmitente>'+ LimpaXML(EmpresasRua.AsString)+', '+
                                                                      LimpaXML(EmpresasRua_Numero.AsString)+' - '+
                                                                      LimpaXML(EmpresasBairro.AsString)+
                                            '</c18_enderecoEmitente>';
                          end;
                          If ICMS.FieldByName('GNRE_c19').AsBoolean then mXML := mXML + '<c19_municipioEmitente>' + Copy(EmpresasMunicipio_Codigo.AsString, 3, 5) + '</c19_municipioEmitente>';
                          If ICMS.FieldByName('GNRE_c20').AsBoolean then mXML := mXML + '<c20_ufEnderecoEmitente>' + EmpresasEstado.AsString + '</c20_ufEnderecoEmitente>';
                          If ICMS.FieldByName('GNRE_c21').AsBoolean then mXML := mXML + '<c21_cepEmitente>' + EmpresasCEP.AsString + '</c21_cepEmitente>';
                          If ICMS.FieldByName('GNRE_c22').AsBoolean then mXML := mXML + '<c22_telefoneEmitente>' + EmpresasTelefone1.AsString + '</c22_telefoneEmitente>';
                          If ICMS.FieldByName('GNRE_c34').AsBoolean then mXML := mXML + '<c34_tipoIdentificacaoDestinatario>' + '2' + '</c34_tipoIdentificacaoDestinatario>';
                          If ICMS.FieldByName('GNRE_c35').AsBoolean then begin
                             mXML := mXML + '<c35_idContribuinteDestinatario>'+
                                                '<CPF>'+ GNREDestinatario_CNPJ_CPF.AsString + '</CPF>'+
                                            '</c35_idContribuinteDestinatario>';
                          end;
                          if ICMS.FieldByName('GNRE_c36').AsBoolean then begin
                             if ApenasNumeros(GNREDestinatario_IE.AsString) <> '' then begin
                                mXML := mXML + '<c36_inscricaoEstadualDestinatario>'+GNREDestinatario_IE.AsString+'</c36_inscricaoEstadualDestinatario>';
                             end;
                          end;
                          If ICMS.FieldByName('GNRE_c37').AsBoolean then mXML := mXML + '<c37_razaoSocialDestinatario>'+ LimpaXML(GNREDestinatario_RazaoSocial.AsString) + '</c37_razaoSocialDestinatario>';
                          If ICMS.FieldByName('GNRE_c38').AsBoolean then mXML := mXML + '<c38_municipioDestinatario>'+ GNREDestinatario_MunicipioCod.AsString + '</c38_municipioDestinatario>';
                          If ICMS.FieldByName('GNRE_c33').AsBoolean then mXML := mXML + '<c33_dataPagamento>'+ mDataPag + '</c33_dataPagamento>';
                          If ICMS.FieldByName('GNRE_c05').AsBoolean then begin
                             mXML := mXML + '<c05_referencia>'+
                                                 '<periodo>'+'0'+'</periodo>'+
                                                 '<mes>'+ FormatDateTime('mm', GNREData_Vencimento.Value) + '</mes>'+
                                                 '<ano>'+ FormatDateTime('yyyy',GNREData_Vencimento.Value)+ '</ano>'+
                                             '</c05_referencia>';
                          end;
                          If ICMS.FieldByName('GNRE_c39').AsBoolean then begin
                             mXML := mXML +'<c39_camposExtras>'+
                                                '<campoExtra>'+
                                                     '<codigo>'+ICMSGNRE_AdicCod.Value+'</codigo>'+
                                                     '<tipo>'+ICMSGNRE_AdicTipo.Value+'</tipo>'+
                                                     '<valor>'+GNREChave.AsString+'</valor>'+
                                                '</campoExtra>'+
                                           '</c39_camposExtras>';
                          end;
                          if ICMS.FieldByName('GNRE_c42').AsBoolean then mXML := mXML + '<c42_identificadorGuia>'+ PoeZero(9, i)+'</c42_identificadorGuia>';

                    mXML := mXML +'</TDadosGNRE>'+
                                  '</guias>'+
                                  '</TLote_GNRE>';

                  cMensagens.Lines.add('   XML Gerado...');
                  
                  if not DirectoryExists(Dados.ConfiguracaoPasta_GNRE.AsString) then ForceDirectories(Dados.ConfiguracaoPasta_GNRE.AsString);
                  AssignFile(Arq, Dados.ConfiguracaoPasta_GNRE.AsString+'\GNRE_'+GNRENota.AsString+'Envio.xml');
                  ReWrite(Arq);
                  Write(Arq, mXML);
                  CloseFile(Arq);
                  
                  // Envia XML para SEFAZ.
                  EnviarXML(GNREChave.AsString);

                  GNRE.Next;
                  bProg.Position := bProg.Position + 1;
                  Application.ProcessMessages;
           end;

           pProg.Visible := false;

           Filtra;

           MessageDlg('Envio de GNRE`s para SEFAZ concluído!', mtInformation, [mbOK], 0);
      end;

      
      
      lTempo.Visible    := false;
      bEnviar.Enabled   := true;
end;

procedure TFiscal_GNRE.EnviarXML(Chave: string);
Var
   Util      : NFe_Util_2G_Interface;
   Arq       : TextFile;
   mCodBarras
  ,mDigitavel: String;
begin
     cMensagens.Lines.Add('2. Enviando o XML da GNRE para SEFAZ.');

     
     

     RetWS           := '';
     CabMsg          := '';
     Msg             := '';
     tpAmb           := Dados.EmpresasAmbiente_GNRE.AsInteger;
     NomeCertificado := Trim(Dados.EmpresasCertificado_Digital.AsString);
     Versao          := Trim(Dados.EmpresasGNRE_Layout.Value);
     Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
     Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
     Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

     // Executa o envio da GNRE para a SEFAZ.
     Util := CoUtil.Create;
     mRet := Util.EnviaGNRE(tpAmb, NomeCertificado, Versao, mXML, RetWS, Msg, mRecibo, mdtRecibo, mTempo, Proxy, Usuario, Senha);
     
     If mRet = 100 then begin
        with dmFiscal do begin
             tTemp.SQL.Clear;
             tTemp.SQL.Add('UPDATE GNRE SET Protocolo_Numero = :pProt');
             tTemp.SQL.Add('               ,Protocolo_Data   = :pData');
             tTemp.SQL.Add('WHERE  Chave = :pChave');
             tTemp.SQL.Add('AND    Selecao = 1');
             tTemp.ParamByName('pProt').AsString   := mRecibo;
             tTemp.ParamByName('pData').AsDateTime := StrtoDateTime(Copy(mdtRecibo,9,2)+'/'+Copy(mdtRecibo,6,2)+'/'+Copy(mdtRecibo,1,4)+' '+Copy(mdtRecibo,12,8));
             tTemp.ParamByName('pChave').AsString  := Chave;
             tTemp.Execute;
        end;

        cMensagens.Lines.Add('   Recibo de envio.:'+ mRecibo+ ' - '+mdtRecibo);
        cMensagens.Lines.Add('   Tempos Resposta.:'+ FloattoStr(StrtoFloat(mTempo)/1000)+' segundos' );
        cMensagens.Lines.Add('3. Consultando situação da GNRE enviada...');

        mRet2 := Util.BuscaGNRE(tpAmb, NomeCertificado, Versao, Msg, RetWS, mRecibo, cStat, cabmsg, proxy, usuario, senha);

        i := 1;
        If cStat = 401 then begin
           cMensagens.Lines.Add('   Aguardando processamento'+Replicate('.', i));
           lTempo.Visible := true;
           While cStat = 401 do begin
                 mRet2 := Util.BuscaGNRE(tpAmb, NomeCertificado, Versao, Msg, RetWS, mRecibo, cStat, cabmsg, proxy, usuario, senha);
                 Inc(i);
                 Sleep(1000);
                 If i > 30 then Break;
                 lTempo.Caption := 'Aguardando...'+PoeZero(2, i);
           end;
        end;

        If cStat = 402 then begin
           mCodBarras := Copy(AnsiString(RetWS), Pos('858', AnsiString(RetWS)), 48);
           mDigitavel := Copy(mCodBarras, 1, 11) + Copy(mCodBarras, 13, 11) + Copy(mCodBarras, 25, 11) + Copy(mCodBarras, 37, 11);

           cMensagens.Lines.Add('   GNRE autorizada.');
           cMensagens.Lines.add('           Código de Barras: '+mCodBarras);
           with dmFiscal do begin
                cMensagens.Lines.add('5. Atualizando dados de GNRE autorizada...');
                tTemp.SQL.Clear;
                tTemp.SQL.Add('UPDATE GNRE SET  Autorizada      = 1');
                tTemp.SQL.Add('                ,Data_Vencimento = :pDataVenc');
                tTemp.SQL.Add('                ,Data_Pagamento  = :pDataPag');
                tTemp.SQL.Add('                ,Codigo_Barras   = :pCodBarras');
                tTemp.SQL.Add('                ,Linha_Digitavel = :pDigitavel');
                tTemp.SQL.Add('                ,Numero_Controle = :pControl');
                tTemp.SQL.Add('WHERE ISNULL(Protocolo_Numero, '''') <> '''' ');
                tTemp.SQL.Add('AND Selecao = 1 ');
                tTemp.SQL.Add('AND Chave   = :pChave');
                tTemp.ParamByName('pDataVenc').AsDate    := cDataVenc.Date;
                tTemp.ParamByName('pDataPag').AsDate     := cDataPag.Date;
                tTemp.ParamByName('pCodBarras').AsString := mCodBarras;
                tTemp.ParamByName('pDigitavel').AsString := mDigitavel;
                tTemp.ParamByName('pControl').AsString   := Copy(mCodBarras, 29, 7)+Copy(mCodBarras, 37, 9);
                tTemp.ParamByName('pChave').AsString     := Chave;
                tTemp.Execute;

                // Salva o XML enviado e autorizado na pasta da GNRE.
                cMensagens.Lines.add('4. Salvando arquivo XML no disco...');

                If not DirectoryExists(Dados.ConfiguracaoPasta_GNRE.AsString) then begin
                   ForceDirectories(Dados.ConfiguracaoPasta_GNRE.AsString);
                end;

                AssignFile(Arq, Dados.ConfiguracaoPasta_GNRE.AsString+'\GNRE_'+mRecibo+'.xml');
                ReWrite(Arq);
                Write(Arq, mXML);
                CloseFile(Arq);
                cMensagens.Lines.add('   Arquivo salvo...');

                rGNRE.AllowPrintToFile := True;
                rGNRE.DeviceType       := dtPDF;
                rGNRE.TextFileName     := Dados.ConfiguracaoPasta_GNRE.AsString+'\GNRE_'+mRecibo+'.pdf';
                rGNRE.ShowPrintDialog  := False;
                rGNRE.Print;
                rGNRE.FreeOnRelease;
                rGNRE.Reset;

                bImprimir.Click;

                tTemp.SQL.Clear;
                tTemp.SQL.Add('UPDATE GNRE SET Selecao = 0');
                tTemp.SQL.Add('WHERE Chave = :pChave AND ISNULL(Protocolo_Numero, '''') <> '''' ');
                tTemp.SQL.Add('AND Selecao = 1 ');
                tTemp.ParamByName('pChave').AsString := Chave;
                tTemp.Execute;
           end;
           
           // Salva o arquivo de retorno no disco.
           if not DirectoryExists(Dados.ConfiguracaoPasta_GNRE.AsString) then ForceDirectories(Dados.ConfiguracaoPasta_GNRE.AsString);
           AssignFile(Arq, Dados.ConfiguracaoPasta_GNRE.AsString+'\GNRE_'+mRecibo+'_Retorno.xml');
           ReWrite(Arq);
           Write(Arq, RetWS);
           CloseFile(Arq);
        end else begin
           cMensagens.Lines.Add('   Erro............:'+CabMsg);
           cMensagens.Lines.Add('');
           cPendencias.Lines.Add(RetWS);
           TabSheet4.TabVisible := false;
           if Trim(cPendencias.Lines.Text) <> '' then TabSheet4.TabVisible := true;
        End;
     end else begin
        cMensagens.Lines.Add('  Erro............:' + Msg);
     end;
end;

procedure TFiscal_GNRE.bConsultarClick(Sender: TObject);
Var
   Util: NFe_Util_2G_Interface;
   mProtocolo: String;
begin
      //mProtocolo := Trim(GNREEnv.FieldByName('Protocolo_Numero').AsString);
      mProtocolo := Trim(GNREEnv.FieldByName('Numero_Controle').AsString);
      if PageControl1.ActivePageIndex = 0 then begin
         mProtocolo := Trim(dmFiscal.GNREProtocolo_Numero.AsString);
      end;
      if Trim(mProtocolo) = '' then begin
         MessageDlg('Não existe protocolo para a GNRE selecionada!', mtInformation, [mbOK], 0);
         Abort;
      end;

      
      

      cMensagens.Lines.Clear;
      cPendencias.Lines.Clear;
      PageControl1.ActivePageIndex := 2;

      With Dados, dmfiscal do begin
           RetWS           := '';
           CabMsg          := '';
           Msg             := '';
           tpAmb           := EmpresasAmbiente_GNRE.AsInteger;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           Versao          := Trim(EmpresasGNRE_Layout.Value);
           Proxy           := Trim(ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(ConfiguracaoSenha_Proxy.AsString);

           Util := CoUtil.Create;
           Util.BuscaGNRE(tpAmb, NomeCertificado, Versao, Msg, RetWS, mProtocolo, cStat, cabmsg, proxy, usuario, senha);

           cMensagens.Lines.Add(CabMsg);

           if cStat <> 402 then begin
              cPendencias.Lines.Add(RetWS);
              TabSheet4.TabVisible := false;
              TabSheet4.TabVisible := Trim(cPendencias.Lines.Text) <> '';
           end else begin
              cMensagens.Lines.Add('      GNRE Autorizada pela SEFAZ '+tEstados.FieldByName('De_Do').AsString + ' '+tEstados.FieldByName('Nome').AsString);
           end;
      End;

      
      
end;

procedure TFiscal_GNRE.Filtra;
begin
      With Dados, dmFiscal do begin
           GNRE.SQL.Clear;
           GNRE.SQL.Add('SELECT *');
           GNRE.SQL.Add('FROM   GNRE');
           GNRE.SQL.Add('WHERE  UF_Favorecido NOT IN (SELECT UF FROM ICMS WHERE ISNULL(GNRE, 0) = 0)');
           GNRE.SQL.Add('AND    ISNULL((SELECT Inscricao    FROM ICMS WHERE UF = UF_Favorecido), '''') = '''' ');
           GNRE.SQL.Add('AND    ISNULL((SELECT Cancelada    FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data_Nota), 0) = 0 ');
           GNRE.SQL.Add('AND    ISNULL((SELECT Nfe_Denegada FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data_Nota), 0) = 0 ');
           GNRE.SQL.Add('AND    ISNULL(Autorizada, 0) = 0');
           GNRE.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString));
           GNRE.SQL.Add('ORDER  BY UF_Favorecido, Data_Nota desc, Nota Desc');
           //GNRE.SQL.SaveToFile('c:\temp\GNRE.sql');
           GNRE.Open;

           GNREEnv.SQL.Clear;
           GNREEnv.SQL.Add('SELECT *');
           GNREEnv.SQL.Add('FROM   GNRE');
           GNREEnv.SQL.Add('WHERE  Autorizada = 1');
           GNREEnv.SQL.Add('AND    UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString));
           GNREEnv.SQL.Add('ORDER  BY UF_Favorecido');
           GNREEnv.Open;

           TabSheet1.Caption := 'Pendêntes ['+InttoStr(GNRE.RecordCount)+']';
           TabSheet2.Caption := 'Autorizadas ['+InttoStr(GNREEnv.RecordCount)+']';
      End;
end;

procedure TFiscal_GNRE.bImprimirClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           tGNRE.SQL.Clear;
           tGNRE.SQL.Add('SELECT UF_Favorecido');
           tGNRE.SQL.Add('      ,UF_FavorecidoCod');
           tGNRE.SQL.Add('      ,Nome_UF       = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Estados WHERE Codigo = UF_Favorecido)');
           tGNRE.SQL.Add('      ,Vencimento    = Data_Vencimento');
           tGNRE.SQL.Add('      ,Numero_Convenio');
           tGNRE.SQL.Add('      ,Razao_Social  = (SELECT Razao_Social FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,Inscricao_UF  = (SELECT Inscricao FROM ICMS WHERE UF = UF_Favorecido)');
           tGNRE.SQL.Add('      ,Endereco      = (SELECT (Rua + '', ''+CAST(Rua_Numero AS VARCHAR(15))+'', ''+Complemento+'' - ''+Bairro) FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,Municipio     = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,Municipio_Nome= (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa))');
           tGNRE.SQL.Add('      ,UF            = (SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,Telefone      = (SELECT Telefone1 FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,CEP           = (SELECT CEP FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,CNPJ          = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tGNRE.SQL.Add('      ,Chave');
           tGNRE.SQL.Add('      ,Codigo_Receita');
           tGNRE.SQL.Add('      ,Doc_Origem    = Nota');
           tGNRE.SQL.Add('      ,Periodo_Ref   = SUBSTRING(''00'', 1, 2-LEN(CAST(MONTH(Data_Vencimento) AS VARCHAR(2))))+CAST(MONTH(Data_Vencimento) AS VARCHAR(2))+''/''+CAST(YEAR(Data_Vencimento) AS VARCHAR(4))');
           tGNRE.SQL.Add('      ,Valor');
           tGNRE.SQL.Add('      ,Total_Recolher=Valor');
           tGNRE.SQL.Add('      ,Codigo_Barras');
           tGNRE.SQL.Add('      ,Numero_Controle');
           tGNRE.SQL.Add('      ,Destinatario_CNPJ_CPF');
           tGNRE.SQL.Add('      ,Destinatario_Municipio');
           tGNRE.SQL.Add('FROM   GNRE');
           tGNRE.SQL.Add('WHERE  UF_Favorecido = '+QuotedStr(tEstados.FieldByName('Codigo').AsString));
           tGNRE.SQL.Add('AND    Autorizada = 1');
           tGNRE.SQL.Add('AND    Selecao = 1');
           //tGNRE.SQL.SaveToFile('c:\temp\GNRE.SQL');
           tGNRE.Open;

           rGNRE.Print;
           rGNRE.Reset;
      end;
end;

procedure TFiscal_GNRE.cEstadosClick(Sender: TObject);
begin
      Filtra;
      PageControl1.ActivePageIndex := 0;
end;

procedure TFiscal_GNRE.Grade2DrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With dmFiscal, Dados do begin
          If (Column.FieldName = 'Selecao') then begin
             With Grade2.Canvas do begin
                  Brush.Color := $00FFEBC1;
                  FillRect(Rect);
                  if GNREEnv.FieldByName('Selecao').AsBoolean then
                     ImageList1.GetBitmap(11, Icon)
                  else
                     ImageList1.GetBitmap(10, Icon);
                     
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
      End;
end;

procedure TFiscal_GNRE.Grade2CellClick(Column: TColumn);
begin
      GNREEnv.Edit;
              GNREEnv.FieldByName('Selecao').Value := not GNREEnv.FieldByName('Selecao').Value;
      GNREEnv.Post;
end;

end.


