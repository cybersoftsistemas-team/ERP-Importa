unit frmFinanceiro_ConciliacaoBancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, RXCtrls, Mask, Vcl.ComCtrls, Grids, DBGrids, RXDBCtrl,
  DB, DBAccess, MSAccess, Buttons, RxLookup, IniFiles, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TFinanceiro_ConciliacaoBancaria = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    OpenDialog1: TOpenDialog;
    bGerar: TButton;
    tNumero: TMSQuery;
    tExtrato: TMSQuery;
    tExtratoRegistro: TIntegerField;
    tExtratoData: TDateTimeField;
    tExtratoDescricao: TStringField;
    tExtratoValor: TCurrencyField;
    tExtratoTipo: TStringField;
    tExtratoBaixado: TBooleanField;
    tExtratoAberto: TBooleanField;
    tExtratoClassificacao: TStringField;
    tExtratoDocumento: TStringField;
    tExtratoHistorico: TSmallintField;
    tExtratoSelecionado: TBooleanField;
    dstExtrato: TDataSource;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    dstBaixas: TDataSource;
    tBaixas: TMSQuery;
    tBaixasRegistro: TLargeintField;
    tBaixasNumero: TLargeintField;
    tBaixasData: TDateTimeField;
    tBaixasValor: TCurrencyField;
    tBaixasForma_TipoDocumento: TStringField;
    tBaixasTipo: TStringField;
    tBaixasBanco: TSmallintField;
    tBaixasDescricao: TStringField;
    tTotal: TMSQuery;
    tBaixasConciliado: TBooleanField;
    tBaixasSelecionado: TBooleanField;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    bConciliar: TButton;
    tExtratoTitulo: TIntegerField;
    tExtratoBanco: TSmallintField;
    tExtratoConciliado: TBooleanField;
    Image1: TImage;
    tTemp: TMSQuery;
    bDesfazer: TButton;
    bDesmarcar: TButton;
    tCodigo: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GradeBaixas: TDBGrid;
    StaticText8: TStaticText;
    DBEdit3: TDBEdit;
    StaticText9: TStaticText;
    cSelFin: TCurrencyEdit;
    StaticText10: TStaticText;
    cDebitosFin: TCurrencyEdit;
    StaticText3: TStaticText;
    cCreditosFin: TCurrencyEdit;
    StaticText11: TStaticText;
    cSaldoFin: TCurrencyEdit;
    StaticText7: TStaticText;
    cTotalFin: TCurrencyEdit;
    GradeAbertos: TDBGrid;
    StaticText5: TStaticText;
    DBEdit1: TDBEdit;
    StaticText20: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    StaticText21: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    StaticText22: TStaticText;
    CurrencyEdit3: TCurrencyEdit;
    StaticText23: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    StaticText24: TStaticText;
    CurrencyEdit5: TCurrencyEdit;
    tAbertos: TMSQuery;
    LargeintField2: TLargeintField;
    DateTimeField1: TDateTimeField;
    CurrencyField1: TCurrencyField;
    StringField1: TStringField;
    StringField2: TStringField;
    SmallintField1: TSmallintField;
    StringField3: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    dstAbertos: TDataSource;
    Panel2: TPanel;
    Grade: TDBGrid;
    StaticText12: TStaticText;
    cDebitosExt: TCurrencyEdit;
    StaticText13: TStaticText;
    cCreditosExt: TCurrencyEdit;
    StaticText14: TStaticText;
    cSaldoExt: TCurrencyEdit;
    StaticText18: TStaticText;
    cSelExt: TCurrencyEdit;
    StaticText6: TStaticText;
    cTotalExt: TCurrencyEdit;
    StaticText19: TStaticText;
    cCodClass: TEdit;
    cDescClass: TEdit;
    StaticText2: TStaticText;
    Panel3: TPanel;
    bFiltro: TSpeedButton;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    cBanco: TDBLookupComboBox;
    cArquivo: TFilenameEdit;
    cDataIni: TDateEdit;
    StaticText15: TStaticText;
    cDataFim: TDateEdit;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    bTitulo: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bGerarClick(Sender: TObject);
    procedure GradeBaixasDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cBancoExit(Sender: TObject);
    procedure GradeKeyPress(Sender: TObject; var Key: Char);
    procedure GradeBaixasKeyPress(Sender: TObject; var Key: Char);
    procedure bConciliarClick(Sender: TObject);
    procedure GradeBaixasDblClick(Sender: TObject);
    procedure GradeBaixasCellClick(Column: TColumn);
    procedure GradeDblClick(Sender: TObject);
    procedure ConciliaBx;
    procedure ConciliaAb;
    procedure tBaixasAfterScroll(DataSet: TDataSet);
    procedure bDesfazerClick(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure AbrirExtrato;
    procedure Totaliza;
    procedure bDesmarcarClick(Sender: TObject);
    procedure tExtratoAfterScroll(DataSet: TDataSet);
    procedure GradeAbertosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradeAbertosCellClick(Column: TColumn);
    procedure GradeCellClick(Column: TColumn);
    procedure bTituloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CompClass, CompBancos: string;
  end;

var
  Financeiro_ConciliacaoBancaria: TFinanceiro_ConciliacaoBancaria;

implementation

uses frmDados, FUNCOES, frmJanela_Processamento, frmFinanceiro_Lancamento, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_ConciliacaoBancaria.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFinanceiro_ConciliacaoBancaria.bTituloClick(Sender: TObject);
var 
    mValor:real;
begin
     with Dados do begin
          TiposDocumentos.open;
          Clientes.open;
          Fornecedores.open;
          Orgaos.open;
          with Cotacao do begin
               sql.clear;
               sql.add('select * from Cotacao where Moeda = 220 and Data = :pData');
               parambyname('pData').Value := tExtrato.fieldbyname('Data').AsDateTime;
               open;
          end;
          with ClassificacaoFinanceira do begin
               sql.clear; 
               sql.add('select * from ClassificacaoFinanceira where isnull(Desativada, 0) = 0 and Tipo = '+quotedstr(iif(tExtrato.fieldbyname('Valor').ascurrency > 0, 'R', 'P')) );
               sql.add('order by Descricao');
               open
          end;
          with PagarReceber do  begin
               sql.clear; 
               sql.add('select * from PagarReceber where Numero = (select isnull(max(numero), 0)+1 from PagarReceber)');
               open;
               mValor := iif(tExtrato.fieldbyname('Valor').ascurrency < 0, tExtrato.fieldbyname('Valor').ascurrency * -1, tExtrato.fieldbyname('Valor').ascurrency);
               Append;
                    fieldbyname('Tipo').value             := iif(tExtrato.fieldbyname('Valor').ascurrency > 0, 'R', 'P');
                    fieldbyname('Data_Vencimento').value  := tExtrato.fieldbyname('Data').AsDateTime;
                    fieldbyname('Data_Documento').value   := tExtrato.fieldbyname('Data').AsDateTime;
                    fieldbyname('Numero_Documento').value := tExtrato.fieldbyname('Documento').asstring;
                    fieldbyname('Valor_Documento').value  := mValor;
                    fieldbyname('Taxa_ME').value          := Cotacao.fieldbyname('Valor').asfloat;
                    fieldbyname('Valor_ME').value         := iif(Cotacao.RecordCount > 0, mValor/Cotacao.fieldbyname('Valor').asfloat, 0);
                    fieldbyname('Valor_Parcela').value    := mValor;
                    fieldbyname('Banco').value            := cBanco.KeyValue;
          end;
     end;
     Financeiro_Lancamento := TFinanceiro_Lancamento.Create(Self);
     Financeiro_Lancamento.Caption      := Caption;
     Financeiro_Lancamento.mFiltroClass := iif(tExtrato.fieldbyname('Valor').ascurrency > 0, 'R', 'P');
     Financeiro_Lancamento.ShowModal;

     with tTemp do begin
          sql.clear;
          sql.add('select count(*) as Qtde from PagarReceberBaixas where Numero = :pNumero');
          parambyname('pNumero').asinteger := Dados.PagarReceberNumero.asinteger;
          open;
     end;
     if tTemp.FieldByName('Qtde').AsInteger = 0 then begin
        with Dados do begin
             with PagarReceberBaixas do begin
                  sql.clear;
                  sql.add('select * from PagarReceberBaixas where Registro = (select isnull(max(Registro), 0)+1 from PagarReceberBaixas)');
                  open;
                  with tTemp do begin
                       sql.clear;
                       sql.add('select isnull(max(Registro), 0)+1 as Reg from PagarReceberBaixas');
                       open;
                  end;
                  Append;
                        fieldbyname('Registro').value            := tTemp.FieldByName('Reg').AsInteger;
                        fieldbyname('Numero').value              := PagarReceberNumero.AsInteger;
                        fieldbyname('Data').value                := tExtratoData.Value;
                        fieldbyname('Tipo').value                := PagarReceberTipo.AsString;
                        fieldbyname('Valor').value               := mValor;
                        fieldbyname('Banco').value               := PagarReceberBanco.AsInteger;
                        fieldbyname('Forma_Tipo').value          := PagarReceberForma_Tipo.value;
                        fieldbyname('Forma_TipoDocumento').value := PagarReceberNumero_FormaTipo.AsString;
                        fieldbyname('Banco_Conta').value         := BancosConta.AsString;
                        fieldbyname('Multa').value               := PagarReceberMulta.value;
                        fieldbyname('Juros').value               := PagarReceberJuros.value;
                        fieldbyname('Desconto').value            := PagarReceberDesconto.Value;
                  Post;
             end;
        end;
     end;
end;

procedure TFinanceiro_ConciliacaoBancaria.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      SetCurrentDir(ExtractFilePath(Application.ExeName));

      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPORTACAO_Extrato','Banco'        , cBanco.KeyValue);
      aINI.WriteDate   ( 'IMPORTACAO_Extrato','DataIni'      , cDataIni.Date);
      aINI.WriteDate   ( 'IMPORTACAO_Extrato','DataFim'      , cDataFim.Date);
      aINI.WriteString ( 'IMPORTACAO_Extrato','Arquivo'      , cArquivo.Text);
      aINI.Free;

      Financeiro_ConciliacaoBancaria.Release;
      Financeiro_ConciliacaoBancaria := nil;
end;

procedure TFinanceiro_ConciliacaoBancaria.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      PageControl1.ActivePageIndex := 0;
      with Dados do begin
           with Bancos do begin
                sql.Clear;
                sql.Add('select * from Bancos where(isnull(Desativado, 0) <> 1) order by Nome');
                open;
           end;
           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('select * from ClassificacaoFinanceira where isnull(Desativada, 0) = 0 order by Codigo');
                open;
           end;
           Configuracao.Open;
           CompClass  := iif(not Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
           CompBancos := iif(not Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
      end;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cBanco.KeyValue := aINI.ReadInteger('IMPORTACAO_Extrato','Banco'  , -1);
      cDataIni.Date   := aINI.ReadDate   ('IMPORTACAO_Extrato','DataIni', Date);
      cDataFim.Date   := aINI.ReadDate   ('IMPORTACAO_Extrato','DataFim', Date);
      cArquivo.Text   := aINI.ReadString ('IMPORTACAO_Extrato','Arquivo', '');
      aINI.Free;
end;

procedure TFinanceiro_ConciliacaoBancaria.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon:TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do Begin
           If tExtrato.FieldByName('Valor').AsCurrency >= 0 then
              TDbGrid(Sender).Canvas.font.Color:= clBlue
           else
              TDbGrid(Sender).Canvas.font.Color:= clRed;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

           If (Column.FieldName = 'Selecionado') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tExtrato.FieldByName('Selecionado').Value = True) then ImageList1.GetBitmap(3, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
      Icon.Destroy;
end;

procedure TFinanceiro_ConciliacaoBancaria.bGerarClick(Sender: TObject);
begin
      If Dados.BancosConta_Fornecedor.AsInteger <= 0 then begin
         MessageDlg('Erro!'+#13+#13+'É preciso informar o código do cadastro de fornecedores deste banco.'+#13+#13, mtError, [mbOK], 0);
         Abort;
      End;
      If MessageDlg('Atenção!'+#13+#13+'Isso irá gerar os laçamentos bancários no financeira.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;
      With Dados do begin
           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tExtrato.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Gerando lançamentos no financeiro...';
           Janela_Processamento.Show;

           tExtrato.First;
           While (not tExtrato.Eof) and (Funcoes.Cancelado = false) do begin
                 If Trim(tExtratoClassificacao.AsString) <> '' then begin
                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Banco = :pBanco) AND (Data_Documento = :pData)');
                    PagarReceber.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                    PagarReceber.ParamByName('pData').AsDateTime := tExtratoData.AsDateTime;
                    PagarReceber.Open;

                    PagarReceberBaixas.SQL.Clear;
                    PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Banco = :pBanco) AND (Data = :pData)');
                    PagarReceberBaixas.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                    PagarReceberBaixas.ParamByName('pData').AsDateTime := tExtratoData.AsDateTime;
                    PagarReceberBaixas.Open;

                    ClassificacaoFinanceira.Locate('Codigo', tExtratoClassificacao.AsString, [loCaseInsensitive]);

                    // Lançamento do título - Tarifa bancária.
                    with tNumero do begin
                         sql.Clear;
                         sql.Add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
                         open;
                    end;

                    If tExtrato.FieldByName('Titulo').AsInteger = 0 then begin
                       PagarReceber.Append;
                                    PagarReceberNumero.Value             := tNumero.FieldByName('Numero').AsInteger;
                                    PagarReceberTipo.Value               := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                    PagarReceberClassificacao.Value      := tExtrato.FieldByName('Classificacao').AsString;
                                    PagarReceberData_Documento.Value     := tExtrato.FieldByName('Data').AsDateTime;
                                    PagarReceberData_Vencimento.Value    := tExtrato.FieldByName('Data').AsDateTime;
                                    PagarReceberMulta.Value              := 0;
                                    PagarReceberJuros.Value              := 0;
                                    PagarReceberDesconto.Value           := 0;

                                    If tExtrato.FieldByName('Valor').AsCurrency >= 0 then begin
                                       PagarReceberValor_Documento.Value := tExtrato.FieldByName('Valor').AsCurrency;
                                       PagarReceberValor_Parcela.Value   := tExtrato.FieldByName('Valor').AsCurrency;
                                       PagarReceberValor_Total.Value     := tExtrato.FieldByName('Valor').AsCurrency;
                                       PagarReceberValor_Operacao.Value  := tExtrato.FieldByName('Valor').AsCurrency;
                                       PagarReceberValor_Baixado.Value   := tExtrato.FieldByName('Valor').AsCurrency;
                                    end else begin
                                       PagarReceberValor_Documento.Value := tExtrato.FieldByName('Valor').AsCurrency *-1;
                                       PagarReceberValor_Parcela.Value   := tExtrato.FieldByName('Valor').AsCurrency *-1;
                                       PagarReceberValor_Total.Value     := tExtrato.FieldByName('Valor').AsCurrency *-1;
                                       PagarReceberValor_Operacao.Value  := tExtrato.FieldByName('Valor').AsCurrency *-1;
                                       PagarReceberValor_Baixado.Value   := tExtrato.FieldByName('Valor').AsCurrency *-1;
                                    End;
                                    PagarReceberFornecedor.Value         := Bancos.FieldByName('Conta_Fornecedor').AsInteger;
                                    PagarReceberFornecedor_Banco.Value   := '';
                                    PagarReceberFornecedor_Agencia.Value := '';
                                    PagarReceberFornecedor_Conta.Value   := '';
                                    PagarReceberDocumento.Value          := HistoricosBancos.FieldByName('Documento').AsString;
                                    PagarReceberNumero_Documento.Value   := '';
                                    PagarReceberCustoConta.Value         := false;
                                    PagarReceberNivel.Value              := ClassificacaoFinanceiraNivel.Value;
                                    PagarReceberBanco.Value              := Bancos.FieldByName('Codigo').AsInteger;
                                    PagarReceberEmpresa.Value            := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value             := Empresas.FieldByName('Numero_Filial').asinteger;
                       PagarReceber.Post;

                       // Lançamento da baixa - Tarifa bancária.
                       tNumero.SQL.Clear;
                       tNumero.SQL.Add('SELECT MAX(Registro) AS Numero FROM PagarReceberBaixas');
                       tNumero.Open;

                       PagarReceberBaixas.Append;
                                          PagarReceberBaixasRegistro.Value       := tNumero.FieldByName('Numero').AsInteger + 1;
                                          PagarReceberBaixasNumero.Value         := PagarReceber.FieldByName('Numero').AsInteger;
                                          PagarReceberBaixasData.Value           := PagarReceber.FieldByName('Data_Documento').AsDateTime;
                                          PagarReceberBaixasValor.Value          := PagarReceber.FieldByName('Valor_Total').AsCurrency;
                                          PagarReceberBaixasBanco.Value          := Bancos.FieldByName('Codigo').AsInteger;
                                          PagarReceberBaixasForma_Tipo.Value     := 'DÉBITO EM CONTA';
                                          PagarReceberBaixasCheque_Visado.Value  := false;
                                          PagarReceberBaixasCheque_Cruzado.Value := false;
                                          PagarReceberBaixasObservacao.Value     := tExtrato.FieldByName('Descricao').AsString;
                                          PagarReceberBaixasTipo.Value           := PagarReceberTipo.AsString;
                                          PagarReceberBaixasBanco_Conta.Value    := BancosConta.AsString;
                       PagarReceberBaixas.Post;

                       PagarReceber.Edit;
                                    PagarReceberBaixa_Numero.Value := PagarReceberBaixas.FieldByName('Numero').AsInteger;
                       PagarReceber.Post;
                    End;
                 End;

                 tExtrato.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
           Janela_Processamento.Close;
           ShowMessage('Laçamentos do banco '+cBanco.Text+' criados no financeiro.!');
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeBaixasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do begin
           If tBaixas.FieldByName('Tipo').AsString = 'P' then
              TDbGrid(Sender).Canvas.font.Color:= clBlue
           else
              TDbGrid(Sender).Canvas.font.Color:= clRed;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

           If (Column.FieldName = 'Conciliado') then begin
              With GradeBaixas.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tBaixas.FieldByName('Conciliado').AsBoolean = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Selecionado') then begin
              With GradeBaixas.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tBaixas.FieldByName('Selecionado').Value = True) then ImageList1.GetBitmap(3, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
      Icon.Destroy;
end;

procedure TFinanceiro_ConciliacaoBancaria.cBancoExit(Sender: TObject);
begin
      cArquivo.Enabled := cBanco.Text <> '';
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeKeyPress(Sender: TObject;  var Key: Char);
begin
      If Key = #13 then begin
         GradeDblClick(nil);
         tExtrato.Next;
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeBaixasKeyPress(Sender: TObject;var Key: Char);
begin
      If Key = #13 then begin
         GradeBaixasDblClick(nil);
         tBaixas.Next;
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeCellClick(Column: TColumn);
begin
       with tExtrato do begin
            bTitulo.Enabled := not fieldbyname('Selecionado').AsBoolean;
            if FieldByName('Tipo').Value = 'R' then begin
               tBaixas.Locate('Data;Valor;Registro', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency, FieldByName('Titulo').AsInteger]), [loCaseInsensitive]);
               tAbertos.Locate('Data;Valor', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency]), [loCaseInsensitive]);
            end else begin
               tBaixas.Locate('Data;Valor;Registro', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency * -1, FieldByName('Titulo').AsInteger]), [loCaseInsensitive]);
               tAbertos.Locate('Data;Valor', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency * -1]), [loCaseInsensitive]);
            end;
       end;
