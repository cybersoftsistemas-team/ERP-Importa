unit frmCadastro_Usuarios2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, DBGrids, DB, Vcl.ComCtrls, Funcoes, DBAccess, MSAccess,
  RXCtrls, Menus, RXDBCtrl, RxLookup, Grids, Mask, MemDS, system.UITypes, Vcl.ValEdit, VirtualTable, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppChrt, myChkBox, ppVar, System.ImageList, Vcl.ImgList;
type
    TCadastro_Usuarios2 = class(TForm)
    Panel1: TPanel;
    cMatricula: TDBEdit;
    cNome: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText11: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Panel2: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    StaticText3: TStaticText;
    DBEdit4: TDBEdit;
    StaticText4: TStaticText;
    DBEdit5: TDBEdit;
    tRegistro: TMSQuery;
    bPerfil: TButton;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText6: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    DBComboBox1: TDBComboBox;
    StaticText13: TStaticText;
    DBEdit8: TDBEdit;
    bImprimir: TButton;
    rPerfil: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    pPerfil: TppDBPipeline;
    dstPerfil: TDataSource;
    tPerfil: TMSQuery;
    ppDBText3: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    iLogo: TppImage;
    ppDBText2: TppDBText;
    pEmpresas: TppDBPipeline;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    pUsuario: TppDBPipeline;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLine2: TppLine;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    lPerfil: TppLabel;
    ImageList1: TImageList;
    StaticText5: TStaticText;
    cCodigoRep: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    Grade: TDBGrid;
    GradeUsuarios: TDBGrid;
    bRemover: TButton;
    bAdicionarTodos: TButton;
    bRemoverTodos: TButton;
    bAdd: TButton;
    GroupBox1: TGroupBox;
    OpMenu: TTreeView;
    bSelTodos: TButton;
    bSelNenhum: TButton;
    StaticText7: TStaticText;
    cNivel: TDBLookupComboBox;
    StaticText10: TStaticText;
    DBEdit6: TDBEdit;
    StaticText12: TStaticText;
    DBEdit7: TDBEdit;
    ppImage1: TppImage;
    GroupBox3: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    GroupBox2: TGroupBox;
    cAtiva: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox162: TDBCheckBox;
    DBCheckBox194: TDBCheckBox;
    DBCheckBox249: TDBCheckBox;
    DBCheckBox250: TDBCheckBox;
    DBCheckBox251: TDBCheckBox;
    cCallCenter: TDBCheckBox;
    DBCheckBox216: TDBCheckBox;
    DBCheckBox192: TDBCheckBox;
    GroupBox5: TGroupBox;
    cVerLib: TDBCheckBox;
    cVerConf: TDBCheckBox;
    cVerFat: TDBCheckBox;
    cVerdesp: TDBCheckBox;
    DBCheckBox252: TDBCheckBox;
    DBCheckBox253: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure bRemoverClick(Sender: TObject);
    procedure bRemoverTodosClick(Sender: TObject);
    procedure bAdicionarTodosClick(Sender: TObject);
    procedure Filtra;
    procedure cMatriculaChange(Sender: TObject);
    procedure bPerfilClick(Sender: TObject);
    procedure cCallCenterClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure OpMenuClick(Sender: TObject);
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
  private
    procedure SalvaPermissoes;
    procedure CarregaPermissoes;
    procedure ListarNomesMenu(Menu: TMenuItem; Lista: TStrings);
    procedure LoadMenuToTreeView2;
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
    mQtMenu: integer;
  end;

var
  Cadastro_Usuarios2: TCadastro_Usuarios2;

implementation

uses frmDados, frmCadastros_UsuariosPerfil, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Usuarios2.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Usuarios2.FormShow(Sender: TObject);
var
   i : Integer;
begin
      Screen.Cursor := crSQLWait;
      // Desabilita todos os tabsheets.
