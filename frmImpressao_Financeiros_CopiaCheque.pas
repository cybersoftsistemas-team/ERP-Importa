unit frmImpressao_Financeiros_CopiaCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup,
  DBCtrls, Funcoes, DateUtils, ppDBPipe, ppVar, ppBands, myChkBox, ppCtrls, ppMemo, ppPrnabl, ppReport, ppSubRpt,
  Mask, RxCurrEdit, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS, RxToolEdit;

type
  TImpressao_Financeiros_CopiaCheque = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
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
    BitBtn1: TBitBtn;
    tTotal: TMSQuery;
    rCopiaCheque: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
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
    ppLine8: TppLine;
    rAssinatura1: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel36: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine35: TppLine;
    ppLine36: TppLine;
    pEmpresas: TppDBPipeline;
    pBancos: TppDBPipeline;
    tPagarReceber: TMSQuery;
    StaticText20: TStaticText;
    cCidade: TEdit;
    tCheque: TMSQuery;
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
    dstPagarReceber: TDataSource;
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
    iLogo: TppImage;
    Image3: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cBancoChange(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cCidadeChange(Sender: TObject);
    procedure rCopiaChequeBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Financeiros_CopiaCheque: TImpressao_Financeiros_CopiaCheque;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Financeiros_CopiaCheque.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Financeiros_CopiaCheque.FormShow(Sender: TObject);
begin
     With Dados do begin
          Bancos.SQL.Clear;
          Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
          Bancos.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
          Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          cAssinatura1.Text := Trim(EmpresasDiretor.AsString);
          cAssinatura2.Clear;
          If Trim(EmpresasDiretor.AsString) <> Trim(EmpresasResponsavel.AsString) then
             cAssinatura2.Text := Trim(EmpresasResponsavel.AsString);

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Codigo = :pCodigo)');
          Municipios.ParamByName('pCodigo').AsString := Dados.EmpresasMunicipio_Codigo.AsString;
          Municipios.Open;

          cCidade.Text := Trim(Municipios.FieldByName('Nome').AsString);
     End;
end;

procedure TImpressao_Financeiros_CopiaCheque.cBancoChange(Sender: TObject);
Var
    mNome    : String;
    mExtenso : WideString;
    mLetra   : String;
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

      With Dados do Begin
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Valor_Operacao) AS Valor_Total FROM PagarReceber');
           tTotal.SQL.Add('WHERE  (BANCO = :pBanco) AND (Numero_FormaTipo = :pCheque)');
           tTotal.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tTotal.ParamByName('pCheque').AsString := cCheque.Text;
           tTotal.Open;

           lValor.Value := tTotal.FieldByName('Valor_Total').AsCurrency;

           tCheque.SQL.Clear;
           tCheque.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Forma_TipoDocumento = :pCheque) AND (Banco = :pBanco)');
           tCheque.ParamByName('pCheque').AsString := cCheque.Text;
           tCheque.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tCheque.Open;

           If lValor.Value > 0 then begin
              mExtenso       := ValorExtenso(lValor.Value, true);
              mLetra         := UpperCase(Copy(mExtenso, 1, 1));
              mExtenso       := '('+mLetra+(Trim(Copy(mExtenso,2,223)))+')';
              lExtenso1.Text := Trim(Copy(mExtenso,   1, 104));
              lExtenso2.Text := Trim(Copy(mExtenso, 105, 120));
              lNominal.Text  := Trim(tCheque.FieldByName('Cheque_Nominal').AsString);
              lDia.Text      := InttoStr(DayOf(tCheque.FieldByName('Data').AsDateTime));
              lMes.Text      := NomeMes(MonthOf(tCheque.FieldByName('Data').AsDateTime));
              lAno.Text      := InttoStr(YearOf(tCheque.FieldByName('Data').AsDateTime));
           end else begin
              lDia.Text := InttoStr(DayOf(Date));
              lMes.Text := NomeMes(MonthOf(Date));
              lAno.Text := InttoStr(YearOf(Date));
           End;
      End;
      Cursor := crDefault;
end;


procedure TImpressao_Financeiros_CopiaCheque.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Financeiros_CopiaCheque.bImprimirClick(Sender: TObject);
begin
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rCopiaCheque.Print;
      rCopiaCheque.Reset;
end;

procedure TImpressao_Financeiros_CopiaCheque.BitBtn1Click(Sender: TObject);
Var
    Arquivo : TextFile;
    mData   : String;
