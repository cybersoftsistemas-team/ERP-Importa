unit frmProcesso_POImportaItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RXSpin, Mask, Vcl.ExtCtrls, Funcoes,
  DB, DBClient, DBGrids, ComObj, Vcl.ComCtrls, MSAccess, Grids, RxToolEdit, Datasnap.Provider, MemDS, DBAccess, Vcl.Menus, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Response.Adapter, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Authenticator.OAuth, system.UITypes, System.MaskUtils;

type
  TProcesso_POImportaItens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    dstPlanPO: TDataSource;
    tPlanPO: TClientDataSet;
    tPlanPOItem: TSmallintField;
    tPlanPONCM: TStringField;
    tPlanPONet_Qty: TFloatField;
    tPlanPOUnidade: TStringField;
    tPlanPOTotal_Qty: TFloatField;
    tPlanPOCodigo_Mercadoria: TSmallintField;
    tPlanPOUnit_Price: TCurrencyField;
    tPlanPOTotal: TCurrencyField;
    tPlanPODescricao: TStringField;
    tPlanPOPackage_Type: TStringField;
    tPlanPOQty_Pkgs: TIntegerField;
    Progresso: TProgressBar;
    dstPlanCli: TDataSource;
    tPlanCli: TClientDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cLinhaIniPO: TRxSpinEdit;
    StaticText1: TStaticText;
    cLinhaFimPO: TRxSpinEdit;
    StaticText5: TStaticText;
    GradePO: TDBGrid;
    cLinhaIniCli: TRxSpinEdit;
    StaticText2: TStaticText;
    cLinhaFimCli: TRxSpinEdit;
    StaticText4: TStaticText;
    cArquivoPO: TFilenameEdit;
    StaticText8: TStaticText;
    cArquivoCli: TFilenameEdit;
    bImportarPO: TButton;
    tPlanCliCodigo: TIntegerField;
    tPlanCliCodigo_Fabricante: TStringField;
    tPlanCliTipo: TIntegerField;
    tPlanCliUnidade: TStringField;
    tPlanCliQuantidade_Unidade: TFloatField;
    tPlanCliNCM: TStringField;
    tPlanCliPeso_Liquido: TFloatField;
    tPlanCliPeso_Bruto: TFloatField;
    tPlanCliDescricao_Reduzida: TStringField;
    tPlanCliDescricao: TStringField;
    tPlanCliDescricao_Ingles: TStringField;
    tPlanCliAliquota_IPI: TFloatField;
    tPlanCliAliquota_II: TFloatField;
    tPlanCliAliquota_PIS: TFloatField;
    tPlanCliAliquota_COFINS: TFloatField;
    tPlanCliTipo_Item: TSmallintField;
    tPlanCliValor_IPI: TFloatField;
    tPlanCliClasseEnquadra_IPI: TStringField;
    tPlanCliDumping_Valor: TFloatField;
    tPlanCliFornecedor: TIntegerField;
    tPlanCliFabricante: TIntegerField;
    tPlanCliValor_Venda: TCurrencyField;
    tPlanCliValor_CustoMedio: TCurrencyField;
    tPlanCliValor_Entrada: TCurrencyField;
    tPlanCliTipo_Conversao: TStringField;
    tPlanCliReducao_COFINS: TFloatField;
    tPlanCliReducao_PIS: TFloatField;
    tPlanCliLinha: TSmallintField;
    tPlanCliGTIN: TStringField;
    tPlanCliUnidade_Origem: TStringField;
    tPlanCliGTIN_Unidade: TStringField;
    tPlanCliLargura: TFloatField;
    tPlanCliComprimento: TFloatField;
    tPlanCliAltura: TFloatField;
    tPlanCliICMS_Reducao: TFloatField;
    tPlanCliQuantidade_Volumes: TFloatField;
    tPlanCliSelecionado: TBooleanField;
    tPlanCliDumping: TBooleanField;
    tPlanCliReciclavel: TBooleanField;
    tPlanCliCodigo_ANP: TStringField;
    tPlanCliCodigo_Provisorio: TIntegerField;
    tPlanCliReducao_IPI: TFloatField;
    tPlanCliReducao_II: TFloatField;
    tPlanCliAcordo_TarifarioII: TFloatField;
    tPlanCliAcordo_TarifarioIPI: TFloatField;
    tPlanCliEntrada_ST: TBooleanField;
    tPlanCliDesativado: TBooleanField;
    tPlanCliCusto_Seletivo: TBooleanField;
    tPlanCliPIS_Nota: TFloatField;
    tPlanCliCOFINS_Nota: TFloatField;
    tPlanCliDetalhe_Especifico: TStringField;
    tPlanCliICMS_DentroEstado: TFloatField;
    tPlanCliICMS_ForaEstado: TFloatField;
    tPlanCliPIS_NotaSaida: TFloatField;
    tPlanCliCOFINS_NotaSaida: TFloatField;
    tPlanCliCAMEX: TBooleanField;
    tPlanCliTabela_CAMEX: TBooleanField;
    tPlanCliPotencia_Motor: TStringField;
    tPlanCliCilindradas: TStringField;
    tPlanCliTipo_Combustivel: TStringField;
    tPlanCliCapacidade_Tracao: TFloatField;
    tPlanCliDistancia_Eixos: TStringField;
    tPlanCliTipo_Pintura: TStringField;
    tPlanCliTipo_Veiculo: TStringField;
    tPlanCliEspecie_Veiculo: TStringField;
    tPlanCliCondicao_VIN: TStringField;
    tPlanCliCondicao_Veiculo: TStringField;
    tPlanCliPassageiros: TSmallintField;
    tPlanCliCodigo_MarcaModelo: TStringField;
    tPlanCliValor_VendaA: TCurrencyField;
    tPlanCliValor_VendaB: TCurrencyField;
    tPlanCliValor_VendaC: TCurrencyField;
    tPlanCliValor_VendaD: TCurrencyField;
    tPlanCliValor_VendaE: TCurrencyField;
    tPlanCliModalidade: TSmallintField;
    tPlanCliFCP: TBooleanField;
    tPlanCliLote_Obrigatorio: TBooleanField;
    tPlanCliProducao_Nacional: TBooleanField;
    tPlanCliRegistro_ANVISA: TStringField;
    tPlanCliVencimento_ANVISA: TDateTimeField;
    tPlanCliProcesso_ANVISA: TStringField;
    tPlanCliSerial_Obrigatorio: TBooleanField;
    tPlanCliValor_ConsumidorFinal: TCurrencyField;
    tPlanCliOrigem: TStringField;
    tPlanCliEscala_Relevante: TBooleanField;
    tPlanCliCNPJ_Fabricante: TStringField;
    tPlanCliDescricao_ANP: TStringField;
    tPlanCliPercentual_GLP: TFloatField;
    tPlanCliPercentual_GLGNN: TFloatField;
    tPlanCliPercentual_GLGNI: TFloatField;
    tPlanCliValor_Partida: TCurrencyField;
    tPlanCliPreco_MaxConsumidor: TCurrencyField;
    tPlanCliValor_ME: TCurrencyField;
    tPlanCliBeneficio_Fiscal: TStringField;
    tPlanCliICMS_DentroEstadoSimples: TFloatField;
    tPlanCliMateria_Prima: TBooleanField;
    tPlanCliICMS_EstadoEntrada: TFloatField;
    tPlanCliICMS_ForaEstadoEntrada: TFloatField;
    tPlanCliServico: TBooleanField;
    tPlanCliClassificacao: TStringField;
    tPlanCliRequer_LI: TBooleanField;
    tPlanCliCliente: TSmallintField;
    tPlanCliOrgao_AnuenteImp: TSmallintField;
    tPlanCliOrgao_AnuenteExp: TSmallintField;
    tPlanCliFornecedor_Nome: TStringField;
    cApagarCli: TCheckBox;
    cApagarPO: TCheckBox;
    tProd: TMSQuery;
    tReg: TMSQuery;
    tCampos: TMSQuery;
    StaticText6: TStaticText;
    bImportarCli: TButton;
    Grade: TStringGrid;
    MenuCampos: TPopupMenu;
    blayout: TButton;
    LayImp: TMSQuery;
    dsLayInp: TDataSource;
    cCodigo: TCheckBox;
    tCodigo: TMSQuery;
    cMsg: TMemo;
    dstNCM: TDataSource;
    vConv: TRESTResponseDataSetAdapter;
    tNCM: TFDMemTable;
    tNCMNCM: TStringField;
    tNCMII: TFloatField;
    tNCMPIS: TFloatField;
    tNCMCOFINS: TFloatField;
    tNCMEX: TBooleanField;
    tNCMNVE: TBooleanField;
    tNCMCEST: TBooleanField;
    tNCMAntD: TBooleanField;
    tNCMCIDE: TFloatField;
    tNCMUM: TStringField;
    tNCMTexto: TStringField;
    tNCMIPI: TFloatField;
    tNCMICMS: TStringField;
    DBGrid1: TDBGrid;
    RClient: TRESTClient;
    RRequest: TRESTRequest;
    RResponse: TRESTResponse;
    RAutentica: TOAuth2Authenticator;
    tNCMLI: TBooleanField;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cArquivoPOChange(Sender: TObject);
    procedure cArquivoPOButtonClick(Sender: TObject);
    procedure bImportarPOClick(Sender: TObject);
    procedure cApagarPOClick(Sender: TObject);
    procedure cArquivoCliChange(Sender: TObject);
    procedure cArquivoCliButtonClick(Sender: TObject);
    procedure bImportarCliClick(Sender: TObject);
    procedure cApagarCliClick(Sender: TObject);
    procedure GradeDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure blayoutClick(Sender: TObject);
    procedure cLinhaIniPOChange(Sender: TObject);
  private
    { Private declarations }
    procedure AbrePlanilhaPO;
    procedure AbrePlanilhaCli;
    procedure ImportarPO;
    procedure ImportarCli;
    procedure AbrePlan;
    procedure CapturaClick(Sender: TObject);
    procedure MontaMenu;
    procedure SalvaLayout;
    function PegaColuna(Campo: string): integer;
    function BuscaJson(NCM: string): boolean;
  public
    mColuna: integer;
  end;

