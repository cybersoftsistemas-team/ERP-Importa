unit frmCadastro_ProdutosSeriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, Mask, DB,
  DBAccess, MSAccess, RxLookup, RxDBComb, Funcoes, Grids, system.UITypes, DBGrids, MemDS, RxToolEdit;

type
  TCadastro_ProdutosSeriais = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    RxDBGrid1: TRxDBGrid;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    cCodigoFabrica: TDBEdit;
    StaticText8: TStaticText;
    StaticText2: TStaticText;
    cNumero: TDBEdit;
    StaticText3: TStaticText;
    tSeriais: TMSQuery;
    cCor: TRxDBLookupCombo;
    StaticText4: TStaticText;
    DBComboBox1: TDBComboBox;
    cNumero2: TDBEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBComboBox2: TDBComboBox;
    cNumero3: TDBEdit;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    DBComboBox3: TDBComboBox;
    StaticText10: TStaticText;
    cProcesso: TDBLookupComboBox;
    StaticText13: TStaticText;
    DBEdit3: TDBEdit;
    StaticText14: TStaticText;
    DBEdit4: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    StaticText15: TStaticText;
    tRegistro: TMSQuery;
    cNotaEntra: TDBEdit;
    StaticText11: TStaticText;
    Button1: TButton;
    StaticText12: TStaticText;
    cEmissor: TComboBox;
    StaticText16: TStaticText;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    StaticText17: TStaticText;
    cVencimento: TDBDateEdit;
    DBEdit1: TDBEdit;
    StaticText18: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText19: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure StaticText2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cNumeroChange(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosSeriais: TCadastro_ProdutosSeriais;

implementation

uses frmDados, frmCadastro_Cores, frmMenu_Principal,
  frmCadastro_ProdutosSeriaisNotas;

{$R *.dfm}

procedure TCadastro_ProdutosSeriais.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_ProdutosSeriais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_ProdutosSeriais.Release;
      Cadastro_ProdutosSeriais := nil;
end;

procedure TCadastro_ProdutosSeriais.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) ORDER BY Numero');
           ProdutosSeriais.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
           ProdutosSeriais.Open;

           Cores.SQL.Clear;
           Cores.SQL.Add('SELECT * FROM Cores ORDER BY Descricao');
           Cores.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo_Fechamento IS NULL) AND (Desativado <> 1) ORDER BY Tipo, Processo');
           ProcessosDOC.Open;
      End;
end;

procedure TCadastro_ProdutosSeriais.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
     with Dados do begin
          Panel2.Enabled := (Button = nbInsert) or (Button = nbEdit);
          if (Button = nbInsert) or (Button = nbEdit) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             cCor.SetFocus;
          end;

          if ProdutosSeriais.State = dsInsert then begin
             tRegistro.SQL.Clear;
             tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM ProdutosSeriais');
             tRegistro.Open;

             ProdutosSeriaisRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger + 1;
             ProdutosSeriaisProduto_Codigo.Value    := ProdutosCodigo.Value;
             ProdutosSeriaisCodigo_Fabricante.Value := ProdutosCodigo_Fabricante.Value;
             ProdutosSeriaisEntrada.Value           := false;
             ProdutosSeriaisSaida.Value             := false;
             ProdutosSeriaisNumero2.Value           := '';
             ProdutosSeriaisNumero3.Value           := '';
             ProdutosSeriaisDisponivel.Value        := false;
          end;
     end;
end;

