unit frmProforma_ItensImportar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Funcoes,
  Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, Grids, DBGrids, system.UITypes, MemDS;

type
  TProforma_ItensImportar = class(TForm)
    dsItens: TDataSource;
    tItens: TMSQuery;
    tItensCodigo_Mercadoria: TIntegerField;
    tItensDescricao_Mercadoria: TMemoField;
    tItensNCM: TStringField;
    tItensNota: TIntegerField;
    tItensData: TDateTimeField;
    tItensQuantidade: TFloatField;
    tItensValor_Unitario: TFloatField;
    Panel2: TPanel;
    bSair: TButton;
    GradeItens: TRxDBGrid;
    bAdicionaTodos: TButton;
    tRegistro: TMSQuery;
    tItensEmissao: TStringField;
    bRemoveTodos: TButton;
    bAdicionarItem: TButton;
    bRemoverItem: TButton;
    tItensItem: TSmallintField;
    tItensDisponivel: TFloatField;
    Grade: TRxDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure tItensDescricao_MercadoriaGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure bAdicionaTodosClick(Sender: TObject);
    procedure bRemoveTodosClick(Sender: TObject);
    procedure bAdicionarItemClick(Sender: TObject);
    procedure bRemoverItemClick(Sender: TObject);
    procedure SalvaItem(Quantidade: Real);
    procedure GradeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GradeItensDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GradeItensDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    mQuantidade: Real;
  end;

var
  Proforma_ItensImportar: TProforma_ItensImportar;

implementation

uses frmDados, frmDMFiscal, frmProforma_ItensImportarQtde;

{$R *.dfm}