var
  Processo_POImportaItens: TProcesso_POImportaItens;

implementation

uses frmDados, frmDMDespacho, frmDMFiscal, frmDMComercial;

{$R *.dfm}

procedure TProcesso_POImportaItens.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_POImportaItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      SetCurrentDir(ExtractFilePath(Application.ExeName));
      LimpaMemoria;
      Processo_POImportaItens.Release;
      Processo_POImportaItens := nil;
end;

procedure TProcesso_POImportaItens.FormShow(Sender: TObject);
begin
      cmsg.Clear;
      with dmDespacho do begin
           // Purchase order.
           cLinhaFimPO.value  := cLinhaIniPO.value;
           if POItens.RecordCount > 0 then cLinhaFimPO.value := (cLinhaIniPO.value+POItens.RecordCount) - 1;
           tPlanPO.CreateDataSet;
           tPlanPO.Open;

           // Produtos do Clientes.
           cLinhaIniCli.value := 3;
           cLinhaFimCli.value := 5;
           tPlanCli.CreateDataSet;
           tPlanCli.Open;

           with LayImp do begin
                SQL.Clear;
                SQL.Add('select * from LayoutImportacao');
                SQL.Add('where  Tabela = ''POItens'' ');
                SQL.Add('order  BY Coluna');
                //sql.SaveToFile('c:\temp\Importa_Excel.sql');
                Open;
           end;

           MontaMenu;
      end;
end;

procedure TProcesso_POImportaItens.GradeDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
    Texto : string;
    Largurat : integer;
    Largurac : integer;
begin
      with (Sender as TStringGrid).Canvas do begin
           Texto    := Grade.Cells[ACol, ARow];
           Largurat := Canvas.TextWidth(texto) div 2;
           Largurac := Grade.ColWidths[ACol] div 2;

           if ARow = 0 then begin
              Brush.Color := $003E3E3E;
              Font.Color  := clYellow;
              Font.Size   := 8;
              Font.Style  := [fsBold];
           end;
           if ARow = 1 then begin
              Brush.Color := clActiveCaption;
              Font.Color  := clBlack;
              Font.Size   := 8;
              Font.Style  := [fsBold];
           end;
           if gdFocused in State then begin
              Brush.Color := clnavy;
              mColuna     := ACol;
              Font.Color  := clWhite;
           end;
           FillRect(Rect);

           if ARow <= 1 then begin
              TextOut(Rect.Left+1+largurac-largurat,Rect.Top+2, Texto);
           end else
              TextOut(Rect.Left+1, Rect.Top+2, Grade.Cells[aCol,aRow]);
      end;
end;

procedure TProcesso_POImportaItens.cArquivoPOChange(Sender: TObject);
begin
      if Trim(cArquivoPO.Text) <> '' then begin
         Screen.Cursor := crAppStart;
         AbrePlanilhaPO;
         bImportarPO.Enabled := tPlanPO.RecordCount > 0 ;
         Screen.Cursor := crDefault;
      end;
end;

procedure TProcesso_POImportaItens.cLinhaIniPOChange(Sender: TObject);
begin
     if cLinhaFimPO.AsInteger < cLinhaIniPO.AsInteger then begin
        cLinhaFimPO.value := cLinhaIniPO.AsInteger;
     end;
end;

procedure TProcesso_POImportaItens.cArquivoCliChange(Sender: TObject);
var
   i, mMn:integer;
begin
      Abreplan;

      // Carrega o layout salvo.
      with LayImp do begin
           First;

           if LayImp.RecordCount > 0 then begin
              while not Eof do begin
                    Grade.Cells[fieldbyname('Coluna').asinteger, 0] := fieldbyname('Campo').AsString;
                    next;
              end;
           end;

           cLinhaIniCli.Value := FieldByName('LinhaIni').AsInteger;
           cLinhaFimCli.Value := FieldByName('LinhaFim').AsInteger;
           cApagarCli.Checked := FieldByName('Apagar').AsBoolean;

           bImportarCli.Enabled := Grade.RowCount > 2;
      end;
end;

// Carrega os dados da planilha do EXCEL.
procedure TProcesso_POImportaItens.AbrePlanilhaPO;
var
   mPlan:variant;
   mLin
  ,mItem:integer;
begin
      Progresso.Visible  := true;
      //Progresso.Max      := cLinhaFimPO.AsInteger - cLinhaIniPO.AsInteger;
      Progresso.Position := 0;
      
      mPlan := CreateOleObject('Excel.Application');
      mPlan.Visible := false;
      mPlan.WorkBooks.Add(cArquivoPO.FileName);
      
      mItem := 1;

      tPlanPO.Open;
      tPlanPO.EmptyDataSet;

      for mLin := cLinhaIniPO.AsInteger to cLinhaFimPO.AsInteger do begin
          tPlanPO.Append;
                  tPlanPOItem.value              := mItem;
                  tPlanPOCodigo_Mercadoria.value := mPlan.Cells.Item[mLin, 1].value;
                  tPlanPODescricao.value         := mPlan.Cells.Item[mLin, 2].Value;
                  tPlanPONCM.value               := mPlan.Cells.Item[mLin, 7].Value;
                  tPlanPOPackage_Type.value      := mPlan.Cells.Item[mLin, 8].Value;
                  tPlanPOQty_Pkgs.value          := mPlan.Cells.Item[mLin,10].Value;
                  tPlanPONet_Qty.value           := mPlan.Cells.Item[mLin,12].Value;
                  tPlanPOUnidade.value           := mPlan.Cells.Item[mLin,14].Value;
                  tPlanPOTotal_Qty.value         := mPlan.Cells.Item[mLin,15].Value;
                  tPlanPOUnit_Price.value        := mPlan.Cells.Item[mLin,16].Value;
                  tPlanPOTotal.value             := mPlan.Cells.Item[mLin,17].Value;
          tPlanPO.Post;
          inc(mItem);

          Progresso.Position := Progresso.Position + 1;
          Application.ProcessMessages;
      end;
{
1     CÓDIGO INTERNO
2     CÓDIGO FABRICA
3     DESCRIÇÃO
4     NCM
5     UNIDADE
6     QUANTIDADE
7     FOB TOTAL
8     PESO TOTAL
9     FABRICANTE
10    CÓDIGO DE BARRAS (CAIXA)
11    CÓDIGO DE BARRAS (UNIDADE)
12    CÓDIGO SKU
}
      
      Progresso.Visible := false;

      mPlan.Quit;
