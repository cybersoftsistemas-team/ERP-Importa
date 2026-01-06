unit frmCadastro_PlanoContasECFRelac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DB,
  Buttons, DBAccess, MSAccess, MemDS, System.UITypes;

type
  TCadastro_PlanoContasECFRelac = class(TForm)
    GradeRef: TRxDBGrid;
    GradePlano: TRxDBGrid;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bCancel: TBitBtn;
    tSel: TMSQuery;
    BitBtn1: TBitBtn;
    bRelac: TSpeedButton;
    bRemoveTodos: TSpeedButton;
    cPesq2: TEdit;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    bGrupo: TButton;
    cGrupo: TComboBox;
    bDesmarcar: TButton;
    tPlano: TMSQuery;
    dstPlano: TDataSource;
    tPlanoConta: TStringField;
    tPlanoConta_ECF: TStringField;
    tPlanoDescricao: TStringField;
    tPlanoSelecao: TBooleanField;
    tPlanoCodigo: TStringField;
    StaticText3: TStaticText;
    cPesq1: TEdit;
    bSel: TSpeedButton;
    cFiltro: TRadioGroup;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GradePlanoDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradePlanoCellClick(Column: TColumn);
    procedure GradeRefDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradeRefCellClick(Column: TColumn);
    procedure bSelClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure GradePlanoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure bRelacClick(Sender: TObject);
    procedure bRemoveTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bGrupoClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure cPesq1Change(Sender: TObject);
    procedure cPesq2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cFiltroClick(Sender: TObject);
    procedure GradeRefMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GradePlanoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GradePlanoDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
    mSelecionou   : boolean;
    mContador     : integer;
    mContadorFinal: integer;
  public
    { Public declarations }
  end;

var
  Cadastro_PlanoContasECFRelac: TCadastro_PlanoContasECFRelac;

implementation

uses frmDMContab, frmDados;

{$R *.dfm}

procedure TCadastro_PlanoContasECFRelac.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_PlanoContasECFRelac.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_PlanoContasECFRelac.Release;
     Cadastro_PlanoContasECFRelac := nil;
end;

procedure TCadastro_PlanoContasECFRelac.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_PlanoContasECFRelac.GradePlanoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
   mGrupo: Integer;