procedure TProforma_ItensImportar.FormShow(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Codigo_Mercadoria');
           tItens.SQL.Add('      ,Descricao_Mercadoria');
           tItens.SQL.Add('      ,NCM');
           tItens.SQL.Add('      ,Nota');
           tItens.SQL.Add('      ,Data');
           tItens.SQL.Add('      ,Quantidade');
           tItens.SQL.Add('      ,Disponivel = NI.Quantidade - ISNULL((SELECT SUM(Quantidade) FROM ProformaItens PI WHERE PI.Nota_Numero =  NI.Nota AND PI.Nota_Data = NI.Data AND PI.Codigo_Mercadoria = NI.Codigo_Mercadoria AND PI.Item_Nota = NI.Item), 0)');
           tItens.SQL.Add('      ,Valor_Unitario');
           tItens.SQL.Add('      ,Emissao = ''P'' ');
           tItens.SQL.Add('      ,Item');
           tItens.SQL.Add('FROM   NotasItens NI');
           tItens.SQL.Add('WHERE  Processo = :pProcesso');
           tItens.SQL.Add('AND    Saida_Entrada = 0');
           tItens.SQL.Add('AND   ( NI.Quantidade - ISNULL((SELECT SUM(Quantidade) FROM ProformaItens PI WHERE PI.Nota_Numero =  NI.Nota AND PI.Nota_Data = NI.Data AND PI.Codigo_Mercadoria = NI.Codigo_Mercadoria AND PI.Item_Nota = NI.Item), 0)) > 0');

           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT Codigo_Mercadoria');
           tItens.SQL.Add('      ,Descricao_Mercadoria');
           tItens.SQL.Add('      ,NCM');
           tItens.SQL.Add('      ,Nota');
           tItens.SQL.Add('      ,Data_Entrada');
           tItens.SQL.Add('      ,Quantidade');
           tItens.SQL.Add('      ,Disponivel = NTI.Quantidade - ISNULL((SELECT SUM(Quantidade) FROM ProformaItens PI WHERE PI.Nota_Numero =  NTI.Nota AND PI.Nota_Data = NTI.Data_Entrada AND PI.Codigo_Mercadoria = NTI.Codigo_Mercadoria AND PI.Item_Nota = NTI.Item), 0)');
           tItens.SQL.Add('      ,Valor_Unitario');
           tItens.SQL.Add('      ,Emissao = ''T'' ');
           tItens.SQL.Add('      ,Item');
           tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
           tItens.SQL.Add('WHERE  Processo = :pProcesso');
           tItens.SQL.Add('AND  (NTI.Quantidade - ISNULL((SELECT SUM(Quantidade) FROM ProformaItens PI WHERE PI.Nota_Numero =  NTI.Nota AND PI.Nota_Data = NTI.Data_Entrada AND PI.Codigo_Mercadoria = NTI.Codigo_Mercadoria AND PI.Item_Nota = NTI.Item), 0)) > 0');
           tItens.SQL.Add('Order by Nota');
           tItens.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           //tItens.SQL.SaveToFile('c:\temp\Proforma_ImportarItens.sql');
           tItens.Open;
      end;
end;

procedure TProforma_ItensImportar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Proforma_ItensImportar.Release;
      Proforma_ItensImportar := nil;
end;

procedure TProforma_ItensImportar.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProforma_ItensImportar.tItensDescricao_MercadoriaGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
       if not Sender.IsNull then Text := Sender.AsString;
end;

procedure TProforma_ItensImportar.bAdicionaTodosClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente adicionar todos os itens á proforma?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

      with Dados do begin
           tItens.First;
           while not tItens.Eof do begin
                 SalvaItem(tItens.FieldByName('Disponivel').Value);
                 tItens.Next;
           end;
           ProformaItens.Refresh;
           tItens.Refresh;
      end;
end;

procedure TProforma_ItensImportar.bRemoveTodosClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente remover todos os itens da proforma?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

      with Dados do begin
           ProformaItens.SQL.Clear;
           ProformaItens.SQL.Add('DELETE FROM ProformaItens WHERE Proforma = :pProforma AND ISNULL(Nota_Numero, 0) > 0');
           ProformaItens.ParamByName('pProforma').AsString := ProcessosDOCProforma_Numero.AsString;
           ProformaItens.Execute;

           ProformaItens.SQL.Clear;
           ProformaItens.SQL.Add('SELECT *');
           ProformaItens.SQL.Add('      ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           ProformaItens.SQL.Add('FROM   ProformaItens');
           ProformaItens.SQL.Add('WHERE  Proforma = :pProforma');
           ProformaItens.SQL.Add('ORDER  BY Item');
           ProformaItens.ParamByName('pProforma').AsString := Dados.ProcessosDOCProforma_Numero.AsString;
           ProformaItens.Open;
      end;
      tItens.Refresh;
end;

procedure TProforma_ItensImportar.bAdicionarItemClick(Sender: TObject);
begin
     //mQuantidade := 0;
     Proforma_ItensImportarQtde := TProforma_ItensImportarQtde.Create(Self);
     Proforma_ItensImportarQtde.Caption := Caption;
     Proforma_ItensImportarQtde.cQuantidade.Value := tItens.FieldByName('Disponivel').Value;
     Proforma_ItensImportarQtde.cValor.Value      := tItens.FieldByName('Valor_Unitario').Value;
     Proforma_ItensImportarQtde.ShowModal;

     SalvaItem(mQuantidade);
     tItens.Refresh;
end;

procedure TProforma_ItensImportar.bRemoverItemClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente remover o item da proforma?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

      with Dados do begin
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('DELETE FROM ProformaItens WHERE Proforma = :pProforma AND Item = :pItem');
           tRegistro.ParamByName('pProforma').AsString := ProcessosDOCProforma_Numero.AsString;
           tRegistro.ParamByName('pItem').AsInteger    := ProformaItensItem.AsInteger;
           tRegistro.Execute;

           ProformaItens.SQL.Clear;
           ProformaItens.SQL.Add('SELECT *');
           ProformaItens.SQL.Add('      ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           ProformaItens.SQL.Add('FROM   ProformaItens');
           ProformaItens.SQL.Add('WHERE  Proforma = :pProforma');
           ProformaItens.SQL.Add('ORDER  BY Item');
           ProformaItens.ParamByName('pProforma').AsString := Dados.ProcessosDOCProforma_Numero.AsString;
           ProformaItens.Open;
      end;
      tItens.Refresh;
end;

procedure TProforma_ItensImportar.SalvaItem(Quantidade: Real);
begin
      with Dados do begin
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT Registro = (SELECT ISNULL(MAX(Registro), 0)+1 FROM ProformaItens)');
           tRegistro.SQL.Add('      ,Item     = (SELECT COUNT(*)+1 FROM ProformaItens WHERE Proforma = :pProforma)');
           tRegistro.ParamByName('pProforma').Value := ProcessosDOCProforma_Numero.AsString;
           tRegistro.Open;

           ProformaItens.Append;
                         ProformaItensRegistro.Value           := tRegistro.FieldByName('Registro').AsInteger;
                         ProformaItensProforma.Value           := ProcessosDOC.FieldByName('Proforma_Numero').Value;
                         ProformaItensItem.Value               := tRegistro.FieldByName('Item').AsInteger;
                         ProformaItensCodigo_Mercadoria.Value  := tItens.FieldByName('Codigo_Mercadoria').Value;
                         ProformaItensQuantidade.Value         := Quantidade;

                         if ProcessosDOCTaxa_FOB.AsFloat > 0 then
                            ProformaItensValor_Unitario.Value := tItens.FieldByName('Valor_Unitario').Value / ProcessosDOCTaxa_FOB.AsFloat;

                         ProformaItensNota_Numero.Value        := tItens.FieldByName('Nota').Value;
                         ProformaItensNota_Data.Value          := tItens.FieldByName('Data').Value;
                         ProformaItensNota_Emissao.Value       := tItens.FieldByName('Emissao').Value;
                         ProformaItensNCM.Value                := tItens.FieldByName('NCM').Value;
                         ProformaItensValor_UnitarioReal.Value := tItens.FieldByName('Valor_Unitario').Value;
                         ProformaItensItem_Nota.Value          := tItens.FieldByName('Item').Value;
           ProformaItens.Post;
           ProformaItens.Refresh;
           tRegistro.Close;
      end;
end;

procedure TProforma_ItensImportar.GradeMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      Grade.BeginDrag(True);
end;

procedure TProforma_ItensImportar.GradeItensDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
      bAdicionarItem.Click;
end;

procedure TProforma_ItensImportar.GradeItensDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

end.