end;

// Carrega os dados da planilha do EXCEL.
procedure TProcesso_POImportaItens.AbrePlanilhaCli;
var
   mPlan:variant;
   mLin:integer;
begin
      Progresso.Visible  := true;
      Progresso.Max      := cLinhaFimCli.AsInteger - cLinhaIniCli.AsInteger;
      Progresso.Position := 0;

      mPlan := CreateOleObject('Excel.Application');
      mPlan.Visible := false;
      mPlan.WorkBooks.Add(cArquivoCli.FileName);

      tPlanCli.Open;
      tPlanCli.EmptyDataSet;

      for mLin := cLinhaIniCli.AsInteger to cLinhaFimCli.AsInteger do begin
          if trim(mPlan.Cells.Item[mLin, 5].value) = '' then break;

          with tProd do begin
               if trim(mPlan.Cells.Item[mLin, 02].value) <> '' then begin
                  SQL.Clear;
                  SQL.Add('select Codigo from Produtos where Codigo_Fabricante = '+mPlan.Cells.Item[mLin, 02].value);
                  Open;
               end else begin
                  SQL.Clear;
                  SQL.Add('select Codigo from Produtos where Descricao = '+QuotedStr(trim(mPlan.Cells.Item[mLin, 05].value)));
                  Open;
               end;
          end;

          tPlanCli.Append;
                   if tprod.RecordCount > 0 then begin
                      tPlanCli.FieldByname('Codigo').Value := tProd.FieldByName('Codigo').AsInteger
                   end else begin
                      tPlanCli.FieldByname('Codigo').Value := mPlan.Cells.Item[mLin, 01].value;
                   end;

                   tPlanCli.FieldByname('Codigo_Fabricante').Value        := mPlan.Cells.Item[mLin, 02].value;
                   tPlanCli.FieldByname('Fornecedor').Value               := mPlan.Cells.Item[mLin, 03].value;
                   tPlanCli.FieldByname('Fornecedor_Nome').Value          := mPlan.Cells.Item[mLin, 04].value;
                   tPlanCli.FieldByname('Descricao').Value                := mPlan.Cells.Item[mLin, 05].value;
                   tPlanCli.FieldByname('Descricao_Ingles').Value         := mPlan.Cells.Item[mLin, 06].value;
                   tPlanCli.FieldByname('Descricao_Reduzida').Value       := Copy(mPlan.Cells.Item[mLin, 05].value, 1, 60);
                   tPlanCli.FieldByname('Detalhe_Especifico').Value       := mPlan.Cells.Item[mLin, 07].value;
                   tPlanCli.FieldByname('Linha').Value                    := mPlan.Cells.Item[mLin, 08].value;
                   tPlanCli.FieldByname('GTIN').Value                     := mPlan.Cells.Item[mLin, 09].value;
                   tPlanCli.FieldByname('GTIN_Unidade').Value             := mPlan.Cells.Item[mLin, 10].value;
                   tPlanCli.FieldByname('Fabricante').Value               := mPlan.Cells.Item[mLin, 12].value;
                   tPlanCli.FieldByname('NCM').Value                      := mPlan.Cells.Item[mLin, 13].value;
                   tPlanCli.FieldByname('Unidade').Value                  := mPlan.Cells.Item[mLin, 14].value;
                   tPlanCli.FieldByname('Quantidade_Unidade').Value       := mPlan.Cells.Item[mLin, 15].value;
                   tPlanCli.FieldByname('Valor_Venda').Value              := mPlan.Cells.Item[mLin, 16].value;
                   tPlanCli.FieldByname('Valor_ME').Value                 := mPlan.Cells.Item[mLin, 17].value;
                   tPlanCli.FieldByname('Aliquota_IPI').Value             := mPlan.Cells.Item[mLin, 18].value;
                   tPlanCli.FieldByname('Valor_IPI').Value                := mPlan.Cells.Item[mLin, 19].value;
                   tPlanCli.FieldByname('Aliquota_II').Value              := mPlan.Cells.Item[mLin, 20].value;
                   tPlanCli.FieldByname('PIS_Nota').Value                 := mPlan.Cells.Item[mLin, 21].value;
                   tPlanCli.FieldByname('Reducao_PIS').Value              := mPlan.Cells.Item[mLin, 22].value;
                   tPlanCli.FieldByname('COFINS_Nota').Value              := mPlan.Cells.Item[mLin, 23].value;
                   tPlanCli.FieldByname('Reducao_COFINS').Value           := mPlan.Cells.Item[mLin, 24].value;
                   tPlanCli.FieldByname('Dumping_Valor').Value            := mPlan.Cells.Item[mLin, 26].value;
                   tPlanCli.FieldByname('Peso_Liquido').Value             := mPlan.Cells.Item[mLin, 27].value;
                   tPlanCli.FieldByname('Peso_Bruto').Value               := mPlan.Cells.Item[mLin, 28].value;
                   tPlanCli.FieldByname('Valor_Venda').Value              := mPlan.Cells.Item[mLin, 29].value;
                   if mPlan.Cells.Item[mLin, 30].value = 'CONTA PRÓPRIA' then tPlanCli.FieldByname('Modalidade').Value := 1;
                   if mPlan.Cells.Item[mLin, 30].value = 'CONTA ORDEM'   then tPlanCli.FieldByname('Modalidade').Value := 2;
                   if mPlan.Cells.Item[mLin, 30].value = 'ENCOMENDA'     then tPlanCli.FieldByname('Modalidade').Value := 3;
                   tPlanCli.FieldByname('FCP').Value                      := iif(mPlan.Cells.Item[mLin, 31].value = 'S', true, false);
                   tPlanCli.FieldByname('Dumping').Value                  := iif(mPlan.Cells.Item[mLin, 32].value = 'S', true, false);
                   tPlanCli.FieldByname('CAMEX').Value                    := iif(mPlan.Cells.Item[mLin, 33].value = 'S', true, false);
                   tPlanCli.FieldByname('Entrada_ST').Value               := iif(mPlan.Cells.Item[mLin, 34].value = 'S', true, false);
                   tPlanCli.FieldByname('Materia_Prima').Value            := iif(mPlan.Cells.Item[mLin, 35].value = 'S', true, false);
                   tPlanCli.FieldByname('Reciclavel').Value               := iif(mPlan.Cells.Item[mLin, 36].value = 'S', true, false);
                   tPlanCli.FieldByname('Requer_LI').Value                := iif(mPlan.Cells.Item[mLin, 37].value = 'S', true, false);
                   tPlanCli.FieldByname('Orgao_AnuenteImp').Value         := mPlan.Cells.Item[mLin, 38].value;
          tPlanCli.Post;

          Progresso.Position := Progresso.Position + 1;
          Application.ProcessMessages;
      end;
      Progresso.Visible := false;

      mPlan.Quit;
end;

procedure TProcesso_POImportaItens.cArquivoPOButtonClick(Sender: TObject);
begin
     cArquivoPO.FileName := '';
end;

procedure TProcesso_POImportaItens.cArquivoCliButtonClick(Sender: TObject);
begin
     cArquivoCli.FileName := '';
end;

procedure TProcesso_POImportaItens.bImportarCliClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente importar estes itens para o PO?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
         ImportarCli;
      end;