end;

procedure TFinanceiro_ConciliacaoBancaria.bConciliarClick(Sender: TObject);
begin
      If cSelFin.Value <> cSelExt.Value then begin
         MessageDlg('Erro!'+#13+#13+'A soma dos valores do financeiro e do extrato não conferem.', mtError, [mbOK], 0);
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+'Isto conciliara todos os lançamentos selecionados.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

      with tTemp do begin
           sql.Clear;
           sql.Add('UPDATE PagarReceberBaixas SET Conciliado = 1, Selecionado = null');
           sql.Add('WHERE Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Selecionado, 0) = 1 AND ISNULL(Conciliado, 0) = 0');
           parambyname('pDataIni').AsDate := cDataIni.Date;
           parambyname('pDataFim').AsDate := cDataFim.Date;
           execute;
      end;
      tBaixas.Refresh;

      with tTemp do begin
           sql.Clear;
           sql.Add('UPDATE ExtratoBancario SET Conciliado = 1, Selecionado = null');
           sql.Add('WHERE Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Selecionado, 0) = 1');
           parambyname('pDataIni').AsDate := cDataIni.Date;
           parambyname('pDataFim').AsDate := cDataFim.Date;
           execute;
      end;
      
      tExtrato.Refresh;

      MessageDlg('Todos os lançamentos selecionados foram conciliados.', mtInformation, [mbOK], 0);
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeBaixasDblClick(Sender: TObject);
begin
      tBaixas.Edit;
              tBaixasSelecionado.Value := not tBaixasSelecionado.Value;
      tBaixas.Post;

      Totaliza;
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeAbertosCellClick(Column: TColumn);
Var
   mAchou: Boolean;
begin
      if tExtrato.Active then begin
         with tAbertos do begin
              if FieldByName('Tipo').Value = 'R' then begin
                 mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency, FieldByName('Numero').AsInteger]), [loCaseInsensitive]);
              end else begin
                 mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency * -1, FieldByName('Numero').AsInteger]), [loCaseInsensitive]);
              end;
              if not mAchou then
                 Grade.Options := Grade.Options - [dgAlwaysShowSelection]
              else
                 Grade.Options := Grade.Options + [dgAlwaysShowSelection];
         end;
      end;
      {
      tTitulos.SQl.Clear;
      tTitulos.SQL.Add('SELECT  Cliente');
      tTitulos.SQL.Add('       ,Fornecedor');
      tTitulos.SQL.Add('       ,Orgao');
      tTitulos.SQL.Add('       ,Beneficiario = CASE WHEN Cliente    IS NOT NULL THEN (SELECT Nome FROM Clientes       WHERE Codigo = Cliente)');
      tTitulos.SQL.Add('                            WHEN Fornecedor IS NOT NULL THEN (SELECT Nome FROM Fornecedores   WHERE Codigo = Fornecedor)');
      tTitulos.SQL.Add('                            WHEN Orgao      IS NOT NULL THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE Codigo = Orgao)');
      tTitulos.SQL.Add('                       END');
      tTitulos.SQL.Add('FROM   PagarReceber');
      tTitulos.SQL.Add('WHERE  Numero = :pNumero');
      tTitulos.ParamByName('pNumero').AsInteger := tBaixas.FieldByName('Numero').AsInteger;
      tTitulos.Open;
      }
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeAbertosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
    Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      with Dados do begin
           if tAbertos.FieldByName('Tipo').AsString = 'P' then
              TDbGrid(Sender).Canvas.font.Color:= clBlack
           else
              TDbGrid(Sender).Canvas.font.Color:= clRed;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

           if (Column.FieldName = 'Conciliado') then begin
              with GradeAbertos.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tAbertos.FieldByName('Conciliado').AsBoolean = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              end;
           end;
           if (Column.FieldName = 'Selecionado') then begin
              with GradeAbertos.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tAbertos.FieldByName('Selecionado').Value = True) then ImageList1.GetBitmap(3, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              end;
           end;
      end;
      Icon.Destroy;
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeBaixasCellClick(Column: TColumn);
Var
   mAchou: Boolean;
begin
      if tExtrato.Active then begin
         with tBaixas do begin
              if FieldByName('Tipo').Value = 'R' then begin
                 mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency     , FieldByName('Registro').AsInteger]), [loCaseInsensitive]);
              end else begin
                 mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency * -1, FieldByName('Registro').AsInteger]), [loCaseInsensitive]);
              end;
              if not mAchou then
                 Grade.Options := Grade.Options - [dgAlwaysShowSelection]
              else
                 Grade.Options := Grade.Options + [dgAlwaysShowSelection];
         end;
      end;
      with tTitulos do begin
           SQl.Clear;
           SQL.Add('select  Cliente');
           SQL.Add('       ,Fornecedor');
           SQL.Add('       ,Orgao');
           SQL.Add('       ,Beneficiario = CASE WHEN Cliente    IS NOT NULL THEN (SELECT Nome FROM Clientes       WHERE Codigo = Cliente)');
           SQL.Add('                            WHEN Fornecedor IS NOT NULL THEN (SELECT Nome FROM Fornecedores   WHERE Codigo = Fornecedor)');
           SQL.Add('                            WHEN Orgao      IS NOT NULL THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE Codigo = Orgao)');
           SQL.Add('                       END');
           SQL.Add('from   PagarReceber');
           SQL.Add('where  Numero = :pNumero');
           ParamByName('pNumero').AsInteger := tBaixas.FieldByName('Numero').AsInteger;
           Open;
      end;
