unit frmNotaServico_Cancelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids,
  DBGrids, RXDBCtrl, system.UITypes, DB;

type
  TNotaServico_Cancelar = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bCancelar: TButton;
    Navega: TDBNavigator;
    bPesquisar: TButton;
    Grade: TRxDBGrid;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  NotaServico_Cancelar: TNotaServico_Cancelar;

implementation

uses frmDMFiscal, frmDados, frmDMContab;

{$R *.dfm}

procedure TNotaServico_Cancelar.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmFiscal, Dados do Begin
          If (Column.FieldName = 'Cancelada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (NotasServico.FieldByName('Cancelada').Value = True) then ImageList1.GetBitmap(6, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TNotaServico_Cancelar.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaServico_Cancelar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     NotaServico_Cancelar.Release;
     NotaServico_Cancelar := nil;
end;

procedure TNotaServico_Cancelar.FormShow(Sender: TObject);
begin
        With dmFiscal do begin
             NotasServico.SQL.Clear;
             NotasServico.SQL.Add('SELECT * FROM NotasServico ORDER BY Data_Emissao DESC, Numero DESC');
             NotasServico.Open;
        End;
end;

procedure TNotaServico_Cancelar.bCancelarClick(Sender: TObject);
begin
      If MessageDlg('Atenção!'+#13+#13+'Isso ira cancelar a nota fiscal de serviços e todos os lançamentos gerados (Financeiro/Contabil).'+#13+#13+'Deseja realmente cancelar esta nota fiscal?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         With dmFiscal, Dados, dmContab do begin
              // Marca a nota como cancelada.
              NotasServico.Edit;
                           NotasServicoCancelada.Value := True;
              NotasServico.Post;

              // Deleta os lançamentos do financeiro.
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Data_Documento = :pData) AND (Fiscal = :pNota) AND (Tipo_Nota = :pTipo)');
              PagarReceber.ParamByName('pData').AsDate    := NotasServicoData_Emissao.Value;
              PagarReceber.ParamByName('pNota').AsInteger := NotasServicoNumero.AsInteger;
              PagarReceber.ParamByName('pTipo').AsString  := 'SP';         // SP = Serviço Prestado.
              PagarReceber.Execute;

              // Deleta os lançamentos da contabilidade.
              {
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE (Data = :pData) AND (Documento = :pNota) AND (Tipo_Documento = :pTipo)');
              Lancamentos.ParamByName('pData').AsDate    := NotasServicoData_Emissao.Value;
              Lancamentos.ParamByName('pNota').AsInteger := NotasServicoNumero.AsInteger;
              Lancamentos.ParamByName('pTipo').AsString  := 'SP';         // SP = Serviço Prestado.
              Lancamentos.Execute;
              }
              PagarReceber.SQL.Clear;
              //Lancamentos.SQL.Clear;
         End;
      End;

end;

procedure TNotaServico_Cancelar.bPesquisarClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisar','Nº da Nota:', mPesquisa);
      If dmFiscal.NotasServico.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
         ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
      End;
end;

procedure TNotaServico_Cancelar.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;





end.
