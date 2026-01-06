unit frmNotaFiscal_TerceirosCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit, RxCurrEdit, MemDS, DBAccess, MSAccess;

type
  TNotaFiscal_TerceirosCredito = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    bGerar: TButton;
    StaticText11: TStaticText;
    DBEdit1: TDBEdit;
    StaticText1: TStaticText;
    cTotal: TCurrencyEdit;
    ttmp: TMSQuery;
    bExcluir: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosCredito: TNotaFiscal_TerceirosCredito;

implementation

{$R *.dfm}

uses FUNCOES, frmDados, frmDMFiscal;

procedure TNotaFiscal_TerceirosCredito.bExcluirClick(Sender: TObject);
begin
     if Messagedlg('Deseja realmente excluir crédito da nota fiscal: '+dmfiscal.NotasTerceirosNota.asstring+'?', mtConfirmation, [mbyes, mbno],0) = mrno then begin
        abort;
     end;
     with Dados, dmFiscal do begin
          with ttmp do begin
               sql.clear;
               sql.add('delete from PagarReceberCreditos where Codigo = :pCodigo and Nota = :pNota and Data= :pData');
               parambyname('pCodigo').value := NotasTerceirosFornecedor.asinteger;
               parambyname('pNota').value   := NotasTerceirosNota.asinteger;
               parambyname('pData').value   := NotasTerceirosData_Emissao.Value;
               execute;
               PagarReceberCreditos.Refresh;
          end;
     end;
end;

procedure TNotaFiscal_TerceirosCredito.bGerarClick(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          with ttmp do begin
               sql.clear;
               sql.add('delete from PagarReceberCreditos where Codigo = :pCodigo and Nota = :pNota and Data= :pData');
               parambyname('pCodigo').value := NotasTerceirosFornecedor.asinteger;
               parambyname('pNota').value   := NotasTerceirosNota.asinteger;
               parambyname('pData').value   := NotasTerceirosData_Emissao.Value;
               execute;
               sql.clear;
               sql.add('select Registro = isnull(max(Registro), 0)+1 from PagarReceberCreditos');
               open;
          end;
          with PagarReceberCreditos do begin
               Append;
                    fieldbyname('Registro').Value := ttmp.FieldByName('Registro').AsInteger;
                    fieldbyname('Codigo').Value   := NotasTerceirosFornecedor.asinteger;
                    fieldbyname('CNPJ').Value     := FornecedoresCNPJ.asstring;
                    fieldbyname('CPF').Value      := FornecedoresCPF.asstring;
                    fieldbyname('Tipo').Value     := 'R';
                    fieldbyname('Nota').Value     := NotasTerceirosNota.asinteger;
                    fieldbyname('Data').Value     := NotasTerceirosData_Emissao.value;
                    fieldbyname('Emissor').Value  := 'T';
                    fieldbyname('Origem').Value   := 'NFT';
                    fieldbyname('Valor').Value    := NotasTerceirosValor_TotalNota.ascurrency;
               post;
               Refresh;
          end;
     end;
end;

procedure TNotaFiscal_TerceirosCredito.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TNotaFiscal_TerceirosCredito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      NotaFiscal_TerceirosCredito.Release;
      NotaFiscal_TerceirosCredito:= nil;
end;

procedure TNotaFiscal_TerceirosCredito.FormShow(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          with PagarReceberCreditos do begin
               sql.clear;
               sql.add('select * from PagarReceberCreditos where Codigo = :pCodigo order by Data, Nota');
               parambyname('pCodigo').asinteger := NotasTerceirosFornecedor.asinteger;
               open;
          end;
          with ttmp do begin
               sql.clear;
               sql.add('select Valor = sum(iif(Tipo = ''R'', Valor, Valor *-1)) from PagarReceberCreditos where Codigo = :pCodigo');
               parambyname('pCodigo').asinteger := NotasTerceirosFornecedor.asinteger;
               open;
               cTotal.Value := fieldbyname('Valor').ascurrency;
          end;
     end;
end;

end.
