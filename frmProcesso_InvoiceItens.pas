unit frmProcesso_InvoiceItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, MSAccess, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, Vcl.Mask, RxToolEdit, system.UITypes, RxCurrEdit;

type
  TProcesso_InvoiceItens = class(TForm)
    GradeItens: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bSelTodos: TButton;
    bSelNenhum: TButton;
    bAddSel: TButton;
    DBGrid1: TDBGrid;
    bRemTodos: TButton;
    bRemUm: TButton;
    Navega: TDBNavigator;
    tTmp: TMSQuery;
    bParcial: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    tProd: TMSQuery;
    lDI: TStaticText;
    cPercentualQtde: TCurrencyEdit;
    bSelNCM: TButton;
    bSelItens: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeItensCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
    procedure bAddSelClick(Sender: TObject);
    procedure bRemTodosClick(Sender: TObject);
    procedure bRemUmClick(Sender: TObject);
    procedure bParcialClick(Sender: TObject);
    procedure bSelNCMClick(Sender: TObject);
    procedure bSelItensClick(Sender: TObject);
  private
    procedure AdicionaUm;
    { Private declarations }
  public
    { Public declarations }
    mPO: string;
    mQuantidade: real;
  end;

var
  Processo_InvoiceItens: TProcesso_InvoiceItens;

implementation

{$R *.dfm}

uses FUNCOES, frmDMDespacho, frmDados, frmInvoice_ItensQtde;

procedure TProcesso_InvoiceItens.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_InvoiceItens.bSelTodosClick(Sender: TObject);
begin
     with dmDespacho do begin
          with POItens do begin
               first;
               while not eof do begin
                     edit;
                        fieldbyname('sel').value := true;
                     post;
                     next;
               end;
          end;
     end;
end;

