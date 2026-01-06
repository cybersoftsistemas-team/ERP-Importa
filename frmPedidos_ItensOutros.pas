unit frmPedidos_ItensOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids,
  RXDBCtrl, Mask, mdTabEnter, DB, Funcoes, MemDS, DBAccess, MSAccess ;

type
  TDBGridDescendant = class(TDBGrid);
  TPedidos_ItensOutros = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    XPPanel1: TXPPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    gItens: TGroupBox;
    GradeItens: TRxDBGrid;
    Panel2: TPanel;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cQuantidade: TDBEdit;
    cValorUnitario: TDBEdit;
    cProduto: TDBLookupComboBox;
    cCodigo: TDBEdit;
    TabEnter1: TTabEnter;
    StaticText1: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText3: TStaticText;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    StaticText6: TStaticText;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    cBCICMSSub: TDBEdit;
    cBCICMS: TDBEdit;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    DBEdit23: TDBEdit;
    StaticText31: TStaticText;
    DBEdit24: TDBEdit;
    StaticText32: TStaticText;
    DBEdit25: TDBEdit;
    cBCIPI: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    StaticText14: TStaticText;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    cValorTotal: TDBEdit;
    StaticText11: TStaticText;
    DBEdit1: TDBEdit;
    StaticText7: TStaticText;
    StaticText13: TStaticText;
    DBEdit4: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    tItem: TMSQuery;
    tPesquisa: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure cCodigoChange(Sender: TObject);
    procedure cQuantidadeChange(Sender: TObject);
    procedure cBCICMSChange(Sender: TObject);
    procedure cBCICMSSubChange(Sender: TObject);
    procedure cBCIPIChange(Sender: TObject);  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedidos_ItensOutros: TPedidos_ItensOutros;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TPedidos_ItensOutros.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TPedidos_ItensOutros.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedidos_ItensOutros.Release;
      Pedidos_ItensOutros := nil;
end;

procedure TPedidos_ItensOutros.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedidos_ItensOutros.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados, dmFiscal do begin
             PedidosItens.SQL.Clear;
             PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
             PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             PedidosItens.Open;

             NotasItens.SQL.Clear;
             NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota)');
             NotasItens.ParamByName('pNota').AsInteger := PedidosNota_Referencia.Value;
             NotasItens.Open;

             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos');
             If PedidosNota_Referencia.Value > 0 then begin
                Produtos.SQL.Add('WHERE  Codigo IN( SELECT DISTINCT Codigo_Mercadoria FROM NotasItens WHERE (Nota = :pNota) )');
                Produtos.ParamByName('pNota').AsInteger   := PedidosNota_Referencia.AsInteger;
             End;   
             Produtos.SQL.Add('ORDER BY Descricao_Reduzida');
             Produtos.Open;

             CSTTabelaB.SQL.Clear;
             CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
             CSTTabelaB.Open;

             CSTIPI.SQL.Clear;
             CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Descricao');
             CSTIPI.Open;

             CSTPIS.SQL.Clear;
             CSTPIS.SQL.Add('SELECT * FROM CSTPIS ORDER BY Descricao');
             CSTPIS.Open;

             CSTCOFINS.SQL.Clear;
             CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS ORDER BY Descricao');
             CSTCOFINS.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TPedidos_ItensOutros.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedidos_ItensOutros.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
   mCST : String;
begin
      With Dados, dmFiscal do begin
           If (PedidosItens.State = dsInsert) and (Button = nbPost) then begin
              tPesquisa.SQL.Clear;
              tPesquisa.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) AND (Codigo_Mercadoria = :pCodigo)');
              tPesquisa.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              tPesquisa.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              tPesquisa.Open;
              If tPesquisa.RecordCount > 0 then begin
                 ShowMessage('Item ja informado nesta nota fiscal.');
                 Abort;
              End;
           End;
           
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              tItem.SQL.Clear;
              tItem.SQL.Add('SELECT COUNT(Item) AS Item FROM PedidosItens WHERE (Pedido = :pPedido)');
              tItem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              tItem.Open;
             
              PedidosItensPedido.Value             := PedidosNumero.Value;
              PedidosItensItem.Value               := tItem.FieldByName('Item').AsInteger + 1;
              PedidosItensSequencia_SISCOMEX.Value := PedidosItensItem.Value;
           End;
      End;
end;

