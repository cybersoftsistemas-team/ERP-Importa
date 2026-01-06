unit frmNotaFiscal_TerceirosVinculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TNotaFiscal_TerceirosVinculo = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bCancelar: TButton;
    Navega: TDBNavigator;
    bOK: TButton;
    bSelTodos: TButton;
    bSelNenhum: TButton;
    tTitulos: TMSQuery;
    tTitulosTitulo: TLargeintField;
    tTitulosFornecedor: TSmallintField;
    tTitulosFornecedor_Nome: TStringField;
    tTitulosClassificacao: TStringField;
    tTitulosClassificacao_Nome: TStringField;
    tTitulosValor_Documento: TCurrencyField;
    tTitulosValor_Parcela: TCurrencyField;
    tTitulosProcesso: TStringField;
    tTitulosSel: TBooleanField;
    tTitulosBaixa: TBooleanField;
    dstTitulos: TDataSource;
    tItem: TMSQuery;
    tTemp: TMSQuery;
    cTotal: TCurrencyEdit;
    StaticText14: TStaticText;
    cOcultar: TCheckBox;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
    procedure bSelTodosClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bOKClick(Sender: TObject);
    procedure cOcultarClick(Sender: TObject);
  private
    procedure Seleciona(sel: boolean);
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosVinculo: TNotaFiscal_TerceirosVinculo;

implementation

{$R *.dfm}

uses FUNCOES, frmDMFiscal, frmDados;

procedure TNotaFiscal_TerceirosVinculo.bCancelarClick(Sender: TObject);
begin
    close;
end;

procedure TNotaFiscal_TerceirosVinculo.bOKClick(Sender: TObject);
var
   mApuracaoPISCOFINS
  ,mSel:boolean;
begin
     mSel := false;
     with Dados, dmFiscal do begin
          // Verifica se existem titulos selecionados e se o total dos itens bate com o total da nota.
          with tTitulos do begin
               first;
               while not Eof do begin
                     mSel := fieldByName('Sel').AsBoolean;
                     if mSel then break;
                     next;
               end;
          end;
          if not mSel then begin
             messagedlg('Nenhum título selecionado para vincular!', mtInformation,[mbok], 0);
             abort;
          end;
          if roundto(cTotal.value, -4) <> roundto(NotasTerceirosValor_TotalNota.AsCurrency, -4) then begin
             messagedlg('Total das parcelas diferente do total da nota fiscal!', mtError,[mbok], 0);
             abort;
          end;
          tTitulos.First;
          while not tTitulos.eof do begin
                if tTitulos.fieldbyname('Sel').asboolean then begin
                   // Atualiza os títulos no financeiro com os dados da nota fiscal.
                   with tTemp do begin
                        sql.Clear;
                        sql.Add('update PagarReceber set Documento        = :pDoc');
                        sql.Add('                       ,Data_Documento   = :pData');
                        sql.Add('                       ,Numero_Documento = :pNota');
                        sql.Add('                       ,Valor_Documento  = :pVal');
                        sql.add('where Numero = :pTitulo');
                        parambyname('pDoc').Value    := NotasTerceirosTipo.value;
                        parambyname('pData').Value   := NotasTerceirosData_Emissao.value;
                        parambyname('pNota').Value   := NotasTerceirosNota.asinteger;
                        parambyname('pVal').Value    := tTitulos.FieldByName('Valor_Documento').ascurrency;
                        parambyname('pTitulo').Value := tTitulos.FieldByName('Titulo').asinteger;
                        execute;
                   end;
                end;
                tTitulos.next;
          end;
     end;
     close;
end;

procedure TNotaFiscal_TerceirosVinculo.bSelNenhumClick(Sender: TObject);
begin
     cTotal.Value := 0;
     with tTitulos do begin
          first;
          while not eof do begin
                Seleciona(false);
                next;
          end;
          first;
     end;
end;

procedure TNotaFiscal_TerceirosVinculo.bSelTodosClick(Sender: TObject);
begin
     cTotal.Value := 0;
     with tTitulos do begin
          first;
          while not eof do begin
                if not fieldbyname('Baixa').asboolean then begin
                   Seleciona(true);
                end;
                next;
          end;
          first;
     end;
