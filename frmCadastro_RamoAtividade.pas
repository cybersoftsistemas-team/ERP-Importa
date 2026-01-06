unit frmCadastro_RamoAtividade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, Grids, DBGrids, Mask, MemDS;

type
  TCadastro_RamoAtividade = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    DBLookupComboBox14: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBLookupComboBox16: TDBLookupComboBox;
    StaticText39: TStaticText;
    DBEdit4: TDBEdit;
    Grade: TRxDBGrid;
    tCodigo: TMSQuery;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_RamoAtividade: TCadastro_RamoAtividade;

implementation

uses frmDados, frmDMContab;

{$R *.dfm}

procedure TCadastro_RamoAtividade.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_RamoAtividade.Release;
      Cadastro_RamoAtividade := nil;
end;

procedure TCadastro_RamoAtividade.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_RamoAtividade.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Navega.SetFocus;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If (Button = nbInsert) then begin
            Dados.RamoAtividadeModulo_Pedidos.Value      := false;
            Dados.RamoAtividadeModulo_Clientes.Value     := false;
            Dados.RamoAtividadeModulo_Fornecedores.Value := false;
            Dados.RamoAtividadeModulo_Processo.Value     := false;
            Dados.RamoAtividadeModulo_ImportaNFe.Value   := false;
         End;

         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.RamoAtividade.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor  := crDefault;
      End;
end;

procedure TCadastro_RamoAtividade.FormShow(Sender: TObject);
begin
      With Dados, dmContab do begin
           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 1) ORDER BY Conta, Descricao');
           PlanoContas.Open;
      End;
end;

procedure TCadastro_RamoAtividade.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_RamoAtividade.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (RamoAtividade.State = dsInsert) then begin
              tCodigo.Open;
              RamoAtividade.FieldByName('Codigo').AsInteger := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
           End;
      End;
end;

end.
