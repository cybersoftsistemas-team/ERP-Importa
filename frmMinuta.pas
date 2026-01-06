unit frmMinuta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, DBCtrls, RXDBCtrl,
  Vcl.StdCtrls, DBGrids, DB, DBAccess, MSAccess, ppCtrls, ppVar, ppBands, ppReport, ppSubRpt, ppParameter, ppDBPipe, ppMemo, myChkBox, Mask, Grids, RxCurrEdit, ppModule, raCodMod,
  ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS, system.UITypes, RxToolEdit;

type
  TMinuta = class(TForm)
    Panel1: TPanel;       
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    cData: TDBDateEdit;
    StaticText9: TStaticText;
    StaticText15: TStaticText;
    DBEdit1: TDBEdit;
    StaticText8: TStaticText;
    StaticText13: TStaticText;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    StaticText5: TStaticText;
    DBEdit4: TDBEdit;
    StaticText2: TStaticText;
    DBEdit5: TDBEdit;
    StaticText3: TStaticText;
    DBEdit6: TDBEdit;
    StaticText4: TStaticText;
    DBEdit7: TDBEdit;
    StaticText7: TStaticText;
    tCodigo: TMSQuery;
    bImprimir: TButton;
    pEmpresas: TppDBPipeline;
    rMinuta: TppReport;
    ppParameterList1: TppParameterList;
    pMinuta: TppDBPipeline;
    pNotas: TppDBPipeline;
    tMinuta: TMSQuery;
    dstMinuta: TDataSource;
    StaticText14: TStaticText;
    DBEdit9: TDBEdit;
    StaticText16: TStaticText;
    cTransportador: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    StaticText6: TStaticText;
    cVolumes: TCurrencyEdit;
    tVolumes: TMSQuery;
    cRetira: TDBCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppShape7: TppShape;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppLabel72: TppLabel;
    ppDBText14: TppDBText;
    ppDBText19: TppDBText;
    lComplementar: TppLabel;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape9: TppShape;
    ppLabel10: TppLabel;
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppShape15: TppShape;
    ppLabel16: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape13: TppShape;
    myCheckBox1: TmyCheckBox;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText15: TppDBText;
    ppDBText1: TppDBText;
    ppShape12: TppShape;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine12: TppLine;
    ppLabel13: TppLabel;
    ppLine13: TppLine;
    ppLabel14: TppLabel;
    ppDBText3: TppDBText;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppLine20: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppLine6: TppLine;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLine7: TppLine;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLine8: TppLine;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppLine9: TppLine;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppLine10: TppLine;
    ppShape8: TppShape;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppLine11: TppLine;
    ppShape17: TppShape;
    ppLine14: TppLine;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    tPesquisa: TMSQuery;
    iLogo: TppImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cClienteExit(Sender: TObject);
    procedure cRetiraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Minuta: TMinuta;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TMinuta.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TMinuta.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TMinuta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Minuta.Release;
     Minuta := nil;
end;

procedure TMinuta.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Minuta.SQL.Clear;
           Minuta.SQL.Add('SELECT * FROM Minuta ORDER BY Codigo');
           Minuta.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (SELECT Descricao FROM RamoAtividade WHERE(Codigo = Ramo_Atividade)) LIKE ''%TRANS%'' ');
           Fornecedores.SQL.Add('ORDER BY Nome');
           Fornecedores.Open;

           tVolumes.SQL.Clear;
           tVolumes.SQL.Add('SELECT ISNULL(SUM(Volume_Quantidade), 0) AS Volumes');
           tVolumes.SQL.Add('FROM NotasFiscais');
           tVolumes.SQL.Add('WHERE Numero BETWEEN :pNotaIni AND :pNotaFim');
           tVolumes.ParamByName('pNotaIni').AsInteger := Dados.MinutaNota_NumeroIni.AsInteger;
           tVolumes.ParamByName('pNotaFim').AsInteger := Dados.MinutaNota_NumeroFim.AsInteger;
           tVolumes.Open;
           cVolumes.Value := tVolumes.FieldByName('Volumes').Value;
      End;
end;

procedure TMinuta.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           If (Button = nbEdit) or (Button = nbInsert) then begin
              If Button = nbInsert then begin
                 MinutaData.Value           := Date;
                 MinutaHora.Value           := TimetoStr(Time);
                 MinutaCliente_Retira.Value := false;
              End;
              For i := 0 to 6 do begin
                   Navega.Controls[i].Enabled := False;
              End;

              Panel2.Enabled    := True;
              bPesquisa.Enabled := false;
              bImprimir.Enabled := false;
              cData.SetFocus;
           End;
           If (Button = nbPost) or (Button = nbCancel) then Begin
              Minuta.Refresh;
              Panel2.Enabled    := False;
              bPesquisa.Enabled := true;
              bImprimir.Enabled := true;
           End;
      End;

      tVolumes.SQL.Clear;
      tVolumes.SQL.Add('SELECT ISNULL(SUM(Volume_Quantidade), 0) AS Volumes');
      tVolumes.SQL.Add('FROM NotasFiscais');
      tVolumes.SQL.Add('WHERE Numero BETWEEN :pNotaIni AND :pNotaFim');
      tVolumes.ParamByName('pNotaIni').AsInteger := Dados.MinutaNota_NumeroIni.AsInteger;
      tVolumes.ParamByName('pNotaFim').AsInteger := Dados.MinutaNota_NumeroFim.AsInteger;
      tVolumes.Open;
      cVolumes.Value := tVolumes.FieldByName('Volumes').Value;

      Screen.Cursor := crDefault;
