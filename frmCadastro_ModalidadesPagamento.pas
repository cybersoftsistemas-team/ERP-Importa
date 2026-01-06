unit frmCadastro_ModalidadesPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ComCtrls, DB,
  DBAccess, MSAccess, ClipBrd, Grids, DBGrids, Mask, MemDS, system.UITypes, RxToolEdit;

type
  TCadastro_ModalidadesPagamento = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText3: TStaticText;
    cCodigo: TDBEdit;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    tCodigoCodigo: TSmallintField;
    cForma: TDBRadioGroup;
    StaticText15: TStaticText;
    cNumeroParcelas: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    StaticText17: TStaticText;
    DBEdit14: TDBEdit;
    StaticText1: TStaticText;
    cDia: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GradeParcelas: TDBGrid;
    Button1: TButton;
    tTemp: TMSQuery;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure GradeParcelasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_ModalidadesPagamento: TCadastro_ModalidadesPagamento;

implementation

Uses frmDados, Funcoes;

{$R *.dfm}

procedure TCadastro_ModalidadesPagamento.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_ModalidadesPagamento.Button1Click(Sender: TObject);
var
  i:integer;
begin
     with Dados, ModalidadesParcelas do begin
          with tTemp do begin
               sql.Clear;
               sql.Add('delete from ModalidadesParcelas where Codigo = :pCod');
               parambyname('pCod').AsInteger := ModalidadesPgtoCodigo.AsInteger;
               execute;
          end;
          sql.Clear;
          sql.Add('select * from ModalidadesParcelas where Codigo = :pCod');
          parambyname('pCod').AsInteger := ModalidadesPgtoCodigo.AsInteger;
          open;
          for i := 1 to ModalidadesPgtoNumero_Parcelas.AsInteger do begin
              with tTemp do begin
                   sql.Clear;
                   sql.Add('select isnull(max(registro), 0)+1 as Reg from ModalidadesParcelas');
                   open;
              end;
              Append;
                   fieldbyname('Registro').Value := tTemp.FieldByName('Reg').AsInteger;
                   fieldbyname('Codigo').Value   := ModalidadesPgtoCodigo.AsInteger;
                   fieldbyname('Parcela').Value  := i;
                   fieldbyname('Dias').Value     := iif(i = 1, ModalidadesPgtoPrazo_Primeira.AsInteger, ModalidadesPgtoPrazo_Demais.AsInteger);
              Post;
          end;
     end;
end;

procedure TCadastro_ModalidadesPagamento.cCodigoChange(Sender: TObject);
begin
     with Dados, ModalidadesParcelas do begin
          sql.Clear;
          sql.Add('select * from ModalidadesParcelas where Codigo = :pCod');
          parambyname('pCod').AsInteger := ModalidadesPgtoCodigo.AsInteger;
          open;
     end;
end;

procedure TCadastro_ModalidadesPagamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.ModalidadesPgtoCodigo.AsString;
      Dados.ModalidadesPgto.Close;
      Cadastro_ModalidadesPagamento.Release;
      Cadastro_ModalidadesPagamento := nil;
end;

procedure TCadastro_ModalidadesPagamento.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao');
           ModalidadesPgto.Open;
      End;     
      Screen.Cursor := crDefault;
end;

procedure TCadastro_ModalidadesPagamento.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         If Button = nbInsert then cForma.ItemIndex := 0;
         Panel2.Enabled   := True;
         cNumeroParcelas.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.ModalidadesPgto.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_ModalidadesPagamento.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) then begin
         If (Dados.ModalidadesPgtoPrazo_Dia.AsInteger > 31) or (Dados.ModalidadesPgtoPrazo_Dia.AsInteger < 0) then begin
            MessageDlg('Erro!'+#13+#13+'Dia invalido, informe um dia entre 0 e 31.', mtError, [mbOK], 0);
            cDia.SetFocus;
            Abort; 
         End;
      End;
      If (Button = nbPost) and (Dados.ModalidadesPgto.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
         Dados.ModalidadesPgtoCodigo.Value := tCodigoCodigo.Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_ModalidadesPagamento.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_ModalidadesPagamento.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Codigo/Descrição', mPesquisa);
     If Dados.ModalidadesPgto.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then
        Dados.ModalidadesPgto.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_ModalidadesPagamento.DBEdit13Exit(Sender: TObject);
begin
      If Dados.ModalidadesPgtoPrazo_Primeira.AsInteger > 0 then
         cForma.ItemIndex := 1
      else
         cForma.ItemIndex := 0;
end;

procedure TCadastro_ModalidadesPagamento.GradeParcelasKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then begin
       GradeParcelas.DataSource.DataSet.Post;
    end;
end;

end.

