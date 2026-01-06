unit frmImpressao_ProcessosOP_Armazem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDB, Data.DB, MemDS, DBAccess, MSAccess, ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppStrtch, ppMemo, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, RxToolEdit, Vcl.Mask, RxCurrEdit, Vcl.DBCtrls, RxLookup,
  Vcl.ExtCtrls, RxCtrls, Funcoes;

type
  TImpressao_ProcessosOP_Armazem = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    Panel2: TPanel;
    StaticText3: TStaticText;
    cProduto: TDBLookupComboBox;
    cCodigo: TCurrencyEdit;
    StaticText6: TStaticText;
    cNavio: TDBLookupComboBox;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cExcel: TCheckBox;
    rArmazem: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppLabel7: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText22: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pEmpresas: TppDBPipeline;
    tTmp: TMSQuery;
    ppGroup1: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppDBText6: TppDBText;
    SaldoEmp: TppVariable;
    SaldoArm: TppVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLabel17: TppLabel;
    ppDBText10: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppLabel18: TppLabel;
    SaldoEmpIni: TppVariable;
    SaldoArmIni: TppVariable;
    lPeriodo: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cProdutoClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mSaldoEmpIni
   ,mSaldoArmIni: real; 
  end;

var
  Impressao_ProcessosOP_Armazem: TImpressao_ProcessosOP_Armazem;

implementation

{$R *.dfm}

uses frmDados;

