unit frmImpressao_ContabeisSelecao_Razao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Grids, DBGrids, DB, RXDBCtrl, Vcl.ExtCtrls, DBCtrls, Funcoes;

type
  TImpressao_ContabeisSelecao_Razao = class(TForm)
    cPesquisa: TEdit;
    StaticText2: TStaticText;
    Grade: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    bSair: TButton;
    StaticText1: TStaticText;
    bGrupo: TButton;
    cGrupo: TComboBox;
    bDesmarcar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeCellClick(Column: TColumn);
    procedure bDesmarcarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bGrupoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ContabeisSelecao_Razao: TImpressao_ContabeisSelecao_Razao;

implementation

uses frmDMContab, frmDados;

{$R *.dfm}

procedure TImpressao_ContabeisSelecao_Razao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ContabeisSelecao_Razao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      With dmContab do begin
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add( 'SELECT * FROM PlanoContas WHERE (Imprimir_Razao = 1)' );
           PlanoContas.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add( 'SELECT * FROM PlanoContas WHERE (Sintetica = 0)' );
           PlanoContas.SQL.Add( 'ORDER BY Conta,Descricao' );
           PlanoContas.Open;
      end;
      
      LimpaMemoria;
      Impressao_ContabeisSelecao_Razao.Release;
      Impressao_ContabeisSelecao_Razao := nil;
end;

procedure TImpressao_ContabeisSelecao_Razao.GradeCellClick(Column: TColumn);
begin
      With dmContab do begin
           PlanoContas.Edit;
                       PlanoContasImprimir_Razao.Value := not PlanoContasImprimir_Razao.Value;
           PlanoContas.Post;             
      End;
end;

procedure TImpressao_ContabeisSelecao_Razao.bDesmarcarClick(Sender: TObject);
begin
      With dmContab do begin
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add( 'UPDATE PlanoContas SET Imprimir_Razao = 0' );
          PlanoContas.Execute;
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add( 'SELECT * FROM PlanoContas WHERE (Sintetica = 0)' );
          PlanoContas.SQL.Add( 'ORDER BY Conta,Descricao' );
          PlanoContas.Open;
      End;
end;

procedure TImpressao_ContabeisSelecao_Razao.FormShow(Sender: TObject);
begin
     With dmContab do begin
          PlanoContas.EnableControls;
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add( 'SELECT * FROM PlanoContas WHERE (Sintetica = 1)' );
          PlanoContas.SQL.Add( 'ORDER BY Conta,Descricao' );
          PlanoContas.Open;
          While not PlanoContas.Eof do begin
               cGrupo.Items.Add(PlanoContasConta.Value);
               PlanoContas.Next;
          End;
          PlanoContas.SQL.Clear;
          PlanoContas.SQL.Add( 'SELECT * FROM PlanoContas WHERE (Sintetica = 0)' );
          PlanoContas.SQL.Add( 'ORDER BY Conta,Descricao' );
          PlanoContas.Open;
     End;
end;

procedure TImpressao_ContabeisSelecao_Razao.cPesquisaChange(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           if Trim(cPesquisa.Text) <> '' then
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') ORDER BY Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Codigo');
           PlanoContas.Open;
      end;
end;

procedure TImpressao_ContabeisSelecao_Razao.bGrupoClick(Sender: TObject);
begin
      With dmContab do begin
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('UPDATE PlanoContas SET Imprimir_Razao = 1 WHERE Conta LIKE '+QuotedStr(Trim(cGrupo.Text)+'%') );
           PlanoContas.Execute;
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add( 'SELECT * FROM PlanoContas WHERE (Sintetica = 0)' );
           PlanoContas.SQL.Add( 'ORDER BY Conta,Descricao' );
           PlanoContas.Open;
           PlanoContas.Locate('Conta', cGrupo.Text, [loPartialKey]);
      End;
end;

end.
