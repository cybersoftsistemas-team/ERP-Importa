unit ImportaExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls,  DB, DBTables, Vcl.ComCtrls, Grids, VrLabel, ValEdit, ATStandard,
  Buttons, Mask, DBCtrls, VrEdit,ComObj, BaseGrid, AdvGrid, DBGrids, VrControls,
  VrLcd;

type
  TImporta_Excel = class(TForm)
    OpenDialog1: TOpenDialog;
    bSair: TButton;
    Grupo: TGroupBox;
    Produtos: TTable;
    DataSource1: TDataSource;
    ProdutosCodigo: TStringField;
    ProdutosDescricao: TStringField;
    ProdutosPreco: TCurrencyField;
    ProdutosGrupo: TSmallintField;
    ProdutosDimensoes: TStringField;
    ProdutosUnidade: TStringField;
    ProdutosEstoque: TIntegerField;
    ProdutosDesconto: TFloatField;
    bImportar: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ProdutosFabricante: TIntegerField;
    ProdutosQuantidade: TIntegerField;
    GroupBox3: TGroupBox;
    VrLabel1: TVrLabel;
    VrLabel2: TVrLabel;
    VrLabel3: TVrLabel;
    VrLabel4: TVrLabel;
    VrLabel5: TVrLabel;
    VrLabel6: TVrLabel;
    VrLabel7: TVrLabel;
    VrLabel8: TVrLabel;
    ComboA: TComboBox;
    ComboH: TComboBox;
    ComboC: TComboBox;
    ComboB: TComboBox;
    ComboE: TComboBox;
    ComboD: TComboBox;
    ComboF: TComboBox;
    ComboG: TComboBox;
    Label10: TLabel;
    cFornecedor: TComboBox;
    ATTitlePanel1: TATTitlePanel;
    GroupBox9: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Fornecedores: TTable;
    FornecedoresCodigo: TSmallintField;
    FornecedoresNome: TStringField;
    DataSource4: TDataSource;
    Grupos: TTable;
    GruposCodigo_Grupo: TSmallintField;
    GruposDescricao: TStringField;
    GruposFabricante: TSmallintField;
    DataSource2: TDataSource;
    Config: TTable;
    ConfigGrupo: TSmallintField;
    DataSource3: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Lista: TDBGrid;
    Button1: TButton;
    cCodigo: TComboBox;
    Temp: TTable;
    Aviso: TVrLabel;
    DataSource5: TDataSource;
    Grade: TDBGrid;
    TempColA: TStringField;
    TempColB: TStringField;
    TempColC: TStringField;
    TempColD: TStringField;
    TempColE: TStringField;
    TempColF: TStringField;
    TempColG: TStringField;
    TempColH: TStringField;
    VrClock1: TVrClock;
    Label2: TLabel;
    Barra: TProgressBar;
    bArquivo: TSpeedButton;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    ProdutosRegistro: TAutoIncField;
    ProdutosComissao: TFloatField;
    ProdutosObservacao: TStringField;
    ProdutosVendidos: TIntegerField;
    ProdutosTotal: TCurrencyField;
    ProdutosImagem: TGraphicField;
    ProdutosSituacao: TStringField;
    ProdutosIPI: TFloatField;
    ProdutosPromocao: TBooleanField;
    procedure bSairClick(Sender: TObject);
    procedure bArquivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBClick(Sender: TObject);
    procedure ComboCClick(Sender: TObject);
    procedure ComboDClick(Sender: TObject);
    procedure ComboEClick(Sender: TObject);
    procedure ComboFChange(Sender: TObject);
    procedure ComboGClick(Sender: TObject);
    procedure ComboHClick(Sender: TObject);
    procedure ComboAClick(Sender: TObject);
    procedure NomeCol;
    procedure bImportarClick(Sender: TObject);
    procedure cFornecedorChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cCodigoClick(Sender: TObject);
    procedure cFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCampos : Variant;
    mCod    : String;
    mDes    : String;
    mUni    : String;
    mDim    : String;
    mQtd    : String;
    mVal    : String;
    mGru    : String;
    mEst    : String;
    mIPI    : String;
    Excel   : OleVariant;
    Caminho : String;
  end;

var
  Importa_Excel: TImporta_Excel;

implementation

uses MenuPrincipal;

{$R *.dfm}

procedure TImporta_Excel.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImporta_Excel.bArquivoClick(Sender: TObject);
Var
    i : Integer;