end;

procedure TFinanceiro_ConciliacaoBancaria.GradeDblClick(Sender: TObject);
begin
      tExtrato.Edit;
               tExtratoSelecionado.Value := not tExtratoSelecionado.Value;
               If tBaixasSelecionado.AsBoolean then
                  tExtratoTitulo.Value := tBaixasRegistro.Value
               else
                  tExtratoTitulo.Value := 0;
      tExtrato.Post;

      Totaliza;      
end;

procedure TFinanceiro_ConciliacaoBancaria.ConciliaBx;
Var
   mAchou: Boolean;
begin
      // Procura os títulos utilizando data e valor.
      If tExtrato.Active then begin
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.lProcesso.Caption := 'Procurando lançamentos utilizando "Data + Valor"...';
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.Progresso.Max      := tBaixas.RecordCount;
         Janela_Processamento.Show;

         with tBaixas do begin
              First;
              while not Eof do begin
                    if fieldbyname('Tipo').Value = 'R' then begin
                       mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency     , NULL]), [loCaseInsensitive]);
                    end else begin
                       mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([FieldByName('Data').AsCurrency, FieldByName('Valor').AsCurrency * -1, NULL]), [loCaseInsensitive]);
                    end;
                    if mAchou then begin
                       Grade.SetFocus;
                       tExtrato.Edit;
                                tExtrato.FieldByName('Titulo').Value      := fieldbyname('Registro').asinteger;
                                tExtrato.FieldByName('Selecionado').Value := true;
                       tExtrato.Post;

                       Edit;
                           fieldbyname('Selecionado').Value := true;
                       Post;
                    end;

                    next;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position+1;
                    Application.ProcessMessages;
              end;

              // Procura os títulos utilizando apenas valor.
              Janela_Processamento.lProcesso.Caption := 'Procurando lançamentos utilizando "Valor"...';
              Janela_Processamento.Progresso.Position := 0;
             
              Application.ProcessMessages;
              
              First;
              while not Eof do begin
                    if FieldByName('Tipo').Value = 'R' then begin
                       mAchou := tExtrato.Locate('Valor;Titulo', VarArrayOf([FieldByName('Valor').AsCurrency     , NULL]), [loCaseInsensitive]);
                    end else begin
                       mAchou := tExtrato.Locate('Valor;Titulo', VarArrayOf([FieldByName('Valor').AsCurrency * -1, NULL]), [loCaseInsensitive]);
                    end;
                    If (mAchou) then begin
                       Grade.SetFocus;
                       tExtrato.Edit;
                                tExtrato.FieldByName('Titulo').Value      := tBaixasRegistro.Value;
                                tExtrato.FieldByName('Selecionado').Value := true;
                       tExtrato.Post;
             
                       Edit;
                               tBaixasSelecionado.Value := true;
                       Post;
                    end;
             
                    Next;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position+1;
                    Application.ProcessMessages;
              end;
              Refresh;
              First;
         end;
         with tExtrato do begin
              sql.Clear;
              sql.Add('SELECT * FROM ExtratoBancario');
              sql.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
              sql.Add('ORDER BY Selecionado, Data');
              ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
              ParamByName('pDataIni').AsDate  := cDataIni.Date;
              ParamByName('pDataFim').AsDate  := cDataFim.Date;
              Open;
         end;
         with tTotal do begin
              sql.Clear;
              sql.Add('SELECT  Debitos  = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Tipo = ''P'' AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1) * -1');
              sql.Add('       ,Creditos = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Tipo = ''R'' AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1)');
              ParamByName('pDataIni').AsDate := cDataIni.Date;
              ParamByName('pDataFim').AsDate := cDataFim.Date;
              Open;

              cDebitosFin.Value  := FieldByName('Debitos').AsCurrency;
              cCreditosFin.Value := FieldByName('Creditos').AsCurrency;
              cSaldoFin.Value    := FieldByName('Debitos').AsCurrency + FieldByName('Creditos').AsCurrency;
         end;
         Janela_Processamento.close;
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.ConciliaAb;
Var
   mAchou:Boolean;
