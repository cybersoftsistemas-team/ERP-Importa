unit frmNFe_CartaCorrecaoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DBCtrls, RxLookup,
  Buttons, DBGrids, RXDBCtrl, system.UITypes, Grids, Mask, RxCurrEdit, RxToolEdit, Data.DB;

type
  TNFe_CartaCorrecaoItem = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    StaticText20: TStaticText;
    cNota: TCurrencyEdit;
    cData: TDateEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    bFiltro: TSpeedButton;
    DBGrid1: TDBGrid;
    bAlterar: TButton;
    bDesfazer: TButton;
    GroupBox1: TGroupBox;
    StaticText3: TStaticText;
    StaticText6: TStaticText;
    cNaturezaAtual: TRxDBLookupCombo;
    cNaturezaNova: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cNaturezaAlterada: TRxDBLookupCombo;
    bSalvar: TButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bDesfazerClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bSalvarClick(Sender: TObject);
    procedure cNaturezaNovaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NFe_CartaCorrecaoItem: TNFe_CartaCorrecaoItem;

implementation

uses frmDMFiscal, frmNFe_CartaCorrecaoItemQuantidade, frmDados;

{$R *.dfm}

procedure TNFe_CartaCorrecaoItem.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TNFe_CartaCorrecaoItem.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     NFe_CartaCorrecaoItem.Release;
     NFe_CartaCorrecaoItem := nil;
end;

procedure TNFe_CartaCorrecaoItem.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFe_CartaCorrecaoItem.FormShow(Sender: TObject);
begin
      With dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais ORDER BY NUmero, Data_Emissao');
           Notas.Open;
           bDesfazer.Enabled := NotasItensQuantidade_Original.Value > 0;
           bAlterar.Enabled  := NotasItensQuantidade_Original.Value = 0;
      End;
end;

procedure TNFe_CartaCorrecaoItem.bFiltroClick(Sender: TObject);
begin
      With dmFiscal, Dados do begin
           NotasItens.SQL.Clear;
           NotasItens.SQL.Add('SELECT * FROM NotasItens NI');
           NotasItens.SQL.Add('WHERE(Nota = :pNota) AND (Data = :pData)');
           NotasItens.SQL.Add('  AND(SELECT COUNT(*) FROM CartaCorrecao CC WHERE(CC.Nota = NI.Nota) AND (CC.Data_Emissao = NI.Data)) > 0');
           NotasItens.SQL.Add('ORDER BY Nota, Data, Item');
           NotasItens.ParamByName('pNota').AsInteger := cNota.AsInteger;
           NotasItens.ParamByName('pData').AsDate    := cData.Date;
           NotasItens.Open;

           If NotasItens.RecordCount = 0 then begin
              MessageDlg('Alterações só podem ser feitas em notas que possuem Carta de Correção!', mtInformation, [mbOK], 0);
           End;

           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais NF');
           Notas.SQL.Add('WHERE(Numero = :pNota) AND (Data_Emissao = :pData)');
           Notas.SQL.Add('  AND(SELECT COUNT(*) FROM CartaCorrecao CC WHERE(CC.Nota = NF.Numero) AND (CC.Data_Emissao = NF.Data_Emissao)) > 0');
           Notas.ParamByName('pNota').AsInteger := cNota.AsInteger;
           Notas.ParamByName('pData').AsDate    := cData.Date;
           Notas.Open;

           Unidades.SQL.Clear;
           Unidades.SQL.Add('SELECT * FROM UnidadeMedida ORDER BY Descricao');
           Unidades.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Saida_Entrada = :pSaidaEntrada) ORDER BY Codigo');
           Natureza.ParamByName('pSaidaEntrada').AsInteger := NotasSaida_Entrada.AsInteger;
           Natureza.Open;
      End;
end;

procedure TNFe_CartaCorrecaoItem.bAlterarClick(Sender: TObject);
begin
      NFe_CartaCorrecaoItemQuantidade := TNFe_CartaCorrecaoItemQuantidade.Create(Self);
      NFe_CartaCorrecaoItemQuantidade.Caption := Caption;
      NFe_CartaCorrecaoItemQuantidade.ShowModal;
      
      bDesfazer.Enabled := dmFiscal.NotasItensQuantidade_Original.Value > 0;
      bAlterar.Enabled  := dmFiscal.NotasItensQuantidade_Original.Value = 0;
end;

procedure TNFe_CartaCorrecaoItem.bDesfazerClick(Sender: TObject);
begin
      With dmFiscal do begin
           If MessageDlg('Deseja desfazer realmente a alteração?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              NotasItens.Edit;
                         NotasItensUnidade_Medida.Value      := NotasItensUnidade_Original.Value;
                         NotasItensQuantidade.Value          := NotasItensQuantidade_Original.Value;
                         NotasItensUnidade_Original.Clear;
                         NotasItensQuantidade_Original.Value := 0;
              Notasitens.Post;
           End;

           bDesfazer.Enabled := NotasItensQuantidade_Original.Value > 0;
           bAlterar.Enabled  := NotasItensQuantidade_Original.Value = 0;
      End;
end;

procedure TNFe_CartaCorrecaoItem.DBGrid1CellClick(Column: TColumn);
begin
      bDesfazer.Enabled := dmFiscal.NotasItensQuantidade_Original.Value > 0;
      bAlterar.Enabled  := dmFiscal.NotasItensQuantidade_Original.Value = 0;
end;

procedure TNFe_CartaCorrecaoItem.bSalvarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente salvar a alteração na "Natureza da Operação" ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         With dmFiscal do begin
              Notas.Edit;
                    If NotasNatureza_Correcao.Value <> cNaturezaNova.KeyValue then begin
                       NotasNatureza_Correcao.Value := NotasNatureza_Codigo.Value;
                       NotasNatureza_Codigo.Value   := cNaturezaNova.KeyValue;
                    end else begin
                       NotasNatureza_Correcao.Clear;
                       NotasNatureza_Codigo.Value   := cNaturezaNova.KeyValue;
                    End;
              Notas.Post;
              cNaturezaNova.ClearValue;
         End;
      End;
end;

procedure TNFe_CartaCorrecaoItem.cNaturezaNovaChange(Sender: TObject);
begin
      bSalvar.Enabled := Trim(cNaturezaNova.DisplayValue) <> '';
end;

end.
