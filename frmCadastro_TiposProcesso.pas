unit frmCadastro_TiposProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, DBCtrls, DB, DBAccess,
  MSAccess, ClipBrd, Vcl.ComCtrls, RxLookup, Buttons, Mask, Grids,
  DBGrids, MemDS;

type
  TCadastro_TiposProcesso = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText96: TStaticText;
    StaticText97: TStaticText;
    StaticText98: TStaticText;
    StaticText99: TStaticText;
    StaticText100: TStaticText;
    StaticText101: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    StaticText8: TStaticText;
    RxDBLookupCombo10: TRxDBLookupCombo;
    cTelaPed: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    StaticText103: TStaticText;
    StaticText113: TStaticText;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    StaticText102: TStaticText;
    RxDBLookupCombo7: TRxDBLookupCombo;
    StaticText9: TStaticText;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    DBLookupComboBox14: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    StaticText39: TStaticText;
    DBEdit4: TDBEdit;
    StaticText6: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText7: TStaticText;
    DBEdit6: TDBEdit;
    StaticText11: TStaticText;
    DBEdit7: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    StaticText10: TStaticText;
    cFiltro: TEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    StaticText12: TStaticText;
    DBEdit8: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText13: TStaticText;
    DBEdit9: TDBEdit;
    StaticText14: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    StaticText141: TStaticText;
    DBLookupComboBox31: TDBLookupComboBox;
    StaticText15: TStaticText;
    DBLookupComboBox9: TDBLookupComboBox;
    StaticText16: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cFiltroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: integer;
  end;

var
  Cadastro_TiposProcesso: TCadastro_TiposProcesso;

implementation

uses frmDados, frmDMContab, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_TiposProcesso.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_TiposProcesso.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText                 := Dados.TiposProcessoCodigo.AsString;
      Menu_Principal.mMem_TipoProcesso := Dados.TiposProcessoCodigo.Value;
      
      Cadastro_TiposProcesso.Release;
      Cadastro_TiposProcesso := nil;
end;

procedure TCadastro_TiposProcesso.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_TiposProcesso.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i:Integer;
begin
      with Dados do begin
           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              End;
              PageControl1.ActivePageIndex := 0;
              TabSheet1.Enabled            := True;
              TabSheet2.Enabled            := True;
              cDescricao.SetFocus;
           End;
           if Button = nbInsert then begin
              TiposProcessoApuracao_PISCOFINS.value := false;
              TiposProcessoExige_Cliente.value      := false;
              TiposProcessoPedido.value             := 'T';
           end;
           If (Button = nbPost) or (Button = nbCancel) then Begin
              Screen.Cursor := crSQLWait;
              Dados.TiposProcesso.Refresh;
              TabSheet1.Enabled := false;
              TabSheet2.Enabled := false;
              Screen.Cursor     := crDefault;
              If (Button = nbPost) then Begin
                 tCodigo.SQL.Clear;
                 tCodigo.SQL.Add('UPDATE ProcessosDocumentos SET Apuracao_PISCOFINS = :pApuracao WHERE Modalidade_Importacao = :pCodigo');
                 tCodigo.ParamByName('pApuracao').AsBoolean := TiposProcessoApuracao_PISCOFINS.AsBoolean;
                 tCodigo.ParamByName('pCodigo').AsInteger   := TiposProcessoCodigo.AsInteger;
                 tCodigo.Execute;
              End;
              cFiltro.Clear;
           End;
      end;
end;

procedure TCadastro_TiposProcesso.FormShow(Sender: TObject);
begin
      With Dados, dmContab do begin
           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           if mPesquisa <> 0 then TiposProcesso.Locate('Codigo', mPesquisa, [loCaseInsensitive]);

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Descricao');
           PlanoContas.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) AND (Titulo <> 1) ORDER BY Descricao,Codigo');
           ClassificacaoFinanceira.Open;

           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao');
           TiposDocumentos.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto WHERE LEN(Codigo) = 7 ORDER BY Descricao');
           CentroCusto.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
           Orgaos.Open;

           PageControl1.ActivePageIndex := 0;
      End;
end;

procedure TCadastro_TiposProcesso.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      With Dados do begin
           If (Button = nbPost) and (TiposProcesso.State = dsInsert) then begin
              tCodigo.SQL.Clear;
              tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM TiposProcesso');
              tCodigo.Open;
              TiposProcesso.FieldByName('Codigo').AsInteger := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
           End;
      End; 
end;

procedure TCadastro_TiposProcesso.SpeedButton2Click(Sender: TObject);
begin
      cFiltro.Clear;
end;

procedure TCadastro_TiposProcesso.cFiltroChange(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           if Trim(cFiltro.Text) <> '' then
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cFiltro.Text+'%')+') ORDER BY Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Codigo');
           PlanoContas.Open;
      end;
end;

end.