begin
      // Procura os títulos utilizando data e valor.
      If tExtrato.Active then begin
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.lProcesso.Caption := 'Procurando lançamentos utilizando "Data + Valor"...';
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.Progresso.Max      := tBaixas.RecordCount;
         Janela_Processamento.Show;

         with tAbertos do begin
              first;
              while not eof do begin
                    if fieldbyname('Tipo').Value = 'R' then begin
                       mAchou := tExtrato.Locate('Valor;Titulo', VarArrayOf([FieldByName('Valor').AsCurrency, FieldByName('Numero').asinteger]), [loCaseInsensitive]);
                    end else begin
                       mAchou := tExtrato.Locate('Valor;Titulo', VarArrayOf([FieldByName('Valor').AsCurrency *-1, FieldByName('Numero').asinteger]), [loCaseInsensitive]);
                    end;
                    if mAchou then begin
                       Grade.SetFocus;
                       tExtrato.Edit;
                                tExtrato.FieldByName('Titulo').Value      := fieldbyname('Registro').asinteger;
                                tExtrato.FieldByName('Selecionado').Value := true;
                       tExtrato.Post;

                       Edit;
                           fieldbyname('Selecionado').Value := true;
                       Post;
                    end;

                    next;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position+1;
                    Application.ProcessMessages;
              end;
              {
              // Procura os títulos utilizando apenas valor.
              Janela_Processamento.lProcesso.Caption := 'Procurando lançamentos utilizando "Valor"...';
              Janela_Processamento.Progresso.Position := 0;
             
              Application.ProcessMessages;
              
              First;
              while not Eof do begin
                    if FieldByName('Tipo').Value = 'R' then begin
                       mAchou := tExtrato.Locate('Valor;Titulo', VarArrayOf([FieldByName('Valor').AsCurrency     , NULL]), [loCaseInsensitive]);
                    end else begin
                       mAchou := tExtrato.Locate('Valor;Titulo', VarArrayOf([FieldByName('Valor').AsCurrency * -1, NULL]), [loCaseInsensitive]);
                    end;
                    If (mAchou) then begin
                       Grade.SetFocus;
                       tExtrato.Edit;
                                tExtrato.FieldByName('Titulo').Value      := tBaixasRegistro.Value;
                                tExtrato.FieldByName('Selecionado').Value := true;
                       tExtrato.Post;
             
                       Edit;
                               tBaixasSelecionado.Value := true;
                       Post;
                    end;
             
                    Next;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position+1;
                    Application.ProcessMessages;
              end;
              Refresh;
              First;
              }
         end;
         {
         with tExtrato do begin
              sql.Clear;
              sql.Add('SELECT * FROM ExtratoBancario');
              sql.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
              sql.Add('ORDER BY Selecionado, Data');
              ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
              ParamByName('pDataIni').AsDate  := cDataIni.Date;
              ParamByName('pDataFim').AsDate  := cDataFim.Date;
              Open;
         end;
         with tTotal do begin
              sql.Clear;
              sql.Add('SELECT  Debitos  = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Tipo = ''P'' AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1) * -1');
              sql.Add('       ,Creditos = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Tipo = ''R'' AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1)');
              ParamByName('pDataIni').AsDate := cDataIni.Date;
              ParamByName('pDataFim').AsDate := cDataFim.Date;
              Open;

              cDebitosFin.Value  := FieldByName('Debitos').AsCurrency;
              cCreditosFin.Value := FieldByName('Creditos').AsCurrency;
              cSaldoFin.Value    := FieldByName('Debitos').AsCurrency + FieldByName('Creditos').AsCurrency;
         end;
         }
         Janela_Processamento.close;
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.tBaixasAfterScroll(DataSet: TDataSet);
Var
   mAchou: Boolean;
