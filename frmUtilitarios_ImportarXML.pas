unit frmUtilitarios_ImportarXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Vcl.ComCtrls,
  DB, DBAccess, MSAccess, Funcoes, Grids, Menus,
  Buttons, xmldom, XMLIntf, msxmldom, XMLDoc, Mask, RxToolEdit, MemDS;

type
  TUtilitarios_ImportarXML = class(TForm)
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    cArquivo: TFilenameEdit;
    Panel1: TPanel;
    bImportar: TButton;
    Button3: TButton;
    cTab: TComboBox;
    Tabelas: TMSQuery;
    StaticText6: TStaticText;
    MenuCampos: TPopupMenu;
    este1: TMenuItem;
    Temp: TMSQuery;
    cCampoReg: TCheckBox;
    cRepetir: TCheckBox;
    bAtu: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText1: TStaticText;
    cCampoChave: TComboBox;
    tReg: TMSQuery;
    cLimpar: TCheckBox;
    cMai: TRadioGroup;
    XML: TTreeView;
    XMLDoc: TXMLDocument;
    Grade: TStringGrid;
    StaticText3: TStaticText;
    Edit1: TEdit;
    StaticText4: TStaticText;
    Edit2: TEdit;
    gCampos: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cTabChange(Sender: TObject);
    procedure CapturaClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure cArquivoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure GeraTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
    procedure PegaNo;
    { Private declarations }
  public
    { Public declarations }
    mLinha:Integer;
  end;

var
  Utilitarios_ImportarXML: TUtilitarios_ImportarXML;

implementation

uses frmJanela_Processamento, frmDados;

{$R *.dfm}

procedure TUtilitarios_ImportarXML.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');

     try
         with Tabelas do begin
              SQL.Clear;
              SQL.Add('select table_catalog');
              SQL.Add('      ,table_schema');
              SQL.Add('      ,table_name');
              SQL.Add('      ,table_type');
              SQL.Add('from information_schema.tables');
              SQL.Add('union all');
              SQL.Add('select table_catalog');
              SQL.Add('      ,table_schema');
              SQL.Add('      ,table_name');
              SQL.Add('      ,table_type');
              SQL.Add('from Cybersoft_Cadastros.information_schema.tables');
              SQL.Add('order BY Table_Name');
              Open;
              First;
              while not Tabelas.eof do begin
                    cTab.Items.add(FieldByname('Table_Name').asstring);
                    next;
              end;
         end;
     except
     
     end;
     PageControl1.ActivePageIndex := 0;
end;

procedure TUtilitarios_ImportarXML.Button3Click(Sender: TObject);
begin
     close;
end;

procedure TUtilitarios_ImportarXML.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     SetCurrentDir(ExtractFilePath(Application.ExeName));
     Utilitarios_ImportarXML.Release;
     Utilitarios_ImportarXML:= nil;
end;

procedure TUtilitarios_ImportarXML.cTabChange(Sender: TObject);
var
   NovoItem  : TMenuItem;
   Lista     : TListBox;
   MenuCampos: TPopUpMenu;
   i, mQuebra, g: Integer;
