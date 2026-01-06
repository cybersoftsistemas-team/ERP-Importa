unit frmPedido_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, RxToolEdit, RxDBCtrl, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, MemDS, DBAccess, MSAccess, ppDB, ppDBPipe, ppCtrls, ppBands, ppParameter, ppDesignLayer, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.Imaging.jpeg, ppVar, ppStrtch, ppSubRpt, ppMemo, System.Maskutils;

type
  TPedido_Compra = class(TForm)
    Image2: TImage;
    RxLabel2: TRxLabel;
    RxLabel1: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bItens: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText6: TStaticText;
    cPedido: TDBEdit;
    StaticText7: TStaticText;
    cData: TDBDateEdit;
    DBGrid2: TDBGrid;
    cDiretor: TDBLookupComboBox;
    cSolicitante: TDBLookupComboBox;
    tTemp: TMSQuery;
    cFiltro: TRadioGroup;
    DBEdit2: TDBEdit;
    StaticText9: TStaticText;
    DBMemo1: TDBMemo;
    StaticText10: TStaticText;
    DBMemo2: TDBMemo;
    cFormaPgto: TDBLookupComboBox;
    bImprimir: TButton;
    rPedido: TppReport;
    pDetalhe: TppDetailBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    pPedido: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    lCNPJ_IE: TppLabel;
    lEndereco1: TppLabel;
    lTelefones: TppLabel;
    lEmail: TppLabel;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText13: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppDBText16: TppDBText;
    ppLabel14: TppLabel;
    ppDBText17: TppDBText;
    ppLabel15: TppLabel;
    ppDBText18: TppDBText;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppDBText19: TppDBText;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppLine9: TppLine;
    ppLabel19: TppLabel;
    ppLine10: TppLine;
    ppLabel20: TppLabel;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    ppLine12: TppLine;
    ppLabel22: TppLabel;
    ppLine13: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pItens: TppDBPipeline;
    StaticText3: TStaticText;
    cComprador: TDBLookupComboBox;
    ppDBText23: TppDBText;
    ppLabel25: TppLabel;
    tComprador: TMSQuery;
    dstComprador: TDataSource;
    StaticText11: TStaticText;
    cGerente: TDBLookupComboBox;
    dstGerente: TDataSource;
    tGerente: TMSQuery;
    dstDiretor: TDataSource;
    tDiretor: TMSQuery;
    StaticText8: TStaticText;
    cFornecedor: TDBLookupComboBox;
    tPedido: TMSQuery;
    dstPedido: TDataSource;
    ppLabel26: TppLabel;
    ppDBText24: TppDBText;
    ppLabel27: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine14: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBText25: TppDBText;
    ppLine17: TppLine;
    tItens: TMSQuery;
    dsItens: TDataSource;
    Itens: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppShape5: TppShape;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppShape6: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText15: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppShape8: TppShape;
    ppLabel36: TppLabel;
    ppDBText27: TppDBText;
    ppShape9: TppShape;
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppShape10: TppShape;
    ppLabel38: TppLabel;
    ppDBText29: TppDBText;
    lEndereco2: TppLabel;
    ppShape4: TppShape;
    ppLabel28: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel30: TppLabel;
    TotalMerc: TppDBCalc;
    ppLabel31: TppLabel;
    TotalIPI: TppDBCalc;
    ppLabel32: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel33: TppLabel;
    ppShape7: TppShape;
    ppLine18: TppLine;
    ppLine19: TppLine;
    iLogo: TppImage;
    TotalPed: TppVariable;
    ppLabel39: TppLabel;
    ppDBText30: TppDBText;
    StaticText12: TStaticText;
    DBEdit1: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cFiltroClick(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppSummaryBand2BeforeGenerate(Sender: TObject);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_Compra: TPedido_Compra;

implementation

{$R *.dfm}

uses frmDados, frmDMComercial, frmMenu_Principal, frmPedido_CompraItens;

procedure TPedido_Compra.bImprimirClick(Sender: TObject);
begin
      with Dados, dmComercial do begin
           tPedido.sql.clear;
           tPedido.sql.add('select Pedido = Case when isnull(Referencia_Cliente, '''') = '''' then CAST(Pedido as VARCHAR(15)) else Referencia_Cliente end');
           tPedido.sql.add('      ,Referencia_Cliente');
           tPedido.sql.add('      ,Data_Pedido');
           tPedido.sql.add('	    ,Feito_Por   = (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = PC.Usuario)');
           tPedido.sql.add('	    ,Solicitante = (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = PC.Solicitante)');
           tPedido.sql.add('	    ,Comprador   = (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = PC.Comprador)');
           tPedido.sql.add('	    ,Comprador_Email = (select Email from Cybersoft_Cadastros.dbo.Usuarios where Matricula = PC.Comprador)');
           tPedido.sql.add('	    ,Gerente     = (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = PC.Gerente)');
           tPedido.sql.add('	    ,Diretor     = (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = PC.Diretor)');
           tPedido.sql.add('	    ,Descricao');
           tPedido.sql.add('	    ,Condicao    = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = PC.Condicao_Pgto)');
           tPedido.sql.add('	    ,Parcelas');
           tPedido.sql.add('	    ,Obs_Pedido');
           tPedido.sql.add('	    ,Obs_Entrega');
           tPedido.sql.add('	    ,Fornecedor          = (select Nome from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_Contato  = (select Contato from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_CNPJCPF  = case when (select isnull(CNPJ, '''') from Fornecedores where Codigo = Fornecedor) <> '''' then');
           tPedido.sql.add('                               (select CNPJ from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('			              				 else');
           tPedido.sql.add('                               (select CPF from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('							               end');
           tPedido.sql.add('      ,Fornecedor_Endereco = (select ISNULL(Rua, '''')+'', ''+ISNULL(Rua_Numero, '''') from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_Bairro   = (select Bairro from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_CEP      = (select CEP from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_Cidade   = (select Municipio from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_Estado   = (select Nome from Cybersoft_Cadastros.dbo.Estados where Codigo = (select Estado from Fornecedores where Codigo = Fornecedor)) + (select '' (''+Estado+'')'' from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,Fornecedor_Telefone = (select isnull(Telefone1, '''') + case when isnull(Telefone2, '''') <> '''' then '' / ''+isnull(Telefone2, '''') else '''' end from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('	    ,FornecedorEmail     = (select Email from Fornecedores where Codigo = Fornecedor)');
           tPedido.sql.add('from PedidoCompra PC');
           tPedido.sql.add('where Pedido = :pPedido');
           tPedido.ParamByName('pPedido').AsInteger := PedidoCompra.FieldByName('Pedido').Asinteger;
           tPedido.open;

           tItens.sql.clear;
           tItens.sql.add('select Item');
           tItens.sql.add('      ,Descricao');
           tItens.sql.add('      ,Data_Entrega');
           tItens.sql.add('      ,Quantidade');
           tItens.sql.add('      ,Unidade');
           tItens.sql.add('      ,Valor_Unitario');
           tItens.sql.add('      ,Valor_Total = Valor_Unitario * Quantidade');
           tItens.sql.add('      ,Aliquota_IPI');
           tItens.sql.add('      ,Valor_IPI = (Valor_Unitario * Quantidade) * (Aliquota_IPI/100)');
           tItens.sql.add('      ,Aliquota_ICMS');
           if Empresas.FieldByName('Estado').AsString <> 'RO' then begin
              tItens.sql.add('      ,Valor_ICMS = (Valor_Unitario * Quantidade) * (Aliquota_ICMS/100)');
           end else begin
              tItens.sql.add('      ,Valor_ICMS = ((Valor_Unitario*Quantidade) + ((Valor_Unitario * Quantidade)*(isnull(Aliquota_IPI, 0)/100))) * (Aliquota_ICMS/100)' );
           end;
           tItens.sql.add('from pedidoCompraitens');
           tItens.sql.add('where Pedido = :pPedido');
           tItens.ParamByName('pPedido').AsInteger := PedidoCompra.FieldByName('Pedido').Asinteger;
           //tItens.sql.savetofile('c:\temp\Pedido_Compra.sql');
           titens.Open;

           lEndereco1.Caption := EmpresasRua.AsString + ', '+EmpresasRua_Numero.AsString+' '+EmpresasComplemento.AsString;
           lEndereco2.Caption := EmpresasBairro.AsString + ', CEP: '+FormatMaskText('#####-##;0', EmpresasCEP.AsString)+' - '+Municipios.fieldbyName('Nome').AsString+' ('+EmpresasEstado.AsString+')';
           lTelefones.Caption := FormatMaskText('(##) #####-####;0', Empresas.fieldbyName('Telefone1').AsString)+' / '+FormatMaskText('(##) #####-####;0', Empresas.fieldbyName('Telefone1').AsString);
           lCNPJ_IE.Caption   := 'CNPJ :'+FormatMaskText('##.###.###/####-##;0', Empresas.fieldbyName('CNPJ').AsString)+'    IE: '+ Empresas.fieldbyName('IE').AsString;
           lEmail.Caption     := Empresas.fieldbyName('Site').AsString;
      end;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;

      rPedido.Print;
      rPedido.Reset;
end;

procedure TPedido_Compra.bItensClick(Sender: TObject);
begin
     Pedido_CompraItens := TPedido_CompraItens.Create(self);
     Pedido_CompraItens.Caption := Caption;
     Pedido_CompraItens.showmodal;
end;

procedure TPedido_Compra.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_Compra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pedido_Compra.Release;
     Pedido_Compra := nil;
end;

procedure TPedido_Compra.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedido_Compra.FormShow(Sender: TObject);
begin
     with Dados, dmComercial do begin
          cFiltro.ItemIndex := 0;
          Filtra;

          PedidoCompraItens.sql.clear;
          PedidoCompraItens.sql.add('select * from PedidoCompraItens WHERE Pedido = :pPedido order by Item desc');
          PedidoCompraItens.ParamByName('pPedido').AsInteger := PedidoCompra.fieldbyname('Pedido').AsInteger;
          PedidoCompraItens.Open;

          Usuarios.sql.clear;
          Usuarios.sql.add('select * from Usuarios where Ativo = 1 order by Nome');
          Usuarios.Open;

          tComprador.sql.clear;
          tComprador.sql.add('select Matricula, Nome from Usuarios where Ativo = 1 and Comprador = 1 order by Nome');
          tComprador.Open;

          tGerente.sql.clear;
          tGerente.sql.add('select Matricula, Nome from Usuarios where Ativo = 1 and Gerente = 1 order by Nome');
          tGerente.Open;

          tDiretor.sql.clear;
          tDiretor.sql.add('select Matricula, Nome from Usuarios where Ativo = 1 and Diretor = 1 order by Nome');
          tDiretor.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Ativo = 1 ORDER BY Nome');
          Fornecedores.Open;

          ModalidadesPgto.SQL.Clear;
          ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento');
          ModalidadesPgto.Open;

          Empresas.sql.clear;
          Empresas.sql.add('select * from empresas where codigo = '+inttostr(Menu_Principal.mEmpresa));
          Empresas.open;

          Municipios.sql.clear;
          Municipios.sql.add('select * from municipios where codigo = :pCod');
          Municipios.ParamByName('pCod').AsString := Empresas.fieldbyname('Municipio_Codigo').asstring;
          Municipios.open;
     end;
end;

procedure TPedido_Compra.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with dmComercial do begin
          if Button = nbPost then begin
             if PedidoCompra.State = dsInsert then begin
                tTemp.sql.clear;
                tTemp.sql.add('select Registro = ISNULL(MAX(Registro), 0)+1');
                tTemp.sql.add('      ,Pedido   = ISNULL(MAX(Pedido)  , 0)+1');
                tTemp.sql.add('FROM PedidoCompra');
                tTemp.open;
                PedidoCompraRegistro.value := tTemp.FieldByName('Registro').asinteger;
                PedidoCompraPedido.value   := tTemp.FieldByName('Pedido').asinteger;
                PedidoCompraFechado.value  := false;
             end;
          end;
     end;
end;

procedure TPedido_Compra.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
      with Dados, dmComercial do begin
           if Button = nbInsert then Begin
              PedidoCompraEmpresa.Value     := Menu_Principal.mEmpresa;
              PedidoCompraUsuario.AsString  := Menu_Principal.mUsuarioCodigo;
              PedidoCompraData_Pedido.Value := Date;
              PedidoCompraObs_Pedido.Value  := 'HORÁRIO DE RECEBIMENTO DE 2ª À 6ª FEIRA:DAS 8:00 ÀS 15:00HS '+
                                               'IMPORTANTE: Entregas com mais de 10 dias de atrasos da data '+
                                               'acordada no pedido, ou com quantidade acima dos 10% '+
                                               'permitido, deverão ser entregue apenas com autorização prévia,'+
                                               'Envios sem autorização poderão ser recusadas.';

           end;

           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              Panel2.Enabled := True;
              bitens.Enabled := false;
              cData.SetFocus;
           end;

           if (Button = nbPost) or (Button = nbCancel) then Begin
              Panel2.Enabled := False;
              bitens.Enabled := true;
           end;
      end;
end;

procedure TPedido_Compra.ppSummaryBand2BeforeGenerate(Sender: TObject);
begin
     TotalPed.value := TotalMerc.Value + TotalIPI.value;
end;

procedure TPedido_Compra.cFiltroClick(Sender: TObject);
begin
     Filtra;
end;

procedure TPedido_Compra.Filtra;
begin
      with dmComercial do begin
           PedidoCompra.sql.clear;
           PedidoCompra.sql.add('select *');
           PedidoCompra.sql.add('from PedidoCompra');
           PedidoCompra.sql.add('where Registro is not null');
           if cFiltro.ItemIndex = 0 then PedidoCompra.sql.add('and ISNULL(Fechado  , 0) = 0 and ISNULL(Cancelado, 0) = 0');
           if cFiltro.ItemIndex = 1 then PedidoCompra.sql.add('and ISNULL(Fechado  , 0) = 1 and ISNULL(Cancelado, 0) = 0');
           if cFiltro.ItemIndex = 2 then PedidoCompra.sql.add('and ISNULL(Cancelado, 0) = 1');
           PedidoCompra.sql.add('order by Data_Pedido desc');
           PedidoCompra.Open;
      end;
end;


end.