begin
      If tExtrato.Active then begin
         If tBaixas.FieldByName('Tipo').Value = 'R' then begin
            mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([tBaixas.FieldByName('Data').AsCurrency, tBaixas.FieldByName('Valor').AsCurrency     , tBaixas.FieldByName('Registro').AsInteger]), [loCaseInsensitive]);
         end else begin
            mAchou := tExtrato.Locate('Data;Valor;Titulo', VarArrayOf([tBaixas.FieldByName('Data').AsCurrency, tBaixas.FieldByName('Valor').AsCurrency * -1, tBaixas.FieldByName('Registro').AsInteger]), [loCaseInsensitive]);
         End;
         
         If not mAchou then begin
            Grade.Options := Grade.Options - [dgAlwaysShowSelection];
         end else
            Grade.Options := Grade.Options + [dgAlwaysShowSelection];
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.bDesfazerClick(Sender: TObject);
begin
      If MessageDlg('Atenção!'+#13+'Isto irá desfazer todas as conciliações do período indicado.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then 
         abort;

      with tExtrato do begin
           sql.Clear;
           sql.Add('update ExtratoBancario set Conciliado = null, Titulo = null, Selecionado = null');
           sql.Add('where Banco = :pBanco and Data between :pDataIni AND :pDataFim');
           ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           ParamByName('pDataIni').AsDate  := cDataIni.Date;
           ParamByName('pDataFim').AsDate  := cDataFim.Date;
           Execute;
           
           sql.Clear;
           sql.Add('select * from ExtratoBancario');
           sql.Add('where Banco = :pBanco and Data between :pDataIni and :pDataFim and isnull(Conciliado, 0) = 0');
           sql.Add('order by Selecionado, Data');
           ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           ParamByName('pDataIni').AsDate  := cDataIni.Date;
           ParamByName('pDataFim').AsDate  := cDataFim.Date;
           open;
      end;
      with tBaixas do begin
           sql.Clear;
           sql.Add('update PagarReceberBaixas set Conciliado = null');
           sql.Add('where Banco = :pBanco and Data between :pDataIni and :pDataFim');
           ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           ParamByName('pDataIni').AsDate  := cDataIni.Date;
           ParamByName('pDataFim').AsDate  := cDataFim.Date;
           Execute;
           
           sql.Clear;
           sql.Add('select Registro');
           sql.Add('      ,Numero');
           sql.Add('      ,Data');
           sql.Add('      ,Valor');
           sql.Add('      ,Forma_TipoDocumento');
           sql.Add('      ,Tipo');
           sql.Add('      ,Banco');
           sql.Add('      ,Descricao = (SELECT Descricao FROM '+CompClass+' CF WHERE CF.Codigo = (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero))');
           sql.Add('      ,Conciliado');
           sql.Add('      ,Selecionado');
           sql.Add('from   PagarReceberBaixas PRB');
           sql.Add('where PRB.Banco = :pBanco');
           sql.Add('and   PRB.Data between :pDataIni AND :pDataFim');
           sql.Add('and   ISNULL(Conciliado, 0) = 0');
           If cClassificacao.Text <> '' then begin
              sql.Add('  AND  (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero) = :pClassificacao');
              ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.AsString;
           End;
           sql.Add('ORDER BY Selecionado, Data');
           ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           ParamByName('pDataIni').AsDate  := cDataIni.Date;
           ParamByName('pDataFim').AsDate  := cDataFim.Date;
           //sql.savetofile('c:\temp\Conciliacao_Bancaria_Baixados.sql');
           Open;
      end;
      ConciliaBx;
      //Totaliza;
end;

procedure TFinanceiro_ConciliacaoBancaria.bFiltroClick(Sender: TObject);
begin
      bFiltro.Enabled := not bFiltro.Enabled;
      Screen.Cursor := crSQLWait;

      AbrirExtrato;
      
      with Dados do begin
           with tBaixas do begin
                sql.Clear;
                sql.Add('UPDATE PagarReceberBaixas SET Selecionado = null');
                sql.Add('WHERE  Banco = :pBanco');
                sql.Add('  AND  Data BETWEEN :pDataIni AND :pDataFim');
                sql.Add('  AND  ISNULL(Conciliado, 0) = 0');
                ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                ParamByName('pDataIni').AsDate  := cDataIni.Date;
                ParamByName('pDataFim').AsDate  := cDataFim.Date;
                execute;
                sql.Clear;
                sql.Add('SELECT  Registro');
                sql.Add('       ,Numero');
                sql.Add('       ,Data');
                sql.Add('       ,Valor');
                sql.Add('       ,Forma_TipoDocumento');
                sql.Add('       ,Tipo');
                sql.Add('       ,Banco');
                sql.Add('       ,Descricao = (SELECT Descricao FROM '+CompClass+' CF WHERE CF.Codigo = (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero))');
                sql.Add('       ,Conciliado');
                sql.Add('       ,Selecionado');
                sql.Add('FROM   PagarReceberBaixas PRB');
                sql.Add('WHERE  PRB.Banco = :pBanco');
                sql.Add('  AND  PRB.Data BETWEEN :pDataIni AND :pDataFim');
                sql.Add('  AND  ISNULL(Conciliado, 0) = 0');
                If cClassificacao.Text <> '' then begin
                   SQL.Add('  AND  (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero) = :pClassificacao');
                   ParamByName('pClassificacao').AsString := ClassificacaoFinanceiraCodigo.AsString;
                End;

                sql.Add('ORDER BY Selecionado, Data');
                ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                ParamByName('pDataIni').AsDate  := cDataIni.Date;
                ParamByName('pDataFim').AsDate  := cDataFim.Date;
                //sql.SaveToFile('c:\temp\Conciliacao_Baixas.sql');
                Open;
           end;
           with tAbertos do begin
                sql.Clear;
                sql.Add('select Numero');
                sql.Add('      ,Data = Data_Vencimento');
                sql.Add('      ,Valor = Valor_Parcela');
                sql.Add('      ,Forma_TipoDocumento = Numero_Documento');
                sql.Add('      ,Tipo');
                sql.Add('      ,Banco');
                sql.Add('      ,Descricao = (select Descricao from '+CompClass+' CF where CF.Codigo = Classificacao)');
                sql.Add('      ,Conciliado = cast(0 as bit)');
                sql.Add('      ,Selecionado = cast(0 as bit)');
                sql.Add('from   PagarReceber pr');
                SQL.Add('where  pr.Banco = :pBanco');
                sql.add('and isnull((select sum(Valor) from PagarReceberBaixas prb where prb.Numero = pr.numero), 0) <> Valor_parcela');
                if trim(cClassificacao.Text) <> '' then begin
                   sql.Add('and  Classificacao = :pClassificacao');
                   ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.AsString;
                End;
                sql.Add('order by Selecionado, Data');
                ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                //sql.savetofile('c:\temp\Conciliacao_Bancaria_Abertos.sql');
                Open;
           end;

           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT  Debitos  = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Tipo = ''P'' AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1) * -1');
           tTotal.SQL.Add('       ,Creditos = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Tipo = ''R'' AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1)');
           tTotal.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tTotal.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tTotal.Open;

           cDebitosFin.Value  := tTotal.FieldByName('Debitos').AsCurrency;
           cCreditosFin.Value := tTotal.FieldByName('Creditos').AsCurrency;
           cSaldoFin.Value    := tTotal.FieldByName('Debitos').AsCurrency + tTotal.FieldByName('Creditos').AsCurrency;

           cArquivo.Enabled := cBanco.Text <> '';

           tExtrato.SQL.Clear;
           tExtrato.SQL.Add('SELECT * FROM ExtratoBancario');
           tExtrato.SQL.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
           tExtrato.SQL.Add('ORDER BY Selecionado, Data');
           tExtrato.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           tExtrato.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tExtrato.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           tExtrato.Open;

           ConciliaBx;
           Totaliza;
           ConciliaAb;
      end;

      Screen.Cursor := crDefault;
      bFiltro.Enabled := not bFiltro.Enabled;
