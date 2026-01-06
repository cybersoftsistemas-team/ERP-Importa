unit frmPedido_TelevendasCatalogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCGrids, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Buttons;

type
  TPedido_TelevendasCatalogo = class(TForm)
    Grade: TDBCtrlGrid;
    Panel3: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tItens: TMSQuery;
    tItensCodigo: TIntegerField;
    tItensSKU: TStringField;
    tItensDescricao: TStringField;
    tItensMinimo: TFloatField;
    tItensEstoque: TFloatField;
    tItensValor: TCurrencyField;
    dstItens: TDataSource;
    Label3: TLabel;
    DBText3: TDBText;
    Panel1: TPanel;
    cImagem: TImage;
    Label1: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    DBMemo1: TDBMemo;
    bPesquisa: TSpeedButton;
    cPesquisa: TEdit;
    Label6: TLabel;
    cLimpar: TSpeedButton;
    tItensDescricao_Reduzida: TStringField;
    tItensPeso_Liquido: TFloatField;
    tItensAliquota_IPI: TFloatField;
    tItensDesconto_A: TFloatField;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure GradePaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cLimparClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_TelevendasCatalogo: TPedido_TelevendasCatalogo;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, frmPedido_TelevendasCatalogoItem;

procedure TPedido_TelevendasCatalogo.bPesquisaClick(Sender: TObject);
begin
      with tItens do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,SKU = Codigo_SKU');
           sql.Add('      ,Descricao = ltrim(rtrim(replace(Descricao, ''<{''+cast(Codigo as varchar(15))+''}>'', '''')))');
           sql.add('      ,Descricao_Reduzida');
           sql.add('      ,Minimo = Estoque_Minimo');
           sql.add('      ,Valor = Valor_Venda');
           sql.add('      ,Aliquota_IPI');
           sql.add('      ,Peso_Liquido');
           sql.add('      ,Desconto_A');
           //sql.add('      ,Estoque = Estoque_Disponivel');
           
           if not Dados.ConfiguracaoTela_LiberaPedidos.AsBoolean then begin
              // Apuração do estoque do produtos para quem emite nota fiscal de pedidos dos representantes.
              sql.Add('      ,Estoque = cast(');
              sql.Add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from NotasItens');
              sql.Add('                           where Codigo_Mercadoria = pd.Codigo');
              sql.Add('                           and Saida_Entrada = 0');
              sql.Add('                           and Movimenta_Estoque = 1');
              sql.Add('                           and Cancelada <> 1');
              sql.Add('                           and isnull(NFe_Denegada, 0) = 0), 0) +');
              sql.Add('                           isnull((select sum(Quantidade) from NotasTerceirosItens where Codigo_Mercadoria = pd.Codigo and Movimenta_Estoque = 1), 0) +');
              sql.Add('                   isnull((select sum(Quantidade_Entrada)');
              sql.Add('                           from ProdutosTransferencia');
              sql.Add('                           where Produto_Entrada = pd.Codigo), 0) -');
              sql.Add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from NotasItens');
              sql.Add('                           where Codigo_Mercadoria = pd.Codigo');
              sql.Add('                           and Saida_Entrada = 1');
              sql.Add('                           and Movimenta_Estoque = 1');
              sql.Add('                           and Cancelada <> 1');
              sql.Add('                           and isnull(NFe_Denegada, 0) = 0), 0) -');
              sql.Add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from PedidosItens');
              sql.Add('                           where Codigo_Mercadoria = pd.Codigo');
              sql.Add('                           and Saida_Entrada = 1');
              sql.Add('                           and Movimenta_Estoque = 1), 0) -');
              sql.Add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from ProdutosTransferencia');
              sql.Add('                           where Produto_Saida = pd.Codigo), 0) -');
              sql.Add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from PedidosRepresentantesItens pri');
              sql.Add('                           where Codigo_Mercadoria = pd.Codigo');
              sql.Add('                           and isnull(Faturamento, 0) = 0');
              sql.Add('                           and isnull(Faturado, 0) = 0');
              sql.Add('                           and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
              sql.Add('                           and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
              sql.add('                   as decimal(14,3))');
           end else begin
              // Apuração do estoque do produtos para quem não emite nota fiscal de pedidos dos representantes.
              sql.add('      ,Estoque = cast(');
              sql.add('                   isnull((select sum(Quantidade)');
              sql.add('                           from NotasTerceirosItens');
              sql.Add('                           where Codigo_Mercadoria = pd.Codigo');
              sql.add('                           and Movimenta_Estoque = 1), 0) +');
              sql.add('                   isnull((select sum(Quantidade_Entrada)');
              sql.Add('                           from ProdutosTransferencia');
              sql.Add('                           where Produto_Entrada = pd.Codigo), 0) -');
              sql.add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from ProdutosTransferencia');
              sql.Add('                           where Produto_Saida = pd.Codigo), 0) -');
              sql.add('                   isnull((select sum(Quantidade)');
              sql.Add('                           from PedidosRepresentantesItens pri');
              sql.Add('                           where Codigo_Mercadoria = pd.Codigo');
              sql.Add('                           and isnull(Faturamento, 0) = 0');
              sql.Add('                           and isnull(Faturado, 0) = 0');
              sql.Add('                           and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0), 0) ');
              sql.add('                   as decimal(14,3))');
           end;
           
           sql.add('from  Produtos pd');
           sql.add('where isnull(Desativado, 0) = 0');
           sql.add('and isnull(Valor_Venda, 0) > 0');
           if cPesquisa.Text <> '' then begin
              sql.Add('and Descricao like ' +quotedstr('%'+cPesquisa.text+'%'));
           end;
           if not Dados.ConfiguracaoTela_LiberaPedidos.AsBoolean then begin
              // Apuração do estoque do produtos para quem emite nota fiscal de pedidos dos representantes.
              sql.Add('and cast(isnull((select sum(Quantidade)');
              sql.Add('                   from NotasItens ni');
              sql.Add('                   where ni.Codigo_Mercadoria = pd.Codigo');
              sql.Add('                   and Saida_Entrada = 0');
              sql.Add('                   and Movimenta_Estoque = 1');
              sql.Add('                   and Cancelada <> 1');
              sql.Add('                   and isnull(NFe_Denegada, 0) = 0), 0) +');
              sql.Add('                   isnull((select sum(Quantidade) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = pd.Codigo and Movimenta_Estoque = 1), 0) +');
              sql.Add('           isnull((select sum(Quantidade_Entrada)');
              sql.Add('                   from ProdutosTransferencia pt');
              sql.Add('                   where pt.Produto_Entrada = pd.Codigo), 0) -');
              sql.Add('           isnull((select sum(Quantidade)');
              sql.Add('                   from NotasItens ni');
              sql.Add('                   where ni.Codigo_Mercadoria = pd.Codigo');
              sql.Add('                   and Saida_Entrada = 1');
              sql.Add('                   and Movimenta_Estoque = 1');
              sql.Add('                   and Cancelada <> 1');
              sql.Add('                   and isnull(NFe_Denegada, 0) = 0), 0) -');
              sql.Add('           isnull((select sum(Quantidade)');
              sql.Add('                   from PedidosItens pi');
              sql.Add('                   where pi.Codigo_Mercadoria = pd.Codigo');
              sql.Add('                   and Saida_Entrada = 1');
              sql.Add('                   and Movimenta_Estoque = 1), 0) -');
              sql.Add('           isnull((select sum(Quantidade)');
              sql.Add('                   from ProdutosTransferencia pt');
              sql.Add('                   where pt.Produto_Saida = pd.Codigo), 0) -');
              sql.Add('           isnull((select sum(Quantidade)');
              sql.Add('                   from PedidosRepresentantesItens pri');
              sql.Add('                   where pri.Codigo_Mercadoria = pd.Codigo');
              sql.Add('                   and isnull(Faturamento, 0) = 0');
              sql.Add('                   and isnull(Faturado, 0) = 0');
              sql.Add('                   and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
              sql.Add('                   and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
              sql.add('       as decimal(18,3)) > 0');
           end else begin
              // Apuração do estoque do produtos para quem não emite nota fiscal de pedidos dos representantes.
              sql.add('and (cast(');
              sql.add('       isnull((select sum(Quantidade)');
              sql.add('               from NotasTerceirosItens nti');
              sql.Add('               where nti.Codigo_Mercadoria = pd.Codigo');
              sql.add('               and Movimenta_Estoque = 1), 0) +');
              sql.add('       isnull((select sum(Quantidade_Entrada)');
              sql.Add('               from ProdutosTransferencia pt');
              sql.Add('               where pt.Produto_Entrada = pd.Codigo), 0) -');
              sql.add('       isnull((select sum(Quantidade)');
              sql.Add('               from ProdutosTransferencia pt');
              sql.Add('               where pt.Produto_Saida = pd.Codigo), 0) -');
              sql.add('       isnull((select sum(Quantidade)');
              sql.Add('               from PedidosRepresentantesItens pri');
              sql.Add('               where pri.Codigo_Mercadoria = pd.Codigo');
              sql.Add('               and isnull(pri.Faturamento, 0) = 0');
              sql.Add('               and isnull(pri.Faturado, 0) = 0');
              sql.Add('               and pri.Cancelado <> 1), 0) ');
              sql.add('       as decimal(18,3))) > 0');
           end;
           sql.add('order by Descricao_Reduzida');
           sql.SaveToFile('c:\temp\Televendas_Catalogo.sql');
           open;
      end;
end;

procedure TPedido_TelevendasCatalogo.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_TelevendasCatalogo.cLimparClick(Sender: TObject);
begin
     cPesquisa.Clear;
     bPesquisa.Click;
end;

procedure TPedido_TelevendasCatalogo.cPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key = 13 then bPesquisa.Click;
end;

procedure TPedido_TelevendasCatalogo.FormCreate(Sender: TObject);
begin
      if Screen.Height <= 800 then begin
         ScaleBy(93, 100);
      end;

//    Width  := Menu_Principal.Fundo.width-10;
//    Height := Menu_Principal.Fundo.Height-30;
//    Top    := Menu_Principal.Fundo.Top+50;
//    Left   := Menu_Principal.Fundo.Left;
end;

procedure TPedido_TelevendasCatalogo.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  i: Integer;
  DataSet: TDataSet;
begin
    titens.DisableControls;
    if not Grade.ClientRect.Contains(Grade.ScreenToClient(MousePos)) then Exit;
    if not Assigned(Grade.DataSource) then Exit;
    if WheelDelta > 0 then begin
       keybd_event(VK_PRIOR, 0, 0, 0);
    end else begin
       keybd_event(VK_NEXT, 0, 0, 0);
    end;
    Handled := True;
    tItens.EnableControls;
end;

procedure TPedido_TelevendasCatalogo.FormShow(Sender: TObject);
begin
      with Dados do begin
           Configuracao.Open;
      end;
      bPesquisa.Click;
end;

procedure TPedido_TelevendasCatalogo.GradeDblClick(Sender: TObject);
begin
     Pedido_TelevendasCatalogoItem := TPedido_TelevendasCatalogoItem.create(Self);
     Pedido_TelevendasCatalogoItem.Caption := Caption+ ' - Adicionar Item';
     Pedido_TelevendasCatalogoItem.showmodal;
end;

procedure TPedido_TelevendasCatalogo.GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key = 13 then begin
        Pedido_TelevendasCatalogoItem := TPedido_TelevendasCatalogoItem.create(Self);
        Pedido_TelevendasCatalogoItem.Caption := Caption+ ' - Adicionar Item';
        Pedido_TelevendasCatalogoItem.showmodal;
     end;
end;

procedure TPedido_TelevendasCatalogo.GradePaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var
   mFoto, mSem: string;
begin
     with Dados do begin
          mFoto := ConfiguracaoPasta_Imagens.Value+'\'+tItens.FieldByName('Codigo').asString+'.jpg';
          mSem  := ExtractFilePath(Application.ExeName)+'ProdutoSemFoto.jpg';
          cImagem.Picture := nil;
          if FileExists(mFoto) then begin
             try
                cImagem.Picture.LoadFromFile(mFoto);
             except
                cImagem.Picture := nil;
                if FileExists(mSem) then begin
                   try
                     cImagem.Picture.LoadFromFile(mSem);
                   except
                     cImagem.Picture := nil;
                   end;
                end;
             end;
          end else begin
              cImagem.Picture := nil;
              if FileExists(mSem) then begin
                 try
                   cImagem.Picture.LoadFromFile(mSem);
                 except
                   cImagem.Picture := nil;
                 end;
              end;
          end;
     end;
end;


end.
