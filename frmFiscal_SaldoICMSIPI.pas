unit frmFiscal_SaldoICMSIPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls,
  RXDBCtrl, Buttons, DB, DBAccess, MSAccess, Grids, DBGrids, MemDS;

type
  TFiscal_SaldoICMSIPI = class(TForm)
    Panel1: TPanel;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    bSair: TButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    GradeICMS: TRxDBGrid;
    GroupBox2: TGroupBox;
    GradeIPI: TRxDBGrid;
    tSaldo: TMSQuery;
    bICMS: TButton;
    bIPI: TButton;
    SaldoICMS: TMSQuery;
    SaldoICMSMes_Ano: TStringField;
    SaldoICMSOperacao: TSmallintField;
    SaldoICMSSaldo: TCurrencyField;
    dsSaldoICMS: TDataSource;
    SaldoIPI: TMSQuery;
    SaldoIPIMes_Ano: TStringField;
    SaldoIPIOperacao: TSmallintField;
    SaldoIPISaldo: TCurrencyField;
    dsSaldoIPI: TDataSource;
    GroupBox3: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    SaldoPIS: TMSQuery;
    dsSaldoPIS: TDataSource;
    SaldoPISMes_Ano: TStringField;
    SaldoPISSaldo_PIS: TCurrencyField;
    SaldoPISSaldo_COFINS: TCurrencyField;
    bPisCOfins: TButton;
    SaldoICMSDescricao: TStringField;
    SaldoIPIDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bICMSClick(Sender: TObject);
    procedure bIPIClick(Sender: TObject);
    procedure FiltraSaldo;
    procedure SaldoICMSNewRecord(DataSet: TDataSet);
    procedure SaldoIPINewRecord(DataSet: TDataSet);
    procedure bPisCOfinsClick(Sender: TObject);
    procedure SaldoPISNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fiscal_SaldoICMSIPI: TFiscal_SaldoICMSIPI;

implementation

uses frmImpressao_FiscaisOP_RAICMS_P9, frmImpressao_FiscaisOP_RAIPI_P9, frmImpressao_Fiscais_ApuracaoPISCOFINS;

{$R *.dfm}

procedure TFiscal_SaldoICMSIPI.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFiscal_SaldoICMSIPI.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFiscal_SaldoICMSIPI.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Fiscal_SaldoICMSIPI.Release;
      Fiscal_SaldoICMSIPI := nil;
end;

procedure TFiscal_SaldoICMSIPI.FormShow(Sender: TObject);
begin
      FiltraSaldo;
end;

procedure TFiscal_SaldoICMSIPI.bICMSClick(Sender: TObject);
begin
      If (SaldoICMS.State = dsEdit) or  (SaldoICMS.State = dsInsert) then SaldoICMS.Post;
      
      Impressao_FiscaisOP_RAICMS_P9 := TImpressao_FiscaisOP_RAICMS_P9.Create(Self);
      Impressao_FiscaisOP_RAICMS_P9.Caption := Caption;
      Impressao_FiscaisOP_RAICMS_P9.ShowModal;
      FiltraSaldo;
end;

procedure TFiscal_SaldoICMSIPI.bIPIClick(Sender: TObject);
begin
      If (SaldoIPI.State = dsEdit) or  (SaldoIPI.State = dsInsert) then SaldoIPI.Post;

      Impressao_FiscaisOP_RAIPI_P9 := TImpressao_FiscaisOP_RAIPI_P9.Create(Self);
      Impressao_FiscaisOP_RAIPI_P9.Caption := Caption;
      Impressao_FiscaisOP_RAIPI_P9.ShowModal;
      FiltraSaldo;
end;

procedure TFiscal_SaldoICMSIPI.FiltraSaldo;
begin
       SaldoICMS.SQL.Clear;
       SaldoICMS.SQL.Add('DELETE FROM SaldoICMS WHERE ISNULL(Mes_Ano, '''') = '''' ');
       SaldoICMS.Execute;
       SaldoICMS.SQL.Clear;
       SaldoICMS.SQL.Add('SELECT *');
       SaldoICMS.SQL.Add('      ,Descricao = CASE WHEN Operacao = 0 THEN');
       SaldoICMS.SQL.Add('	                  ''GERAL'' ');
       SaldoICMS.SQL.Add('                   ELSE');
       SaldoICMS.SQL.Add('	                  (SELECT Nome FROM Cybersoft_Cadastros.dbo.IncentivosFiscais WHERE Codigo = Operacao)');
       SaldoICMS.SQL.Add('                   END');
       SaldoICMS.SQL.Add('FROM SaldoICMS ORDER BY SUBSTRING(Mes_Ano, 3,4) DESC, SUBSTRING(Mes_Ano, 1,2) DESC');
       SaldoICMS.SQL.SaveToFile('c:\temp\SaldoICMS.sql');
       SaldoICMS.Open;

       SaldoIPI.SQL.Clear;
       SaldoIPI.SQL.Add('DELETE FROM SaldoIPI WHERE ISNULL(Mes_Ano, '''') = '''' ');
       SaldoIPI.Execute;
       SaldoIPI.SQL.Clear;
       SaldoIPI.SQL.Add('SELECT *');
       SaldoIPI.SQL.Add('      ,Descricao = CASE WHEN Operacao = 0 THEN');
       SaldoIPI.SQL.Add('	                  ''GERAL'' ');
       SaldoIPI.SQL.Add('                   ELSE');
       SaldoIPI.SQL.Add('	                  (SELECT Nome FROM Cybersoft_Cadastros.dbo.IncentivosFiscais WHERE Codigo = Operacao)');
       SaldoIPI.SQL.Add('                   END');
       SaldoIPI.SQL.Add('FROM SaldoIPI');
       SaldoIPI.SQL.Add('ORDER BY SUBSTRING(Mes_Ano, 3,4) DESC, SUBSTRING(Mes_Ano, 1,2) DESC');
       SaldoIPI.Open;

       SaldoPIS.SQL.Clear;
       SaldoPIS.SQL.Add('DELETE SaldoPISCOFINS WHERE ISNULL(Mes_Ano, '''') = '''' ');
       SaldoPIS.Execute;
       SaldoPIS.SQL.Clear;
       SaldoPIS.SQL.Add('SELECT * FROM SaldoPISCOFINS ORDER BY SUBSTRING(Mes_Ano, 3,4) DESC, SUBSTRING(Mes_Ano, 1,2) DESC');
       SaldoPIS.Open;
End;

procedure TFiscal_SaldoICMSIPI.SaldoICMSNewRecord(DataSet: TDataSet);
begin
      SaldoICMSOperacao.Value := -1;
end;

procedure TFiscal_SaldoICMSIPI.SaldoIPINewRecord(DataSet: TDataSet);
begin
      SaldoIPIOperacao.Value := -1;
end;

procedure TFiscal_SaldoICMSIPI.bPisCOfinsClick(Sender: TObject);
begin
      If (SaldoPIS.State = dsEdit) or  (SaldoPIS.State = dsInsert) then SaldoPIS.Post;

      Impressao_Fiscais_ApuracaoPISCOFINS := tImpressao_Fiscais_ApuracaoPISCOFINS.Create(Self);
      Impressao_Fiscais_ApuracaoPISCOFINS.Caption := Caption;
      Impressao_Fiscais_ApuracaoPISCOFINS.ShowModal;
      FiltraSaldo;
end;

procedure TFiscal_SaldoICMSIPI.SaldoPISNewRecord(DataSet: TDataSet);
begin
      SaldoPISMes_Ano.Value := '';
end;

end.
