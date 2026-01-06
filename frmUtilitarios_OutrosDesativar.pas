unit frmUtilitarios_OutrosDesativar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, system.UITypes, Vcl.DBGrids;

type
  TUtilitarios_OutrosDesativar = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    bExecutar: TButton;
    StaticText3: TStaticText;
    cSenha: TEdit;
    ProgressBar1: TProgressBar;
    Grade: TDBGrid;
    lQtde: TLabel;
    cSaldoEst: TCheckBox;
    cSaldoInv: TCheckBox;
    bCancel: TButton;
    bAtivar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure bAtivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Utilitarios_OutrosDesativar: TUtilitarios_OutrosDesativar;

implementation

uses frmDados, frmMenu_Principal, Funcoes;

{$R *.dfm}

procedure TUtilitarios_OutrosDesativar.bAtivarClick(Sender: TObject);
begin
      with Dados, Produtos do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           if UsuariosChave.Value <> cSenha.Text then begin
              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
              Abort;
           end;
           if MessageDlg('Atenção!'+#13+#13+'Esta rotina irá "Ativar todos" os produtos do cadastro.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
              Abort;
           end;

           sql.clear;
           sql.add('UPDATE Produtos set Desativado = 0');
           execute;
           sql.clear;
           sql.add('SELECT * FROM Produtos ORDER BY Codigo_Fabricante, Descricao_Reduzida');
           open;
      end;

      showmessage('Processamento concluído!');
end;

procedure TUtilitarios_OutrosDesativar.bCancelClick(Sender: TObject);
begin
     bCancel.tag := 1;
end;

procedure TUtilitarios_OutrosDesativar.bExecutarClick(Sender: TObject);
var
    mq:integer;
    me:real;
begin
      with Dados, Produtos do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           if UsuariosChave.Value <> cSenha.Text then begin
              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
              Abort;
           end;

           if MessageDlg('Atenção!'+#13+#13+'Esta rotina irá desativar todos os produtos com saldo 0 (zero) no "Estoque" e no "Inventario".'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
              Abort;
           end;

           bExecutar.Enabled     := false;
           bAtivar.Enabled       := false;
           ProgressBar1.Max      := recordCount;
           ProgressBar1.Position := 0;
           mq                    := 1;

           //DisableControls;
           first;
           while (not eof) and (bCancel.tag = 0) do begin
                 me := 0;
                 if not FieldByName('Desativado').AsBoolean then begin
                    if cSaldoEst.Checked then begin
                       me := EstoqueProduto(Produtos.FieldByName('Codigo').asinteger);
                    end;
                    if cSaldoInv.Checked then begin
                       me := me + InventarioProduto(Produtos.FieldByName('Codigo').asinteger);
                    end;
                    if me = 0 then begin
                       Edit;
                           FieldByName('Desativado').Value := true;
                       Post;
                    end;
                 end;

                 lQtde.Caption := FormatFloat('000000', mq)+' de '+FormatFloat('000000', Produtos.recordCount);
                 inc(mq);
                 ProgressBar1.Position := ProgressBar1.Position + 1;
                 next;
                 application.ProcessMessages;
           end;
           //EnableControls;
      end;
      if bCancel.Tag = 1 then begin
         showmessage('Cancelado pelo usuário!');
      end else begin
         showmessage('Processamento concluído!');
      end;
      bExecutar.Enabled := true;
      bAtivar.Enabled   := true;
      bCancel.Tag       := 0;
end;

procedure TUtilitarios_OutrosDesativar.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TUtilitarios_OutrosDesativar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Utilitarios_OutrosDesativar.Release;
     Utilitarios_OutrosDesativar := nil;
end;

procedure TUtilitarios_OutrosDesativar.FormShow(Sender: TObject);
begin
      with Dados do begin
           Produtos.sql.clear;
           Produtos.sql.add('select * from Produtos order by Codigo_Fabricante, Descricao_Reduzida');
           Produtos.Open;
      end;
end;

end.
