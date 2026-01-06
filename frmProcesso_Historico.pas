unit frmProcesso_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls, DBGrids,
  RXDBCtrl, RxLookup, DB, DBAccess, MSAccess, Grids, Mask, MemDS, RxToolEdit;

type
  TProcesso_Historico = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cHora: TDBEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    cNumero: TDBEdit;
    StaticText5: TStaticText;
    cData: TDBDateEdit;
    StaticText6: TStaticText;
    cProcesso: TRxDBLookupCombo;
    cDescricao: TDBMemo;
    tNumero: TMSQuery;
    DBGrid1: TDBGrid;
    StaticText3: TStaticText;
    cPesquisar: TEdit;
    tPesquisa: TMSQuery;
    StaticText7: TStaticText;
    cFiltro: TRxDBLookupCombo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cPesquisarChange(Sender: TObject);
    procedure cFiltroChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_Historico: TProcesso_Historico;

implementation

uses frmDados;

{$R *.dfm}

procedure TProcesso_Historico.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_Historico.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Processo_Historico.Release;
      Processo_Historico := nil;
end;

procedure TProcesso_Historico.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico ORDER BY Data, Hora, Processo');
           ProcessosHistorico.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;
      End;
end;

procedure TProcesso_Historico.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Panel2.Enabled := False;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;

         If Button = nbInsert then begin
            Dados.ProcessosHistoricoData.Value := Date;
            Dados.ProcessosHistoricoHora.Value := TimetoStr(Time);
         End;

         Panel2.Enabled := True;
         cProcesso.SetFocus;
      End;
end;

procedure TProcesso_Historico.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (ProcessosHistorico.State = dsInsert) then begin
              tNumero.Open;
              ProcessosHistoricoNumero.Value := tNumero.FieldByName('Numero').AsInteger + 1;
              tNumero.Close;
           End;
      End;
end;

procedure TProcesso_Historico.cPesquisarChange(Sender: TObject);
begin
     With Dados do begin
          tPesquisa.SQL.Clear;
          tPesquisa.SQL.Add('SELECT Numero FROM ProcessosHistorico WHERE Numero LIKE '+QuotedStr('%'+cPesquisar.Text+'%'));
          tPesquisa.Open;

          If tPesquisa.RecordCount > 0 then begin
             ProcessosHistorico.Locate('Numero', tPesquisa.FieldByName('Numero').AsString, [loCaseInsensitive]);
          end else begin
             tPesquisa.SQL.Clear;
             tPesquisa.SQL.Add('SELECT Processo FROM ProcessosHistorico WHERE Processo LIKE '+QuotedStr('%'+cPesquisar.Text+'%'));
             tPesquisa.Open;

             If tPesquisa.RecordCount > 0 then begin
                ProcessosHistorico.Locate('Processo', tPesquisa.FieldByName('Processo').AsString, [loCaseInsensitive]);
             End;
          End;
     End;
end;

procedure TProcesso_Historico.cFiltroChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosHistorico.SQL.Clear;
           If cFiltro.DisplayValue <> '' then begin
              ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE Processo = :pProcesso ORDER BY Data, Hora, Processo');
              ProcessosHistorico.ParamByName('pProcesso').AsString := cFiltro.DisplayValue;
           end else begin
              ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico ORDER BY Data, Hora, Processo');
           End;
           ProcessosHistorico.Open;
      End;     
end;

procedure TProcesso_Historico.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