begin
     with Temp do begin
          Tabelas.locate('Table_Name', cTab.text, [loCaseInsensitive]);
          Temp.Connection := Dados.Banco_Empresas;
          if Tabelas.fieldbyname('table_catalog').asstring = 'Cybersoft_Cadastros' then Temp.Connection := Dados.Banco;
          sql.Clear;
          sql.Add('select top 1 * from '+Tabelas.fieldbyname('table_catalog').asstring+'.dbo.'+cTab.Text);
          Open;
     end;

     MenuCampos           := TPopUpMenu.Create(Utilitarios_ImportarXML);
     MenuCampos.OwnerDraw := false;
     NovoItem             := TMenuItem.Create(MenuCampos);
     NovoItem.Caption     := '-';

     MenuCampos.Items.Insert(0, NovoItem);
     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := 'Limpar';
     MenuCampos.Items.Insert(0, NovoItem);
     MenuCampos.Items.Items[0].OnClick := CapturaClick;

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := '-';
     MenuCampos.Items.Insert(1, NovoItem);
     MenuCampos.Items.Items[1].OnClick := CapturaClick;

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := 'Remover Simbolos de Mascara [REM]';
     MenuCampos.Items.Insert(2, NovoItem);
     MenuCampos.Items.Items[2].OnClick := CapturaClick;

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := 'Maiúsculo [MAI]';
     MenuCampos.Items.Insert(3, NovoItem);
     MenuCampos.Items.Items[3].OnClick := CapturaClick;

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := 'Primeira Letra em Maiúsculo [PRI]';
     MenuCampos.Items.Insert(4, NovoItem);
     MenuCampos.Items.Items[4].OnClick := CapturaClick;

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := '-';
     MenuCampos.Items.Insert(5, NovoItem);
     MenuCampos.Items.Items[5].OnClick := CapturaClick;

     Grade.PopupMenu := MenuCampos;
     Lista           := TListBox.Create(Utilitarios_ImportarXML);
     Lista.Visible   := false;
     Lista.Parent    := Utilitarios_ImportarXML;
     Lista.Sorted    := true;
     Lista.Height    := 400;
     Lista.Left      := 980;
     mQuebra         := 0;

     // Pegando os nomes dos campos.
     for i := 0 to Temp.FieldCount-1 do begin
         Lista.Items.Add(Temp.Fields[i].FieldName);
         cCampoChave.Items.Add(Temp.Fields[i].FieldName);
     end;
     cCampoChave.ItemIndex := 0;

     for i := 0 to Lista.Count -1 do begin
         NovoItem             := TMenuItem.Create(MenuCampos);
         NovoItem.Caption     := Lista.Items[i];
         NovoItem.AutoCheck   := true;
         NovoItem.Checked     := false;
         NovoItem.AutoHotkeys := maParent;

         MenuCampos.Items.Insert(i+7, NovoItem);
         MenuCampos.Items.Items[i+7].OnClick := CapturaClick;

         Inc(mQuebra);
         if mQuebra = 25 then begin
            mQuebra := 0;
            NovoItem.Break := mbBreak;
         end;

         // Relaciona os campos do XML com os da tabela pelo nome.
         for g := 0 to Grade.ColCount do begin
             if Grade.Cells[g, 0] <> '' then begin
                if Pos(UpperCase('<'+Lista.Items[i]+'>'), UpperCase(Grade.Cells[g, 0])) > 0 then begin
                   Grade.Cells[g, 1] := Lista.Items[i];
                end
             end else begin
                 Break;
             end;
         end;
     end;
     bImportar.Enabled := Grade.RowCount > 2;
     XML.PopupMenu := menuCampos;
end;

{
procedure TUtilitarios_ImportarXML.CapturaClick(Sender: TObject);
var
   c:integer;
   op:string;
   cm:string;
begin
      op := RemoveCaracter('&', '', TMenuItem(Sender).Caption);
      cm := Copy(op, Pos('[', op), 5);
      TMenuItem(Sender).Checked := false;
      
      if (op = 'Limpar') then begin
         Grade.Cells[Grade.Col, 1] := ''
      end else begin
          if (cm = '[REM]') or (cm = '[MAI]') or (cm = '[PRI]') then begin
             if Pos(cm, Grade.Cells[Grade.Col, 0]) = 0 then
                Grade.Cells[Grade.Col, 0] := Grade.Cells[Grade.Col, 0]+cm
             else
                Grade.Cells[Grade.Col, 0] := RemoveCaracter(cm, '', Grade.Cells[Grade.Col, 0]);
          end else begin
             for c := 0 to Grade.ColCount -1 do begin
                 if Grade.Cells[c, 1] = op then begin
                    Grade.Cells[c, 1] := '';
                 end;
             end;
             
             gCampos.RowCount := gCampos.RowCount+1;
             gCampos.Cells[0, gCampos.RowCount] := copy(XML.Selected.Text, 1, pos('=', XML.Selected.Text)-1);
             gCampos.Cells[1, gCampos.RowCount] := op;
             
             Grade.Cells[Grade.Col, 1] := op;
             TMenuItem(Sender).Checked := true;
          end;
      end;
end;
}
procedure TUtilitarios_ImportarXML.CapturaClick(Sender: TObject);
var
   mCol,i, mmn: Integer;
