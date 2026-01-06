unit frmUtilitarios_Restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Mask, system.UITypes, RxToolEdit;

type
  TUtilitarios_Restore = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bRestaurar: TButton;
    StaticText23: TStaticText;
    cArqMovimento: TFilenameEdit;
    StaticText1: TStaticText;
    cArqCadastros: TFilenameEdit;
    StaticText2: TStaticText;
    cArqContabil: TFilenameEdit;
    Memo1: TMemo;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bRestaurarClick(Sender: TObject);
    procedure cArqMovimentoChange(Sender: TObject);
    procedure cArqMovimentoAfterDialog(Sender: TObject; var Name: String;var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_Restore: TUtilitarios_Restore;

implementation

uses frmDados, frmMenu_Principal, frmJanela_BACKUP;

{$R *.dfm}

procedure TUtilitarios_Restore.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_Restore.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      SetCurrentDir(ExtractFilePath(Application.ExeName));
      Utilitarios_Restore.Release;
      Utilitarios_Restore := nil;
end;

procedure TUtilitarios_Restore.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_Restore.bRestaurarClick(Sender: TObject);
Var
   mBancoMovimento: WideString;
   mBancoContabil : WideString;
   mPastaBackup   : WideString;
begin
      If MessageDlg('Deseja realmente restaurar o backup do banco de dados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         With Dados do begin
              Empresas.SQL.Clear;
              Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
              Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
              Empresas.Open;

              Configuracao.Open;

              mBancoMovimento := EmpresasBanco_Dados.AsString;
              mBancoContabil  := EmpresasBanco_Contabilidade.AsString;
              mPastaBackup    := ConfiguracaoPasta_Backup.AsString+'\';

              Janela_Backup                   := TJanela_Backup.Create(Self);
              Janela_Backup.lServidor.Caption := Menu_Principal.lServidor.Caption;
              Janela_Backup.lTitulo2.Caption  := 'Restauração de Backup do banco de dados do Sistema.';
              Janela_Backup.lAcao.Caption     := 'Restaurando Backup do banco de dados...';
              Janela_Backup.lLocal.Caption    := '';
              Janela_Backup.lCopia.Caption    := '';
              Janela_Backup.Label2.Visible    := false;
              Janela_Backup.Caption           := Caption;
              Janela_Backup.Show;

              Application.ProcessMessages;

              Banco.Connected               := false;
              Banco_Empresas.Connected      := false;
              Banco_Contabilidade.Connected := false;
              bRestore.Server               := Banco_Empresas.Server;
              bRestore.Connected            := true;

              If Trim(cArqCadastros.Text) <> '' then begin
                 Janela_Backup.lAcao.Caption  := 'Restaurando banco de dados...'+'Cybersoft_Cadastros';
                 Janela_Backup.lLocal.Caption := cArqCadastros.Text;
                 Application.ProcessMessages;
                 Restore.SQL.Clear;
                 Restore.SQL.Add('USE Master');
                 Restore.SQL.Add('RESTORE DATABASE Cybersoft_Cadastros');
                 Restore.SQL.Add('FROM DISK = ' + QuotedStr(mPastaBackup+cArqCadastros.LongName));

                 Restore.SQL.Add('WITH FILE = 1, REPLACE, STATS = 10');
                 Restore.Execute;
              End;

              If Trim(cArqMovimento.Text) <> '' then begin
                 Janela_Backup.lAcao.Caption  := 'Restaurando banco de dados...'+mBancoMovimento;
                 Janela_Backup.lLocal.Caption := cArqMovimento.Text;
                 Application.ProcessMessages;
                 Restore.SQL.Clear;
                 Restore.SQL.Add('USE Master');
                 Restore.SQL.Add('RESTORE DATABASE '+mBancoMovimento);
                 Restore.SQL.Add('FROM DISK = ' + QuotedStr(mPastaBackup+cArqMovimento.LongName));
                 Restore.SQL.Add('WITH FILE = 1, REPLACE, STATS = 10');
                 Restore.Execute;
              End;
              If Trim(cArqContabil.Text) <> '' then begin
                 Janela_Backup.lAcao.Caption  := 'Restaurando banco de dados...'+mBancoContabil;
                 Janela_Backup.lLocal.Caption := cArqContabil.Text;
                 Application.ProcessMessages;
                 Restore.SQL.Clear;
                 Restore.SQL.Add('USE Master');
                 Restore.SQL.Add('RESTORE DATABASE '+mBancoContabil);
                 Restore.SQL.Add('FROM DISK = ' + QuotedStr(mPastaBackup+cArqContabil.LongName));
                 Restore.SQL.Add('WITH FILE = 1, REPLACE, STATS = 10');
                 Restore.Execute;
              End;
              Janela_Backup.Close;

              Banco.Connected               := true;
              Banco_Empresas.Connected      := true;
              Banco_Contabilidade.Connected := true;
              bRestore.Connected            := false;

              ShowMessage('Backup restaurado com sucesso!'+#13+#13+'Pressione [OK] para continuar.');
         End;
      End;
end;

procedure TUtilitarios_Restore.cArqMovimentoChange(Sender: TObject);
begin
      bRestaurar.Enabled := (Trim(cArqCadastros.Text) <> '') or (Trim(cArqMovimento.Text) <> '') or (Trim(cArqContabil.Text) <> '');
end;

procedure TUtilitarios_Restore.cArqMovimentoAfterDialog(Sender: TObject;var Name: String; var Action: Boolean);
begin
      //Menu_Principal.//Skin.Active := false;
      //Menu_Principal.//Skin.Active := true;
end;

end.
