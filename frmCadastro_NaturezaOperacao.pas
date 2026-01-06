unit frmCadastro_NaturezaOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess,
  Vcl.ComCtrls, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, DBGrids, RXCtrls, Buttons, ClipBrd, Funcoes, system.UITypes, Grids, Mask, MemDS;
type
  TCadastro_NaturezaOperacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    DBGrid1: TDBGrid;
    cObservacao: TDBMemo;
    StaticText3: TStaticText;
    DBEdit1: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    StaticText9: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    Natureza_Devolucao: TMSQuery;
    Natureza_DevolucaoCodigo: TStringField;
    Natureza_DevolucaoDescricao_NF: TStringField;
    dsNatureza_Devolucao: TDataSource;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    tPesquisa: TMSQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    tNatureza: TMSQuery;
    DBCheckBox1: TDBCheckBox;
    StaticText2: TStaticText;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    StaticText5: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
    mTabAberta: boolean;
  end;

var
  Cadastro_NaturezaOperacao: TCadastro_NaturezaOperacao;

implementation

Uses frmDados, frmMenu_Principal;
{$R *.dfm}

procedure TCadastro_NaturezaOperacao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_NaturezaOperacao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If Button = nbInsert then begin
         Dados.NaturezaAtivo.Value            := True;
         Dados.NaturezaServico.Value          := False;
         Dados.NaturezaDiferencial_ICMS.Value := False;
      End;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Natureza.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_NaturezaOperacao.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        Dados.Natureza.SQL.Clear;
        Dados.Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Codigo');
        Dados.Natureza.Open;
        Natureza_Devolucao.Open;
        Screen.Cursor := crDefault;
end;

procedure TCadastro_NaturezaOperacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Clipboard.AsText         := Dados.NaturezaCodigo.AsString;
      Menu_Principal.mMem_CFOP := Dados.NaturezaCodigo.AsString;
      If not mTabAberta then begin
         Dados.Natureza.Close;
      End;
      Natureza_Devolucao.Close;

      LimpaMemoria;
      Cadastro_NaturezaOperacao.Release;
      Cadastro_NaturezaOperacao := nil;
end;

procedure TCadastro_NaturezaOperacao.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Código / Descrição', mPesquisa);
     If Dados.Natureza.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
        If Dados.Natureza.Locate('Descricao_NF', mPesquisa, [loCaseInsensitive, loPartialKey]) = False then begin
           ShowMessage('Nenhuma Natureza encontrada com o "Código ou Descrição" informados.');
        End;
     End;
end;

procedure TCadastro_NaturezaOperacao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_NaturezaOperacao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If Button = nbPost then begin
              If (Natureza.State = dsInsert) and (Button = nbPost) then begin
                 tPesquisa.SQL.Clear;
                 tPesquisa.SQL.Add('SELECT * FROM Natureza WHERE (Codigo = :pCodigo)');
                 tPesquisa.ParamByName('pCodigo').AsString := NaturezaCodigo.AsString;
                 tPesquisa.Open;
                 If tPesquisa.RecordCount <> 0 then begin
                    ShowMessage('Código de natureza da operação '+tPesquisa.FieldByName('Codigo').AsString+' já cadastrado!');
                    cCodigo.SetFocus;
                    Abort;
                 End;
              End;
              If Trim(Dados.NaturezaCodigo.AsString) = '' then begin
                 ShowMessage('Código de natureza da operação é campo obrigatório não pode ficar em branco!');
                 cCodigo.SetFocus;
                 Abort;
              End;
           End;

           // Não deixa excluir se ja existe movimento para a natureza da operação.
           If Button = nbDelete then begin
              tNatureza.SQL.Clear;
              tNatureza.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasFiscais WHERE(Natureza_Codigo = :pNatureza))+(SELECT COUNT(*) FROM NotasTerceiros WHERE(Natureza_Codigo = :pNatureza)) AS Notas');
              tNatureza.ParamByName('pNatureza').AsString := NaturezaCodigo.AsString;
              tNatureza.Open;
              If tNatureza.FieldByName('Notas').AsInteger > 0 then begin
                 MessageDlg('Esta Natureza da Operação não pode ser excluida, pois ja foram emitidas notas fiscais utilizando-a.', mtInformation, [mbOK], 0);
                 Natureza.Cancel;
                 Abort;
              End;
           End;
      End;
      Navega.SetFocus;
end;

end.
