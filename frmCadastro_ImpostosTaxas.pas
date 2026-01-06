unit frmCadastro_ImpostosTaxas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls,
  DBCtrls, DBGrids, Vcl.ComCtrls,ExtCtrls, RXCtrls, Funcoes, DB, DBAccess, MSAccess, Buttons, Menus, MemDS, Mask, Grids, system.UITypes;

type
  TCadastro_ImpostosTaxas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText3: TStaticText;
    cCodigoSRF: TDBEdit;
    StaticText11: TStaticText;
    DBEdit7: TDBEdit;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Natureza: TMSQuery;
    GroupBox1: TGroupBox;
    cICMSOper_NomeC: TDBLookupComboBox;
    StaticText19: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    cICMSOper_CodD: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cICMSOper_CodC: TDBEdit;
    StaticText26: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    GroupBox2: TGroupBox;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    StaticText9: TStaticText;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText70: TStaticText;
    cPesquisa: TEdit;
    SpeedButton2: TSpeedButton;
    mnVariavel: TPopupMenu;
    FORNECEDORES1: TMenuItem;
    DEVOLUO1: TMenuItem;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure StaticText8Click(Sender: TObject);
    procedure StaticText7Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure StaticText9Click(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure DEVOLUO1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_ImpostosTaxas: TCadastro_ImpostosTaxas;

implementation

Uses frmDados, frmDMContab, frmCadastro_ClassificacaoFinanceira, frmCadastro_PlanoContas, frmCadastro_HistoricoPadrao, frmCadastro_OrgaosPublicos, frmCadastro_TiposDocumentos;

{$R *.dfm}

procedure TCadastro_ImpostosTaxas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_ImpostosTaxas.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmContab, Dados do begin
             with Dados, Impostos do begin
                  sql.clear;
                  sql.add('select * from Impostos order by Codigo');
                  Open;
             end;

             Historicos.Open;

             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ( Sintetica = 0) ORDER BY Descricao');
             PlanoContas.Open;

             Orgaos.SQL.Clear;
             Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos Order by Nome, Codigo');
             Orgaos.Open;

             ClassificacaoFinanceira.SQL.Clear;
             ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao, Codigo');
             ClassificacaoFinanceira.Open;

             TiposDocumentos.SQL.Clear;
             TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao, Codigo');
             TiposDocumentos.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TCadastro_ImpostosTaxas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         if Button = nbInsert then begin
            cCodigo.Enabled := true;
            cCodigo.SetFocus;
         end else begin
            cCodigo.Enabled := false;
            cCodigoSRF.SetFocus;
         end;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Impostos.Refresh;
         Panel2.Enabled := False;
         cPesquisa.Clear;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_ImpostosTaxas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        Screen.Cursor := crSQLWait;
        With dmContab, Dados do begin
             Impostos.Close;
             PlanoContas.Close;
             Historicos.Close;
        end;
        Screen.Cursor := crDefault;

        LimpaMemoria;
        Cadastro_ImpostosTaxas.Release;
        Cadastro_ImpostosTaxas := nil;
end;

procedure TCadastro_ImpostosTaxas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_ImpostosTaxas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
    tTemp: TMSQuery;
begin
      Navega.SetFocus;
      with Dados do begin 
           if Button = nbPost then begin
              Impostos.FieldByName('Codigo').Value := stringreplace(Impostos.FieldByName('Codigo').Value, ' ', '', [rfReplaceAll]);
           end;
           if Button = nbDelete then begin
              tTemp := TMSQuery.Create(Cadastro_ImpostosTaxas);
              tTemp.Connection := Dados.Banco_Empresas;
              tTemp.SQL.Clear;
              tTemp.SQL.Add('SELECT * FROM PagarReceber WHERE Classificacao = :pClass');
              tTemp.ParamByName('pClass').AsString := ImpostosClassificacao_Financeira.AsString;
              tTemp.Open;

              if tTemp.RecordCount > 0 then begin
                 MessageDlg('Atenção!'+#13+#13+'Esse imposto/Taxa não pode ser excluído, pois já foi utilizado.', mtInformation, [mbOK], 0);
                 Abort;
              end;

              if MessageDlg('Deseja realmente exclui o registro?', mtConfirmation, [mbYES, mbNO], 0) = mrNO then begin
                 Abort;
              end;
           end;
      end;
end;

procedure TCadastro_ImpostosTaxas.StaticText8Click(Sender: TObject);
begin
      Cadastro_OrgaosPublicos := TCadastro_OrgaosPublicos.Create(Self);
      Cadastro_OrgaosPublicos.caption := Caption;
      Cadastro_OrgaosPublicos.Showmodal;
      Dados.Orgaos.Open;
end;

procedure TCadastro_ImpostosTaxas.StaticText7Click(Sender: TObject);
begin
        Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
        Cadastro_ClassificacaoFinanceira.Caption := Caption;
        Cadastro_ClassificacaoFinanceira.ShowModal;
        Dados.ClassificacaoFinanceira.Open;
end;

procedure TCadastro_ImpostosTaxas.StaticText4Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      dmContab.PlanoContas.Open;
end;

procedure TCadastro_ImpostosTaxas.StaticText6Click(Sender: TObject);
begin
        Cadastro_HistoricoPadrao := TCadastro_HistoricoPadrao.Create(Self);
        Cadastro_HistoricoPadrao.Caption := Caption;
        Cadastro_HistoricoPadrao.ShowModal;
        dmContab.Historicos.Open;
end;

procedure TCadastro_ImpostosTaxas.StaticText9Click(Sender: TObject);
begin
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
      Dados.TiposDocumentos.Open;
end;

procedure TCadastro_ImpostosTaxas.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Descrição', mPesquisa);
     Dados.Impostos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_ImpostosTaxas.cPesquisaChange(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           if Trim(cPesquisa.Text) <> '' then
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') ORDER BY Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Codigo');
           PlanoContas.Open;
      end;
end;

procedure TCadastro_ImpostosTaxas.SpeedButton2Click(Sender: TObject);
begin
      cPesquisa.Clear;
end;

procedure TCadastro_ImpostosTaxas.FORNECEDORES1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'FORNECEDOR';
end;

procedure TCadastro_ImpostosTaxas.DEVOLUO1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'DEVOLUÇÃO';
end;

end.
