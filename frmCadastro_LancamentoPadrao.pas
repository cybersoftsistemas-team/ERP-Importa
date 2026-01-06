unit frmCadastro_LancamentoPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, RxCurrEdit, RxToolEdit, RxDBCtrl, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, system.UITypes;

type
  TCadastro_LancamentoPadrao = class(TForm)
    Panel3: TPanel;
    cBanco: TDBLookupComboBox;
    cObservacao: TDBMemo;
    lObservacao: TStaticText;
    lClassificacao: TStaticText;
    lBeneficiario: TStaticText;
    lValorTitulo: TStaticText;
    lVencimento: TStaticText;
    cValorDocumento: TDBEdit;
    lDocumento: TStaticText;
    cClassificacao: TDBLookupComboBox;
    cFornecedor: TDBLookupComboBox;
    cDocumento: TDBLookupComboBox;
    lModalidade: TStaticText;
    cModalidade: TDBLookupComboBox;
    StaticText2: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    lBanco: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    Image2: TImage;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    DBGrid1: TDBGrid;
    Navega: TDBNavigator;
    StaticText1: TStaticText;
    cCliente: TDBLookupComboBox;
    StaticText3: TStaticText;
    cDescricao: TDBEdit;
    tReg: TMSQuery;
    StaticText4: TStaticText;
    cOrgao: TDBLookupComboBox;
    cVencimento: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cClassificacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_LancamentoPadrao: TCadastro_LancamentoPadrao;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TCadastro_LancamentoPadrao.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_LancamentoPadrao.cClassificacaoClick(Sender: TObject);
begin
      with Dados do begin
           cOrgao.Enabled      := ClassificacaoFinanceiraTipo.AsString = 'P';
           cFornecedor.Enabled := ClassificacaoFinanceiraTipo.AsString = 'P';
           cCliente.Enabled    := ClassificacaoFinanceiraTipo.AsString = 'R';
      end;
end;

procedure TCadastro_LancamentoPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Cadastro_LancamentoPadrao.Release;
      Cadastro_LancamentoPadrao := nil;
end;

procedure TCadastro_LancamentoPadrao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_LancamentoPadrao.FormShow(Sender: TObject);
begin
     with Dados do begin
          LancamentoPadrao.sql.clear;
          LancamentoPadrao.sql.add('SELECT * FROM LancamentoPadrao ORDER BY Descricao');
          LancamentoPadrao.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;

          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
          Clientes.Open;

          Orgaos.SQL.Clear;
          Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
          Orgaos.Open;

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo = 0) AND (Desativada <> 1) AND (Nivel <= :pNivel) ORDER BY Descricao');
          ClassificacaoFinanceira.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
          ClassificacaoFinanceira.Open;

          CentroCusto.SQL.Clear;
          CentroCusto.SQL.Add('SELECT * FROM CentroCusto WHERE LEN(Codigo) = 7 ORDER BY Descricao');
          CentroCusto.Open;

          ModalidadesPgto.SQL.Clear;
          ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
          ModalidadesPgto.Open;

          Bancos.SQL.Clear;
          Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
          Bancos.Open;

          TiposDocumentos.SQL.Clear;
          TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos ORDER BY Descricao');
          TiposDocumentos.Open;
     end;
end;

procedure TCadastro_LancamentoPadrao.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with Dados do begin
          if (Button = nbPost)  then begin
             if Trim(cDescricao.Text) = '' then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a Descrição do Lançamento.', mtError, [mbOK], 0);
                cDescricao.SetFocus;
                Abort;
             end;
             if Trim(cClassificacao.Text) = '' then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a classificação financeira.', mtError, [mbOK], 0);
                cClassificacao.SetFocus;
                Abort;
             end;
             if Trim(cDocumento.text) = '' then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o tipo do documento.', mtError, [mbOK], 0);
                cDocumento.SetFocus;
                Abort;
             end;
             if LancamentoPadrao.State = dsInsert then begin
                tReg.sql.clear;
                tReg.sql.add('SELECT ISNULL(MAX(Registro), 0)+1 AS Reg FROM LancamentoPadrao');
                tReg.Open;
                LancamentoPadraoRegistro.Value := tReg.FieldByName('Reg').AsInteger;
             end;
          end;
     end;
end;

procedure TCadastro_LancamentoPadrao.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
   i:Integer;
begin
      Screen.Cursor := crSQLWait;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel3.Enabled := True;
         cDescricao.SetFocus;
      end;
      Screen.Cursor := crDefault;
end;

end.
