unit frmProcesso_ImportacaoDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes,
  DB, DBAccess, MSAccess, DBClient, Grids, DBGrids, MemDS, Vcl.Menus, system.UITypes, ClipBrd;

type
  TProcesso_ImportacaoDespesas = class(TForm)
    Grade: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bLancamentos: TButton;
    tClass: TMSQuery;
    dstDespesas: TDataSource;
    tClassCodigo: TStringField;
    tClassDescricao: TStringField;
    tClassDocumento: TStringField;
    tClassData: TDateTimeField;
    tClassVencimento: TDateTimeField;
    tClassValor: TCurrencyField;
    tClassUso: TIntegerField;
    tDesp: TClientDataSet;
    tDespClassificacao: TStringField;
    tDespDescricao: TStringField;
    tDespDocumento: TStringField;
    tDespDescricao_Doc: TStringField;
    tDespData_DOC: TDateField;
    tDespData_Venc: TDateField;
    tDespValor: TCurrencyField;
    cPesquisa: TEdit;
    tPesquisa: TMSQuery;
    StaticText8: TStaticText;
    cMostrar: TRadioGroup;
    tDespBeneficiario: TIntegerField;
    PopupMenu1: TPopupMenu;
    Pesquisar1: TMenuItem;
    PesquisarClassificaoFinanceira1: TMenuItem;
    N1: TMenuItem;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Filtra;
    procedure cMovimentoClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bLancamentosClick(Sender: TObject);
    procedure cMostrarClick(Sender: TObject);
    procedure Pesquisar1Click(Sender: TObject);
    procedure PesquisarClassificaoFinanceira1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Processo_ImportacaoDespesas: TProcesso_ImportacaoDespesas;

implementation

uses frmDados, frmMenu_Principal, frmPesquisaGerais;

{$R *.dfm}

procedure TProcesso_ImportacaoDespesas.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_ImportacaoDespesas.Filtra;
var
   mClass:string;
