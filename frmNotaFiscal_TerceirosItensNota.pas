unit frmNotaFiscal_TerceirosItensNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, DB,MemDS, DBAccess, MSAccess;

type
  TNotaFiscal_TerceirosItensNota = class(TForm)
    GroupBox2: TGroupBox;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    tItem: TMSQuery;
    tItemItem: TSmallintField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInclui_ItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosItensNota: TNotaFiscal_TerceirosItensNota;

implementation

uses frmDMFiscal, frmDados;

{$R *.dfm}

procedure TNotaFiscal_TerceirosItensNota.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_TerceirosItensNota.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Release;
      NotaFiscal_TerceirosItensNota := nil;
end;

procedure TNotaFiscal_TerceirosItensNota.bInclui_ItemClick(Sender: TObject);
Var
    mQtdeInput  : String;
    mQuantidade : Integer;
begin
      mQuantidade := 0;

      Try
          mQtdeInput  := dmFiscal.NotasItensQuantidade.AsString;
          mQuantidade := StrtoInt( InputBox('Quantidade devolvida','Quantidade:',mQtdeInput) );
          If (mQuantidade > dmFiscal.NotasItensDisponivel.Value) or (mQuantidade <= 0 ) then begin
              ShowMessage('A quantidade informada para este item é invalida!');
              Abort;
          End;
      Except
          ShowMessage('A quantidade informada para este item é invalida!');
          Abort;
      End;

      With Dados, dmFiscal do begin
           NotasTerceirosItens.Append;
                        NotasTerceirosItensNota.Value                 := NotasTerceirosNota.Value;
                        tItem.Open;
                        NotasTerceirosItensItem.Value                 := tItemItem.Value+1;
                        tItem.Close;
                        NotasTerceirosItensEmpresa.Value              := NotasItensEmpresa.Value;
                        NotasTerceirosItensCodigo_Mercadoria.Value    := NotasItensCodigo_Mercadoria.Value;
                        NotasTerceirosItensDescricao_Mercadoria.Value := NotasItensDescricao_Mercadoria.Value ;
                        NotasTerceirosItensNCM.Value                  := NotasItensNCM.Value;
                        NotasTerceirosItensUnidade_Medida.Value       := NotasItensUnidade_Medida.Value;
                        NotasTerceirosItensQuantidade.Value           := mQuantidade;
                        NotasTerceirosItensCodigoTrib_TabA.Value      := NotasItensCodigoTrib_TabA.Value;
                        NotasTerceirosItensCodigoTrib_TabB.Value      := NotasItensCodigoTrib_TabB.Value;
                        NotasTerceirosItensAdicao.Value               := NotasItensAdicao.Value;
                        NotasTerceirosItensAliquota_ICMSOper.Value    := NotasItensAliquota_ICMSOper.Value;
                        NotasTerceirosItensAliquota_ICMSSub.Value     := NotasItensAliquota_ICMSSub.Value;
                        NotasTerceirosItensPeso_Liquido.Value         := NotasItensPeso_Liquido.Value;
                        NotasTerceirosItensPeso_Bruto.Value           := NotasItensPeso_Bruto.Value;
                        NotasTerceirosItensValor_Unitario.Value       := NotasItensValor_Unitario.Value;
                        NotasTerceirosItensValor_IPI.Value            := NotasItensValor_IPI.Value         * mQuantidade;
                        NotasTerceirosItensValor_BCICMSOper.Value     := NotasItensValor_BCICMSOper.Value  * mQuantidade;
                        NotasTerceirosItensValor_ICMSOper.Value       := NotasItensValor_ICMSOper.Value    * mQuantidade;
                        NotasTerceirosItensValor_BCICMSSub.Value      := NotasItensValor_BCICMSSub.Value   * mQuantidade;
                        NotasTerceirosItensValor_ICMSSub.Value        := NotasItensValor_ICMSSub.Value     * mQuantidade;
                        NotasTerceirosItensQuantidade.Value           := mQuantidade;
           NotasTerceirosItens.Post;
           NotasItens.Edit;
                      NotasItensDisponivel.Value := NotasItensDisponivel.Value - mQuantidade;
           NotasItens.Post;
           NotasItens.Refresh;
      End;
end;

end.
