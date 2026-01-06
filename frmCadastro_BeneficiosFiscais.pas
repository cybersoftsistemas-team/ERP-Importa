unit frmCadastro_BeneficiosFiscais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RxRichEd, Mask,
  RXDBCtrl, DB, DBAccess, MSAccess, Grids, DBGrids, ComCtrls, MemDS, system.UITypes, Vcl.WinXCtrls, Funcoes;

type
  TCadastro_BeneficiosFiscais = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    tTemp: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    cNome: TDBEdit;
    StaticText8: TStaticText;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    StaticText2: TStaticText;
    cUF: TDBEdit;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText5: TStaticText;
    DBEdit4: TDBEdit;
    StaticText6: TStaticText;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    StaticText9: TStaticText;
    DBEdit6: TDBEdit;
    StaticText10: TStaticText;
    DBEdit7: TDBEdit;
    DBCheckBox18: TDBCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText12: TStaticText;
    DBEdit1: TDBEdit;
    StaticText7: TStaticText;
    DBEdit8: TDBEdit;
    StaticText14: TStaticText;
    DBEdit9: TDBEdit;
    StaticText15: TStaticText;
    DBEdit10: TDBEdit;
    StaticText16: TStaticText;
    DBEdit11: TDBEdit;
    GroupBox3: TGroupBox;
    StaticText17: TStaticText;
    DBEdit12: TDBEdit;
    StaticText18: TStaticText;
    DBEdit13: TDBEdit;
    StaticText19: TStaticText;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    StaticText20: TStaticText;
    DBEdit18: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText21: TStaticText;
    DBEdit19: TDBEdit;
    StaticText22: TStaticText;
    DBEdit20: TDBEdit;
    StaticText23: TStaticText;
    DBEdit21: TDBEdit;
    StaticText24: TStaticText;
    DBEdit22: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    NavegaRec: TDBNavigator;
    Panel4: TPanel;
    cAliquotaICMS: TDBEdit;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    cAliquotaRec: TDBEdit;
    cBC: TDBRadioGroup;
    gRetorno: TDBGrid;
    Panel5: TPanel;
    StaticText25: TStaticText;
    cFundamento: TDBMemo;
    DBEdit23: TDBEdit;
    StaticText26: TStaticText;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    NavegaCred: TDBNavigator;
    Panel7: TPanel;
    StaticText29: TStaticText;
    cICMS: TDBEdit;
    StaticText30: TStaticText;
    DBEdit27: TDBEdit;
    StaticText31: TStaticText;
    DBEdit28: TDBEdit;
    StaticText32: TStaticText;
    DBEdit29: TDBEdit;
    DBGrid1: TDBGrid;
    StaticText27: TStaticText;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    StaticText28: TStaticText;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cUFChange(Sender: TObject);
    procedure NavegaRecBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure NavegaRecClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoChange(Sender: TObject);
    procedure NavegaCredClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaCredBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit27Change(Sender: TObject);
    procedure cICMSChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_BeneficiosFiscais: TCadastro_BeneficiosFiscais;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

{--------------- DICIONARIO PARA GERAR O  CÒDIGO ----------------
CX  = CAMEX
SD  = SAIDA
DE  = DENTRO DO ESTADO
FE  = FORA DO ESTADO
CT  = CONTRIBUINTE
NCT = NÃO CONTRIBUINTE
RTI = REVENDA TOTALMENTE INTERESTADUAL
SN  = SIMPLES NACIONAL
ST  = COM ICMS ST
SST = SEM ICMS ST
REV = REVENDA
CON = CONSUMO
SS  = SUL E SUDESTE
NN  = NORTE E NORDESTE
INS = INSUMO
SIE = PESSOA JURIDICA SEM IE
PJ  = PESSOA JURIDICA
PF  = PESSOA FISICA
}

procedure TCadastro_BeneficiosFiscais.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         PageControl1.ActivePageIndex := 0;
         If (Button = nbInsert) then begin
            Dados.IncentivosFiscaisICMS_Diferido.Value := false;
            Dados.IncentivosFiscaisDesativada.Value    := false;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.IncentivosFiscais.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_BeneficiosFiscais.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_BeneficiosFiscais.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_BeneficiosFiscais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_BeneficiosFiscais.Release;
      Cadastro_BeneficiosFiscais := nil;
end;

procedure TCadastro_BeneficiosFiscais.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           with IncentivosFiscais do begin
                SQL.Clear;
                SQL.Add('select * from IncentivosFiscais order by Nome');
                Open;
           end;
           with CodigosReceitaSPED do begin 
                SQL.Clear;
                SQL.Add('select * from CodigosReceitaSPED where Estado = :pEstado or Estado is null order by Descricao');
                ParamByName('pEstado').asstring := IncentivosFiscais.fieldByName('Estado').asstring;
                Open;
           end;
           with Estados do begin 
                SQL.Clear;
                SQL.Add('select * from Estados order by Nome');
                Open;
           end;
      End;
end;

