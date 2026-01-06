unit frmProcesso_Proforma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Menus, DB, MemDS, DBAccess, MSAccess, Vcl.StdCtrls,
  RxLookup, DBCtrls, Mask, RXDBCtrl, Vcl.ExtCtrls, Vcl.ComCtrls, Grids,DBGrids, RXCtrls, Funcoes,
  Buttons;

type
  TProcesso_Proforma = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tNumero: TMSQuery;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    lProcesso: TStaticText;
    lCondicaoPgto: TStaticText;
    cData: TDBDateEdit;
    lNumero: TStaticText;
    lPaisOrigem: TStaticText;
    lData: TStaticText;
    cPaisOrigem: TDBLookupComboBox;
    cNumero: TDBEdit;
    lLocalEmbarque: TStaticText;
    cPortoEmbarque: TDBEdit;
    lLocalChegada: TStaticText;
    cPortoDestino: TDBEdit;
    cCondicaoPgto: TRxDBLookupCombo;
    cProcesso: TDBLookupComboBox;
    StaticText1: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText2: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    GradeItens: TRxDBGrid;
    RxDBGrid1: TRxDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    DBDateEdit2: TDBDateEdit;
    StaticText4: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_Proforma: TProcesso_Proforma;

implementation

uses frmDados, frmProcesso_ProformaAdicionar;

{$R *.dfm}

procedure TProcesso_Proforma.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       FecharTabelas(Dados, nil, nil, nil);
       Processo_Proforma.Release;
       Processo_Proforma := nil;
end;

procedure TProcesso_Proforma.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_Proforma.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_Proforma.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      PageControl2.ActivePageIndex := 0;
      
      With Dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> ''1058'') ORDER BY Nome');
           Fornecedores.Open;

           Paises.SQL.Clear;
           Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
           Paises.Open;

           Proforma.SQL.Clear;
           Proforma.SQL.Add('SELECT * FROM Proforma ORDER BY Numero');
           Proforma.Open;

           ProformaItens.SQL.Clear;
           ProformaItens.SQL.Add('SELECT *, (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria) AS Descricao FROM ProformaItens WHERE(Proforma = :pProforma) ORDER BY Codigo_Mercadoria');
           ProformaItens.ParamByName('pProforma').AsString := ProformaNumero.AsString;
           ProformaItens.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Fornecedor = :pFornecedor) AND (Desativado <> 1)');
           Produtos.ParamByName('pFornecedor').AsInteger := ProformaVendedor.AsInteger;
           Produtos.Open;
           
           CondicaoCambial.SQL.Clear;
           CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao' );
           CondicaoCambial.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Desativado <> 1) ORDER BY Processo');
           ProcessosDOC.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Proforma.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If Button = nbPost then begin
              Navega.SetFocus;
              If Trim(RemoveCaracter('/', '', ProformaData.AsString)) = '' then begin
                 MessageDlg('A "Data" é campo obrigatório.', mtError, [mbok], 0);
                 cData.SetFocus;
                 Abort;
              End;
              If Trim(ProformaPorto_Embarque.AsString) = '' then begin
                 MessageDlg('O "Porto de Embarque" é campo obrigatório.', mtError, [mbok], 0);
                 cPortoEmbarque.SetFocus;
                 Abort;
              End;
              If Trim(ProformaPorto_Destino.AsString) = '' then begin
                 MessageDlg('O "Porto de Destino" é campo obrigatório.', mtError, [mbok], 0);
                 cPortoDestino.SetFocus;
                 Abort;
              End;
              {
              If cCondicaoPgto.DisplayValue = '' then begin
                 MessageDlg('A "Condição de Pagamento" é campo obrigatório.', mtError, [mbok], 0);
                 cCondicaoPgto.SetFocus;
                 Abort;
              End;
              }
              If Proforma.State = dsInsert then begin
                 tNumero.SQL.Clear;
                 tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM Proforma');
                 tNumero.Open;
                 ProformaNumero.Value := tNumero.FieldByName('Numero').AsInteger + 1;
              End;
           End;

           If (Button = nbPost) then Begin
              ProformaImp_Exp.Value      := 'E';
           End;
           
           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir esta "Proforma"', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              End;
              ProformaItens.SQL.Clear;
              ProformaItens.SQL.Add('DELETE FROM ProformaItens WHERE(Proforma = :pProforma)');
              ProformaItens.ParamByName('pProforma').AsString := ProformaNumero.AsString;
              ProformaItens.Execute;
              ProformaItens.SQL.Clear;
              ProformaItens.SQL.Add('SELECT *, (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria) AS Descricao FROM ProformaItens WHERE(Proforma = :pProforma)');
              ProformaItens.ParamByName('pProforma').AsString := ProformaNumero.AsString;
              ProformaItens.Open;
           End;
      End;
end;

procedure TProcesso_Proforma.Button1Click(Sender: TObject);
begin
      Processo_ProformaAdicionar := TProcesso_ProformaAdicionar.Create(Self);
      Processo_ProformaAdicionar.Caption := Caption;
      Processo_ProformaAdicionar.ShowModal;
      Dados.ProformaItens.Refresh;
end;

procedure TProcesso_Proforma.Button2Click(Sender: TObject);
begin
      If MessageDlg('Deseja realmente excluir este item da proforma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Dados.ProformaItens.Delete;
      End;
end;

procedure TProcesso_Proforma.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         PageControl2.ActivePageIndex := 0; 
         Panel4.Enabled := true;
         cProcesso.SetFocus
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         Panel4.Enabled := false;
      End;
      Screen.Cursor := crDefault;
end;

end.



