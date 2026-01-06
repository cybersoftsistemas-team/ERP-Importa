unit frmCadastros_UsuariosPerfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Grids, DBGrids, MemDS, system.UITypes;

type
  TCadastros_UsuariosPerfil = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    RxDBGrid1: TRxDBGrid;
    Label1: TLabel;
    bCopiar: TButton;
    tUsuarios: TMSQuery;
    dstUsuarios: TDataSource;
    bCompleto: TButton;
    tEmpresas: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCopiarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCompletoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastros_UsuariosPerfil: TCadastros_UsuariosPerfil;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastros_UsuariosPerfil.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastros_UsuariosPerfil.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastros_UsuariosPerfil.Release;
      Cadastros_UsuariosPerfil := nil;
end;

procedure TCadastros_UsuariosPerfil.bCopiarClick(Sender: TObject);
Var
    i : Integer;
begin
      If MessageDlg('Confirma realmente copiar o perfil deste usúario?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           Usuarios.Edit;
                    For i := 0 to (Usuarios.FieldCount -1) do begin
                        If (Usuarios.Fields[i].DataType = ftBoolean) or (Usuarios.Fields[i].FieldName = 'Nivel')	then begin
                           Usuarios.Fields[i].Value := tUsuarios.FieldByName(Usuarios.Fields[i].FieldName).Value;
                        End;
                    End;
           Usuarios.Post;

           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('DELETE FROM UsuariosEmpresas WHERE Matricula = :pMatricula');
           tEmpresas.SQL.Add('DECLARE @Registro int');
           tEmpresas.SQL.Add('SET @Registro = (SELECT MAX(Registro) FROM UsuariosEmpresas)');
           tEmpresas.SQL.Add('SELECT * , @Registro + (ROW_NUMBER() OVER(ORDER BY Registro)) AS Reg');
           tEmpresas.SQL.Add('INTO #TEMP');
           tEmpresas.SQL.Add('FROM UsuariosEmpresas');
           tEmpresas.SQL.Add('WHERE Matricula = :pCopia');
           tEmpresas.SQL.Add('UPDATE #TEMP SET Matricula = :pMatricula, Registro = Reg');
           tEmpresas.SQL.Add('ALTER TABLE #TEMP DROP COLUMN Reg');
           tEmpresas.SQL.Add('INSERT INTO UsuariosEmpresas SELECT * FROM #TEMP');
           tEmpresas.SQL.Add('DROP TABLE #TEMP');
           tEmpresas.ParamByName('pCopia').AsString     := tUsuarios.FieldByName('Matricula').AsString;
           tEmpresas.ParamByName('pMatricula').AsString := Usuarios.FieldByName('Matricula').AsString;
           tEmpresas.Execute;

           Usuarios.RefreshRecord;
      End;

      MessageDlg('Cópia de Perfil de usúario terminado.', mtInformation, [mbOK], 0);

      Close;
end;

procedure TCadastros_UsuariosPerfil.FormShow(Sender: TObject);
begin
      tUsuarios.SQL.Clear;
      tUsuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula <> :pMatricula ORDER BY Nome');
      tUsuarios.ParamByName('pMatricula').AsString := Dados.UsuariosMatricula.AsString;
      tUsuarios.Open;
end;

procedure TCadastros_UsuariosPerfil.bCompletoClick(Sender: TObject);
Var
    i : Integer;
begin
      If MessageDlg('Confirma realmente habilitar todas as opções deste usúario?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           Usuarios.Edit;
                    For i := 0 to (Usuarios.FieldCount -1) do begin
                        If Usuarios.Fields[i].DataType = ftBoolean	then begin
                           Usuarios.Fields[i].Value := true;
                        End;
                    End;
           Usuarios.Post;
           
           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('DELETE FROM UsuariosEmpresas WHERE Matricula = :pMatricula');
           tEmpresas.SQL.Add('DECLARE @Registro int');
           tEmpresas.SQL.Add('SET @Registro = (SELECT MAX(Registro) FROM UsuariosEmpresas)');
           tEmpresas.SQL.Add('SELECT * , @Registro + (ROW_NUMBER() OVER(ORDER BY Registro)) AS Reg');
           tEmpresas.SQL.Add('INTO #TEMP');
           tEmpresas.SQL.Add('FROM UsuariosEmpresas');
           tEmpresas.SQL.Add('WHERE Matricula = :pCopia');
           tEmpresas.SQL.Add('UPDATE #TEMP SET Matricula = :pMatricula, Registro = Reg');
           tEmpresas.SQL.Add('ALTER TABLE #TEMP DROP COLUMN Reg');
           tEmpresas.SQL.Add('INSERT INTO UsuariosEmpresas SELECT * FROM #TEMP');
           tEmpresas.SQL.Add('DROP TABLE #TEMP');
           tEmpresas.ParamByName('pCopia').AsString     := tUsuarios.FieldByName('Matricula').AsString;
           tEmpresas.ParamByName('pMatricula').AsString := Usuarios.FieldByName('Matricula').AsString;
           tEmpresas.Execute;

           Usuarios.RefreshRecord;
      End;

      MessageDlg('Todas as opções deste usúario foram habilitadas.', mtInformation, [mbOK], 0);

      Close;
end;

end.