//      for i := 0 to ComponentCount -1 do begin
//          if Components[i] is TTabSheet then begin
//            TTabSheet(Components[i]).Enabled := false;
//          end;
//      end;
      With Dados do begin
           with usuarios do begin 
                sql.Clear;
                sql.Add('select * from Usuarios order by Nome');
                Open;
           end;
           with NivelClassificacao do begin
                sql.Clear;
                sql.Add('SELECT * FROM NivelClassificacao ORDER BY Nivel Desc, Descricao');
                Open;
           end;
           with Fornecedores do begin 
                sql.Clear;
                sql.Add('SELECT * FROM Fornecedores FR WHERE ISNULL(Ativo, 0) = 1 AND ISNULL((SELECT Comissionado FROM RamoAtividade RA WHERE RA.Codigo = FR.Ramo_Atividade), 0) = 1');
                Open;
           end;
           with Log do begin 
                sql.Clear;
                sql.Add('SELECT * FROM Log WHERE (Data = :pData) ORDER BY Data,Hora DESC ');
                ParamByName('pData').AsDate := Date;
                Open;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Usuarios2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       Dados.Usuarios.Close;
       LimpaMemoria;
end;

procedure TCadastro_Usuarios2.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
   i: Integer;
begin
      If Button = nbInsert then Begin
         Dados.UsuariosChave_Cadastro.Value := True;
         Dados.UsuariosAtivo.Value          := True;

         // Coloca todos os campos boleanos em false.
         For i := 0 to (Dados.Usuarios.FieldCount -1) do begin
             If Dados.Usuarios.Fields[i].DataType = ftBoolean then begin
                Dados.Usuarios.Fields[i].Value := false;
             End;
         End;
      End;

      cNome.Enabled   := (Button = nbInsert) or (Button = nbEdit) and (Dados.UsuariosNome.AsString <> 'ADMINISTRADOR');
      cAtiva.Enabled  := (Button = nbInsert) or (Button = nbEdit) and (Dados.UsuariosNome.AsString <> 'ADMINISTRADOR');
      bPerfil.Enabled := true;

      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel1.Enabled := True;
         cMatricula.SetFocus;
         bPerfil.Enabled := false
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel1.Enabled := False;
      End;

      // Habilita todos os tabsheets.
      For i := 0 to ComponentCount -1 do begin
          If Components[i] is TTabSheet then begin
             TTabSheet(Components[i]).Enabled := Panel1.Enabled;
          End;
      End;
end;

procedure TCadastro_Usuarios2.ppDetailBand1BeforePrint(Sender: TObject);
begin
     ppImage1.Left := tPerfil.fieldbyname('Coluna').asfloat;
     ImageList1.GetBitmap(iif(tPerfil.fieldbyname('Permissao').asboolean, 1, 0), ppImage1.Picture.Bitmap);
     ppDBText3.Font.Color := iif(tPerfil.fieldbyname('Permissao').asboolean, clBlack, clSilver);
end;

procedure TCadastro_Usuarios2.FormCreate(Sender: TObject);
begin
      if Screen.Height <= 768 then begin
         ScaleBy(85, 100);
      end;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      LoadMenuToTreeView2;
end;

procedure TCadastro_Usuarios2.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Código/Nome:', mPesquisa);
     If Dados.Usuarios.Locate('Matricula', mPesquisa, [loCaseInsensitive]) = False then begin
        Dados.Usuarios.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]);
     End;
end;

procedure TCadastro_Usuarios2.bSelTodosClick(Sender: TObject);
var 
   i: integer;
begin
     opMenu.Items.BeginUpdate;
     for i := 0 to pred(opMenu.Items.Count) do begin
         opMenu.Items[i].SelectedIndex := 1;
         opMenu.Items[i].ImageIndex    := 1;
     end;
    opMenu.Items.EndUpdate;
end;

procedure TCadastro_Usuarios2.bSelNenhumClick(Sender: TObject);
var 
   i: integer;
begin
     for i := 0 to pred(opMenu.Items.Count) do begin
         opMenu.Items[i].SelectedIndex := 0;
         opMenu.Items[i].ImageIndex    := 0;
     end;
end;

procedure TCadastro_Usuarios2.bAddClick(Sender: TObject);
var
    mSel: Integer;
begin
      // Salva as empresas selecionadas para o usuário.
      With Dados do begin
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM UsuariosEmpresas');

           for mSel := 0 to Grade.SelectedRows.Count-1 do begin
               Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

               tRegistro.Open;
               UsuariosEmpresas.Append;
                                UsuariosEmpresasRegistro.Value     := tRegistro.FieldByName('Registro').AsInteger + 1;
                                UsuariosEmpresasMatricula.Value    := UsuariosMatricula.AsString;
                                UsuariosEmpresasEmpresa.Value      := EmpresasCodigo.Value;
                                UsuariosEmpresasRazao_Social.Value := EmpresasRazao_Social.Value;
                                UsuariosEmpresasCNPJ.Value         := EmpresasCNPJ.Value;
                                UsuariosEmpresasEstado.Value       := EmpresasEstado.Value;
                                UsuariosEmpresasFilial.Value       := EmpresasNumero_Filial.AsInteger;
               UsuariosEmpresas.Post;
               tRegistro.Close;
           end;
           Filtra;
      End;