end;

procedure TProcesso_POImportaItens.bImportarPOClick(Sender: TObject);
begin
      ImportarPO;
end;

procedure TProcesso_POImportaItens.blayoutClick(Sender: TObject);
begin
     SalvaLayout;
end;

procedure TProcesso_POImportaItens.ImportarPO;
begin
      Screen.Cursor := crSQLWait;
      with dmDespacho, Dados do begin
           tProd.SQL.Clear;
           tProd.SQL.Add('select Codigo');
           tProd.SQL.Add('      ,Quantidade_Volumes');
           tProd.SQL.Add('      ,Quantidade_Unidade');
           tProd.SQL.Add('      ,Unidade');
           tProd.SQL.Add('     	,NCM');
           tProd.SQL.Add('from Produtos');
           tProd.SQL.Add('where Codigo = :pCod');

           tReg.SQL.Clear;
           tReg.SQL.Add('select Reg  = (select isnull(max(Registro), 0)+1 from POItens)');
           tReg.SQL.Add('      ,Item = (select isnull(max(Item), 0)+1     from POItens where PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');

           if cApagarPO.Checked then begin
              POItens.SQL.Clear;
              POItens.SQL.Add('delete from POItens where PO = :pPO');
              POItens.ParamByName('pPO').AsString := PONumero.AsString;
              POItens.Execute;
              POItens.SQL.Clear;
              POItens.SQL.Add('select * from POItens where PO = :pPO');
              POItens.ParamByName('pPO').AsString := PONumero.AsString;
           end;

           POItens.Open;

           Progresso.Visible  := true;
           Progresso.Max      := tPlanPO.RecordCount;
           Progresso.Position := 0;

           tPlanPO.First;
           while not tPlanPO.Eof do begin
                 tProd.ParamByName('pCod').AsInteger := tPlanPO.FieldByName('Codigo_Mercadoria').AsInteger;
                 tProd.Open;

                 if POItens.Locate('PO;Codigo_Mercadoria', VarArrayOf([PONumero.Value, tPlanPO.FieldByName('Codigo_Mercadoria').AsInteger]), [loCaseInsensitive]) then begin
                    POItens.Edit;
                 end else begin
                    tReg.Open;
                    POItens.Append;
                    POItens.FieldByName('Registro').value := tReg.FieldByName('Reg').AsInteger;
                    POItens.FieldByName('Item').value     := tReg.FieldByName('Item').AsInteger;
                 end;

                 POItens.FieldByName('PO').value                 := PO.FieldByName('Numero').AsString;
                 POItens.FieldByName('Codigo_Mercadoria').value  := tPlanPO.FieldByName('Codigo_Mercadoria').value;
                 POItens.FieldByName('Quantidade').value         := tPlanPO.FieldByName('Net_Qty').value;
                 POItens.FieldByName('Valor').value              := tPlanPO.FieldByName('Unit_Price').value;
                 POItens.FieldByName('Quantidade_Unidade').value := tProd.FieldByName('Quantidade_Unidade').value;
                 POItens.FieldByName('Quantidade_Volumes').value := tPlanPO.FieldByName('Qty_Pkgs').value;
                 POItens.FieldByName('NCM').value                := tPlanPO.FieldByName('NCM').value;
                 POItens.Post;

                 tReg.Close;
                 tPlanPO.Next;

                 Progresso.Position := Progresso.Position + 1;
                 Application.ProcessMessages;
           end;

           Screen.Cursor     := crDefault;
           Progresso.Visible := false;
      end;
end;

