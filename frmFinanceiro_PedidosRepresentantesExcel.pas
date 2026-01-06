unit frmFinanceiro_PedidosRepresentantesExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, Mask, Funcoes, IniFiles, DB, DBAccess, MSAccess,
  Buttons, RxLookup, DBCtrls, Vcl.ComCtrls, MaskUtils, ClipBrd, ComObj, RxCurrEdit, RxToolEdit, MemDS, system.UITypes, frmFinanceiro_PedidosRepresentantes, Vcl.WinXCtrls;

type
    TAuxGrid = class(TStringGrid);
    TFinanceiro_PedidosRepresentantesExcel = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    lTransportador: TStaticText;
    StaticText24: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    cNaturezaDentro: TDBLookupComboBox;
    cModalidadeFrete: TComboBox;
    tItem: TMSQuery;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    StaticText6: TStaticText;
    Edit5: TEdit;
    StaticText7: TStaticText;
    Edit6: TEdit;
    StaticText8: TStaticText;
    Edit7: TEdit;
    StaticText9: TStaticText;
    Edit8: TEdit;
    StaticText10: TStaticText;
    Edit9: TEdit;
    StaticText11: TStaticText;
    Edit10: TEdit;
    StaticText12: TStaticText;
    Edit11: TEdit;
    StaticText13: TStaticText;
    Edit12: TEdit;
    Edit13: TEdit;
    StaticText14: TStaticText;
    cClienteCod: TEdit;
    cClienteNome: TEdit;
    cClienteCPF: TEdit;
    cClienteCNPJ: TEdit;
    cClienteEmail: TEdit;
    cClienteRua: TEdit;
    cClienteNumero: TEdit;
    cClienteComp: TEdit;
    cClienteBairro: TEdit;
    cClienteCEP: TEdit;
    cClienteCidade: TEdit;
    cClienteUF: TEdit;
    cClienteTel: TEdit;
    Edit22: TEdit;
    StaticText23: TStaticText;
    cClienteDDD: TEdit;
    StaticText21: TStaticText;
    Edit17: TEdit;
    cClienteCodCidade: TEdit;
    GroupBox2: TGroupBox;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    cPedidoProd: TEdit;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    cPedidoVau: TEdit;
    StaticText22: TStaticText;
    cPedidoPed: TEdit;
    cPedidoDesc: TMemo;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    cPedidoQtde: TCurrencyEdit;
    cPedidoUni: TCurrencyEdit;
    cPedidoFrete: TCurrencyEdit;
    bPrimeiro: TSpeedButton;
    bAnterior: TSpeedButton;
    bProximo: TSpeedButton;
    bUltimo: TSpeedButton;
    StaticText4: TStaticText;
    cArquivo: TFilenameEdit;
    StaticText29: TStaticText;
    cNaturezaFora: TDBLookupComboBox;
    tCliente: TMSQuery;
    StaticText27: TStaticText;
    Edit23: TEdit;
    cPedidoVol: TCurrencyEdit;
    StaticText28: TStaticText;
    Edit24: TEdit;
    cPedidoEsp: TEdit;
    bSalvar: TButton;
    StaticText30: TStaticText;
    Edit25: TEdit;
    cPedidoPesoBrt: TCurrencyEdit;
    TabSheet3: TTabSheet;
    cLog: TListBox;
    StaticText31: TStaticText;
    Edit26: TEdit;
    cPedidoIPI: TCurrencyEdit;
    bPesquisar: TButton;
    bLimpar: TButton;
    StaticText33: TStaticText;
    cCliente: TRxDBLookupCombo;
    tPedido: TMSQuery;
    StaticText34: TStaticText;
    Edit27: TEdit;
    cClienteIE: TEdit;
    StaticText32: TStaticText;
    cModalidadePgto: TRxDBLookupCombo;
    StaticText35: TStaticText;
    Edit28: TEdit;
    cPedidoData: TEdit;
    cTransportador: TRxDBLookupCombo;
    StaticText36: TStaticText;
    cPedidoBarras: TEdit;
    Edit30: TEdit;
    StaticText37: TStaticText;
    cPedidoSKU: TEdit;
    Edit32: TEdit;
    StaticText38: TStaticText;
    Edit29: TEdit;
    cPedidoOrdem: TEdit;
    StaticText39: TStaticText;
    Edit31: TEdit;
    cClienteRG: TEdit;
    StaticText40: TStaticText;
    Edit33: TEdit;
    StaticText41: TStaticText;
    Edit34: TEdit;
    cPedidoTransp: TEdit;
    cTranspNome: TEdit;
    cPedidoVendedor: TEdit;
    StaticText42: TStaticText;
    Edit35: TEdit;
    cPedidoTabCom: TEdit;
    cTabComNome: TEdit;
    tTemp: TMSQuery;
    StaticText43: TStaticText;
    Edit36: TEdit;
    cPedidoModalNome: TEdit;
    cPedidoModal: TEdit;
    TabSheet4: TTabSheet;
    PageControl2: TPageControl;
    Aba1: TTabSheet;
    Grade1: TStringGrid;
    Aba2: TTabSheet;
    Grade2: TStringGrid;
    Aba3: TTabSheet;
    Grade3: TStringGrid;
    Aba4: TTabSheet;
    Grade4: TStringGrid;
    Aba5: TTabSheet;
    Grade5: TStringGrid;
    Aba6: TTabSheet;
    Grade6: TStringGrid;
    Panel2: TPanel;
    cLinhas: TCurrencyEdit;
    Label1: TLabel;
    tTmp: TMSQuery;
    StaticText44: TStaticText;
    Edit37: TEdit;
    cPedidoBoleto: TEdit;
    cPedidoBoletoNome: TEdit;
    bDeletar: TButton;
    StaticText45: TStaticText;
    Edit38: TEdit;
    cPedidoRepCod: TEdit;
    cPedidoRepNome: TEdit;
    pAguarde: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Progresso: TActivityIndicator;
    bCancelar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CarregaCampos(Grd: TStringGrid);
    procedure Grade1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure AutoSizeGrid(Grid: TStringGrid);
    procedure SortStringGrid(var GenStrGrid: TStringGrid; ThatCol: Integer);
    procedure ExcluiLinha;
    procedure bPrimeiroClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure bProximoClick(Sender: TObject);
    procedure bUltimoClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure cArquivoChange(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure StaticText33Click(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bDeletarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    procedure Importa(Grd: TStringGrid);
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
    editando:boolean;
  end;

var
  Financeiro_PedidosRepresentantesExcel: TFinanceiro_PedidosRepresentantesExcel;

implementation

uses frmDados, frmJanela_Processamento, frmCadastro_Clientes, frmDMComercial;

{$R *.dfm}

procedure TFinanceiro_PedidosRepresentantesExcel.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    aINI: TIniFile;
begin
      // Salva as configurações do layout utilizado.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit1' , Edit1.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit2' , Edit2.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit3' , Edit3.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit4' , Edit4.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit5' , Edit5.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit6' , Edit6.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit7' , Edit7.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit8' , Edit8.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit9' , Edit9.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit10', Edit10.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit11', Edit11.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit12', Edit12.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit13', Edit13.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit13', Edit13.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit17', Edit17.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit14', Edit14.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit15', Edit15.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit16', Edit16.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit18', Edit18.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit19', Edit19.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit20', Edit20.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit21', Edit21.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit22', Edit22.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit23', Edit23.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit24', Edit24.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit25', Edit25.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit26', Edit26.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit27', Edit27.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit30', Edit30.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit31', Edit31.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit32', Edit32.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit28', Edit28.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit29', Edit29.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit33', Edit33.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit34', Edit34.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit35', Edit35.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit36', Edit36.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit37', Edit37.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Edit38', Edit38.Text);
      aINI.WriteString( 'IMPORTACAO_PEDIDOS_EXCEL', 'Arquivo', cArquivo.FileName);

      if cTransportador.Text <> '' then begin
         aINI.WriteString ( 'IMPORTACAO_PEDIDOS_EXCEL', 'Transportador' , cTransportador.KeyValue);
      end;
      if cModalidadeFrete.Text <> '' then begin
         aINI.WriteInteger( 'IMPORTACAO_PEDIDOS_EXCEL', 'Modalidade'    , cModalidadeFrete.ItemIndex);
      end;
      if cModalidadePgto.Text <> '' then begin
         aINI.WriteInteger( 'IMPORTACAO_PEDIDOS_EXCEL', 'ModalidadePgto', cModalidadePgto.KeyValue);
      end;
      if cTipoNota.Text <> '' then begin
         aINI.WriteString ( 'IMPORTACAO_PEDIDOS_EXCEL', 'Tipo_Nota'     , cTipoNota.KeyValue);
      end;
      if cNaturezaDentro.Text <> '' then begin
         aINI.WriteString ( 'IMPORTACAO_PEDIDOS_EXCEL', 'NaturezaDentro', cNaturezaDentro.KeyValue);
      end;
      if cNaturezaFora.Text <> '' then begin
         aINI.WriteString ( 'IMPORTACAO_PEDIDOS_EXCEL', 'NaturezaFora'  , cNaturezaFora.KeyValue);
      end;
      aINI.Free;

      SetCurrentDir(ExtractFilePath(Application.ExeName));

      Financeiro_PedidosRepresentantesExcel.Release;
      Financeiro_PedidosRepresentantesExcel := nil;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.FormShow(Sender: TObject);
Var
    aINI: TIniFile;
begin
      Aba1.Caption := '*';
      Aba2.Caption := '*';
      Aba3.Caption := '*';
      Aba4.Caption := '*';
      Aba5.Caption := '*';
      Aba6.Caption := '*';

      PageControl1.ActivePageIndex := 0;

      With Dados, dmComercial do begin
           Configuracao.Open;
           
           with Fornecedores do begin
                close;
                SQL.Clear;
                SQL.Add('SELECT * FROM Fornecedores');
                SQL.Add('ORDER BY Nome');
                Open;
           end;
           with TabelaComissoes do begin
                close;
                sql.clear;
                sql.Add('select * from TabelaComissoes');
                sql.Add('order by Codigo');
                open;
           end;
           with Clientes do begin
                close;
                SQL.Clear;
                SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
                Open;
           end;
           with TipoNota do begin
                close; 
                SQL.Clear;
                SQL.Add('SELECT * FROM TipoNota WHERE Saida_Entrada = 1 AND Ativo = 1 ORDER BY Codigo');
                Open;
           end;
           with Natureza do begin
                close;
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM Natureza');
                SQL.Add('WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim)');
                SQL.Add('ORDER BY Codigo');
                ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.Value;
                ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.Value;
                Open;
           end;
           with Estados do begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM Estados');
                Open;
           end;
           with Municipios do begin
                close;
                SQL.Clear;
                SQL.Add('SELECT * FROM Municipios');
                Open;
           end;
           with ModalidadesPgto do begin
                close;
                SQL.Clear;
                SQL.Add('select * from ModalidadesPagamento order by Codigo');
                Open;
           end;
      end;

      aINI        := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      Edit1.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit1' , Edit1.Text);
      Edit2.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit2' , Edit2.Text);
      Edit3.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit3' , Edit3.Text);
      Edit4.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit4' , Edit4.Text);
      Edit5.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit5' , Edit5.Text);
      Edit6.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit6' , Edit6.Text);
      Edit7.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit7' , Edit7.Text);
      Edit8.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit8' , Edit8.Text);
      Edit9.Text  := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit9' , Edit9.Text);
      Edit10.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit10', Edit10.Text);
      Edit11.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit11', Edit11.Text);
      Edit12.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit12', Edit12.Text);
      Edit13.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit13', Edit13.Text);
      Edit22.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit22', Edit22.Text);
      Edit14.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit14', Edit14.Text);
      Edit15.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit15', Edit15.Text);
      Edit16.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit16', Edit16.Text);
      Edit17.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit17', Edit17.Text);
      Edit18.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit18', Edit18.Text);
      Edit19.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit19', Edit19.Text);
      Edit20.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit20', Edit20.Text);
      Edit21.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit21', Edit21.Text);
      Edit22.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit22', Edit22.Text);
      Edit23.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit23', Edit23.Text);
      Edit24.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit24', Edit24.Text);
      Edit25.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit25', Edit25.Text);
      Edit26.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit26', Edit26.Text);
      Edit27.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit27', Edit27.Text);
      Edit30.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit30', Edit30.Text);
      Edit31.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit31', Edit31.Text);
      Edit32.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit32', Edit32.Text);
      Edit28.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit28', Edit28.Text);
      Edit29.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit29', Edit29.Text);
      Edit33.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit33', Edit33.Text);
      Edit34.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit34', Edit34.Text);
      Edit35.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit35', Edit35.Text);
      Edit36.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit36', Edit36.Text);
      Edit37.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit37', Edit37.Text);
      Edit38.Text := aINI.ReadString('IMPORTACAO_PEDIDOS_EXCEL', 'Edit38', Edit38.Text);

      cTransportador.KeyValue    := aINI.ReadInteger('IMPORTACAO_PEDIDOS_EXCEL', 'Transportador' , -1);
      cModalidadeFrete.ItemIndex := aINI.ReadInteger('IMPORTACAO_PEDIDOS_EXCEL', 'Modalidade'    ,  0);
      cModalidadePgto.KeyValue   := aINI.ReadInteger('IMPORTACAO_PEDIDOS_EXCEL', 'ModalidadePgto',  0);
      cTipoNota.KeyValue         := aINI.ReadInteger('IMPORTACAO_PEDIDOS_EXCEL', 'Tipo_Nota'     , -1);
      cNaturezaDentro.KeyValue   := aINI.ReadInteger('IMPORTACAO_PEDIDOS_EXCEL', 'NaturezaDentro', -1);
      cNaturezaFora.KeyValue     := aINI.ReadInteger('IMPORTACAO_PEDIDOS_EXCEL', 'NaturezaFora'  , -1);

      aINI.Free;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.CarregaCampos(Grd: TStringGrid);
Var
    mFrete: String;
    Linha:Integer;
begin
      Linha := Grd.Row;
      // Limpa os campos.
      if Trim(cCliente.Text) = '' then begin
         cClienteNome.Clear;
         cClienteCPF.Clear;
         cClienteRG.Clear;
         cClienteCNPJ.Clear;
         cClienteIE.Clear;
         cClienteEmail.Clear;
         cClienteRua.Clear;
         cClienteNumero.Clear;
         cClienteComp.Clear;
         cClienteBairro.Clear;
         cClienteCEP.Clear;
         cClienteCidade.Clear;
         cClienteCodCidade.Text := '0';
         cClienteUF.Clear;
         cClienteTel.Clear;
         cClienteDDD.Clear;
         cPedidoPed.Clear;
         cPedidoModal.Clear;
      end;

      cPedidoProd.Clear;
      cPedidoData.Clear;
      cPedidoDesc.Clear;
      cPedidoQtde.Clear;
      cPedidoVendedor.Clear;
      cPedidoUni.Clear;
      cPedidoFrete.Clear;
      cPedidoVau.Clear;
      cPedidoPesoBrt.Clear;
      cPedidoVol.Clear;
      cPedidoEsp.Clear;
      cPedidoIPI.Clear;
      cPedidoBarras.Clear;
      cPedidoSKU.Clear;
      cPedidoOrdem.Clear;
      cPedidoTransp.Clear;
      cPedidoTabCom.Clear;

      // Carrega dados do cliente.
      If Trim(cCliente.Text) = '' then begin
         If Edit2.Text  <> '' then cClienteNome.Text := Trim(AnsiUpperCase(Grd.Cells[StrtoInt(Edit2.Text) -1, Linha]));

         // Ajustando o número do CPF.
         If Edit3.Text  <> '' then begin
            If (Length(ApenasNumeros(Grd.Cells[StrtoInt(Edit3.Text) -1, Linha])) <= 11) and (Length(ApenasNumeros(Grd.Cells[StrtoInt(Edit3.Text) -1, Linha])) > 0) then begin
               cClienteCPF.Text := ApenasNumeros(Grd.Cells[StrtoInt(Edit3.Text) -1, Linha]);
               If (Length(cClienteCPF.Text) < 11) then begin
                  cClienteCPF.Text := Copy('00000000000', 1, 11-Length(cClienteCPF.Text))+cClienteCPF.Text;
               End;
            End;
         End;
         // Ajustando o número do CNPJ.
         If Edit4.Text  <> '' then begin
            If (Length(ApenasNumeros(Grd.Cells[StrtoInt(Edit4.Text) -1, Linha])) > 11) and (Length(ApenasNumeros(Grd.Cells[StrtoInt(Edit4.Text) -1, Linha])) <= 14) then begin
               cClienteCNPJ.Text := ApenasNumeros(Grd.Cells[StrtoInt(Edit4.Text) -1, Linha]);
               If (Length(cClienteCNPJ.Text) < 14) then begin
                  cClienteCNPJ.Text := Copy('00000000000000', 1, 14-Length(cClienteCNPJ.Text))+cClienteCNPJ.Text;
               End;
            End;
         End;
         // Pegando RG Pessoa Fisica.
         if Edit31.text  <> '' then begin
            if trim(cClienteCPF.Text) <> '' then begin
               cClienteRG.Text := ApenasNumeros(Grd.Cells[StrtoInt(Edit31.Text) -1, Linha]);
            end;
         end;
         // Pegando IE pessoa Juridica.
         if Edit27.text  <> '' then begin
            if trim(cClienteCNPJ.Text) <> '' then begin
               cClienteIE.Text := ApenasNumeros(Grd.Cells[StrtoInt(Edit27.Text) -1, Linha]);
            end;
         end;

         if Edit5.Text  <> '' then cClienteEmail.Text  := Trim(Grd.Cells[StrtoInt(Edit5.Text) -1, Linha]);
         if Edit6.Text  <> '' then cClienteRua.Text    := Trim(PrimeiraLetraMaiuscula(AnsiLowerCase(Grd.Cells[StrtoInt(Edit6.Text) -1, Linha])));
         if Edit7.Text  <> '' then cClienteNumero.Text := Grd.Cells[StrtoInt(Edit7.Text) -1, Linha];
         if Edit8.Text  <> '' then cClienteComp.Text   := Trim(Grd.Cells[StrtoInt(Edit8.Text) -1, Linha]);
         if Edit9.Text  <> '' then cClienteBairro.Text := Trim(PrimeiraLetraMaiuscula(AnsiLowerCase(Grd.Cells[StrtoInt(Edit9.Text) -1, Linha])));
         if Edit10.Text <> '' then cClienteCEP.Text    := ApenasNumeros(Grd.Cells[StrtoInt(Edit10.Text)-1, Linha]);
         if Edit11.Text <> '' then cClienteCidade.Text := Trim(PrimeiraLetraMaiuscula(AnsiLowerCase(Grd.Cells[StrtoInt(Edit11.Text)-1, Linha])));
         if Edit12.Text <> '' then cClienteUF.Text     := UpperCase(Trim(Grd.Cells[StrtoInt(Edit12.Text)-1, Linha]));
         if Edit13.Text <> '' then cClienteTel.Text    := ApenasNumeros(Grd.Cells[StrtoInt(Edit13.Text)-1, Linha]);
         if Edit22.Text <> '' then cClienteDDD.Text    := ApenasNumeros(Grd.Cells[StrtoInt(Edit22.Text)-1, Linha]);

         // Pegando o código do município.
         if Edit11.Text <> '' then begin
            with Dados, Municipios do begin
                 close; 
                 SQL.Clear;
                 SQL.Add('SELECT *');
                 SQL.Add('FROM Municipios');
                 SQL.Add('WHERE Estado = (SELECT Numero FROM Estados WHERE Codigo = :pEstado)');
                 SQL.Add('  AND Nome collate Latin1_General_CI_AI = :pNome');
                 ParamByName('pEstado').AsString := cClienteUF.Text;
                 ParamByName('pNome').AsString   := cClienteCidade.Text;
                 Open;

                 if RecordCount > 0 then begin
                    cClienteCodCidade.Text := fieldbyname('Codigo').AsString;
                    cClienteCidade.Text    := fieldbyname('Nome').AsString;
                 end;
            end;
         end;
      end;

      // Carrega dados do pedido.
      If Edit18.Text <> '' then begin
         If ApenasNumeros(Grd.Cells[StrtoInt(Edit18.Text) -1, Linha]) <> '' then begin
            If Edit14.Text <> '' then cPedidoPed.Text      := Trim(ApenasNumeros(Grd.Cells[StrtoInt(Edit14.Text) -1, Linha]));
            If Edit15.Text <> '' then cPedidoProd.Text     := Trim(Grd.Cells[StrtoInt(Edit15.Text) -1, Linha]);
            If Edit30.Text <> '' then cPedidoBarras.Text   := Trim(Grd.Cells[StrtoInt(Edit30.Text) -1, Linha]);
            If Edit32.Text <> '' then cPedidoSKU.Text      := Trim(Grd.Cells[StrtoInt(Edit32.Text) -1, Linha]);
            If Edit16.Text <> '' then cPedidoDesc.Text     := Trim(Grd.Cells[StrtoInt(Edit16.Text) -1, Linha]);
            If Edit18.Text <> '' then cPedidoQtde.Text     := Grd.Cells[StrtoInt(Edit18.Text) -1, Linha];
            If Edit19.Text <> '' then cPedidoUni.Text      := RemoveCaracter('R$', '', Grd.Cells[StrtoInt(Edit19.Text) -1, Linha]);
            If Edit33.Text <> '' then cPedidoVendedor.Text := Trim(Grd.Cells[StrtoInt(Edit33.Text) -1, Linha]);
            If Edit34.Text <> '' then cPedidoTransp.Text   := Trim(Grd.Cells[StrtoInt(Edit34.Text) -1, Linha]);
            If Edit35.Text <> '' then cPedidoTabCom.Text   := Trim(Grd.Cells[StrtoInt(Edit35.Text) -1, Linha]);
            If Edit36.Text <> '' then cPedidoModal.Text    := Trim(Grd.Cells[StrtoInt(Edit36.Text) -1, Linha]);
            If Edit37.Text <> '' then cPedidoBoleto.Text   := Trim(Grd.Cells[StrtoInt(Edit37.Text) -1, Linha]);
            If Edit38.Text <> '' then cPedidoRepCod.Text   := Trim(Grd.Cells[StrtoInt(Edit38.Text) -1, Linha]);
            if trim(cPedidoBoleto.Text) = '' then cPedidoBoleto.Text := '0';
            cPedidoBoletoNome.Text := iif(cPedidoBoleto.text = '1', 'Gera boleto', 'Não gera boleto');

            If Edit20.Text <> '' then begin
               mFrete := RemoveCaracter('R$', '', Grd.Cells[StrtoInt(Edit20.Text) -1, Linha]);
               mFrete := RemoveCaracter('.', ',', mFrete);
               cPedidoFrete.Text := mFrete;
            End;

            If Edit21.Text <> '' then cPedidoVau.Text     := Trim(Grd.Cells[StrtoInt(Edit21.Text) -1, Linha]);
            If Edit23.Text <> '' then cPedidoVol.Text     := Trim(ApenasNumeros(Grd.Cells[StrtoInt(Edit23.Text)-1, Linha]));
            If Edit24.Text <> '' then cPedidoEsp.Text     := Trim(AnsiUpperCase(Grd.Cells[StrtoInt(Edit24.Text)-1, Linha]));
            If Edit25.Text <> '' then cPedidoPesoBrt.Text := Grd.Cells[StrtoInt(Edit25.Text)-1, Linha];
            If Edit28.Text <> '' then cPedidoData.Text    := Grd.Cells[StrtoInt(Edit28.Text)-1, Linha];
            If Edit29.Text <> '' then cPedidoOrdem.Text   := Grd.Cells[StrtoInt(Edit29.Text)-1, Linha];

            If Trim(cCliente.Text) = '' then begin
               If Edit26.Text <> '' then cPedidoIPI.Text := Grd.Cells[StrtoInt(Edit26.Text)-1, Linha];
            end else begin
               with Dados do begin
                    with tTemp do begin 
                         close; 
                         sql.Clear;
                         sql.Add('select Aliquota_IPI from Produtos where Codigo = :pCodigo or Codigo_Fabricante = :pCodFab');
                         ParamByName('pCodigo').AsString := cPedidoProd.Text;
                         ParamByName('pCodFab').AsString := cPedidoProd.Text;
                         open;
                         If RecordCount > 0 then
                            cPedidoIPI.Text := Fieldbyname('Aliquota_IPI').AsString
                         else
                            cPedidoIPI.Text := '0.00';
                    end;
               end;
            end;
         end;
      end;
      
      // Pegando o nome da transportador.
      with Dados, dmComercial do begin
           // Pegando o nome do vendedor.
           if Edit38.Text <> '' then begin
              if Fornecedores.Locate('Representante_Codigo', strtoint(cPedidoRepCod.text), [loCaseInsensitive]) then
                 cPedidoRepNome.Text := Fornecedores.fieldbyname('Nome').AsString;
           end;
           if Edit34.Text <> '' then begin
              if Fornecedores.Locate('Codigo', strtoint(cPedidoTransp.text), [loCaseInsensitive]) then
                 cTranspNome.Text := Fornecedores.fieldbyname('Nome').AsString;
           end;
           // Pegando o nome da tabela de comissões.
           if Edit35.Text <> '' then begin
              if TabelaComissoes.Locate('Codigo', strtoint(cPedidoTabCom.text), [loCaseInsensitive]) then
                 cTabComNome.Text := TabelaComissoes.fieldbyname('Descricao').AsString;
           end;
           // Pegando o nome da modalidade de pagamento.
           if Edit36.Text <> '' then begin
              if ModalidadesPgto.Locate('Codigo', strtoint(cPedidoModal.text), [loCaseInsensitive]) then
                 cPedidoModalNome.Text := ModalidadesPgto.fieldbyname('Descricao').AsString;
           end;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.Grade1Click(Sender: TObject);
begin
      if PageControl2.ActivePageIndex = 0 then
         CarregaCampos(Grade1);
      if PageControl2.ActivePageIndex = 1 then
         CarregaCampos(Grade2);
      if PageControl2.ActivePageIndex = 2 then
         CarregaCampos(Grade3);
      if PageControl2.ActivePageIndex = 3 then
         CarregaCampos(Grade4);
      if PageControl2.ActivePageIndex = 4 then
         CarregaCampos(Grade5);
      if PageControl2.ActivePageIndex = 5 then
         CarregaCampos(Grade6);
end;

procedure TFinanceiro_PedidosRepresentantesExcel.Edit1Change(Sender: TObject);
begin
      if (Active) and not (Editando) then begin
         if PageControl2.ActivePageIndex = 0 then
            CarregaCampos(Grade1);
         if PageControl2.ActivePageIndex = 1 then
            CarregaCampos(Grade2);
         if PageControl2.ActivePageIndex = 2 then
            CarregaCampos(Grade3);
         if PageControl2.ActivePageIndex = 3 then
            CarregaCampos(Grade4);
         if PageControl2.ActivePageIndex = 4 then
            CarregaCampos(Grade5);
         if PageControl2.ActivePageIndex = 5 then
            CarregaCampos(Grade6);
      end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.AutoSizeGrid(Grid: TStringGrid);
const
     ColWidthMin = 20;
var
  C, R, W, ColWidthMax: integer;
begin
      for C := 0 to Grid.ColCount - 1 do begin
          ColWidthMax := ColWidthMin;
          For R := 0 to (Grid.RowCount - 1) do begin
              W := Grid.Canvas.TextWidth(Grid.Cells[C, R]);
              If W > ColWidthMax then ColWidthMax := W;
          End;
          Grid.ColWidths[C] := ColWidthMax + 5;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.SortStringGrid(var GenStrGrid: TStringGrid; ThatCol: Integer);
const
     TheSeparator = '@';    // Define the Separator
var
   CountItem, I, J, K, ThePosition: integer;
   MyList: TStringList;
   MyString, TempString: string;
begin
      // Give the number of rows in the StringGrid
      CountItem := GenStrGrid.RowCount;

      //Create the List
      MyList := TStringList.Create;
      MyList.Sorted := False;

      Try begin
          For I := 3 to (CountItem - 1) do begin
              MyList.Add(GenStrGrid.Rows[I].Strings[ThatCol] + TheSeparator + GenStrGrid.Rows[I].Text);
          End;

          //Sort the List
          Mylist.Sort;
          For K := 1 to Mylist.Count do begin
              //Take the String of the line (K – 1)
              MyString := MyList.Strings[(K - 1)];

              //Find the position of the Separator in the String
              ThePosition := Pos(TheSeparator, MyString);
              TempString := '';

              {Eliminate the Text of the column on which we have sorted the StringGrid}
              TempString := Copy(MyString, (ThePosition + 1), Length(MyString));
              MyList.Strings[(K - 1)] := '';
              MyList.Strings[(K - 1)] := TempString;
          End;

          // Refill the StringGrid
          For J := 1 to (CountItem - 1) do GenStrGrid.Rows[J].Text := MyList.Strings[(J - 1)];
      end finally
          //Free the List
          MyList.Free;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.ExcluiLinha;
begin
      if PageControl2.ActivePageIndex = 0 then
         TAuxGrid(Grade1).DeleteRow(Grade1.Row);
      if PageControl2.ActivePageIndex = 1 then
         TAuxGrid(Grade2).DeleteRow(Grade2.Row);
      if PageControl2.ActivePageIndex = 2 then
         TAuxGrid(Grade3).DeleteRow(Grade3.Row);
      if PageControl2.ActivePageIndex = 3 then
         TAuxGrid(Grade4).DeleteRow(Grade4.Row);
      if PageControl2.ActivePageIndex = 4 then
         TAuxGrid(Grade5).DeleteRow(Grade5.Row);
      if PageControl2.ActivePageIndex = 5 then
         TAuxGrid(Grade6).DeleteRow(Grade6.Row);
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bPrimeiroClick(Sender: TObject);
begin
      if PageControl2.ActivePageIndex = 0 then
         Grade1.Row := 2;
      if PageControl2.ActivePageIndex = 1 then
         Grade2.Row := 2;
      if PageControl2.ActivePageIndex = 2 then
         Grade3.Row := 2;
      if PageControl2.ActivePageIndex = 3 then
         Grade4.Row := 2;
      if PageControl2.ActivePageIndex = 4 then
         Grade5.Row := 2;
      if PageControl2.ActivePageIndex = 5 then
         Grade6.Row := 2;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bAnteriorClick(Sender: TObject);
begin
      if PageControl2.ActivePageIndex = 0 then
         if Grade1.Row > 2 then Grade1.Row := Grade1.Row -1;
      if PageControl2.ActivePageIndex = 1 then
         if Grade2.Row > 2 then Grade2.Row := Grade2.Row -1;
      if PageControl2.ActivePageIndex = 2 then
         if Grade3.Row > 2 then Grade3.Row := Grade3.Row -1;
      if PageControl2.ActivePageIndex = 3 then
         if Grade4.Row > 2 then Grade4.Row := Grade4.Row -1;
      if PageControl2.ActivePageIndex = 4 then
         if Grade5.Row > 2 then Grade5.Row := Grade5.Row -1;
      if PageControl2.ActivePageIndex = 5 then
         if Grade6.Row > 2 then Grade6.Row := Grade6.Row -1;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bCancelarClick(Sender: TObject);
begin
     bCancelar.Tag := 1;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bDeletarClick(Sender: TObject);
begin
     if messagedlg('Deseja realmente limpar os pedidos dessa planilha do banco de dados?', mtConfirmation, [mbyes, mbno], 0) = mryes then begin
        with ttmp do begin
             close;
             sql.Clear;
             sql.Add('select qtde = count(*) from PedidosRepresentantes where Planilha = :pPlan');
             parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
             open;
             if fieldbyname('qtde').AsInteger = 0 then begin
                messagedlg('Nenhum Planilha encontrada com esse nome no banco de dados!', mtinformation, [mbok], 0);
                Abort;
             end;
             sql.Clear;
             sql.Add('select qtde = count(*) from PedidosRepresentantes where Planilha = :pPlan and Local > 3');
             parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
             open;
             if fieldbyname('qtde').AsInteger > 0 then begin
                messagedlg('Atenção!'+#13+#13+'Ja foram faturados '+fieldbyname('qtde').asstring+' pedidos desta planilha'+#13+#13+'Cancele os faturamento para poder excluir.', mtInformation, [mbok], 0);
                Abort;
             end;
            
             close;
             sql.Clear;
             sql.Add('delete from PedidosRepresentantesItens where Pedido in(select Pedido from PedidosRepresentantes where Planilha = :pPlan)');
             parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
             execute;
             close;
             sql.Clear;
             sql.Add('delete from PedidosRepresentantes where Planilha = :pPlan');
             //parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
             execute;
             showmessage('Planilha excluída do banco de dados.');
        end;
     end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bProximoClick(Sender: TObject);
begin
      if PageControl2.ActivePageIndex = 0 then
         if Grade1.Row < Grade1.RowCount-1 then Grade1.Row := Grade1.Row +1;
      if PageControl2.ActivePageIndex = 1 then
         if Grade2.Row < Grade2.RowCount-1 then Grade2.Row := Grade2.Row +1;
      if PageControl2.ActivePageIndex = 2 then
         if Grade3.Row < Grade3.RowCount-1 then Grade3.Row := Grade3.Row +1;
      if PageControl2.ActivePageIndex = 3 then
         if Grade4.Row < Grade4.RowCount-1 then Grade4.Row := Grade4.Row +1;
      if PageControl2.ActivePageIndex = 4 then
         if Grade5.Row < Grade5.RowCount-1 then Grade5.Row := Grade5.Row +1;
      if PageControl2.ActivePageIndex = 5 then
         if Grade6.Row < Grade6.RowCount-1 then Grade6.Row := Grade6.Row +1;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bUltimoClick(Sender: TObject);
begin
      if PageControl2.ActivePageIndex = 0 then
         Grade1.Row := Grade1.RowCount-1;
      if PageControl2.ActivePageIndex = 1 then
         Grade2.Row := Grade2.RowCount-1;
      if PageControl2.ActivePageIndex = 2 then
         Grade3.Row := Grade3.RowCount-1;
      if PageControl2.ActivePageIndex = 3 then
         Grade4.Row := Grade4.RowCount-1;
      if PageControl2.ActivePageIndex = 4 then
         Grade5.Row := Grade5.RowCount-1;
      if PageControl2.ActivePageIndex = 5 then
         Grade6.Row := Grade6.RowCount-1;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bSalvarClick(Sender: TObject);
Var
    mArquivo: ansiString;
begin
      mArquivo := InputBox('Nome', 'Informe o caminho e o nome do arquivo:', 'C:\TEMP\Erros_Importacao_Planilha.txt');
      If Trim(mArquivo) <> '' then begin
         cLog.Items.SaveToFile(mArquivo);
         winExec(PAnsiChar('Notepad.exe '+mArquivo), sw_shownormal);
      End;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bPesquisarClick(Sender: TObject);
Var
    Linha : Integer;
begin
      mPesquisa := UpperCase(InputBox('Pesquisa', 'Pedido/Nome Cliente/CPF/CNPJ', mPesquisa));

      For Linha := 2 to Grade1.RowCount -1 do begin
          Grade1.Row := Linha;
          If Trim(Grade1.Cells[StrtoInt(Edit14.Text) -1, Linha]) = mPesquisa then begin                                              // Número do pedido.
             Break
          end else begin
             If Pos( AnsiUpperCase(mPesquisa), AnsiUpperCase(Grade1.Cells[StrtoInt(Edit2.Text) -1, Linha]) ) > 0 then begin          // Nome do cliente.
                Break
             end else begin
                If Pos( AnsiUpperCase(mPesquisa), AnsiUpperCase(Grade1.Cells[StrtoInt(Edit3.Text) -1, Linha]) ) > 0 then begin       // CPF.
                   Break
                end else begin
                   If Pos( AnsiUpperCase(mPesquisa), AnsiUpperCase(Grade1.Cells[StrtoInt(Edit4.Text) -1, Linha]) ) > 0 then begin    // CNPJ.
                      Break
                   End;
                End;
             End;
          End;
      End;

      If Linha = Grade1.RowCount then MessageDlg('Nenhum pedido encontrado !', mtInformation, [mbOk], 0);
end;

procedure TFinanceiro_PedidosRepresentantesExcel.cArquivoChange(Sender: TObject);
Var
    i,c: Integer;
    l:boolean;
    Grd: String;
begin
      Aba1.Caption := '*';
      Aba2.Caption := '*';
      Aba3.Caption := '*';
      Aba4.Caption := '*';
      Aba5.Caption := '*';
      Aba6.Caption := '*';

      // Limpa todos os grids.
      for i := 1 to Grade1.RowCount -1 do Grade1.Rows[i].Clear;
      for i := 1 to Grade2.RowCount -1 do Grade2.Rows[i].Clear;
      for i := 1 to Grade3.RowCount -1 do Grade3.Rows[i].Clear;
      for i := 1 to Grade4.RowCount -1 do Grade4.Rows[i].Clear;
      for i := 1 to Grade5.RowCount -1 do Grade5.Rows[i].Clear;
      for i := 1 to Grade6.RowCount -1 do Grade6.Rows[i].Clear;
      
      Grade1.RowCount := 5;
      Grade2.RowCount := 5;
      Grade3.RowCount := 5;
      Grade4.RowCount := 5;
      Grade5.RowCount := 5;
      Grade6.RowCount := 5;

      if Trim(cArquivo.Text) <> '' then begin
         Screen.Cursor := crAppStart;
         for i := 1 to AbasExcel(cArquivo.FileName) do begin
             if i = 1 then begin
                ImportaEXCEL(Grade1 , cArquivo.FileName, PageControl2, i, 1, 0, true);
                Grade1.ColCount := Grade1.ColCount + 1;
                for c := 0 to Grade1.ColCount do Grade1.Cells[c, 0] := InttoStr(c+1);
             end;
             if i = 2 then begin
                ImportaEXCEL(Grade2 , cArquivo.FileName, PageControl2, i, 1, 0, true);
                Grade2.ColCount := Grade2.ColCount + 1;
                for c := 0 to Grade2.ColCount do Grade2.Cells[c, 0] := InttoStr(c+1);
             end;
             if i = 3 then begin
                ImportaEXCEL(Grade3 , cArquivo.FileName, PageControl2, i, 1, 0, true);
                Grade3.ColCount := Grade3.ColCount + 1;
                for c := 0 to Grade3.ColCount do Grade3.Cells[c, 0] := InttoStr(c+1);
             end;
             if i = 4 then begin
                ImportaEXCEL(Grade4 , cArquivo.FileName, PageControl2, i, 1, 0, true);
                Grade4.ColCount := Grade4.ColCount + 1;
                for c := 0 to Grade4.ColCount do Grade4.Cells[c, 0] := InttoStr(c+1);
             end;
             if i = 5 then begin
                ImportaEXCEL(Grade5 , cArquivo.FileName, PageControl2, i, 1, 0, true);
                Grade5.ColCount := Grade5.ColCount + 1;
                for c := 0 to Grade5.ColCount do Grade5.Cells[c, 0] := InttoStr(c+1);
             end;
             if i = 6 then begin
                ImportaEXCEL(Grade6 , cArquivo.FileName, PageControl2, i, 1, 0, true);
                Grade6.ColCount := Grade6.ColCount + 1;
                for c := 0 to Grade6.ColCount do Grade6.Cells[c, 0] := InttoStr(c+1);
                Break;
             end;
         end;

         // Apaga todas as linhas que tem todas as celulas em branco na planilha.
         for i := grade1.RowCount-1 downto 2 do begin
             l := true; 
             for c := 0 to grade1.ColCount do begin
                 if trim(Grade1.Cells[c, i]) <> '' then begin 
                    l := false;
                 end;
             end;
             if l then Grade1.RowCount := Grade1.RowCount-1;
         end;

         PageControl2.ActivePageIndex := 0;
         if trim(cArquivo.Text) <> '' then CarregaCampos(Grade1);
         cLinhas.AsInteger := Grade1.RowCount-2;

         Screen.Cursor := crDefault;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bLimparClick(Sender: TObject);
begin
      if Messagedlg('Deseja realmente limpar a parametrização de importação?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
         Edit1.Clear;
         Edit2.Clear;
         Edit3.Clear;
         Edit4.Clear;
         Edit5.Clear;
         Edit6.Clear;
         Edit7.Clear;
         Edit8.Clear;
         Edit9.Clear;
         Edit10.Clear;
         Edit11.Clear;
         Edit12.Clear;
         Edit13.Clear;
         Edit14.Clear;
         Edit15.Clear;
         Edit16.Clear;
         Edit17.Clear;
         Edit18.Clear;
         Edit19.Clear;
         Edit20.Clear;
         Edit21.Clear;
         Edit22.Clear;
         Edit23.Clear;
         Edit24.Clear;
         Edit25.Clear;
         Edit26.Clear;
         Edit27.Clear;
         Edit28.Clear;
         Edit29.Clear;
         Edit30.Clear;
         Edit31.Clear;
         Edit32.Clear;
         Edit34.Clear;
         Edit35.Clear;
         Edit36.Clear;
         Edit37.Clear;
         Edit38.Clear;
      end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.cClienteChange(Sender: TObject);
begin
     With Dados do begin
          cClienteCod.Text       := ClientesCodigo.AsString;
          cClienteNome.Text      := ClientesNome.Value;
          cClienteCPF.Text       := ClientesCPF.Value;
          cClienteIE.Text        := ClientesInscricao_Estadual.Value;
          cClienteCNPJ.Text      := ClientesCNPJ.Value;
          cClienteEmail.Text     := ClientesEmail.Value;
          cClienteRua.Text       := ClientesRua.Value;
          cClienteNumero.Text    := ClientesRua_Numero.Value;
          cClienteComp.Text      := ClientesComplemento.Value;
          cClienteBairro.Text    := ClientesBairro.Value;
          cClienteCEP.Text       := ClientesCEP.Value;
          cClienteUF.Text        := ClientesEstado.Value;
          cClienteTel.Text       := ClientesTelefone1.Value;
          cClienteCodCidade.Text := ClientesMunicipio_Codigo.AsString;
          cClienteCidade.Text    := ClientesMunicipio.AsString;

          tPedido.Close;
          tPedido.SQL.Clear;
          tPedido.SQL.Add('SELECT ISNULL(MAX(CAST(Pedido AS int)), 0)+1 AS Pedido FROM PedidosRepresentantes');
          tPedido.Open;
          cPedidoPed.Text := tPedido.FieldByName('Pedido').AsString;
     end;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.StaticText33Click(Sender: TObject);
begin
      Cadastro_Clientes := TCadastro_Clientes.Create(Self);
      Cadastro_Clientes.Caption := Caption;
      Cadastro_Clientes.ShowModal;
      Dados.Clientes.Open;
      cCliente.KeyValue := Clipboard.AsText;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.bImportarClick(Sender: TObject);
begin
     editando := not Editando;
     if PageControl2.ActivePageIndex = 0 then
        Importa(Grade1);
     if PageControl2.ActivePageIndex = 1 then
        Importa(Grade2);
     if PageControl2.ActivePageIndex = 2 then
        Importa(Grade3);
     if PageControl2.ActivePageIndex = 3 then
        Importa(Grade4);
     if PageControl2.ActivePageIndex = 4 then
        Importa(Grade5);
     if PageControl2.ActivePageIndex = 5 then
        Importa(Grade6);
     editando := not Editando;
end;

procedure TFinanceiro_PedidosRepresentantesExcel.Importa(Grd: TStringGrid);
Var
    Linha: Integer;
    mValor,mTotal: real;
    mok: boolean;
begin
      Screen.Cursor := crSQLWait;
      bImportar.Enabled := false;
      with Dados, Empresas do begin
           RefreshRecord;
           if fieldbyname('ImportarPlanPed_Bloqueado').AsBoolean then begin
              PageControl1.Enabled := false;
              Panel1.Enabled       := false;
              pAguarde.Visible     := true;  
              Progresso.Animate    := true;
              bCancelar.Tag        := 0;
              Application.ProcessMessages;
              while fieldbyname('ImportarPlanPed_Bloqueado').AsBoolean do begin
                    if bCancelar.Tag = 1 then begin
                       pAguarde.Visible     := false;
                       Panel1.Enabled       := true;
                       bImportar.Enabled    := true;
                       PageControl1.Enabled := true;
                       Screen.Cursor := crDefault;
                       Abort;
                    end;
                    sleep(500);
                    RefreshRecord;
                    Application.ProcessMessages;
              end;
           end;
      end;
      bCancelar.Tag    := 0;
      pAguarde.Visible := false;
      Panel1.Enabled   := true;
      with tTmp do begin
           close;
           sql.Clear;
           sql.Add('select qtde = count(*) from PedidosRepresentantes where Planilha = :pPlan');
           parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
           open;
           if fieldbyname('qtde').AsInteger > 0 then begin
              if messagedlg('Atenção!'+#13+#13+'Esta planilha ja foi importada, deseja importar novamente?'+#13+#13+'Isso ira apagar todos os pedidos importados anteriormente!', mtConfirmation, [mbYes, mbno], 0) = mrno then begin
                 bImportar.Enabled := true;
                 Screen.Cursor := crDefault;
                 Abort;
              end;
              sql.Clear;
              sql.Add('select qtde = count(*) from PedidosRepresentantes where Planilha = :pPlan and Local > 3');
              parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
              open;
              if fieldbyname('qtde').AsInteger > 0 then begin
                 messagedlg('Atenção!'+#13+#13+'Ja foram faturados '+fieldbyname('qtde').asstring+' pedidos desta planilha'+#13+#13+'Cancele os faturamento para poder importar novamente!', mtInformation, [mbok], 0);
                 bImportar.Enabled := true;
                 Screen.Cursor := crDefault;
                 Abort;
              end;
           end;
           // Varre toda a planilha e verifica se existe alguma ordem de compra ja informada anteriormente.
           for Linha := 2 to pred(Grd.RowCount) do begin
               Grd.Row := Linha;
               CarregaCampos(Grd);
               with tTmp do begin
                    sql.Clear;
                    sql.Add('select Pedido from PedidosRepresentantes where Ordem_Compra = :pOrdem and Planilha <> :pPlan');
                    parambyname('pOrdem').AsString := cPedidoOrdem.Text;
                    parambyname('pPlan').AsString  := ExtractFileName(cArquivo.FileName);
                    open;
                    if recordcount > 0 then begin
                       messagedlg('Atenção!'+#13+#13+'Existem pedidos com ordem de compra ja importados em outra planilha!'+#13+#13+'Esta Planilha não sera importada.', mtInformation, [mbok], 0);
                       bImportar.Enabled := true;
                       Screen.Cursor := crDefault;
                       Abort;
                    end;
               end;
           end;
           
           Screen.Cursor := crSQLWait;
           with Dados, Empresas do begin
                Edit;
                   fieldbyname('ImportarPlanPed_Bloqueado').value := true;
                post;    
           end;
           
           Grade1.Enabled    := false;
           Grade1.Options    := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goDrawFocusSelected,goRowSizing,goColSizing,goRowSelect,goThumbTracking];
           GroupBox1.Enabled := false;
           GroupBox2.Enabled := false;
           
           close;
           sql.Clear;
           sql.Add('delete from PedidosRepresentantesItens where Pedido in(select Pedido from PedidosRepresentantes where Planilha = :pPlan)');
           parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
           execute;
           Close;
           sql.Clear;
           sql.Add('delete from PedidosRepresentantes where Planilha = :pPlan');
           parambyname('pPlan').AsString := ExtractFileName(cArquivo.FileName);
           execute;
      end;
      with Dados do begin
           PedidosRepresentantes.DisableControls;
           PedidosRepresentantesItens.DisableControls;
           Clientes.DisableControls;
           Produtos.DisableControls;

           PedidosRepresentantes.Open;
           PedidosRepresentantesItens.Open;

           cLog.Sorted := false;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := Grd.RowCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Importando Clientes/ Pedidos/ Itens...Aguarde';
           Janela_Processamento.Show;

           cLog.Clear;

           // Importando Clientes, Pedidos e Itens.
           for Linha := 2 to pred(Grd.RowCount) do begin
               Grd.Row := Linha;
               CarregaCampos(Grd);

               mOk := true;
               if trim(cPedidoOrdem.Text) = '' then begin
                  mok := false;
                  cLog.Items.Add('ORDEM DE COMPRA não informada.');
               end;
               if Trim(cClienteCNPJ.Text+cClienteCPF.Text) = '' then begin
                  mok := false;
                  cLog.Items.Add('ORDEM DE COMPRA: '+cPedidoOrdem.Text +'  CNPJ ou CPF não informado '+ cClienteNome.Text);
               end;
               with PedidosRepresentantes do begin
                    sql.clear;
                    sql.add('select * from PedidosRepresentantes where Ordem_Compra = :pOrdem and Planilha <> :pPlan'); 
                    parambyname('pOrdem').value := cPedidoOrdem.Text;
                    parambyname('pPlan').value  := ExtractFileName(cArquivo.FileName);
                    open;
                    if recordcount > 0 then begin
                       mok := false;
                       cLog.Items.Add('ORDEM DE COMPRA: '+cPedidoOrdem.Text +'  Encontrada ordem de compra importada de outra planilha anteriormente.');
                    end;
               end;
               if Trim(cPedidoSKU.Text) = '' then begin
                  mok := false;
                  cLog.Items.Add('ORDEM DE COMPRA: '+cPedidoOrdem.Text +'  ITEM: '+ cPedidoDesc.text+'  Código SKU não imformado.');
               end;
               if cPedidoQtde.value <= 0 then begin
                  mok := false;                                                  
                  cLog.Items.Add('ORDEM DE COMPRA: '+cPedidoOrdem.Text +'  ITEM: '+ cPedidoDesc.text+'  Quantidade de item inválida.');
               end;
               if mok then begin
                  with PedidosRepresentantes do begin
                       // Verifica se a capa do pedido ja foi cadastrado. 
                       sql.clear;
                       sql.add('select * from PedidosRepresentantes where Ordem_Compra = :pOrdem and Planilha = :pPlan'); 
                       parambyname('pOrdem').value := cPedidoOrdem.Text;
                       parambyname('pPlan').value  := ExtractFileName(cArquivo.FileName);
                       open;
                       if recordcount = 0 then begin
                          Append;
                               // Pegando o ultimo número do pedido.
                               tPedido.close;
                               tPedido.sql.Clear;
                               tPedido.sql.Add('select Pedido = isnull(max(cast(substring(Pedido,2,10) as int)), 0)+1 from PedidosRepresentantes where SUBSTRING(Pedido, 1, 1) = ''E'' ');
                               tPedido.open;

                               fieldByName('Pedido').Value                  := 'E'+tPedido.FieldByName('Pedido').AsString;
                               fieldByName('Representante').Value           := strtoint(cPedidoRepCod.Text);
                               fieldByName('Data_Planilha').Value           := StrtoDate(cPedidoData.Text);
                               fieldByName('Data').Value                    := date;
                               fieldByName('Liberado').Value                := false;
                               fieldByName('Inf_Complementares2').Value     := cPedidoVau.Text;
                               fieldByName('Faturado').Value                := false;
                               fieldByName('Cancelado').Value               := false;
                               fieldByName('Cliente').Value                 := cCliente.KeyValue;
                               fieldByName('Cliente_CNPJ').Value            := cClienteCNPJ.Text;
                               fieldByName('Cliente_IE').Value              := cClienteIE.Text;
                               fieldByName('Cliente_CPF').Value             := cClienteCPF.Text;
                               fieldByName('Cliente_Nome').Value            := cClienteNome.Text;
                               fieldByName('Cliente_CEP').Value             := cClienteCEP.Text;
                               fieldByName('Cliente_Rua').Value             := cClienteRua.Text;
                               fieldByName('Cliente_Bairro').Value          := cClienteBairro.Text;
                               fieldByName('Cliente_Municipio').Value       := cClienteCodCidade.Text;
                               fieldByName('Cliente_MunicipioNome').Value   := cClienteCidade.Text;
                               fieldByName('Cliente_RuaNumero').Value       := cClienteNumero.Text;
                               fieldByName('Cliente_Complemento').Value     := cClienteComp.Text;
                               fieldByName('Cliente_Estado').Value          := cClienteUF.Text;
                               fieldByName('Cliente_Telefone').Value        := cClienteDDD.Text+cClienteTel.Text;
                               fieldByName('Cliente_Email').Value           := cClienteEmail.Text;
                               fieldByName('Cliente_Simples').Value         := false;
                               fieldByName('Cliente_ZonaFranca').Value      := false;
                               fieldByName('Cliente_ConsumidorFinal').Value := true;
                               fieldByName('Cliente_Contato').Value         := '';
                               fieldByName('Situacao').Value                := 'AGUARDANDO';
                               fieldByName('Gerar_Pedido').Value            := false;
                               fieldByName('Tipo_Nota').Value               := iif(cTipoNota.Value <> '', cTipoNota.Value, 0);
                               fieldByName('Tipo_Faturamento').Value        := 1;
                               fieldByName('Volume_Quantidade').Value       := cPedidoVol.Value;
                               fieldByName('Volume_Especie').Value          := cPedidoEsp.Text;
                               fieldByName('Origem_Pedido').Value           := 'E-COMMERCE';
                               fieldByName('Modalidade_Pagamento').Value    := iif(cPedidoModal.text <> '', cPedidoModal.Text, cModalidadePgto.KeyValue);
                               fieldByName('Ordem_Compra').Value            := cPedidoOrdem.Text;
                               fieldByName('Local').Value                   := 0;
                               fieldByName('Transportador').Value           := cPedidoTransp.text;
                               if cClienteUF.Text = Dados.EmpresasEstado.Value then
                                  fieldbyname('Natureza_Codigo').Value := cNaturezaDentro.KeyValue
                               else
                                  fieldbyname('Natureza_Codigo').Value := cNaturezaFora.KeyValue;
                               if cModalidadeFrete.ItemIndex < 3 then
                                  fieldbyname('Modalidade_Frete').Value := cModalidadeFrete.ItemIndex
                               else
                                  fieldbyname('Modalidade_Frete').Value := 9;
                               fieldbyname('Novo').Value        := true;
                               fieldbyname('Planilha').Value    := ExtractFileName(cArquivo.FileName);
                               fieldbyname('Gera_Boleto').Value := strtobool(cPedidoBoleto.Text);
                               fieldbyname('Vendedor').Value    := cPedidoVendedor.Text;
                          Post;
                       end;
                  end;
                  
                  // Itens do Pedido.
                  with tTemp do begin
                       close;
                       SQL.Clear;
                       SQL.Add('select Codigo, Valor_Venda');
                       SQL.Add('from  Produtos');
                       SQL.Add('where  Codigo_SKU = :pCodSKU');
                       ParamByName('pCodSKU').AsString := cPedidoSKU.Text;
                       Open;

                       if RecordCount = 0 then begin
                          cLog.Items.Add(cPedidoPed.Text +'  Erro de Produto '+cPedidoProd.Text + ' não cadastrado.');
                       end;
                  end;
                  with tItem do begin
                       close;
                       SQL.Clear;
                       SQL.Add('select count(*) AS Qtde from PedidosRepresentantesItens where Pedido = :pPedido');
                       ParamByName('pPedido').AsString := PedidosRepresentantes.fieldbyname('Pedido').AsString;
                       Open;
                  end;
                  
                  // Pega o valor da planilha ou recalcula com base no cadastro do produto.
                  if Configuracao.fieldbyname('ECommerce_Valor').asboolean then begin
                     mValor := cPedidoUni.Value;
                  end else begin
                     with dmComercial, TabelaComissoes do begin
                          Locate('Codigo', strtoint(cPedidoTabCom.text), [loCaseInsensitive]);
                          mValor := tTemp.FieldByName('Valor_Venda').AsCurrency;
                          mValor := mValor * (1 + (ModalidadesPgtoPercentual_Venda.asfloat/100));
                          mValor := mValor * (1 + (fieldbyname('Percentual_Venda').asfloat/100));
                     end;
                  end;

                  if mValor = 0 then mValor := cPedidoUni.Value;

                  with PedidosRepresentantesItens do begin
                       Append;
                            FieldByName('Pedido').Value            := PedidosRepresentantes.FieldByName('Pedido').AsString;
                            FieldByName('Data').Value              := PedidosRepresentantes.FieldByName('Data').AsString;
                            FieldByName('Item').Value              := tItem.FieldByName('Qtde').AsInteger+1;
                            FieldByName('Codigo_Mercadoria').Value := tTemp.FieldByName('Codigo').AsInteger;
                            FieldByName('Codigo_Fabricante').Value := cPedidoProd.Text;
                            FieldByName('Codigo_SKU').Value        := cPedidoSKU.Text;
                            FieldByName('Valor_Unitario').Value    := mValor;
                            FieldByName('Quantidade').Value        := cPedidoQtde.Value;
                            FieldByName('Aliquota_IPI').Value      := cPedidoIPI.Value;
                            FieldByName('Peso_Unitario').Value     := cPedidoPesoBrt.Value;
                            FieldByName('Cancelado').Value         := false;
                            FieldByName('Faturado').Value          := false;
                            FieldByName('Tabela_Comissao').Value   := cPedidoTabCom.text;
                       Post;
                  end;
               end else begin
                  cLog.Items.Add('ORDEM DE COMPRA: '+cPedidoOrdem.Text +'  não importado.');
               end;

               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Screen.Cursor := crSQLWait;
               Application.ProcessMessages;

               if Funcoes.Cancelado then begin 
                  Break;
               end;
           end;

           // Totaliza todos os pedidos.
           with tTemp do begin
                close; 
                sql.Clear;
                sql.Add('update PedidosRepresentantes set Total_Pedido = (select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens pri where pri.Pedido = PedidosRepresentantes.Pedido and pri.Data = PedidosRepresentantes.Data)');
                sql.Add('                                ,Novo         = 0');
                sql.Add('where Local = 0');
                execute;
           end;
           
           Janela_Processamento.Close;
           Screen.Cursor := crSQLWait;

           PedidosRepresentantes.Refresh;
           PedidosRepresentantesItens.Refresh;
           Application.ProcessMessages;

           PedidosRepresentantes.EnableControls;
           PedidosRepresentantesItens.EnableControls;
           Clientes.EnableControls;
           Produtos.EnableControls;
           cLog.Sorted    := true;
           cLog.ItemIndex := 0;

           with Dados, Empresas do begin
                Edit;
                   fieldbyname('ImportarPlanPed_Bloqueado').value := false;
                post;    
           end;
           
           if cLog.Items.Text = '' then begin
              if not Funcoes.Cancelado then begin 
                 ShowMessage('Pedido importados com sucesso da planilha ');
              end else begin
                 ShowMessage('Operação cancelada pelo usuário!');
              end;
           end else begin
              PageControl1.ActivePageIndex := 2;
              ShowMessage('Existem inconsistências dos dados da planilha, verifique!');
              pagecontrol1.ActivePageIndex := 3;
           end;
      end;
      TabSheet3.Caption    := 'Log: '+ '['+PoeZero(4, cLog.Items.Count)+']';
      Grade1.Options       := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goDrawFocusSelected,goRowSizing,goColSizing,goThumbTracking];
      Grade1.Enabled       := true;
      GroupBox1.Enabled    := true;
      GroupBox2.Enabled    := true;
      bImportar.Enabled    := true;
      PageControl1.Enabled := true;

      Financeiro_PedidosRepresentantes.PedidosRep.Refresh;
      Dados.PedidosRepresentantesItens.Refresh;
      Screen.Cursor := crDefault;
end;


end.
