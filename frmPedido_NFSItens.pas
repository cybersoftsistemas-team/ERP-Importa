unit frmPedido_NFSItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, RxCtrls;

type
  TPedido_NFSItens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cQtde: TDBEdit;
    cUnitario: TDBEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cProduto: TDBLookupComboBox;
    StaticText4: TStaticText;
    cTotal: TDBEdit;
    StaticText9: TStaticText;
    cProcesso: TDBLookupComboBox;
    GradeItens: TDBGrid;
    tItem: TMSQuery;
    cValor_INSS: TDBEdit;
    cValor_PIS: TDBEdit;
    cValor_COFINS: TDBEdit;
    cValor_CSLL: TDBEdit;
    cValor_IRPJ: TDBEdit;
    cAliquota_INSS: TDBEdit;
    cAliquota_PIS: TDBEdit;
    cAliquota_COFINS: TDBEdit;
    cAliquota_CSLL: TDBEdit;
    cAliquota_IRPJ: TDBEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText11: TStaticText;
    bVinculo: TButton;
    Image1: TImage;
    lTitulo: TRxLabel;
    RxLabel3: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cProdutoExit(Sender: TObject);
    procedure cQtdeChange(Sender: TObject);
    procedure cUnitarioChange(Sender: TObject);
    procedure bVinculoClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
  private
    procedure CalculaTudo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_NFSItens: TPedido_NFSItens;

implementation

{$R *.dfm}

uses frmDados, FUNCOES, frmPedido_NFSVinculo;

procedure TPedido_NFSItens.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TPedido_NFSItens.cProdutoExit(Sender: TObject);
begin
     with Dados do begin
          with PedidoServicoItens do begin                                                              
               fieldbyname('Aliquota_INSS').Value   :=  Produtos.fieldbyname('AliquotaINSS_Serv').asfloat;
               fieldbyname('Aliquota_PIS').Value    :=  Produtos.fieldbyname('AliquotaPIS_Serv').asfloat;
               fieldbyname('Aliquota_COFINS').Value :=  Produtos.fieldbyname('AliquotaCOFINS_Serv').asfloat;
               fieldbyname('Aliquota_CSLL').Value   :=  Produtos.fieldbyname('AliquotaCSLL_Serv').asfloat;
               fieldbyname('Aliquota_IRPJ').Value   :=  Produtos.fieldbyname('AliquotaIRPJ_Serv').asfloat;
               fieldbyname('Aliquota_CPP').Value    :=  Produtos.fieldbyname('AliquotaCPP_Serv').asfloat;
               fieldbyname('Aliquota_IPI').Value    :=  Produtos.fieldbyname('AliquotaIPI_Serv').asfloat;
          end;
     end;
     CalculaTudo;
end;

procedure TPedido_NFSItens.cQtdeChange(Sender: TObject);
begin
     CalculaTudo;
end;
     
procedure TPedido_NFSItens.cUnitarioChange(Sender: TObject);
begin
     CalculaTudo;
end;

procedure TPedido_NFSItens.bVinculoClick(Sender: TObject);
begin
     Pedido_NFSVinculo := TPedido_NFSVinculo.create(self);
     Pedido_NFSVinculo.caption := caption;
     Pedido_NFSVinculo.showmodal;
end;

procedure TPedido_NFSItens.CalculaTudo;
begin
     if Active then begin
        with Dados do begin
             with PedidoServicoItens do begin                                                              
                  if state in[dsEdit, dsInsert] then begin
                     fieldbyname('Valor_Total').Value  := fieldbyname('Valor_Unitario').asfloat * fieldbyname('Quantidade').asfloat;
                     
                     fieldbyname('Valor_INSS').Value := 0;
                     fieldbyname('Valor_PIS').Value  := 0;
                     fieldbyname('Valor_PIS').Value  := 0;
                     fieldbyname('Valor_CSLL').Value := 0;
                     fieldbyname('Valor_IRPJ').Value := 0;
                        
                     if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_INSS').AsCurrency then begin
                        fieldbyname('Valor_INSS').Value := Percentual(fieldbyname('Valor_Total').ascurrency, fieldbyname('Aliquota_INSS').asfloat);
                     end;
                     if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_PIS').AsCurrency then begin
                        fieldbyname('Valor_PIS').Value    := Percentual(fieldbyname('Valor_Total').ascurrency, fieldbyname('Aliquota_PIS').asfloat);
                     end;
                     if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_COFINS').AsCurrency then begin
                        fieldbyname('Valor_PIS').Value    := Percentual(fieldbyname('Valor_Total').ascurrency, fieldbyname('Aliquota_PIS').asfloat);
                     end;
                     if Empresas.FieldByName('Regime').asstring = 'R' then begin
                        if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_CSLL').AsCurrency then begin
                           fieldbyname('Valor_CSLL').Value := fieldbyname('Valor_Total').ascurrency * (fieldbyname('Aliquota_CSLL').asfloat/100);
                        end;
                        if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_IR').AsCurrency then begin
                           fieldbyname('Valor_IRPJ').Value := fieldbyname('Valor_Total').ascurrency * (fieldbyname('Aliquota_IRPJ').asfloat/100);
                        end;
                     end;
                     if Empresas.FieldByName('Regime').asstring = 'P' then begin
                        if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_CSLL').AsCurrency then begin
                           fieldbyname('Valor_CSLL').Value := (fieldbyname('Valor_Total').ascurrency * 0.32) * (fieldbyname('Aliquota_CSLL').asfloat);
                        end;
                        if fieldbyname('Valor_Total').ascurrency > Servicos.FieldByName('Limite_IRPJ').AsCurrency then begin
                           fieldbyname('Valor_IRPJ').Value := (fieldbyname('Valor_Total').ascurrency * 0.32) * (fieldbyname('Aliquota_IRPJ').asfloat);
                        end;
                     end;
                  end;
             end;
        end;
     end;
end;

procedure TPedido_NFSItens.FormCreate(Sender: TObject);
begin
      if FileExists('Fundo_Barra_Roxo.bmp') then Image1.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
end;

procedure TPedido_NFSItens.FormShow(Sender: TObject);
begin
     with Dados do begin
          with Produtos do begin
               sql.Clear;
               sql.Add('select * from Produtos where isnull(Servico, 0) = 1 order by Descricao_Reduzida');
               open;
          end;
          with ProcessosDOC do begin
               sql.Clear;
               sql.Add('select * from ProcessosDocumentos where isnull(Desativado, 0) = 0 and Data_Encerramento is null');
               open;
          end;
          with Impostos do begin 
               sql.clear;
               sql.add('select * from Impostos order by Descricao');
               open;
          end;
          with Servicos do begin 
               sql.clear;
               sql.add('select * from Servicos where Codigo = :pCod');
               parambyname('pCod').AsString := PedidoServico.FieldByName('Servico').AsString;
               open;
          end;
     end;
end;

procedure TPedido_NFSItens.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with Dados do begin
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este Item?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort
              end;
           end;
     end;
end;

procedure TPedido_NFSItens.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
  i: Integer;
begin
      Screen.Cursor  := crSQLWait;
      Panel2.Enabled := Button in[nbEdit, nbInsert];
      with Dados do begin
           if Button in[nbEdit, nbInsert] then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              cProduto.SetFocus;
           end;
      end;
      Screen.Cursor := crDefault;
end;



end.
