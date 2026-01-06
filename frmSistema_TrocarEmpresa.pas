unit frmSistema_TrocarEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes, DB,
  Grids, DBGrids;

type
  TSistema_TrocarEmpresa = class(TForm)
    RxDBGrid1: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bOK: TButton;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sistema_TrocarEmpresa: TSistema_TrocarEmpresa;

implementation

uses frmDados, frmMenu_Principal, frmDMContab;

{$R *.dfm}

procedure TSistema_TrocarEmpresa.FormShow(Sender: TObject);
begin
      with Dados do begin
           with Usuarios do begin
                sql.clear;
                sql.add('select * from Usuarios where Matricula = '+quotedstr(Menu_Principal.mUsuarioCodigo)+' order by nome');
                open;
           end;
           with Empresas do begin
                close;
                sql.clear;
                if Usuarios.FieldByName('Nome').Text <> 'ADMINISTRADOR' then begin
                   sql.add('select * from Empresas');
                   sql.add('where isnull(Desativada, 0) = 0');
                   sql.Add('and Codigo in(select distinct Empresa from UsuariosEmpresas where Matricula = :pMatricula)');
                   parambyname('pMatricula').AsString := UsuariosMatricula.AsString;
                end else begin
                   sql.Add('select * from Empresas where isnull(Desativada, 0) = 0');
                end;
                sql.add('order by Razao_Social, CNPJ');
                open;
                locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
          end;
      end;
end;

procedure TSistema_TrocarEmpresa.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TSistema_TrocarEmpresa.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Sistema_TrocarEmpresa.Release;
     Sistema_TrocarEmpresa := nil;
end;

procedure TSistema_TrocarEmpresa.bOKClick(Sender: TObject);
Var
   mDias: Integer;
begin
      With Dados do begin
           Menu_Principal.mEmpresa  := EmpresasCodigo.Value;
           Banco_Empresas.Connected := false;
           Banco_Empresas.Server    := Banco.Server;
           Banco_Empresas.Database  := EmpresasBanco_Dados.AsString;
           Banco_Empresas.Username  := Menu_Principal.mBancoUsuario;
           Banco_Empresas.Password  := Menu_Principal.mBancoSenha;
           Banco_Empresas.Connected := true;

           Banco_Contabilidade.Connected := false;
           Banco_Contabilidade.Server    := Banco.Server;
           Banco_Contabilidade.Database  := EmpresasBanco_Contabilidade.AsString;
           Banco_Contabilidade.Username  := Menu_Principal.mBancoUsuario;
           Banco_Contabilidade.Password  := Menu_Principal.mBancoSenha;
           Banco_Contabilidade.Connected := true;

           Menu_Principal.Amb_Producao     := EmpresasAmbiente.Value;
           Menu_Principal.lEmpresa.Caption := EmpresasRazao_Social.Value;

           Menu_Principal.mnNotaFiscal.Enabled := Dados.EmpresasPagamento.AsBoolean;
           Menu_Principal.bNF_Entrada.Enabled  := Dados.EmpresasPagamento.AsBoolean;
           Menu_Principal.bNF_Saida.Enabled    := Dados.EmpresasPagamento.AsBoolean;
           Menu_Principal.bNF_Outros.Enabled   := Dados.EmpresasPagamento.AsBoolean;

           If EmpresasMatriz_Filial.AsBoolean = false then
              Menu_Principal.lFilial.Caption := 'FILIAL '+EmpresasNumero_Filial.AsString
           else
              Menu_Principal.lFilial.Caption := 'MATRIZ';

           Menu_Principal.cFoto.Picture.Assign(nil);
           Application.ProcessMessages;

           If FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
              Menu_Principal.cFoto.Picture.LoadFromFile(Dados.Empresas.FieldByName('Logo').AsString);
           End;   
           dmContab.PlanoContasConta.EditMask := EmpresasMascara_PlanoContas.Value+';0; ';

           // Muda o banco das tabelas compartilhadas
           ClassificacaoFinanceira.Close;
           Bancos.Close;
           
           Configuracao.Close;
           Configuracao.SQL.Clear;
           Configuracao.SQL.Add('SELECT * FROM Configuracao');
           Configuracao.Open;

           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              ClassificacaoFinanceira.Connection := Banco
           else
              ClassificacaoFinanceira.Connection := Banco_Empresas;

           If ConfiguracaoCompartilhar_Bancos.AsBoolean = true then
              Bancos.Connection := Banco
           else
              Bancos.Connection := Banco_Empresas;

           // Verificando o vencimento do certificado digital se informada a data de vencimento.
           If Trim(RemoveCaracter('/', '',EmpresasVencimento_Certificado.AsString)) <> '' then begin
              mDias := StrtoInt(DifDias(Date, EmpresasVencimento_Certificado.AsDateTime));
              If (mDias < 30) and (mDias > 0) then begin
                 ShowMessage('Atenção!'+#13+#13+
                             'O certificado digital da '+EmpresasRazao_Social.AsString + ' esta vencendo em '+PoeZero(2, (mDias))+' dias.'+#13+#13+
                             'Com um certificado digital vencido não é possivel enviar nota fiscal eletrônica.'+#13+#13+
                             'Providencie um novo certificado digital.');
              End;
              If (mDias < 0) then begin
                 ShowMessage('Atenção!'+#13+#13+
                             'O certificado digital da '+EmpresasRazao_Social.AsString + ' esta vencido a '+PoeZero(2, (mDias*-1))+' dias.'+#13+#13+
                             'Com um certificado digital vencido não é possivel enviar nota fiscal eletrônica.'+#13+#13+
                             'Providencie um novo certificado digital.');
              End;
           End;
           Close;
      End;
end;

procedure TSistema_TrocarEmpresa.RxDBGrid1DblClick(Sender: TObject);
begin
     bOK.Click;
end;

end.