(*
procedure TProcesso_POImportaItens.ImportarCli;
var
   i:integer;
begin
      Screen.Cursor := crSQLWait;
      with dmDespacho, Dados do begin
           tReg.SQL.Clear;
           tReg.SQL.Add('SELECT Reg  = (SELECT ISNULL(MAX(Registro), 0)+1 FROM POItens)');
           tReg.SQL.Add('      ,Item = (SELECT ISNULL(MAX(Item), 0)+1     FROM POItens WHERE PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');

           if cApagarCli.Checked then begin
              POItens.SQL.Clear;
              POItens.SQL.Add('DELETE FROM POItens WHERE PO = :pPO');
              POItens.ParamByName('pPO').AsString := PONumero.AsString;
              POItens.Execute;
              POItens.SQL.Clear;
              POItens.SQL.Add('SELECT * FROM POItens WHERE PO = :pPO');
              POItens.ParamByName('pPO').AsString := PONumero.AsString;
           end;

           POItens.Open;

           Progresso.Visible  := true;
           Progresso.Max      := tPlanCli.RecordCount;
           Progresso.Position := 0;

           with Produtos do begin
                 tPlanCli.First;
                 while not tPlanCli.Eof do begin
                       // Adiciona ou modifica produtos novos.
                       if tPlanCli.FieldByName('Codigo').AsInteger > 0 then begin
                          Edit;
                       end else begin
                          tProd.SQL.Clear;
                          tProd.SQL.Add('SELECT Codigo = (SELECT ISNULL(MAX(Codigo), 0)+1 FROM Produtos)');
                          tProd.Open;
                          Append;
                          Fieldbyname('Codigo').Value := tProd.FieldByName('Codigo').AsInteger;

                          // Seta todos os campos boolean para false.
                          tCampos.sql.clear;
                          tCampos.sql.add('select colunas.name as Campo,');
                          tCampos.sql.add('       tipos.name as Tipo,');
                          tCampos.sql.add('colunas.length as Tamanho');
                          tCampos.sql.add('from');
                          tCampos.sql.add('    sysobjects as Tabelas,');
                          tCampos.sql.add('    syscolumns as Colunas,');
                          tCampos.sql.add('    systypes   as Tipos');
                          tCampos.sql.add('where');
                          tCampos.sql.add('    -- JOINS');
                          tCampos.sql.add('    tabelas.ID = colunas.ID');
                          tCampos.sql.add('    and colunas.usertype = tipos.usertype');
                          tCampos.sql.add('    and tipos.name = ''bit'' ');
                          tCampos.sql.add('    and tabelas.name = ''Produtos'' ');
                          tCampos.Open;

                          while not tCampos.Eof do begin
                                FieldByName(tCampos.FieldByName('Campo').AsString).Value := false;
                                tCampos.Next;
                          end;

                          tPlanCli.Edit;
                                   tPlanCli.FieldByName('Codigo').value := FieldByname('Codigo').Value;
                          tPlanCli.Post
                       end;
                                FieldByName('Cliente').Value                  := POCliente.AsInteger;
                                FieldByName('Codigo_Fabricante').Value        := tPlanCli.FieldByname('Codigo_Fabricante').Value;
                                FieldByName('Fornecedor').Value               := tPlanCli.FieldByname('Fornecedor').Value;
                                FieldByName('Descricao').Value                := tPlanCli.FieldByname('Descricao').Value;
                                FieldByName('Descricao_Ingles').Value         := tPlanCli.FieldByname('Descricao_Ingles').Value;
                                FieldByName('Descricao_Reduzida').Value       := tPlanCli.FieldByname('Descricao_Reduzida').Value;
                                FieldByName('Detalhe_Especifico').Value       := tPlanCli.FieldByname('Detalhe_Especifico').Value;
                                FieldByName('Linha').Value                    := tPlanCli.FieldByname('Linha').Value;
                                FieldByName('GTIN').Value                     := tPlanCli.FieldByname('GTIN').Value;
                                FieldByName('GTIN_Unidade').Value             := tPlanCli.FieldByname('GTIN_Unidade').Value;
                                FieldByName('Fabricante').Value               := tPlanCli.FieldByname('Fabricante').Value;
                                FieldByName('NCM').Value                      := tPlanCli.FieldByname('NCM').Value;
                                FieldByName('Unidade').Value                  := tPlanCli.FieldByname('Unidade').Value;
                                FieldByName('Quantidade_Unidade').Value       := tPlanCli.FieldByname('Quantidade_Unidade').Value;
                                FieldByName('Valor_Venda').Value              := tPlanCli.FieldByname('Valor_Venda').Value;
                                FieldByName('Valor_ME').Value                 := tPlanCli.FieldByname('Valor_ME').Value;
                                FieldByName('Aliquota_IPI').Value             := tPlanCli.FieldByname('Aliquota_IPI').Value;
                                FieldByName('Valor_IPI').Value                := tPlanCli.FieldByname('Valor_IPI').Value;
                                FieldByName('Aliquota_II').Value              := tPlanCli.FieldByname('Aliquota_II').Value;
                                FieldByName('PIS_Nota').Value                 := tPlanCli.FieldByname('PIS_Nota').Value;
                                FieldByName('Reducao_PIS').Value              := tPlanCli.FieldByname('Reducao_PIS').Value;
                                FieldByName('COFINS_Nota').Value              := tPlanCli.FieldByname('COFINS_Nota').Value;
                                FieldByName('Reducao_COFINS').Value           := tPlanCli.FieldByname('Reducao_COFINS').Value;
                                FieldByName('Dumping_Valor').Value            := tPlanCli.FieldByname('Dumping_Valor').Value;
                                FieldByName('Peso_Liquido').Value             := tPlanCli.FieldByname('Peso_Liquido').Value;
                                FieldByName('Peso_Bruto').Value               := tPlanCli.FieldByname('Peso_Bruto').Value;
                                FieldByName('Valor_Venda').Value              := tPlanCli.FieldByname('Valor_Venda').Value;
                                FieldByName('Modalidade').Value               := tPlanCli.FieldByname('Modalidade').Value;
                                FieldByName('FCP').Value                      := tPlanCli.FieldByname('FCP').Value;
                                FieldByName('Dumping').Value                  := tPlanCli.FieldByname('Dumping').Value;
                                FieldByName('CAMEX').Value                    := tPlanCli.FieldByname('CAMEX').Value;
                                FieldByName('Entrada_ST').Value               := tPlanCli.FieldByname('Entrada_ST').Value;
                                FieldByName('Materia_Prima').Value            := tPlanCli.FieldByname('Materia_Prima').Value;
                                FieldByName('Reciclavel').Value               := tPlanCli.FieldByname('Reciclavel').Value;
                                FieldByName('Requer_LI').Value                := tPlanCli.FieldByname('Requer_LI').Value;
                                FieldByName('Orgao_AnuenteImp').Value         := tPlanCli.FieldByname('Orgao_AnuenteImp').Value;

                                {
                                FieldByName('Peso_Bruto').Value               :=
                                FieldByName('Aliquota_II').Value              :=
                                FieldByName('Aliquota_PIS').Value             :=
                                FieldByName('Aliquota_COFINS').Value          :=
                                FieldByName('Valor_IPI').Value                :=
                                FieldByName('ClasseEnquadra_IPI').Value       :=
                                FieldByName('Dumping_Valor').Value            :=
                                FieldByName('Reducao_PIS').Value              :=
                                FieldByName('Reducao_COFINS').Value           :=
                                FieldByName('Unidade_Origem').Value           :=
                                FieldByName('ICMS_Reducao').Value             :=
                                FieldByName('Dumping').Value                  :=
                                FieldByName('Reciclavel').Value               :=
                                FieldByName('Codigo_ANP').Value               :=
                                FieldByName('Reducao_IPI').Value              :=
                                FieldByName('Reducao_II').Value               :=
                                FieldByName('Acordo_TarifarioII').Value       :=
                                FieldByName('Acordo_TarifarioIPI').Value      :=
                                FieldByName('Entrada_ST').Value               :=
                                FieldByName('Detalhe_Especifico').Value       :=
                                FieldByName('ICMS_DentroEstado').Value        :=
                                FieldByName('ICMS_ForaEstado').Value          :=
                                FieldByName('PIS_NotaSaida').Value            :=
                                FieldByName('COFINS_NotaSaida').Value         :=
                                FieldByName('CAMEX').Value                    :=
                                FieldByName('Tabela_CAMEX').Value             :=
                                FieldByName('Modalidade').Value               :=
                                FieldByName('Registro_ANVISA').Value          :=
                                FieldByName('Vencimento_ANVISA').Value        :=
                                FieldByName('Processo_ANVISA').Value          :=
                                FieldByName('Escala_Relevante').Value         :=
                                FieldByName('ICMS_DentroEstadoSimples').Value :=
                                FieldByName('ICMS_EstadoEntrada').Value       :=
                                FieldByName('ICMS_ForaEstadoEntrada').Value   :=
                                FieldByName('Orgao_AnuenteExp').Value         :=
                                }


                       Produtos.Post;

                       if POItens.Locate('PO;Codigo_Mercadoria', VarArrayOf([PONumero.Value, tPlanCli.FieldByName('Codigo').AsInteger]), [loCaseInsensitive]) then begin
                          POItens.Edit;
                       end else begin
                          tReg.Open;
                          POItens.Append;
                          POItens.FieldByName('Registro').value := tReg.FieldByName('Reg').AsInteger;
                          POItens.FieldByName('Item').value     := tReg.FieldByName('Item').AsInteger;
                       end;

                       POItens.FieldByName('PO').value                 := PO.FieldByName('Numero').AsString;
                       POItens.FieldByName('Codigo_Mercadoria').value  := tPlanCli.FieldByName('Codigo').value;
      //                 POItens.FieldByName('Quantidade').value         := tPlanCli.FieldByName('Net_Qty').value;
                       POItens.FieldByName('Valor').value              := tPlanCli.FieldByname('Valor_ME').Value;
                       POItens.FieldByName('Quantidade_Unidade').value := tPlanCli.FieldByname('Quantidade_Unidade').Value;
      //                 POItens.FieldByName('Quantidade_Volumes').value := tPlanPO.FieldByName('Qty_Pkgs').value;
                       POItens.FieldByName('NCM').value                := tPlanCli.FieldByname('NCM').Value;
                       POItens.Post;

                       tReg.Close;
                       tPlanCli.Next;

                       Progresso.Position := Progresso.Position + 1;
                       Application.ProcessMessages;
                end;
           end;

          Screen.Cursor     := crDefault;
          Progresso.Visible := false;
      end;
end;
*)
procedure TProcesso_POImportaItens.ImportarCli;
Var
    mLin,
    i,
    mCol: Integer;
    mDesc,
    erro,
    mCodigo: String;
//    js: TMemo;
    mPISNFE,
    mPISNFs,
    mCOFINSNFE,
    mCOFINSNFS: real;
