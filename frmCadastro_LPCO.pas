unit frmCadastro_LPCO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, RxToolEdit, RxDBCtrl, RxCtrls, MemDS, DBAccess, MSAccess ;

type
  TCadastro_LPCO = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cOrgao: TDBLookupComboBox;
    Grade: TDBGrid;
    StaticText5: TStaticText;
    cNumero: TDBEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cDataIni: TDBDateEdit;
    cDataFim: TDBDateEdit;
    ttmp: TMSQuery;
    StaticText4: TStaticText;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_LPCO: TCadastro_LPCO;

implementation

{$R *.dfm}

uses frmDMDespacho, Funcoes, frmDados;

procedure TCadastro_LPCO.bPesquisaClick(Sender: TObject);
var
  mPesquisa: string;
begin
     mPesquisa := InputBox('Pesquisa', 'Número/Orgão', mPesquisa);
     with dmDespacho do begin
          if not LPCO.Locate('Orgao_Anuente', mPesquisa, [loCaseInsensitive]) then begin
             LPCO.Locate('Orgao_Anuente', mPesquisa, [loCaseInsensitive,loPartialKey]);
          end;
     end;
end;

procedure TCadastro_LPCO.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TCadastro_LPCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_LPCO.Release;
      Cadastro_LPCO := nil;
end;

procedure TCadastro_LPCO.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_LPCO.FormShow(Sender: TObject);
begin
     with Dados, dmDespacho do begin 
          with LPCO do begin
               sql.clear;
               sql.add('select *, Sel = cast(0 as bit) from LPCO order by Orgao_Anuente, Numero');
               open;
          end;
          with OrgaosAnuentes do begin
               sql.clear;
               sql.add('select * from OrgaosAnuentes order by Codigo');
               open;
          end;
     end;
end;

procedure TCadastro_LPCO.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
    Navega.SetFocus;
    with dmDespacho do begin
         with ttmp do begin  
              if (LPCO.State = dsInsert) and (Button = nbPost) then begin
                 sql.clear;
                 sql.add('select count(*) as Existe from LPCO where Orgao_Anuente = '+quotedstr(LPCO.FieldByName('Orgao_Anuente').asstring)+' and Numero = '+quotedstr(cNumero.text));
                 open;
                 if fieldbyname('Existe').AsInteger > 0 then begin
                    MessageDlg('LPCO já esta cadastrado.', mtinformation, [mbOK], 0);
                    cOrgao.SetFocus;
                    abort;
                 end;
              end;
              if Button = nbDelete then begin
                 sql.clear;
                 sql.Add('select count(*) as Movimento from InvoiceItensLPCO where LPCO = '+LPCO.FieldByName('Registro').asstring);
                 open;
                 if fieldbyname('Movimento').asinteger > 0 then begin
                    MessageDlg('Este LPCO não pode ser excluido, pois ja foi utilizado em uma fatura.', mtError, [mbOK], 0);
                    LPCO.cancel;
                    abort;
                 end else begin
                    if MessageDlg('Deseja realmente excluir este LPCO?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin;
                       LPCO.cancel;
                       abort;
                    end;
                 end;
              end;
         end;
    end;
end;

procedure TCadastro_LPCO.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
  i: Integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := True;
         cOrgao.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      end;
end;

end.