begin
     With dados do begin
          tPagarReceber.SQL.Clear;
          tPagarReceber.SQL.Add('SELECT Classificacao, ClassificacaoFinanceira.Descricao AS Descricao, Valor_Operacao, Cheque_Assinado, Cheque_Nominal, Cheque_Visado, Cheque_Cruzado');
          tPagarReceber.SQL.Add('FROM   PagarReceber, ClassificacaoFinanceira');
          tPagarReceber.SQL.Add('WHERE  (BANCO = :pBanco) AND (CAST(Numero_FormaTipo AS INT) = :pCheque) AND (ClassificacaoFinanceira.Codigo = Classificacao)');
          tPagarReceber.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
          tPagarReceber.ParamByName('pCheque').AsString := cCheque.Text;
          tPagarReceber.Open;

          Configuracao.Open;
     End;
     AssignFile(Arquivo, Dados.ConfiguracaoCaminho_Impressora.AsString);
//   AssignFile(Arquivo, 'C:\TEMP\Cheque.txt');
     ReWrite(Arquivo);

     mData := lCidade.Text + Replicate(' ', 20-Length(lCidade.Text))+lDia.Text + '     ' + lMes.Text + Replicate(' ', 15-Length(lMes.Text)) + lAno.Text;
     Say(0, 80, Arquivo, FormatFloat('###,###,###,##0.00', lValor.Value) );
     Say(2, 10, Arquivo, lExtenso1.Text );
     Say(3, 10, Arquivo, lExtenso2.Text );
     Say(4,  0, Arquivo, tPagarReceber.FieldByName('Cheque_Nominal').AsString);
     Say(5, 25, Arquivo, mData );
     CloseFile(Arquivo);
     Dados.Configuracao.Close;
end;

procedure TImpressao_Financeiros_CopiaCheque.cCidadeChange(Sender: TObject);
begin
      lCidade.Text := cCidade.Text;
end;

procedure TImpressao_Financeiros_CopiaCheque.rCopiaChequeBeforePrint(Sender: TObject);
begin
      With Dados do begin
           // Gerando as linhas dos itens "UTILIZADO PARA".
           tPagarReceber.SQL.Clear;
           tPagarReceber.SQL.Add('SELECT Classificacao,');
           //tPagarReceber.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Classificacao = ClassificacaoFinanceira.Codigo)) AS Descricao,');
           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
              tPagarReceber.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Classificacao = ClassificacaoFinanceira.Codigo)) AS Descricao,');
           end else begin
              tPagarReceber.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Classificacao = ClassificacaoFinanceira.Codigo)) AS Descricao,');
           End;
           tPagarReceber.SQL.Add('       CASE');
           tPagarReceber.SQL.Add('           WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores   WHERE(Fornecedor = Fornecedores.Codigo))');
           tPagarReceber.SQL.Add('           WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes       WHERE(Cliente    = Clientes.Codigo))');
           tPagarReceber.SQL.Add('           WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE(Orgao = Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo))');
           tPagarReceber.SQL.Add('       END AS Beneficiario,');
           tPagarReceber.SQL.Add('       Processo,');
           tPagarReceber.SQL.Add('       Numero_Documento,');
           tPagarReceber.SQL.Add('       Parcela,');
           tPagarReceber.SQL.Add('       Valor_Operacao,');
           tPagarReceber.SQL.Add('       Cheque_Assinado,');
           tPagarReceber.SQL.Add('       Cheque_Nominal,');
           tPagarReceber.SQL.Add('       Cheque_Visado,');
           tPagarReceber.SQL.Add('       Cheque_Cruzado');
           tPagarReceber.SQL.Add('FROM   PagarReceber');
           tPagarReceber.SQL.Add('WHERE  (Banco = :pBanco) AND (Numero_FormaTipo = :pCheque)');
           tPagarReceber.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tPagarReceber.ParamByName('pCheque').AsString := cCheque.Text;
           tPagarReceber.Open;

           rExtenso.Lines.Clear;
           rExtenso.Lines.Add(lExtenso1.Text+lExtenso2.Text+' '+Replicate('*', 173-(Length(Trim(lExtenso1.Text))+Length(Trim(lExtenso2.Text))) ));
           rValorCheque.Value  := lValor.Value;
           rNominal.Text       := tPagarReceber.FieldByName('Cheque_Nominal').AsString;
           rData.Text          := lCidade.Text + Replicate(' ', 20-Length(lCidade.Text))+lDia.Text + '     ' + lMes.Text + Replicate(' ', 15-Length(lMes.Text)) + lAno.Text;
           rCopiaNumero.Text   := cCheque.Text;
           rVisadoSim.Checked  := tPagarReceber.FieldByName('Cheque_Visado').AsBoolean;
           rVisadoNao.Checked  := not tPagarReceber.FieldByName('Cheque_Visado').AsBoolean;
           rCruzadoSim.Checked := tPagarReceber.FieldByName('Cheque_Cruzado').AsBoolean;
           rCruzadoNao.Checked := not tPagarReceber.FieldByName('Cheque_Cruzado').AsBoolean;
//           rAssinado.Caption   := tPagarReceber.FieldByName('Cheque_Assinado').AsString;
           rAssinatura1.Text   := cAssinatura1.Text;
           rAssinatura2.Text   := cAssinatura2.Text;
      End;

end;

end.