begin
      //Processo_POImportaItens.Enabled := false;
      Progresso.Max      := Grade.RowCount-cLinhaIniCli.AsInteger;
      Progresso.Position := 0;

      with Dados, dmDespacho, dmFiscal do begin
           tReg.SQL.Clear;
           tReg.SQL.Add('select reg  = (select isnull(max(Registro), 0)+1 from POiIens)');
           tReg.SQL.Add('      ,Item = (select isnull(max(Item), 0)+1     from POItens where PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');

           if cApagarCli.Checked then begin
              POItens.SQL.Clear;
              POItens.SQL.Add('delete from POItens where PO = :pPO');
              POItens.ParamByName('pPO').AsString := PONumero.AsString;
              POItens.Execute;
              POItens.SQL.Clear;
              POItens.SQL.Add('select * from POItens where PO = :pPO');
              POItens.ParamByName('pPO').AsString := PONumero.AsString;
           end;

           // Cadastra ou Modifica o produto caso não exista.
           for mLin := 2 to pred(Grade.RowCount) do begin
               if Grade.Cells[PegaColuna('Descricao'), mLin] <> '' then begin;
                  // Fazer busca do "NCM" no site da "Infoconsult/ F5 / Tecwin / TECWEB / IOB"...
                  if BuscaJson(Grade.Cells[PegaColuna('NCM'), mLin]) then begin
                     // Cadastra a NCM casa não exista no banco de dados ou atualiza se ja existe.
                     with NCM do begin
                          // Busca as aliquotas de pis e cofins da saida na tabela de pis e cofins.
                          with Majoracao do begin
                               sql.Clear;
                               sql.Add('select *');
                               sql.Add('from Majoracao');
                               sql.Add('where Descricao = ''PIS'' ');
                               sql.Add('and Tipo = ''M'' ');
                               sql.Add('and Modalidade = :pModal');
                               sql.Add('and Majorada = :pMaj');
                               sql.Add('and Regime_Apuracao = :pReg ');
                               ParamByName('pMaj').AsFloat     := tNCM.Fieldbyname('PIS').asfloat;
                               ParamByName('pModal').AsInteger := PO.FieldByName('Modalidade_Importacao').Value;
                               ParamByName('pReg').AsString    := EmpresasRegime.AsString;
                               open;
                               mPISNFE := FieldByName('Entrada').AsFloat;
                               mPISNFS := FieldByName('Saida').AsFloat;

                               sql.Clear;
                               sql.Add('select *');
                               sql.Add('from Majoracao');
                               sql.Add('where Descricao = ''COFINS'' ');
                               sql.Add('and Tipo = ''M'' ');
                               sql.Add('and Modalidade = :pModal');
                               sql.Add('and Majorada = :pMaj');
                               sql.Add('and Regime_Apuracao = :pReg ');
                               ParamByName('pMaj').AsFloat     := tNCM.Fieldbyname('COFINS').asfloat;
                               ParamByName('pModal').AsInteger := PO.FieldByName('Modalidade_Importacao').Value;
                               ParamByName('pReg').AsString    := EmpresasRegime.AsString;
                               open;
                               mCOFINSNFE := FieldByName('Entrada').AsFloat;
                               mCOFINSNFS := FieldByName('Saida').AsFloat;
                          end;

                          sql.Clear;
                          sql.Add('select * from NCM where NCM = :pNCM');
                          ParamByName('pNCM').asstring := tNCM.FieldByName('NCM').AsString;
                          open;
                          if RecordCount = 0 then begin
                             append;
                                 fieldbyName('NCM').value := tNCM.FieldByName('NCM').AsString;
                          end else begin
                             edit;
                          end;
                                 fieldbyName('Produto').value           := tNCM.Fieldbyname('Texto').AsString;
                                 fieldbyName('Unidade').value           := tNCM.Fieldbyname('UM').AsString;
                                 fieldbyName('Enquadramento_IPI').value := '999';
                                 fieldbyName('Genero').value            := copy(tNCM.fieldbyname('NCM').AsString, 1, 2);
                                 fieldbyName('DNF').value               := false;
                                 fieldbyName('CodigoTrib_TabA').value   := 1;
                                 fieldbyName('II').value                := tNCM.Fieldbyname('II').asfloat;
                                 fieldbyName('IPI').value               := tNCM.Fieldbyname('IPI').asfloat;
                                 fieldbyName('IPI_Valor').value         := 0;
                                 fieldbyName('PIS').value               := tNCM.Fieldbyname('PIS').asfloat;
                                 fieldbyName('PIS_Nota').value          := mPISNFE;
                                 fieldbyName('PIS_NotaSaida').value     := mPISNFS;
                                 fieldbyName('COFINS').value            := tNCM.Fieldbyname('COFINS').asfloat;
                                 fieldbyName('COFINS_Nota').value       := mCOFINSNFE;
                                 fieldbyName('COFINS_NotaSaida').value  := mCOFINSNFS;
                                 fieldbyName('Custo_Seletivo').value    := 0;
                                 fieldbyName('PIS_Reducao').value       := 0;
                                 fieldbyName('COFINS_Reducao').value    := 0;
                                 fieldbyName('CodigoTrib_TabA2').value  := 0;
                                 fieldbyName('ICMS_Imune').value        := 0;
                                 fieldbyName('FCP').value               := 0;
                                 fieldbyName('MVA_NaoReducao').value    := 0;
                                 fieldbyName('CodigoTrib_TabA3').value  := 2;
                                 fieldbyName('NALADI').value            := 0;
                                 fieldbyName('Destaque').value          := 0;
                                 fieldbyName('CEST').value              := 0;
                             post
                     end;

                     // Cadastra o Produto casa não exista no banco de dados ou atualiza se ja existe.
                     with Produtos do begin
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('Codigo_Mercadoria'), mLin])) <> '' then begin
                             sql.Clear;
                             sql.Add('select * from produtos where Codigo = :pCod');
                             paramByName('pCod').AsInteger := strtoint(trim(ApenasNumeros(Grade.Cells[PegaColuna('Codigo_Mercadoria'), mLin])));
                             open;
                             Edit;
                          end else begin
                             sql.Clear;
                             sql.Add('select * from produtos where Codigo_Fabricante = :pCod');
                             paramByName('pCod').Asstring := trim(Grade.Cells[PegaColuna('Codigo_Fabricante'), mLin]);
                             open;
                             if RecordCount <> 0 then begin
                                Edit;
                             end else begin
                                tCodigo.SQL.Clear;
                                tCodigo.SQL.Add('select isnull(max(Codigo),0)+1 as Codigo from Produtos');
                                tCodigo.Open;
                                Append;
                                FieldByName('Codigo').value  := tCodigo.FieldByName('Codigo').AsInteger;
                             end;
                          end;

                              FieldByName('Codigo_Fabricante').value  := trim(Grade.Cells[PegaColuna('Codigo_Fabricante'), mLin]);
                              FieldByName('NCM').value                := tNCM.FieldByName('NCM').value;
                              FieldByName('Peso_Liquido').value       := 0;
                              FieldByName('Peso_Bruto').value         := 0;
                              FieldByName('Descricao').value          := iif( PegaColuna('Descricao') <> -1, Trim(Grade.Cells[PegaColuna('Descricao'), mLin]), '');
                              FieldByName('Descricao_Reduzida').value := iif( PegaColuna('Descricao') <> -1, copy(Trim(Grade.Cells[PegaColuna('Descricao'), mLin]), 1, 60), '');
                              FieldByName('Descricao_Ingles').value   := '';
                              FieldByName('GTIN').value               := 'SEM GTIN';
                              FieldByName('GTIN_Unidade').value       := 'SEM GTIN';
                              FieldByName('Quantidade_Unidade').value := 1;
                              FieldByName('Quantidade_Volumes').value := 1;
                              FieldByName('Origem').value             := 'I';
                              FieldByName('Selecionado').value        := false;
                              FieldByName('Reciclavel').value         := false;
                              FieldByName('Desativado').value         := false;
                              FieldByName('Custo_Seletivo').value     := false;
                              FieldByName('FCP').value                := false;
                              FieldByName('Producao_Nacional').value  := false;
                              FieldByName('Materia_Prima').value      := false;
                              FieldByName('Servico').value            := false;
                              FieldByName('Unidade').value            := tNCM.FieldByName('UM').Value;
                              FieldByName('Unidade_Origem').value     := tNCM.FieldByName('UM').Value;
                              FieldByName('Aliquota_IPI').value       := tNCM.FieldByName('IPI').value;
                              FieldByName('Aliquota_II').value        := tNCM.FieldByName('II').value;
                              FieldByName('Aliquota_PIS').value       := tNCM.FieldByName('PIS').value;
                              FieldByName('PIS_Nota').value           := mPISNFE;
                              FieldByName('PIS_NotaSaida').value      := mPISNFS;
                              FieldByName('Aliquota_COFINS').value    := tNCM.FieldByName('COFINS').value;
                              FieldByName('COFINS_Nota').value        := mCOFINSNFE;
                              FieldByName('COFINS_NotaSaida').value   := mCOFINSNFS;
                              FieldByName('Dumping').value            := tNCM.FieldByName('AntD').asboolean;
                              FieldByName('Requer_LI').value          := tNCM.FieldByName('LI').asboolean;
                          post;
                     end;

                     // Importando os itens para o PO.
                     with POItens do begin
                          Erro := '';
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('Valor'), mLin]))      = '' then Erro := '"Valor" do produto não informado na planilha.'+#13;
                          if trim(Grade.Cells[PegaColuna('Descricao'), mLin])                 = '' then Erro := '"Descrição" do produtos nãoinformado na planilha.'+#13;
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('Quantidade'), mLin])) = '' then Erro := '"Quantidade" do produtos nãoinformado na planilha.'+#13;
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('NCM'), mLin]))        = '' then Erro := '"NCM" do produtos nãoinformado na planilha.'+#13;

                          if Erro = '' then begin
                             if Locate('PO;Codigo_Mercadoria', VarArrayOf([PONumero.Value, Produtos.FieldByName('Codigo').AsInteger]), [loCaseInsensitive]) then begin
                                Edit;
                             end else begin
                                tReg.SQL.Clear;
                                tReg.SQL.Add('select Reg  = (select isnull(max(Registro), 0)+1 from POItens)');
                                tReg.SQL.Add('      ,Item = (select isnull(max(Item), 0)+1     from POItens where PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');
                                tReg.Open;
                                Append;
                                     FieldByName('Registro').value := tReg.FieldByName('Reg').AsInteger;
                                     FieldByName('Item').value     := tReg.FieldByName('Item').AsInteger;
                                tReg.Close;
                             end;

                             FieldByName('PO').value                 := PO.FieldByName('Numero').AsString;
                             FieldByName('Codigo_Mercadoria').value  := Produtos.FieldByName('Codigo').AsInteger;
                             FieldByName('Valor').value              := strtocurr(Grade.Cells[PegaColuna('Valor'), mLin]);
                             FieldByName('Quantidade').value         := strtofloat(Grade.Cells[PegaColuna('Quantidade'), mLin]);
                             FieldByName('Quantidade_Unidade').value := 1;
                             FieldByName('NCM').value                := ApenasNumeros((Grade.Cells[PegaColuna('NCM'), mLin]));
                             FieldByName('Fabricante').value         := PO.FieldByName('Exportador').Asinteger;
                             Post;

                             Progresso.Position := Progresso.Position + 1;
                             Application.ProcessMessages;
                          end else begin
                             cMsg.Lines.Add('Registro contém erro e não sera importado: '+#13);
                             cMsg.Lines.Add('      '+Produtos.FieldByName('Codigo').Asstring+': '+ Erro);
                          end;
                     end;
                  end;
               end;
               Progresso.Position  := Progresso.Position + 1;
               Application.ProcessMessages;
           end;
      end;
      //Processo_POImportaItens.Enabled := true;
      Showmessage('Importação da tabela de produtos concluída com sucesso!');
end;

procedure TProcesso_POImportaItens.cApagarCliClick(Sender: TObject);
begin
     if cApagarcLI.Checked then begin
        MessageDlg('Atenção!'+#13+'Essta opção apaga todos os itens existente desse "PO".', mtWarning, [mbOK], 0);
     end;
end;

procedure TProcesso_POImportaItens.cApagarPOClick(Sender: TObject);
begin
     if cApagarPO.Checked then begin
        MessageDlg('Atenção!'+#13+'Essta opção apaga todos os itens existente desse "PO".', mtWarning, [mbOK], 0);
     end;
end;

procedure TProcesso_POImportaItens.AbrePlan;
Var
   i: integer;
begin
      if Trim(cArquivoCli.Text) <> '' then begin
         Screen.Cursor := crAppStart;
         with Grade do begin
              for i := 0 to RowCount -1 do begin
                  Rows[i].Clear;
              end;
         end;
         ImportaEXCEL(Grade, cArquivoCli.FileName, nil, 1, cLinhaIniCli.AsInteger, cLinhaFimCli.AsInteger, true);
         AutoAjusteCol(Grade);
      end;

      Screen.Cursor := crDefault;
end;

procedure TProcesso_POImportaItens.MontaMenu;
var
   NovoItem: TMenuItem;
   MenuCampos: TPopUpMenu;
   i, mMn, mQuebra: Integer;
begin
     MenuCampos           := TPopUpMenu.Create(Processo_POImportaItens);
     MenuCampos.OwnerDraw := false;

     NovoItem             := TMenuItem.Create(MenuCampos);
     NovoItem.Caption     := '-';
     MenuCampos.Items.Insert(0, NovoItem);

     NovoItem         := TMenuItem.Create(MenuCampos);
     NovoItem.Caption := 'Limpar';

     MenuCampos.Items.Insert(0, NovoItem);
     MenuCampos.Items.Items[0].OnClick := CapturaClick;

     Grade.PopupMenu := MenuCampos;

     mQuebra := 0;
     with dmDespacho, POItens do begin
          for i := 0 to pred(FieldCount) do begin
              NovoItem             := TMenuItem.Create(MenuCampos);
              NovoItem.Caption     := Fields[i].FieldName;
              NovoItem.Checked     := false;
              NovoItem.AutoHotkeys := maParent;
              NovoItem.Enabled     := true;
              NovoItem.Visible     := true;
              NovoItem.Name        := Fields[i].FieldName;
              NovoItem.Checked     := LayImp.Locate('Tabela;Campo', VarArrayOf(['POItens', Fields[i].FieldName]), [loCaseInsensitive]);

              MenuCampos.Items.Insert(i+2, NovoItem);
              MenuCampos.Items.Items[i+2].OnClick := CapturaClick;

              Inc(mQuebra);
              if mQuebra = 25 then begin
                 mQuebra := 0;
                 NovoItem.Break := mbBreak;
              end;
          end;
     end;

     NovoItem             := TMenuItem.Create(MenuCampos);
     NovoItem.Caption     := 'Unidade';
     NovoItem.Checked     := false;
     NovoItem.AutoHotkeys := maParent;
     NovoItem.Enabled     := true;
     NovoItem.Visible     := true;
     NovoItem.Name        := 'Unidade';
     NovoItem.Checked     := LayImp.Locate('Tabela;Campo', VarArrayOf(['POItens', 'Unidade']), [loCaseInsensitive]);
     MenuCampos.Items.Insert(i+2, NovoItem);
     MenuCampos.Items.Items[i+2].OnClick := CapturaClick;

     NovoItem             := TMenuItem.Create(MenuCampos);
     NovoItem.Caption     := 'Codigo_Fabricante';
     NovoItem.Checked     := false;
     NovoItem.AutoHotkeys := maParent;
     NovoItem.Enabled     := true;
     NovoItem.Visible     := true;
     NovoItem.Name        := 'Codigo_Fabrincate';
     NovoItem.Checked     := LayImp.Locate('Tabela;Campo', VarArrayOf(['POItens', 'Codigo_Fabricante']), [loCaseInsensitive]);
     MenuCampos.Items.Insert(i+2, NovoItem);
     MenuCampos.Items.Items[i+2].OnClick := CapturaClick;
end;

procedure TProcesso_POImportaItens.CapturaClick(Sender: TObject);
var
   mCol
  ,mMn: Integer;
begin
      Grade.Cells[mColuna, 0] := ' ';
      if (RemoveCaracter('&', '', TMenuItem(Sender).Caption) <> 'Limpar') then begin
         // Limpa o campo de outra célula se já utilizado.
         for mCol := 0 to pred(Grade.ColCount) do begin
             if Grade.Cells[mCol, 0] = RemoveCaracter('&', '', TMenuItem(Sender).Caption) then begin
                Grade.Cells[mCol, 0] := ' ';
             end;
         end;
         Grade.Cells[mColuna, 0]   := RemoveCaracter('&', '', TMenuItem(Sender).Caption);
         TMenuItem(Sender).Checked := true;
      end;
end;

procedure TProcesso_POImportaItens.SalvaLayout;
Var
    mCol: Integer;
begin
     LayImp.SQL.Clear;
     LayImp.SQL.Add('delete from LayoutImportacao where Tabela = ''POItens'' ');
     LayImp.Execute;
     LayImp.SQL.Clear;
     LayImp.SQL.Add('select * from LayoutImportacao');
     LayImp.SQL.Add('where  Tabela = ''POItens'' ');
     LayImp.SQL.Add('order by Coluna');
     LayImp.Open;
     LayImp.First;

     for mCol := 0 to pred(Grade.ColCount) do begin
         if Trim(Grade.Cells[mCol, 0]) <> '' then begin
            LayImp.Append;
                   LayImp.FieldByName('Tabela').value     := 'POItens';
                   LayImp.FieldByName('Coluna').value     := PoeZero(2,mCol);
                   LayImp.FieldByName('Campo').value      := Grade.Cells[mCol, 0];
                   LayImp.FieldByName('LinhaIni').value   := cLinhaIniCli.AsInteger;
                   LayImp.FieldByName('LinhaFim').value   := cLinhaFimCli.AsInteger;
                   LayImp.FieldByName('Apagar').value     := cApagarCli.Checked;
            LayImp.Post;
         end;
     end;
     LayImp.Close;
end;

function TProcesso_POImportaItens.PegaColuna(Campo: string): integer;
var
   c: integer;
begin
     PegaColuna := -1;
     for c := 0 to Grade.ColCount do begin
         if Grade.Cells[c, 0] = Campo then begin
            PegaColuna := c;
            break;
         end;
     end;
end;

function TProcesso_POImportaItens.BuscaJson(NCM: string): boolean;
var
  jsonObj, jSubObj: TJSONObject;
  ja: TJSONArray;
  jv, js: TJSONValue;
  i,a : Integer;
  st: widestring;
  aJs: TStringList;
  mNCM,
  mSecret,
  mID: string;
  mToken: widestring;
  murl : string;
begin
      result := false;
     // BUSCA Arquivo na F5 Legend
//     mSecret := '42H4DBjGEqxAit4orYgXFD1eafrhOeEIBc4zCCnv';
//     mID     := '46';
     (*
     mToken  := 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjliNjUwYWE3ZGRiMzRhZDIwZDRiOWJiNDMyMGJjNDQ3NTJhMTg4MDUyZmQ5MzE4MzgyYmVlYTA4MzkwNDgwYzI5MjRkZWUwZTgwYjhhOGIyIn0.ey'+
                'JhdWQiOiI0NiIsImp0aSI6IjliNjUwYWE3ZGRiMzRhZDIwZDRiOWJiNDMyMGJjNDQ3NTJhMTg4MDUyZmQ5MzE4MzgyYmVlYTA4MzkwNDgwYzI5MjRkZWUwZTgwYjhhOGIyIiwiaWF0IjoxNjU1MzE5OTA3LCJu'+
                'YmYiOjE2NTUzMTk5MDcsImV4cCI6MTY4Njg1NTkwNywic3ViIjoiODQ2NCIsInNjb3BlcyI6W119.GyBGa5IaLHq3KvpmhYwbPgUCKN0dwqa_3jef1x5KO3DXxUNE8TLV0C0vj56kpPW6xbyHBiSFXh4yzxzZ8'+
                'YF8T-MTBNMUPEUtfOKGaugfyQACRgxZ-sxcHJMnAweQYvPvze0q0vQYKIFGqxZWWPRTiOO1r3-V397Ekcrw-1pQfbvhV8AR7QsDmyisDxRujbiubSs1tqhGS6V13OFz7mc2QsonTgLkhwBiyAorZG4SYvG2MOV'+
                'UsQ3q2_kS4oo2OHpvlrDiTM59p3BtKvdWR3saZZgM1gRU0NbBaTkSkV9cx_DPTI_lPGTFs_h5UgQBd_nhW2QIRbncuXOTQFXrXvsMB2uw70DPYVubRlbsHGL7N_WzBTotZFLUvH2Q8KOMyo0rFGZFHyK6V1hph'+
                '_wB-6egbnIugw9DTnktB-kh_H5re2aoBavwOOsxCoNN9kjiVggR0PMhL2jVuRB91967FNHJqrWaccfxkdAY3WOsJcCTLQaT3XZJ935wZFZGgESyoedZVTHfXnDLT8gsEsusblEHfp1GrJEcLn2kOXCUakj1-Iz'+
                'kLDUxAKZWeG1Nxe7KcSzm__m5HJWiLJR6vELHLRUbMq2OPHaDNs6-qNb5Exjm5GRHrzbjAI-PsjzAT0jt3kBbnNr0MktRJSCE3UF0NZ5l0A94_YBApwyhHISM40AuwM4';
     *)
     with dmComercial do begin
          EComm.Open;
          EComm.Locate('Servico', 'F5Legend', [loCaseInsensitive]);

          mToken                  := EComm.FieldByName('Token').asstring;
          mSecret                 := EComm.FieldByName('Consumer_Secret').AsWideString;
          mID                     := EComm.FieldByName('Consumer_Key').asstring;
          murl                    := EComm.FieldByName('url').asstring;
          RAutentica.AccessToken  := mToken;
          RAutentica.ClientID     := mID;
          RAutentica.ClientSecret := mSecret;
     end;

     RClient.Params.AddHeader('Authorization', mToken);
//     RClient.BaseURL := Concat('https://www.ncmweb.com.br/api/ncmweb/v1/subitens/', FormatMaskText('####.##.##;0; ', NCM), '?aliquotas=true&indicadores=true&excecoes=true');
     RClient.BaseURL := Concat(murl, 'subitens/', FormatMaskText('####.##.##;0; ', NCM), '?aliquotas=true&indicadores=true&excecoes=true');

     try
         RRequest.Execute;
         st := RResponse.Content;
         memo1.Lines.Add('[ JSON ]-------------------------------------------------------------------------------------------------'+#13+st);
     except
         begin
              memo1.Lines.Add('[ ERRO NA CONEXÃO COM O SERVIÇO ]-------------------------------------------------------------------------'+#13+st);
              memo1.lines.Clear;
              memo1.Lines.Add('TOKEN  :'+#13+mToken);
              memo1.Lines.Add('');
              memo1.Lines.Add('SECRET :'+mSecret);
              memo1.Lines.Add('');
              memo1.Lines.Add('MID    :'+mid);
              memo1.Lines.Add('');
              memo1.Lines.Add('url    :'+murl);
              memo1.Lines.Add('');
              memo1.Lines.Add('Serviço:'+Concat(murl, 'subitens/', FormatMaskText('####.##.##;0; ', NCM), '?aliquotas=true&indicadores=true&excecoes=true'));
              memo1.Lines.Add('');
         end;
     end;
     jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(st), 0) as TJSONObject;
     jv      := jsonObj.Get('data').JsonValue;
     ja      := jv as TJSONArray;

     tNCM.open;
     tNCM.EmptyDataSet;
     for i := 0 to pred(ja.Size) do begin
         jSubObj := (ja.Get(i) as TJSONObject);
         with tNCM do begin
              Append;
              for a := 0 to pred(jsubObj.Count) do begin
                  js := jSubObj.Get(a).JsonString;
                  jv := jSubObj.Get(a).JsonValue;

                  if uppercase(js.value) = 'NCM'    then begin
                     FieldByName(js.value).Value := ApenasNumeros(jv.Value);
                     mNCM := ApenasNumeros(jv.Value);
                  end;
                  if uppercase(js.value) = 'TEXTO'  then
                     FieldByName(js.value).Value := jv.Value;
                  if uppercase(js.value) = 'II'     then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'IPI'    then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'PIS'    then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'COFINS' then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'ICMS'   then
                     FieldByName(js.value).Value := jv.Value;
                  if (uppercase(js.value) = 'EX') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'NVE')  and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'CEST') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'ANTD') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'CIDE') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'UM')   and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := jv.Value;
                  if (uppercase(js.value) = 'LI')   and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := jv.Value;
              end;
              Post;
              result := trim(mNCM) <> '';
         end;
     end;
end;


end.
