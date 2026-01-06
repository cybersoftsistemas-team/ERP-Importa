unit frmUtilitarios_ExportaADECOFIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, DateUtils,
  DB, DBAccess, MSAccess, Vcl.ComCtrls, Mask, RxToolEdit, MemDS;

type
  TUtilitarios_ExportaADECOFIS = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    StaticText7: TStaticText;
    cDataIni: TDateEdit;
    StaticText6: TStaticText;
    cDataFim: TDateEdit;
    tNotas: TMSQuery;
    Progresso: TProgressBar;
    lProcesso: TLabel;
    tItens: TMSQuery;
    tParticipantes: TMSQuery;
    tProdutos: TMSQuery;
    tCFOP: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Image3: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPasta    : String;
    mNomeArq  : String;
    Arquivo   : TextFile;
    mLinha    : Integer;
    mDescricao: String;
    mMeses    : Integer;
    mDataIni  : TDate;
    mDataFim  : TDate;
  end;

var
  Utilitarios_ExportaADECOFIS: TUtilitarios_ExportaADECOFIS;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TUtilitarios_ExportaADECOFIS.bSairClick(Sender: TObject);
begin
     Close;
Application.Terminate;
end;

procedure TUtilitarios_ExportaADECOFIS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Utilitarios_ExportaADECOFIS.Release;
     Utilitarios_ExportaADECOFIS := nil;
end;

procedure TUtilitarios_ExportaADECOFIS.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaADECOFIS.bGerarClick(Sender: TObject);
Var
    i   : Integer;
    mMes: Integer;
    mAno: Integer;
