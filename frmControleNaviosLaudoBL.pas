unit frmControleNaviosLaudoBL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess;

type
  TControleNaviosLaudoBL = class(TForm)
    Grade: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bAdicionar: TButton;
    bTodos: TButton;
    bNenhum: TButton;
    tTmp: TMSQuery;
    procedure bTodosClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bNenhumClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ControleNaviosLaudoBL: TControleNaviosLaudoBL;

implementation

{$R *.dfm}

uses frmDados;

procedure TControleNaviosLaudoBL.bAdicionarClick(Sender: TObject);
begin
      with Grade.DataSource.DataSet do begin
           DisableControls;
           first;
           while not Eof do begin
                 if Grade.SelectedRows.CurrentRowSelected then begin
                    Edit;
                       fieldbyname('Laudo').value := Dados.ControleNaviosLaudo.fieldbyname('Laudo').asstring;
                    Post;
                 end;
                 next;
           end;
           first;
           EnableControls;
      end;
      close;
end;

procedure TControleNaviosLaudoBL.bNenhumClick(Sender: TObject);
begin
      with Grade.DataSource.DataSet do begin
           DisableControls;
           first;
           while not Eof do begin
                 Grade.SelectedRows.CurrentRowSelected := false;
                 next;
           end;
           first;
           EnableControls;
      end;
end;

procedure TControleNaviosLaudoBL.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TControleNaviosLaudoBL.bTodosClick(Sender: TObject);
begin
      with Grade.DataSource.DataSet do begin
           DisableControls;
           first;
           while not Eof do begin
                 Grade.SelectedRows.CurrentRowSelected := true;
                 next;
           end;
           first;
           EnableControls;
      end;
end;

procedure TControleNaviosLaudoBL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with Dados,ControleNaviosBL do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from  ControleNaviosBL');
          sql.add('where Navio = :pNavio');
          sql.add('order by BL');
          parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
          //sql.savetofile('c:\temp\Controle_Navios_BL.sql');
          open;
     end;

     ControleNaviosLaudoBL.release;
     ControleNaviosLaudoBL := nil;
end;

procedure TControleNaviosLaudoBL.FormCreate(Sender: TObject);
begin
      with Dados do begin
           with ControleNaviosBL do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from  ControleNaviosBL');
                sql.add('where Navio = :pNavio');
                sql.add('and isnull(Laudo, '''') = '''' ');
                sql.add('order by BL');
                parambyname('pNavio').Value := ControleNavios.fieldbyname('Ordem').asinteger;
                //sql.savetofile('c:\temp\Controle_Navios_BL.sql');
                open;
           end;
      end;
end;

end.
