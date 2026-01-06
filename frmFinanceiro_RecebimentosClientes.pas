unit frmFinanceiro_RecebimentosClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Mask,
  RxLookup, RXSpin, DateUtils, IniFiles, system.UITypes, Vcl.ComCtrls, DB, DBAccess, Funcoes, MSAccess, RxToolEdit, MemDS;

type
  TFinanceiro_RecebimentosClientes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Button1: TButton;
    bGerar: TButton;
    cClassificacao: TRxDBLookupCombo;
    StaticText4: TStaticText;
    StaticText8: TStaticText;
    cEmissao: TDateEdit;
    StaticText13: TStaticText;
    cDocumento: TRxDBLookupCombo;
    cMes: TComboBox;
    cAno: TRxSpinEdit;
    StaticText2: TStaticText;
    Progresso: TProgressBar;
    Label1: TLabel;
    tNumero: TMSQuery;
    cCentroCusto: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cNota: TRxSpinEdit;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_RecebimentosClientes: TFinanceiro_RecebimentosClientes;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_RecebimentosClientes.Button1Click(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_RecebimentosClientes.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    aINI: TIniFile;
begin
      // Salva as configurações do layout utilizado.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      If Trim(cClassificacao.Text) <> '' then
         aINI.WriteString ( 'FINANCEIRO_TITULOS_CLIENTE', 'Classificacao' , cClassificacao.KeyValue)
      else
         aINI.WriteString ( 'FINANCEIRO_TITULOS_CLIENTE', 'Classificacao' , '');

      If Trim(cCentroCusto.Text) <> '' then
         aINI.WriteString ( 'FINANCEIRO_TITULOS_CLIENTE', 'CentroCusto'   , cCentroCusto.KeyValue)
      else
         aINI.WriteString ( 'FINANCEIRO_TITULOS_CLIENTE', 'CentroCusto'   , '');

      aINI.WriteString ( 'FINANCEIRO_TITULOS_CLIENTE', 'Documento'     , cDocumento.KeyValue);
      aINI.WriteDate   ( 'FINANCEIRO_TITULOS_CLIENTE', 'Emissao'       , cEmissao.Date);
      aINI.WriteInteger( 'FINANCEIRO_TITULOS_CLIENTE', 'Mes'           , cMes.ItemIndex);
      aINI.WriteInteger( 'FINANCEIRO_TITULOS_CLIENTE', 'Ano'           , cAno.AsInteger );
      aINI.WriteInteger( 'FINANCEIRO_TITULOS_CLIENTE', 'NumeroDOC'     , cNota.AsInteger );
      aINI.Free;

      Financeiro_RecebimentosClientes.Release;
      Financeiro_RecebimentosClientes := nil;
end;

procedure TFinanceiro_RecebimentosClientes.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_RecebimentosClientes.FormShow(Sender: TObject);
Var
    aINI: TIniFile;
begin
       aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
       cClassificacao.KeyValue := aINI.ReadString ('FINANCEIRO_TITULOS_CLIENTE', 'Classificacao', '');
       cCentroCusto.KeyValue   := aINI.ReadString ('FINANCEIRO_TITULOS_CLIENTE', 'CentroCusto'  , '');
       cDocumento.KeyValue     := aINI.ReadString ('FINANCEIRO_TITULOS_CLIENTE', 'Documento'    , '');
       cEmissao.Date           := aINI.ReadDate   ('FINANCEIRO_TITULOS_CLIENTE', 'Emissao'      , Date);
       cMes.ItemIndex          := aINI.ReadInteger('FINANCEIRO_TITULOS_CLIENTE', 'Mes'          , MonthOf(Date));
       cAno.Value              := aINI.ReadInteger('FINANCEIRO_TITULOS_CLIENTE', 'Ano'          , YearOf(Date));
       cNota.Value             := aINI.ReadInteger('FINANCEIRO_TITULOS_CLIENTE', 'NumeroDoc'    , 0);
       aINI.Free;

       With Dados do begin
            ClassificacaoFinanceira.SQL.Clear;
            ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE (Tipo = :pTipo) AND (Desativada <> 1) ORDER BY Descricao');
            ClassificacaoFinanceira.ParamByName('pTipo').AsString := 'R';
            ClassificacaoFinanceira.Open;

            TiposDocumentos.SQL.Clear;
            TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos ORDER BY Codigo');
            TiposDocumentos.Open;

            CentroCusto.SQL.Clear;
            CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
            CentroCusto.Open;

            cEmissao.Date  := Date;
            cMes.ItemIndex := MonthOf(Date);
            cAno.Value     := YearOf(Date);
       End;
end;

procedure TFinanceiro_RecebimentosClientes.bGerarClick(Sender: TObject);
Var
    mVencimento: TDate;
begin
      If Trim(cClassificacao.Text) = '' then begin
         MessageDlg('Classificação Financeira é campo obrigatório!', mtError, [mbOK], 0);
         Abort;
      End;
      If Trim(cDocumento.Text) = '' then begin
         MessageDlg('Documento é campo obrigatório!', mtError, [mbOK], 0);
         Abort;
      End;
      If DataLimpa(cEmissao.Text) then begin
         MessageDlg('Data de Emissão é campo obrigatório!', mtError, [mbOK], 0);
         Abort;
      End;
      If Trim(cMes.Text) = '' then begin
         MessageDlg('O Mês do vencimento é campo obrigatório!', mtError, [mbOK], 0);
         Abort;
      End;
      If cAno.AsInteger < YearOf(Date) -1 then begin
         MessageDlg('Ano do vencimento inválido!', mtError, [mbOK], 0);
         Abort;
      End;

      tNumero.SQL.Clear;
      tNumero.SQL.Add('SELECT MAX(Fiscal) FROM PagarReceber WHERE Tipo_Nota = ''RC'' ');
      tNumero.Open;

      If MessageDlg('Deseja realmente gerar os títulos no financeiro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;   

      Label1.Visible     := true;
      Progresso.Visible  := true;
      Progresso.Position := 0;

      With Dados do begin
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Cobranca_Boleto = 1 AND Ativo = 1 AND ISNULL(Mensalidade_Dia, 0) > 0 AND ISNULL(Mensalidade, 0) > 0');
           Clientes.Open;

           Progresso.Max := Clientes.RecordCount;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Data_Vencimento = :pData');
           PagarReceber.ParamByName('pData').AsDate := cEmissao.Date;
           PagarReceber.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');

           Clientes.First;
           While not Clientes.Eof do begin
                 mVencimento := StrtoDate(Clientes.FieldByName('Mensalidade_Dia').AsString+'/'+InttoStr(cMes.ItemIndex+1)+'/'+cAno.Text);

                 tNumero.Open;
                 PagarReceber.Append;
                              PagarReceberNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
                              PagarReceberTipo.Value             := 'R';
                              PagarReceberClassificacao.Value    := cClassificacao.KeyValue;
                              If Trim(cCentroCusto.Text) <> '' then PagarReceberCentro_Custo.Value := cCentroCusto.KeyValue;
                              PagarReceberData_Documento.Value   := cEmissao.Date;
                              PagarReceberData_Vencimento.Value  := mVencimento;
                              PagarReceberValor_Documento.Value  := Clientes.FieldByName('Mensalidade').AsCurrency;
                              PagarReceberValor_Parcela.Value    := Clientes.FieldByName('Mensalidade').AsCurrency;
                              PagarReceberMulta.Value            := 0;
                              PagarReceberJuros.Value            := 0;
                              PagarReceberDesconto.Value         := 0;
                              PagarReceberValor_Total.Value      := Clientes.FieldByName('Mensalidade').AsCurrency;
                              PagarReceberValor_Operacao.Value   := Clientes.FieldByName('Mensalidade').AsCurrency;
                              PagarReceberCliente.Value          := Clientes.FieldByName('Codigo').AsInteger;
                              PagarReceberDocumento.Value        := cDocumento.KeyValue;
                              PagarReceberNumero_Documento.Value := cNota.Text;
                              PagarReceberCustoConta.Value       := false;
                              PagarReceberCusto_Seletivo.Value   := false;
                              PagarReceberCusto_Entrada.Value    := false;
                              PagarReceberFiscal.Value           := cNota.Text;
                              PagarReceberTipo_Nota.Value        := 'RC';
                              PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                              PagarReceberObservacao.Value       := 'RECEBIMENTO DE MENSALIDADE DE CLIENTES REF. A '+UpperCase(NomeMes(cMes.ItemIndex-1));
                              PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa; 
                              PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                 PagarReceber.Post;
                 tNumero.Close;

                 cNota.AsInteger    := cNota.AsInteger + 1;
                 Progresso.Position := Progresso.Position + 1;

                 Clientes.Next;

                 Application.ProcessMessages;
           End;
      End;

      Showmessage('Títulos gerados com sucesso!');
      
      Label1.Visible     := false;
      Progresso.Visible  := false;
      Progresso.Position := 0;
end;

end.
