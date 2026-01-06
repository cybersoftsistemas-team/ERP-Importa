unit frmFinanceiro_Agendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, RXDBCtrl,
  RXCtrls, Funcoes, DB, DBAccess, MSAccess, Grids, DBGrids, Mask, MemDS;

type
  TFinanceiro_Agendamento = class(TForm)
    Panel1: TPanel;
    cDescricao: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel2: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    StaticText1: TStaticText;
    Grade: TRxDBGrid;
    StaticText2: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    StaticText3: TStaticText;
    DBRadioGroup2: TDBRadioGroup;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    tTemp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_Agendamento: TFinanceiro_Agendamento;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_Agendamento.bSairClick(Sender: TObject);
begin
      close;
end;

procedure TFinanceiro_Agendamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Financeiro_Agendamento.Release;
      Financeiro_Agendamento := nil;
end;

procedure TFinanceiro_Agendamento.FormShow(Sender: TObject);
begin
      with Dados do begin
           Agenda.SQL.Clear;
           Agenda.SQL.Add('SELECT Registro');
           Agenda.SQL.Add('      ,Descricao');
           Agenda.SQL.Add('      ,Beneficiario');
           Agenda.SQL.Add('      ,Tipo');
           Agenda.SQL.Add('      ,Vencimento_Dia');
           Agenda.SQL.Add('      ,Vencimento_Frequencia');
           Agenda.SQL.Add('      ,Percentual');
           Agenda.SQL.Add('      ,Valor_Fixo');
           Agenda.SQL.Add('      ,Multa_Atraso');
           Agenda.SQL.Add('      ,Juro_Atraso');
           Agenda.SQL.Add('      ,Beneficiario_Nome = (SELECT Nome FROM Fornecedores WHERE Codigo = Beneficiario)');
           Agenda.SQL.Add('FROM   Agenda');
           Agenda.SQL.Add('ORDER BY Descricao');
           Agenda.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;
      end;
end;

procedure TFinanceiro_Agendamento.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_Agendamento.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel1.Enabled := True;
         cDescricao.SetFocus;
      End;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Agenda.Refresh;
         Panel1.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TFinanceiro_Agendamento.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if Button = nbPost then begin
              if AgendaRegistro.AsInteger <= 0 then begin
                 tTemp.SQL.Clear;
                 tTemp.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Reg FROM Agenda');
                 tTemp.Open;

                 AgendaRegistro.Value := tTemp.FieldByName('Reg').AsInteger;
              end;   
           end;
      end;
end;

end.
