unit frmImpressao_ExportacaoMemorandoOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, RXDBCtrl, DBCtrls, MaskUtils,
  DB, DBAccess, MSAccess, FUNCOES, Vcl.ComCtrls, mmSystem, ppProd, ppClass, ppReport, ppCtrls, ppDBPipe, ppPrnabl, ppBands, ppParameter,
  ppSubRpt, ppVar, ppMemo, ppTypes, Grids, system.UITypes, DBGrids, Mask, RxToolEdit, ppDesignLayer, ppModule, raCodMod, ppStrtch, ppCache, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_ExportacaoMemorandoOP = class(TForm)
    StaticText1: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    cDataEmissao: TDateEdit;
    Grade: TRxDBGrid;
    tChecaData: TMSQuery;
    tChecaDataData_Emissao: TDateTimeField;
    bVisualizar: TButton;
    pMemo: TppDBPipeline;
    tMemorando: TMSQuery;
    dstMemorando: TDataSource;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pItens: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tEntradas: TMSQuery;
    dstEntradas: TDataSource;
    pEntradas: TppDBPipeline;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    rMemorando: TppReport;
    ppParameterList2: TppParameterList;
    tTemp: TMSQuery;
    Transportadores: TMSQuery;
    TransportadoresCodigo: TIntegerField;
    TransportadoresNome: TStringField;
    TransportadoresRua: TStringField;
    TransportadoresRua_Numero: TStringField;
    TransportadoresBairro: TStringField;
    TransportadoresMunicipio: TStringField;
    TransportadoresEstado: TStringField;
    TransportadoresInscricao_Estadual: TStringField;
    TransportadoresCNPJ: TStringField;
    TransportadoresPais: TStringField;
    tSaidas: TMSQuery;
    dstSaidas: TDataSource;
    pSaidas: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape2: TppShape;
    ppDBText3: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    lEndereco: TppLabel;
    iLogo: TppImage;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText27: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppDBText47: TppDBText;
    ppLine2: TppLine;
    lVia: TppLabel;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    lEndereco2: TppLabel;
    ppLabel14: TppLabel;
    ppDBText48: TppDBText;
    ppLabel15: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel16: TppLabel;
    ppDBText51: TppDBText;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppShape5: TppShape;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppDBText53: TppDBText;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    ppLine9: TppLine;
    ppDBMemo1: TppDBMemo;
    ppLabel24: TppLabel;
    ppDBText52: TppDBText;
    ppLine15: TppLine;
    ppLabel25: TppLabel;
    ppLine16: TppLine;
    ppDBText57: TppDBText;
    ppShape7: TppShape;
    ppLabel26: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppShape11: TppShape;
    ppShape14: TppShape;
    ppLabel11: TppLabel;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine42: TppLine;
    ppLine44: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine46: TppLine;
    ppLabel27: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppDetailBand4: TppDetailBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppDBText58: TppDBText;
    ppLine20: TppLine;
    ppDBText59: TppDBText;
    ppLine21: TppLine;
    ppDBText60: TppDBText;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBMemo2: TppDBMemo;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppDBText61: TppDBText;
    ppLabel34: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel35: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel36: TppLabel;
    ppLine30: TppLine;
    ppDBText64: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppShape15: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine1: TppLine;
    ppLine14: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine31: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppLine47: TppLine;
    ppDBText11: TppDBText;
    ppLine48: TppLine;
    ppDBText12: TppDBText;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppLine51: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine41: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape13: TppShape;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLabel4: TppLabel;
    ppLabel32: TppLabel;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppLine40: TppLine;
    ppLine32: TppLine;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure bVisualizarClick(Sender: TObject);
    procedure ImprimirMemoGraf(pTipo: Integer);
    procedure rMemorandoStartPage(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo      : TextFile;
    mNomeArq     : String;
    mPagina      : Integer;
    mValor       : String;
    mTipo        : String;
    mMascara     : String;
    mMemorando   : Integer;
    mLinha       : Integer;
    mDescricao   : String;
    mQtdeLinha   : Integer;
    mPosDesc     : Integer;
    mMemoIni     : Integer;
  end;

var
  Impressao_ExportacaoMemorandoOP: TImpressao_ExportacaoMemorandoOP;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ExportacaoMemorandoOP.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados, dmFiscal do begin
          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Tipo = :pTipo) AND (Memorando_Exportacao IS NULL) ORDER BY Processo');
          ProcessosDOC.ParamByName('pTipo').AsString := 'EXPORTAÇÃO';
          ProcessosDOC.FieldByName('Numero_Declaracao').EditMask := '##########/#;0; ';
          ProcessosDOC.Open;
     End;

     Screen.Cursor := crDefault;