procedure TProcesso_InvoiceItens.bAddSelClick(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          with POItens do begin
               first;
               DisableControls;
               while not eof do begin
                     if fieldbyname('Sel').AsBoolean then begin
                        if (cPercentualQtde.Value > 0) and (cPercentualQtde.Value <= 100) then begin
                           mQuantidade := Percentual(POItens.FieldByName('Saldo').AsFloat, cPercentualQtde.Value);
                           AdicionaUm;
                        end;
                     end;
                     edit;
                        fieldbyname('sel').value := false;
                     post;
                     next;
               end;
               EnableControls;
          end;

          POItens.Refresh;
          InvoiceItens.Refresh;
          POItens.Refresh;
          InvoiceItens.Refresh;
     end;
end;

procedure TProcesso_InvoiceItens.AdicionaUm;
begin
     with Dados, dmDespacho do begin
          with tProd do begin
               sql.Clear;
               sql.Add('select Unidade, Peso_Liquido, Peso_Bruto from Produtos where Codigo = :pCod');
               parambyname('pCod').AsInteger := POItens.Fieldbyname('Codigo_Mercadoria').AsInteger;
               open;
          end;
          with tTmp do begin
               sql.Clear;
               sql.Add('select Reg  = (select isnull(max(Registro), 0)+1 from InvoiceItens)');
               sql.Add('      ,Item = (select isnull(max(Item), 0)+1 from InvoiceItens where Invoice = :pInv)');
               parambyname('pInv').Value := Invoice.FieldByName('Numero').value;
               open;
          end;
          with InvoiceItens do begin
               append;
                    fieldbyname('Registro').value           := tTmp.FieldByName('Reg').AsInteger;
                    fieldbyname('Item').value               := tTmp.FieldByName('Item').AsInteger;
                    fieldbyname('Invoice').value            := Invoice.FieldByName('Numero').value;
                    fieldbyname('Codigo_Mercadoria').value  := POItens.FieldByName('Codigo_Mercadoria').value;
                    fieldbyname('Unidade').value            := tProd.FieldByName('Unidade').value;
                    fieldbyname('Unidade_Quantidade').value := mQuantidade;
                    fieldbyname('Quantidade').value         := mQuantidade;
                    fieldbyname('Valor_Unitario').value     := POItens.FieldByName('Valor').value * Invoice.FieldByName('Taxa_Cambio').value;
                    fieldbyname('Valor_UnitarioME').value   := POItens.FieldByName('Valor').value;
                    fieldbyname('Peso_Liquido').value       := tProd.FieldByName('Peso_Liquido').value;
                    fieldbyname('Peso_Bruto').value         := tProd.FieldByName('Peso_Bruto').value;
                    fieldbyname('PO').value                 := Invoice.FieldByName('PO').value;
                    fieldbyname('Unidade_Peso').value       := 0;
                    fieldbyname('NCM').value                := POItens.FieldByName('NCM').value;
                    fieldbyname('Imp_Exp').value            := 'I';
                    fieldbyname('Fabricante').value         := POItens.FieldByName('Fabricante').value;
               post;
          end;
     end;
end;

procedure TProcesso_InvoiceItens.bSelItensClick(Sender: TObject);
var
   msel: string;
   mini, mfim: integer;
begin
     with dmDespacho do begin
          mSel := '';
          msel := InputBox('Selecionar por Intevalo', 'Item-Item:', mSel);
          mIni := 0;
          mFim := 0;

          if msel = '' then Abort;
          try
             mini := strtoint(trim(Copy(msel,1,pos('-', msel)-1)));
             mfim := strtoint(trim(Copy(msel,pos('-', msel)+1, 50)));
             if mfim < mini then mfim := mini;
          except
             ShowMessage('Intervalo informado invalído!'+#13+#13+'Informe o número inicial e o número final do item separado por um "-".');
             Abort;
          end;

          with POItens do begin
               first;
               DisableControls;
               while not eof do begin
                     if (FieldByName('Item').asinteger >= mini) and (FieldByName('Item').asinteger <= mfim) then begin
                        edit;
                           fieldbyname('sel').value := true;
                        post;
                     end;
                     next;
               end;
               EnableControls;
          end;
     end;
end;

procedure TProcesso_InvoiceItens.bSelNCMClick(Sender: TObject);
var
   msel: string;
begin
     with dmDespacho do begin
          mSel := POItens.fieldbyname('NCM').value;
          msel := InputBox('Selecionar por NCM', 'NCM:', mSel);
          if mSel = '' then Abort;

          with POItens do begin
               first;
               DisableControls;
               while not eof do begin
                     if FieldByName('NCM').AsString = mSel then begin
                        edit;
                           fieldbyname('sel').value := true;
                        post;
                     end;
                     next;
               end;
               EnableControls;
          end;
     end;
end;

procedure TProcesso_InvoiceItens.bSelNenhumClick(Sender: TObject);
begin
     with dmDespacho do begin
          with POItens do begin
               first;
               DisableControls;
               while not eof do begin
                     edit;
                        fieldbyname('sel').value := false;
                     post;
                     next;
               end;
               EnableControls;
          end;
     end;
end;

procedure TProcesso_InvoiceItens.bParcialClick(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           Invoice_ItensQtde         := TInvoice_ItensQtde.Create(Self);
           Invoice_ItensQtde.Caption := Caption;

           Invoice_ItensQtde.cQuantidade.Value     := POItens.FieldByName('Saldo').AsFloat;
           Invoice_ItensQtde.mQuantidade           := POItens.FieldByName('Saldo').AsFloat;
           Invoice_ItensQtde.cPercentualQtde.Value := 100;
           Invoice_ItensQtde.cProduto.text         := POItens.FieldByName('Codigo_Mercadoria').asstring;

           Invoice_ItensQtde.ShowModal;
      end;
      if mQuantidade > 0 then Adicionaum;
end;

procedure TProcesso_InvoiceItens.bRemTodosClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente excluir todos os itens?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados, dmDespacho do begin
              with tTmp do begin
                   SQL.Clear;
                   SQL.Add('DELETE FROM InvoiceItens WHERE(Invoice = :pInvoice)');
                   ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                   Execute;
              end;
              InvoiceItens.Refresh;
              POItens.Refresh;
         end;
      end;
end;

procedure TProcesso_InvoiceItens.bRemUmClick(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           if InvoiceItens.RecordCount > 0 then begin
              if MessageDlg('Deseja realmente remover o item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                 InvoiceItens.Delete;
                 InvoiceItens.refresh;
                 POItens.Refresh;
              end;
         end;
      end;
end;

procedure TProcesso_InvoiceItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Processo_InvoiceItens.Release;
     Processo_InvoiceItens := nil;
end;

procedure TProcesso_InvoiceItens.FormShow(Sender: TObject);
begin
     with dmDespacho, Dados do begin
          with POItens do begin
               sql.clear;
               sql.add('select *');
               sql.add('      ,Sel   = cast(0 as bit)');
               sql.add('      ,Saldo = poi.Quantidade - isnull((select sum(ini.Quantidade) from InvoiceItens ini where ini.PO = :pPO and ini.Codigo_Mercadoria = poi.Codigo_Mercadoria), 0)');
               sql.add('from POItens poi');
               sql.add('where poi.PO = :pPO');
               sql.add('and (poi.Codigo_Mercadoria not in(select Codigo_Mercadoria from InvoiceItens ivi where ivi.PO = :pPO)');
               sql.add(     'or (Quantidade - isnull((select sum(ini.Quantidade) from InvoiceItens ini where ini.PO = :pPO and ini.Codigo_Mercadoria = poi.Codigo_Mercadoria), 0)) > 0)');
               sql.add('order by poi.Item');
               parambyname('pPO').AsString := Invoice.FieldByName('PO').AsString;
               //sql.SaveToFile('c:\temp\Itens_Ivoice_itens.sql');
               open;
          end;
     end;
end;

procedure TProcesso_InvoiceItens.GradeItensCellClick(Column: TColumn);
begin
     with dmDespacho, POItens do begin
          poItens.Open;
          edit;
             fieldbyname('sel').value := not fieldbyname('sel').value;
          post;
     end;
end;

end.
