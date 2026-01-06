unit frmProforma_Itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, DBCtrls, Mask, Vcl.ExtCtrls, Grids,
  DBGrids, RXDBCtrl, Funcoes, system.UITypes, MemDS;

type
  TDBGridDescendant = class(TDBGrid);
  TProforma_Itens = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    GradeItens: TRxDBGrid;
    Panel1: TPanel;
    GradeProdutos: TRxDBGrid;
    StaticText1: TStaticText;
    cPesquisa: TEdit;
    tRegistro: TMSQuery;
    bAdicionar: TButton;
    StaticText4: TStaticText;
    cCodigo: TDBEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    cValor: TDBEdit;
    cQtde: TDBEdit;
    bImportar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure GradeProdutosMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure GradeItensDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure GradeItensDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cCodigoDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure cCodigoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure bImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Proforma_Itens: TProforma_Itens;

implementation

uses frmDados, frmProforma_ItensImportar;

{$R *.dfm}

procedure TProforma_Itens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      //FecharTabelas(Dados, nil, nil, nil);
      LimpaMemoria;
      Proforma_Itens.Release;
      Proforma_Itens := nil;
end;

procedure TProforma_Itens.FormShow(Sender: TObject);
begin
      With Dados do begin
           Produtos.SQL.Clear; 
           Produtos.SQL.Add('SELECT *');
           Produtos.SQL.Add('FROM   Produtos');
           Produtos.SQL.Add('WHERE  ISNULL(Desativado, 0) <> 1');
           Produtos.SQL.Add('ORDER BY Descricao');
           Produtos.Open;

           ProformaItens.SQL.Clear;
           ProformaItens.SQL.Add('SELECT *');
           ProformaItens.SQL.Add('      ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           ProformaItens.SQL.Add('FROM   ProformaItens');
           ProformaItens.SQL.Add('WHERE  Proforma = :pProforma');
           ProformaItens.SQL.Add('ORDER  BY Item');
           ProformaItens.ParamByName('pProforma').AsString := Dados.ProcessosDOCProforma_Numero.AsString;
           ProformaItens.Open;
      End;
end;

procedure TProforma_Itens.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TProforma_Itens.cPesquisaChange(Sender: TObject);
begin
      with Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT *');
           Produtos.SQL.Add('FROM   Produtos');
           Produtos.SQL.Add('WHERE  ISNULL(Desativado, 0) <> 1');
           if cPesquisa.Text <> '' then begin
              Produtos.SQL.Add('AND    Descricao LIKE '+QuotedStr('%'+Trim(cPesquisa.Text)+'%'));
           end;   
           Produtos.SQL.Add('ORDER BY Descricao');
           Produtos.Open;
      end;
end;

procedure TProforma_Itens.bAdicionarClick(Sender: TObject);
begin
      with Dados do begin
           ProformaItensCodigo_Mercadoria.Value := ProdutosCodigo.Value;
      end;     
end;

procedure TProforma_Itens.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      if (Button = nbEdit) and (Dados.ProformaItens.RecordCount = 0) then begin
         Navega.BtnClick(nbCancel);
         Abort;
      end;
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel1.Enabled := true;
         cPesquisa.SetFocus
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         Panel1.Enabled := false;
         Dados.ProformaItens.Refresh;
      End;
      Screen.Cursor := crDefault;
end;

procedure TProforma_Itens.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
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
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      Try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 Produtos.Locate('Codigo', ProdutosCodigo.Value, [loCaseInsensitive]);

                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
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
                         End else
                            HintStr := '\';               
                      Finally
                         DataLink.ActiveRecord := CurPos
                      End;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   Except
                      CanShow := False
                   End;
           End;
      End;
end;

procedure TProforma_Itens.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
end;

procedure TProforma_Itens.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if Button = nbPost then begin
              if not Produtos.Locate('Codigo', cCodigo.Text, [loCaseInsensitive]) then begin
                 MessageDlg('Produto não cadastrado, informe um produto válido para a proforma.', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              end;
              if ProformaItensQuantidade.AsFloat <= 0 then begin
                 MessageDlg('Quantidade inválida, informe uma quantidade válida para o item.', mtError, [mbOK], 0);
                 cQtde.SetFocus;
                 Abort;
              end;
              if ProformaItensValor_Unitario.AsFloat <= 0 then begin
                 MessageDlg('Valor inválido, informe um valor válido para o item.', mtError, [mbOK], 0);
                 cValor.SetFocus;
                 Abort;
              end;
           end;
           if (Button = nbPost) and (ProformaItens.State = dsInsert) then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT Registro = (SELECT ISNULL(MAX(Registro), 0)+1 FROM ProformaItens)');
              tRegistro.SQL.Add('      ,Item     = (SELECT COUNT(*)+1 FROM ProformaItens WHERE Proforma = :pProforma)');
              tRegistro.ParamByName('pProforma').Value := ProcessosDOCProforma_Numero.AsString;
              tRegistro.Open;

              Dados.ProformaItensRegistro.Value := tRegistro.FieldByName('Registro').AsInteger;
              Dados.ProformaItensProforma.Value := ProcessosDOC.FieldByName('Proforma_Numero').Value;
              Dados.ProformaItensItem.Value     := tRegistro.FieldByName('Item').AsInteger;
           end;
      end;
end;

procedure TProforma_Itens.GradeProdutosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      GradeProdutos.BeginDrag(True);
end;

procedure TProforma_Itens.GradeItensDragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TProforma_Itens.GradeItensDragDrop(Sender, Source: TObject; X,Y: Integer);
begin
      if Dados.ProformaItens.State = dsInsert then begin
         bAdicionar.Click;
         cQtde.Setfocus;
      end;
end;

procedure TProforma_Itens.cCodigoDragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TProforma_Itens.cCodigoDragDrop(Sender, Source: TObject; X,Y: Integer);
begin
      if Dados.ProformaItens.State = dsInsert then begin
         bAdicionar.Click;
         cQtde.Setfocus;
      end;
end;

procedure TProforma_Itens.bImportarClick(Sender: TObject);
begin
      Proforma_ItensImportar := TProforma_ItensImportar.Create(Self);
      Proforma_ItensImportar.Caption := Caption;
      Proforma_ItensImportar.ShowModal;     
end;

end.
