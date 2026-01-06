unit frmUtilitarios_LayOutXMLNFS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls,
  Vcl.ComCtrls, DB, DBAccess, MSAccess, Grids, Menus, Buttons, xmldom, XMLIntf, msxmldom, XMLDoc, Mask, RxToolEdit, MemDS, Vcl.DBCtrls, System.UITypes;

type
  TUtilitarios_LayOutXMLNFS = class(TForm)
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    Panel1: TPanel;
    bImportar: TButton;
    bSair: TButton;
    MenuCampos: TPopupMenu;
    Temp: TMSQuery;
    XMLDoc: TXMLDocument;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cArquivo: TFilenameEdit;
    StaticText3: TStaticText;
    Edit1: TEdit;
    StaticText4: TStaticText;
    Edit2: TEdit;
    bSalvar: TButton;
    StaticText1: TStaticText;
    Municipios: TMSQuery;
    dsMuni: TDataSource;
    cMun: TDBLookupComboBox;
    MunicipiosCodigo: TIntegerField;
    MunicipiosEstado: TSmallintField;
    MunicipiosNome: TStringField;
    MunicipiosUF: TStringField;
    StaticText5: TStaticText;
    cCodmun: TEdit;
    bLimpar: TButton;
    MenuOp: TPopupMenu;
    MenuItem1: TMenuItem;
    N1: TMenuItem;
    Cancelar1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    XML: TTreeView;
    gCampos: TStringGrid;
    Splitter1: TSplitter;
    cDados: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CapturaClick(Sender: TObject);
    procedure cArquivoChange(Sender: TObject);
    procedure cMunExit(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure cCodmunChange(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
  private
    procedure GeraTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
    procedure PegaNo;
    procedure CarregaMenu;
    procedure CarregaDados;
    { Private declarations }
  public
    { Public declarations }
    mLinha:Integer;
  end;

var
  Utilitarios_LayOutXMLNFS: TUtilitarios_LayOutXMLNFS;

implementation

{$R *.dfm}

uses frmDados, Funcoes;

procedure TUtilitarios_LayOutXMLNFS.FormCreate(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     cDados.Clear;
     if fileexists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
     with Municipios do begin
          sql.Clear;
          sql.Add('select * from Cybersoft_Cadastros.dbo.Municipios order by UF, Nome');
          open;
     end;
//cArquivo.Text := 'C:\Temp\Notas_Servico\NFe_E_01883216_20240112_20240112 (1).xml';
//cMun.KeyValue := '2611606';
//cCodMun.text  := '2611606';
     CarregaMenu;
end;

procedure TUtilitarios_LayOutXMLNFS.bImportarClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 1;
    CarregaDados;
end;

procedure TUtilitarios_LayOutXMLNFS.CarregaDados;
var
   mVal: string;
   l, ult, i, maxNivel, Nivel:integer;
   Pai, Filho: IXMLNode;
begin
     i := 0;
     l := 0;
     cDados.lines.clear;
     with XMLDoc do begin
          Pai := DocumentElement.ChildNodes.FindNode(gCampos.cells[2, l]);
          for l := 0 to pred(gCampos.RowCount) do begin
              if trim(gCampos.cells[0, l]) = '' then break;
              MaxNivel := 2;
              while trim(gCampos.cells[MaxNivel, l]) <> '' do begin
                    inc(MaxNivel);
              end;
              dec(MaxNivel);
              Filho := Pai;
              for Nivel := 3 to MaxNivel do begin
                  Filho := Filho.ChildNodes.FindNode(gCampos.cells[Nivel, l]);
              end;
              mVal := Filho.Text;
              cDados.lines.add( concat(gCampos.cells[0, l], StringOfChar('.',25-Length(gCampos.cells[0, l])), gCampos.cells[MaxNivel,l], StringOfChar('.',25-Length(gCampos.cells[maxnivel, l])),': ', mval) );
          end;
     end;
end;

procedure TUtilitarios_LayOutXMLNFS.bLimparClick(Sender: TObject);
var
   cl, ln:integer;
begin
     with gCampos do begin
          for ln := 0 to pred(RowCount) do begin
              for cl := 0 to pred(ColCount) do begin
                  cells[cl, ln] := '';
              end;
          end;
     end;
     autoajustecol(gCampos);
end;

procedure TUtilitarios_LayOutXMLNFS.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TUtilitarios_LayOutXMLNFS.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     SetCurrentDir(ExtractFilePath(Application.ExeName));
     Utilitarios_LayOutXMLNFS.Release;
     Utilitarios_LayOutXMLNFS := nil;
end;

procedure TUtilitarios_LayOutXMLNFS.CarregaMenu;
var
   NovoItem  : TMenuItem;
   Lista     : TListBox;
   MenuCampos: TPopUpMenu;
   i, f, mQuebra: Integer;
begin
     with Temp do begin
          sql.Clear;
          sql.Add('select top 1 * from NotasTerceiros');
          Open;
     end;
     MenuCampos           := TPopUpMenu.Create(Utilitarios_LayOutXMLNFS);
     MenuCampos.OwnerDraw := false;
     NovoItem             := TMenuItem.Create(MenuCampos);
     NovoItem.Caption     := '-';

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := '-';
     MenuCampos.Items.Insert(0, NovoItem);
     MenuCampos.Items.Items[0].OnClick := CapturaClick;

     Lista           := TListBox.Create(Panel2);
     Lista.Visible   := false;
     Lista.Parent    := Panel2;
     Lista.Sorted    := true;
     Lista.Height    := 400;
     Lista.Left      := 980;
     mQuebra         := 0;

     // Pegando os nomes dos campos.
     for i := 0 to pred(Temp.FieldCount) do begin
         if pos('Adicional', Temp.Fields[i].FieldName) = 0 then begin
            Lista.Items.Add(Temp.Fields[i].FieldName);
         end;
     end;
     for i := 0 to Lista.Count -1 do begin
         NovoItem             := TMenuItem.Create(MenuCampos);
         NovoItem.Caption     := Lista.Items[i];
         NovoItem.AutoCheck   := true;
         NovoItem.Checked     := false;
         NovoItem.AutoHotkeys := maParent;

         MenuCampos.Items.Insert(i, NovoItem);
         MenuCampos.Items.Items[i].OnClick := CapturaClick;

         Inc(mQuebra);
         if mQuebra = 25 then begin
            mQuebra := 0;
            NovoItem.Break := mbBreak;
         end;
     end;

     // Pegando os nomes dos campos da tabela de Fornecedores.
     with Temp do begin
          sql.Clear;
          sql.Add('select top 1 * from Fornecedores');
          Open;
     end;
     // Pegando os nomes dos campos.
     Lista.Clear;
     for f := 0 to Temp.FieldCount-1 do begin
         Lista.Items.Add('_Forn_'+Temp.Fields[f].FieldName);
     end;
     inc(i);
     NovoItem.Break   := mbBreak;
     NovoItem.Caption := '-';
     for f := 0 to pred(Lista.Count) do begin
         NovoItem             := TMenuItem.Create(MenuCampos);
         NovoItem.Caption     := Lista.Items[f];
         NovoItem.AutoCheck   := true;
         NovoItem.Checked     := false;
         NovoItem.AutoHotkeys := maParent;

         MenuCampos.Items.Insert(i+f, NovoItem);
         MenuCampos.Items.Items[i+f].OnClick := CapturaClick;

         Inc(mQuebra);
         if mQuebra = 25 then begin
            mQuebra := 0;
            NovoItem.Break := mbBreak;
         end;
     end;
     XML.PopupMenu := menuCampos;
end;

procedure TUtilitarios_LayOutXMLNFS.cCodmunChange(Sender: TObject);
var
   col, lin:integer;
begin
     lin := 0;
     with Temp do begin
          sql.clear;
          sql.add('select * from Cybersoft_Cadastros.dbo.LayoutNFS where Municipio = :pMun');
          parambyname('pMun').AsString := cCodMun.Text;
          open;
          first;
          while not eof do begin
                for col := 1 to pred(FieldCount) do begin
                    gCampos.cells[col-1, lin] := Fields[col].AsString;
                end;
                inc(lin);
                next;
          end;
          if recordcount > 0 then autoajustecol(gCampos);
     end;
     autoajustecol(gCampos);
end;

procedure TUtilitarios_LayOutXMLNFS.cMunExit(Sender: TObject);
begin
     cCodMun.Text := Municipios.FieldByName('Codigo').AsString;
end;

procedure TUtilitarios_LayOutXMLNFS.CapturaClick(Sender: TObject);
var
   mLin,c:Integer;
   mCampo:string;
begin
      // Verifica se o campos ja existe no grid.
      mCampo := trim(stringreplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll]));
      for mLin := 0 to pred(gCampos.rowCount) do begin
          if (gCampos.Cells[0, mLin] = mCampo) or (gCampos.Cells[0, mLin] = '') then break;
      end;
      mLinha := mLin;
      gCampos.Cells[0, mlinha] := mCampo;
      Pegano;
      inc(mLinha);
end;

procedure TUtilitarios_LayOutXMLNFS.GeraTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
var
  NodeText:string;
  NewTreeNode:TTreeNode;
  i:integer;
begin
    if XMLNode.NodeType <> ntElement then Exit;
    NodeText := XMLNode.NodeName;
    if XMLNode.IsTextElement then begin
       NodeText := NodeText + '=' + XMLNode.NodeValue;
    end;
    NewTreeNode := XML.Items.AddChild(TreeNode, NodeText);
    if XMLNode.HasChildNodes then begin
       for i := 0 to XMLNode.ChildNodes.Count - 1 do begin
           GeraTree(XMLNode.ChildNodes[i], NewTreeNode);
       end;
    end;
end;

procedure TUtilitarios_LayOutXMLNFS.MenuItem1Click(Sender: TObject);
var
   cl:integer;
begin
     with gCampos do begin
          for cl := 0 to pred(ColCount) do begin
              cells[cl, row] := '';
          end;
     end;
end;

procedure TUtilitarios_LayOutXMLNFS.PegaNo;
var
  NoSel, NoPai: TTreeNode;
  no: array[0..20] of string;
  c,n:integer;
begin
     n     := 0;
     NoSel := XML.Selected;
     if Assigned(NoSel) then begin
        no[n] := copy(NoSel.Text, 1, pos('=', NoSel.Text)-1);
        inc(n);
        NoPai := NoSel.Parent;
        while assigned(NoPai) do begin
              no[n] := NoPai.Text;
              inc(n);
              NoPai := NoPai.Parent;
        end;
     end;
     c := 1;
     for n := 20 downto 0 do begin
         if trim(no[n]) <> '' then begin
            gCampos.cells[c, mLinha] := no[n];
            inc(c);
         end;
     end;
     
     autoajustecol(gCampos);
end;

procedure TUtilitarios_LayOutXMLNFS.cArquivoChange(Sender: TObject);
begin
      XMLDoc.LoadFromFile(cArquivo.FileName);
      XML.Items.Clear;
      XMLDoc.Active := True;
      
      GeraTree(XMLDoc.DocumentElement, nil);
      
      Application.ProcessMessages;
      XML.FullExpand;
      XML.Select(XML.Items.GetFirstNode);
      Edit1.Text := XMLDoc.Version;
      Edit2.Text := XMLDoc.Encoding;
end;

procedure TUtilitarios_LayOutXMLNFS.bSalvarClick(Sender: TObject);
var
   l,c:integer;
   val:string;
   par:boolean;
begin
     if trim(cCodMun.Text) = '' then begin
        messagedlg('Municipio não informado!',mterror, [mbok], 0);
        Abort;
     end;
     par := false;
     for l := 0 to pred(gCampos.RowCount) do begin
         if gCampos.Cells[0,l] <> '' then begin
            par := true;
            break;
         end;
     end;
     if not par then begin
        messagedlg('Nada parametrizado para salvar!',mtInformation, [mbok], 0);
        Abort;
     end;
     with Temp do begin
          sql.Clear;
          sql.Add('delete from Cybersoft_Cadastros.dbo.LayoutNFS where Municipio = :pMun');
          parambyname('pMun').AsString := cCodMun.Text;
          execute;
          sql.Clear;
          sql.Add('insert into Cybersoft_Cadastros.dbo.LayoutNFS (Municipio, Campo_Tabela, Node01, Node02, Node03, Node04, Node05, Node06, Node07, Node08, Node09, Node10, Node11, Node12, Node13, Node14, Node15)');
          sql.Add('values ');
          for l := 0 to pred(gCampos.RowCount) do begin
              if trim(gCampos.Cells[0, l]) <> '' then begin
                 val := '('+quotedstr(cCodMun.Text)+',';
                 for c := 0 to gCampos.ColCount do begin
                     if trim(gCampos.cells[c, l]) <> '' then begin
                        val := val + quotedstr(gCampos.cells[c, l])+',';
                     end else begin
                        val := val + 'null,';
                     end;
                 end;
                 val := copy(val, 1, length(val)-1)+')';
                 if l > 0 then begin
                    val := ','+Val;
                 end;
                 sql.Add(val);
              end;
          end;
          //sql.SaveToFile('c:\temp\layout_NFS.sql');
          execute;
     end;
     messagedlg('Layout de Nota Fiscal de Serviço de '+cMun.Text+' salvo com sucesso!',mtInformation, [mbok], 0);
end;

end.