end;

procedure TFinanceiro_ConciliacaoBancaria.AbrirExtrato;
var
    mArquivo  : TextFile;
    mLinha    : String;
    mData     : String;
    mDescricao: String;
    mNovo     : Boolean;
    mBanco    : Integer;
begin
      cArquivo.Text := Removecaracter('"', '', cArquivo.Text);
      If not FileExists(cArquivo.Text) then begin
         MessageDlg('Arquivo de extrato inválido!', mtError, [mbOK], 0);
         bFiltro.Enabled := not bFiltro.Enabled;
         Abort;
      End;
      If (DataLimpa(cDataIni.Text)) or (DataLimpa(cDataFim.Text)) then begin
         MessageDlg('Data inválida!', mtError, [mbOK], 0);
         bFiltro.Enabled := not bFiltro.Enabled;
         Abort;
      End;

      Screen.Cursor := crSQLWait;

      // Verifica se já existe movimento importado com a data solicitada.
      with tTotal do begin
           sql.Clear;
           sql.Add('select count(*) as Qtde from ExtratoBancario where Banco = :pBanco and Data between :pDataIni and :pDataFim and Conciliado = 1');
           parambyname('pDataIni').AsDate  := cDataIni.Date;
           parambyname('pDataFim').AsDate  := cDataFim.Date;
           parambyname('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           open;
      end;
      if tTotal.FieldByName('Qtde').AsInteger > 0 then begin
         MessageDlg('Extrato do periodo solicitado ja foi importado e conciliado!'+#13+#13+'Para importar novamento é necessário desfazer a conciliação.', mtInformation, [mbOK], 0);
         bFiltro.Enabled := not bFiltro.Enabled;
         Screen.Cursor := crDefault;
         Abort;
      end else begin
         with tExtrato do begin
              sql.Clear;
              sql.Add('delete from ExtratoBancario');
              sql.Add('where Banco = :pBanco and Data between :pDataIni and :pDataFim and isnull(Conciliado, 0) = 0');
              parambyname('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
              parambyname('pDataIni').AsDate  := cDataIni.Date;
              parambyname('pDataFim').AsDate  := cDataFim.Date;
              execute;
              sql.Clear;
              sql.Add('select * from extratobancario');
              sql.Add('where Banco = :pBanco and Data between :pDataIni and :pDataFim and isnull(Conciliado, 0) = 0');
              sql.Add('order by Selecionado, Data');
              parambyname('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
              parambyname('pDataIni').AsDate  := cDataIni.Date;
              parambyname('pDataFim').AsDate  := cDataFim.Date;
              open;
         end;
      End;

      // Carrega o arquivo do extrato do banco para o banco de dados do sistema.
      cArquivo.Text := RemoveCaracter('"', '', cArquivo.Text);

      If FileExists(cArquivo.Text) then begin
         Grade.Enabled := false;
         tExtrato.DisableControls;
         
         AssignFile(mArquivo, cArquivo.Text);
         Reset(mArquivo);

         With Dados do begin
              with HistoricosBancos do begin
                   SQL.Clear;
                   SQL.Add('SELECT * FROM HistoricosBancos WHERE(Banco = :pBanco) AND (Classificacao <> '''') ORDER BY Descricao DESC');
                   ParamByName('pBanco').AsInteger  := BancosCodigo.AsInteger;
                   Open;
              end;
              with tExtrato do begin
                   SQL.Clear;
                   SQL.Add('SELECT * FROM ExtratoBancario');
                   SQL.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
                   SQL.Add('ORDER BY Selecionado, Data');
                   ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                   ParamByName('pDataIni').AsDate  := cDataIni.Date;
                   ParamByName('pDataFim').AsDate  := cDataFim.Date;
                   Open;
              end;
              while not Eof (mArquivo) do begin
                    ReadLn(mArquivo, mLinha);
                    mLinha := Trim(mLinha);
                    mNovo  := Pos('<STMTTRN>', mLinha) <> 0;

                    // Verifica se o extrato é do banco informado.
                    If Pos('<BANKID>', mLinha) <> 0 then begin
                       mBanco := StrtoInt(Copy(mLinha, Pos('<BANKID>', mLinha)+8, Length(mLinha)));
                       If mBanco <> BancosNumero_Banco.AsInteger then begin
                          MessageDlg('Erro!'+#13+#13+'O extrato informado não pertence ao banco '+BancosNome.AsString+'.', mtError, [mbOK], 0);
                          Screen.Cursor := crDefault;
                          bFiltro.Enabled := not bFiltro.Enabled;
                          Abort;
                       End;
                    End;
                    If mNovo then begin
                       with tNumero do begin
                            sql.Clear;
                            sql.Add('select max(Registro) as Registro from ExtratoBancario');
                            open;
                       end;
                       tExtrato.Append;
                                tExtratoRegistro.Value      := tNumero.FieldByName('Registro').AsInteger + 1;
                                tExtratoAberto.Value        := false;
                                tExtratoBaixado.Value       := false;
                                tExtratoClassificacao.Value := '';

                                while mNovo do begin
                                      ReadLn(mArquivo, mLinha);
                                      mLinha := Trim(mLinha);
                                      mNovo  := Pos('</STMTTRN>', mLinha) = 0;

                                      If Pos('<DTPOSTED>', mLinha) <> 0 then begin
                                         mData := Copy(mLinha, Pos('<DTPOSTED>', mLinha)+10, 8);
                                         mData := Copy(mData, 7,2)+'/'+Copy(mData, 5,2)+'/'+Copy(mData, 1,4);
                                         tExtratoData.Value := StrtoDate(mData);
                                      End;
                                      If Pos('<MEMO>', mLinha) <> 0 then begin
                                         mDescricao := Copy(mLinha, Pos('<MEMO>', mLinha)+6, Length(mLinha));
                                         mDescricao := RemoveCaracter('</MEMO>', '', mDescricao);
                                         tExtratoDescricao.Value := Trim(mDescricao);
                                      End;
                                      If Pos('<CHKNUM>', mLinha) <> 0 then begin
                                         mDescricao := Copy(mLinha, Pos('<CHKNUM>', mLinha)+8, Length(mLinha));
                                         mDescricao := RemoveCaracter('</CHKNUM>', '', mDescricao);
                                         tExtratoDocumento.Value := mDescricao;
                                      End;
                                      If (Pos('<FITID>', mLinha) <> 0) and (Trim(tExtratoDocumento.AsString) = '') then begin
                                         mDescricao := Copy(mLinha, Pos('<FITID>', mLinha)+7, Length(mLinha));
                                         mDescricao := RemoveCaracter('</FITID>', '', mDescricao);
                                         tExtratoDocumento.Value := mDescricao;
                                      End;
                                      If Pos('<TRNAMT>', mLinha) <> 0 then begin
                                         mDescricao := Copy(mLinha, Pos('<TRNAMT>', mLinha)+8, Length(mLinha));
                                         mDescricao := RemoveCaracter('</TRNAMT>', '', mDescricao);
                                         mDescricao := RemoveCaracter('.', '', mDescricao);
                                         mDescricao := RemoveCaracter(',', '', mDescricao);
                                         tExtratoValor.Value := StrtoCurr(mDescricao)/100;
                                         If tExtratoValor.Value < 0 then begin
                                            tExtratoTipo.Value  := 'P';
                                         end else begin
                                            tExtratoTipo.Value := 'R';
                                         End;
                                      End;
                                      tExtratoHistorico.Value  := 0;
                                      tExtratoBanco.Value      := BancosCodigo.AsInteger;
                                      tExtratoConciliado.Value := false;
                                End;

                                // Pega a classificação financeira na tabela de históricos bancários.
                                HistoricosBancos.SQL.Clear;
                                HistoricosBancos.SQL.Add('SELECT * FROM HistoricosBancos WHERE Banco = :pBanco AND Descricao = :pDesc');
                                HistoricosBancos.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                                HistoricosBancos.ParamByName('pDesc').AsString   := Trim(tExtratoDescricao.Value);
                                HistoricosBancos.Open;
                                If HistoricosBancos.RecordCount > 0 then begin
                                   tExtratoClassificacao.Value := HistoricosBancosClassificacao.AsString;
                                End;
                       If (tExtratoData.Value >= cDataIni.Date) and (tExtratoData.Value <= cDataFim.Date) then
                          tExtrato.Post
                       else
                          tExtrato.Cancel;

                       // Cadastra os historicos não encontrados nos históricos do banco.
                       HistoricosBancos.SQL.Clear;
                       HistoricosBancos.SQL.Add('SELECT * FROM HistoricosBancos WHERE Banco = :pBanco AND Descricao = :pDesc');
                       HistoricosBancos.ParamByName('pDesc').AsString   := tExtrato.FieldByName('Descricao').AsString;
                       HistoricosBancos.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                       HistoricosBancos.Open;
                       If HistoricosBancos.RecordCount = 0 then begin
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM HistoricosBancos');
                          tCodigo.Open;

                          HistoricosBancos.Append;
                                           HistoricosBancosCodigo.Value    := tCodigo.FieldByName('Codigo').AsInteger;
                                           HistoricosBancosBanco.Value     := BancosCodigo.AsInteger;
                                           HistoricosBancosDescricao.Value := Trim(tExtrato.FieldByName('Descricao').AsString);
                          HistoricosBancos.Post;
                       End;
                    End;
              End;

              tExtrato.SQL.Clear;
              tExtrato.SQL.Add('SELECT * FROM ExtratoBancario');
              tExtrato.SQL.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
              tExtrato.SQL.Add('ORDER BY Selecionado, Data');
              tExtrato.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
              tExtrato.ParamByName('pDataIni').AsDate  := cDataIni.Date;
              tExtrato.ParamByName('pDataFim').AsDate  := cDataFim.Date;
              tExtrato.Open;

              tExtrato.First;
         End;

         CloseFile (mArquivo);
      end else begin
         If Trim(cArquivo.Text) <> '' then begin
            ShowMessage('Arquivo não encontrado...'+cArquivo.Text);
            Screen.Cursor := crDefault;
            Abort;
         End;
      End;

      bGerar.Enabled := tExtrato.RecordCount > 0;

      Grade.Enabled := true;
      tExtrato.EnableControls;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_ConciliacaoBancaria.Totaliza;
begin
      Screen.Cursor := crSQLWait;

      cSelFin.Value := 0;
      cSelExt.Value := 0;

      With Dados do begin
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT  Debitos     = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Banco = :pBanco AND Tipo = ''P'' AND Data BETWEEN :pDataIni AND :pDataFim) *-1');
           tTotal.SQL.Add('       ,Creditos    = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Banco = :pBanco AND Tipo = ''R'' AND Data BETWEEN :pDataIni AND :pDataFim)');
           tTotal.SQL.Add('       ,Saldo       = (SELECT SUM(CASE WHEN Tipo = ''R'' THEN Valor ELSE Valor *-1 END) FROM PagarReceberBaixas WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim)');
           tTotal.SQL.Add('       ,TotalBaixas = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim)');
           tTotal.SQL.Add('       ,TotalSel    = (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1)');
           tTotal.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tTotal.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           tTotal.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           tTotal.Open;

           cDebitosFin.Value  := tTotal.FieldByName('Debitos').AsCurrency;
           cCreditosFin.Value := tTotal.FieldByName('Creditos').AsCurrency;
           cSaldoFin.Value    := tTotal.FieldByName('Saldo').AsCurrency;
           cTotalFin.Value    := tTotal.FieldByName('TotalBaixas').AsCurrency;
           cSelFin.Value      := tTotal.FieldByName('TotalSel').AsCurrency;

           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT  Debitos  = (SELECT SUM(Valor) FROM ExtratoBancario WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND Valor <  0)');
           tTotal.SQL.Add('       ,Creditos = (SELECT SUM(Valor) FROM ExtratoBancario WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND Valor >= 0)');
           tTotal.SQL.Add('       ,Saldo    = (SELECT SUM(Valor) FROM ExtratoBancario WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim)');
           tTotal.SQL.Add('       ,TotalExt = (SELECT SUM(CASE WHEN Valor >= 0 THEN Valor ELSE Valor * -1 END) FROM ExtratoBancario WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim )');
           tTotal.SQL.Add('       ,SelExt   = (SELECT SUM(CASE WHEN Valor >= 0 THEN Valor ELSE Valor * -1 END) FROM ExtratoBancario WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND Selecionado = 1)');
           tTotal.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           tTotal.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tTotal.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           tTotal.Open;

           cDebitosExt.Value  := tTotal.FieldByName('Debitos').AsCurrency;
           cCreditosExt.Value := tTotal.FieldByName('Creditos').AsCurrency;
           cSaldoExt.Value    := tTotal.FieldByName('Debitos').AsCurrency + tTotal.FieldByName('Creditos').AsCurrency;
           cTotalExt.Value    := tTotal.FieldByName('TotalExt').AsCurrency;
           cSelExt.Value      := tTotal.FieldByName('SelExt').AsCurrency;
           cSaldoExt.Value    := tTotal.FieldByName('Saldo').AsCurrency;
      End;
      Screen.Cursor := crDefault;
end;



procedure TFinanceiro_ConciliacaoBancaria.bDesmarcarClick(Sender: TObject);
begin
      If MessageDlg('Isso ira desfazer todas as conciliações feitas!'+#13+#13+'Deseja realmente executar esta operação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         Abort;
          
      With Dados do begin
           tBaixas.SQL.Clear;
           tBaixas.SQL.Add('UPDATE PagarReceberBaixas SET Selecionado = null');
           tBaixas.SQL.Add('WHERE  Banco = :pBanco');
           tBaixas.SQL.Add('  AND  Data BETWEEN :pDataIni AND :pDataFim');
           tBaixas.SQL.Add('  AND  ISNULL(Conciliado, 0) = 0');
           tBaixas.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tBaixas.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tBaixas.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           tBaixas.Execute;

           tBaixas.SQL.Clear;
           tBaixas.SQL.Add('SELECT  Registro');
           tBaixas.SQL.Add('       ,Numero');
           tBaixas.SQL.Add('       ,Data');
           tBaixas.SQL.Add('       ,Valor');
           tBaixas.SQL.Add('       ,Forma_TipoDocumento');
           tBaixas.SQL.Add('       ,Tipo');
           tBaixas.SQL.Add('       ,Banco');
           tBaixas.SQL.Add('       ,Descricao = (SELECT Descricao FROM '+CompClass+' CF WHERE CF.Codigo = (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero))');
           tBaixas.SQL.Add('       ,Conciliado');
           tBaixas.SQL.Add('       ,Selecionado');
           tBaixas.SQL.Add('FROM   PagarReceberBaixas PRB');
           tBaixas.SQL.Add('WHERE  PRB.Banco = :pBanco');
           tBaixas.SQL.Add('  AND  PRB.Data BETWEEN :pDataIni AND :pDataFim');
           tBaixas.SQL.Add('  AND  ISNULL(Conciliado, 0) = 0');
           If cClassificacao.Text <> '' then begin
              tBaixas.SQL.Add('  AND  (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero) = :pClassificacao');
              tBaixas.ParamByName('pClassificacao').AsString := ClassificacaoFinanceiraCodigo.AsString;
           End;

           tBaixas.SQL.Add('ORDER BY Selecionado, Data');
           tBaixas.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tBaixas.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tBaixas.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           //tBaixas.SQL.SaveToFile('c:\temp\Conciliacao_Baixas.sql');
           tBaixas.Open;

           tExtrato.SQL.Clear;
           tExtrato.SQL.Add('UPDATE ExtratoBancario SET Selecionado = NULL ');
           tExtrato.SQL.Add('                          ,Titulo      = NULL ');
           tExtrato.SQL.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
           tExtrato.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tExtrato.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tExtrato.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           tExtrato.Execute;
           
           tExtrato.SQL.Clear;
           tExtrato.SQL.Add('SELECT * FROM ExtratoBancario');
           tExtrato.SQL.Add('WHERE Banco = :pBanco AND Data BETWEEN :pDataIni AND :pDataFim AND ISNULL(Conciliado, 0) = 0');
           tExtrato.SQL.Add('ORDER BY Selecionado, Data');
           tExtrato.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           tExtrato.ParamByName('pDataIni').AsDate  := cDataIni.Date;
           tExtrato.ParamByName('pDataFim').AsDate  := cDataFim.Date;
           tExtrato.Open;

           Totaliza;
      End;
end;

procedure TFinanceiro_ConciliacaoBancaria.tExtratoAfterScroll(DataSet: TDataSet);
begin
     With Dados do begin
          cCodClass.Clear;
          cDescClass.Clear;
          If HistoricosBancos.Locate('Descricao', tExtrato.FieldByName('Descricao').AsString, [loCaseInsensitive]) then begin
             cCodClass.Text  := HistoricosBancos.FieldByName('Classificacao').AsString;
             If ClassificacaoFinanceira.Locate('Codigo', HistoricosBancos.FieldByName('Classificacao').AsString, [loCaseInsensitive]) then
                cDescClass.Text := ClassificacaoFinanceira.FieldByName('Descricao').AsString;
          End;
     End;
end;

end.


