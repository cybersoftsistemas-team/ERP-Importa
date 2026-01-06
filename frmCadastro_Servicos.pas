unit frmCadastro_Servicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, 
  DBCtrls, FUNCOES, ClipBrd, Grids, DBGrids, Mask, Vcl.Buttons;

type
  TCadastro_Servicos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText3: TStaticText;
    cCodigo: TDBEdit;
    Grade: TRxDBGrid;
    StaticText1: TStaticText;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    StaticText4: TStaticText;
    DBEdit1: TDBEdit;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    StaticText2: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    cImposto01: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText16: TStaticText;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText17: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    bPesq: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_Servicos: TCadastro_Servicos;

implementation

uses frmDados, frmDMFiscal, frmPesquisaGerais;

{$R *.dfm}

procedure TCadastro_Servicos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Servicos.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Servicos.SQL.Clear;
           Servicos.SQL.Add('SELECT * FROM Servicos');
           Servicos.Open;

           Impostos.SQL.Clear;
           Impostos.SQL.Add('SELECT * FROM Impostos ORDER BY Descricao');
           Impostos.Open;
           
           with NaturezaRend do begin
                sql.Clear;
                sql.Add('select Codigo');
                sql.Add('      ,Descricao = cast(Descricao as varchar(500))');
                sql.Add('from NaturezaRendimentos');
                sql.Add('order by Codigo');
                open;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Servicos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Clipboard.AsText := Dados.ServicosCodigo.AsString;
      Dados.Servicos.Close;
      Dados.Impostos.Close;
      
      LimpaMemoria;
      Cadastro_Servicos.Release;
      Cadastro_Servicos := nil;
end;

procedure TCadastro_Servicos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Dados.Servicos.Refresh;
         Panel2.Enabled := False;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Servicos.bPesqClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'NaturezaRendimentos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.Showmodal;
      Dados.ServicosNatureza_Rendimento.Value := strtoint(Clipboard.AsText);
end;

procedure TCadastro_Servicos.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Código / Descrição', mPesquisa);
     If Dados.Servicos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
        If Dados.Servicos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]) = False then begin
           ShowMessage('Nenhuma Serviço encontrado com o "Código ou Descrição" informados.');
        End;
     End;
end;

procedure TCadastro_Servicos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Servicos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbPost then begin
         With dmFiscal, Dados do begin
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('UPDATE NotasTerceirosItens SET Aliquota_PIS    = :pPIS,');
              NotasTerceirosItens.SQL.Add('                               Aliquota_COFINS = :pCOFINS');
              NotasTerceirosItens.SQL.Add('WHERE Codigo_Mercadoria = :pCodigo AND ISNULL(Aliquota_PIS, 0) = 0 ');
              NotasTerceirosItens.ParamByName('pPis').AsFloat      := ServicosAliquota_PIS.AsFloat;
              NotasTerceirosItens.ParamByName('pCofins').AsFloat   := ServicosAliquota_COFINS.ASFloat;
              NotasTerceirosItens.ParamByName('pCodigo').AsInteger := ServicosCodigo.AsInteger;
              NotasTerceirosItens.Execute;
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens');
              NotasTerceirosItens.SQL.Add('WHERE Codigo_Mercadoria = :pCodigo');
         End;
      End;
      Navega.SetFocus;
end;

end.
