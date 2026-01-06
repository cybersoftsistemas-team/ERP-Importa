unit frmCadastro_HistoricoPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls,
  DBCtrls, Vcl.ComCtrls, Menus, Funcoes, DateUtils, Grids, DBGrids, Mask, MemDS;

type
  TCadastro_HistoricoPadrao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cCodigo: TDBEdit;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    cDescricao: TDBEdit;
    tCodigoCodigo: TSmallintField;
    StaticText1: TStaticText;
    DBCheckBox1: TDBCheckBox;
    StaticText7: TStaticText;
    mnVariavel: TPopupMenu;
    FORNECEDORES1: TMenuItem;
    PROCESSO1: TMenuItem;
    DI1: TMenuItem;
    DESCRIOCLASSIFICAOFINANCEIRA1: TMenuItem;
    NDOCUMENTP1: TMenuItem;
    DATADOCUMENTO1: TMenuItem;
    BANCO1: TMenuItem;
    OBSERVAO1: TMenuItem;
    cComplemento: TDBMemo;
    IPODEDOCUMENTO1: TMenuItem;
    StaticText2: TStaticText;
    cExemplo: TMemo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    MES1: TMenuItem;
    NOMEDOMES1: TMenuItem;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure PROCESSO1Click(Sender: TObject);
    procedure DI1Click(Sender: TObject);
    procedure DESCRIOCLASSIFICAOFINANCEIRA1Click(Sender: TObject);
    procedure NDOCUMENTP1Click(Sender: TObject);
    procedure DATADOCUMENTO1Click(Sender: TObject);
    procedure BANCO1Click(Sender: TObject);
    procedure OBSERVAO1Click(Sender: TObject);
    procedure IPODEDOCUMENTO1Click(Sender: TObject);
    procedure cComplementoChange(Sender: TObject);
    procedure MES1Click(Sender: TObject);
    procedure NOMEDOMES1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
    mMacros   : array[0..9] of String;
  end;

var
  Cadastro_HistoricoPadrao: TCadastro_HistoricoPadrao;

implementation

uses frmDMContab;

{$R *.dfm}

procedure TCadastro_HistoricoPadrao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_HistoricoPadrao.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmContab do begin
             Historicos.SQL.Clear;
             Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
             Historicos.Open;

             if mPesquisa <> '' then begin
                Historicos.Locate('Codigo', mPesquisa, [loCaseInsensitive]);
             end;
        end;

        mMacros[0] := mnVariavel.Items[0].Caption;
        mMacros[1] := mnVariavel.Items[1].Caption;
        mMacros[2] := mnVariavel.Items[2].Caption;
        mMacros[3] := mnVariavel.Items[3].Caption;
        mMacros[4] := mnVariavel.Items[4].Caption;
        mMacros[5] := mnVariavel.Items[5].Caption;
        mMacros[6] := mnVariavel.Items[6].Caption;
        mMacros[7] := mnVariavel.Items[7].Caption;
        mMacros[8] := mnVariavel.Items[8].Caption;

        Screen.Cursor := crDefault;
end;

procedure TCadastro_HistoricoPadrao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then dmContab.HistoricosComplemento.Value := False;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         Panel2.Enabled := False;
         dmContab.Historicos.Refresh;
      End;
end;

procedure TCadastro_HistoricoPadrao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      with dmContab, Historicos do begin
           if (Button = nbPost) and (State = dsInsert) and (Fieldbyname('Codigo').AsInteger = 0) then begin
              tCodigo.Open;
              HistoricosCodigo.Value := tCodigoCodigo.Value + 1;
              tCodigo.Close;
           end;
      end;
end;

procedure TCadastro_HistoricoPadrao.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa histórico', 'Código/Descrição', mPesquisa);
      If dmContab.Historicos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         If dmContab.Historicos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]) = False then begin
            ShowMessage('Nenhum histórico encontrado com o "Código ou Descrição" informados.');
         End;
      End;
end;

procedure TCadastro_HistoricoPadrao.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_HistoricoPadrao.FORNECEDORES1Click(Sender: TObject);
begin
      cComplemento.Text := Trim(cComplemento.Text) + ' <{BENEFICIARIO}>';
end;

procedure TCadastro_HistoricoPadrao.PROCESSO1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text)+ ' <{PROCESSO}>';
end;

procedure TCadastro_HistoricoPadrao.DI1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text)+ ' <{DI}>';
end;

procedure TCadastro_HistoricoPadrao.DESCRIOCLASSIFICAOFINANCEIRA1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>';
end;

procedure TCadastro_HistoricoPadrao.NDOCUMENTP1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{Nº DOCUMENTO}>';
end;

procedure TCadastro_HistoricoPadrao.NOMEDOMES1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{NOME DO MES}>';
end;

procedure TCadastro_HistoricoPadrao.DATADOCUMENTO1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{DATA DOCUMENTO}>';
end;

procedure TCadastro_HistoricoPadrao.BANCO1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{BANCO}>';
end;

procedure TCadastro_HistoricoPadrao.OBSERVAO1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{OBSERVAÇÃO}>';
end;

procedure TCadastro_HistoricoPadrao.IPODEDOCUMENTO1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{TIPO DE DOCUMENTO}>';
end;

procedure TCadastro_HistoricoPadrao.MES1Click(Sender: TObject);
begin
      dmContab.HistoricosMacro.Value := Trim(cComplemento.Text) + ' <{MES}>';
end;

procedure TCadastro_HistoricoPadrao.cComplementoChange(Sender: TObject);
Var
    mTexto: String;
begin
      With dmContab do begin
           cExemplo.Lines.Clear;
           mTexto := Trim(HistoricosDescricao.AsString) + ' '+HistoricosMacro.AsString;
           If Pos('<{BENEFICIARIO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{BENEFICIARIO}>', 'CYBERSOFT SISTEMAS LTDA.', mTexto);
           End;
           If Pos('<{PROCESSO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{PROCESSO}>', 'IMP 0001/' + InttoStr(YearOf(Date)), mTexto);
           End;
           If Pos('<{DI}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{DI}>', '01/0123456-8', mTexto);
           End;
           If Pos('<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>', 'DESCRIÇÃO DA CLASSIFICAÇÃO FINANCEIRA', mTexto);
           End;
           If Pos('<{TIPO DE DOCUMENTO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{TIPO DE DOCUMENTO}>', 'NF', mTexto);
           End;
           If Pos('<{Nº DOCUMENTO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{Nº DOCUMENTO}>', '000000001', mTexto);
           End;
           If Pos('<{DATA DOCUMENTO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{DATA DOCUMENTO}>', 'DE '+DatetoStr(Date), mTexto);
           End;
           If Pos('<{BANCO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{BANCO}>', 'BANCO DO BRASIL S/A', mTexto);
           End;
           If Pos('<{OBSERVAÇÃO}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{OBSERVAÇÃO}>', 'CAMPO DE OBSERVAÇÃO VINDA DO FINANCEIRO', mTexto);
           End;
           If Pos('<{MES}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{MES}>', inttostr(Monthof(Date)), mTexto);
           End;
           If Pos('<{NOME DO MES}>', mTexto) > 0 then begin
              mTexto := RemoveCaracter('<{NOME DO MES}>', NomeMes(Monthof(Date)), mTexto);
           End;

           cExemplo.Lines.Add(mTexto);
      End;
end;

end.