end;

procedure TCadastro_Usuarios2.bRemoverClick(Sender: TObject);
var
   mSel: Integer;
begin
      With Dados do begin
           For mSel := 0 to GradeUsuarios.SelectedRows.Count-1 do begin
               GradeUsuarios.DataSource.DataSet.GotoBookMark((GradeUsuarios.SelectedRows.Items[mSel]));
               UsuariosEmpresas.Delete;
           End;
           Filtra;
      End;
end;

procedure TCadastro_Usuarios2.bRemoverTodosClick(Sender: TObject);
begin
      With Dados do begin
           UsuariosEmpresas.SQL.Clear;
           UsuariosEmpresas.SQL.Add('DELETE FROM UsuariosEmpresas WHERE Matricula = :pMatricula');
           UsuariosEmpresas.ParamByName('pMaTricula').AsString := UsuariosMatricula.AsString;
           UsuariosEmpresas.Execute;
           Filtra;
      End;
end;

procedure TCadastro_Usuarios2.bAdicionarTodosClick(Sender: TObject);
var
    mSel: Integer;
begin
      With Dados do begin
           Empresas.DisableControls;
           UsuariosEmpresas.DisableControls;
           with UsuariosEmpresas do begin
                sql.clear;
                sql.add('delete from UsuariosEmpresas where Matricula = :pMatricula');
                parambyName('pMaTricula').AsString := UsuariosMatricula.AsString;
                execute;
                sql.clear;
                sql.add('select * from UsuariosEmpresas');
                open;
           end;
           with tRegistro do begin 
                sql.clear;
                sql.add('select isnull(max(Registro), 0)+1 as Registro from UsuariosEmpresas');
           end;
           with Empresas do begin
                first;
                while not eof do begin
                      Grade.SelectedRows.CurrentRowSelected := True;
                      next;
                end;
           end;
           Grade.Refresh;
           Application.ProcessMessages;

           for mSel := 0 to Grade.SelectedRows.Count-1 do begin
               Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

               tRegistro.Open;
               UsuariosEmpresas.Append;
                                UsuariosEmpresasRegistro.Value     := tRegistro.FieldByName('Registro').AsInteger + 1;
                                UsuariosEmpresasMatricula.Value    := UsuariosMatricula.AsString;
                                UsuariosEmpresasEmpresa.Value      := EmpresasCodigo.Value;
                                UsuariosEmpresasRazao_Social.Value := EmpresasRazao_Social.Value;
                                UsuariosEmpresasCNPJ.Value         := EmpresasCNPJ.Value;
                                UsuariosEmpresasEstado.Value       := EmpresasEstado.Value;
                                UsuariosEmpresasFilial.Value       := EmpresasNumero_Filial.AsInteger;
               UsuariosEmpresas.Post;
               tRegistro.Close;
           end;
           Filtra;
           Empresas.EnableControls;
           UsuariosEmpresas.EnableControls;
      end;
end;

procedure TCadastro_Usuarios2.bImprimirClick(Sender: TObject);
var 
   i,j, x, indent: integer;    
   Node: TTreeNode;
