unit frmFinanceiro_SPCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls,
  RxLookup, Mask, DBCtrls, Funcoes, DateUtils, ppDBPipe, ppVar, ppBands, myChkBox, ppCtrls, ppMemo, ppPrnabl, system.UITypes,
  ppReport, ppSubRpt, IniFiles, RxCurrEdit, RxToolEdit, ppDesignLayer, MemDS, ppDB, ppParameter, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TFinanceiro_SPCheque = class(TForm)
    Panel1: TPanel;
    bCancelar: TButton;
    bImprimir: TBitBtn;
    lData: TStaticText;
    lBanco: TStaticText;
    cBanco: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    Shape7: TShape;
    Shape6: TShape;
    DBText1: TDBText;
    DBText2: TDBText;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    LogoBanco: TImage;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    DBEdit4: TDBEdit;
    StaticText6: TStaticText;
    DBEdit5: TDBEdit;
    StaticText7: TStaticText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    DBEdit8: TDBEdit;
    StaticText10: TStaticText;
    DBEdit9: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    DBEdit11: TDBEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    lDia: TEdit;
    lMes: TEdit;
    lAno: TEdit;
    lExtenso1: TEdit;
    lExtenso2: TEdit;
    lValor: TCurrencyEdit;
    lCheque: TEdit;
    lCidade: TEdit;
    rSP: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBImage1: TppDBImage;
    rTitulo: TppLabel;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    rValorCheque: TppVariable;
    rExtenso: TppMemo;
    rNominal: TppLabel;
    rData: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    rCopiaNumero: TppLabel;
    ppLabel3: TppLabel;
    rVisadoSim: TmyCheckBox;
    rVisadoNao: TmyCheckBox;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    rCruzadoSim: TmyCheckBox;
    ppLabel8: TppLabel;
    rCruzadoNao: TmyCheckBox;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText4: TppDBText;
    ppLabel12: TppLabel;
    ppLine6: TppLine;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppLabel15: TppLabel;
    ppLine7: TppLine;
    rAssinatura1: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel36: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine35: TppLine;
    ppLine36: TppLine;
    pEmpresas: TppDBPipeline;
    pBancos: TppDBPipeline;
    StaticText20: TStaticText;
    cCidade: TEdit;
    lNominal: TEdit;
    cCheque: TEdit;
    gItens: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppTitleBand1: TppTitleBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    pItens: TppDBPipeline;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel19: TppLabel;
    ppDBText5: TppDBText;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    ppLabel20: TppLabel;
    ppDBText10: TppDBText;
    ppLine9: TppLine;
    rAssinatura2: TppLabel;
    ppLine10: TppLine;
    StaticText21: TStaticText;
    cAssinatura1: TEdit;
    cAssinatura2: TEdit;
    StaticText22: TStaticText;
    cNominal: TEdit;
    cVisado: TCheckBox;
    cCruzado: TCheckBox;
    tTitulos: TMSQuery;
    bOK: TBitBtn;
    dstTitulos: TDataSource;
    bSair: TButton;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine8: TppLine;
    rVisto1: TppLabel;
    rVisto2: TppLabel;
    StaticText23: TStaticText;
    cVisto1: TEdit;
    cVisto2: TEdit;
    lDataPrevisao: TStaticText;
    cDataCheque: TDateEdit;
    StaticText24: TStaticText;
    cSolicitacao: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cCidadeChange(Sender: TObject);
    procedure cBancoChange(Sender: TObject);
    procedure cChequeChange(Sender: TObject);
    procedure cNominalChange(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure rSPBeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cDataChequeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_SPCheque: TFinanceiro_SPCheque;

implementation

uses frmDados, frmMenu_Principal, frmFinanceiro_SolicitacaoPagamentos;

{$R *.dfm}

procedure TFinanceiro_SPCheque.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_SPCheque.FormShow(Sender: TObject);
Var
    mExtenso : WideString;
    mLetra   : String;
    aINI     : TIniFile;
begin
     cSolicitacao.Value := Financeiro_SolicitacaoPagamentos.tSolicitacao.FieldByName('Solicitacao').AsInteger+1;
     With Dados do begin
          Bancos.SQL.Clear;
          Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
          Bancos.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
          cAssinatura1.Text := aINI.ReadString('IMPRESSAO_FINANCEIROS_SP', 'Assinatura1', Trim(EmpresasDiretor.AsString));
          cAssinatura2.Text := aINI.ReadString('IMPRESSAO_FINANCEIROS_SP', 'Assinatura2', Trim(EmpresasResponsavel.AsString));
          cVisto1.Text      := aINI.ReadString('IMPRESSAO_FINANCEIROS_SP', 'Visto1', '');
          cVisto2.Text      := aINI.ReadString('IMPRESSAO_FINANCEIROS_SP', 'Visto2', '');

          If Trim(cAssinatura1.Text) = Trim(cAssinatura2.Text) then cAssinatura2.Clear;
          If Trim(cVisto1.Text) = Trim(cVisto2.Text) then cVisto2.Clear;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Codigo = :pCodigo)');
          Municipios.ParamByName('pCodigo').AsString := Dados.EmpresasMunicipio_Codigo.AsString;
          Municipios.Open;

          Configuracao.Open;

          cCidade.Text := Trim(Municipios.FieldByName('Nome').AsString);

          If lValor.Value > 0 then begin
             mExtenso       := ValorExtenso(lValor.Value, true);
             mLetra         := UpperCase(Copy(mExtenso, 1, 1));
             mExtenso       := '('+mLetra+(Trim(Copy(mExtenso,2,223)))+')';
             lExtenso1.Text := Trim(Copy(mExtenso,   1, 104));
             lExtenso2.Text := Trim(Copy(mExtenso, 105, 120));
          End;
          cDataCheque.Date := Date;
          lDia.Text        := InttoStr(DayOf(cDataCheque.Date));
          lMes.Text        := NomeMes(MonthOf(cDataCheque.Date));
          lAno.Text        := InttoStr(YearOf(cDataCheque.Date));
     End;