begin
      //Grade.Cells[mColuna, 0] := ' ';
      // Limpa o campo de outra célula se já utilizado.
      if (RemoveCaracter('&', '', TMenuItem(Sender).Caption) <> 'Limpar') then begin
         for mCol := 0 to Grade.ColCount -1 do begin
             if Grade.Cells[mCol, 0] = RemoveCaracter('&', '', TMenuItem(Sender).Caption) then Grade.Cells[mCol, 0] := ' ';
         end;
         //Grade.Cells[mColuna, 0] := RemoveCaracter('&', '', TMenuItem(Sender).Caption);
         inc(mLinha);
         gCampos.Cells[0, mlinha] := RemoveCaracter('&', '', TMenuItem(Sender).Caption);
//         gCampos.Cells[1, mlinha] := XML.Selected.Text;
      end;
      // Recheckando as opções do menu.
      for i := 0 to pred(Grade.ColCount) do begin
          for mMn := 0 to pred(MenuCampos.Items.Count) do begin
              MenuCampos.Items[mMn].Checked   := false;
          end;
      end;
      for i := 0 to pred(Grade.ColCount) do begin
          for mMn := 0 to pred(MenuCampos.Items.Count) do begin
              if RemoveCaracter('&', '', MenuCampos.Items[mMn].Caption) = Grade.Cells[i, 0] then begin
                 MenuCampos.Items[mMn].AutoCheck := true;
                 MenuCampos.Items[mMn].Checked   := true;
              end;
          end;
      end;
      Pegano;
end;

procedure TUtilitarios_ImportarXML.bImportarClick(Sender: TObject);
var
   c,l:integer;
   Tipo:TFieldType;