procedure TImpressao_ProcessosOP_Armazem.bImprimirClick(Sender: TObject);
begin
      if cCodigo.AsInteger <= 0 then begin
         messagedlg('Informe um produtos para gerar o relatório!', mtInformation, [mbok], 0);
         cCodigo.SetFocus;
         abort;
      end;
      with Dados do begin
           Empresas.open;    
           if FileExists(Empresas.fieldbyname('Logo').AsString) then begin
              iLogo.Picture.LoadFromFile(Empresas.fieldbyname('Logo').AsString);
           end;
      end;
      with tItens do begin
           sql.Clear;
           sql.Add('select Armazem = (select Armazem from NotasFiscais nf where nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data)');
           sql.Add('      ,Armazem_Nome = (select Nome from Fornecedores fr where fr.Codigo = (select Armazem from NotasFiscais nf where nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data))');
           sql.Add('      ,Nota');
           sql.Add('      ,Data');
           sql.Add('      ,SE = iif(Saida_Entrada = 0, ''ENT'', ''SAI'')');
           sql.Add('      ,Emissao = ''PROPRIA'' ');
           sql.Add('      ,Codigo_Mercadoria');
           sql.Add('      ,DI');
           sql.Add('      ,UM = Unidade_Medida');
           sql.Add('      ,Tipo_Nota = (select Descricao from TipoNota where Codigo = Tipo_Nota)');
           sql.Add('      ,Finalidade_Cod = (select Finalidade_Mercadoria from TipoNota tn where tn.Codigo = ni.Tipo_Nota)');
           sql.Add('      ,Finalidade = case (select Finalidade_Mercadoria from TipoNota tn where tn.Codigo = ni.Tipo_Nota) ');
           sql.Add('                         when 0 then ''REVENDA'' ');
           sql.Add('                         when 1 then ''CONSUMO'' ');
           sql.Add('                         when 2 then ''DEVOLUÇÃO'' ');
           sql.Add('                         when 3 then ''EXPORTAÇÃO'' ');
           sql.Add('                         when 4 then ''PRÓPRIA EM PODER DE TERCEIROS'' ');
           sql.Add('                         when 5 then ''TERCEIROS EM PODER DA EMPRESA'' ');
           sql.Add('                         when 6 then ''IMOBILIZADO'' ');
           sql.Add('                         when 7 then ''OUTROS'' ');
           sql.Add('                    end');
           sql.Add('      ,Qtde_Entrada  = iif(Saida_Entrada = 0, Quantidade, 0)');
           sql.Add('      ,Qtde_Saida    = iif(Saida_Entrada = 1, Quantidade, 0)');
           sql.Add('      ,Estoque = iif((select Finalidade_Mercadoria from TipoNota tn where tn.Codigo = ni.Tipo_Nota) <> 4, ''EMPRESA'', ''ARMAZEM'')');
           sql.Add('into #temp');
           sql.Add('from NotasItens ni');
           sql.Add('where Data between :pDataIni and :pDataFim');
           sql.Add('and Cancelada <> 1');
           sql.Add('and NFe_Denegada <> 1');
           sql.add('and (select isnull(Armazem, 0) from NotasFiscais nf where nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data) > 0');
           sql.add('and Codigo_Mercadoria = :pProduto');
           sql.Add('union all');
           sql.Add('select Armazem = (select Armazem from NotasTerceiros nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao)');
           sql.Add('      ,Armazem_Nome = (select Nome from Fornecedores fr where fr.Codigo = (select Armazem from NotasTerceiros nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao))');
           sql.Add('      ,Nota');
           sql.Add('      ,Data = Data_Entrada');
           sql.Add('      ,SE = ''ENT'' ');
           sql.Add('      ,Emissao = ''TERCEIROS'' ');
           sql.Add('      ,Codigo_Mercadoria');
           sql.Add('      ,DI');
           sql.Add('      ,UM = Unidade_Medida');
           sql.Add('      ,Tipo_Nota = (select Descricao from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
           sql.add('      ,Finalidade_Cod = (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
           sql.Add('      ,Finalidade = case (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
           sql.Add('                         when 0 then ''REVENDA'' ');
           sql.Add('                         when 1 then ''CONSUMO'' ');
           sql.Add('                         when 2 then ''DEVOLUÇÃO'' ');
           sql.Add('                         when 3 then ''EXPORTAÇÃO'' ');
           sql.Add('                         when 4 then ''PRÓPRIA EM PODER DE TERCEIROS'' ');
           sql.Add('                         when 5 then ''TERCEIROS EM PODER DA EMPRESA'' ');
           sql.Add('                         when 6 then ''IMOBILIZADO'' ');
           sql.Add('                         when 7 then ''OUTROS'' ');
           sql.Add('                    end');
           sql.Add('      ,Qtde_Entrada  = Quantidade');
           sql.Add('      ,Qtde_Saida    = 0');
           sql.Add('      ,Estoque = iif((select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal) in(0, 2, 4), ''EMPRESA'', ''ARMAZEM'')');
           sql.Add('from NotasTerceirosItens ni');
           sql.Add('where Data_Entrada between :pDataIni and :pDataFim');
           sql.Add('and (select isnull(Armazem, 0) from NotasTerceiros nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao) > 0');
           sql.add('and Codigo_Mercadoria = :pProduto');
           sql.Add('select * from #temp order by Armazem, DI, Data, SE,  Nota');
           sql.Add('drop table #temp');
           parambyname('pDataIni').Value := cDataIni.Date;
           parambyname('pDataFim').Value := cDataFim.Date;
           parambyname('pProduto').Value := cCodigo.AsInteger;
           //sql.SaveToFile('c:\temp\Estoque_Armazem.sql.');
           open;
      end;
      
      with rArmazem do begin
           lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text +' | Produto: '+cProduto.text;
           Print;
           reset;
      end;
end;

procedure TImpressao_ProcessosOP_Armazem.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ProcessosOP_Armazem.cCodigoChange(Sender: TObject);
begin
     //Dados.Produtos.locate('Codigo', cCodigo.AsInteger, [loCaseInsensitive]);
     cProduto.KeyValue := cCodigo.AsInteger;
end;

procedure TImpressao_ProcessosOP_Armazem.cProdutoClick(Sender: TObject);
begin
     cCodigo.Value := Dados.Produtos.FieldByName('Codigo').AsInteger;
end;

procedure TImpressao_ProcessosOP_Armazem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Impressao_ProcessosOP_Armazem.Release;
     Impressao_ProcessosOP_Armazem := nil;
end;

procedure TImpressao_ProcessosOP_Armazem.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Armazem.FormShow(Sender: TObject);
begin
     with Dados do begin
          with Produtos do begin
               sql.Clear;
               sql.Add('select * from produtos order by Descricao_Reduzida');
               open;
          end;
     end;
end;

procedure TImpressao_ProcessosOP_Armazem.ppGroupHeaderBand3BeforePrint(Sender: TObject);
begin
      with tTmp do begin
           sql.Clear; 
           sql.Add('select Saldo_Empresa = (select isnull(sum(iif(Saida_Entrada = 0, Quantidade, Quantidade * -1)), 0)');
           sql.Add('                        from NotasItens ni');
           sql.Add('                        where Data < :pDataIni');
           sql.Add('                        and Codigo_Mercadoria = :pProduto');
           sql.Add('                        and Cancelada <> 1');
           sql.Add('                        and NFe_Denegada <> 1');
           sql.add('                        and (select Armazem from NotasFiscais nf where nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data) = :pArmazem) + ');
           sql.Add('                       (select isnull(sum(Quantidade), 0)');
           sql.Add('                        from NotasTerceirosItens ni');
           sql.Add('                        where Data_Entrada < :pDataIni');
           sql.Add('                        and Codigo_Mercadoria = :pProduto');
           sql.add('                        and (select Armazem from NotasTerceiros nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao) = :pArmazem)');
           parambyname('pDataIni').Value := cDataIni.Date;
           parambyname('pArmazem').Value := tItens.FieldByName('Armazem').AsInteger;
           parambyname('pProduto').Value := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
           open;
           SaldoEmpIni.value := fieldbyname('Saldo_Empresa').AsFloat;
           SaldoEmp.value    := fieldbyname('Saldo_Empresa').AsFloat;
           sql.Clear; 
           sql.Add('select Saldo_Armazem = (select isnull(sum(Quantidade), 0)');
           sql.Add('                        from NotasItens ni');
           sql.Add('                        where Data < :pDataIni');
           sql.Add('                        and Codigo_Mercadoria = :pProduto');
           sql.Add('                        and Saida_Entrada = 1');
           sql.Add('                        and Cancelada <> 1');
           sql.Add('                        and NFe_Denegada <> 1');
           sql.Add('                        and (select Finalidade_Mercadoria from TipoNota tn where tn.Codigo = ni.Tipo_Nota) = 4');
           sql.add('                        and (select Armazem from NotasFiscais nf where nf.Numero = ni.Nota and nf.Data_Emissao = ni.Data) = :pArmazem) -');
           sql.Add('                       (select isnull(sum(Quantidade), 0)');
           sql.Add('                        from NotasTerceirosItens ni');
           sql.Add('                        where Data_Entrada < :pDataIni');
           sql.Add('                        and Codigo_Mercadoria = :pProduto');
           sql.Add('                        and (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = Referencia_Fiscal) = 4');
           sql.add('                        and (select Armazem from NotasTerceiros nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao) = :pArmazem)');
           parambyname('pDataIni').Value := cDataIni.Date;
           parambyname('pArmazem').Value := tItens.FieldByName('Armazem').AsInteger;
           parambyname('pProduto').Value := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
           open;
           SaldoArmIni.value := fieldbyname('Saldo_Armazem').AsFloat;
           SaldoArm.Value    := fieldbyname('Saldo_Armazem').AsFloat;
      end;
end;

procedure TImpressao_ProcessosOP_Armazem.ppDetailBand1BeforePrint(Sender: TObject);
begin
     with tItens do begin
          SaldoEmp.value := SaldoEmp.value + FieldByName('Qtde_Entrada').AsFloat - FieldByName('Qtde_Saida').AsFloat;
          if (FieldByName('Emissao').asstring = 'PROPRIA') and (FieldByName('SE').asstring = 'SAI') and (FieldByName('Finalidade_Cod').asinteger = 4) then begin
             SaldoArm.value := SaldoArm.value + FieldByName('Qtde_Entrada').AsFloat - FieldByName('Qtde_Saida').AsFloat;
          end;
          if (FieldByName('Emissao').asstring = 'TERCEIROS') and (FieldByName('Finalidade_Cod').asinteger = 4) then begin
             SaldoArm.value := SaldoArm.value + FieldByName('Qtde_Entrada').AsFloat - FieldByName('Qtde_Saida').AsFloat;
          end;
     end;
end;


end.
