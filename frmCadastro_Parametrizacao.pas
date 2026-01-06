unit frmCadastro_Parametrizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Mask;

type
  TCadastro_Parametrizacao = class(TForm)
    Panel1: TPanel;
    bSalvar: TButton;
    bSair: TButton;
    GroupBox8: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    GroupBox4: TGroupBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    RxLabel3: TRxLabel;
    RxLabel2: TRxLabel;
    Configuracao: TImage;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Parametrizacao: TCadastro_Parametrizacao;

implementation

uses frmDados, frmDMContab, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Parametrizacao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Parametrizacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_Parametrizacao.Release;
     Cadastro_Parametrizacao := nil;
end;

procedure TCadastro_Parametrizacao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Parametrizacao.FormShow(Sender: TObject);
begin
      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           //Parametros.Open;
           //Parametros.Edit;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Descricao,Conta, Codigo');
           PlanoContas.Open;
           PlanoContasConta.EditMask := EmpresasMascara_PlanoContas.Value+';0; ';
      End;
end;

procedure TCadastro_Parametrizacao.bSalvarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente salvar as parâmetrizações?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         With Dados, dmContab do Begin
              //ParametrosRegistro.Value := 1;
              //Parametros.Post;
              //Parametros.Edit;
         End;
      End;
end;

end.