begin
     Janela_Processamento.lProcesso.Caption  := 'Importando os dados do arquivo XML...Aguarde.';
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.Max      := Grade.RowCount;
     Janela_Processamento.bCancelar.Visible  := false;
     Janela_Processamento.Show;
     Application.ProcessMessages;

     if cLimpar.Checked then begin
        Temp.SQL.Clear;
        Temp.SQL.Add('TRUNCATE TABLE '+cTab.Text);
        Temp.Execute;
     end;   

     Temp.SQL.Clear;
     Temp.SQL.Add('SELECT TOP 1 * FROM '+cTab.Text);
     Temp.Open;

     tReg.SQL.Clear;
     tReg.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM '+cTab.Text);

     for l := 2 to Grade.RowCount-1 do begin
         if Grade.Cells[0, l] <> '' then begin
            if cRepetir.Checked then begin
               if Temp.Locate(cCampoChave.Text, Grade.Cells[0, l], [loCaseInsensitive]) then Break;
            end;
            Temp.Append;
                 for c := 0 to Grade.ColCount-1 do begin
                     // Script para pegar o ultimo registro da tabela.
                     if cCampoReg.Checked then begin
                        tReg.Open;
                        Temp.FieldByName('Registro').Value := tReg.FieldByName('Registro').Value;
                        tReg.Close;
                     end;

                     // Verificando o tipo do campo.
                     if Trim(Grade.Cells[c, 1]) <> '' then begin
                        Tipo := Temp.FieldByName(Grade.Cells[c, 1]).DataType;
                        if (Tipo = ftString) or (Tipo = ftMemo) then begin
                           if Pos('[REM]', Grade.Cells[c, 0]) = 0 then
                              Temp.FieldByName(Grade.Cells[c, 1]).Value := Grade.Cells[c, l]
                           else
                              Temp.FieldByName(Grade.Cells[c, 1]).Value := ApenasNumeros(Grade.Cells[c, l]);
                        end;
                        if Tipo = ftFloat then begin
                           Temp.FieldByName(Grade.Cells[c, 1]).Value := StrtoFloat(Grade.Cells[c, l]);
                        end;
                        if Tipo = ftCurrency then begin
                           Temp.FieldByName(Grade.Cells[c, 1]).Value := StrtoCurr(Grade.Cells[c, l]);
                        end;
                        if (Tipo = ftSmallint) or (Tipo = ftInteger) then begin
                           Temp.FieldByName(Grade.Cells[c, 1]).Value := StrtoInt(Grade.Cells[c, l]);
                        end;
                        if Tipo = ftBoolean then begin
                           if UpperCase(Grade.Cells[c, l]) = 'TRUE' then
                              Temp.FieldByName(Grade.Cells[c, 1]).Value := 1
                           else
                              Temp.FieldByName(Grade.Cells[c, 1]).Value := 0;
                        end;
                        if Tipo = ftDate then begin
                           Temp.FieldByName(Grade.Cells[c, 1]).Value := StrtoDate(Grade.Cells[c, l]);
                        end;
                        if Tipo = ftDateTime then begin
                           Temp.FieldByName(Grade.Cells[c, 1]).Value := StrtoDateTime(Grade.Cells[c, l]);
                        end;
                     end;
                 end;
            Temp.Post;
         end;
         Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
     end;
     Janela_Processamento.Close;
end;

procedure TUtilitarios_ImportarXML.GeraTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
var
  NodeText:string;
  NewTreeNode:TTreeNode;
  i:integer;
begin
    if XMLNode.NodeType <> ntElement then
       Exit;

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
(*
procedure TUtilitarios_ImportarXML.PegaNo;
var
  SelectedNode, ParentNode, CurrentNode: TTreeNode;
  mItem:string;
  c:integer;
begin
     // Verifica se algum nó está selecionado
     if Assigned(XML.Selected) then begin
        // Obtém o nó selecionado
        SelectedNode := XML.Selected;
        // Obtém o nó pai do nó selecionado
        ParentNode := SelectedNode.Parent;
        // Verifica se o nó tem um nó pai (não é um nó raiz)
        {
        if Assigned(ParentNode) then
           ShowMessage('O nó pai é: ' + 'ChildNode.FindNode['+quotedstr(ParentNode.Text)+'].ChildNode.FindNoe['+quotedstr(SelectedNode.Text)+']')
        else
          ShowMessage('O nó selecionado é um nó raiz, não possui nó pai.');
        }  
        mItem := copy(SelectedNode.Text, 1, pos('=', SelectedNode.Text)-1);
        {
        gCampos.Cells[1, mlinha] := ParentNode.Parent.Parent.Text;
        gCampos.Cells[2, mlinha] := ParentNode.Parent.Text;
        gCampos.Cells[3, mlinha] := ParentNode.Text;
        }
        c := 1;
        {
        repeat
//              if Assigned(ParentNode) then begin
                 gCampos.Cells[c, mlinha] := ParentNode.Parent.Text;
                 //SelectedNode := SelectedNode.Parent;
                 selectedNode.GetPrev;
                 inc(c);
//              end;
        until (ParentNode.Parent <> nil);
        }
        CurrentNode := SelectedNode.Parent;
        while currentNode <> nil do begin
              if CurrentNode.Parent = nil then
                 ShowMessage('Nó Anterior: ' + CurrentNode.Text);
              // Move para o próximo nó à esquerda (nó pai ou irmão mais à esquerda)
              CurrentNode := CurrentNode.GetPrev;
        end;
     end;
end;
*)
procedure TUtilitarios_ImportarXML.PegaNo;
var
  SelectedNode, ParentNode, CurrentNode: TTreeNode;
  mItem:string;
  c:integer;