procedure TCadastro_BeneficiosFiscais.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbPost) then begin
         If Dados.IncentivosFiscais.State = dsInsert then begin
            Screen.Cursor := crSQLWait;

            tCodigo.sql.clear;
            tCodigo.sql.add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM IncentivosFiscais');
            tCodigo.Open;
            Dados.IncentivosFiscaisCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
            tCodigo.Close;
            Screen.Cursor := crDefault;
         End;
      End;
      if Button = nbDelete then begin
         tTemp.sql.clear;
         tTemp.sql.add('select count(Incentivo_Fiscal) as Qtde from NotasFiscais where Incentivo_Fiscal = :pInc and Cancelada <> 1 and Nfe_Denegada <> 1');
         tTemp.ParamByName('pInc').AsString := Dados.IncentivosFiscaisNome.Value;
         tTemp.Open;
         if tTemp.FieldByName('Qtde').AsInteger > 0 then begin
            MessageDlg('Benefício fiscal ja utilizado, não pode ser excluído!', mtError, [mbOK], 0);
            Abort;
         end;
         tTemp.Close;
      end;
end;

procedure TCadastro_BeneficiosFiscais.cUFChange(Sender: TObject);
begin
      With Dados do begin
           CodigosReceitaSPED.SQL.Clear;
           CodigosReceitaSPED.SQL.Add('SELECT * FROM CodigosReceitaSPED WHERE Estado = :pEstado or Estado IS NULL ORDER BY Descricao');
           CodigosReceitaSPED.ParamByName('pEstado').asstring := cUF.Text;
           CodigosReceitaSPED.Open;
      End;
end;

procedure TCadastro_BeneficiosFiscais.cICMSChange(Sender: TObject);
begin
       with dmFiscal, CreditoPresumido do begin
            if State in[dsInsert, dsEdit] then begin
               Fieldbyname('Credito_Presumido').Value := Fieldbyname('ICMS').asfloat - Fieldbyname('Carga_Efetiva').asfloat;
            end;
       end;
end;

procedure TCadastro_BeneficiosFiscais.DBEdit27Change(Sender: TObject);
begin
       with dmFiscal, CreditoPresumido do begin
            if State in[dsInsert, dsEdit] then begin
               Fieldbyname('Credito_Presumido').Value := Fieldbyname('ICMS').asfloat - Fieldbyname('Carga_Efetiva').asfloat;
            end;
       end;
end;

procedure TCadastro_BeneficiosFiscais.NavegaCredBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with dmFiscal do begin
           if (Button = nbPost) and (CreditoPresumido.State = dsInsert) then begin
              with tCodigo do begin
                   sql.clear;
                   sql.add('select isnull(max(Registro), 0)+1 as Registro from ICMSCredPres');
                   Open;
                   CreditoPresumido.fieldbyName('Registro').value := fieldbyname('Registro').asinteger;
              end;
           end;   
      end;
end;

procedure TCadastro_BeneficiosFiscais.NavegaCredClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
     with dmFiscal, Dados do begin
          if (Button = nbInsert) or (Button = nbEdit) then begin
             For i := 0 to 6 do begin
                 NavegaCred.Controls[i].Enabled := False;
             End;
             Panel7.Enabled := true;
             cICMS.Setfocus;
          end;
          if (Button = nbPost) or (Button = nbCancel) then begin
             Panel7.Enabled := false;
          end;
     end;
end;

procedure TCadastro_BeneficiosFiscais.NavegaRecBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with Dados do begin
           if (Button = nbPost) and (RecuperarICMS.State = dsInsert) then begin
              with tTemp do begin
                   sql.clear;
                   sql.add('select isnull(max(Registro), 0)+1 as Registro from RecuperarICMS');
                   Open;
                   RecuperarICMS.fieldbyName('Registro').value  := fieldbyname('Registro').asinteger;
                   RecuperarICMS.fieldbyName('Beneficio').value := IncentivosFiscaisCodigo.value;
              end;
           end;   
      end;
end;

procedure TCadastro_BeneficiosFiscais.NavegaRecClick(Sender: TObject;Button: TNavigateBtn);
var
   i:integer;
begin
     if (Button = nbInsert) or (Button = nbEdit) then begin
        For i := 0 to 6 do begin
            NavegaRec.Controls[i].Enabled := False;
        End;
        Panel4.Enabled := true;
        cAliquotaICMS.Setfocus;
     end;
     if (Button = nbPost) or (Button = nbCancel) then begin
        Panel4.Enabled := false;
     end;
end;

procedure TCadastro_BeneficiosFiscais.cCodigoChange(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           with RecuperarICMS do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM RecuperarICMS WHERE Beneficio = :pBene ORDER BY Aliquota_ICMS');
                ParamByName('pBene').asinteger := IncentivosFiscais.fieldbyName('Codigo').asinteger;
                Open;
           end;
           with CreditoPresumido do begin
                sql.clear;
                sql.add('select * from ICMSCredPres where Beneficio = :pCod order by Registro');
                parambyname('pCod').Value := IncentivosFiscais.FieldByName('Codigo_Incentivo').AsString;
                open;
           end;
      end;
end;


end.


