unit frmImpressao_FinanceirosOP_ExtratoBancoSint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppVar, ppBands, ppCtrls, ppPrnabl,
  ppReport, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RXCtrls, IniFiles, Funcoes, ppParameter, ComObj, system.UITypes, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_ExtratoBancoSint = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    rF02: TppReport;
    pPagarReceber: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    ppParameterList1: TppParameterList;
    tPagarReceber: TMSQuery;
    dstPagarReceber: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppShape8: TppShape;
    ppLabel9: TppLabel;
    lPeriodo: TppLabel;
    bDetalhe: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    tEmpresas: TMSQuery;
    cConsol: TRadioGroup;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape6: TppShape;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    cZebrado: TCheckBox;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine5: TppLine;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cBancoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bDetalheAfterGenerate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mSaldo        : Currency;
    mRecebimentos : Currency;
    mPagamentos   : Currency;
    mConta        : integer;
  end;

var
  Impressao_FinanceirosOP_ExtratoBancoSint: TImpressao_FinanceirosOP_ExtratoBancoSint;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Consolidar', cConsol.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataIni'   , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataFim'   , cDataFim.Date );

      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Banco', 0);

      aINI.WriteBool('IMPRESSAO_FINANCEIROS_F02', 'Zebrado', cZebrado.Checked);
      aINI.Free;

      tPagarReceber.SQL.Clear;
      tPagarReceber.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tPagarReceber.Execute;

      tPagarReceber.Close;
      tEmpresas.Close;

      Impressao_FinanceirosOP_ExtratoBancoSint.Release;
      Impressao_FinanceirosOP_ExtratoBancoSint := nil;
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.FormShow(Sender: TObject);
Var
     aINI : TIniFile;
begin
      With Dados do begin
           Configuracao.Open;
           
           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cConsol.ItemIndex := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F02', 'Consolidar', 0);
      cDataIni.Date     := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataIni'   , Date);
      cDataFim.Date     := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataFim'   , Date);
      cBanco.KeyValue   := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F02', 'Banco'     , 0);
      cZebrado.Checked  := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F02', 'Zebrado'   , false);
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.bImprimirClick(Sender: TObject);
Var
   mSQLMatriz: WideString;
   mSQLFilial: Widestring;