begin
     if Assigned(XML.Selected) then begin
        SelectedNode := XML.Selected;
        ParentNode   := SelectedNode.Parent;
        mItem        := copy(SelectedNode.Text, 1, pos('=', SelectedNode.Text)-1);
        c := 1;
        CurrentNode := SelectedNode.Parent;
        while currentNode <> nil do begin
              gCampos.cells[c, mLinha] := CurrentNode.Text;
              CurrentNode := CurrentNode.GetPrev;
              inc(c);
        end;
        inc(mLinha);
     end;
end;

procedure TUtilitarios_ImportarXML.cArquivoChange(Sender: TObject);
var
   i, f, l:Integer;
   Campo, valor:string;
begin
      XMLDoc.LoadFromFile(cArquivo.FileName);
      XML.Items.Clear;
      XMLDoc.Active := True;
    
      GeraTree(XMLDoc.DocumentElement, nil);

      Grade.ColCount := 0;
      Grade.RowCount := 3;
      l              := 2;
      PageControl1.ActivePageIndex := 1;

      Janela_Processamento                    := TJanela_Processamento.Create(Self);
      Janela_Processamento.lProcesso.Caption  := 'Carregando dados do XML...Aguarde.';
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := XML.Items[0].Count-1;
      Janela_Processamento.bCancelar.Visible  := false;
      Janela_Processamento.Show;
      Application.ProcessMessages;

      for i := 0 to XML.Items[0].Count-1 do begin
          Grade.ColCount := XML.Items[0].Item[i].Count;
          for f := 0 to XML.Items[0].Item[i].Count-1 do begin
              Campo             := XML.Items[0].Item[i].Item[f].Text;
              Campo             := '<'+Copy(Campo, 1, Pos('=', Campo)-1)+'>';
              Valor             := XML.Items[0].Item[i].Item[f].Text;
              Valor             := Copy(Valor, Pos('=', Valor)+1, Length(Valor));
              Grade.cells[f, 0] := Campo;

              if cMai.itemIndex = 1 then Valor := UpperCase(Valor);
              if cMai.itemIndex = 2 then Valor := PrimeiraLetraMaiuscula(Valor);
              Grade.cells[f, l] := Valor;
          end;
          inc(l);
          Grade.RowCount := Grade.RowCount+1;
          Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position+1;
          Application.ProcessMessages;
      end;
      Janela_Processamento.close;

      for i := 0 to Grade.ColCount-1 do begin
          if Grade.Cells[i, 0] = '<>' then Grade.ColCount := Grade.ColCount -1;
      end;

      AutoAjusteCol(Grade);
      PageControl1.ActivePageIndex := 1;
      XML.FullExpand;
      XML.Select(XML.Items.GetFirstNode);

      Edit1.Text := XMLDoc.Version;
      Edit2.Text := XMLDoc.Encoding;
end;

procedure TUtilitarios_ImportarXML.FormShow(Sender: TObject);
begin
     try
         Tabelas.SQL.Clear;
         Tabelas.SQL.Add('SELECT table_catalog');
         Tabelas.SQL.Add('      ,table_schema');
         Tabelas.SQL.Add('      ,table_name');
         Tabelas.SQL.Add('      ,table_type');
         Tabelas.SQL.Add('FROM information_schema.tables');
         Tabelas.SQL.Add('ORDER BY Table_Name');
         Tabelas.Open;
         Tabelas.First;
         while not Tabelas.eof do begin
               cTab.Items.add(Tabelas.FieldByname('Table_Name').asstring);
               Tabelas.next;
         end;
     except
     
     end;
end;

end.
