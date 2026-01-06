unit frmCadastro_NCMAtributos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Funcoes, MemDS, DBAccess, MSAccess, RxCtrls;

type
  TCadastro_NCMAtributos = class(TForm)
    Panel2: TPanel;
    StaticText4: TStaticText;
    cCodigoAtt: TDBEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    cNomeAtt: TDBEdit;
    DBEdit7: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox3: TDBCheckBox;
    Panel1: TPanel;
    Navega: TDBNavigator;
    DBGrid1: TDBGrid;
    bSair: TButton;
    DBRadioGroup2: TDBRadioGroup;
    tTmp: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Button1: TButton;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure cCodigoAttChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_NCMAtributos: TCadastro_NCMAtributos;

implementation

{$R *.dfm}

uses frmDados, frmDMFiscal;

procedure TCadastro_NCMAtributos.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TCadastro_NCMAtributos.cCodigoAttChange(Sender: TObject);
begin
      with dmFiscal do begin
           with DominiosAtt do begin
                sql.clear;
                sql.add('select * from DominiosAtt where Atributo = :pAtt order by Codigo');
                parambyname('pAtt').AsString := AtributosNCMCodigo.AsString;
                open;
           end;
      end;
end;

procedure TCadastro_NCMAtributos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_NCMAtributos.Release;
      Cadastro_NCMAtributos := nil;
end;

procedure TCadastro_NCMAtributos.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_NCMAtributos.FormShow(Sender: TObject);
begin
      with dmFiscal do begin
           with AtributosNCM do begin
                sql.clear;
                sql.add('select * from AtributosNCM order by Codigo');
                open;
           end;
      end;
end;

procedure TCadastro_NCMAtributos.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      if Button = nbDelete then begin
         if MessageDlg('Deseja realmente excluir este Atributo?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
            Abort
         end;
      end;
      with dmFiscal, AtributosNCM do begin
           if Button = nbPost then begin
              if trim(cCodigoAtt.text) = '' then begin
                 MessageDlg('Código do atributo inválido!', mtError, [mbok], 0); 
                 cCodigoAtt.SetFocus;
                 Abort
              end;
              if trim(cNomeAtt.text) = '' then begin
                 MessageDlg('Nome do atributo inválido!', mtError, [mbok], 0); 
                 cNomeAtt.SetFocus;
                 Abort
              end;
              if State = dsInsert then begin
                 with tTmp do begin
                      sql.Clear;
                      sql.Add('select count(Codigo) as qtde from AtributosNCM where Codigo = :pCod'); 
                      parambyname('pCod').AsString := cCodigoAtt.Text;
                      open;
                      if fieldbyname('qtde').AsInteger > 0 then begin
                         MessageDlg('Código de atributo ja cadastrado!', mtError, [mbok], 0); 
                         cCodigoAtt.SetFocus;
                         Abort
                      end;
                 end;
              end;
           end;
      end;
end;

procedure TCadastro_NCMAtributos.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      with dmFiscal do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              Panel2.Enabled := true;
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              if Button = nbInsert then begin
                 AtributosNCMMultivalorado.Value       := false;
                 AtributosNCMModalidade_Operacao.Value := 'Importação';
                 AtributosNCMTipo_Subdetalhe.Value     := 'Texto';
              end;
              cCodigoAtt.SetFocus;
           end;
           if (Button = nbPost) or (Button = nbCancel) then Begin
              Panel2.Enabled := False;
           end;
      end;
end;


end.
