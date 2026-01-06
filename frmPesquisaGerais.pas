unit frmPesquisaGerais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGrids, DB, Vcl.StdCtrls, DBAccess, MSAccess, Funcoes, DBCtrls, ClipBrd,
  Grids, MemDS, Vcl.ExtCtrls;

type
  TPesquisaGerais = class(TForm)
    tPesquisa: TMSQuery;
    cPesq: TEdit;
    Label1: TLabel;
    dstPesquisa: TDataSource;
    Grade: TDBGrid;
    Panel1: TPanel;
    bOK: TButton;
    bCancelar: TButton;
    procedure cPesqChange(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCampo,
    mCampo2,
    mBanco,
    mFiltro,
    mScript,
    mKey,
    mTab:string;
    mTabela:TMSQuery;
    mLookUp:TDBLookUpComboBox;
  end;

var
  PesquisaGerais: TPesquisaGerais;

implementation

uses frmDados;

{$R *.dfm}

procedure TPesquisaGerais.cPesqChange(Sender: TObject);
begin
     with tPesquisa do begin
          DisableControls;
          sql.Clear;
          if mScript = '' then begin
             sql.add('select cast('+mCampo +' as varchar(10)) as Codigo,');
             sql.add('       cast('+mCampo2+' as varchar(90)) as Descricao FROM '+mTab);
             sql.add('where '+mCampo2+' like '+QuotedStr('%'+cPesq.Text+'%') );
          end else begin
             sql.Add(mScript);
             parambyname('pPesq').AsString := '%'+cPesq.Text+'%';
          end;
        
          if mFiltro <> '' then begin
             sql.add(mFiltro);
          end;
          open;
          EnableControls;
          bOK.Enabled := RecordCount > 0;
     end;
end;

procedure TPesquisaGerais.bCancelarClick(Sender: TObject);
begin
     ClipBoard.Clear;
     close;
end;

procedure TPesquisaGerais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     PesquisaGerais.Release;
end;

procedure TPesquisaGerais.bOKClick(Sender: TObject);
begin
     Clipboard.Clear;
     if mTabela <> nil then begin
        if (mCampo <> 'Nome') and (mCampo <> 'Descricao') then
           mTabela.FieldByName(mCampo).asstring := tPesquisa.FieldByName('Codigo').asstring
        else
           mTabela.FieldByName(mCampo).asstring := tPesquisa.FieldByName(mCampo2).asstring
     end else begin
        if (mKey <> 'Nome') and (mKey <> 'Descricao') then
           ClipBoard.AsText := tPesquisa.FieldByName('Codigo').asstring
        else
           if mKey = 'Nome' then
              ClipBoard.AsText := tPesquisa.FieldByName('Nome').asstring;
           if mKey = 'Descricao' then
              ClipBoard.AsText := tPesquisa.FieldByName('Descricao').asstring;
     end;
     Close;
end;

procedure TPesquisaGerais.GradeDblClick(Sender: TObject);
begin
     if mTabela <> nil then begin
        if (mCampo <> 'Nome') and (mCampo <> 'Descricao') then
           mTabela.FieldByName(mCampo).asstring := tPesquisa.FieldByName('Codigo').asstring
        else
           mTabela.FieldByName(mCampo).asstring := tPesquisa.FieldByName(mCampo2).asstring
     end else begin
        if (mKey <> 'Nome') and (mKey <> 'Descricao') then
           ClipBoard.AsText := tPesquisa.FieldByName('Codigo').asstring
        else
           if mKey = 'Nome' then
              ClipBoard.AsText := tPesquisa.FieldByName('Nome').asstring;
           if mKey = 'Descricao' then
              ClipBoard.AsText := tPesquisa.FieldByName('Descricao').asstring;
     end;
     Close;
end;

procedure TPesquisaGerais.FormKeyPress(Sender: TObject;var Key: Char);
begin
     if Key = #13 then bOk.Click;
end;

procedure TPesquisaGerais.FormShow(Sender: TObject);
begin
     ClipBoard.clear;
     if mBanco = 'Dados'    then tPesquisa.Connection := Dados.Banco;
     if mBanco = 'Empresa'  then tPesquisa.Connection := Dados.Banco_Empresas;
     if mBanco = 'Contabil' then tPesquisa.Connection := Dados.Banco_Contabilidade;
end;

end.
