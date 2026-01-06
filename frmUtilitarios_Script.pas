unit frmUtilitarios_Script;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Grids,
  DBGrids, RXCtrls, Vcl.ComCtrls, RXDBCtrl,
  Funcoes, MemDS;

type
  TUtilitarios_Script = class(TForm)
    tScript: TMSQuery;
    dstScript: TDataSource;
    Barra: TStatusBar;
    Panel2: TPanel;
    cBanco: TRadioGroup;
    cScript: TMemo;
    bExecutar: TButton;
    cHabilitar: TCheckBox;
    tTemp: TMSQuery;
    bSair: TButton;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    gCampos: TStringGrid;
    Timer1: TTimer;
    ScriptSaida: TMemo;
    bScript: TButton;
    bSalvar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cScriptKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cHabilitarClick(Sender: TObject);
    procedure tScriptAfterScroll(DataSet: TDataSet);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure gCamposClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure bScriptClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
  private
    procedure Ajusta;
    function Nometabela(sql: STRING): string;
    { Private declarations }
  public
    { Public declarations }
    h:TTime;
  end;

var
  Utilitarios_Script: TUtilitarios_Script;

implementation

uses frmDados;

{$R *.dfm}

procedure TUtilitarios_Script.bSairClick(Sender: TObject);
begin
      close;
end;

procedure TUtilitarios_Script.FormCreate(Sender: TObject);
begin
     cScript.Clear;
     //cScript.Font.Color := $006F9DFF;
     cBanco.ItemIndex := -1;
     if FileExists(ExtractFilePath(Application.ExeName)+'\Script.txt') then
        cScript.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Script.txt');

     gCampos.Cells[0,0] := ' #';
     gCampos.Cells[1,0] := '           Nome';
     gCampos.Cells[2,0] := '   Tipo';
     gCampos.Cells[3,0] := 'Tam';

end;

procedure TUtilitarios_Script.bExecutarClick(Sender: TObject);
var
   c, l:integer;
   str:string;
begin
     if cBanco.ItemIndex < 0 then begin
        Showmessage('Selecione o banco de dados para poder executar o script desejado.');
        Abort;
     end;

     if Trim(cScript.Lines.Text) = '' then begin
        Showmessage('Nenhum script informado para executar');
        Abort;
     end;

     H              := Time;
     Timer1.Enabled := true;
     
     Barra.Panels[0].Text := ' Executando script no banco de dados...Aguarde';
     Application.ProcessMessages;
     try
        if cBanco.ItemIndex = 0 then begin
           tScript.Connection := Dados.Banco_Contabilidade;
           tTemp.Connection   := Dados.Banco_Contabilidade;
        end;
        if cBanco.ItemIndex = 1 then begin
           tScript.Connection := Dados.Banco;
           tTemp.Connection   := Dados.Banco;
        end;
        if cBanco.ItemIndex = 2 then begin
           tScript.Connection := Dados.Banco_Empresas;
           tTemp.Connection   := Dados.Banco_Empresas;
        end;

        tScript.SQL.Clear;
        tScript.SQL.Add(cScript.Lines.Text);
        tScript.Execute;

        Ajusta;

        str := UpperCase(tScript.SQL.text);
        if (Pos('TRUNCATE', str) > 0) or (Pos('DELETE', str) > 0) or (Pos('UPDATE', str) > 0) then begin
           if NomeTabela(str) <> '' then begin
              tTemp.SQL.Clear;
              tTemp.SQL.Add('SELECT COUNT(*) AS Reg FROM '+NomeTabela(str));
              tTemp.Open;
              Barra.Panels[3].Text := ' Registros :'+tTemp.FieldByName('Reg').AsString;
           end;
           tScript.SQL.Clear;
           tScript.SQL.Add('SELECT * FROM '+NomeTabela(str));
           tScript.Open;
        end;

        gCampos.RowCount := tScript.FieldCount+1;
        l := 1;

        for c := 0 to tScript.FieldCount-1 do begin
            gCampos.Cells[0, l] := InttoStr(c);
            gCampos.Cells[1, l] := tScript.Fields[c].FieldName;
            gCampos.Cells[2, l] := FieldTypeNames[tScript.Fields.Fields[c].DataType];
            gCampos.Cells[3, l] := InttoStr(tScript.FieldByName(tScript.Fields[c].FieldName).Size);
            inc(l);
            Application.ProcessMessages;
        end;

        Barra.Panels[0].Text := ' Terminado.';
        Application.ProcessMessages;
        Timer1.Enabled := false;
     except
        Showmessage('Erro no script, não foi executado no banco de dados selecionado.');
     end;
end;

procedure TUtilitarios_Script.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      cScript.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Script.txt');
end;

procedure TUtilitarios_Script.cScriptKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     if Key = vk_f5 then bExecutar.Click;
end;

procedure TUtilitarios_Script.Ajusta;
var
  i: Integer;
begin
     Grade.Canvas.Font := Font;
     for i := 0 to Grade.Columns.Count - 1 do begin
         Grade.Columns[i].Title.Alignment := taCenter;
         Grade.Columns[i].Width := Grade.Columns[i].Width + 20;
     end;
end;

procedure TUtilitarios_Script.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
  R: TRect;
begin
    {exibe campo memo}
    R := Rect;
    Dec(R.Bottom, 2);
    if Grade.Fields[DataCol].DataType = ftMemo then begin
       if not (gdSelected in State) then
          Grade.Canvas.FillRect(Rect)
       else
         Grade.Canvas.FillRect(Rect);
       {Desenha o texto do campo}
       DrawText(Grade.Canvas.Handle,PChar(tScript.FieldByName(Column.FieldName).AsString), Length(tScript.FieldByName(Column.FieldName).AsString), R, DT_WORDBREAK);
    end;