begin
      if (DataLimpa(cDataIni.Text)) or (DataLimpa(cDataFim.Text)) then begin
         MessageDlg('Periodo inválido!'+#13+#13+'É necessario informar a "DATA INICIAL" e "DATA FINAL" para impressão do relatório.', mtInformation, [mbOK], 0);
         Abort;
      end;

      with Dados do begin
           tPagarReceber.SQL.Clear;
           tPagarReceber.SQL.Add('USE '+ EmpresasBanco_Dados.AsString);
           tPagarReceber.SQL.Add('SELECT Nome');
           tPagarReceber.SQL.Add('      ,Conta');
           tPagarReceber.SQL.Add('      ,Agencia');
           tPagarReceber.SQL.Add('      ,Saldo_Ant = ISNULL(ISNULL(Saldo, 0) + (SELECT ISNULL(SUM(CASE WHEN Tipo = ''R'' THEN Valor ELSE Valor *-1 END), 0) FROM PagarReceberBaixas PB WHERE ISNULL(PB.Banco, 0) <> 0 AND PB.Banco_Conta = BC.Conta AND Data < :pDataIni), 0)');
           tPagarReceber.SQL.Add('      ,Debito    = (SELECT ISNULL(SUM(Valor), 0) FROM PagarReceberBaixas PB WHERE PB.Banco_Conta = BC.Conta AND Data BETWEEN :pDataIni AND :pDataFim AND Tipo = ''P'') *-1');
           tPagarReceber.SQL.Add('      ,Credito   = (SELECT ISNULL(SUM(Valor), 0) FROM PagarReceberBaixas PB WHERE PB.Banco_Conta = BC.Conta AND Data BETWEEN :pDataIni AND :pDataFim AND Tipo = ''R'')');
           tPagarReceber.SQL.Add('      ,Saldo_Atu = ISNULL(ISNULL(Saldo, 0) + (SELECT ISNULL(SUM(CASE WHEN Tipo = ''R'' THEN Valor ELSE Valor *-1 END), 0) FROM PagarReceberBaixas PB WHERE ISNULL(PB.Banco, 0) <> 0 AND PB.Banco_Conta = BC.Conta AND Data <= :pDataFim), 0)');
           tPagarReceber.SQL.Add('INTO  #TEMP');
           tPagarReceber.SQL.Add('FROM  Bancos BC');
           tPagarReceber.SQL.Add('WHERE ISNULL(Conta, '''') <> '''' ');
           if (Trim(cBanco.Text) <> '') then begin
              tPagarReceber.SQL.Add('AND (BC.Conta = :pConta) ');
              tPagarReceber.ParamByName('pConta').AsString := Trim(BancosConta.AsString);
           end;

           // Outras Empresas - Consolidado.
           if cConsol.ItemIndex = 1 then begin
              tEmpresas.SQL.Clear;
              tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
              tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
              tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
              tEmpresas.Open;

              mSQLMatriz := tPagarReceber.SQL.Text;

              tEmpresas.First;
              while not tEmpresas.Eof do begin
                    if Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                       mSQLFilial := RemoveCaracter('USE '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                       mSQLFilial := RemoveCaracter('PagarReceberBaixas PB'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas PB', mSQLFilial);
                       mSQLFilial := RemoveCaracter(':pEmpresa'              , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);
                       if ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                          mSQLFilial := RemoveCaracter('Bancos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos', mSQLFilial);
                       end;
                       mSQLFilial := RemoveCaracter('INTO  #TEMP', '', mSQLFilial);

                       tPagarReceber.SQL.Add('UNION ALL');
                       tPagarReceber.SQL.Add(mSQLFilial);
                    end;
                    tEmpresas.Next;
              end;
           end;

           tPagarReceber.SQL.Add('SELECT Nome');
           tPagarReceber.SQL.Add('      ,Conta');
           tPagarReceber.SQL.Add('	,Agencia');
           tPagarReceber.SQL.Add('	,Saldo_Ant = SUM(Saldo_Ant)');
           tPagarReceber.SQL.Add('	,Debito    = SUM(Debito)');
           tPagarReceber.SQL.Add('	,Credito   = SUM(Credito)');
           tPagarReceber.SQL.Add('	,Saldo_Atu = SUM(Saldo_Atu)');
           tPagarReceber.SQL.Add('FROM #TEMP');
           tPagarReceber.SQL.Add('GROUP BY Nome, Conta, Agencia');
           tPagarReceber.SQL.Add('ORDER BY Nome');
           tPagarReceber.SQL.Add('DROP TABLE #TEMP');

           //tPagarReceber.SQL.SaveToFile('c:\temp\Extrato_Bancario_Sintetico.SQL');
           tPagarReceber.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tPagarReceber.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tPagarReceber.Open;
      end;

      lPeriodo.Caption := 'Período '+cDataIni.Text + ' a '+cDataFim.Text;

      if cConsol.ItemIndex = 0 then begin
         if Dados.EmpresasMatriz_Filial.AsBoolean then
            lTitulo.Text := lTitulo.Caption + ' (MATRIZ)'
         else
            lTitulo.Text := lTitulo.Caption + ' (FILIAL '+Dados.EmpresasNumero_Filial.AsString+')';
      end else begin
         lTitulo.Text := lTitulo.Caption + ' (CONSOLIDADA)';
      end;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rF02.Print;
      rF02.FreeOnRelease;
      rF02.Reset;
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.bLimparClick( Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cBanco.KeyValue := 0;
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.cBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ExtratoBancoSint.bDetalheAfterGenerate(Sender: TObject);
begin
      if cZebrado.Checked then
         bDetalhe.Background1.Brush.Color := $00FFECEC
      else
         bDetalhe.Background1.Brush.Color := clWhite;
end;

end.
