unit frmImpressao_OP_FaturamentoRecebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxCtrls, Vcl.Mask, RxToolEdit, Data.DB, MemDS, DBAccess, MSAccess, ppParameter, ppDesignLayer, ppBands, ppClass, ppCtrls, ppVar, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, RxLookup;

type
  TImpressao_OP_FaturamentoRecebimento = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    tNotas: TMSQuery;
    pEmpresas: TppDBPipeline;
    pNotas: TppDBPipeline;
    rFatRec: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape19: TppShape;
    ppLabel21: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    dstNotas: TDataSource;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppPageSummaryBand1: TppPageSummaryBand;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    lCliente: TStaticText;
    cCliente: TRxDBLookupCombo;
    tClientes: TMSQuery;
    dstClientes: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_OP_FaturamentoRecebimento: TImpressao_OP_FaturamentoRecebimento;

implementation

{$R *.dfm}

uses FUNCOES, frmDados, frmMenu_Principal;

procedure TImpressao_OP_FaturamentoRecebimento.bImprimirClick(Sender: TObject);
begin
     with tNotas do begin
          sql.clear;
          sql.add('select Pedido = Pedido_Representante');
          sql.add('      ,Nota = Numero');
          sql.add('      ,Data = Data_Emissao');
          sql.add('      ,Volume = round((select sum(Quantidade) from NotasItens ni where ni.Nota = nf.Numero and ni.data = nf.Data_Emissao), 3)');
          sql.add('      ,Faturado = round(isnull(nf.Valor_TotalNota, 0), 4)');
          sql.add('      ,Recebido = isnull((select sum(Valor) from PagarReceberBaixas where Numero in(select Numero from PagarReceber pr where pr.Fiscal = cast(nf.Numero as varchar(15)) and pr.Data_Vencimento = nf.Data_Emissao and Tipo_Nota = ''SD'')), 0)');
          sql.add('      ,Cliente_CNPJ = (select CNPJ from Clientes cli where cli.Codigo = nf. Cliente_Codigo)');
          sql.add('      ,Cliente_Nome = (select Nome from Clientes cli where cli.Codigo = nf. Cliente_Codigo)');
          sql.add('      ,Representante');
          sql.add('from NotasFiscais nf');
          sql.add('where isnull(Pedido_Representante, '''') <> '''' ');
          if not DataLimpa(cDataIni.text) then begin
             sql.add('and nf.Data_Emissao between :pDataIni and :pDataFim');
          end;
          if trim(cCliente.Text) <> '' then begin
             sql.add('and nf.Cliente_Codigo = :pCliente ');
             parambyname('pCliente').value := tClientes.fieldbyname('Codigo').asinteger;
          end;
          sql.add('and Saida_Entrada = 1');
          sql.add('and isnull(nf.Cancelada, 0) = 0');
          sql.add('and isnull(nf.Nfe_Denegada, 0) = 0');
          sql.add('and isnull(Complementar, 0) = 0');
          sql.add('order by Data, Nota, cast(substring(Pedido_Representante, 2, 10) as int)');

          lPeriodo.Caption := '';
          if not DataLimpa(cDataIni.text) then begin
             parambyname('pDataIni').value := cDataIni.Date;
             parambyname('pDataFim').value := cDataFim.Date;
             lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text;
          end;
          //sql.savetofile('c:\temp\Faturamento_Recebimento.sql');
          open;

          if tNotas.RecordCount > 0 then begin
             if fileexists(Dados.EmpresasLogo.Value) then begin
                iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
             end;
          end else begin
             ShowMessage('Não há dados para o relatório solicitado!');
             Abort;
          end;

          rFatRec.Print;
          rFatRec.Reset;
     end;
end;

procedure TImpressao_OP_FaturamentoRecebimento.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_OP_FaturamentoRecebimento.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_OP_FaturamentoRecebimento.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     with Dados do begin
          with Empresas do begin
               sql.clear;
               sql.add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
               open;
          end;
          with tClientes do begin
               sql.clear;
               sql.add('select Codigo, CNPJ, Nome');
               sql.add('from Clientes');
               sql.add('where Codigo in(select Cliente_Codigo from NotasFiscais where Saida_Entrada = 1)');
               sql.add('order by Nome');
               open;
          end;
     end;
     Screen.Cursor := crDefault;
end;


end.