end;

procedure TFinanceiro_SPCheque.bCancelarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente cancelar a geração desta SP?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Close;
      End;
end;

procedure TFinanceiro_SPCheque.bImprimirClick(Sender: TObject);
Var
    mLista: WideString;
    mSel: Integer;
begin
      Screen.Cursor := crSQLWait;

      // Pegando os números selecionados no grid para imprimir.
      mLista := '(';
      With Financeiro_SolicitacaoPagamentos.Grade do begin
           For mSel := 0 to SelectedRows.Count-1 do begin
               DataSource.DataSet.GotoBookMark((SelectedRows.Items[mSel]));
               mLista := mLista + DataSource.DataSet.FieldByName('Numero').AsString+',';
           End;
           mLista := Copy(mLista, 1, Length(mLista)-1)+')';
      End;

      tTitulos.SQL.Clear;
      tTitulos.SQL.Add('SELECT Numero,');
      tTitulos.SQL.Add('       Classificacao,');
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tTitulos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE(Classificacao = CF.Codigo)) AS Descricao,');
      end else begin
         tTitulos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(Classificacao = CF.Codigo)) AS Descricao,');
      End;
      tTitulos.SQL.Add('       CASE');
      tTitulos.SQL.Add('           WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores   WHERE(Fornecedor = Fornecedores.Codigo))');
      tTitulos.SQL.Add('           WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes       WHERE(Cliente    = Clientes.Codigo))');
      tTitulos.SQL.Add('           WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE(Orgao = Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo))');
      tTitulos.SQL.Add('       END AS Beneficiario,');
      tTitulos.SQL.Add('       Processo,');
      tTitulos.SQL.Add('       Numero_Documento,');
      tTitulos.SQL.Add('       Parcela,');
      tTitulos.SQL.Add('       Valor_Operacao,');
      tTitulos.SQL.Add('       Cheque_Assinado,');
      tTitulos.SQL.Add('       Cheque_Nominal,');
      tTitulos.SQL.Add('       Cheque_Visado,');
      tTitulos.SQL.Add('       Cheque_Cruzado');
      tTitulos.SQL.Add('FROM   PagarReceber');
      tTitulos.SQL.Add('WHERE  Numero IN'+mLista);
      tTitulos.SQL.Add('ORDER  BY Data_Vencimento');
      //tTitulos.SQL.SaveToFile('c:\temp\Solicitacao_Pagamento.SQL');
      tTitulos.Open;

      Screen.Cursor := crDefault;

      rSP.Print;
      rSP.Reset;
end;

procedure TFinanceiro_SPCheque.cCidadeChange(Sender: TObject);
begin
      lCidade.Text := cCidade.Text;
end;

procedure TFinanceiro_SPCheque.cBancoChange(Sender: TObject);
Var
    mNome    : String;
