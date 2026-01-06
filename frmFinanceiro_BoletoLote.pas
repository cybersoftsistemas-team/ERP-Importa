unit frmFinanceiro_BoletoLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, RxLookup, Mask,
  ppCtrls, ppPrnabl,   ppBands, ppParameter, ppProd, ppReport, ppBarCod, DB, DBAccess, MSAccess, Funcoes, ppDBPipe, Maskutils, ppTypes, Vcl.ComCtrls, DBCtrls, RxCurrEdit, RxToolEdit, ppDesignLayer,
  ppClass, ppCache, ppDB, ppComm, ppRelatv, MemDS, System.UITypes, ppBarCode2D, ACBrBoleto, ACBrBoletoFPDF, ACBrBase, Math;

type
  TFinanceiro_BoletoLote = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    cAceite: TRadioGroup;
    cBanco: TRxDBLookupCombo;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    cCarteira: TEdit;
    StaticText2: TStaticText;
    cCodigoCedente: TEdit;
    StaticText10: TStaticText;
    cDataAbatimento: TDateEdit;
    StaticText3: TStaticText;
    cDataDesconto: TDateEdit;
    StaticText6: TStaticText;
    cDataJuros: TDateEdit;
    StaticText7: TStaticText;
    cDataOcorrencia: TDateEdit;
    StaticText8: TStaticText;
    cDataCredito: TDateEdit;
    StaticText23: TStaticText;
    cDataProcessamento: TDateEdit;
    StaticText9: TStaticText;
    cDataProtesto: TDateEdit;
    Button1: TButton;
    StaticText13: TStaticText;
    cInstrucoes: TMemo;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    cLocalPagamento: TEdit;
    StaticText19: TStaticText;
    cValorAbatimento: TCurrencyEdit;
    StaticText20: TStaticText;
    cValorDesconto: TCurrencyEdit;
    StaticText22: TStaticText;
    cValorJurosMulta: TCurrencyEdit;
    bGerar: TButton;
    tRegistro: TMSQuery;
    StaticText5: TStaticText;
    cDataEmissao: TDateEdit;
    StaticText11: TStaticText;
    cPercentualJ: TCurrencyEdit;
    pEmpresas: TppDBPipeline;
    pBoleto: TppDBPipeline;
    rBoleto: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine8: TppLine;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel14: TppLabel;
    ppLine10: TppLine;
    ppLabel15: TppLabel;
    ppLine11: TppLine;
    ppLabel16: TppLabel;
    ppLine12: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine13: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine15: TppLine;
    ppLabel24: TppLabel;
    ppLine14: TppLine;
    ppLabel25: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel26: TppLabel;
    ppLine18: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine19: TppLine;
    lEndereco2: TppLabel;
    ppLabel36: TppLabel;
    ppLine20: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel5: TppLabel;
    lProtestar: TppLabel;
    lAbatimento: TppLabel;
    lJuros: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    lEndereco1: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel31: TppLabel;
    ppLine26: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine27: TppLine;
    ppLabel35: TppLabel;
    ppLabel40: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel41: TppLabel;
    ppLine30: TppLine;
    ppLabel42: TppLabel;
    ppLine31: TppLine;
    ppLabel43: TppLabel;
    ppLine32: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine33: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine34: TppLine;
    ppLabel51: TppLabel;
    ppLine35: TppLine;
    ppLabel52: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel53: TppLabel;
    ppLine38: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine39: TppLine;
    lEndereco4: TppLabel;
    ppLabel59: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel64: TppLabel;
    lProtestar2: TppLabel;
    lAbatimento2: TppLabel;
    lJuros2: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    lEndereco3: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    lDigitavel: TppDBText;
    ppLabel1: TppLabel;
    pLogo1: TppImage;
    pLogo2: TppImage;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText37: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    lEspecieDOC: TppLabel;
    lEspecieDOC2: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppParameterList1: TppParameterList;
    tPDF: TMSQuery;
    dstPDF: TDataSource;
    StaticText12: TStaticText;
    cPercentualJuros: TCurrencyEdit;
    StaticText16: TStaticText;
    cPercentualMulta: TCurrencyEdit;
    lContato1: TppLabel;
    lNomeContato1: TppDBText;
    lEnderecoContato1: TppLabel;
    lEnderecoContato2: TppLabel;
    lContato2: TppLabel;
    lNomeContato2: TppDBText;
    lEnderecoContato3: TppLabel;
    lEnderecoContato4: TppLabel;
    StaticText17: TStaticText;
    cConvenio: TEdit;
    lCNPJ2: TppLabel;
    lCNPJ1: TppLabel;
    cEspecie: TComboBox;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    lCNPJ3: TppLabel;
    lCNPJ4: TppLabel;
    StaticText18: TStaticText;
    cRemessa: TEdit;
    tBaixa: TMSQuery;
    StaticText21: TStaticText;
    cSelCarteira: TComboBox;
    ppDB2DBarCode1: TppDB2DBarCode;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cBancoChange(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure rBoletoBeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cEspecie1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPasta: WideString;
  end;

var
  Financeiro_BoletoLote: TFinanceiro_BoletoLote;

implementation

uses frmDados, frmFinanceiro_BoletosGerar, frmJanela_Processamento;

{$R *.dfm}

procedure TFinanceiro_BoletoLote.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      if trim(Financeiro_BoletosGerar.cBanco.Text) <> '' then begin
         cBanco.KeyValue := Dados.Bancos.fieldbyname('Codigo').asinteger;
         cBanco.Enabled  := false;
      end;
end;

procedure TFinanceiro_BoletoLote.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_BoletoLote.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Financeiro_BoletoLote.Release;
      Financeiro_BoletoLote := nil;
end;

procedure TFinanceiro_BoletoLote.FormShow(Sender: TObject);
begin
      With Dados do begin
           Configuracao.Open;
           with Bancos do begin
                sql.clear;
                sql.Add('Select * from Bancos where isnull(Desativado, 0) = 0 and isnull(Codigo_Cedente, '''') <> '''' order by Nome');
                open;
           end;
           with Empresas do begin
                sql.Clear;
                sql.Add('Select * from Empresas order by Codigo');
                open;
           end;

           cValorDesconto.Value   := 0;
           cValorJurosMulta.Value := 0;
           cEspecie.Text          := 'Duplicata Mercantil';
           cAceite.ItemIndex      := 1;

           cInstrucoes.Lines.Add(ConfiguracaoBoleto_Instrucoes.AsString);

           cEspecie.Text           := ConfiguracaoBoleto_EspecieDOC.AsString;
           cPercentualMulta.Value  := ConfiguracaoBoleto_PercentualMulta.AsCurrency;
           cPercentualJuros.Value  := ConfiguracaoBoleto_PercentualJuros.AsCurrency;
           cDataProcessamento.Date := Date();
      End;
end;

procedure TFinanceiro_BoletoLote.cBancoChange(Sender: TObject);
begin
      With Dados do begin
           cSelCarteira.Items.Clear;
           cSelCarteira.text := '';
           cSelCarteira.Items.Add(BancosCarteira.AsString);
           cSelCarteira.Items.Add(BancosCarteira2.AsString);
           cSelCarteira.Items.Add(BancosCarteira3.AsString);
           cSelCarteira.ItemIndex := 0;
           cCodigoCedente.Text  := BancosCodigo_Cedente.AsString;
           cConvenio.Text       := BancosConvenio.AsString;
           cRemessa.Text        := BancosBoletos_Remessa.AsString;
           cLocalPagamento.Text := BancosBoleto_LocalPagamento.AsString;
           If Trim(BancosBoleto_LocalPagamento.AsString) = '' then
              cLocalPagamento.Text := ConfiguracaoBoleto_LocalPagamento.AsString;
      End;
end;

procedure TFinanceiro_BoletoLote.bGerarClick(Sender: TObject);
Var
   I: Integer;
   s: WideString;
   mDig,
   mBenef,
   mArq,
   mNN
  ,mRazaoSocial
  ,mChavePix
  ,mNomeEmp
  ,CRC
  ,mValor
  ,mNumDoc
  ,mBCB
  ,mPIX
  ,mNomeMun: string;
   mSaldo: Real;
begin
      With Dados do begin
           // Consistências de campos do boleto.
           If Trim(cBanco.Text) = '' then begin
              MessageDlg('Campo inválido!'+#13+#13+'Campo "Banco" é obrigatório.', mtError, [mbOK], 0);
              cBanco.SetFocus;
              Abort;
           End;
           If BancosNumero_Banco.Value <> 341 then begin    // ITAU Não utiliza carteira.
              If Trim(cSelCarteira.Text) = '' then begin
                 MessageDlg('Campo inválido!'+#13+#13+'Campo "Carteira" é obrigatório.', mtError, [mbOK], 0);
                 cBanco.SetFocus;
                 Abort;
              End;
           End;
           If Trim(cConvenio.Text) = '' then begin
              MessageDlg('Campo inválido!'+#13+#13+'Campo "Convêncio" é obrigatório.', mtError, [mbOK], 0);
              cBanco.SetFocus;
              Abort;
           End;
           If Trim(cCodigoCedente.Text) = '' then begin
              MessageDlg('Campo inválido!'+#13+#13+'Campo "Código do Cedente" é obrigatório.', mtError, [mbOK], 0);
              cCodigoCedente.SetFocus;
              Abort;
           End;
           If (Trim(RemoveCaracter('/', '', cDataAbatimento.Text)) <> '') and (cValorAbatimento.Value = 0) then begin
              MessageDlg('Campo inválido!'+#13+#13+'Se a "Data do Abatimento" é informada o "Valor do Abatimento" é obrigatório.', mtError, [mbOK], 0);
              cValorAbatimento.SetFocus;
              Abort;
           End;
           If (Trim(RemoveCaracter('/', '', cDataAbatimento.Text)) = '') and (cValorAbatimento.Value > 0) then begin
              MessageDlg('Campo inválido!'+#13+#13+'Se o "Valor do Abatimento" é informado a "Data do Abatimento" é obrigatória.', mtError, [mbOK], 0);
              cDataAbatimento.SetFocus;
              Abort;
           End;
           If (Trim(RemoveCaracter('/', '', cDataDesconto.Text)) <> '') and (cValorDesconto.Value = 0) then begin
              MessageDlg('Campo inválido!'+#13+#13+'Se a "Data do Desconto" é informada o "Valor do Desconto" é obrigatório.', mtError, [mbOK], 0);
              cValorDesconto.SetFocus;
              Abort;
           End;
           If (Trim(RemoveCaracter('/', '', cDataDesconto.Text)) = '') and (cValorDesconto.Value > 0) then begin
              MessageDlg('Campo inválido!'+#13+#13+'Se o "Valor do Desconto" é informado a "Data do Desconto" é obrigatória.', mtError, [mbOK], 0);
              cDataDesconto.SetFocus;
              Abort;
           End;
           If DataLimpa(cDataEmissao.Text) then begin
              MessageDlg('Campo inválido!'+#13+#13+'"Data de Emissão " é obrigatória.', mtError, [mbOK], 0);
              cDataEmissao.SetFocus;
              Abort;
           End;
           If Financeiro_BoletosGerar.Grade.SelectedRows.Count <= 0 then begin
              MessageDlg('Boletos inválidos!'+#13+#13+'Nenhum título selecionado para gerar os boletos.', mtError, [mbOK], 0);
              cDataEmissao.SetFocus;
              Abort;
           End;
           
           pBoleto.DataSource       := dstPDF;
           rBoleto.AllowPrintToFile := True;
           rBoleto.DeviceType       := dtPDF;
           rBoleto.ShowPrintDialog  := False;
           rBoleto.ShowCancelDialog := False;

           // Pegando a relação de itens selecionados no grid.
           with Financeiro_BoletosGerar do begin
                for i := 0 to Pred(Grade.SelectedRows.Count) do begin
                    Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));
                    s := s + tTitulos.FieldByName('Numero').AsString + ',';
                end;
                s := '('+Copy(s, 1, Length(s)-1)+')';
           end;

           Boletos.SQL.Clear;
           Boletos.SQL.Add('delete from boletos where Financeiro_Numero in'+s);
           Boletos.SQL.Add('delete from boletos where Registro is null');
           Boletos.Execute;
           Boletos.SQL.Clear;
           Boletos.SQL.Add('select *, Nome_Sacado = (select Nome from Clientes WHERE Codigo = Sacado) from Boletos where Financeiro_Numero in'+s);
           Boletos.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('select * from PagarReceber where Numero IN'+s);
           PagarReceber.Open;
           PagarReceber.First;

           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := PagarReceber.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Gerando os boletos selecionados...';
           Janela_Processamento.Show;

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM Boletos');

           while (not PagarReceber.Eof) and (not Funcoes.Cancelado) do begin
                 Empresas.SQL.Clear;
                 Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
                 Empresas.ParamByName('pEmpresa').AsInteger := Bancos.fieldbyname('Empresa').asinteger;
                 Empresas.Open;
                 
                 mRazaoSocial := Trim(stringreplace(EmpresasRazao_Social.AsString,'/', '',[rfReplaceAll]));
                 mRazaoSocial := Trim(stringreplace(mRazaoSocial,'.', '',[rfReplaceAll]));
                 mPasta       := Trim(ConfiguracaoPasta_Boleto.AsString) + '\'+ mRazaoSocial + iif(EmpresasMatriz_Filial.AsBoolean, '_Matriz', '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger));
                 mPasta       := mPasta + iif(ConfiguracaoSeparar_BoletoBanco.AsBoolean, '\'+trim(Dados.BancosNome.AsString), '');
                 mPasta       := mPasta + iif(ConfiguracaoSeparar_BoletoData.AsBoolean, '\'+ RemoveCaracter('/', '-', DateToStr(cDataEmissao.Date)), '');

                 If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
           
                 tRegistro.Open;

                 Boletos.Append;
                         BoletosRegistro.Value := tRegistro.FieldByName('Registro').AsInteger;
                         If cAceite.ItemIndex = 0 then
                            BoletosAceite_Documento.Value := 'A'
                         else
                            BoletosAceite_Documento.Value := 'N';

                         BoletosEmissao_Boleto.Value       := 3;
                         BoletosBanco.Value                := BancosCodigo.AsInteger;
                         BoletosBanco_Numero.Value         := StrtoInt(BancosNumero_Banco.AsString+BancosDigito.AsString);
                         BoletosCarteira.AsString          := cSelCarteira.Text;
                         BoletosEspecie_Documento.AsString := cEspecie.Text;
                         BoletosEspecie_Codigo.asString    := PoeZero(2, cEspecie.ItemIndex+1);
                         BoletosNumero_Documento.asString  := ApenasNumeros(PagarReceberNumero_Documento.AsString);
                         BoletosNumero_Documento2.asString := PagarReceberNumero_Documento.AsString;

                         // Digito do Nosso Número - BANCO DO BRASIL.
                         if BancosNumero_Banco.AsInteger = 1 then begin
                            BoletosCodigo_Cedente.asString := BancosAgencia.AsString+BancosDigito_AG.AsString+'/'+cCodigoCedente.Text;
                            BoletosNosso_Numero.asString   := Trim(cConvenio.Text)+PoeZero(10, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString)));
                            if Length(trim(cConvenio.text)) = 7 then begin
                               BoletosNosso_Numero.asString := trim(cConvenio.Text)+PoeZero(10, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString)));
                            end;
                         end;

                         // Nosso Número - SANTANDER.
                         if BancosNumero_Banco.AsInteger = 33 then begin
                            BoletosCodigo_Cedente.asString   := BancosAgencia.AsString+BancosDigito_AG.AsString+'/'+cCodigoCedente.Text;
                            BoletosNumero_Documento.asString := PoeZero(12, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString)));
                            mDig                             := DigitoNossoNumero(BancosNumero_Banco.AsInteger, ApenasNumeros(PagarReceberNumero_Documento.AsString));
                            BoletosNosso_Numero.asString     := PoeZero(12, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString)))+mDig;
                         end;

                         // Digito do Nosso Número - BRADESCO.
                         if BancosNumero_Banco.AsInteger = 237 then begin
                            BoletosCodigo_Cedente.asString := BancosAgencia.AsString+'-'+BancosDigito_AG.AsString+'/'+cCodigoCedente.Text;
                            mDig                         := DigitoNossoNumero(BancosNumero_Banco.AsInteger, PoeZero(2, StrtoInt(cSelCarteira.Text))+PoeZero(11, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString))));
                            BoletosNosso_Numero.asString := cSelCarteira.Text+'/'+PoeZero(11, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString)))+'-'+mDig;
                         end;

                         // Digito do Nosso Número - ITAÚ.
                         if BancosNumero_Banco.AsInteger = 341 then begin
                            BoletosCodigo_Cedente.AsString   := BancosAgencia.AsString+BancosDigito_AG.AsString+'/'+FormatMaskText('#####-#;0', cCodigoCedente.Text);
                            BoletosNumero_Documento.AsString := PoeZero(8, StrtoInt(ApenasNumeros(PagarReceberNumero_Documento.AsString)));
                            mDig                             := DigitoNossoNumero(BancosNumero_Banco.AsInteger, Trim(BancosAgencia.AsString)+Copy(BancosConta.AsString, 1, Length(Trim(BancosConta.AsString))-1)+Trim(BancosCarteira.AsString)+BoletosNumero_Documento.AsString);
                            BoletosNosso_Numero.asString     := cSelCarteira.Text+'/'+BoletosNumero_Documento.AsString+'-'+mDig;
                         end;

                         // Digito do Nosso Número - BANESTES.
                         if BancosNumero_Banco.AsInteger = 21 then begin
                            //
                         end;
                         
                         // Digito do Nosso Número - CAIXA ECONOMICA FEDERAL.
                         if BancosNumero_Banco.AsInteger = 104 then begin
                            //
                         end;

                         // Digito do Nosso Número - SICOOB.
                         if BancosNumero_Banco.AsInteger = 756 then begin
                            //
                         end;

                         BoletosSacado.Value             := PagarReceberCliente.AsInteger;
                         BoletosLocal_Pagamento.asString := cLocalPagamento.Text;
                         BoletosData_Documento.Value     := PagarReceberData_Documento.Value;
                         BoletosData_Vencimento.Value    := PagarReceberData_Vencimento.Value;
                         BoletosData_Emissao.Value       := cDataEmissao.Date;
                         BoletosPedido.Value             := iif(trim(PagarReceberFiscal.asstring) <> '', trim(PagarReceberFiscal.asstring), 'M'+PagarReceberNumero.asstring);

                         if Configuracao.FieldByName('Boleto_MultaDias').asinteger > 0 then begin
                            BoletosData_Multa.Value := cDataEmissao.Date + Configuracao.FieldByName('Boleto_MultaDias').asinteger;
                         end;

                         If Trim(RemoveCaracter('/', '', cDataCredito.Text))       <> '' then BoletosData_Credito.Value       := cDataCredito.Date;
                         If Trim(RemoveCaracter('/', '', cDataAbatimento.Text))    <> '' then BoletosData_Abatimento.Value    := cDataAbatimento.Date;
                         If Trim(RemoveCaracter('/', '', cDataDesconto.Text))      <> '' then BoletosData_Desconto.Value      := cDataDesconto.Date;
                         If Trim(RemoveCaracter('/', '', cDataJuros.Text))         <> '' then BoletosData_Juros.Value         := cDataJuros.Date;
                         If Trim(RemoveCaracter('/', '', cDataOcorrencia.Text))    <> '' then BoletosData_Ocorrencia.Value    := cDataOcorrencia.Date;
                         If Trim(RemoveCaracter('/', '', cDataProcessamento.Text)) <> '' then BoletosData_Processamento.Value := cDataProcessamento.Date;
                         If Trim(RemoveCaracter('/', '', cDataProtesto.Text))      <> '' then BoletosData_Protesto.Value      := cDataProtesto.Date;

                         tBaixa.SQL.Clear;
                         tBaixa.SQL.Add('SELECT ISNULL(SUM(Valor), 0) AS Total_Baixado');
                         tBaixa.SQL.Add('FROM   PagarReceberBaixas');
                         tBaixa.SQL.Add('WHERE  Numero = :pNumero');
                         tBaixa.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
                         tBaixa.Open;

                         mSaldo := PagarReceberValor_Total.AsCurrency - tBaixa.FieldByName('Total_Baixado').AsCurrency;

                         BoletosValor_Documento.Value       := mSaldo;
                         BoletosValor_Abatimento.Value      := cValorAbatimento.Value;
                         BoletosValor_Desconto.Value        := cValorDesconto.Value;
                         BoletosPercentual_Juros.Value      := cPercentualJuros.Value;
                         BoletosPercentual_Multa.Value      := cPercentualMulta.Value;
                         BoletosValor_Juros.Value           := cValorJurosMulta.Value;
                         BoletosInstrucoes.asString         := cInstrucoes.Text;
                         BoletosFinanceiro_Numero.Value     := PagarReceberNumero.Value;
                         BoletosRetorno.Value               := false;
                         BoletosValor_MultaVencimento.Value := Percentual(mSaldo, cPercentualMulta.Value);
                         BoletosValor_JurosDia.Value        := Percentual(mSaldo, cPercentualJuros.Value);
                         BoletosNumero_Remessa.Value        := iif(BancosBoletos_Remessa.AsInteger < 999, BancosBoletos_Remessa.AsInteger + 1, 1);

                         lDigitavel.DisplayFormat := '99999.99999 99999.999999 99999.999999 9 99999999999999;0';

                         // Codigo de Barras / Linha Digitavel - BANCO DO BRASIL.
                         If BancosNumero_Banco.Value = 1 then begin
                            BoletosCodigo_Barra.AsString    := CodBarrasBB(BancosNumero_Banco.AsString, BancosConta.AsString, '9', BancosAgencia.AsString, cSelCarteira.Text, PagarReceberNumero_Documento.AsString, PagarReceberData_Vencimento.AsString, BancosConvenio.AsString, mSaldo);
                            BoletosLinha_Digitavel.AsString := DigitavelBB(BancosNumero_Banco.AsString, BancosConta.AsString, '9', BancosAgencia.AsString, cSelCarteira.Text, PagarReceberNumero_Documento.AsString, PagarReceberData_Vencimento.AsString, BancosConvenio.AsString, mSaldo);
                         End;
                         // Codigo de Barras / Linha Digitavel - SANTANDER.
                         If BancosNumero_Banco.Value = 33 then begin
                            BoletosCodigo_Barra.AsString    := CodBarrasSantander(PoeZero(3,BancosNumero_Banco.AsInteger), BancosCodigo_Cedente.AsString, '9', BoletosNosso_Numero.AsString, PagarReceberData_Vencimento.AsString, BancosCarteira.AsString, mSaldo);
                            BoletosLinha_Digitavel.AsString := DigitavelSantander(PoeZero(3,BancosNumero_Banco.AsInteger), BancosCodigo_Cedente.AsString, '9', BoletosNosso_Numero.AsString, BancosCarteira.AsString, PagarReceberData_Vencimento.AsString, mSaldo);
                         End;
                         // Codigo de Barras / Linha Digitavel - BRADESCO.
                         If BancosNumero_Banco.Value = 237 then begin
                            BoletosCodigo_Barra.AsString    := CodBarrasBradesco(BancosNumero_Banco.AsString, BancosConta.AsString, '9', BancosAgencia.AsString, cSelCarteira.Text, PagarReceberNumero_Documento.AsString, PagarReceberData_Vencimento.AsString, mSaldo);
                            BoletosLinha_Digitavel.AsString := DigitavelBradesco(BancosNumero_Banco.AsString, BancosConta.AsString, '9', BancosAgencia.AsString, cSelCarteira.Text, PagarReceberNumero_Documento.AsString, PagarReceberData_Vencimento.AsString, mSaldo);
                         End;
                         // Codigo de Barras / Linha Digitavel - ITAÚ.
                         If BancosNumero_Banco.Value = 341 then begin
                            mNN := ApenasNumeros(Copy(BoletosNosso_Numero.AsString , Pos('/',BoletosNosso_Numero.AsString )+1, 8));
                            BoletosCodigo_Barra.AsString    := CodBarrasItau(BancosNumero_Banco.AsString, BancosConta.AsString, '9', BancosAgencia.AsString, '27', cSelCarteira.Text, mNN, PagarReceberData_Vencimento.AsString, mSaldo, 'CB');
                            BoletosLinha_Digitavel.AsString := CodBarrasItau(BancosNumero_Banco.AsString, BancosConta.AsString, '9', BancosAgencia.AsString, '27', cSelCarteira.Text, mNN, PagarReceberData_Vencimento.AsString, mSaldo, 'LD');
                         End;
                         // Codigo de Barras / Linha Digitavel - BANESTES.
                         If BancosNumero_Banco.Value = 21 then begin
                            BoletosCodigo_Barra.AsString    := CodBarrasBanestes(BancosNumero_Banco.AsString, BancosConta.AsString, '9', PagarReceberNumero_Documento.AsString, PagarReceberData_Vencimento.AsString, mSaldo);
                            BoletosLinha_Digitavel.AsString := DigitavelBanestes(BancosNumero_Banco.AsString, BancosConta.AsString, '9', PagarReceberNumero_Documento.AsString, PagarReceberData_Vencimento.AsString, mSaldo);
                         End;
                         // Codigo de Barras / Linha Digitavel - CAIXA ECONÔMICA FEDERAL.
                         If BancosNumero_Banco.Value = 104 then begin
                            //
                         End;

                         // Gerando o QRCode se informada a chave pix no cadastro do banco.
                         if trim(Bancos.FieldByName('Chave_PIX').asstring) <> '' then begin
                            mNomeEmp := trim(copy(Empresas.FieldByName('Razao_Social').AsString, 1, 25));
                            mNomeMun := trim(RemoveAcentos(copy(Municipios.FieldByName('Nome').AsString, 1, 15)));
                            mValor   := trim(stringreplace(currtostr(roundto(mSaldo, -2)), ',', '.', [rfReplaceAll]));
                            mNumDoc  := ApenasNumeros(PagarReceberNumero_Documento.AsString);
                            mBCB     := 'br.gov.bcb.pix';
                            mPIX     := Bancos.FieldByName('Chave_PIX').AsString;

                            mChavePix := concat( '0002', '01'
                                                ,'0102', '12'
                                                ,'26', poezero(2, length(mBCB)+Length(mPIX)+8)
                                                ,'00', poezero(2, Length(mBCB)), mBCB
                                                ,'01', poezero(2, Length(mPIX)), mPIX
                                                ,'5204', '0000'
                                                ,'5303', '986'
                                                ,'54', poezero(2, Length(mValor)), mValor
                                                ,'5802', 'BR'
                                                ,'59', poezero(2, length(mNomeEmp)), mNomeEmp
                                                ,'60', poezero(2, Length(mNomeMun)), mNomeMun
                                                ,'62', poezero(2, length(mNumDoc)+4), '05', poezero(2, length(mNumDoc)), mNumDoc
                                                ,'6304'
                                               );
                            CRC                := CalcCRC16Pix(mChavePix);
                            mChavePix          := Concat(mChavePIX, CRC);
                            BoletosQRCode.Value := mChavePIX;            
                         end;
                         BoletosEmail_Enviado.Value := false;
                 Boletos.Post;
                 tRegistro.Close;

                 // Registra o numero do boleto no titulo.
                 PagarReceber.Edit;
                              PagarReceberBoleto_Numero.Value := BoletosRegistro.Value;
                 PagarReceber.Post;

                 // Gera os PDF's dos boletos.
                 tPDF.SQL.Clear;
                 tPDF.SQL.Add('SELECT *,');
                 tPDF.SQL.Add('       Beneficiario        = (SELECT Nome         FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Nome                = (SELECT Nome_Boleto  FROM Bancos   WHERE Codigo = Banco ),');
                 If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then
                    tPDF.SQL.Add('       Imagem              = (SELECT Numero_Banco FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = Banco),')
                 else
                    tPDF.SQL.Add('       Imagem              = (SELECT Numero_Banco FROM Bancos   WHERE Codigo = Banco),');

                 tPDF.SQL.Add('       Cliente_Rua         = (SELECT Rua          FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_Numero      = (SELECT Rua_Numero   FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_Complemento = (SELECT Complemento  FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_Bairro      = (SELECT Bairro       FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_Municipio   = (SELECT Municipio    FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_CEP         = (SELECT CEP          FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_Estado      = (SELECT Estado       FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       Cliente_CNPJ        = (SELECT isnull(CNPJ,'''')+isnull(CPF,'''') FROM Clientes WHERE Codigo = Sacado),');
                 tPDF.SQL.Add('       QRCode');
                 tPDF.SQL.Add('FROM   Boletos');
                 tPDF.SQL.Add('WHERE  Registro = :pRegistro');
                 tPDF.ParamByName('pRegistro').AsInteger := Boletos.FieldByName('Registro').AsInteger;
                 //tPDF.SQL.SaveToFile('c:\temp\Boletos_tPDF.sql');
                 tPDF.Open;

                 mBenef := RemoveCaracter('.', '', tPDF.FieldByName('Beneficiario').AsString);
                 mBenef := RemoveCaracter('/', '', mBenef);
                 mBenef := RemoveCaracter('\', '', mBenef);

                 mArq                 := mBenef + '_Boleto '+ApenasNumeros(tPDF.FieldByName('Numero_Documento').AsString)+'_Titulo '+BoletosFinanceiro_Numero.AsString+'.pdf';
                 rBoleto.TextFileName := mPasta + '\' + mArq;
                 rBoleto.Print;
                 rBoleto.FreeOnRelease;
                 rBoleto.Reset;

                 tPDF.Close;

                 PagarReceber.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
           
           Bancos.Edit;
                  Dados.BancosBoletos_Remessa.Value := Dados.BancosBoletos_Remessa.Value + 1;
           Bancos.Post;          

           Janela_Processamento.Close;
           Showmessage('Geração dos Boletos concluída!');
      End;
end;

procedure TFinanceiro_BoletoLote.rBoletoBeforePrint(Sender: TObject);
Var
    mBMP: String;
    mJPG: String;
begin
     mBMP := ExtractFilePath(Application.ExeName)+'Imagens\Bancos\'+tPDF.FieldByName('Imagem').AsString+'.BMP';
     mJPG := ExtractFilePath(Application.ExeName)+'Imagens\Bancos\'+tPDF.FieldByName('Imagem').AsString+'.JPG';
     If FileExists(mBMP) then begin
        pLogo1.Picture.LoadFromFile(mBMP);
     end else begin
        If FileExists(mJPG) then begin
           pLogo1.Picture.LoadFromFile(mJPG);
        End;
     End;
     pLogo2.Picture.Assign(pLogo1.Picture);

     With Dados do begin
          lContato1.Visible         := ConfiguracaoBoleto_Contato.AsBoolean;
          lContato2.Visible         := lContato1.Visible;
          lNomeContato1.Visible     := lContato1.Visible;
          lNomeContato2.Visible     := lContato1.Visible;
          lEnderecoContato1.Visible := lContato1.Visible;
          lEnderecoContato2.Visible := lContato1.Visible;
          lEnderecoContato3.Visible := lContato1.Visible;
          lEnderecoContato4.Visible := lContato1.Visible;
          lCNPJ1.Visible            := lContato1.Visible;
          lCNPJ2.Visible            := lContato1.Visible;
     End;
end;

procedure TFinanceiro_BoletoLote.ppDetailBand1BeforePrint(Sender: TObject);
begin
      With Dados do begin
           lProtestar.Caption   := '';
           lAbatimento.Caption  := '';
           lJuros.Caption       := '';
           lProtestar2.Caption  := '';
           lAbatimento2.Caption := '';
           lJuros2.Caption      := '';

           If RemoveCaracter('/', '', tPDF.FieldByName('Data_Protesto').AsString) <> '' then
              lProtestar.Caption  := 'Protestar em '            + tPDF.FieldByName('Data_Protesto').AsString;
           If RemoveCaracter('/', '', tPDF.FieldByName('Data_Abatimento').AsString) <> '' then
              lAbatimento.Caption := 'Conceder abatimento de R$'+ FormatFloat(',##0.00', tPDF.FieldByName('Valor_Abatimento').AsCurrency) +' para pagamento até '+tPDF.FieldByName('Data_Abatimento').AsString;
           If RemoveCaracter('/', '', tPDF.FieldByName('Data_Juros').AsString)      <> '' then
              lJuros.Caption      := 'Cobrar juros de R$'       + FormatFloat(',##0.00', tPDF.FieldByName('Valor_Juros').AsCurrency) +' por dia de antecipação para pagamento a partir de '+tPDF.FieldByName('Data_Juros').AsString;
           If cPercentualMulta.Value > 0 then begin
              lProtestar.Caption := 'Após o vencimento Multa de '+FormatFloat('R$ ,##0.00', tPDF.FieldByName('Valor_MultaVencimento').AsCurrency);
           End;
           If cPercentualJuros.Value > 0 then begin
              lProtestar.Caption := lProtestar.Caption + ' e Juros de '+FormatFloat('R$ ,##0.00', tPDF.FieldByName('Valor_JurosDia').AsCurrency)+' ao dia.';
           End;

           lProtestar2.Caption  := lProtestar.Caption;
           lAbatimento2.Caption := lAbatimento.Caption;
           lJuros2.Caption      := lJuros.Caption;

           lEspecieDOC.Caption  := tPDF.FieldByName('Especie_Documento').AsString;
           lEspecieDOC2.Caption := tPDF.FieldByName('Especie_Documento').AsString;

           If tPDF.FieldByName('Especie_Documento').AsString = 'Duplicata Mercantil' then begin
              lEspecieDOC.Caption  := 'DM';
              lEspecieDOC2.Caption := 'DM';
           End;
           If tPDF.FieldByName('Especie_Documento').AsString = 'Nota Promissória' then begin
              lEspecieDOC.Caption  := 'NP';
              lEspecieDOC2.Caption := 'NP';
           End;

           lEnderecoContato1.Caption := Trim(Empresas.FieldByName('Rua').AsString) + ', nº '+Trim(Empresas.FieldByName('Rua_Numero').AsString)+', '+Empresas.FieldByName('Complemento').AsString+
                                        FormatMaskText('99999-999;0', Empresas.FieldByName('CEP').AsString) + '  '+#149+'  ' + Trim(Empresas.FieldByName('Bairro').AsString)+ '  '+#149+'  '+ Municipios.FieldByName('Nome').AsString+' - '+Empresas.FieldByName('Estado').AsString;
           lEnderecoContato2.Caption := EmpresasEMail.Text;
           If EmpresasSite.AsString <> '' then lEnderecoContato2.Caption := lEnderecoContato2.Caption +' / '+EmpresasSite.AsString;
           lEnderecoContato3.Caption := lEnderecoContato1.Caption;
           lEnderecoContato4.Caption := lEnderecoContato2.Caption;

           lCNPJ1.Caption     := 'CNPJ: '+ FormatMaskText('##.###.###/####-##;0', EmpresasCNPJ.AsString);
           lCNPJ2.Caption     := lCNPJ1.Caption; 
           lCNPJ3.Caption     := lCNPJ1.Caption;
           lCNPJ4.Caption     := lCNPJ1.Caption;
           lEndereco1.Caption := Trim(tPDF.FieldByName('Cliente_Rua').AsString) + ', nº '+Trim(tPDF.FieldByName('Cliente_Numero').AsString)+', '+tPDF.FieldByName('Cliente_Complemento').AsString;
           lEndereco2.Caption := FormatMaskText('99999-999;0', tPDF.FieldByName('Cliente_CEP').AsString) + '  '+#149+'  ' + Trim(tPDF.FieldByName('Cliente_Bairro').AsString)+ '  '+#149+'  '+ tPDF.FieldByName('Cliente_Municipio').AsString+' - '+tPDF.FieldByName('Cliente_Estado').AsString;
           lEndereco3.Caption := lEndereco1.Caption;
           lEndereco4.Caption := lEndereco2.Caption;
      End;
end;

procedure TFinanceiro_BoletoLote.cEspecie1Change(Sender: TObject);
begin
     cEspecie.Text := cEspecie.Text;
end;



end.