end;

procedure TUtilitarios_Script.cHabilitarClick(Sender: TObject);
begin
      if cHabilitar.Checked then begin
         Grade.Options := [dgTitles, dgAlwaysShowSelection, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgEditing ];
      end else begin
         Grade.Options := [dgTitles, dgAlwaysShowSelection, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
      end;
end;

procedure TUtilitarios_Script.tScriptAfterScroll(DataSet: TDataSet);
begin
     Grade.Refresh;
     Barra.Panels[2].Text := ' Linha :'+InttoStr(Grade.DataSource.DataSet.RecNo)+'  Coluna :'+InttoStr(Grade.SelectedIndex);
     Application.ProcessMessages;
end;

procedure TUtilitarios_Script.GradeKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
var
   i:integer;
begin
     Grade.Refresh;
     Barra.Panels[2].Text := ' Linha :'+InttoStr(Grade.DataSource.DataSet.RecNo)+'  Coluna :'+InttoStr(Grade.Col);
     Application.ProcessMessages;

     for i := 1 to gCampos.RowCount do begin
         if gCampos.Cells[1, i] = Grade.SelectedField.FieldName then begin
            gCampos.Row := Grade.SelectedField.FieldNo;
            Break;
         end;
     end;
end;

procedure TUtilitarios_Script.gCamposClick(Sender: TObject);
begin
      Grade.SelectedIndex := StrtoInt(gCampos.Cells[0, gCampos.Row]);
end;

procedure TUtilitarios_Script.GradeCellClick(Column: TColumn);
var
   i:integer;
begin
     for i := 1 to gCampos.RowCount do begin
         if gCampos.Cells[1, i] = Grade.SelectedField.FieldName then begin
            gCampos.Row := Grade.SelectedField.FieldNo;
            Break;
         end;
     end;
end;

procedure TUtilitarios_Script.GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
var
   i:integer;
begin
     Grade.Refresh;
     Barra.Panels[2].Text := ' Linha :'+InttoStr(Grade.DataSource.DataSet.RecNo)+'  Coluna :'+InttoStr(Grade.Col);
     Application.ProcessMessages;

     for i := 1 to gCampos.RowCount do begin
         if gCampos.Cells[1, i] = Grade.SelectedField.FieldName then begin
            gCampos.Row := Grade.SelectedField.FieldNo;
            Break;
         end;
     end;
end;

procedure TUtilitarios_Script.Timer1Timer(Sender: TObject);
begin
     Barra.Panels[1].Text := timetostr(Time - H);
     Application.ProcessMessages;
end;

{Essa Função retorna o nome da tabela principal de uma query}
function TUtilitarios_Script.Nometabela(sql:STRING):string;
var
    cCol, c:integer;
    str:string;
begin
      cCol := 0;
      sql  := UpperCase(sql);
      if (Pos('SELECT', sql) > 0) or (Pos('DELETE', sql) > 0) then begin
         cCol := Pos('FROM'    , Sql)+5;   // SELECT * FROM Tabela / DELETE FROM Tabela WHERE X = Y.
      end;
      if (Pos('UPDATE', sql) > 0) then begin
         cCol := Pos('UPDATE'  , Sql)+7;   // UPDATE Tabela SET X = Y.
      end;
      if (Pos('TRUNCATE', sql) > 0) then begin
         cCol := Pos('TRUNCATE', Sql)+9;  // TRUNCATE TABLE Tabela.
      end;

      str := '';
      for c := cCol to Length(sql) do begin
          if sql[c] <> ' ' then
            str := str + sql[c]
          else
            Break;  
      end;

      Result := str;
end;

procedure TUtilitarios_Script.bScriptClick(Sender: TObject);
var
   m,
   i:integer;
   linSel,
   lin:widestring;
begin
      ScriptSaida.Clear;

      linsel := 'INSERT INTO '+NomeTabela(cScript.text) +' (';

      for i := 1 to gCampos.RowCount-1 do begin
          linsel := linsel + gCampos.Cells[1, i] + ',';
      end;
      linsel := Copy(Linsel, 1, Length(linsel)-1)+') VALUES ';
      ScriptSaida.lines.add(linsel);

      tScript.First;
      m := 1;
      
      while not tSCript.eof do begin
            lin := '(';
            for i := 0 to tScript.FieldCount-1 do begin
                lin := lin + QuotedStr(tScript.Fields[i].asstring) + ',';
            end;
            if m = 900 then begin
               lin := Copy(Lin, 1, Length(lin)-1)+')';
               ScriptSaida.lines.add(lin);
               ScriptSaida.lines.add('GO');
               ScriptSaida.lines.add(linsel);
               m := 0;
            end else begin
               lin := Copy(Lin, 1, Length(lin)-1)+'),';
               ScriptSaida.lines.add(Trim(lin));
            end;
            inc(m,1);
            tScript.Next;
      end;
      
      lin := Trim(ScriptSaida.text);
      lin := Copy(lin, 1, Length(lin)-1);
      ScriptSaida.lines.clear;
      ScriptSaida.lines.add(lin);
      ScriptSaida.lines.add('GO');
end;

procedure TUtilitarios_Script.bSalvarClick(Sender: TObject);
begin
      ScriptSaida.lines.SaveToFile( 'c:\temp\' + PrimeiraLetraMaiuscula(NomeTabela(cScript.text)) + '.txt');
end;

end.