begin

      Caminho := '';
      OpenDialog1.Execute;
      Grade.Visible := False;
      Importa_Excel.Repaint;
      If OpenDialog1.FileName = '' then
         abort
      Else begin
         Caminho       := OpenDialog1.FileName;
         Edit1.Text    := OpenDialog1.FileName;
         Grupo.Enabled := True;
         Edit1.Refresh;
      End;
      Aviso.Visible := True;
      Aviso.Repaint;
      Try
        Excel := CreateOleObject('Excel.Application');
        Excel.WorkBooks.Open(Edit1.Text, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
        //
        // Criando a tabela temporario caso não exista.
        //
        Temp.Close;
        Aviso.Caption := 'Aguarde Criando arquivo temporario. . . ';
        If FileExists('Excel_Temp.db') then begin
           DeleteFile('Excel_Temp.db');
        End;
        Temp.DatabaseName := 'Representa';
        Temp.TableName    := 'Excel_Temp';
        Temp.TableType    := ttParadox;
        Temp.FieldDefs.Clear;
        {
        Temp.FieldDefs.Add('ColA',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,1])), false);
        Temp.FieldDefs.Add('ColB',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,2])), false);
        Temp.FieldDefs.Add('ColC',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,3])), false);
        Temp.FieldDefs.Add('ColD',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,4])), false);
        Temp.FieldDefs.Add('ColE',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,5])), false);
        Temp.FieldDefs.Add('ColF',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,6])), false);
        Temp.FieldDefs.Add('ColG',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,7])), false);
        Temp.FieldDefs.Add('ColH',ftString, Length(String(Excel.WorkBooks[1].Sheets[1].Cells[1,8])), false);
        }
        Temp.FieldDefs.Add('ColA',ftString, 50, false);
        Temp.FieldDefs.Add('ColB',ftString, 50, false);
        Temp.FieldDefs.Add('ColC',ftString, 50, false);
        Temp.FieldDefs.Add('ColD',ftString, 50, false);
        Temp.FieldDefs.Add('ColE',ftString, 50, false);
        Temp.FieldDefs.Add('ColF',ftString, 50, false);
        Temp.FieldDefs.Add('ColG',ftString, 50, false);
        Temp.FieldDefs.Add('ColH',ftString, 50, false);

        Temp.CreateTable;
        Temp.Open;

        Grade.Enabled := False;
        Aviso.Caption := 'Aguarde convertendo arquivo '+Edit1.Text+' do Microsoft Excel para o sistema. . . ';
        i := 1;
        Temp.DisableControls;
        VrClock1.Active := not VrClock1.Active;
        While String(Excel.WorkBooks[1].Sheets[1].Cells[i,1]) <> '' do begin;
              Aviso.Caption := 'Aguarde convertendo arquivo '+Edit1.Text+' : '+InttoStr(i);
              Temp.Append;
                   Temp.FieldByName('ColA').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,1]);
                   Temp.FieldByName('ColB').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,2]);
                   Temp.FieldByName('ColC').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,3]);
                   Temp.FieldByName('ColD').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,4]);
                   Temp.FieldByName('ColE').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,5]);
                   Temp.FieldByName('ColF').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,6]);
                   Temp.FieldByName('ColG').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,7]);
                   Temp.FieldByName('ColH').AsString := String(Excel.WorkBooks[1].Sheets[1].Cells[i,8]);
              Temp.Post;
              Inc(i);
              Application.ProcessMessages;
        End;
        VrClock1.Active := not VrClock1.Active;

        Temp.EnableControls;
        Grade.Enabled  := True;
        Grade.Refresh;
        Aviso.Caption  := 'Arquivo aberto, carregando os registros. . .';
        Excel.WorkBooks.Close;
        Excel.Quit;
      Except
         MessageDlg('Houve Falha na abertura da planilha do Microsoft Excel', mtInformation,[mbOk], 0);
      End;
      Aviso.Visible := False;
      Importa_Excel.Repaint;
      Grade.Visible := True;

      Excel.WorkBooks.Close;
      Excel.Quit;
end;

procedure TImporta_Excel.FormShow(Sender: TObject);
begin
        Config.Open;
        Produtos.Open;
        Grupos.Open;
        Fornecedores.Open;
        While not Fornecedores.Eof do Begin
              cFornecedor.Items.Add(FornecedoresNome.Value);
              cCodigo.Items.Add(InttoStr(FornecedoresCodigo.Value));
              Fornecedores.Next;
        End;
end;

