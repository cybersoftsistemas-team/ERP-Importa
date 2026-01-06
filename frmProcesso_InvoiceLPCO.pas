unit frmProcesso_InvoiceLPCO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.CheckLst, MemDS, DBAccess, MSAccess, RxCtrls;

type
  TProcesso_InvoiceLPCO = class(TForm)
    Panel1: TPanel;
    bCancelar: TButton;
    bSalvar: TButton;
    Grade: TDBGrid;
    bTodos: TButton;
    Panel2: TPanel;
    bNenhum: TButton;
    ttmp: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    procedure bCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bTodosClick(Sender: TObject);
    procedure bNenhumClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure bSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Sel(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_InvoiceLPCO: TProcesso_InvoiceLPCO;

implementation

{$R *.dfm}

uses frmDMDespacho, frmDados;

procedure TProcesso_InvoiceLPCO.bCancelarClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_InvoiceLPCO.bNenhumClick(Sender: TObject);
begin
     sel(false);
end;

procedure TProcesso_InvoiceLPCO.bSalvarClick(Sender: TObject);
var
   mSel: integer;
   mscript: widestring;
begin
     mSel := 0;
     // Apaga todos os LPCO's adicionados e adiciona apenas os selecionados.
     with Dados, dmDespacho do begin
          InvoiceItensLPCO.Open;
          LPCO.first;
          while not LPCO.eof do begin  
                if LPCO.fieldbyname('Sel').asboolean then begin
                   mScript := concat(mScript, '(', quotedstr(InvoiceItens.fieldbyname('Invoice').asstring), ',', InvoiceItens.fieldbyname('Codigo_Mercadoria').asstring, ',', LPCO.fieldbyname('LPCO').asstring, '),', #13);
                   inc(mSel);
                end;
                LPCO.next;
          end;
          mScript := concat('insert into InvoiceItensLPCO (Invoice, Codigo_Mercadoria, LPCO) values', #13, copy(mScript, 1, Length(mScript)-2));
          if mSel > 0 then begin
             with ttmp do begin
                  sql.Clear;
                  sql.Add('delete from InvoiceItensLPCO where Invoice = '+ quotedstr(InvoiceItens.fieldbyname('Invoice').asstring)+ ' and Codigo_Mercadoria = '+ InvoiceItens.fieldbyname('Codigo_Mercadoria').asstring);
                  execute;
                  sql.Clear;
                  sql.Add(mScript);
                  //sql.SaveToFile('c:\temp\Insert_LPCO.sql');
                  execute;
             end;
          end else begin
             messagedlg('Nenhum LPCO selecionado para salvar!', mtinformation, [mbok], 0);
             abort;
          end;
          InvoiceItensLPCO.close;
     end;
     close;
end;

procedure TProcesso_InvoiceLPCO.bTodosClick(Sender: TObject);
begin
    sel(true);
end;

procedure TProcesso_InvoiceLPCO.GradeCellClick(Column: TColumn);
begin
     with dmDespacho do begin
          with LPCO do begin
               edit;
                  fieldbyname('Sel').Value := not fieldbyname('Sel').asboolean;
               post;   
          end;
     end;
end;

procedure TProcesso_InvoiceLPCO.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
end;

procedure TProcesso_InvoiceLPCO.FormShow(Sender: TObject);
begin
     with dmDespacho do begin
          with LPCO do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('      ,Sel = cast(0 as bit)');
               sql.add('from LPCO');
               sql.Add('where getdate() between Data_Inicio and Data_Fim');
               open;
               first;
          end;
          with InvoiceItensLPCO do begin
               sql.clear;
               sql.Add('select *');
               sql.add('from InvoiceItensLPCO');
               sql.Add('where invoice = :pInvoice');
               sql.Add('and Codigo_Mercadoria = :pCod');
               parambyname('pInvoice').value := Dados.InvoiceItens.fieldbyName('Invoice').AsString;
               parambyname('pCod').value     := Dados.InvoiceItens.fieldbyName('Codigo_Mercadoria').asinteger;
               open;
               first;
          end;
          with LPCO do begin
               while not eof do begin
                     if InvoiceItensLPCO.Locate('LPCO', fieldbyname('LPCO').AsInteger, [loCaseInsensitive]) then begin
                        edit;
                           fieldbyname('Sel').Value := true;
                        post;   
                     end;
                     next;
               end;
          end;
     end;
end;

procedure TProcesso_InvoiceLPCO.Sel(Estado: boolean);
begin
     with dmDespacho do begin
          with LPCO do begin
               first;
               while not eof do begin  
                     edit;
                        fieldbyname('sel').Value := Estado;
                     next;
               end;
               first;
          end;
     end;
end;


end.