procedure TPedidos_ItensOutros.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      With HintInfo do begin
           If HintControl is TDBGrid then
              With TDBGridDescendant(HintControl),gridCoord do begin
                    Application.HideHint;
                    //Tempo que demora para exibir novamente
                    //se continuar com o mouse sobre o DBGrid
                    //ReshowTimeout := 7000;
                    gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                    Try
                       curPos := DataLink.ActiveRecord;
                       try
                          DataLink.ActiveRecord := y-1;
                          if not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                             HintStr := '';
                             With Dados do begin
                                  //Produtos.Locate('Codigo', AdicoesCodigo_Mercadoria.Value, [loCaseInsensitive]);
                                  mTexto := Dados.ProdutosDescricao.Value;
                                  mTexto  := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                  mTam   := 1;
                                  For i := 1 to Length(mTexto) do begin
                                      HintStr := HintStr + Copy(mTexto, i, 1);
                                      Inc(mTam);
                                      If mTam = 50 then begin
                                         HintStr := HintStr + #13;
                                         mtam    := 1;
                                      End;
                                  End;
                             End;
                          end else
                             HintStr := '\';
                       finally
                          DataLink.ActiveRecord := CurPos
                       end;
                       CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                    except
                       CanShow := False
                    End;
           End;
      End;
end;


procedure TPedidos_ItensOutros.cCodigoChange(Sender: TObject);
Var
    mTextoLimpo : Widestring;
begin
      With Dados, dmFiscal do begin
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              NotasItens.Locate('Nota; Data', VarArrayOf([PedidosNota_Referencia.Value, PedidosData_Referencia.Value]), [loCaseInsensitive]);

              // Remove caracteres de controle da descrição do produto.
              mTextoLimpo := RemoveCaracter(#13,'', ProdutosDescricao.Value);
              mTextoLimpo := RemoveCaracter(#12,'', mTextoLimpo);
              mTextoLimpo := RemoveCaracter(#10,'', mTextoLimpo);
              mTextoLimpo := RemoveCaracter('<{'+Trim(ProdutosCodigo.AsString)+'}>', '', mTextoLimpo);

              PedidosItensCodigoTrib_TabA.Value      := NotasItensCodigoTrib_TabA.Value;
              PedidosItensCodigoTrib_TabB.Value      := NotasItensCodigoTrib_TabB.Value;
              PedidosItensCSTIPI.Value               := NotasItensCSTIPI.Value;
              PedidosItensCSTPIS.Value               := NotasItensCSTPIS.Value;
              PedidosItensCSTCOFINS.Value            := NotasItensCSTCOFINS.Value;
              PedidosItensDescricao_Mercadoria.Value := Trim(mTextoLimpo);
              PedidosItensPeso_Liquido.Value         := ProdutosPeso_Liquido.Value;
              PedidosItensPeso_Bruto.Value           := ProdutosPeso_Bruto.Value;
              PedidosItensAliquota_ICMSOper.Value    := NotasitensAliquota_ICMSOper.Value;
              PedidosItensAliquota_IPI.Value         := NotasItensAliquota_IPI.Value;
              PedidosItensAliquota_PIS.Value         := NotasItensAliquota_PIS.Value;
              PedidosItensAliquota_COFINS.Value      := NotasItensAliquota_COFINS.Value;
           End;
      End;
end;

procedure TPedidos_ItensOutros.cQuantidadeChange(Sender: TObject);
begin
      With Dados do begin
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
               PedidosItensValor_Total.Value := PedidosItensQuantidade.Value * PedidosItensValor_Unitario.Value;
           End;    
      End;
end;

procedure TPedidos_ItensOutros.cBCICMSChange(Sender: TObject);
begin
      With Dados do begin
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              PedidosItensValor_ICMSOper.Value := Percentual(PedidosItensValor_BCICMSOper.Value, PedidosItensAliquota_ICMSOper.Value);
           End;
      End;
end;

procedure TPedidos_ItensOutros.cBCICMSSubChange(Sender: TObject);
begin
      With Dados do begin
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              PedidosItensValor_ICMSSub.Value := Percentual(PedidosItensValor_BCICMSSub.Value, PedidosItensAliquota_ICMSSub.Value);
           End;
      End;
end;

procedure TPedidos_ItensOutros.cBCIPIChange(Sender: TObject);
begin
      With Dados do begin
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              PedidosItensValor_IPI.Value := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_IPI.Value);
              PedidosItensTotal_IPI.Value := Percentual(PedidosItensValor_Total.Value, PedidosItensAliquota_IPI.Value);
           End;
      End;
end;

end.
