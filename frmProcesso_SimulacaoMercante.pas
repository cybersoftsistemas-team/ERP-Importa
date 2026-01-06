unit frmProcesso_SimulacaoMercante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MSAccess;

type
  TProcesso_SimulacaoMercante = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    Panel2: TPanel;
    cTHC: TDBLookupComboBox;
    StaticText33: TStaticText;
    cMM: TDBLookupComboBox;
    StaticText1: TStaticText;
    StaticText20: TStaticText;
    cDespNacTHC: TCurrencyEdit;
    StaticText59: TStaticText;
    cValorMETHC: TCurrencyEdit;
    StaticText65: TStaticText;
    cTaxaTHC: TCurrencyEdit;
    StaticText2: TStaticText;
    cDespNacMM: TCurrencyEdit;
    StaticText3: TStaticText;
    cValorMEMM: TCurrencyEdit;
    StaticText4: TStaticText;
    cTaxaMM: TCurrencyEdit;
    tRegistro: TMSQuery;
    tClass: TMSQuery;
    dstClass: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure cValorMETHCChange(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_SimulacaoMercante: TProcesso_SimulacaoMercante;

implementation

{$R *.dfm}

uses frmDados;

procedure TProcesso_SimulacaoMercante.bGerarClick(Sender: TObject);
begin
     if (trim(cTHC.Text) = '') and (trim(cMM.Text) = '') then begin
        MessageDlg('Classificação financeira não informada!', mtError, [mbok], 0);
        abort;
     end;
     if (cDespNacTHC.value <= 0) and (cDespNacMM.value <= 0) then begin
        MessageDlg('Valor do lançamento não informado!', mtError, [mbok], 0);
        abort;
     end;
     with Dados, SimulaDespesas do begin
          with tRegistro do begin
               sql.clear;
               sql.Add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
               open;
          end;
          
          // Lançamento da despesa "THC".
          if trim(cTHC.Text) <> '' then begin
             append;
                  fieldbyname('Registro').Value      := tRegistro.FieldByName('Reg').AsInteger;
                  fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
                  fieldbyname('Classificacao').Value := cTHC.KeyValue;
                  fieldbyname('Despesa').Value       := cTHC.Text;
                  fieldbyname('Valor').Value         := cDespNacTHC.Value;
                  fieldbyname('Taxa').Value          := cTaxaTHC.Value;
                  fieldbyname('Valor_ME').Value      := cValorMETHC.Value;
                  fieldbyname('Custo').Value         := true;
                  fieldbyname('Custo_Saida').Value   := true;
             post;
             tRegistro.close;
          end;
          
          // Lançamento da despesa "Marinha Mercante".
          if trim(cMM.Text) <> '' then begin
             tRegistro.open;
             append;
                  fieldbyname('Registro').Value      := tRegistro.FieldByName('Reg').AsInteger;
                  fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
                  fieldbyname('Classificacao').Value := cMM.KeyValue;
                  fieldbyname('Despesa').Value       := cMM.Text;
                  fieldbyname('Valor').Value         := cDespNacMM.Value;
                  fieldbyname('Taxa').Value          := cTaxaMM.Value;
                  fieldbyname('Valor_ME').Value      := cValorMEMM.Value;
                  fieldbyname('Custo').Value         := true;
                  fieldbyname('Custo_Saida').Value   := true;
             post;
             tRegistro.Close;
          end;
     end;
     close;
end;

procedure TProcesso_SimulacaoMercante.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_SimulacaoMercante.cValorMETHCChange(Sender: TObject);
begin
      cDespNacTHC.Enabled := cTaxaTHC.Value = 0;
      if cTaxaTHC.Value <> 0 then begin
         cDespNacTHC.Value := cValorMETHC.Value * cTaxaTHC.Value;
      end;
      {
      with Dados do begin
           cValorMEMM.Value := ((SimulaImportacao.FieldByName('Frete_Internacional').AsCurrency + cValorMETHC.Value) * (Configuracao.FieldByName('Percentual_Marinha').asfloat/100)) + (Configuracao.FieldByName('Tarifa_Marinha').ascurrency / cTaxaMM.Value);
           cDespNacMM.Value := cValorMEMM.value * cTaxaMM.Value;
      end;
      }
      with Dados do begin
           //cValorMEMM.Value := ((SimulaImportacao.FieldByName('Frete_Internacional').AsCurrency + cValorMETHC.Value) * (Configuracao.FieldByName('Percentual_Marinha').asfloat/100)) + (Configuracao.FieldByName('Tarifa_Marinha').ascurrency / cTaxaMM.Value);
           cDespNacMM.Value := SimulaImportacao.FieldByName('Frete_Internacional').AsCurrency * SimulaImportacao.FieldByName('Taxa_Frete').asfloat;
           cDespNacMM.Value := ((cDespNacMM.Value + cDespNacTHC.Value) * (Configuracao.FieldByName('Percentual_Marinha').asfloat/100)) + Configuracao.FieldByName('Tarifa_Marinha').ascurrency;
           cValorMEMM.Value := cDespNacMM.value / cTaxaMM.Value;
      end;
end;

procedure TProcesso_SimulacaoMercante.FormShow(Sender: TObject);
begin
     with Dados do begin
          with tClass do begin
               sql.Clear;
               sql.Add('select Codigo, Descricao from ClassificacaoFinanceira order by Descricao');
               open; 
          end;
          cTaxaTHC.Value := SimulaImportacao.FieldByName('Taxa_FOB').asfloat;
          cTaxaMM.Value  := SimulaImportacao.FieldByName('Taxa_FOB').asfloat;
     end;
end;

end.