end;

procedure TNotaFiscal_TerceirosVinculo.cOcultarClick(Sender: TObject);
begin
     Filtra;
end;

procedure TNotaFiscal_TerceirosVinculo.DBGrid1CellClick(Column: TColumn);
begin
      with tTitulos do begin
           if not fieldbyname('Baixa').asboolean then begin
              Seleciona(not fieldbyname('sel').asboolean);
           end else begin
              if fieldbyname('Baixa').asboolean then begin
                 messagedlg('Atenção!'+#13+#13+'Este título não pode ser vinculado a nota pois ja foi baixado.', mtWarning,[mbok], 0);
              end else begin
                 messagedlg('Erro!'+#13+#13+'Classificação não informada no cadastro do Produto/Serviço.', mtError,[mbok], 0);
              end;
           end;
      end;
end;

procedure TNotaFiscal_TerceirosVinculo.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if key = 13 then begin
         with tTitulos do begin
              if not fieldbyname('Baixa').asboolean then begin
                 Seleciona(not fieldbyname('sel').asboolean);
                 next;
              end else begin
                 if fieldbyname('Baixa').asboolean then begin
                    messagedlg('Atenção!'+#13+#13+'Este título não pode ser vinculado a nota pois ja foi baixado.', mtWarning,[mbok], 0);
                 end else begin
                    messagedlg('Erro!'+#13+#13+'Classificação não informada no cadastro do Produto/Serviço.', mtError,[mbok], 0);
                 end;
              end;
         end;
      end;
end;

procedure TNotaFiscal_TerceirosVinculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_TerceirosVinculo.Release;
     NotaFiscal_TerceirosVinculo := nil;
end;

procedure TNotaFiscal_TerceirosVinculo.FormCreate(Sender: TObject);
begin
     cOcultar.Checked := true;
end;

procedure TNotaFiscal_TerceirosVinculo.Filtra;
begin
     with dmFiscal do begin
          with tTitulos do begin
               sql.Clear;
               sql.Add('select Titulo = Numero');
               sql.Add('      ,Fornecedor');
               sql.Add('      ,Fornecedor_Nome = ltrim((select Nome from Fornecedores where Codigo = Fornecedor))');
               sql.Add('      ,Classificacao');
               sql.Add('      ,Classificacao_Nome = (select Descricao from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = Classificacao)');
               sql.Add('      ,Valor_Documento = :pVal');
               sql.Add('      ,Valor_Parcela');
               sql.Add('      ,Processo');
               sql.Add('      ,Sel = cast(0 as bit)');
               sql.Add('      ,Baixa = cast(iif(Baixa_Numero <> '''', 1, 0) as bit)');
               sql.Add('      ,Numero_Documento');
               sql.Add('from PagarReceber pr');
               sql.Add('where Fornecedor = :pForn');
               sql.Add('and Tipo = ''P'' ');
               if cOcultar.Checked then begin
                  sql.Add('and isnull(Baixa_Numero, 0) = 0');
               end;
               if trim(NotasTerceirosProcesso.value) <> '' then begin
                  sql.Add('and Processo = :pProc');
                  ParamByName('pProc').Asstring := NotasTerceirosProcesso.value;
               end;
               ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.value;
               ParamByName('pVal').value      := NotasTerceirosValor_TotalNota.value;
               sql.Add('order by Fornecedor_Nome, Numero_Documento, Baixa desc');
               open;
          end;
     end;
end;

procedure TNotaFiscal_TerceirosVinculo.Seleciona(sel: boolean);
begin
     with tTitulos do begin
          edit;
             fieldbyname('sel').value := sel;
          post;
          if not fieldbyname('Baixa').asboolean then begin
             cTotal.Value := cTotal.Value + iif(fieldByName('Sel').AsBoolean, tTitulos.fieldbyname('Valor_Parcela').ascurrency, tTitulos.fieldbyname('Valor_Parcela').ascurrency *-1);
          end;
          if cTotal.Value < 0 then cTotal.Value := 0;
     end;
end;



end.