begin
      With Dados, dmFiscal do begin
           Screen.Cursor := crSQLWait;

           mMeses := (StrtoInt(DifDias(cDataIni.Date, cDataFim.Date)) DIV 30);
           mMes   := MonthOf(cDataIni.Date);
           mAno   := YearOf(cDataIni.Date);

           For i := 1 to mMeses do begin
               mDataIni := StrtoDate('01/'+PoeZero(2, mMes)+'/'+PoeZero(4, mAno));
               mDataFim := UltimoDiaMes(mDataIni);

               //mPasta := Trim(ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(EmpresasRazao_Social.AsString);
               mPasta := 'C:\FATURAMENTO\'+Trim(removecaracter('/', '', EmpresasRazao_Social.AsString));
               If EmpresasMatriz_Filial.AsBoolean = true then
                  mPasta := mPasta + '_Matriz'
               else
                  mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);
               mPasta := mPasta + '\'+PoeZero(4, mAno)+'_'+Trim(NomeMes(mMes));

               If not DirectoryExists(mPasta) then ForceDirectories(mPasta);

               With Dados do begin
                    //=========================================================[ ARQUIVO DE NOTAS PRÓPRIAS ]==================================================================\\
                    mNomeArq := mPasta + '\ADE_NOTAS_FISCAIS_PROPRIAS.TXT';
                    
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;

                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('SELECT CASE WHEN Saida_Entrada = 0 THEN ''E'' ELSE ''S'' END AS Ind_Movimento,');
                    tNotas.SQL.Add('       Modelo,');
                    tNotas.SQL.Add('       Serie,');
                    tNotas.SQL.Add('       Numero AS Nota,');
                    tNotas.SQL.Add('       Data_Emissao,');
                    tNotas.SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN ''F''+CAST(Fornecedor_Codigo AS VARCHAR(14)) ELSE ''C''+CAST(Cliente_Codigo AS VARCHAR(14)) END AS Destinatario_Codigo,');
                    tNotas.SQL.Add('       ISNULL(Data_EntradaSaida, Data_Emissao) AS Data_EntradaSaida,');
                    tNotas.SQL.Add('       Valor_TotalProdutos AS Total_Merc,');
                    tNotas.SQL.Add('       Total_Descontos,');
                    tNotas.SQL.Add('       Total_Frete,');
                    tNotas.SQL.Add('       Valor_Seguro,');
                    tNotas.SQL.Add('       Valor_OutrasDespesas,');
                    tNotas.SQL.Add('       Valor_TotalIPI,');
                    tNotas.SQL.Add('       ValorICMS_Substitutivo,');
                    tNotas.SQL.Add('       Valor_TotalNota,');
                    tNotas.SQL.Add('       Inscricao_Substituto,');                                           
                    tNotas.SQL.Add('       ''RODOVIARIO'' AS Via_Transporte,');
                    tNotas.SQL.Add('       CASE WHEN Transportador_Codigo > 0 THEN ''F''+CAST(Transportador_Codigo AS VARCHAR(14)) END AS Transportador_Codigo,');
                    tNotas.SQL.Add('       Volume_Quantidade,');
                    tNotas.SQL.Add('       SUBSTRING(Volume_Especie, 1, 10) AS Volume_Especie,');
                    tNotas.SQL.Add('       Volume_PesoBruto,');
                    tNotas.SQL.Add('       Volume_PesoLiquido,');
                    tNotas.SQL.Add('       '''' AS Modalidade_Frete,');
                    tNotas.SQL.Add('       Transporte_Placa,');
                    tNotas.SQL.Add('       CASE WHEN Cancelada = 0 THEN ''N'' ELSE ''S'' END AS Cancelada,');
                    tNotas.SQL.Add('       1 AS Tipo_Fatura,');
                    tNotas.SQL.Add('       :pObs AS Observacao');
                    tNotas.SQL.Add('FROM   NotasFiscais');
                    tNotas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
                    tNotas.SQL.Add('ORDER  BY Data_Emissao, Nota');
                    tNotas.ParamByName('pDataIni').AsDate := mDataIni;
                    tNotas.ParamByName('pDataFim').AsDate := mDataFim;
                    tNotas.ParamByName('pOBS').AsString   := Space(45);
                    //tNotas.SQL.SaveToFile('c:\temp\ADE_Notas_Proprias.SQL');
                    tNotas.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tNotas.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo das notas fiscais próprias...';

                    tNotas.First;
                    While not tNotas.Eof do begin
                          Say( mLinha, 001, Arquivo, tNotas.FieldByName('Ind_Movimento').AsString);
                          Say( mLinha, 002, Arquivo, tNotas.FieldByName('Modelo').AsString);
                          Say( mLinha, 004, Arquivo, tNotas.FieldByName('Serie').AsString);
                          Say( mLinha, 009, Arquivo, PoeZero(6, tNotas.FieldByName('Nota').AsInteger) );
                          Say( mLinha, 015, Arquivo, PoeZero(2, DayOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(2, MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(4, YearOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );
                          Say( mLinha, 023, Arquivo, tNotas.FieldByName('Destinatario_Codigo').AsString);
                          Say( mLinha, 037, Arquivo, PoeZero(2, DayOf(tNotas.FieldByName('Data_EntradaSaida').AsDateTime)) + PoeZero(2, MonthOf(tNotas.FieldByName('Data_EntradaSaida').AsDateTime)) + PoeZero(4, YearOf(tNotas.FieldByName('Data_EntradaSaida').AsDateTime)) );
                          Say( mLinha, 045, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Total_Merc').AsCurrency)), 17) );
                          Say( mLinha, 062, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Total_Descontos').AsCurrency)), 17) );
                          Say( mLinha, 079, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Total_Frete').AsCurrency)), 17) );
                          Say( mLinha, 096, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_Seguro').AsCurrency)), 17) );
                          Say( mLinha, 113, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_OutrasDespesas').AsCurrency)), 17) );
                          Say( mLinha, 130, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_TotalIPI').AsCurrency)), 17) );
                          Say( mLinha, 147, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency)), 17) );
                          Say( mLinha, 164, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency)), 17) );
                          Say( mLinha, 181, Arquivo, tNotas.FieldByName('Inscricao_Substituto').AsString );
                          Say( mLinha, 195, Arquivo, tNotas.FieldByName('Via_Transporte').AsString );
                          Say( mLinha, 210, Arquivo, tNotas.FieldByName('Transportador_Codigo').AsString );
                          Say( mLinha, 224, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Volume_Quantidade').AsFloat)), 17) );
                          Say( mLinha, 241, Arquivo, Trim(tNotas.FieldByName('Volume_Especie').AsString) );
                          Say( mLinha, 251, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('#############0.000', tNotas.FieldByName('Volume_PesoBruto').AsFloat)), 17) );
                          Say( mLinha, 268, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('#############0.000', tNotas.FieldByName('Volume_PesoLiquido').AsFloat)), 17) );
                          Say( mLinha, 285, Arquivo, tNotas.FieldByName('Modalidade_Frete').AsString );
                          Say( mLinha, 288, Arquivo, tNotas.FieldByName('Transporte_Placa').AsString );
                          Say( mLinha, 303, Arquivo, tNotas.FieldByName('Cancelada').AsString );
                          Say( mLinha, 304, Arquivo, tNotas.FieldByName('Tipo_Fatura').AsString );
                          Say( mLinha, 305, Arquivo, tNotas.FieldByName('Observacao').AsString );
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tNotas.Next;
                    End;
                    CloseFile(Arquivo);

                    //======================================================[ ARQUIVO DE ITENS DE NOTAS PRÓPRIAS ]============================================================\\
                    mNomeArq := mPasta + '\ADE_ITENS_NOTAS_FISCAIS_PROPRIAS.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;
               
                    tItens.SQL.Clear;
                    tItens.SQL.Add('SELECT CASE WHEN Saida_Entrada = 0 THEN ''E'' ELSE ''S'' END AS Ind_Movimento,');
                    tItens.SQL.Add('       (SELECT Modelo FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) AS Modelo,');
                    tItens.SQL.Add('       (SELECT Serie  FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) AS Serie,');
                    tItens.SQL.Add('       Nota,');
                    tItens.SQL.Add('       Data AS Data_Emissao,');
                    tItens.SQL.Add('       Item,');
                    tItens.SQL.Add('       Codigo_Mercadoria,');
                    tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria, 1, 45) AS Descricao_Mercadoria,');
                    tItens.SQL.Add('       (SELECT LTRIM(RTRIM(Natureza_Codigo)) FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) AS CFOP,');
                    tItens.SQL.Add('       NCM,');
                    tItens.SQL.Add('       Quantidade,');
                    tItens.SQL.Add('       Unidade_Medida,');
                    tItens.SQL.Add('       Valor_Unitario,');
                    tItens.SQL.Add('       (CAST(Valor_Unitario AS DECIMAL(18,4)) * Quantidade) AS Valor_Total,');
                    //tItens.SQL.Add('       Desconto_Valor AS Valor_Desconto,');
                    tItens.SQL.Add('       0 AS Valor_Desconto,');
                    tItens.SQL.Add('       CASE WHEN ISNULL(Valor_IPI, 0) > 0 THEN 1 ELSE 2 END AS Tributacao_IPI,');
                    tItens.SQL.Add('       Aliquota_IPI,');
                    tItens.SQL.Add('       Valor_BCIPI,');
                    tItens.SQL.Add('       Total_IPI,');
                    tItens.SQL.Add('       (LTRIM(RTRIM(CodigoTrib_TabA))+LTRIM(RTRIM(CodigoTrib_TabB))) AS CSTICMS,');
                    tItens.SQL.Add('       CASE WHEN ISNULL(Valor_ICMSOper, 0) > 0 THEN 1 ELSE 2 END AS Tributacao_ICMS,');
                    tItens.SQL.Add('       Aliquota_ICMSOper,');
                    tItens.SQL.Add('       Valor_BCICMSOper,');
                    tItens.SQL.Add('       Valor_ICMSOper,');
                    tItens.SQL.Add('       Valor_BCICMSSub,');
                    tItens.SQL.Add('       Valor_ICMSSub,');
                    tItens.SQL.Add('       CASE WHEN Movimenta_Estoque = 0 THEN ''N'' ELSE ''S'' END AS Estoque,');
                    tItens.SQL.Add('       CSTIPI');
                    tItens.SQL.Add('FROM   NotasItens');
                    tItens.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim)');
                    tItens.SQL.Add('ORDER  BY Data_Emissao, Nota, Item');
                    tItens.ParamByName('pDataIni').AsDate := mDataIni;
                    tItens.ParamByName('pDataFim').AsDate := mDataFim;
                    //tItens.SQL.SaveToFile('c:\temp\ADE_Itens_Notas_Proprias.SQL');
                    tItens.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tItens.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo dos itens das notas fiscais próprias...';

                    tItens.First;
                    While not tItens.Eof do begin
                          mDescricao := RemoveCaracter('<{'+ tItens.FieldByName('Codigo_Mercadoria').AsString +'}>','', tItens.FieldByName('Descricao_Mercadoria').AsString);
                          mDescricao := Trim(Copy(mDescricao, 1, 45));
                          mDescricao := mDescricao + Space(45 - Length(Trim(mDescricao)));
                    
                          Say( mLinha, 001, Arquivo, tItens.FieldByName('Ind_Movimento').AsString);
                          Say( mLinha, 002, Arquivo, tItens.FieldByName('Modelo').AsString);
                          Say( mLinha, 004, Arquivo, tItens.FieldByName('Serie').AsString);
                          Say( mLinha, 009, Arquivo, PoeZero(6, tItens.FieldByName('Nota').AsInteger) );
                          Say( mLinha, 015, Arquivo, PoeZero(2, DayOf(tItens.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(2, MonthOf(tItens.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(4, YearOf(tItens.FieldByName('Data_Emissao').AsDateTime)) );
                          Say( mLinha, 023, Arquivo, tItens.FieldByName('Item').AsString);
                          Say( mLinha, 026, Arquivo, tItens.FieldByName('Codigo_Mercadoria').AsString);
                          Say( mLinha, 046, Arquivo, mDescricao );
                          Say( mLinha, 091, Arquivo, tItens.FieldByName('CFOP').AsString);
                          Say( mLinha, 101, Arquivo, tItens.FieldByName('NCM').AsString);
                          Say( mLinha, 109, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('#############0.000', tItens.FieldByName('Quantidade').AsFloat)), 17) );
                          Say( mLinha, 126, Arquivo, tItens.FieldByName('Unidade_Medida').AsString);
                          Say( mLinha, 129, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('############0.0000', tItens.FieldByName('Valor_Unitario').AsFloat)), 17) );
                          Say( mLinha, 146, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_Total').AsCurrency)), 17) );
                          Say( mLinha, 163, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_Desconto').AsCurrency)), 17) );
                          Say( mLinha, 180, Arquivo, tItens.FieldByName('Tributacao_IPI').AsString);
                          Say( mLinha, 181, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##0.00', tItens.FieldByName('Aliquota_IPI').AsFloat)), 5) );
                          Say( mLinha, 186, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_BCIPI').AsCurrency)), 17) );
                          Say( mLinha, 203, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Total_IPI').AsCurrency)), 17) );
                          Say( mLinha, 220, Arquivo, tItens.FieldByName('CSTICMS').AsString);
                          Say( mLinha, 223, Arquivo, tItens.FieldByName('Tributacao_ICMS').AsString);
                          Say( mLinha, 224, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat)), 5) );
                          Say( mLinha, 229, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency)), 17) );
                          Say( mLinha, 246, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_ICMSOper').AsCurrency)), 17) );
                          Say( mLinha, 263, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency)), 17) );
                          Say( mLinha, 280, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_ICMSSub').AsCurrency)), 17) );
                          Say( mLinha, 297, Arquivo, tItens.FieldByName('Estoque').AsString);
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tItens.Next;
                    End;

                    CloseFile(Arquivo);

                    //=========================================================[ ARQUIVO DE NOTAS DE TERCEIROS ]==================================================================\\
                    mNomeArq := mPasta + '\ADE_NOTAS_FISCAIS_TERCEIROS.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;

                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('SELECT Modelo,');
                    tNotas.SQL.Add('       Serie,');
                    tNotas.SQL.Add('       Nota,');
                    tNotas.SQL.Add('       Data_Emissao,');
                    tNotas.SQL.Add('       ''F''+CAST(Fornecedor AS VARCHAR(14)) AS Destinatario_Codigo,');
                    tNotas.SQL.Add('       Data_Entrada,');
                    tNotas.SQL.Add('       Valor_TotalProdutos AS Total_Merc,');
                    tNotas.SQL.Add('       Valor_TotalDescontos,');
                    tNotas.SQL.Add('       0 AS Total_Frete,');
                    tNotas.SQL.Add('       0 AS Valor_Seguro,');
                    tNotas.SQL.Add('       0 AS Valor_OutrasDespesas,');
                    tNotas.SQL.Add('       Valor_TotalIPI,');
                    tNotas.SQL.Add('       Valor_ICMSSub,');
                    tNotas.SQL.Add('       Valor_TotalNota,');
                    tNotas.SQL.Add('       '''' Inscricao_Substituto,');
                    tNotas.SQL.Add('       1 AS Tipo_Fatura,');
                    tNotas.SQL.Add('       SUBSTRING(Observacoes, 1, 45) AS Observacao');
                    tNotas.SQL.Add('FROM   NotasTerceiros NT');
                    tNotas.SQL.Add('WHERE  (Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (SELECT COUNT(*) FROM NotasTerceirosItens NTI WHERE(NTI.Nota = NT.Nota) AND (NTI.Data_Emissao = NT.Data_Emissao) AND (NTI.Fornecedor = NT.Fornecedor) AND (ISNULL(NCM, '''') <> '''')) > 0');
                    tNotas.SQL.Add('ORDER  BY Data_Entrada, Nota');
                    tNotas.ParamByName('pDataIni').AsDate := mDataIni;
                    tNotas.ParamByName('pDataFim').AsDate := mDataFim;
                    //tNotas.SQL.SaveToFile('c:\temp\ADE_Notas_Terceiros.SQL');
                    tNotas.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tNotas.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo das notas fiscais de terceiros...';

                    tNotas.First;
                    While not tNotas.Eof do begin
                          Say( mLinha, 001, Arquivo, tNotas.FieldByName('Modelo').AsString);
                          Say( mLinha, 003, Arquivo, tNotas.FieldByName('Serie').AsString);
                          Say( mLinha, 008, Arquivo, FormatFloat('000000',StrtoInt(Copy(tNotas.FieldByName('Nota').AsString,1,6))) );
                          Say( mLinha, 014, Arquivo, PoeZero(2, DayOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(2, MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(4, YearOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );
                          Say( mLinha, 022, Arquivo, tNotas.FieldByName('Destinatario_Codigo').AsString);
                          Say( mLinha, 036, Arquivo, PoeZero(2, DayOf(tNotas.FieldByName('Data_Entrada').AsDateTime)) + PoeZero(2, MonthOf(tNotas.FieldByName('Data_Entrada').AsDateTime)) + PoeZero(4, YearOf(tNotas.FieldByName('Data_Entrada').AsDateTime)) );
                          Say( mLinha, 044, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Total_Merc').AsCurrency)), 17) );
                          Say( mLinha, 061, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_TotalDescontos').AsCurrency)), 17) );
                          Say( mLinha, 078, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Total_Frete').AsCurrency)), 17) );
                          Say( mLinha, 095, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_Seguro').AsCurrency)), 17) );
                          Say( mLinha, 112, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_OutrasDespesas').AsCurrency)), 17) );
                          Say( mLinha, 129, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_TotalIPI').AsCurrency)), 17) );
                          Say( mLinha, 146, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_ICMSSub').AsCurrency)), 17) );
                          Say( mLinha, 163, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency)), 17) );
                          Say( mLinha, 180, Arquivo, tNotas.FieldByName('Inscricao_Substituto').AsString );
                          Say( mLinha, 194, Arquivo, tNotas.FieldByName('Tipo_Fatura').AsString );
                          Say( mLinha, 195, Arquivo, Trim(tNotas.FieldByName('Observacao').AsString)+Space(45-Length(Trim(tNotas.FieldByName('Observacao').AsString))) );
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tNotas.Next;
                    End;

                    CloseFile(Arquivo);
               
                    //======================================================[ ARQUIVO DE ITENS DE NOTAS TERCEIROS ]============================================================\\
                    mNomeArq := mPasta + '\ADE_ITENS_NOTAS_FISCAIS_TERCEIROS.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;
               
                    tItens.SQL.Clear;
                    tItens.SQL.Add('SELECT (SELECT Modelo FROM NotasTerceiros NT WHERE(NT.Nota = NotasTerceirosItens.Nota) AND (NT.Data_Emissao = NotasTerceirosItens.Data_Emissao)) AS Modelo,');
                    tItens.SQL.Add('       (SELECT Serie  FROM NotasTerceiros NT WHERE(NT.Nota = NotasTerceirosItens.Nota) AND (NT.Data_Emissao = NotasTerceirosItens.Data_Emissao)) AS Serie,');
                    tItens.SQL.Add('       Nota,');
                    tItens.SQL.Add('       Data_Emissao,');
                    tItens.SQL.Add('       Fornecedor,');
                    tItens.SQL.Add('       Item,');
                    tItens.SQL.Add('       Codigo_Mercadoria,');
                    tItens.SQL.Add('       Descricao_Mercadoria,');
                    tItens.SQL.Add('       (SELECT LTRIM(RTRIM(Natureza_Codigo)) FROM NotasTerceiros NT WHERE(NT.Nota = NotasTerceirosItens.Nota) AND (NT.Data_Emissao = NotasTerceirosItens.Data_Emissao)) AS CFOP,');
                    tItens.SQL.Add('       NCM,');
                    tItens.SQL.Add('       Quantidade,');
                    tItens.SQL.Add('       Unidade_Medida,');
                    tItens.SQL.Add('       Valor_Unitario,');
                    tItens.SQL.Add('       (CAST(Valor_Unitario  AS DECIMAL(18,4)) * Quantidade) AS Valor_Total,');
                    tItens.SQL.Add('       Valor_Desconto,');
                    tItens.SQL.Add('       CASE WHEN ISNULL(Valor_IPI, 0) > 0 THEN 1 ELSE 2 END AS Tributacao_IPI,');
                    tItens.SQL.Add('       Aliquota_IPI,');
                    tItens.SQL.Add('       Valor_BCIPI,');
                    tItens.SQL.Add('       Valor_IPI AS Total_IPI,');
                    tItens.SQL.Add('       (RTRIM(LTRIM(CodigoTrib_TabA))+LTRIM(RTRIM(CodigoTrib_TabB))) AS CSTICMS,');
                    tItens.SQL.Add('       CASE WHEN ISNULL(Valor_ICMSOper, 0) > 0 THEN 1 ELSE 2 END AS Tributacao_ICMS,');
                    tItens.SQL.Add('       Aliquota_ICMSOper,');
                    tItens.SQL.Add('       Valor_BCICMSOper,');
                    tItens.SQL.Add('       Valor_ICMSOper,');
                    tItens.SQL.Add('       Valor_BCICMSSub,');
                    tItens.SQL.Add('       Valor_ICMSSub,');
                    tItens.SQL.Add('       CASE WHEN Movimenta_Estoque = 0 THEN ''N'' ELSE ''S'' END AS Estoque');
                    tItens.SQL.Add('FROM   NotasTerceirosItens');
                    tItens.SQL.Add('WHERE  (Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (ISNULL(NCM, '''') <> '''')');
                    tItens.SQL.Add('ORDER  BY Data_Emissao, Nota, Item');
                    tItens.ParamByName('pDataIni').AsDate := mDataIni;
                    tItens.ParamByName('pDataFim').AsDate := mDataFim;
                    //tItens.SQL.SaveToFile('c:\temp\ADE_Itens_Notas_Terceiros.SQL');
                    tItens.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tItens.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo dos itens das notas fiscais de terceiros...';

                    tItens.First;
                    While not tItens.Eof do begin
                          mDescricao := RemoveCaracter('<{'+ tItens.FieldByName('Codigo_Mercadoria').AsString +'}>','', tItens.FieldByName('Descricao_Mercadoria').AsString);
                          mDescricao := Trim(Copy(mDescricao, 1, 45));
                          mDescricao := mDescricao + Space(45 - Length(Trim(mDescricao)));

                          Say( mLinha, 001, Arquivo, tItens.FieldByName('Modelo').AsString);
                          Say( mLinha, 003, Arquivo, tItens.FieldByName('Serie').AsString);
                          Say( mLinha, 008, Arquivo, FormatFloat('000000',StrtoInt(Copy(tItens.FieldByName('Nota').AsString,1,6))) );
                          Say( mLinha, 014, Arquivo, PoeZero(2, DayOf(tItens.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(2, MonthOf(tItens.FieldByName('Data_Emissao').AsDateTime)) + PoeZero(4, YearOf(tItens.FieldByName('Data_Emissao').AsDateTime)) );
                          Say( mLinha, 022, Arquivo, Trim(tItens.FieldByName('Fornecedor').AsString));
                          Say( mLinha, 036, Arquivo, Trim(tItens.FieldByName('Item').AsString));
                          Say( mLinha, 039, Arquivo, tItens.FieldByName('Codigo_Mercadoria').AsString);
                          Say( mLinha, 059, Arquivo, mDescricao );
                          Say( mLinha, 104, Arquivo, tItens.FieldByName('CFOP').AsString);
                          Say( mLinha, 114, Arquivo, tItens.FieldByName('NCM').AsString);
                          Say( mLinha, 122, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('#############0.000', tItens.FieldByName('Quantidade').AsFloat)), 17) );
                          Say( mLinha, 139, Arquivo, tItens.FieldByName('Unidade_Medida').AsString);
                          Say( mLinha, 142, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('############0.0000', tItens.FieldByName('Valor_Unitario').AsFloat)), 17) );
                          Say( mLinha, 159, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_Total').AsCurrency)), 17) );
                          Say( mLinha, 176, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_Desconto').AsCurrency)), 17) );
                          Say( mLinha, 193, Arquivo, tItens.FieldByName('Tributacao_IPI').AsString);
                          Say( mLinha, 194, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##0.00', tItens.FieldByName('Aliquota_IPI').AsFloat)), 5) );
                          Say( mLinha, 199, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_BCIPI').AsCurrency)), 17) );
                          Say( mLinha, 216, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Total_IPI').AsCurrency)), 17) );
                          Say( mLinha, 233, Arquivo, tItens.FieldByName('CSTICMS').AsString);
                          Say( mLinha, 236, Arquivo, tItens.FieldByName('Tributacao_ICMS').AsString);
                          Say( mLinha, 237, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##0.00', tItens.FieldByName('Aliquota_ICMSOper').AsFloat)), 5) );
                          Say( mLinha, 242, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_BCICMSOper').AsCurrency)), 17) );
                          Say( mLinha, 259, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_ICMSOper').AsCurrency)), 17) );
                          Say( mLinha, 276, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_BCICMSSub').AsCurrency)), 17) );
                          Say( mLinha, 293, Arquivo, PadR(RemoveCaracter(',','', FormatFloat('##############0.00', tItens.FieldByName('Valor_ICMSSub').AsCurrency)), 17) );
                          Say( mLinha, 310, Arquivo, tItens.FieldByName('Estoque').AsString);
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tItens.Next;
                    End;

                    CloseFile(Arquivo);

                    //=================================================[ CADASTRO DE CLIENTES/FORNECEDORES/TRANSPORTADORES ]================================================\\
                    mNomeArq := mPasta + '\ADE_CLIENTES_FORNECEDORES.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;

                    tParticipantes.SQL.Clear;
                    tParticipantes.SQL.Add('SELECT DISTINCT ''F''+CAST(Fornecedor_Codigo AS VARCHAR(14)) AS Destinatario_Codigo,');
                    tParticipantes.SQL.Add('       (SELECT CNPJ                                  FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS CNPJ_CPF,');
                    tParticipantes.SQL.Add('       (SELECT Inscricao_Estadual                    FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_IE,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Inscricao_Municipal, 1, 14) FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_IM,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 70)                FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_Nome,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Rua+'' nº ''+Rua_Numero+'' ''+Complemento, 1, 60) FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_Endereco,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Bairro, 1, 20)              FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_Bairro,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Municipio, 1, 20)           FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_Municipio,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Estado, 1, 2)               FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_Estado,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 20)                FROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = (SELECT Pais FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)))) AS Destinatario_Pais,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(CEP, 1, 8)                  FROM Fornecedores WHERE(Codigo = Fornecedor_Codigo)) AS Destinatario_CEP');
                    tParticipantes.SQL.Add('INTO   #TEMP');
                    tParticipantes.SQL.Add('FROM   NotasFiscais');
                    tParticipantes.SQL.Add('WHERE  (Saida_Entrada = 0) AND (Fornecedor_Codigo > 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
                    tParticipantes.SQL.Add('UNION  ALL');
                    tParticipantes.SQL.Add('SELECT DISTINCT ''C''+CAST(Cliente_Codigo AS VARCHAR(14)) AS Destinatario_Codigo,');
                    tParticipantes.SQL.Add('       (SELECT CNPJ                                  FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS CNPJ_CPF,');
                    tParticipantes.SQL.Add('       (SELECT Inscricao_Estadual                    FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_IE,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Inscricao_Municipal, 1, 14) FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_IM,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 70)                FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_Nome,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Rua+'' nº ''+Rua_Numero+'' ''+Complemento, 1, 60) FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_Endereco,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Bairro, 1, 20)              FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_Bairro,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Municipio, 1, 20)           FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_Municipio,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Estado, 1, 2)               FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_Estado,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 20)                FROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = (SELECT Pais FROM Clientes WHERE(Codigo = Cliente_Codigo)))) AS Destinatario_Pais,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(CEP, 1, 8)                  FROM Clientes WHERE(Codigo = Cliente_Codigo)) AS Destinatario_CEP');
                    tParticipantes.SQL.Add('FROM   NotasFiscais');
                    tParticipantes.SQL.Add('WHERE  (Cliente_Codigo > 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
                    tParticipantes.SQL.Add('UNION  ALL');
                    tParticipantes.SQL.Add('SELECT DISTINCT ''F''+CAST(Fornecedor AS VARCHAR(14)) AS Destinatario_Codigo,');
                    tParticipantes.SQL.Add('       (SELECT CNPJ                    FROM Fornecedores WHERE(Codigo = Fornecedor)) AS CNPJ_CPF,');
                    tParticipantes.SQL.Add('       (SELECT Inscricao_Estadual      FROM Fornecedores WHERE(Codigo = Fornecedor)) AS Destinatario_IE,');
                    tParticipantes.SQL.Add('       (SELECT Inscricao_Municipal     FROM Fornecedores WHERE(Codigo = Fornecedor)) AS Destinatario_IM,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 70)  FROM Fornecedores WHERE(Codigo = Fornecedor)) AS Destinatario_Nome,');
                    tParticipantes.SQL.Add('       SUBSTRING((SELECT (Rua+'' nº ''+Rua_Numero+'' ''+Complemento) FROM Fornecedores WHERE(Codigo = Fornecedor)), 1, 60) AS Destinatario_Endereco,');
                    tParticipantes.SQL.Add('       SUBSTRING((SELECT Bairro        FROM Fornecedores WHERE(Codigo = Fornecedor)), 1, 20) AS Destinatario_Bairro,');
                    tParticipantes.SQL.Add('       SUBSTRING((SELECT Municipio     FROM Fornecedores WHERE(Codigo = Fornecedor)), 1, 20) AS Destinatario_Municipio,');
                    tParticipantes.SQL.Add('       (SELECT Estado                  FROM Fornecedores WHERE(Codigo = Fornecedor)) AS Destinatario_Estado,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 20)  FROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = (SELECT Pais FROM Fornecedores WHERE(Codigo = Fornecedor)))) AS Destinatario_Pais,');
                    tParticipantes.SQL.Add('       (SELECT CEP                     FROM Fornecedores WHERE(Codigo = Fornecedor)) AS Destinatario_CEP');
                    tParticipantes.SQL.Add('FROM   NotasTerceiros');
                    tParticipantes.SQL.Add('WHERE  (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
                    tParticipantes.SQL.Add('UNION  ALL');
                    tParticipantes.SQL.Add('SELECT DISTINCT ''F''+CAST(Transportador_Codigo AS VARCHAR(14)) AS Destinatario_Codigo,');
                    tParticipantes.SQL.Add('       (SELECT CNPJ                                  FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS CNPJ_CPF,');
                    tParticipantes.SQL.Add('       (SELECT Inscricao_Estadual                    FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_IE,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Inscricao_Municipal, 1, 14) FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_IM,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 70)                FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_Nome,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Rua+'' nº ''+Rua_Numero+'' ''+Complemento, 1, 60) FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_Endereco,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Bairro, 1, 20)              FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_Bairro,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Municipio, 1, 20)           FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_Municipio,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Estado, 1, 2)               FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_Estado,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(Nome, 1, 20)                FROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = (SELECT Pais FROM Fornecedores WHERE(Codigo = Transportador_Codigo)))) AS Destinatario_Pais,');
                    tParticipantes.SQL.Add('       (SELECT SUBSTRING(CEP, 1, 8)                  FROM Fornecedores WHERE(Codigo = Transportador_Codigo)) AS Destinatario_CEP');
                    tParticipantes.SQL.Add('FROM   NotasFiscais');
                    tParticipantes.SQL.Add('WHERE  (Transportador_Codigo > 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
                    tParticipantes.SQL.Add('SELECT DISTINCT * FROM #TEMP');
                    tParticipantes.SQL.Add('ORDER  BY Destinatario_Codigo');
                    tParticipantes.SQL.Add('DROP TABLE #TEMP');
                    tParticipantes.ParamByName('pDataIni').AsDate := mDataIni;
                    tParticipantes.ParamByName('pDataFim').AsDate := mDataFim;
                    //tParticipantes.SQL.SaveToFile('c:\temp\ADE_CLIENTES_FORNECEDORES.SQL');
                    tParticipantes.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tParticipantes.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo de clientes e fornecedores...';

                    tParticipantes.First;
                    While not tParticipantes.Eof do begin
                          Say( mLinha, 001, Arquivo, PoeZero(2, DayOf(mDataIni)) + PoeZero(2, MonthOf(mDataIni)) + PoeZero(4, YearOf(mDataIni)));
                          Say( mLinha, 009, Arquivo, tParticipantes.FieldByName('Destinatario_Codigo').AsString);
                          Say( mLinha, 023, Arquivo, tParticipantes.FieldByName('CNPJ_CPF').AsString);
                          Say( mLinha, 037, Arquivo, tParticipantes.FieldByName('Destinatario_IE').AsString);
                          Say( mLinha, 051, Arquivo, tParticipantes.FieldByName('Destinatario_IM').AsString);
                          Say( mLinha, 065, Arquivo, tParticipantes.FieldByName('Destinatario_Nome').AsString);
                          Say( mLinha, 135, Arquivo, tParticipantes.FieldByName('Destinatario_Endereco').AsString);
                          Say( mLinha, 195, Arquivo, tParticipantes.FieldByName('Destinatario_Bairro').AsString);
                          Say( mLinha, 215, Arquivo, tParticipantes.FieldByName('Destinatario_Municipio').AsString);
                          Say( mLinha, 235, Arquivo, tParticipantes.FieldByName('Destinatario_Estado').AsString);

                          If UpperCase(tParticipantes.FieldByName('Destinatario_Pais').AsString) <> 'BRASIL' THEN
                             Say( mLinha, 237, Arquivo, tParticipantes.FieldByName('Destinatario_Pais').AsString);

                          If Trim(tParticipantes.FieldByName('Destinatario_CEP').AsString) <> '' then
                             Say( mLinha, 257, Arquivo, tParticipantes.FieldByName('Destinatario_CEP').AsString + Space(8-Length(tParticipantes.FieldByName('Destinatario_CEP').AsString)))
                          else
                             Say( mLinha, 257, Arquivo, Space(8));
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tParticipantes.Next;
                    End;

                    CloseFile(Arquivo);

                    //=============================================================[ CADASTRO DE PRODUTOS ]======================================================================\\
                    mNomeArq := mPasta + '\ADE_PRODUTOS.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;

                    tProdutos.SQL.Clear;
                    tProdutos.SQL.Add('SELECT Codigo,');
                    tProdutos.SQL.Add('       Descricao');
                    tProdutos.SQL.Add('FROM Produtos');
                    tProdutos.SQL.Add('WHERE Codigo IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens          WHERE(Data         BETWEEN :pDataIni AND :pDataFim))');
                    tProdutos.SQL.Add('   OR Codigo IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasTerceirosItens WHERE(Data_Entrada BETWEEN :pDataIni AND :pDataFim))');
                    tProdutos.SQL.Add('ORDER BY Codigo');
                    tProdutos.ParamByName('pDataIni').AsDate := mDataIni;
                    tProdutos.ParamByName('pDataFim').AsDate := mDataFim;
                    //tProdutos.SQL.SaveToFile('c:\temp\ADE_PRODUTOS.SQL');
                    tProdutos.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tProdutos.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo de cadastro de produtos...';

                    tProdutos.First;
                    While not tProdutos.Eof do begin
                          mDescricao := RemoveCaracter('<{'+ Trim(tProdutos.FieldByName('Codigo').AsString)+'}>','', tProdutos.FieldByName('Descricao').AsString);
                          mDescricao := Copy(mDescricao,1,45) + Space(45 - Length(Trim(mDescricao)));

                          Say( mLinha, 001, Arquivo, PoeZero(2, DayOf(mDataIni)) + PoeZero(2, MonthOf(mDataIni)) + PoeZero(4, YearOf(mDataIni)));
                          Say( mLinha, 009, Arquivo, tProdutos.FieldByName('Codigo').AsString);
                          Say( mLinha, 029, Arquivo, mDescricao);
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tProdutos.Next;
                    End;

                    CloseFile(Arquivo);

                    //=============================================================[ CADASTRO DE PRODUTOS ]======================================================================\\
                    mNomeArq := mPasta + '\ADE_CFOP.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Funcoes.LinhaAtual  := 0;
                    Funcoes.ColunaAtual := 0;
                    mLinha              := 0;

                    tCFOP.SQL.Clear;
                    tCFOP.SQL.Add('SELECT DISTINCT Codigo,');
                    tCFOP.SQL.Add('       SUBSTRING(Descricao_NF, 1, 45) AS Descricao_NF');
                    tCFOP.SQL.Add('FROM   Cybersoft_Cadastros.dbo.Natureza');
                    tCFOP.SQL.Add('WHERE  Codigo IN(SELECT DISTINCT Natureza_Codigo FROM NotasFiscais   WHERE(Data_Emissao BETWEEN :pDataIni AND :pDataFim))');
                    tCFOP.SQL.Add('   OR  Codigo IN(SELECT DISTINCT Natureza_Codigo FROM NotasTerceiros WHERE(Data_Emissao BETWEEN :pDataIni AND :pDataFim))');
                    tCFOP.SQL.Add('ORDER BY Codigo');
                    tCFOP.ParamByName('pDataIni').AsDate := mDataIni;
                    tCFOP.ParamByName('pDataFim').AsDate := mDataFim;
                    //tCFOP.SQL.SaveToFile('c:\temp\ADE_CFOP.SQL');
                    tCFOP.Open;

                    Progresso.Position := 0;
                    Progresso.Max      := tCFOP.RecordCount;
                    lProcesso.Caption  := 'Gerando arquivo de cadastro de CFOP...';

                    tCFOP.First;
                    While not tCFOP.Eof do begin
                          Say( mLinha, 001, Arquivo, PoeZero(2, DayOf(mDataIni)) + PoeZero(2, MonthOf(mDataIni)) + PoeZero(4, YearOf(mDataIni)));
                          Say( mLinha, 009, Arquivo, tCFOP.FieldByName('Codigo').AsString);
                          Say( mLinha, 015, Arquivo, Trim(tCFOP.FieldByName('Descricao_NF').AsString) + Space(45-Length(Trim(tCFOP.FieldByName('Descricao_NF').AsString))));
                          Inc(mLinha);

                          Progresso.Position := Progresso.Position + 1;
                          Application.ProcessMessages;
                          tCFOP.Next;
                    End;

                    CloseFile(Arquivo);

               End;

               Inc(mMes);
               If mMes > 12 then begin
                  mMes := 1;
                  Inc(mAno);
               End;

           End;
           //========================================================================================================================================================\\
           ShowMessage('Arquivos de exportação Gerados em '+ mPasta);

           Screen.Cursor := crDefault;
      End;
end;

end.