begin
      mClass := iif(Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira', 'ClassificacaoFinanceira');

      tClass.SQL.Clear;
      tClass.SQL.Add('SELECT Codigo');
      tClass.SQL.Add('      ,Descricao');
      tClass.SQL.Add('      ,Documento   = Tipo_Documento');
      tClass.SQL.Add('      ,Data        = :pData');
      tClass.SQL.Add('      ,Vencimento  = :pVencto');
      tClass.SQL.Add('      ,Valor       = CAST(0 AS money)');
      tClass.SQL.Add('      ,Ultimo_Pago = ISNULL((SELECT MAX(Valor_Documento) FROM PagarReceber WHERE Classificacao = Codigo), 0)');
      tClass.SQL.Add('      ,Uso         = (SELECT COUNT(*) FROM PagarReceber WHERE Classificacao = Codigo)');
      tClass.SQL.Add('FROM   '+mClass);
      tClass.SQL.Add('WHERE  Modalidade_Importacao = :pModalidade');
      tClass.SQL.Add('AND    Tipo = ''P'' ');
      tClass.SQL.Add('AND    Desativada <> 1');
      if cMostrar.ItemIndex = 0 then begin
         tClass.SQL.Add('AND   (SELECT COUNT(*) FROM PagarReceber WHERE Classificacao = Codigo) > 0');
      end;
      if cMostrar.ItemIndex = 1 then begin
         tClass.SQL.Add('AND   (SELECT COUNT(*) FROM PagarReceber WHERE Classificacao = Codigo) = 0');
      end;
      tClass.SQL.Add('ORDER BY Uso Desc, Descricao');
      tClass.ParamByName('pModalidade').AsInteger := Dados.ProcessosDOCModalidade_Importacao.AsInteger;
      if not DataLimpa(Dados.ProcessosDOCData_RegistroDeclaracao.AsString) then begin
         tClass.ParamByName('pData').AsDate   := Dados.ProcessosDOCData_RegistroDeclaracao.Value;
         tClass.ParamByName('pVencto').AsDate := Dados.ProcessosDOCData_RegistroDeclaracao.Value;
      end else begin
         tClass.ParamByName('pData').AsDate   := Date;
         tClass.ParamByName('pVencto').AsDate := Date;
      end;
      //tClass.SQL.SavetoFile('c:\temp\Processos_Despesas.sql');
      tClass.Open;

      tDesp.First;
      while not tDesp.Eof do begin
            if tDesp.FieldByName('Valor').AsCurrency <= 0 then
               tDesp.Delete
            else
               tDesp.Next;
      end;
      tClass.First;
      while not tClass.Eof do begin
            if not tDesp.Locate('Classificacao', tClass.FieldByName('Codigo').AsString, [loCaseInsensitive]) then begin
               tDesp.Append;
                     tDesp.FieldByName('Classificacao').Value := tClass.FieldByName('Codigo').AsString;
                     tDesp.FieldByName('Documento').Value     := tClass.FieldByName('Documento').AsString;
                     tDesp.FieldByName('Data_DOC').Value      := tClass.FieldByName('Data').AsDateTime;
                     tDesp.FieldByName('Data_Venc').Value     := tClass.FieldByName('Vencimento').AsDateTime;
                     //tDesp.FieldByName('Fornecedor').Value    := 0;
               tDesp.Post;
            end;
            tClass.Next;
      end;
      tDesp.First;
end;

procedure TProcesso_ImportacaoDespesas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Processo_ImportacaoDespesas.Release;
      Processo_ImportacaoDespesas := nil;
end;

procedure TProcesso_ImportacaoDespesas.FormShow(Sender: TObject);
begin
     tDesp.Open;
     Filtra;
     with Dados do begin
          TiposDocumentos.SQL.Clear;
          TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos ORDER BY Descricao');
          TiposDocumentos.Open;
          with Fornecedores do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
               Open;
          end;
     end;
end;

procedure TProcesso_ImportacaoDespesas.Pesquisar1Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1';
      PesquisaGerais.Showmodal;
      with tDesp do begin
           edit;
              fieldbyname('Beneficiario').value := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
           post;   
      end;
end;

procedure TProcesso_ImportacaoDespesas.PesquisarClassificaoFinanceira1Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mFiltro := 'and isnull(Desativada, 0) = 0';
      PesquisaGerais.Showmodal;
      with tDesp do begin
           edit;
              fieldbyname('Classificacao').value := Clipboard.AsText;
           post;   
      end;
end;

procedure TProcesso_ImportacaoDespesas.cMovimentoClick(Sender: TObject);
begin
      Filtra;
end;


procedure TProcesso_ImportacaoDespesas.cPesquisaChange(Sender: TObject);
var
   mClass:string;
begin
      mClass := iif(Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira', 'ClassificacaoFinanceira');
      
      tPesquisa.SQL.Clear;
      tPesquisa.SQL.Add('SELECT Codigo');
      tPesquisa.SQL.Add('FROM   '+mClass);
      tPesquisa.SQL.Add('WHERE  Modalidade_Importacao = :pModalidade');
      tPesquisa.SQL.Add('AND    Desativada <> 1');
      tPesquisa.SQL.Add('AND    Tipo = ''P'' ');
      tPesquisa.SQL.Add('AND    Descricao LIKE '+QuotedStr(cPesquisa.Text+'%') );
      tPesquisa.SQL.Add('ORDER BY Codigo');
      tPesquisa.ParamByName('pModalidade').AsInteger := Dados.ProcessosDOCModalidade_Importacao.AsInteger;
      tPesquisa.Open;

      if tPesquisa.RecordCount = 0 then begin
         tPesquisa.SQL.Clear;
         tPesquisa.SQL.Add('SELECT Codigo');
         tPesquisa.SQL.Add('FROM   '+mClass);
         tPesquisa.SQL.Add('WHERE  Modalidade_Importacao = :pModalidade');
         tPesquisa.SQL.Add('AND    Desativada <> 1');
         tPesquisa.SQL.Add('AND    Tipo = ''P'' ');
         tPesquisa.SQL.Add('AND    Descricao LIKE '+QuotedStr('%'+cPesquisa.Text+'%') );
         tPesquisa.SQL.Add('ORDER BY Codigo');
         tPesquisa.ParamByName('pModalidade').AsInteger := Dados.ProcessosDOCModalidade_Importacao.AsInteger;
         tPesquisa.Open;
      end;

      tDesp.Locate('Classificacao', tPesquisa.FieldByName('Codigo').Value, [loCaseInsensitive]);
end;

procedure TProcesso_ImportacaoDespesas.bLancamentosClick(Sender: TObject);
begin
     bLancamentos.Enabled := false;
     with Dados do begin
          tDesp.First;
          while not tDesp.Eof do begin
                if tDesp.FieldByName('Valor').AsCurrency > 0 then begin
                   tPesquisa.SQL.Clear;
                   tPesquisa.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM PagarReceber');
                   tPesquisa.Open;

                   ClassificacaoFinanceira.Locate('Codigo', tDesp.FieldByName('Classificacao').AsString, [loCaseInsensitive]);

                   PagarReceber.Append;
                                PagarReceberNumero.Value           := tPesquisa.FieldByName('Numero').AsInteger;
                                PagarReceberTipo.Value             := 'P';
                                PagarReceberClassificacao.Value    := tDesp.FieldByName('Classificacao').Value;
                                PagarReceberFornecedor.Value       := tDesp.FieldByName('Beneficiario').asinteger;
                                PagarReceberData_Documento.Value   := tDesp.FieldByName('Data_DOC').Value;
                                PagarReceberData_Vencimento.Value  := tDesp.FieldByName('Data_Venc').Value;
                                PagarReceberValor_Documento.Value  := tDesp.FieldByName('Valor').Value;
                                PagarReceberValor_Parcela.Value    := tDesp.FieldByName('Valor').Value;
                                PagarReceberMulta.Value            := 0;
                                PagarReceberJuros.Value            := 0;
                                PagarReceberDesconto.Value         := 0;
                                PagarReceberValor_Total.Value      := tDesp.FieldByName('Valor').Value;
                                PagarReceberValor_Operacao.Value   := tDesp.FieldByName('Valor').Value;
                                PagarReceberDocumento.Value        := tDesp.FieldByName('Documento').Value;
                                PagarReceberNumero_Documento.Value := ProcessosDOCNumero_Declaracao.Value;
                                PagarReceberProcesso.Value         := ProcessosDOCProcesso.Value;
                                PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                PagarReceberFiscal.Value           := ProcessosDOCNumero_Declaracao.Value;
                                PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                PagarReceberTipo_Nota.Value        := 'PR';
                                PagarReceberObservacao.Value       := 'Processo :'+ProcessosDOCProcesso.AsString + ' DI :'+ProcessosDOCNumero_Declaracao.AsString;
                                PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                   PagarReceber.Post;
                end;

                tDesp.Next
          end;
     end;

     MessageDlg('Lançamentos gerados no conta a pagar.', mtInformation, [mbOK], 0);
     close;
     bLancamentos.Enabled := true;
end;

procedure TProcesso_ImportacaoDespesas.cMostrarClick(Sender: TObject);
begin
      Filtra;
end;


end.