begin
      Cursor := crSQLWait;
      LogoBanco.Picture := nil;
      mNome := ExtractFilePath(Application.ExeName)+'Imagens\Bancos\';
      If Pos('BRADESCO' , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BRADESCO.BMP';
      If Pos('BRASIL'   , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BB.BMP';
      If Pos('CAIXA'    , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'CAIXA.BMP';
      If Pos('BMG'      , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BMG.BMP';
      If Pos('SANTANDER', Dados.BancosNome.Value) <> 0 then mNome := mNome + 'SANTANDER.BMP';
      If Pos('SAFRA'    , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'SAFRA.BMP';
      If Pos('BANESTES' , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BANESTES.BMP';
      If Pos('BOSTON'   , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BOSTON.BMP';
      If Pos('HSBC'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'HSBC.BMP';
      If Pos('ITAU'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'ITAU.BMP';
      If Pos('MERCANTIL', Dados.BancosNome.Value) <> 0 then mNome := mNome + 'MERCANTIL.BMP';
      If Pos('REAL'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'REAL.BMP';
      If Pos('UNIBANCO' , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'UNIBANCO.BMP';

      If FileExists(mNome) then LogoBanco.Picture.LoadFromFile(mNome);

      lCheque.Text := cCheque.Text;
      bOK.Enabled   := (Trim(cCheque.Text) <> '') and (Trim(cBanco.Text) <> '') and (Trim(RemoveCaracter('/', '', cDataCheque.Text)) <> '');
end;

procedure TFinanceiro_SPCheque.cChequeChange(Sender: TObject);
begin
     lCheque.Text := cCheque.Text;
     bOK.Enabled   := (Trim(cCheque.Text) <> '') and (Trim(cBanco.Text) <> '') and (Trim(RemoveCaracter('/', '', cDataCheque.Text)) <> '');
end;

procedure TFinanceiro_SPCheque.cNominalChange(Sender: TObject);
begin
     lNominal.Text := cNominal.Text;
end;

procedure TFinanceiro_SPCheque.bOKClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      tTitulos.SQL.Clear;
      tTitulos.SQL.Add('UPDATE PagarReceber SET Solicitacao_Pgto = :pSolicitacao,');
      tTitulos.SQL.Add('                        Cheque_Nominal   = :pNominal,');
      tTitulos.SQL.Add('                        Cheque_Assinado  = :pAssinado,');
      tTitulos.SQL.Add('                        Cheque_Assinado2 = :pAssinado2,');
      tTitulos.SQL.Add('                        Cheque_Visado    = :pVisado,');
      tTitulos.SQL.Add('                        Cheque_Cruzado   = :pCruzado,');
      tTitulos.SQL.Add('                        Forma_Tipo       = :pForma,');
      tTitulos.SQL.Add('                        Numero_FormaTipo = :pNumeroForma,');
      tTitulos.SQL.Add('                        Banco            = :pBanco');
      tTitulos.SQL.Add('WHERE Numero IN('+Financeiro_SolicitacaoPagamentos.mNumeros+')');
      tTitulos.ParamByName('pSolicitacao').AsInteger := Financeiro_SolicitacaoPagamentos.tSolicitacao.FieldByName('Solicitacao').AsInteger+1;
      tTitulos.ParamByName('pNominal').AsString      := cNominal.Text;
      tTitulos.ParamByName('pAssinado').AsString     := cAssinatura1.Text;
      tTitulos.ParamByName('pAssinado2').AsString    := cAssinatura2.Text;
      tTitulos.ParamByName('pCruzado').AsBoolean     := cCruzado.Checked;
      tTitulos.ParamByName('pVisado').AsBoolean      := cVisado.Checked;
      tTitulos.ParamByName('pForma').AsString        := 'CHEQUE';
      tTitulos.ParamByName('pNumeroForma').AsString  := cCheque.Text;
      tTitulos.ParamByName('pBanco').AsInteger       := Dados.BancosCodigo.AsInteger;
      tTitulos.Execute;
      
      tTitulos.SQL.Clear;
      tTitulos.SQL.Add('SELECT');
      tTitulos.SQL.Add('      Numero,');
      tTitulos.SQL.Add('      Classificacao,');
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tTitulos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE(Classificacao = CF.Codigo)) AS Descricao,');
      end else begin
         tTitulos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(Classificacao = CF.Codigo)) AS Descricao,');
      End;

      tTitulos.SQL.Add('      CASE');
      tTitulos.SQL.Add('          WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores   WHERE(Fornecedor = Fornecedores.Codigo))');
      tTitulos.SQL.Add('          WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes       WHERE(Cliente    = Clientes.Codigo))');
      tTitulos.SQL.Add('          WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE(Orgao = Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo))');
      tTitulos.SQL.Add('      END AS Beneficiario,');
      tTitulos.SQL.Add('      Processo,');
      tTitulos.SQL.Add('      Numero_Documento,');
      tTitulos.SQL.Add('      Parcela,');
      tTitulos.SQL.Add('      Valor_Operacao,');
      tTitulos.SQL.Add('      Cheque_Assinado,');
      tTitulos.SQL.Add('      Cheque_Nominal,');
      tTitulos.SQL.Add('      Cheque_Visado,');
      tTitulos.SQL.Add('      Cheque_Cruzado');
      tTitulos.SQL.Add('FROM  PagarReceber');
      tTitulos.SQL.Add('WHERE (Solicitacao_Pgto = :pSolicitacao)');
      tTitulos.SQL.Add('ORDER BY Data_Vencimento');
      tTitulos.ParamByName('pSolicitacao').AsInteger := Financeiro_SolicitacaoPagamentos.tSolicitacao.FieldByName('Solicitacao').AsInteger+1;
      tTitulos.Open;
      Screen.Cursor := crDefault;

      bImprimir.Enabled := true;
      bCancelar.Enabled := false;
      bOK.Enabled       := false;

      rSP.Print;
      rSP.Reset;
end;

procedure TFinanceiro_SPCheque.bSairClick(Sender: TObject);
begin
      If bCancelar.Enabled = true then begin
         If MessageDlg('Deseja realmente cancelar a geração desta SP?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            Close;
         End;
      end else
         Close;
end;

procedure TFinanceiro_SPCheque.ppDetailBand1BeforePrint(Sender: TObject);
begin
     rExtenso.Lines.Clear;
     rExtenso.Lines.Add(lExtenso1.Text+lExtenso2.Text+' '+Replicate('*', 173-(Length(Trim(lExtenso1.Text))+Length(Trim(lExtenso2.Text))) ));
     rValorCheque.Value  := lValor.Value;
     rNominal.Text       := tTitulos.FieldByName('Cheque_Nominal').AsString;
     rData.Text          := lCidade.Text + Replicate(' ', 20-Length(lCidade.Text))+lDia.Text + '     ' + lMes.Text + Replicate(' ', 15-Length(lMes.Text)) + lAno.Text;
     rCopiaNumero.Text   := cCheque.Text;
     rVisadoSim.Checked  := tTitulos.FieldByName('Cheque_Visado').AsBoolean;
     rVisadoNao.Checked  := not tTitulos.FieldByName('Cheque_Visado').AsBoolean;
     rCruzadoSim.Checked := tTitulos.FieldByName('Cheque_Cruzado').AsBoolean;
     rCruzadoNao.Checked := not tTitulos.FieldByName('Cheque_Cruzado').AsBoolean;
     rAssinatura1.Text   := cAssinatura1.Text;
     rAssinatura2.Text   := cAssinatura2.Text;
     rVisto1.Text        := cVisto1.Text;
     rVisto2.Text        := cVisto2.Text;
end;

procedure TFinanceiro_SPCheque.rSPBeforePrint(Sender: TObject);
begin
     rTitulo.Text := 'Solicitação de Pagamentos Nº ' + PoeZero(6, Financeiro_SolicitacaoPagamentos.tSolicitacao.FieldByName('Solicitacao').AsInteger+1);
end;

procedure TFinanceiro_SPCheque.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString('IMPRESSAO_FINANCEIROS_SP', 'Assinatura1', cAssinatura1.Text);
      aINI.WriteString('IMPRESSAO_FINANCEIROS_SP', 'Assinatura2', cAssinatura2.Text);
      aINI.WriteString('IMPRESSAO_FINANCEIROS_SP', 'Visto1'     , cVisto1.Text);
      aINI.WriteString('IMPRESSAO_FINANCEIROS_SP', 'Visto2'     , cVisto2.Text);
      aINI.Free;
      Financeiro_SPCheque.Release;
      Financeiro_SPCheque := nil;
end;

procedure TFinanceiro_SPCheque.cDataChequeChange(Sender: TObject);
begin
      lDia.Text   := InttoStr(DayOf(cDataCheque.Date));
      lMes.Text   := NomeMes(MonthOf(cDataCheque.Date));
      lAno.Text   := InttoStr(YearOf(cDataCheque.Date));
     bOK.Enabled   := (Trim(cCheque.Text) <> '') and (Trim(cBanco.Text) <> '') and (Trim(RemoveCaracter('/', '', cDataCheque.Text)) <> '');
end;

end.