end;

procedure TMinuta.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              MinutaTransportador_Nome.Value := Fornecedores.FieldByName('Nome').Value;
              If MinutaNota_NumeroFim.AsInteger = 0 then begin
                 MessageDlg('O campo de número final da nota fiscal é obrigatório!'+#13+#13+'Caso se trate de uma única nota repita o número da nota inicial.', mtError, [mbOK], 0);
                 Abort;
              End;
           End;

           If (Button = nbPost) and (Minuta.State = dsInsert) then begin
              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Minuta');
              tCodigo.Open;
              MinutaCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
           End;

           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir esta "Minuta" ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
                 Abort;
              End;
           End;
      End;
end;

procedure TMinuta.bPesquisaClick(Sender: TObject);
Var
    mPesquisa: String;
begin
     With Dados do begin
          mPesquisa := UpperCase(InputBox('Pesquisa', 'Nº Nota:', mPesquisa));
          If Minuta.Locate('Nota_NumeroIni', StrtoInt(mPesquisa), [loCaseinsensitive]) = false then begin
             If Minuta.Locate('Nota_NumeroFim', StrtoInt(mPesquisa), [loCaseinsensitive]) = false then begin
                tPesquisa.SQL.Clear;
                tPesquisa.SQL.Add('SELECT * FROM Minuta WHERE '+mPesquisa+' BETWEEN Nota_NumeroIni AND Nota_NumeroFim');
                tPesquisa.Open;
                If Minuta.Locate('Codigo', tPesquisa.FieldByname('Codigo').AsInteger, [loCaseInsensitive]) = false then begin
                   If Minuta.Locate('Codigo', StrtoInt(mPesquisa), [loCaseinsensitive]) = false then begin
                      ShowMessage('Nenhuma minuta encontrada com o número de Nota Fiscal ou Código Informado!');
                   End;
                End;
             End;
          End;
     End;     
end;

procedure TMinuta.bImprimirClick(Sender: TObject);
begin
     With Dados do begin
          tMinuta.SQL.Clear;
          tMinuta.SQL.Add('SELECT Codigo,');
          tMinuta.SQL.Add('       Data,');
          tMinuta.SQL.Add('       Hora,');
          tMinuta.SQL.Add('       Conferente,');
          tMinuta.SQL.Add('       Transportador_Codigo,');
          tMinuta.SQL.Add('       CASE WHEN ISNULL(Cliente_Retira, 0) = 0 THEN Transportador_Nome ELSE ''DESTINATÁRIO'' END AS Transportador_Nome,');
          tMinuta.SQL.Add('       Volumes_Quantidade,');
          tMinuta.SQL.Add('       Palletes_Quantidade,');
          tMinuta.SQL.Add('       Motorista_Nome,');
          tMinuta.SQL.Add('       Motorista_CPF,');
          tMinuta.SQL.Add('       Motorista_RG,');
          tMinuta.SQL.Add('       Placa,');
          tMinuta.SQL.Add('       Nota_NumeroIni,');
          tMinuta.SQL.Add('       Nota_NumeroFim,');
          tMinuta.SQL.Add('       Cliente_Retira');
          tMinuta.SQL.Add('FROM   Minuta');
          tMinuta.SQL.Add('WHERE  (Codigo = :pCodigo)');
          tMinuta.ParamByName('pCodigo').AsInteger := Dados.MinutaCodigo.AsInteger;
          tMinuta.Open;

          tNotas.SQL.Clear;
          tNotas.SQL.Add('SELECT Numero AS Nota,');
          tNotas.SQL.Add('       Data_Emissao,');
          tNotas.SQL.Add('       NFE_CNF,');
          tNotas.SQL.Add('       Destinatario_Nome AS Cliente,');
          tNotas.SQL.Add('       Volume_Quantidade,');
          tNotas.SQL.Add('       Volume_Especie');
          tNotas.SQL.Add('FROM NotasFiscais');
          tNotas.SQL.Add('WHERE (Saida_Entrada = 1 OR Saida_Entrada = 0 AND (SELECT Finalidade_Mercadoria FROM TipoNota WHERE Codigo = Tipo_Nota) = 2)');
          tNotas.SQL.Add('  AND Cancelada <> 1');
          tNotas.SQL.Add('  AND Numero BETWEEN :pNumeroIni AND :pNumeroFim');
          tNotas.SQL.Add('ORDER BY Numero');
          tNotas.ParamByName('pNumeroIni').AsInteger := MinutaNota_NumeroIni.AsInteger;
          tNotas.ParamByName('pNumeroFim').AsInteger := MinutaNota_NumeroFim.AsInteger;
          tNotas.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
          EmPresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;
     End;
     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     rMinuta.Reset;
     rMinuta.Print;
end;

procedure TMinuta.cClienteExit(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          Notas.SQL.Clear;
          Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Cliente_Codigo = :pCliente');
          Notas.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
          Notas.Open;
     End;
end;

procedure TMinuta.cRetiraClick(Sender: TObject);
begin
      cTransportador.Enabled := not cRetira.Checked;
      If cRetira.Checked = true then begin
         cTransportador.KeyValue := -1;
      End;   
end;

end.
