unit frmUtilitarios_Importar_NFe_TerceirosRastrearSeriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Grids, RxLookup, DB, DBAccess, MSAccess, system.UITypes, Vcl.ExtCtrls, DBCtrls, MemDS;

type
  TUtilitarios_Importar_NFe_TerceirosRastrearSeriais = class(TForm)
    gSeriais: TStringGrid;
    cDescricao: TMemo;
    cCodigo: TRxDBLookupCombo;
    StaticText1: TStaticText;
    tRegistro: TMSQuery;
    Panel1: TPanel;
    bSair: TButton;
    bRastrear: TButton;
    bImportar: TButton;
    StaticText4: TStaticText;
    cTipo: TComboBox;
    procedure bRastrearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PegaProd;
    procedure cCodigoChange(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure cTipoChange(Sender: TObject);
    function  ProcuraSerial(Numero: String): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_Importar_NFe_TerceirosRastrearSeriais: TUtilitarios_Importar_NFe_TerceirosRastrearSeriais;

implementation

uses frmDados, Funcoes, frmUtilitarios_Importar_NFe_Terceiros;

{$R *.dfm}

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.bRastrearClick(Sender: TObject);
var
   i,Lin : integer;
   mMemo : TMemo;
   mProd : String;
begin
     mMemo         := TMemo.Create(Utilitarios_Importar_NFe_TerceirosRastrearSeriais);
     mMemo.Visible := false;
     mMemo.Parent  := Utilitarios_Importar_NFe_TerceirosRastrearSeriais;
     mMemo.Width   := 60;
     mProd         := Copy(cDescricao.Text, Pos('<{', cDescricao.Text)+2, 15);
     mProd         := Trim(Copy(mProd, 1, Pos('}>', mProd)-1));

     if cDescricao.SelLength = 0 then begin
        MessageDlg('Não há nenhum texto selecionado na caixa de descrição da mercadoria!'+#13+#13+'Selecione os números seriais que deseja importar.', mtInformation, [mbOK], 0);
        Abort;
     end;

     mMemo.Clear;
     mMemo.Text := RemoveCaracter('<{'+mProd+'}>', '', cDescricao.SelText);
     mMemo.Text := Trim(RemoveCaracter(',', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter(';', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('|', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter(':', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('/', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('\', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('.', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter(' ', #12, mMemo.Text));

     for i := 0 to mMemo.Lines.Count do begin
         if Trim(mMemo.Lines[i]) <> '' then begin
            if not ProcuraSerial(RemoveCaracter(#12, '', mMemo.Lines[i])) then begin
               if Length(RemoveCaracter(#12, '', mMemo.Lines[i])) > 3 then begin
                  with gSeriais do begin
                       Cells[0, RowCount-1] := inttoStr(RowCount-1);
                       Cells[1, RowCount-1] := cCodigo.KeyValue;
                       Cells[2, RowCount-1] := RemoveCaracter(#12, '', mMemo.Lines[i]);
                       RowCount := RowCount + 1;
                  end;
               end;
            end;
         end;
     end;
     bImportar.Enabled := true;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.FormShow(Sender: TObject);
begin
      PegaProd;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Utilitarios_Importar_NFe_TerceirosRastrearSeriais.Release;
      Utilitarios_Importar_NFe_TerceirosRastrearSeriais := nil;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.PegaProd;
var
   i:integer;
begin
      cDescricao.Clear; 
      with Dados do begin
           with Utilitarios_Importar_NFe_Terceiros do begin
                for i := 1 to Pred(GradeItens.RowCount) do begin
                    if Trim(GradeCadastro.Cells[3, i]) <> '' then begin
                       if StrtoInt(Trim(GradeCadastro.Cells[3, i])) = ProdutosCodigo.AsInteger then begin
                          cDescricao.Text := GradeCadastro.Cells[5, i];
                       end;
                    end;
                end;
           end;
      end;
      with gSeriais do begin
           RowCount := 2;
           ColCount := 3; 
           Cells[0,0]   := 'Item';
           ColWidths[0] := 50;
           Cells[1,0]   := 'Produto';
           ColWidths[1] := 180;
           Cells[2,0]   := 'Serial';
           ColWidths[2] := 406;
           
           for i := 1 to Pred(RowCount) do Rows[i].Clear;
      end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.cCodigoChange(Sender: TObject);
begin
     PegaProd;
     bRastrear.Enabled := false;
     if (Trim(cCodigo.DisplayValue) <> '') and (Trim(cTipo.Text) <> '') then begin
        bRastrear.Enabled := true;
     end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.bImportarClick(Sender: TObject);
var
   i:integer;
begin
     if Trim(cCodigo.DisplayValue) = '' then begin
        MessageDlg('Erro!'+#13+#13+'Nenhum produto informado.', mtError, [mbOK], 0);
        Abort;
     end;
     with Dados do begin
          ProdutosSeriaisNotas.Open; 
          with gSeriais do begin
               tRegistro.SQL.Clear;
               tRegistro.SQL.Add('DELETE FROM ProdutosSeriais WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData');
               tRegistro.ParamByName('pNota').AsInteger   := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
               tRegistro.ParamByName('pData').AsDate      := StrtoDate(Utilitarios_Importar_NFe_Terceiros.cdEmi.Text);
               tRegistro.Execute;

               for i := 1 to RowCount do begin
                   if Trim(Cells[2, i]) <> '' then begin
                      tRegistro.SQL.Clear;
                      tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriais');
                      tRegistro.Open;

                      ProdutosSeriais.Append;
                                      ProdutosSeriaisRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
                                      ProdutosSeriaisProduto_Codigo.Value    := StrtoInt(Cells[1,i]);
                                      ProdutosSeriaisCodigo_Fabricante.Value := ProdutosCodigo_Fabricante.Value;
                                      ProdutosSeriaisNumero.Value            := Cells[2,i];
                                      ProdutosSeriaisEntrada.Value           := true;
                                      ProdutosSeriaisSaida.Value             := false;
                                      ProdutosSeriaisTipo.Value              := cTipo.Text;
                                      ProdutosSeriaisDisponivel.Value        := false;
                                      ProdutosSeriaisNota_Entrada.Value      := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
                                      ProdutosSeriaisData_Entrada.Value      := StrtoDate(Utilitarios_Importar_NFe_Terceiros.cdEmi.Text);
                                      ProdutosSeriaisTemp.Value              := true;
                      ProdutosSeriais.Post;

                      tRegistro.Close;
                      tRegistro.SQL.Clear;
                      tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriaisNotas');
                      tRegistro.Open;

                      ProdutosSeriaisNotas.Append;
                                      ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                                      ProdutosSeriaisNotasProduto_Codigo.Value := StrtoInt(Cells[1,i]);
                                      ProdutosSeriaisNotasNumero.Value         := Cells[2,i];
                                      ProdutosSeriaisNotasNota.Value           := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
                                      ProdutosSeriaisNotasData.Value           := StrtoDate(Utilitarios_Importar_NFe_Terceiros.cdEmi.Text);
                                      ProdutosSeriaisNotasSaida_Entrada.Value  := 0;
                                      ProdutosSeriaisNotasEmissor.Value        := 'T';
                                      ProdutosSeriaisNotasTemp.Value           := true;
                      ProdutosSeriaisNotas.Post;
                      tRegistro.Close;
                   end;
               end;
          end;
     end;
     Close;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.cTipoChange(Sender: TObject);
begin
     bRastrear.Enabled := false;
     if (Trim(cCodigo.DisplayValue) <> '') and (Trim(cTipo.Text) <> '') then begin
        bRastrear.Enabled := true;
     end;
end;

function TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.ProcuraSerial(Numero: String): boolean;
var
    i:integer;
begin
      result := false;
      with gSeriais do begin
           for i := 0 to RowCount-1 do begin
               if Cells[2, i] = Numero then result := true;
           end;
     end;
end;


end.
