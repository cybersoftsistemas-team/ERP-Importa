unit frmUtilitarios_AjustarItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls,
  RxLookup, Mask, Vcl.Buttons, ClipBrd;

type
  TUtilitarios_AjustarItem = class(TForm)
    StaticText9: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText6: TStaticText;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    StaticText5: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    bAplicar: TButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Shape1: TShape;
    StaticText7: TStaticText;
    DBEdit1: TDBEdit;
    StaticText8: TStaticText;
    DBEdit5: TDBEdit;
    StaticText10: TStaticText;
    DBEdit6: TDBEdit;
    StaticText11: TStaticText;
    DBEdit7: TDBEdit;
    StaticText12: TStaticText;
    cNavio: TDBLookupComboBox;
    bPesqNav: TSpeedButton;
    StaticText13: TStaticText;
    DBEdit8: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bAplicarClick(Sender: TObject);
    procedure bPesqNavClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCodigo:integer;
  end;

var
  Utilitarios_AjustarItem: TUtilitarios_AjustarItem;

implementation

uses frmDMFiscal, frmDados, frmUtilitarios_AjustarEstoqueInventario, frmPesquisaGerais, Funcoes;


{$R *.dfm}

procedure TUtilitarios_AjustarItem.FormShow(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          NotasItens.SQL.Clear;
          NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota AND Data = :pData AND Codigo_Mercadoria = :pCodigo AND Item = :pItem');
          NotasItens.ParamByName('pNota').AsInteger   := Utilitarios_AjustarEstoqueInventario.tNotas.FieldByName('Numero').AsInteger;
          NotasItens.ParamByName('pData').AsDate      := Utilitarios_AjustarEstoqueInventario.tNotas.FieldByName('Data_Emissao').AsDateTime;
          NotasItens.ParamByName('pCodigo').AsInteger := Utilitarios_AjustarEstoqueInventario.tItens.FieldByName('Codigo_Mercadoria').AsInteger;
          NotasItens.ParamByName('pItem').AsInteger   := Utilitarios_AjustarEstoqueInventario.tItens.FieldByName('Item').AsInteger;
          NotasITens.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
          Produtos.Open;

          CSTPIS.SQL.Clear;
          CSTPIS.SQL.Add('SELECT * FROM CSTPIS ORDER BY Codigo');
          CSTPIS.Open;

          CSTCOFINS.SQL.Clear;
          CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS ORDER BY Codigo');
          CSTCOFINS.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
          ProcessosDOC.Open;

          with Dados, ControleNavios do begin
               sql.Clear;
               sql.Add('select * from ControleNavios');
               sql.add('where Registro is not null');
               sql.add('order by Ordem');
               open;
          end;

          NotasItens.Edit;

          mCodigo := NotasItensCodigo_Mercadoria.AsInteger;
     end;
end;

procedure TUtilitarios_AjustarItem.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Ordem';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      cNavio.keyValue := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TUtilitarios_AjustarItem.bSairClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           NotasItens.Cancel;
      end;     
      Close;
end;

procedure TUtilitarios_AjustarItem.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Utilitarios_AjustarItem.Release;
     Utilitarios_AjustarItem := nil;
end;

procedure TUtilitarios_AjustarItem.bAplicarClick(Sender: TObject);
begin
     with dmFiscal, Dados do begin
          NotasItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
          NotasItensCodigo_Fabricante.Value    := ProdutosCodigo_Fabricante.Value;
          NotasItens.Post;

          // Ajusta o produto nos lotes caso haja alteração no item da nota fiscal.
          if NotasItensCodigo_Mercadoria.AsInteger <> mCodigo then begin
             NotasItensDetalhe.SQL.Clear;
             NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE Produto_Codigo = :pCodigo AND Nota = :pNota AND Data_Emissao = :pData');
             NotasItensDetalhe.ParamByName('pCodigo').AsInteger := mCodigo;
             NotasItensDetalhe.ParamByName('pNota').AsInteger   := NotasItensNota.AsInteger;
             NotasItensDetalhe.ParamByName('pData').AsDate      := NotasItensData.Value;
             NotasItensDetalhe.Open;
             if NotasItensDetalhe.RecordCount > 0 then begin
                NotasItensDetalhe.Edit;
                                  NotasItensDetalheProduto_Codigo.Value := NotasItensCodigo_Mercadoria.AsInteger;
                NotasItensDetalhe.Post;
             end;
          end;
     end;

     Close;
end;

end.