procedure TCadastro_ProdutosSeriais.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (ProdutosSeriais.State = dsInsert) then begin
             {
              tSeriais.SQL.Clear;
              tSeriais.SQl.Add('SELECT *');
              tSeriais.SQl.Add('FROM  ProdutosSeriaisNotas');
              tSeriais.SQL.Add('WHERE (Produto_Codigo = :pCodigo AND Saida_Entrada = 0) AND ((Numero = :pNumero) OR (Numero = :pNumero2) OR (Numero = :pNumero3)) AND Nota = :pNota');
              tSeriais.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              tSeriais.ParamByName('pNumero').AsString  := Trim(cNumero.Text);
              tSeriais.ParamByName('pNumero2').AsString := Trim(cNumero2.Text);
              tSeriais.ParamByName('pNumero3').AsString := Trim(cNumero3.Text);
              tSeriais.ParamByName('pNota').AsString    := Trim(cNotaEntra.Text);
              tSeriais.Open;
              If tSeriais.RecordCount > 0 then begin
                 MessageDlg('Número já cadastrado para este produtos!', mtError, [mbOK], 0);
                 Abort;
              End;
              ProdutosSeriaisNotas.SQL.Clear;
              ProdutosSeriaisNotas.SQL.Add('SELECT *');
              ProdutosSeriaisNotas.SQl.Add('      ,Tipo         = CASE WHEN Saida_Entrada = 0     THEN ''ENTRADA''   ELSE ''SAÍDA''   END');
              ProdutosSeriaisNotas.SQl.Add('      ,Emissor_Nome = CASE WHEN Emissor       = ''T'' THEN ''TERCEIROS'' ELSE ''PRÓPRIO'' END');
              ProdutosSeriaisNotas.SQL.Add('FROM   ProdutosSeriaisNotas WHERE Produto_Codigo = '+ProdutosCodigo.AsString);
              }
              with tSeriais do begin
                   sql.clear;
                   sql.add('select *');
                   sql.add('from  ProdutosSeriaisNotas');
                   sql.add('where (Produto_Codigo = :pCodigo AND Saida_Entrada = 0) AND ((Numero = :pNumero) OR (Numero = :pNumero2) OR (Numero = :pNumero3)) AND Nota = :pNota');
                   parambyname('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                   parambyname('pNumero').AsString  := Trim(cNumero.Text);
                   parambyname('pNumero2').AsString := Trim(cNumero2.Text);
                   parambyname('pNumero3').AsString := Trim(cNumero3.Text);
                   parambyname('pNota').AsString    := Trim(cNotaEntra.Text);
                   open;
                   if RecordCount > 0 then begin
                      MessageDlg('Número já cadastrado para este produtos!', mtError, [mbOK], 0);
                      Abort;
                   End;
              end;
              with ProdutosSeriaisNotas do begin 
                   sql.clear;
                   sql.add('select *');
                   sql.add('      ,Tipo         = case when Saida_Entrada = 0     then ''ENTRADA''   else ''SAÍDA''   end');
                   sql.add('      ,Emissor_Nome = case when Emissor       = ''T'' then ''TERCEIROS'' else ''PRÓPRIO'' end');
                   sql.add('from ProdutosSeriaisNotas where Produto_Codigo = '+ProdutosCodigo.AsString);
                   open;
              end;
              with tRegistro do begin 
                   sql.clear;
                   sql.Add('select isnull(max(Registro), 0)+1 AS Registro from ProdutosSeriaisNotas');
                   open;
              end;

              ProdutosSeriaisNotas.Append;
                                   ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                                   ProdutosSeriaisNotasProduto_Codigo.Value := ProdutosCodigo.AsInteger;
                                   ProdutosSeriaisNotasNumero.Value         := cNumero.Text;
                                   ProdutosSeriaisNotasNota.Value           := ProdutosSeriaisNota_Entrada.Value;
                                   ProdutosSeriaisNotasData.Value           := ProdutosSeriaisData_Entrada.Value;
                                   ProdutosSeriaisNotasSaida_Entrada.Value  := 0;
                                   ProdutosSeriaisNotasEmissor.Value        := Copy(cEmissor.Text, 1, 1);
              ProdutosSeriaisNotas.Post;
           End;
      End;
end;

procedure TCadastro_ProdutosSeriais.StaticText2Click(Sender: TObject);
begin
      Cadastro_Cores := TCadastro_Cores.Create(Self);
      Cadastro_Cores.Caption := Caption;
      Cadastro_Cores.ShowModal;
      Dados.ProdutosSeriais.Open;
      Dados.ProdutosSeriaisCor.Value := Menu_Principal.mMem_Cor;
end;

procedure TCadastro_ProdutosSeriais.Button1Click(Sender: TObject);
begin
      Cadastro_ProdutosSeriaisNotas := TCadastro_ProdutosSeriaisNotas.Create(Self);
      Cadastro_ProdutosSeriaisNotas.Caption := Caption;
      Cadastro_ProdutosSeriaisNotas.ShowModal;
end;

procedure TCadastro_ProdutosSeriais.cNumeroChange(Sender: TObject);
begin
      with Dados do begin
           ProdutosSeriaisNotas.SQL.Clear;
           ProdutosSeriaisNotas.SQL.Add('SELECT *');
           ProdutosSeriaisNotas.SQL.Add('      ,Tipo         = CASE WHEN Saida_Entrada = 0     THEN ''ENTRADA''   ELSE ''SAÍDA'' END');
           ProdutosSeriaisNotas.SQL.Add('      ,Emissor_Nome = CASE WHEN Emissor       = ''T'' THEN ''TERCEIROS'' ELSE ''PRÓPRIO'' END');
           ProdutosSeriaisNotas.SQL.Add('FROM ProdutosSeriaisNotas WHERE Produto_Codigo = :pCodigo AND Numero = :pNumero');
           ProdutosSeriaisNotas.SQL.Add('ORDER BY Numero');
           ProdutosSeriaisNotas.ParamByName('pCodigo').AsInteger := ProdutosSeriais.FieldByName('Produto_Codigo').AsInteger;
           ProdutosSeriaisNotas.ParamByName('pNumero').AsString  := ProdutosSeriais.FieldByName('Numero').AsString;
           ProdutosSeriaisNotas.Open;
      end;
end;

procedure TCadastro_ProdutosSeriais.bPesquisaClick(Sender: TObject);
var
   mPesquisa:String;
begin
      Screen.Cursor := crSQLWait;
      mPesquisa := InputBox('Pesquisar Serial', 'Serial:', mPesquisa);
      if Dados.ProdutosSeriais.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
         tSeriais.SQL.Clear;
         tSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE Produto_Codigo = :pCod AND (Numero LIKE'+QuotedStr('%'+mPesquisa+'%')+') ORDER BY Numero');
         tSeriais.ParamByName('pCod').AsInteger := Dados.ProdutosSeriais.FieldByName('Produto_Codigo').AsInteger;
         tSeriais.Open;
         Dados.ProdutosSeriais.Locate('Numero', tSeriais.FieldByName('Numero').AsString, [loCaseInsensitive])
      end;
      Screen.Cursor := crDefault;
end;

end.