end;

procedure TImpressao_ExportacaoMemorandoOP.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ExportacaoMemorandoOP.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados,nil,nil,nil);
     LimpaMemoria;
     Impressao_ExportacaoMemorandoOP.Release;
     Impressao_ExportacaoMemorandoOP := nil;
end;

procedure TImpressao_ExportacaoMemorandoOP.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ExportacaoMemorandoOP.bVisualizarClick(Sender: TObject);
begin
     ImprimirMemoGraf(1);
end;

procedure TImpressao_ExportacaoMemorandoOP.bGerarClick(Sender: TObject);
begin
     ImprimirMemoGraf(0);
end;


procedure TImpressao_ExportacaoMemorandoOP.ImprimirMemoGraf(pTipo: Integer);
begin
      Screen.Cursor := crSQLWait;

      // Gerando o memorando de exportação selecionado.
      With Dados, dmFiscal do begin
           tMemorando.SQL.Clear;
           tMemorando.SQL.Add('SELECT Numero                 = (SELECT ISNULL(Memorando_Exportacao, 0)+1 FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('      ,Data_Emissao           = GETDATE()');
           tMemorando.SQL.Add('	     ,PD.Processo');
           tMemorando.SQL.Add('	     ,NFSaida_Numero         = 0');
           tMemorando.SQL.Add('	     ,DE_Numero              = Numero_Declaracao');
           tMemorando.SQL.Add('	     ,DE_Data                = Data_RegistroDeclaracao');
           tMemorando.SQL.Add('	     ,RE_Numero');
           tMemorando.SQL.Add('	     ,RE_Data                = PD.RE_DataAverbacao');
           tMemorando.SQL.Add('	     ,CE_Numero              = PD.CT_Numero');
           tMemorando.SQL.Add('	     ,CE_Data                = PD.CT_Data');
           tMemorando.SQL.Add('	     ,UF_Fabricante          = (SELECT Estado FROM Fornecedores FN WHERE FN.Codigo = PD.Fornecedor)');
           tMemorando.SQL.Add('	     ,Pais_Destino           = PD.Pais');
           tMemorando.SQL.Add('	     ,Pais_DestinoNome       = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = Pd.Pais)');
           tMemorando.SQL.Add('	     ,Fornecedor_Codigo      = PD.Fornecedor');
           tMemorando.SQL.Add('	     ,Fornecedor_Nome        = (SELECT Nome FROM Fornecedores FN WHERE FN.Codigo = PD.Fornecedor)');
           tMemorando.SQL.Add('      ,Fornecedor_Endereco    = (SELECT Rua+'', Nº ''+Rua_Numero+'' - ''+Municipio+''(''+Estado+'')'' FROM Fornecedores FN WHERE FN.Codigo = PD.Fornecedor)');
           tMemorando.SQL.Add('      ,Fornecedor_Estado      = (SELECT Estado FROM Fornecedores FN WHERE FN.Codigo = PD.Fornecedor)');
           tMemorando.SQL.Add('      ,Fornecedor_Inscricao   = (SELECT Inscricao_Estadual FROM Fornecedores FN WHERE FN.Codigo = PD.Fornecedor)');
           tMemorando.SQL.Add('      ,Fornecedor_CNPJ        = (SELECT CNPJ FROM Fornecedores FN WHERE FN.Codigo = PD.Fornecedor)');
           tMemorando.SQL.Add('      ,CT_Numero              = PD.CT_Numero');
           tMemorando.SQL.Add('      ,CT_Modelo              = PD.CT_Modelo');
           tMemorando.SQL.Add('      ,CT_Serie               = CT_Serie');
           tMemorando.SQL.Add('      ,CT_Data                = CT_Data');
           tMemorando.SQL.Add('      ,Responsavel            = (SELECT Responsavel FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('	     ,Temp                   = 1');
           tMemorando.SQL.Add('	     ,Remetente_Codigo       = PD.Cliente');
           tMemorando.SQL.Add('      ,Remetente_Nome         = (SELECT Nome FROM Clientes CL WHERE CL.Codigo = PD.Cliente)');
           tMemorando.SQL.Add('      ,Remetente_Endereco     = (SELECT Rua+'', ''+Rua_Numero+'' - ''+Municipio+ ''(''+Estado+'')'' FROM Clientes CL WHERE CL.Codigo = PD.Cliente)');
           tMemorando.SQL.Add('      ,Remetente_Estado       = (SELECT Estado FROM Clientes CL WHERE CL.Codigo = PD.Cliente)');
           tMemorando.SQL.Add('      ,Remetente_Inscricao    = (SELECT Inscricao_Estadual FROM Clientes CL WHERE CL.Codigo = PD.Cliente)');
           tMemorando.SQL.Add('      ,Remetente_CNPJ         = (SELECT CNPJ FROM Clientes CL WHERE CL.Codigo = PD.Cliente)');
           tMemorando.SQL.Add('      ,Exportador_Nome        = (SELECT Razao_Social FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('      ,Exportador_Endereco    = (SELECT Rua FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('      ,Exportador_Inscricao   = (SELECT IE FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('      ,Exportador_CNPJ        = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('      ,Exportador_Endereco    = (SELECT Rua+'', ''+CAST(Rua_Numero AS varchar(15))+ '' - ''+');
           tMemorando.SQL.Add('	                                      (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)) +');
           tMemorando.SQL.Add('	                                      (SELECT Nome FROM Cybersoft_Cadastros.dbo.Estados WHERE Codigo = (SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa))');
           tMemorando.SQL.Add('                                FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tMemorando.SQL.Add('FROM  ProcessosDocumentos PD');
           tMemorando.SQL.Add('WHERE Processo = '+QuotedStr(ProcessosDOCProcesso.AsString));
           tMemorando.SQL.Add('AND   Tipo = ''EXPORTAÇÃO'' ');
           tMemorando.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           //emorando.SQL.SavetoFile('c:\temp\Impressao_Memorando_Exportacao.sql');
           tMemorando.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           if pTipo = 0 then begin
              tChecaData.Close;
              tChecaData.SQL.Clear;
              tChecaData.SQL.Add('SELECT MAX(Data_Emissao) AS Data_Emissao FROM MemorandoExportacao');
              tChecaData.Open;

              if pTipo = 0 then begin
                 if cDataEmissao.Date < tChecaDataData_Emissao.AsDateTime then begin
                    if Dados.ConfiguracaoAtivar_Som.Value = True then SndPlaySound('Erro.wav',SND_ASYNC);
                    ShowMessage('Atenção!'+#13+'Você não pode gerar Memorandos de Exportação com data inferior ao do último emitido.'+#13+'Data do último Memorando de Exportação emitido:'+tChecaDataData_Emissao.AsString);
                    Screen.Cursor := crDefault;
                    Abort;
                 end;

                 if MessageDlg('Atenção!'+#13+'Isso irá gerar o memorando de exportação e depois irá imprimi-lo'+#13+#13+'Deseja realmente imprimir o memorando de exportação do processo '+FormatMaskText('##########/#;0; ',Dados.ProcessosDOCNumero_Declaracao.Value) + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                    Screen.Cursor := crDefault;
                    Abort;
                 end;
              end;

              // Gerando o memorando de exportação selecionado.
              with Dados, dmFiscal do begin
                   Paises.SQL.Clear;
                   Paises.SQL.Add('SELECT * FROM Paises WHERE Codigo = '+ProcessosDOCPais.AsString);
                   Paises.Open;

                   Configuracao.Open;

                   Clientes.Locate('Codigo', ProcessosDOC.FieldByName('Cliente').AsInteger,[loCaseInsensitive]);
                   Fornecedores.Locate('Codigo', ProcessosDOC.FieldByName('Fornecedor').AsInteger,[loCaseInsensitive]);

                   mPagina := 1;

                   // Apaga o memorando em caso de recriação de uma DE.
                   tTemp.SQL.Clear;
                   tTemp.SQL.Add('DELETE FROM MemorandoExportacao WHERE Processo = :pProcesso');
                   tTemp.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
                   tTemp.Execute;

                   // Grava o novo memorando gerado na tabela.
                   mMemorando := EmpresasMemorando_Exportacao.Value+1;

                   Memorando.Open;
                   Memorando.Append;
                             MemorandoNumero.Value                  := mMemorando;
                             MemorandoData_Emissao.Value            := cDataEmissao.Date;
                             MemorandoProcesso.Value                := ProcessosDOCProcesso.Value;
                             MemorandoDE_Numero.Value               := ProcessosDOCNumero_Declaracao.Value;
                             MemorandoDE_Data.Value                 := ProcessosDOCData_RegistroDeclaracao.Value;
                             MemorandoRE_Numero.Value               := ProcessosDOCRE_Numero.Value;
                             MemorandoRE_Data.Value                 := ProcessosDOCRE_DataAverbacao.Value;
                             MemorandoCE_Numero.Value               := ProcessosDOCNumero_DOC.Value;
                             MemorandoCE_Data.Value                 := ProcessosDOCData_DOC.Value;
                             MemorandoUF_Fabricante.Value           := FornecedoresEstado.Value;
                             MemorandoPais_Destino.Value            := ProcessosDOCPais.Value;
                             MemorandoPais_DestinoNome.Value        := PaisesNome.Value;

                             MemorandoFornecedor_Codigo.Value       := FornecedoresCodigo.Value;
                             MemorandoFornecedor_Nome.Value         := FornecedoresNome.Value;
                             MemorandoFornecedor_Endereco.Value     := FornecedoresRua.Value;
                             if Trim(FornecedoresRua_Numero.Value) <> '' then
                                MemorandoFornecedor_Endereco.Value := MemorandoFornecedor_Endereco.Value + ', Nº '+FornecedoresRua_Numero.Value;
                             if Trim(FornecedoresMunicipio.Value) <> '' then
                                MemorandoFornecedor_Endereco.Value := MemorandoFornecedor_Endereco.Value + ' - '+FornecedoresMunicipio.Value;
                             if Trim(FornecedoresEstado.Value) <> '' then
                                MemorandoFornecedor_Endereco.Value := MemorandoFornecedor_Endereco.Value + '('+FornecedoresEstado.Value+')';

                             MemorandoFornecedor_Estado.Value       := FornecedoresEstado.Value;
                             MemorandoFornecedor_Inscricao.Value    := FornecedoresInscricao_Estadual.Value;
                             MemorandoFornecedor_CNPJ.Value         := FornecedoresCNPJ.Value;
                             
                             MemorandoCT_Numero.Value               := ProcessosDOCCT_Numero.Value;
                             MemorandoCT_Modelo.Value               := ProcessosDOCCT_Modelo.Value;
                             MemorandoCT_Serie.Value                := ProcessosDOCCT_Serie.Value;
                             MemorandoCT_Data.Value                 := ProcessosDOCCT_Data.Value;
                             MemorandoTransportador_Codigo.Value    := TransportadoresCodigo.Value;
                             MemorandoTransportador_Nome.Value      := TransportadoresNome.Value;
                             if TransportadoresCodigo.AsInteger > 0 then begin
                                MemorandoTransportador_Endereco.Value  := TransportadoresRua.Value+', '+TransportadoresRua_Numero.Value+' - '+TransportadoresMunicipio.Value + '('+TransportadoresEstado.Value+')';
                             end;

                             MemorandoTransportador_Inscricao.Value := TransportadoresInscricao_Estadual.Value;
                             MemorandoTransportador_CNPJ.Value      := TransportadoresCNPJ.Value;
                             MemorandoResponsavel.Value             := EmpresasResponsavel.Value;
                             MemorandoTemp.Value                    := pTipo = 1;
                             MemorandoRemetente_Codigo.Value        := ClientesCodigo.Value;
                             MemorandoRemetente_Nome.Value          := ClientesNome.Value;
                             MemorandoRemetente_Endereco.Value      := ClientesRua.Value+', '+ClientesRua_Numero.Value+' - '+ClientesMunicipio.Value + '('+ClientesEstado.Value+')';
                             MemorandoRemetente_Estado.Value        := ClientesEstado.Value;
                             MemorandoRemetente_Inscricao.Value     := ClientesInscricao_Estadual.Value;
                             MemorandoRemetente_CNPJ.Value          := ClientesCNPJ.Value;
                             MemorandoExportador_Nome.Value         := EmpresasRazao_Social.Value;
                             MemorandoExportador_Endereco.Value     := EmpresasRua.Value;
                             MemorandoExportador_Inscricao.Value    := EmpresasIE.Value;
                             MemorandoExportador_CNPJ.Value         := EmpresasCNPJ.Value;
                             if Trim(EmpresasRua_Numero.AsString) <> '' then
                                MemorandoExportador_Endereco.Value := MemorandoExportador_Endereco.Value + ', '+EmpresasRua_Numero.AsString;
                             if Trim(EmpresasMunicipio_Codigo.AsString) <> '' then begin
                                Municipios.SQL.Clear;
                                Municipios.SQL.Add('SELECT * FROM Municipios WHERE Codigo = '+EmpresasMunicipio_Codigo.AsString);
                                Municipios.Open;
                                MemorandoExportador_Endereco.Value := MemorandoExportador_Endereco.Value + ' - '+MunicipiosNome.Value;
                             end;
                             If Trim(EmpresasEstado.Value) <> '' then
                                MemorandoExportador_Endereco.Value := MemorandoExportador_Endereco.Value + '('+EmpresasEstado.Value+')';
                   Memorando.Post;

                   // Registro do ultimo memorando gerado, caso seja escolhido impressão e não visualizar.
                   Empresas.Edit;
                            EmpresasMemorando_Exportacao.Value := mMemorando;
                   Empresas.Post;

                   ProcessosDOC.Edit;
                                ProcessosDOCMemorando_Exportacao.Value := mMemorando;
                   ProcessosDOC.Post;
              end;
           end;

           tSaidas.SQL.Clear;
           tSaidas.SQL.Add('SELECT Numero');
           tSaidas.SQL.Add('      ,Data_Emissao');
           tSaidas.SQL.Add('      ,NFE_cNF');
           tSaidas.SQL.Add('FROM   NotasFiscais');
           tSaidas.SQL.Add('WHERE  Processo = :pProcesso');
           tSaidas.SQL.Add('AND    (SELECT Movimenta_Estoque FROM TipoNota WHERE Codigo = Tipo_Nota) = 1');
           tSaidas.SQL.Add('AND    ISNULL(Cancelada, 0) = 0');
           tSaidas.SQL.Add('AND    ISNULL(NFe_Denegada, 0) = 0');
           tSaidas.ParamByName('pProcesso').AsString := tMemorando.FieldByName('Processo').AsString;
           tSaidas.Open;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Quantidade,');
           tItens.SQL.Add('       NCM,');
           tItens.SQL.Add('       Descricao_Mercadoria,');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       CAST(Valor_Unitario AS DECIMAL (14,2)) AS Valor_Unitario,');
           tItens.SQL.Add('       CAST(ROUND(Valor_Unitario, 2) * Quantidade AS DECIMAL(14,4)) AS Valor_Total');
           tItens.SQL.Add('FROM   NotasItens');
           tItens.SQL.Add('WHERE  Processo = :pProcesso');
           tItens.SQL.Add('AND    Movimenta_Estoque = 1');
           tItens.SQL.Add('AND    ISNULL(Cancelada, 0) = 0');
           tItens.SQL.Add('AND    ISNULL(NFe_Denegada, 0) = 0');
           tItens.ParamByName('pProcesso').AsString := tMemorando.FieldByName('Processo').AsString;
           tItens.Open;

           tEntradas.SQL.Clear;
           tEntradas.SQL.Add('SELECT Nota');
           tEntradas.SQL.Add('      ,Modelo');
           tEntradas.SQL.Add('      ,Serie');
           tEntradas.SQL.Add('      ,Data_Emissao');
           tEntradas.SQL.Add('      ,Nfe_cNF');
           tEntradas.SQL.Add('FROM  NotasTerceiros');
           tEntradas.SQL.Add('WHERE Processo = :pProcesso AND (SELECT Movimenta_Estoque FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) = 1');
           tEntradas.SQL.Add('ORDER BY Nota');
           tEntradas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           //tEntradas.SQL.SaveToFile('c:\temp\Memorando_Expotacao_Entradas.sql');
           tEntradas.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = '+EmpresasMunicipio_Codigo.AsString);
           Municipios.Open;

           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           lEndereco.Caption  := Trim(Dados.Empresas.FieldByName('Rua').AsString)+', Nº '+EmpresasRua_Numero.AsString+' '+EmpresasComplemento.AsString + ' - '+EmpresasBairro.AsString + '   '+MunicipiosNome.AsString+'('+EmpresasEstado.AsString+')'+'  -  CEP: '+FormatMaskText('99999-999;0',EmpresasCEP.AsString);
           lEndereco2.Caption := lEndereco.Caption;

           if not DirectoryExists(ConfiguracaoPasta_NFE.AsString+'\Memorandos Exportacao') then ForceDirectories(ConfiguracaoPasta_NFE.AsString+'\Memorandos Exportacao');

           // 1ª VIA - REMETENTE.
           rMemorando.AllowPrintToFile := True;
           rMemorando.DeviceType       := dtPDF;
           rMemorando.ShowPrintDialog  := False;

           if pTipo = 1 then
              rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_1ª Via_Pre.pdf'
           else
              rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_1ª Via.pdf';

           lVia.Caption := '1ª VIA - REMETENTE';
           rMemorando.Print;
           rMemorando.Reset;

           // 2ª VIA - ARQUIVO.
           if pTipo = 1 then
              rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_2ª Via_Pre.pdf'
           else
              rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_2ª Via.pdf';

           lVia.Caption := '2ª VIA - ARQUIVO';
           rMemorando.Print;
           rMemorando.Reset;

           // 3ª VIA - FISCO.
           if pTipo = 1 then
              rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_3ª Via_Pre.pdf'
           else
              rMemorando.TextFileName := ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_3ª Via.pdf';

           lVia.Caption := '3ª VIA - FISCO';
           rMemorando.Print;
           rMemorando.Reset;
      End;
      Screen.Cursor := crDefault;

      Messagedlg('Memorando de exportação gerado com sucesso!', mtInformation, [mbOK], 0);

      if pTipo = 1 then begin
         If FileExists(Dados.ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_1ª Via_Pre.pdf') then
            DeleteFile(Dados.ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_1ª Via_Pre.pdf');
         If FileExists(Dados.ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_2ª Via_Pre.pdf') then
            DeleteFile(Dados.ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_2ª Via_Pre.pdf');
         If FileExists(Dados.ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_3ª Via_Pre.pdf') then
            DeleteFile(Dados.ConfiguracaoPasta_NFE.AsString+ '\Memorandos Exportacao\Memorando_Exportacao_'+tMemorando.FieldByName('DE_Numero').Asstring+'_'+tMemorando.FieldByName('Numero').AsString+'_3ª Via_Pre.pdf');
      end;
end;

procedure TImpressao_ExportacaoMemorandoOP.rMemorandoStartPage(Sender: TObject);
begin
      ppHeaderBand2.PrintOnLastPage := true;
      if rMemorando.PageCount > 1 then ppHeaderBand2.PrintOnLastPage := false;
end;

end.