begin
     Icon := TBitmap.Create;
     With dmContab do Begin
          mGrupo := 0;
          With GradePlano.Canvas do begin
               if Trim(tPlano.FieldByName('Conta_ECF').AsString) <> '' then begin
                  mGrupo := StrtoInt(Copy(tPlano.FieldByName('Conta_ECF').AsString, 1, 1));
                  Font.Style := [fsBold];
               end;

               Font.Color := clBlack;
               Case mGrupo of
                    1:Font.Color := clBlue;
                    2:Font.Color := clRed;
                    3:Font.Color := clGreen;
                    4:Font.Color := clYellow;
                    5:Font.Color := clNavy;
                    6:Font.Color := clSilver;
                    7:Font.Color := clGray;
                    8:Font.Color := clFuchsia;
                    9:Font.Color := clBlack;
               end;
               FillRect(Rect);
               TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          End;

          If (Column.FieldName = 'Selecao') then begin
             With GradePlano.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (tPlano.FieldByName('Selecao').AsBoolean) then
                     Dados.ImageList1.GetBitmap(11, Icon)
                  else
                     Dados.ImageList1.GetBitmap(10, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TCadastro_PlanoContasECFRelac.GradePlanoCellClick(Column: TColumn);
begin
      dmContab.PlanoContasECF.Locate('Conta', Trim(tPlano.FieldByname('Conta').Asstring), [loCaseInsensitive]);
      if (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := GradePlano.DataSource.DataSet.RecNo;
      end;
end;

procedure TCadastro_PlanoContasECFRelac.GradeRefDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   mGrupo: Integer;
begin
     mGrupo := 0;
     With dmContab do Begin
          if Copy(PlanoContasECF.FieldByName('Conta').AsString, 1, 1) <> '' then
             mGrupo := StrtoInt(Copy(PlanoContasECF.FieldByName('Conta').AsString, 1, 1));
             
          With GradeRef .Canvas do begin
               Case mGrupo of 
                    1:Font.Color := clBlue;
                    2:Font.Color := clRed;
                    3:Font.Color := clGreen;
                    4:Font.Color := clYellow;
                    5:Font.Color := clNavy;
                    6:Font.Color := clSilver;
                    7:Font.Color := clGray;
                    8:Font.Color := clFuchsia;
                    9:Font.Color := clBlack;
               end;
               FillRect(Rect);
               TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          End;
     End;
end;

procedure TCadastro_PlanoContasECFRelac.GradeRefCellClick(Column: TColumn);
begin
      with dmContab do begin
           tPlano.Locate('Conta', PlanoContasECF.FieldByName('Conta').Value, [loPartialKey]);
      end;
end;

procedure TCadastro_PlanoContasECFRelac.bSelClick(Sender: TObject);
var
   i:integer;
   mCod:string;
begin
      mCod := tPlano.fieldByName('Codigo').AsString;
      for i := 0 to GradePlano.SelectedRows.Count -1 do begin
          GradePlano.DataSource.DataSet.GotoBookMark((GradePlano.SelectedRows.Items[i]));
          tSel.SQL.Clear;
          tSel.SQL.Add('UPDATE PlanoContas SET Selecao = CASE WHEN Selecao = 1 THEN 0 ELSE 1 END WHERE Codigo = :pCod');
          tSel.ParamByName('pCod').AsString := tPlanoCodigo.Asstring;
          tSel.Execute;
      end;
      tPlano.Refresh;
      tPlano.Locate('Codigo', mCod, [loCaseInsensitive]);
end;

procedure TCadastro_PlanoContasECFRelac.bCancelClick(Sender: TObject);
begin
      tSel.SQL.Clear;
      tSel.SQL.Add('UPDATE PlanoContas SET Selecao = 0');
      tSel.Execute;
      tPlano.Refresh;
end;

procedure TCadastro_PlanoContasECFRelac.GradePlanoKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If (mSelecionou = true) and (Key = 16) and (GradePlano.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal := GradePlano.DataSource.DataSet.RecNo;
        GradePlano.DataSource.DataSet.RecNo := mContador;
        Repeat
             GradePlano.SelectedRows.CurrentRowSelected := true;
             GradePlano.DataSource.DataSet.Next;
        until
             (GradePlano.DataSource.DataSet.RecNo = mContadorFinal) or (tPlano.Eof);
     end;
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TCadastro_PlanoContasECFRelac.BitBtn1Click(Sender: TObject);
begin
      if MessageDlg('Atenção!'+#13+#13+'Isso irá apagar todas as contas que já foram relacionadas.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         tSel.SQL.Clear;
         tSel.SQL.Add('UPDATE PlanoContas SET Conta_ECF = NULL');
         tSel.Execute;
         tPlano.Refresh;
      end;
end;

procedure TCadastro_PlanoContasECFRelac.bRelacClick(Sender: TObject);
var
   mCod:string;
begin
      mCod := tPlano.FieldByName('Codigo').AsString;
      tSel.SQL.Clear;
      tSel.SQL.Add('UPDATE PlanoContas SET Conta_ECF = :pConta');
      tSel.SQL.Add('                      ,Selecao   = 0');
      tSel.SQL.Add('WHERE Selecao = 1 AND ISNULL(Conta_ECF, '''') = '''' ');
      tSel.ParamByName('pCOnta').AsString := dmContab.PlanoContasECFConta.AsString;
      tSel.Execute;
      tPlano.Refresh;
      tPlano.Locate('Codigo', mCod, [loCaseInsensitive]);
end;

procedure TCadastro_PlanoContasECFRelac.bRemoveTodosClick(Sender: TObject);
var
   mCod:string;
begin
      if MessageDlg('Atenção!'+#13+#13+'Isso irá apagar todos relacionamentos das contas selecionadas.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         mCod := tPlano.FieldByName('Codigo').AsString;
         with dmContab do begin
              tSel.SQL.Clear;
              tSel.SQL.Add('UPDATE PlanoContas SET Conta_ECF = NULL');
              tSel.SQL.Add('WHERE Selecao = 1');
              tSel.Execute;
              tPlano.Refresh;
              tPlano.Locate('Codigo', mCod, [loCaseInsensitive]);
         end;
      end;
end;

procedure TCadastro_PlanoContasECFRelac.FormShow(Sender: TObject);
begin
      with dmContab do begin
           tPlano.SQL.Clear;
           tPlano.SQL.Add('SELECT Conta');
           tPlano.SQL.Add('      ,Conta_ECF');
           tPlano.SQL.Add('      ,Descricao');
           tPlano.SQL.Add('      ,Selecao');
           tPlano.SQL.Add('      ,Codigo');
           tPlano.SQL.Add('FROM PlanoContas');
           tPlano.SQL.Add('ORDER BY Conta, Descricao');
           tPlano.Open;

           tSel.SQL.Clear;
           tSel.SQL.Add('SELECT Conta FROM PlanoContas WHERE Sintetica = 1');
           tSel.Open;
           while not tSel.Eof do begin
                 cGrupo.Items.Add(tSel.FieldByName('Conta').Value);
                 tSel.Next;
           end;

           tPlanoConta.EditMask := Dados.EmpresasMascara_PlanoContas.AsString+';0; ';
      end;
end;

procedure TCadastro_PlanoContasECFRelac.bGrupoClick(Sender: TObject);
begin
      with dmContab do begin
           tSel.SQL.Clear;
           tSel.SQL.Add('UPDATE PlanoContas SET Selecao = 1 WHERE Conta LIKE '+QuotedStr(Trim(cGrupo.Text)+'%') );
           tSel.Execute;
           tPlano.Refresh;
           tPlano.Locate('Conta', cGrupo.Text, [loPartialKey]);
      end;
end;

procedure TCadastro_PlanoContasECFRelac.bDesmarcarClick(Sender: TObject);
begin
      with dmContab do begin
          tSel.SQL.Clear;
          tSel.SQL.Add( 'UPDATE PlanoContas SET Selecao = 0' );
          tSel.Execute;
          tPlano.Refresh;
          tPlano.Locate('Conta', cGrupo.Text, [loPartialKey]);
      end;
end;

procedure TCadastro_PlanoContasECFRelac.cPesq1Change(Sender: TObject);
begin
      if not tPlano.Locate('Codigo', cPesq1.Text, [loCaseInsensitive]) then begin
         if tPlano.Locate('Descricao', cPesq1.Text, [loPartialKey]) = False then begin
            if tPlano.Locate('Descricao', cPesq1.Text, [loPartialKey]) = False then begin
               tSel.SQL.Clear;
               tSel.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesq1.Text+'%')+')');
               tSel.Open;
               tPlano.Locate('Codigo', tSel.FieldByName('Codigo').AsString, [loCaseInsensitive]);
            end;
         end;
      end;
end;

procedure TCadastro_PlanoContasECFRelac.cPesq2Change(Sender: TObject);
begin
      with dmContab do begin
           if not PlanoContasECF.Locate('Conta', cPesq2.Text, [loCaseInsensitive]) then begin
              if PlanoContasECF.Locate('Descricao', cPesq2.Text, [loPartialKey]) = False then begin
                 tSel.SQL.Clear;
                 tSel.SQL.Add('SELECT * FROM PlanoContasECF WHERE(Descricao LIKE'+QuotedStr('%'+cPesq2.Text+'%')+')');
                 tSel.Open;
                 PlanoContasECF.Locate('Registro', tSel.FieldByName('Registro').AsString, [loCaseInsensitive]);
              end;
           end;
      end;
end;

procedure TCadastro_PlanoContasECFRelac.FormKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      If (ssShift in Shift) then
          mSelecionou := true
      else
          mSelecionou := false;
end;

procedure TCadastro_PlanoContasECFRelac.cFiltroClick(Sender: TObject);
begin
     GradePlano.ScrollDisabled;
     tPlano.Close;
     tPlano.SQL.Clear;
     tPlano.SQL.Add('SELECT Conta');
     tPlano.SQL.Add('      ,Conta_ECF');
     tPlano.SQL.Add('      ,Descricao');
     tPlano.SQL.Add('      ,Selecao');
     tPlano.SQL.Add('      ,Codigo');
     tPlano.SQL.Add('FROM PlanoContas');
     if cFiltro.ItemIndex = 1 then tPlano.SQL.Add('WHERE ISNULL(Conta_ECF, '''') <> '''' ');
     if cFiltro.ItemIndex = 2 then tPlano.SQL.Add('WHERE ISNULL(Conta_ECF, '''') = '''' ');

     tPlano.SQL.Add('ORDER BY Conta, Descricao');
     tPlano.Open;
     GradePlano.EnableScroll;
end;

procedure TCadastro_PlanoContasECFRelac.GradeRefMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      GradeRef.BeginDrag(True);
end;

procedure TCadastro_PlanoContasECFRelac.GradePlanoDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TCadastro_PlanoContasECFRelac.GradePlanoDragDrop(Sender,Source: TObject; X, Y: Integer);
var
   mCod:string;
begin
      with dmContab do begin
           mCod := tPlano.FieldByName('Codigo').AsString;
           PlanoContas.Locate('Codigo', tPlano.FieldByName('Codigo').Value, [loCaseInsensitive]);
           PlanoContas.Edit;
                       PlanoContas.FieldByName('Conta_ECF').Value := PlanoContasECF.FieldByname('Conta').AsString;
           PlanoContas.Post;
           tPlano.Refresh;
           tPlano.Locate('Codigo', mCod, [loCaseInsensitive]);
      end;
end;

end.