procedure TImporta_Excel.ComboBClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboCClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboDClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboEClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboFChange(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboGClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboHClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.ComboAClick(Sender: TObject);
begin
        NomeCol;
end;

procedure TImporta_Excel.NomeCol;
Begin
        Grade.Columns[0].Title.Caption := 'A ('+ComboA.Text+')';
        Grade.Columns[1].Title.Caption := 'B ('+ComboB.Text+')';
        Grade.Columns[2].Title.Caption := 'C ('+ComboC.Text+')';
        Grade.Columns[3].Title.Caption := 'D ('+ComboD.Text+')';
        Grade.Columns[4].Title.Caption := 'E ('+ComboE.Text+')';
        Grade.Columns[5].Title.Caption := 'F ('+ComboF.Text+')';
        Grade.Columns[6].Title.Caption := 'G ('+ComboG.Text+')';
        Grade.Columns[7].Title.Caption := 'H ('+ComboH.Text+')';
        mCod := '';
        mDes := '';
        mUni := '';
        mDim := '';
        mQtd := '';
        mVal := '';
        mGru := '';
        mEst := '';
        mIPI := '';

        Case ComboA.ItemIndex of
             0: mCod := 'ColA';         //  'Código'
             1: mDes := 'ColA';         //  'Descrição'
             2: mUni := 'ColA';         //  'Unidade'
             3: mDim := 'ColA';         //  'Dimensões'
             4: mQtd := 'ColA';         //  'Quantidade'
             5: mVal := 'ColA';         //  'Valor'
             6: mGru := 'ColA';         //  'Grupo'
             7: mEst := 'ColA';         //  'Estoque'
             8: mIPI := 'ColA';         //  'Aliquota do IPI'
        End;
        Case ComboB.ItemIndex of
             0: mCod := 'ColB';         //  'Código'
             1: mDes := 'ColB';         //  'Descrição'
             2: mUni := 'ColB';         //  'Unidade'
             3: mDim := 'ColB';         //  'Dimensões'
             4: mQtd := 'ColB';         //  'Quantidade'
             5: mVal := 'ColB';         //  'Valor'
             6: mGru := 'ColB';         //  'Grupo'
             7: mEst := 'ColB';         //  'Estoque'
             8: mIPI := 'ColB';         //  'Aliquota do IPI'
        End;
        Case ComboC.ItemIndex of
             0: mCod := 'ColC';         //  'Código'
             1: mDes := 'ColC';         //  'Descrição'
             2: mUni := 'ColC';         //  'Unidade'
             3: mDim := 'ColC';         //  'Dimensões'
             4: mQtd := 'ColC';         //  'Quantidade'
             5: mVal := 'ColC';         //  'Valor'
             6: mGru := 'ColC';         //  'Grupo'
             7: mEst := 'ColC';         //  'Estoque'
             8: mIPI := 'ColC';         //  'Aliquota do IPI'
        End;
        Case ComboD.ItemIndex of
             0: mCod := 'ColD';         //  'Códig'
             1: mDes := 'ColD';         //  'Descrição'
             2: mUni := 'ColD';         //  'Unidade'
             3: mDim := 'ColD';         //  'Dimensões'
             4: mQtd := 'ColD';         //  'Quantidade'
             5: mVal := 'ColD';         //  'Valor'
             6: mGru := 'ColD';         //  'Grupo'
             7: mEst := 'ColD';         //  'Estoque'
             8: mIPI := 'ColD';         //  'Aliquota do IPI'
        End;
        Case ComboE.ItemIndex of
             0: mCod := 'ColE';         //  'Código'
             1: mDes := 'ColE';         //  'Descrição'
             2: mUni := 'ColE';         //  'Unidade'
             3: mDim := 'ColE';         //  'Dimensões'
             4: mQtd := 'ColE';         //  'Quantidade'
             5: mVal := 'ColE';         //  'Valor'
             6: mGru := 'ColE';         //  'Grupo'
             7: mEst := 'ColE';         //  'Estoque'
             8: mIPI := 'ColE';         //  'Aliquota do IPI'
        End;
        Case ComboF.ItemIndex of
             0: mCod := 'ColF';         //  'Código'
             1: mDes := 'ColF';         //  'Descrição'
             2: mUni := 'ColF';         //  'Unidade'
             3: mDim := 'ColF';         //  'Dimensões'
             4: mQtd := 'ColF';         //  'Quantidade'
             5: mVal := 'ColF';         //  'Valor'
             6: mGru := 'ColF';         //  'Grupo'
             7: mEst := 'ColF';         //  'Estoque'
             8: mIPI := 'ColF';         //  'Aliquota do IPI'
        End;
        Case ComboG.ItemIndex of
             0: mCod := 'ColG';         //  'Código'
             1: mDes := 'ColG';         //  'Descrição'
             2: mUni := 'ColG';         //  'Unidade'
             3: mDim := 'ColG';         //  'Dimensões'
             4: mQtd := 'ColG';         //  'Quantidade'
             5: mVal := 'ColG';         //  'Valor'
             6: mGru := 'ColG';         //  'Grupo'
             7: mEst := 'ColG';         //  'Estoque'
             8: mIPI := 'ColG';         //  'Aliquota do IPI'
        End;
        Case ComboH.ItemIndex of
             0: mCod := 'ColH';         //  'Código'
             1: mDes := 'ColH';         //  'Descrição'
             2: mUni := 'ColH';         //  'Unidade'
             3: mDim := 'ColH';         //  'Dimensões'
             4: mQtd := 'ColH';         //  'Quantidade'
             5: mVal := 'ColH';         //  'Valor'
             6: mGru := 'ColH';         //  'Grupo'
             7: mEst := 'ColH';         //  'Estoque'
             8: mIPI := 'ColH';         //  'Aliquota do IPI'
        End;
end;

procedure TImporta_Excel.bImportarClick(Sender: TObject);
Var
    Linha  : Integer;
    Inclui : Integer;
    Altera : Integer;
    mPromocao : Boolean;
begin

      mPromocao := False;
      If MessageDlg('Tirar produtos da promoção?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         mPromocao := True;

      Inclui        := 0;
      Altera        := 0;
      Aviso.Caption := 'Aguarde importando planilha do Microsoft Excel p/ a tabela do Representa!';
      Aviso.Visible := True;
      Aviso.Repaint;
      Produtos.IndexFieldNames := 'Codigo';
      Linha := 2;
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(Edit1.Text, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      Barra.Visible  := Not Barra.Visible;
      Barra.Max      := Temp.RecordCount;
      Barra.Position := 0;
      Temp.First;

      While not Temp.Eof do Begin
          If Produtos.FindKey([Temp.FieldByName(mCod).AsString]) = False then begin
             Produtos.Append;
             Inc(Inclui);
          End Else begin
             Produtos.Edit;
             Inc(Altera);
          End;
          ProdutosFabricante.Value := StrtoInt(cCodigo.Text);
          If mCod <> '' then
             ProdutosCodigo.Value := Temp.FieldByName(mCod).AsString;
          If mDes <> '' then
             ProdutosDescricao.Value := Temp.FieldByName(mDes).AsString;

          If mVal <> '' then begin
             If Temp.FieldByName(mVal).AsCurrency <> 0 then begin
                If mPromocao = True then begin
                   ProdutosPreco.Value    := Temp.FieldByName(mVal).AsCurrency;
                   ProdutosPromocao.Value := False;
                End;
             end;   
          End;
          If mUni <> '' then
             ProdutosUnidade.Value := Temp.FieldByName(mUni).AsString;;
          If mQtd <> '' then begin
             If Temp.FieldByName(mQtd).AsInteger <> 0 then
                ProdutosQuantidade.Value := Temp.FieldByName(mQtd).AsInteger;
          End;
          If mGru <> '' then begin
             If Temp.FieldByName(mGru).AsInteger <> 0 then
                ProdutosGrupo.Value := Temp.FieldByName(mGru).AsInteger;
          End;
          If mEst <> '' then begin
             If Temp.FieldByName(mEst).AsInteger <> 0 then
                ProdutosEstoque.Value := Temp.FieldByName(mEst).AsInteger;
          End;
          If mDim <> '' then
             ProdutosDimensoes.Value := Temp.FieldByName(mDim).AsString;

          If mIPI <> '' then begin
             If Temp.FieldByName(mIPI).AsFloat <> 0 then
                ProdutosIPI.Value  := Temp.FieldByName(mIPI).AsFloat;
          End;

          Produtos.Post;
          Temp.Next;
          Inc(Linha);
          Barra.Position := Barra.Position +1;

          Application.ProcessMessages;
      end;

      Excel.WorkBooks.Close;
      Excel.Quit;

      Barra.Visible := not Barra.Visible;
      Aviso.Visible := False;
      Produtos.First;
      Memo1.Clear;
      Memo1.Lines.Add('Lidos       : '+InttoStr(Linha-2));
      Memo1.Lines.Add('Adicionados : '+InttoStr(Inclui));
      Memo1.Lines.Add('Modificados : '+InttoStr(Altera));
      Memo1.Lines.Add('Importados  : '+InttoStr(Inclui+Altera));
      MessageDlg('Importação da planilha do Excel executada com exito.', mtInformation, [mbOk], 0 );
end;

procedure TImporta_Excel.cFornecedorChange(Sender: TObject);
begin
        If (cFornecedor.ItemIndex <> -1) and (Edit1.Text <> '')then
           bImportar.Enabled := True
        Else
           bImportar.Enabled := False;
end;

procedure TImporta_Excel.Button1Click(Sender: TObject);
begin
        Lista.Visible := not Lista.Visible;
        Lista.Top     := 9;
        Lista.Left    := 4;
        Lista.Width   := 791;
        Lista.Height  := 542;
end;

procedure TImporta_Excel.cCodigoClick(Sender: TObject);
begin
        cFornecedor.ItemIndex := cCodigo.ItemIndex;
end;

procedure TImporta_Excel.cFornecedorClick(Sender: TObject);
begin
        Produtos.Filtered := False;
        cCodigo.ItemIndex := cFornecedor.ItemIndex;
        Produtos.Filter   := 'Fabricante = '+QuotedStr(cCodigo.Items[cCodigo.ItemIndex]);
        Produtos.Filtered := True;
end;

End.

