unit frmCadastro_Majoracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, Grids, DBGrids, Mask, MemDS, RxToolEdit, system.UITypes;

type
  TCadastro_Majoracao = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    Grade: TDBGrid;
    StaticText2: TStaticText;
    cEntrada: TDBEdit;
    cRegime: TDBRadioGroup;
    lSaida: TStaticText;
    cSaida: TDBEdit;
    lDI: TStaticText;
    cMajorada: TDBEdit;
    cDescricao: TDBComboBox;
    tRegistro: TMSQuery;
    cTipo: TDBRadioGroup;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    DBDateEdit7: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    StaticText3: TStaticText;
    cModalidade: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
  private
    procedure MajoracaoBeforeDelete(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  Cadastro_Majoracao: TCadastro_Majoracao;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Majoracao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Majoracao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_Majoracao.Release;
      Cadastro_Majoracao := nil;
end;

procedure TCadastro_Majoracao.FormShow(Sender: TObject);
begin
      With Dados do begin
           Majoracao.SQL.Clear;
           Majoracao.SQL.Add('SELECT * FROM Majoracao ORDER BY Tipo, Descricao DESC, Data_Inicio');
           Majoracao.Open;
      End;
end;

procedure TCadastro_Majoracao.MajoracaoBeforeDelete(DataSet: TDataSet);
var
  LConnection: TCustomMSConnection;
begin
  LConnection := Dados.Temp.Connection;
  try
    Dados.Temp.Connection := Dados.Banco_Empresas;
    Dados.Temp.SQL.Clear;
    Dados.Temp.SQL.Text := (
    'SELECT COUNT(NTI.ALQ) AS COUNT_ALQ ' +
    ',NTI.ALQ                           ' +
    'FROM (                             ' +
    '  SELECT Aliquota_Expr1 AS ALQ     ' +
    '  FROM NotasItens                  ' +
    '  WHERE Aliquota_Expr1 = :Entrada  ' +
    '  OR Aliquota_Expr1 = :Saida       ' +
    '  UNION                            ' +
    '  SELECT Aliquota_Expr1 AS ALQ     ' +
    '  FROM NotasTerceirosItens         ' +
    ' WHERE Aliquota_Expr1 = :Entrada   ' +
    '  OR Aliquota_Expr1 = :Saida       ' +
    ') AS NTI                           ' +
    'GROUP BY NTI.ALQ                   ')
    .Replace('Expr1', DataSet.FieldByName('Descricao').AsString);
    Dados.Temp.ParamByName('Entrada').AsCurrency := DataSet.FieldByName('Entrada').AsCurrency;
    Dados.Temp.ParamByName('Saida').AsCurrency := DataSet.FieldByName('Saida').AsCurrency;
    Dados.Temp.Open;
    if Dados.Temp.FieldByName('COUNT_ALQ').AsInteger > 0 then begin
       raise Exception.CreateFmt('Não é possível excluir o %s (%s, com alíquota %s) porque já foi uilizada em nota fiscal.',
            [DataSet.FieldByName('Descricao').AsString,
            DataSet.FieldByName('Modalidade_Descricao').AsString,
            FormatCurr(',0.00;-,0.00', Dados.Temp.FieldByName('ALQ').AsCurrency)]);
    end;
  finally
    Dados.Temp.Connection := LConnection;
  end;
end;

procedure TCadastro_Majoracao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      try
        With Dados do begin
             If (Button = nbEdit) or (Button = nbInsert) then begin
                If (Button = nbInsert) then begin
                   cRegime.ItemIndex := 0;
                   cTipo.ItemIndex   := 1;
                End;
                For i := 0 to 6 do begin
                    Navega.Controls[i].Enabled := False;
                End;
                Panel2.Enabled := True;
                cDescricao.SetFocus;
             End;
             If (Button = nbPost) or (Button = nbCancel) then Begin
                Dados.Majoracao.Refresh;
                Panel2.Enabled := False;
             End;
        End;
      finally
        Screen.Cursor := crDefault;
      end;
end;

procedure TCadastro_Majoracao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      ActiveControl := nil;
      With Dados do begin
           If Button = nbPost then begin
              If Trim(MajoracaoDescricao.Value) = '' then begin
                 MessageDlg('O campo "Descrição" é campo obrigatório!', mtError, [mbOK], 0);
                 cDescricao.SetFocus;
                 Abort;
              End;
              If MajoracaoEntrada.Value <= 0 then begin
                 MessageDlg('Alíquota de "ENTRADA" de '+MajoracaoDescricao.Value+' informada é inválida!', mtError, [mbOK], 0);
                 cEntrada.SetFocus;
                 Abort;
              End;
              If (MajoracaoSaida.Value <= 0) and (cTipo.ItemIndex < 2) then begin
                 MessageDlg('Alíquota de "SAÍDA" '+MajoracaoDescricao.Value+' informada é inválida!', mtError, [mbOK], 0);
                 cSaida.SetFocus;
                 Abort;
              End;
              If (MajoracaoTipo.Value = 'M') and (MajoracaoMajorada.Value <= 0) then begin
                 MessageDlg('Alíquota "MAJORADA" '+MajoracaoDescricao.Value+' informada é inválida!', mtError, [mbOK], 0);
                 cMajorada.SetFocus;
                 Abort;
              End;
           End;
           If Majoracao.State = dsInsert then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM Majoracao');
              tRegistro.Open;
              MajoracaoRegistro.Value := tRegistro.FieldByName('Registro').AsInteger;
           End;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
                 Abort;
              end;
           End;
      End;
end;

procedure TCadastro_Majoracao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      Dados.Majoracao.BeforeDelete := MajoracaoBeforeDelete;
end;

procedure TCadastro_Majoracao.cTipoClick(Sender: TObject);
begin
      cRegime.Enabled := cTipo.ItemIndex = 0;
      cSaida.Enabled  := cTipo.ItemIndex < 2;
      lSaida.Enabled  := cTipo.ItemIndex < 2;
      If cTipo.ItemIndex < 2 then
         lDI.Caption := 'Alíquota na DI'
      else
         lDI.Caption := 'Alíquota na NF';
end;

end.
