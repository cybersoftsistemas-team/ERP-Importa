unit frmUtilitarios_AjustarEstoqueNavio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess, RxLookup, Vcl.Buttons;

type
  TUtilitarios_AjustarEstoqueNavio = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBEdit1: TDBEdit;
    cNota: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText3: TStaticText;
    StaticText10: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBGrid1: TDBGrid;
    tTmp: TMSQuery;
    DBEdit2: TDBEdit;
    StaticText8: TStaticText;
    DBEdit8: TDBEdit;
    StaticText9: TStaticText;
    DBEdit9: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    tTerminais: TMSQuery;
    tTerminaisCodigo: TIntegerField;
    tTerminaisCNPJ: TStringField;
    tTerminaisNome: TStringField;
    dsTerminais: TDataSource;
    DBEdit11: TDBEdit;
    StaticText13: TStaticText;
    cPesquisa: TEdit;
    Label1: TLabel;
    bPesquisaCliente: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_AjustarEstoqueNavio: TUtilitarios_AjustarEstoqueNavio;

implementation

{$R *.dfm}

uses frmDMFiscal, frmDados;

procedure TUtilitarios_AjustarEstoqueNavio.bPesquisaClienteClick(Sender: TObject);
begin
     with dmFiscal do begin
          with NotasItensNavios do begin
               locate('Nota', strtoint(cPesquisa.Text), [locaseinsensitive]);
          end;
     end;
end;

procedure TUtilitarios_AjustarEstoqueNavio.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TUtilitarios_AjustarEstoqueNavio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Utilitarios_AjustarEstoqueNavio.release;
      Utilitarios_AjustarEstoqueNavio:= nil;
end;

procedure TUtilitarios_AjustarEstoqueNavio.FormShow(Sender: TObject);
begin
     with dmFiscal do begin
          with NotasItensNavios do begin
               sql.clear;
               sql.add('select * from NotasItensNavios order by Nota desc');
               open;
          end;
          with tTerminais do begin
               sql.Clear;
               sql.Add('select Codigo, CNPJ, Nome from Fornecedores');
               sql.Add('where Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
               sql.Add('order by Nome');
               open;
          end;
     end;
end;

procedure TUtilitarios_AjustarEstoqueNavio.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with dmFiscal.NotasItensNavios do begin
          if Button = nbPost then begin
             if State = dsInsert then begin
                with tTmp do begin
                     sql.clear;
                     sql.add('select isnull(max(Registro), 0)+1 as reg from NotasItensNavios');
                     open;
                end;
                fieldbyname('Registro').Value := tTmp.fieldbyname('reg').AsInteger;
                fieldbyname('item').Value     := 1;
             end;
          end;
     end;
end;

procedure TUtilitarios_AjustarEstoqueNavio.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i:integer;
begin
      with dmFiscal do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              if Button = nbInsert then begin
                 NotasItensNavios.fieldbyname('Saida_Entrada').value := 1;
                 NotasItensNavios.fieldbyname('Emissor').value       := 'P';
              end;
              Panel2.Enabled := true;
              cNota.SetFocus;
           end else begin
              Panel2.Enabled := false;
           end;
      end;
end;


end.
