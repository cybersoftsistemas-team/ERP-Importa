unit frmNota_FiscalServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls,
  ATXPtask, RXDBCtrl, Mask, Buttons, DB;

type
  TNotaFiscal_Servico = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    cNatureza: TDBLookupComboBox;
    cFornecedor: TDBLookupComboBox;
    cNota: TDBEdit;
    cCodigoNatureza: TDBEdit;
    cDataEmissao: TDBDateEdit;
    cDataEntrada: TDBDateEdit;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    lNome: TStaticText;
    StaticText11: TStaticText;
    StaticText2: TStaticText;
    StaticText9: TStaticText;
    cProcesso: TDBComboBox;
    StaticText13: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    StaticText24: TStaticText;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    TabEnter1: TTabEnter;
    StaticText3: TStaticText;
    cValor: TDBEdit;
    StaticText4: TStaticText;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    cImposto01: TDBLookupComboBox;
    cValor_Adicional01: TDBEdit;
    cImposto02: TDBLookupComboBox;
    cValor_Adicional02: TDBEdit;
    cImposto03: TDBLookupComboBox;
    cValor_Adicional03: TDBEdit;
    cImposto04: TDBLookupComboBox;
    cValor_Adicional04: TDBEdit;
    cImposto05: TDBLookupComboBox;
    cValor_Adicional05: TDBEdit;
    cImposto06: TDBLookupComboBox;
    cValor_Adicional06: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText8: TStaticText;
    XPPanel6: TXPPanel;
    cTotalLiquido: TDBText;
    Label5: TLabel;
    XPPanel2: TXPPanel;
    Label1: TLabel;
    cTotalImpostos: TLabel;
    StaticText10: TStaticText;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cImposto01Click(Sender: TObject);
    procedure cImposto02Click(Sender: TObject);
    procedure cImposto03Click(Sender: TObject);
    procedure cImposto04Click(Sender: TObject);
    procedure cImposto05Click(Sender: TObject);
    procedure cImposto06Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SomaImpostos;
  private
    { Private declarations }
  public
    { Public declarations }
     mTotalImpostos : Currency;
  end;

var
  NotaFiscal_Servico: TNotaFiscal_Servico;

implementation

uses frmDMFiscal, frmDados ;

{$R *.dfm}

procedure TNotaFiscal_Servico.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmFiscal, Dados do Begin
             NotasTerceiros.Close;
             NotasTerceiros.SQL.Clear;
             NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE Servico IS NOT NULL');
             NotasTerceiros.Open;
             Servicos.SQL.Clear;
             Servicos.SQL.Add('SELECT * FROM Servicos ORDER BY Descricao,Codigo');
             Servicos.Open;
             Impostos.Open;
             Fornecedores.Open;
             Natureza.SQL.Clear;
             Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) AND (Servico = 1) ORDER BY Descricao_NF');
             Natureza.Open;
        End;
        SomaImpostos;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Servico.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_Servico.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         dmFiscal.NotasTerceirosTipo.Value := 'NF';
         Panel2.Enabled := True;
         cNota.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Servico.cImposto01Click(Sender: TObject);
begin
       dmFiscal.NotasTerceirosAliquota_Adicional01.Value := Dados.ImpostosValor.Value;
       dmFiscal.NotasTerceirosValor_Adicional01.Value    := dmFiscal.NotasTerceirosValor_TotalNota.Value * ((dmFiscal.NotasTerceirosAliquota_Adicional01.Value)/100);
       SomaImpostos;
end;

procedure TNotaFiscal_Servico.cImposto02Click(Sender: TObject);
begin
       dmFiscal.NotasTerceirosAliquota_Adicional02.Value := Dados.ImpostosValor.Value;
       dmFiscal.NotasTerceirosValor_Adicional02.Value    := dmFiscal.NotasTerceirosValor_TotalNota.Value * ((dmFiscal.NotasTerceirosAliquota_Adicional02.Value)/100);
       SomaImpostos;
end;

procedure TNotaFiscal_Servico.cImposto03Click(Sender: TObject);
begin
       dmFiscal.NotasTerceirosAliquota_Adicional03.Value := Dados.ImpostosValor.Value;
       dmFiscal.NotasTerceirosValor_Adicional03.Value    := dmFiscal.NotasTerceirosValor_TotalNota.Value * ((dmFiscal.NotasTerceirosAliquota_Adicional03.Value)/100);
       SomaImpostos;
end;

procedure TNotaFiscal_Servico.cImposto04Click(Sender: TObject);
begin
       dmFiscal.NotasTerceirosAliquota_Adicional04.Value := Dados.ImpostosValor.Value;
       dmFiscal.NotasTerceirosValor_Adicional04.Value    := dmFiscal.NotasTerceirosValor_TotalNota.Value * ((dmFiscal.NotasTerceirosAliquota_Adicional04.Value)/100);
       SomaImpostos;