begin
     with tPerfil do begin
          sql.Clear;
          sql.Add('delete from PerfilMenu');
          execute;
          sql.Clear;
          sql.Add('select * from PerfilMenu order by Pai');
          open;
          Node := OpMenu.Items.GetFirstNode;
          i := 0;
          while Node <> nil do begin
                Indent := Node.Level * 8;
                append;
                     fieldbyname('Pai').Value       := i;
                     fieldbyname('Nome').Value      := stringofchar(' ', Indent)+Node.Text;
                     fieldbyname('Permissao').Value := Node.ImageIndex;
                     if Node.Level = 0 then fieldbyname('Coluna').Value := 0;
                     if Node.Level = 1 then fieldbyname('Coluna').Value := (Indent/100)+0.20;
                     if Node.Level = 2 then fieldbyname('Coluna').Value := (Indent/100)+0.35;
                     if Node.Level = 3 then fieldbyname('Coluna').Value := (Indent/100)+0.50;
                     if Node.Level = 4 then fieldbyname('Coluna').Value := (Indent/100)+0.70;
                     if Node.Level = 5 then fieldbyname('Coluna').Value := (Indent/100)+0.90;
                post;
                inc(i);
                Node := Node.GetNext;
          end;
     end;
          
     with Dados do begin
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pCod');
               parambyname('pCod').asinteger := Menu_Principal.mEmpresa;
               open;
          end;
          lPerfil.Caption := '';
          lPerfil.Caption := lPerfil.Caption + iif(Usuarios.FieldByName('Diretor').AsBoolean, 'Diretor / ', '');
          lPerfil.Caption := lPerfil.Caption + iif(Usuarios.FieldByName('Gerente').AsBoolean, 'Gerente / ', '');
          lPerfil.Caption := lPerfil.Caption + iif(Usuarios.FieldByName('Comprador').AsBoolean, 'Comprador', '');
     end;
     with tPerfil do begin
          DisableControls;
          sql.clear;
          sql.Add('select * from PerfilMenu order by Pai');
          open;
          First;
          EnableControls;
     end;
     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;

     rPerfil.Print;
     rPerfil.Reset;
end;

procedure TCadastro_Usuarios2.OpMenuClick(Sender: TObject);
var
  Node: TTreeNode;
begin
    opMenu.Items.BeginUpdate;
    Node := OpMenu.GetNodeAt(OpMenu.ScreenToClient(Mouse.CursorPos).X, OpMenu.ScreenToClient(Mouse.CursorPos).Y);
    if Assigned(Node) then begin
       // Alterna entre marcado e desmarcado.
       if Node.ImageIndex = 0 then begin
          Node.ImageIndex    := 1;
          Node.SelectedIndex := 1;
       end else begin
          Node.ImageIndex    := 0;
          Node.SelectedIndex := 0;
       end;
    end;
    opMenu.Items.EndUpdate;
end;

procedure TCadastro_Usuarios2.Filtra;
begin
     Screen.Cursor := crSQLWait;
     with Dados do begin
          with UsuariosEmpresas do begin
               sql.Clear;
               sql.Add('select * from UsuariosEmpresas where Matricula = :pMatricula');
               parambyname('pMatricula').AsString := UsuariosMatricula.AsString;
               open;
          end;
          with Permissoes do begin
               sql.Clear;
               sql.Add('select * from UsuariosPermissoes where Matricula = :pMatricula');
               parambyname('pMatricula').AsString := UsuariosMatricula.AsString;
               open;
          end;
          with Empresas do begin 
               sql.clear;
               sql.add('select * from Empresas');
               sql.add('where Codigo not in(select distinct Empresa from UsuariosEmpresas where Matricula = :pMatricula)');
               parambyname('pMatricula').AsString := UsuariosMatricula.AsString;
               sql.add('order by Razao_Social');
               open;
          end;
          CarregaPermissoes;
     end;
     Screen.Cursor := crDefault;
end;

procedure TCadastro_Usuarios2.cMatriculaChange(Sender: TObject);
begin
      Filtra;
end;

procedure TCadastro_Usuarios2.bPerfilClick(Sender: TObject);
begin
      Cadastros_UsuariosPerfil := TCadastros_UsuariosPerfil.Create(Self);
      Cadastros_UsuariosPerfil.Caption := Caption;
      Cadastros_UsuariosPerfil.ShowModal;
end;

procedure TCadastro_Usuarios2.cCallCenterClick(Sender: TObject);
begin
      with Dados do begin
           if (Usuarios.State = dsInsert) or (Usuarios.State = dsEdit) then begin
              cCodigoRep.Enabled := cCallCenter.Checked;
              if not cCallCenter.Checked then Dados.UsuariosCodigo_Representante.Clear;
           end;   
      end;     
end;

procedure TCadastro_Usuarios2.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if Button = nbPost then begin
              if (cCallCenter.Checked) and (UsuariosCodigo_Representante.AsInteger = 0) then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'Para usuários assinalados como "Atendente de Call Center" o código do representante é necessário.', mtError, [mbOK], 0);
              end;
              SalvaPermissoes;
           end;
      end;
end;

