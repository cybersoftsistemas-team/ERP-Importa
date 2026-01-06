unit frmCadastro_PlanoContasECF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, system.UITypes,
  Vcl.Dialogs, DB, DBAccess, MSAccess, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Mask, Vcl.ExtCtrls, Buttons, RXCtrls, Grids, DBGrids, MemDS;

type
  TCadastro_PlanoContasECF = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    cConta: TDBEdit;
    Grade: TRxDBGrid;
    tRegistro: TMSQuery;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_PlanoContasECF: TCadastro_PlanoContasECF;

implementation

uses frmDMContab;

{$R *.dfm}

procedure TCadastro_PlanoContasECF.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i:Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cConta.SetFocus;
      End;
end;

procedure TCadastro_PlanoContasECF.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_PlanoContasECF.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_PlanoContasECF.Release;
      Cadastro_PlanoContasECF := nil;
end;

procedure TCadastro_PlanoContasECF.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      with dmContab do begin
           // Gerando o código do cliente.
           if PlanoContasECF.State = dsInsert then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PlanoContasECF');
              tRegistro.Open;
              PlanoContasECFRegistro.Value := tRegistro.fieldByName('Registro').Value;
              tRegistro.Close;
           end;
           
           if (Button = nbPost) and (PlanoContas.State = dsEdit) then begin
              if Trim(cConta.Text) = '' then begin
                 MessageDlg('Campo "Conta" é obrigatório!', mtInformation, [MBOK], 0);
                 cConta.Setfocus;
                 Abort;
              end;
           end;

           // Não deixa excluir se ja existe movimento para o cliente.
           if Button = nbDelete then begin
              if MessageDlg('Deseja excluir realmente esta conta.', mtInformation, [mbYes, mbNo], 0) = mrNo then
                 Abort;
           end;
      end;
end;

procedure TCadastro_PlanoContasECF.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_PlanoContasECF.FormShow(Sender: TObject);
begin
      with dmContab do begin
           PlanoContasECF.SQL.Clear;
           PlanoContasECF.SQL.Add('SELECT * FROM PlanoContasECF ORDER BY Conta');
           PlanoCOntasECF.Open;
      end;
end;

end.