end;

procedure TNotaFiscal_Servico.cImposto05Click(Sender: TObject);
begin
       dmFiscal.NotasTerceirosAliquota_Adicional05.Value := Dados.ImpostosValor.Value;
       dmFiscal.NotasTerceirosValor_Adicional05.Value    := dmFiscal.NotasTerceirosValor_TotalNota.Value * ((dmFiscal.NotasTerceirosAliquota_Adicional05.Value)/100);
       SomaImpostos;
end;

procedure TNotaFiscal_Servico.cImposto06Click(Sender: TObject);
begin
       dmFiscal.NotasTerceirosAliquota_Adicional06.Value := Dados.ImpostosValor.Value;
       dmFiscal.NotasTerceirosValor_Adicional06.Value    := dmFiscal.NotasTerceirosValor_TotalNota.Value * ((dmFiscal.NotasTerceirosAliquota_Adicional06.Value)/100);
       SomaImpostos;
end;

procedure TNotaFiscal_Servico.SpeedButton4Click(Sender: TObject);
begin
        dmFiscal.NotasTerceirosCodigo_Adicional01.Clear;
        dmFiscal.NotasTerceirosAliquota_Adicional01.Clear;
        dmFiscal.NotasTerceirosValor_Adicional01.Clear;
        SomaImpostos;
end;

procedure TNotaFiscal_Servico.SpeedButton5Click(Sender: TObject);
begin
        dmFiscal.NotasTerceirosCodigo_Adicional02.Clear;
        dmFiscal.NotasTerceirosAliquota_Adicional02.Clear;
        dmFiscal.NotasTerceirosValor_Adicional02.Clear;
        SomaImpostos;
end;

procedure TNotaFiscal_Servico.SpeedButton6Click(Sender: TObject);
begin
        dmFiscal.NotasTerceirosCodigo_Adicional03.Clear;
        dmFiscal.NotasTerceirosAliquota_Adicional03.Clear;
        dmFiscal.NotasTerceirosValor_Adicional03.Clear;
        SomaImpostos;
end;

procedure TNotaFiscal_Servico.SpeedButton9Click(Sender: TObject);
begin
        dmFiscal.NotasTerceirosCodigo_Adicional04.Clear;
        dmFiscal.NotasTerceirosValor_Adicional04.Clear;
        dmFiscal.NotasTerceirosAliquota_Adicional04.Clear;
        SomaImpostos;
end;

procedure TNotaFiscal_Servico.SpeedButton8Click(Sender: TObject);
begin
        dmFiscal.NotasTerceirosCodigo_Adicional05.Clear;
        dmFiscal.NotasTerceirosValor_Adicional05.Clear;
        dmFiscal.NotasTerceirosAliquota_Adicional05.Clear;
        SomaImpostos;
end;

procedure TNotaFiscal_Servico.SpeedButton7Click(Sender: TObject);
begin
        dmFiscal.NotasTerceirosCodigo_Adicional06.Clear;
        dmFiscal.NotasTerceirosValor_Adicional06.Clear;
        dmFiscal.NotasTerceirosAliquota_Adicional06.Clear;
        SomaImpostos;
end;

procedure TNotaFiscal_Servico.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbPost then
         dmFiscal.NotasTerceirosValor_TotalLiquido.Value := dmFiscal.NotasTerceirosValor_TotalNota.Value - mTotalImpostos;
end;

procedure TNotaFiscal_Servico.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       With Dados, dmFiscal do Begin
            NotasTerceiros.Close;
            Servicos.Close;
            Impostos.Open;
            Fornecedores.Close;
            Natureza.Close;
       End;
       Release;
       NotaFiscal_Servico := nil;
end;

procedure TNotaFiscal_Servico.SomaImpostos;
begin
        With dmFiscal do Begin
             mTotalImpostos := NotasTerceirosValor_Adicional01.Value+NotasTerceirosValor_Adicional02.Value+
                               NotasTerceirosValor_Adicional03.Value+NotasTerceirosValor_Adicional04.Value+
                               NotasTerceirosValor_Adicional05.Value+NotasTerceirosValor_Adicional06.Value;
             cTotalImpostos.Caption := FormatFloat('###,###,###,##0.00', mTotalImpostos);
             If (NotasTerceiros.State = dsEdit) or (NotasTerceiros.State = dsInsert) then
                NotasTerceirosValor_TotalLiquido.Value := dmFiscal.NotasTerceirosValor_TotalNota.Value - mTotalImpostos;
        End;
end;

end.