procedure TCadastro_Usuarios2.ListarNomesMenu(Menu: TMenuItem; Lista: TStrings);
var
  i: Integer;
begin
     for i := 0 to PRED(Menu.Count) do begin
         if Menu.Items[i].Caption <> '-' then begin
            Lista.Add(Menu.Items[i].Name);
         end;
         // Chamada recursiva para submenus
         if Menu.Items[i].Count > 0 then begin
            ListarNomesMenu(Menu.Items[i], Lista);
         end;
     end;
end;

procedure TCadastro_Usuarios2.SalvaPermissoes;
var
  i, s: Integer;
  MenuNomes: TStringList;
begin
     // Salva as permissões de usuário na tabela de permissões.
     MenuNomes := TStringList.Create;
     ListarNomesMenu(Menu_Principal.Menu.Items, MenuNomes);
     
     with Dados do begin    
          try
              with Permissoes do begin
                   // Apaga as permissões existentes.
                   sql.Clear;
                   sql.Add('delete FROM UsuariosPermissoes where Matricula = :pMat');
                   parambyname('pMat').AsString := Usuarios.FieldByName('Matricula').AsString;
                   execute;
                   sql.clear;
                   sql.add('select * from UsuariosPermissoes where Matricula = :pMat');
                   parambyname('pMat').AsString := Usuarios.FieldByName('Matricula').AsString;
                   open;
                   for i := 0 to pred(OpMenu.Items.Count) do begin
                       Append;
                             FieldByName('Matricula').Value := Usuarios.FieldByName('Matricula').Value;
                             FieldByName('Indice').Value    := i;
                             FieldByName('Nome').Value      := MenuNomes[i];
                             FieldByName('Permitido').Value := opMenu.Items[i].ImageIndex = 1;
                             FieldByName('Descricao').Value := OpMenu.Items[i].Text;
                       Post;
                   end;
              end;
          except on E: Exception do
              Showmessage('Falha desconhecida, não pode salvar as permissões do usuário!'+E.Message);
          end;
     end;
     MenuNomes.Free;
end;

procedure TCadastro_Usuarios2.CarregaPermissoes;
var
  i: Integer;
begin
     // Carrega as permissões de usuário da tabela de permissões.
     with Dados do begin    
          try
              with OpMenu do begin
                   for i := 0 to pred(OpMenu.Items.Count) do begin
                       opMenu.Items[i].ImageIndex := 0;
                   end;
              end;
              with Permissoes do begin
                   sql.clear;
                   sql.add('select * from UsuariosPermissoes where Matricula = :pMat order by Indice');
                   parambyname('pMat').AsString := Usuarios.FieldByName('Matricula').AsString;
                   open;
                   first;
                   while not eof do begin
                         if fieldbyname('Indice').AsInteger <= mQtMenu then begin;
                            opMenu.Items[fieldbyname('Indice').AsInteger].ImageIndex := iif(fieldbyname('Permitido').Asboolean, 1, 0);
                         end;
                         next;
                   end;
              end;
          except on E: Exception do
              Showmessage('Falha desconhecida, não pode carregar as permissões do usuário!'+E.Message);
          end;
     end;
end;

procedure TCadastro_Usuarios2.LoadMenuToTreeView2;
         procedure AddMenuItemsToNode(MenuItem: TMenuItem; ParentNode: TTreeNode);
         var
            i: Integer;
            Node: TTreeNode;
         begin
              if MenuItem.Caption <> '-' then begin
                 Node      := OpMenu.Items.AddChild(ParentNode, stringreplace(MenuItem.Caption, '&', '', [rfReplaceAll]));
                 Node.Data := Pointer(MenuItem); // opcional, caso queira associar o MenuItem original
                 inc(mQtMenu);
                 for i := 0 to pred(MenuItem.Count) do begin
                     AddMenuItemsToNode(MenuItem.Items[i], Node);
                 end;
              end;
         end;
var
  i: Integer;
begin
     with OpMenu do begin
          Items.BeginUpdate;
          try
              Items.clear;
              for i := 0 to pred(Menu_Principal.Menu.Items.Count) do begin
                  AddMenuItemsToNode(Menu_Principal.Menu.Items[i], nil);
              end;    
           finally
              Items.EndUpdate;
           end;
           if Items.Count > 0 then begin
              FullExpand;
              Selected := OpMenu.Items[0];
           end;
     end;      
end;


end.



