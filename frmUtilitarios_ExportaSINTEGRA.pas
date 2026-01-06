unit frmUtilitarios_ExportaSINTEGRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, FUNCOES, RXDBCtrl, DateUtils, MaskUtils, DB,
  DBAccess, MSAccess, Vcl.ComCtrls, RXSpin, INIFiles, MemDS, Vcl.Mask;

type
  TUtilitarios_ExportaSintegra = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    tItens: TMSQuery;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cIdentificacao: TRadioGroup;
    cCodigoNatureza: TRadioGroup;
    cTipoArquivo: TRadioGroup;
    cNomeArquivo: TEdit;
    StaticText3: TStaticText;
    tNotas: TMSQuery;
    bSintegra: TButton;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    tCodigos: TMSQuery;
    tMemorando: TMSQuery;
    cInventario: TRadioGroup;
    tInventario: TMSQuery;
    tProdutos: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Image3: TImage;
    procedure bSairClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSintegraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Registro90;
  private
    { Private declarations }
  public
    { Public declarations }
     mDataInventI: TDate;
     mDataInventF: TDate;

     Arquivo     : TextFile;
     mNomeArq    : String;
     mLinha      : Integer;
     mColuna     : Integer;
     mIE         : String;
     mValor      : String;
     mDescricao  : String;
     mTotal50    : Integer;
     mTotal51    : Integer;
     mTotal53    : Integer;
     mTotal54    : Integer;
     mTotal56    : Integer;
     mTotal70    : Integer;
     mTotal74    : Integer;
     mTotal75    : Integer;
     mTotal85    : Integer;
     mTotal86    : Integer;
     mDataInicio : TDate;
     mDataFim    : TDate;
     mIsentas    : Currency;
     mItem       : Integer;
  end;

var
  Utilitarios_ExportaSintegra: TUtilitarios_ExportaSintegra;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal, frmJanela_Processamento;

{$R *.dfm}

procedure TUtilitarios_ExportaSintegra.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                      := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cIdentificacao.ItemIndex  := aINI.ReadInteger('SINTEGRA', 'Identificacao'   ,0 );
      cCodigoNatureza.ItemIndex := aINI.ReadInteger('SINTEGRA', 'Codigo_Natureza' ,0 );
      cTipoArquivo.ItemIndex    := aINI.ReadInteger('SINTEGRA', 'Tipo_Arquivo'    ,0 );
      cInventario.ItemIndex     := aINI.ReadInteger('SINTEGRA', 'Inventario'      ,0 );
      cMes.ItemIndex            := aINI.ReadInteger('SINTEGRA', 'Mes'             ,MonthOf(Date)-2 );
      cAno.Value                := aINI.ReadInteger('SINTEGRA', 'Ano'             ,YearOf(Date) );
      cNomeArquivo.Text         := aINI.ReadString ('SINTEGRA', 'Arquivo'         ,'CYBERSOFT_SINTEGRA' );
      aINI.Free;

      With Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;
      End;
end;

procedure TUtilitarios_ExportaSintegra.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitarios_ExportaSintegra.bGerarClick(Sender: TObject);
begin
     Screen.Cursor := crAppStart;

     Dados.Configuracao.Open;
     
     mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
     If Dados.EmpresasMatriz_Filial.AsBoolean = true then
        mNomeArq := mNomeArq + '_Matriz'
     else
        mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

     If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
     mNomeArq := mNomeArq+'\'+cNomeArquivo.Text+'_'+cMes.Text+'.TXT';
     If FileExists(mNomeArq) then DeleteFile(mNomeArq);
     AssignFile(Arquivo, mNomeArq);
     ReWrite(Arquivo);

     mTotal50    := 0;
     mTotal51    := 0;
     mTotal53    := 0;
     mTotal54    := 0;
     mTotal56    := 0;
     mTotal70    := 0;
     mTotal75    := 0;
     mTotal85    := 0;
     mTotal86    := 0;
     mDataInicio := StrtoDate('01/'+InttoStr(cMes.ItemIndex+1)+'/'+InttoStr(cAno.AsInteger));
     mDataFim    := UltimoDiaMes(mDataInicio);
     LinhaAtual  := 0;
     ColunaAtual := 0;

     If cInventario.ItemIndex = 0 then begin
        mDataInventI := mDataInicio;
        mDataInventF := UltimoDiaMes(mDataInicio);
     end else begin
        mDataInventI := StrtoDate('01/12/'+ PoeZero(4, cAno.AsInteger-1));
        mDataInventF := UltimoDiaMes(mDataInventI);
     End;
     
     With Dados, dmFiscal do Begin
          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
          Fornecedores.Open;

          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes');
          Clientes.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios');
          Municipios.Open;
          Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

          Inventario.SQL.Clear;
          Inventario.SQL.Add('TRUNCATE TABLE Inventario');
          Inventario.Execute;
          Inventario.SQL.Clear;
          Inventario.SQL.Add('SELECT * FROM Inventario');
          Inventario.Open;

          LinhaAtual  := 0;
          ColunaAtual := 0;
          mLinha      := 0;

          // REGISTRO 10: "Dados da Empresa".
          Say(mLinha, 000, Arquivo, '10' );                                                 // 01
          Say(mLinha, 002, Arquivo, FormatMaskText('00000000000000', EmpresasCNPJ.Value) ); // 02
          Say(mLinha, 016, Arquivo, Copy(EmpresasIE.Value,1,14) );                          // 03
          Say(mLinha, 030, Arquivo, Copy(EmpresasRazao_Social.Value,1,35) );                // 04
          Say(mLinha, 065, Arquivo, Copy(MunicipiosNome.Value,1,30) );                      // 05
          Say(mLinha, 095, Arquivo, Copy(EmpresasEstado.Value,1,2) );                       // 06
          If Trim(EmpresasFax.Value) <> '' then
             Say( mLinha, 097, Arquivo, Trim(EmpresasFax.Value) )
          else                                                                              // 07
             Say( mLinha, 097, Arquivo, '0000000000');
          Say(mLinha, 107, Arquivo, InttoStr(cAno.AsInteger) );                             // 08
          Say(mLinha, 111, Arquivo, FormatFloat('00',cMes.ItemIndex+1) );                   // 09
          Say(mLinha, 113, Arquivo, '01' );                                                 // 10
          Say(mLinha, 115, Arquivo, InttoStr(cAno.AsInteger) );                             // 11
          Say(mLinha, 119, Arquivo, FormatFloat('00',cMes.ItemIndex+1) );                   // 12
          Say(mLinha, 121, Arquivo, FormatFloat('00',DayOf(mDataFim)) );                    // 13
          Say(mLinha, 123, Arquivo, FormatFloat('0', cIdentificacao.ItemIndex+1) );         // 14
          Say(mLinha, 124, Arquivo, FormatFloat('0', cCodigoNatureza.ItemIndex+1) );        // 15
          If cTipoArquivo.ItemIndex < 3 then
             Say( mLinha, 125, Arquivo, FormatFloat('0', cTipoArquivo.ItemIndex+1) )        // 16
          else
             Say( mLinha, 125, Arquivo, FormatFloat('0', cTipoArquivo.ItemIndex+2) );       // 16

          // REGISTRO 11:  "Dados complementares da Empresa".
          Say(001, mLinha, Arquivo, '11' );                                                 // 01
          Say(001, 002, Arquivo, Copy( EmpresasRua.Value,1,34) );                           // 02
          Say(001, 036, Arquivo, PoeZero(5, EmpresasRua_Numero.Value) );                    // 03
          Say(001, 041, Arquivo, EmpresasComplemento.Value );                               // 04
          Say(001, 063, Arquivo, Copy( EmpresasBairro.Value,1,15) );                        // 05
          If Trim(EmpresasCEP.Value) <> '' then
             Say(001, 078, Arquivo, EmpresasCEP.Value )
          else                                                                              // 06
             Say(001, 078, Arquivo, '00000000' );
          Say(001, 086, Arquivo, Copy(EmpresasResponsavel.Value, 1, 28));                   // 07

          If EmpresasTelefone1.AsString <> '' then
             Say(001, 114, Arquivo, '00'+ EmpresasTelefone1.AsString )                      // 08
          else
             Say(001, 114, Arquivo, '000000000000' );

          // REGISTRO 50:  "Nota Fiscal Modelo 1 ou 1-A" Quanto ao ICMS.
          mLinha := 2;

          tNotas.SQL.Clear;
          tNotas.SQL.Add('SELECT Data_Emissao,');
          tNotas.SQL.Add('       ''NF'' as Tipo,');
          tNotas.SQL.Add('       Modelo,');
          tNotas.SQL.Add('       Serie,');
          tNotas.SQL.Add('       '''' as SubSerie,');
          tNotas.SQL.Add('       Numero,');
          tNotas.SQL.Add('       Natureza_Codigo,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Cliente_Codigo ELSE 0 END AS Cliente_Codigo,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Fornecedor_Codigo ELSE 0 END AS Fornecedor_Codigo,');
          tNotas.SQL.Add('       ''P'' as Emitente,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Valor_TotalNota   ELSE 0 END AS Valor_TotalNota,');
          tNotas.SQL.Add('       CASE WHEN ((Cancelada = 0 AND NFe_Denegada = 0) AND ISNULL(ICMS_Destacar, 0) = 0) THEN BCICMS     ELSE 0 END AS BCICMS,');
          tNotas.SQL.Add('       CASE WHEN ((Cancelada = 0 AND NFe_Denegada = 0) AND ISNULL(ICMS_Destacar, 0) = 0) THEN Valor_ICMS ELSE 0 END AS Valor_ICMS,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN ROUND(Valor_IsentasICMS, 4) ELSE 0 END AS Valor_IsentasICMS,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0)THEN ROUND(Valor_OutrasICMS, 4)  ELSE 0 END AS Valor_OutrasICMS,');
          tNotas.SQL.Add('       CASE WHEN ((Cancelada = 0 AND NFe_Denegada = 0) AND ISNULL(ICMS_Destacar, 0) = 0) THEN Aliquota_ICMSOper ELSE 0 END AS Aliquota_ICMSOper,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Valor_TotalIPI    ELSE 0 END AS Valor_TotalIPI,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Valor_IsentasIPI  ELSE 0 END AS Valor_IsentasIPI,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Valor_OutrasIPI   ELSE 0 END AS Valor_OutrasIPI,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND ISNULL(ICMS_Destacar, 0) = 0) THEN BCICMS_Substitutivo    ELSE 0 END AS BCICMS_Substitutivo,');
          tNotas.SQL.Add('       CASE WHEN ((Cancelada = 0 AND NFe_Denegada = 0) AND ISNULL(ICMS_Destacar, 0) = 0) THEN ValorICMS_Substitutivo ELSE 0 END AS ValorICMS_Substitutivo,');
          tNotas.SQL.Add('       CASE WHEN (Cancelada = 0 AND NFe_Denegada = 0) THEN Valor_OutrasDespesas ELSE 0 END AS Valor_OutrasDespesas,');
          tNotas.SQL.Add('       Cancelada,');
          tNotas.SQL.Add('       Saida_Entrada,');
          tNotas.SQL.Add('       CASE WHEN Cancelada = 0 THEN Valor_TotalProdutos ELSE 0 END AS Valor_TotalProduto,');
          tNotas.SQL.Add('       NULL AS Servico,');
          tNotas.SQL.Add('       Nota_Referencia,');
          tNotas.SQL.Add('       Nfe_Denegada AS Situacao');
          tNotas.SQL.Add('FROM   NotasFiscais');
          tNotas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataInicio AND :pDataFim)');
          tNotas.SQL.Add('UNION  ALL');
          tNotas.SQL.Add('SELECT Data_Entrada AS Data_Emissao,');
          tNotas.SQL.Add('       Tipo,');
          tNotas.SQL.Add('       Modelo,');
          tNotas.SQL.Add('       Serie,');
          tNotas.SQL.Add('       SubSerie,');
          tNotas.SQL.Add('       Nota AS Numero,');
          tNotas.SQL.Add('       Natureza_Codigo,');
          tNotas.SQL.Add('       0 AS CLiente_Codigo,');
          tNotas.SQL.Add('       Fornecedor,');
          tNotas.SQL.Add('       ''T'' AS Emitente, ');
          tNotas.SQL.Add('       Valor_TotalNota,');
          tNotas.SQL.Add('       Valor_BCICMSOper,');
          tNotas.SQL.Add('       Valor_ICMSOper,');
          tNotas.SQL.Add('       Valor_IsentasICMS,');
          tNotas.SQL.Add('       Valor_OutrasICMS,');
          tNotas.SQL.Add('       Aliquota_ICMSOper,');
          tNotas.SQL.Add('       Valor_TotalIPI,');
          tNotas.SQL.Add('       Valor_IsentasIPI,');
          tNotas.SQL.Add('       Valor_OutrasIPI,');
          tNotas.SQL.Add('       Valor_BCICMSSub,');
          tNotas.SQL.Add('       Valor_ICMSSub,');
          tNotas.SQL.Add('       0 AS Valor_OutrasDespesas,');
          tNotas.SQL.Add('       0 AS Cancelada,');
          tNotas.SQL.Add('       0 AS Saida_Entrada,');
          tNotas.SQL.Add('       0 AS Valor_TotalProdutos,');
          tNotas.SQL.Add('       Servico,');
          tNotas.SQL.Add('       0 AS Nota_Referencia,');
          tNotas.SQL.Add('       0 AS Situacao');
          tNotas.SQL.Add('FROM   NotasTerceiros');
          tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataInicio AND :pDataFim) AND (ISNULL(Provisoria,0) <> 1)');
          tNotas.SQL.Add('ORDER BY Numero');
          tNotas.ParamByName('pDataInicio').AsDate := mDataInicio;
          tNotas.ParamByName('pDataFim').AsDate    := mDataFim;
          //tNotas.SQL.SavetoFile('c:\Temp\SINTEGRA_REGISTRO50.SQL');
          tNotas.Open;

          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := (tNotas.RecordCount*6);
          Janela_Processamento.lProcesso.Caption  := 'Montando o registro tipo 50...';
          Janela_Processamento.Show;

          If tNotas.RecordCount = 0 then begin
             Registro90;
             Exit;
          End;

          tNotas.First;
          While not tNotas.Eof do begin
                If Trim(tNotas.FieldByName('Tipo').AsString) = 'NF' then begin
                   Say(mLinha, 000, Arquivo, '50' );  // 01 - Tipo do registro.

                   Fornecedores.Locate('Codigo', tNotas.FieldByName('Fornecedor_Codigo').AsInteger, [loCaseInsensitive]);
                   Clientes.Locate('Codigo', tNotas.FieldByName('Cliente_Codigo').AsInteger, [loCaseInsensitive]);

                   If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then begin
                      If FornecedoresCNPJ.Value <> '' then
                         Say(mLinha, 002, Arquivo, FornecedoresCNPJ.Value)  // 02
                      else
                         Say(mLinha, 002, Arquivo, '00000000000000' );      // 02

                      If FornecedoresIsento.Value = False then begin
                         mIE := RemoveCaracter('.','',FornecedoresInscricao_Estadual.Value);
                         mIE := RemoveCaracter('-','',mIE);
                         Say( mLinha, 016, Arquivo, Copy(mIE,1,14) ); // 03
                      end else
                         Say(mLinha, 016, Arquivo, 'ISENTO' ); // 03
                   end else begin
                      If ClientesCNPJ.Value = '' then
                         If ClientesCPF.Value <> '' then
                            Say(mLinha, 002, Arquivo, FormatFloat('00000000000000',ClientesCPF.AsFloat) )   // 02
                         else
                            Say(mLinha, 002, Arquivo, '00000000000000' )   // 02
                      else
                         Say(mLinha, 002, Arquivo, FormatFloat('00000000000000',ClientesCNPJ.AsFloat) ); // 02

                      If ClientesIsento.Value = False then begin
                         mIE := RemoveCaracter('.','',ClientesInscricao_Estadual.Value);
                         mIE := RemoveCaracter('-','',mIE);
                         Say( mLinha, 016, Arquivo, Copy(mIE,1,14) ); // 03
                      end else
                         Say( mLinha, 016, Arquivo, 'ISENTO' );       // 03
                   end;

                   Say(mLinha, 030, Arquivo, InttoStr(YearOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );          // 04
                   Say(mLinha, 034, Arquivo, FormatFloat('00',MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) ); // 04
                   Say(mLinha, 036, Arquivo, FormatFloat('00',DayOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );   // 04

                   If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then
                      Say(mLinha, 038, Arquivo, FornecedoresEstado.Value )                     // 05
                   else
                      Say(mLinha, 038, Arquivo, ClientesEstado.Value );                        // 05

                   Try
                      Say(mLinha, 040, Arquivo, FormatFloat('00',tNotas.FieldByName('Modelo').AsInteger) );         // 06
                   Except
                      Say(mLinha, 040, Arquivo, '00');                                                              // 06
                   End;
                   Say(mLinha, 042, Arquivo, Copy(tNotas.FieldByName('Serie').AsString,1,3) );                      // 07
                   Say(mLinha, 045, Arquivo, FormatFloat('000000',StrtoInt(Copy(tNotas.FieldByName('Numero').AsString,1,6))) );        // 08
                   Say(mLinha, 051, Arquivo, FormatFloat('0000',tNotas.FieldByName('Natureza_Codigo').AsInteger) ); // 09
                   Say(mLinha, 055, Arquivo, tNotas.FieldByName('Emitente').AsString );                             // 10

                   mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_TotalNota').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 056, Arquivo,  mValor   );  // 11 - Total da nota Fiscal.

                   If (EmpresasDistribuidora.AsBoolean = true) and (ProdutosEntrada_ST.AsBoolean = true) then
                      mValor := FormatFloat('00000000000.00', 0 )
                   else
                      mValor := FormatFloat('00000000000.00',tNotas.FieldByName('BCICMS').AsCurrency );

                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 069, Arquivo,  mValor ) ;   // 12 - B.C.ICMS.

                   If (EmpresasDistribuidora.AsBoolean = true) and (ProdutosEntrada_ST.AsBoolean = true) then
                       mValor := FormatFloat('00000000000.00', 0)
                   else
                       mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_ICMS').AsCurrency );

                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 082, Arquivo,  mValor ) ;   // 13 - Valor do ICMS.

                   mValor := FormatFloat('00000000000.00', tNotas.FieldByName('Valor_IsentasICMS').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 095, Arquivo,  mValor ) ;   // 14 - Valor de isentas de ICMS.

                   If (EmpresasDistribuidora.AsBoolean = true) and (ProdutosEntrada_ST.AsBoolean = true) then
                      mValor := FormatFloat('00000000000.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency )
                   else
                      mValor := FormatFloat('00000000000.00', tNotas.FieldByName('Valor_OutrasICMS').AsCurrency );
                   
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 108, Arquivo, mValor );     // 15 - Valor de outras de ICMS.

                   mValor := FormatFloat('00.00',tNotas.FieldByName('Aliquota_ICMSOper').AsFloat);
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 121, Arquivo,  mValor ) ;   // 16 - Alíquota do ICMS.

                   If tNotas.FieldByName('Cancelada').AsInteger = 1 then begin
                      Say(mLinha, 125, Arquivo,  'S' )         // 17 - Situação da nota fiscal. "S = Cencelada".
                   end else begin
                      If tNotas.FieldByName('Situacao').AsInteger = 1 then
                         Say(mLinha, 125, Arquivo,  '2' )      // 17 - Situação da nota fiscal. "2 = Denegada".
                      else
                         Say(mLinha, 125, Arquivo,  'N' );     // 17 - Situação da nota fiscal. "N = Normal".
                   End;      
                   Inc(mLinha);
                   Inc(mTotal50);
                End;
                tNotas.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 51: "Total de Nota Fiscal quanto ao IPI.
          Janela_Processamento.lProcesso.Caption  := 'Montando o registro tipo 51...';
          tNotas.First;
          While not tNotas.Eof do Begin
                If tNotas.FieldByName('Valor_TotalIPI').AsCurrency > 0 then begin
                   Say(mLinha, 000, Arquivo, '51' );  // 01 - Tipo do registro.

                   Fornecedores.Locate('Codigo', tNotas.FieldByName('Fornecedor_Codigo').AsInteger, [loCaseInsensitive]);
                   Clientes.Locate('Codigo', tNotas.FieldByName('Cliente_Codigo').AsInteger, [loCaseInsensitive]);

                   If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then begin
                      If FornecedoresCNPJ.Value <> '' then
                         Say(mLinha, 002, Arquivo, FornecedoresCNPJ.Value)  // 02
                      else
                         Say(mLinha, 002, Arquivo, '00000000000000' );      // 02

                      If FornecedoresIsento.Value = False then begin
                         mIE := RemoveCaracter('.','',FornecedoresInscricao_Estadual.Value);
                         mIE := RemoveCaracter('-','',mIE);
                         Say(mLinha, 016, Arquivo, Copy(mIE,1,14) ); // 03
                      end else
                         Say(mLinha, 016, Arquivo, 'ISENTO' );       // 03

                   end else begin
                      If ClientesCNPJ.Value = '' then
                         Say(mLinha, 002, Arquivo, FormatFloat('00000000000000',ClientesCPF.AsFloat) )   // 02
                      else
                         Say(mLinha, 002, Arquivo, FormatFloat('00000000000000',ClientesCNPJ.AsFloat) ); // 02

                      If ClientesIsento.Value = False then begin
                         mIE := RemoveCaracter('.','',ClientesInscricao_Estadual.Value);
                         mIE := RemoveCaracter('-','',mIE);
                         Say( mLinha, 016, Arquivo, Copy(mIE,1,14) ); // 03
                      end else
                         Say(mLinha, 016, Arquivo, 'ISENTO' ); // 03
                   end;
                   Say(mLinha, 030, Arquivo, InttoStr(YearOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );          // 04
                   Say(mLinha, 034, Arquivo, FormatFloat('00',MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) ); // 04
                   Say(mLinha, 036, Arquivo, FormatFloat('00',DayOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );   // 04

                   If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then
                      Say(mLinha, 038, Arquivo, FornecedoresEstado.Value )                     // 05
                   else
                      Say(mLinha, 038, Arquivo, ClientesEstado.Value );                        // 05

                   Say(mLinha, 040, Arquivo, Copy(tNotas.FieldByName('Serie').AsString,1,2) );                      // 06
                   Say(mLinha, 043, Arquivo, FormatFloat('000000',tNotas.FieldByName('Numero').AsInteger) );        // 07
                   Say(mLinha, 049, Arquivo, FormatFloat('0000',tNotas.FieldByName('Natureza_Codigo').AsInteger) ); // 08

                   mValor := FormatFloat('00000000000.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 053, Arquivo,  mValor   ) ;   // 09 - Total da nota Fiscal.

                   mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_TotalIPI').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 066, Arquivo,  mValor   ) ;   // 10 - Total do IPI.

                   mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_IsentasIPI').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 079, Arquivo,  mValor   ) ;   // 11 - Valor de Isentas de IPI.

                   mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_OutrasIPI').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say(mLinha, 092, Arquivo,  mValor   ) ;   // 12 - Valor de Outras de IPI.

                   If tNotas.FieldByName('Cancelada').AsInteger = 1 then begin
                      Say(mLinha, 125, Arquivo,  'S' )         // 17 - Situação da nota fiscal. "S = Cencelada".
                   end else begin
                      If tNotas.FieldByName('Situacao').AsInteger = 1 then
                         Say(mLinha, 125, Arquivo,  '2' )      // 17 - Situação da nota fiscal. "2 = Denegada".
                      else
                         Say(mLinha, 125, Arquivo,  'N' );     // 17 - Situação da nota fiscal. "N = Normal".
                   End;      

                   Inc(mLinha);
                   Inc(mTotal51);
                End;
                tNotas.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 53: "Substituição Tributária".
          Janela_Processamento.lProcesso.Caption  := 'Montando o registro tipo 53...';
          tNotas.First;
          While not tNotas.Eof do Begin
                If tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency > 0 then begin
                    Say(mLinha, 000, Arquivo, '53' );  // 01 - Tipo do registro.

                    Fornecedores.Locate('Codigo', tNotas.FieldByName('Fornecedor_Codigo').AsInteger, [loCaseInsensitive]);
                    Clientes.Locate('Codigo', tNotas.FieldByName('Cliente_Codigo').AsInteger, [loCaseInsensitive]);

                    If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then begin
                       If FornecedoresCNPJ.Value <> '' then
                          Say( mLinha, 002, Arquivo, FornecedoresCNPJ.Value)  // 02
                       else
                          Say( mLinha, 002, Arquivo, '00000000000000' );      // 02

                       If FornecedoresIsento.Value = False then begin
                          mIE := RemoveCaracter('.','',FornecedoresInscricao_Estadual.Value);
                          mIE := RemoveCaracter('-','',mIE);
                          Say( mLinha, 016, Arquivo, Copy(mIE,1,14) );           // 03
                       end else
                          Say( mLinha, 016, Arquivo, 'ISENTO' );                 // 03
                    end else begin
                       If ClientesCNPJ.Value = '' then
                          Say( mLinha, 002, Arquivo, FormatFloat('00000000000000',ClientesCPF.AsFloat) )   // 02
                       else
                          Say( mLinha, 002, Arquivo, FormatFloat('00000000000000',ClientesCNPJ.AsFloat) ); // 02

                       If ClientesIsento.Value = False then begin
                          mIE := RemoveCaracter('.','',ClientesInscricao_Estadual.Value);
                          mIE := RemoveCaracter('-','',mIE);
                          Say( mLinha, 016, Arquivo, Copy(mIE,1,14) ); // 03
                       end else
                          Say( mLinha, 016, Arquivo, 'ISENTO' );       // 03
                    end;

                    Say( mLinha, 030, Arquivo, InttoStr(YearOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );          // 04
                    Say( mLinha, 034, Arquivo, FormatFloat('00',MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) ); // 04
                    Say( mLinha, 036, Arquivo, FormatFloat('00',DayOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );   // 04

                    If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then
                       Say( mLinha, 038, Arquivo, FornecedoresEstado.Value )                     // 05
                    else
                       Say( mLinha, 038, Arquivo, ClientesEstado.Value );                        // 05

                    Try
                       Say( mLinha, 040, Arquivo, FormatFloat('00',tNotas.FieldByName('Modelo').AsInteger) );         // 06
                    Except
                       Say( mLinha, 040, Arquivo, '00');                                                              // 06
                    End;

                    Say( mLinha, 042, Arquivo, Copy(tNotas.FieldByName('Serie').AsString,1,3) );                      // 07
                    Say( mLinha, 045, Arquivo, FormatFloat('000000',tNotas.FieldByName('Numero').AsInteger) );        // 08
                    Say( mLinha, 051, Arquivo, FormatFloat('0000',tNotas.FieldByName('Natureza_Codigo').AsInteger) ); // 09
                    Say( mLinha, 055, Arquivo, tNotas.FieldByName('Emitente').AsString );                             // 10

                    mValor := FormatFloat('00000000000.00',tNotas.FieldByName('BCICMS_Substitutivo').AsCurrency );
                    mValor := RemoveCaracter('.','', mValor);
                    mValor := RemoveCaracter(',','', mValor);
                    Say( mLinha, 056, Arquivo,  mValor   ) ;   // 10 - B.C.ICMS Substitutivo.

                    mValor := FormatFloat('00000000000.00',tNotas.FieldByName('ValorICMS_Substitutivo').AsCurrency );
                    mValor := RemoveCaracter('.','', mValor);
                    mValor := RemoveCaracter(',','', mValor);
                    Say( mLinha, 069, Arquivo,  mValor   ) ;   // 11 - Valor do ICMS Substitutivo.

                    mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_OutrasDespesas').AsCurrency );
                    mValor := RemoveCaracter('.','', mValor);
                    mValor := RemoveCaracter(',','', mValor);
                    Say( mLinha, 082, Arquivo,  mValor   ) ;   // 12 - Valor de Outras de IPI.

                    If tNotas.FieldByName('Cancelada').AsInteger = 1 then begin
                       Say(mLinha, 125, Arquivo,  'S' )         // 17 - Situação da nota fiscal. "S = Cencelada".
                    end else begin
                       If tNotas.FieldByName('Situacao').AsInteger = 1 then
                          Say(mLinha, 125, Arquivo,  '2' )      // 17 - Situação da nota fiscal. "2 = Denegada".
                       else
                          Say(mLinha, 125, Arquivo,  'N' );     // 17 - Situação da nota fiscal. "N = Normal".
                    End;

                    Say( mLinha, 096, Arquivo,  ' ' ) ;        // 15 - Código antecipação.
                    Say( mLinha, 097, Arquivo,  Replicate(' ',29) ) ;    // 16 - Brancos.
                    Inc(mLinha);
                    Inc(mTotal53);
                End;
                tNotas.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 54: "Produtos".
          Janela_Processamento.lProcesso.Caption  := 'Montando o registro tipo 54...';
          tNotas.First;
          While not tNotas.Eof do Begin
                If Trim(tNotas.FieldByName('Tipo').AsString) = 'NF' then begin
                   tItens.SQL.Clear;
                   If tNotas.FieldByName('Emitente').AsString = 'P' then begin
                      tItens.SQL.Add('SELECT Nota,');
                      tItens.SQL.Add('       (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) AS CST,');
                      tItens.SQL.Add('       Item,');
                      tItens.SQL.Add('       Codigo_Mercadoria,');
                      tItens.SQL.Add('       Quantidade,');
                      tItens.SQL.Add('       Valor_Unitario,');
                      tItens.SQL.Add('       Valor_Total,');
                      tItens.SQL.Add('       0 as Valor_Desconto,');
                      tItens.SQL.Add('       Valor_BCICMSOper = CASE WHEN (SELECT ISNULL(ICMS_Destacar, 0) FROM NotasFiscais NF WHERE(NF.Numero = NotasItens.Nota) AND (NF.Data_Emissao = NotasItens.Data) AND (NF.Saida_Entrada = NotasItens.Saida_Entrada)) = 0 THEN Valor_BCICMSOper  ELSE 0 END,');
                      tItens.SQL.Add('       Valor_BCICMSSub  = CASE WHEN (SELECT ISNULL(ICMS_Destacar, 0) FROM NotasFiscais NF WHERE(NF.Numero = NotasItens.Nota) AND (NF.Data_Emissao = NotasItens.Data) AND (NF.Saida_Entrada = NotasItens.Saida_Entrada)) = 0 THEN Valor_BCICMSSub   ELSE 0 END,');
                      tItens.SQL.Add('       Aliquota_ICMSOper= CASE WHEN (SELECT ISNULL(ICMS_Destacar, 0) FROM NotasFiscais NF WHERE(NF.Numero = NotasItens.Nota) AND (NF.Data_Emissao = NotasItens.Data) AND (NF.Saida_Entrada = NotasItens.Saida_Entrada)) = 0 THEN Aliquota_ICMSOper ELSE 0 END,');
                      tItens.SQL.Add('       Total_IPI,');
                      tItens.SQL.Add('       '+QuotedStr('P')+' AS Emitente');
                      tItens.SQL.Add('FROM NotasItens');
                      tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data = :pData) AND (Cancelada <> 1) AND (NFe_Denegada <> 1)');
                      tItens.SQL.Add('ORDER BY Item');
                      //tItens.SQL.SaveToFile('c:\temp\SINTEGRA_54.SQL');
                   end else begin
                      tItens.SQL.Add('SELECT Nota,');
                      tItens.SQL.Add('       (RTRIM(CodigoTrib_TabA)+RTRIM(CodigoTrib_TabB)) as CST,');
                      tItens.SQL.Add('       Item,');
                      tItens.SQL.Add('       Codigo_Mercadoria,');
                      tItens.SQL.Add('       Quantidade,');
                      tItens.SQL.Add('       Valor_Unitario,');
                      tItens.SQL.Add('       Valor_Liquido as Valor_Total,');
                      tItens.SQL.Add('       0 as Valor_Desconto,');
                      tItens.SQL.Add('       Valor_BCICMSOper,');
                      tItens.SQL.Add('       Valor_BCICMSSub,');
                      tItens.SQL.Add('       Valor_IPI AS Total_IPI,');
                      tItens.SQL.Add('       (SELECT Aliquota_ICMSOper FROM NotasTerceiros NT WHERE(NT.Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = NotasTerceirosItens.Fornecedor) AND (Natureza_Codigo = :pNatureza) ) AS Aliquota_ICMSOper,');
                      tItens.SQL.Add('       '+QuotedStr('T')+' AS Emitente' );
                      tItens.SQL.Add('FROM NotasTerceirosItens');
                      tItens.SQL.Add('WHERE (Nota = :pNota) AND (Data_Entrada = :pData)  AND (Natureza_Codigo = :pNatureza) AND (Tipo IN(''CTR'', ''CTE''))' );
                      tItens.SQL.Add('ORDER BY Item');
                      //tItens.SQL.SaveToFile('c:\temp\SINTEGRA_54.SQL');
                      tItens.ParamByName('pNatureza').AsString := tNotas.FieldByName('Natureza_Codigo').AsString;
                   End;
                   tItens.ParamByName('pNota').AsInteger := tNotas.FieldByName('Numero').AsInteger;
                   tItens.ParamByName('pData').AsDate    := tNotas.FieldByName('Data_Emissao').AsDateTime;
                   tItens.Open;

                   Fornecedores.Locate('Codigo', tNotas.FieldByName('Fornecedor_Codigo').AsInteger, [loCaseInsensitive]);
                   Clientes.Locate('Codigo', tNotas.FieldByName('Cliente_Codigo').AsInteger, [loCaseInsensitive]);

                   mItem := 1;

                   tItens.First;
                   While not tItens.Eof do Begin
                         Say( mLinha, 000, Arquivo, '54' );                                                                     // 01 - Tipo do registro.
                         If tNotas.FieldByName('Cliente_Codigo').AsInteger = 0 then begin
                            If FornecedoresCNPJ.Value <> '' then
                               Say( mLinha, 002, Arquivo, FornecedoresCNPJ.Value)                                               // 02
                            else
                               Say( mLinha, 002, Arquivo, '00000000000000' );                                                   // 02
                         end else begin
                            If ClientesCNPJ.Value = '' then
                               If ClientesCPF.Value <> '' then
                                  Say( mLinha, 002, Arquivo, FormatFloat('00000000000000', ClientesCPF.AsFloat) )               // 02
                               else
                                  Say( mLinha, 002, Arquivo, '00000000000000' )                                                 // 02
                            else
                               Say( mLinha, 002, Arquivo, ClientesCNPJ.AsString );                                              // 02
                         end;

                         Try
                            Say( mLinha, 016, Arquivo, FormatFloat('00',tNotas.FieldByName('Modelo').AsInteger) );              // 03
                         Except
                            Say( mLinha, 016, Arquivo, '00');                                                                   // 03
                         End;

                         Say( mLinha, 018, Arquivo, Copy(tNotas.FieldByName('Serie').AsString,1,3) );                           // 04
                         Say( mLinha, 021, Arquivo, PoeZero(6, StrtoInt(Copy(tNotas.FieldByName('Numero').AsString, 1, 6))));   // 05
                         Say( mLinha, 027, Arquivo, FormatFloat('0000',tNotas.FieldByName('Natureza_Codigo').AsInteger) );      // 06
                         Say( mLinha, 031, Arquivo, tItens.FieldByName('CST').AsString );                                       // 07
                         Say( mLinha, 034, Arquivo, FormatFloat('000', mItem) );                                                // 08
                         Say( mLinha, 037, Arquivo, Copy(tItens.FieldByName('Codigo_Mercadoria').AsString,1,14) );              // 09

                         mValor := FormatFloat('00000000.000',tItens.FieldByName('Quantidade').AsCurrency );
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 051, Arquivo,  mValor   ) ;   // 10 - Quantidade do produto.

                         mValor := FormatFloat('0000000000.00',tItens.FieldByName('Valor_Total').AsCurrency );
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 062, Arquivo,  mValor   ) ;   // 11 - Valor total do produto "unitario * quantidade".

                         mValor := FormatFloat('0000000000.00',tItens.FieldByName('Valor_Desconto').AsCurrency );
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 074, Arquivo,  mValor   ) ;   // 12 - Valor do desconto do item.

                         mValor := FormatFloat('0000000000.00',tItens.FieldByName('Valor_BCICMSOper').AsCurrency );
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 086, Arquivo,  mValor   ) ;   // 13 - Base de calculo do ICMS operacional.

                         mValor := FormatFloat('0000000000.00',tItens.FieldByName('Valor_BCICMSSub').AsCurrency );
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 098, Arquivo,  mValor   ) ;   // 14 - Base de calculo do ICMS Substitutivo.

                         mValor := FormatFloat('0000000000.00',tItens.FieldByName('Total_IPI').AsCurrency );
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 110, Arquivo,  mValor   ) ;   // 14 - Valor do IPI.

                         mValor := FormatFloat('00.00',tItens.FieldByName('Aliquota_ICMSOper').AsFloat);
                         mValor := RemoveCaracter('.','', mValor);
                         mValor := RemoveCaracter(',','', mValor);
                         Say( mLinha, 122, Arquivo, mValor ) ;     // 16 - Alíquota do ICMS.

                         tItens.Next;
                         Inc(mLinha);
                         Inc(mTotal54);
                         Inc(mItem);
                   End;
                End;
                tNotas.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 70: "Nota Fiscal de Serviço de Transporte".
          Janela_Processamento.lProcesso.Caption  := 'Montando o registro tipo 70...';
          tNotas.Open;
          tNotas.First;
          While not tNotas.Eof do begin
                If (tNotas.FieldByName('Tipo').AsString = 'CTR') or (tNotas.FieldByName('Tipo').AsString = 'CTE') then begin
                   Say( mLinha, 000, Arquivo, '70' );  // 01 - Tipo do registro.

                   Fornecedores.Locate('Codigo', tNotas.FieldByName('Fornecedor_Codigo').AsInteger, [loCaseInsensitive]);

                   If FornecedoresCNPJ.Value <> '' then
                      Say( mLinha, 002, Arquivo, FornecedoresCNPJ.Value)  // 02
                   else
                      Say( mLinha, 002, Arquivo, '00000000000000' );      // 02

                   If FornecedoresIsento.Value = False then begin
                      mIE := RemoveCaracter('.','',FornecedoresInscricao_Estadual.Value);
                      mIE := RemoveCaracter('-','',mIE);
                      Say( mLinha, 016, Arquivo, Copy(mIE,1,14) );           // 03
                   end else
                      Say( mLinha, 016, Arquivo, 'ISENTO' ); // 03

                   Say( mLinha, 030, Arquivo, InttoStr(YearOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );          // 04
                   Say( mLinha, 034, Arquivo, FormatFloat('00',MonthOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) ); // 04
                   Say( mLinha, 036, Arquivo, FormatFloat('00',DayOf(tNotas.FieldByName('Data_Emissao').AsDateTime)) );   // 04
                   Say( mLinha, 038, Arquivo, FornecedoresEstado.Value );                                                 // 05
                   Say( mLinha, 040, Arquivo, tNotas.FieldByName('Modelo').AsString );                                    // 06
                   Say( mLinha, 042, Arquivo, Copy(tNotas.FieldByName('Serie').AsString,1,1) );                           // 07
                   Say( mLinha, 043, Arquivo, Copy(tNotas.FieldByName('SubSerie').AsString,1,2) );                        // 08
                   Say( mLinha, 045, Arquivo, FormatFloat('000000',tNotas.FieldByName('Numero').AsInteger) );             // 09
                   Say( mLinha, 051, Arquivo, FormatFloat('0000',tNotas.FieldByName('Natureza_Codigo').AsInteger) );      // 10

                   mValor := FormatFloat('00000000000.00',tNotas.FieldByName('Valor_TotalNota').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 055, Arquivo,  mValor   ) ;   // 11 - Total da nota Fiscal.

                   mValor := FormatFloat('000000000000.00',tNotas.FieldByName('BCICMS').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 068, Arquivo,  mValor ) ;     // 12 - B.C.ICMS.

                   mValor := FormatFloat('000000000000.00',tNotas.FieldByName('Valor_ICMS').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 082, Arquivo,  mValor );      // 13 - Valor do ICMS.

                   mValor := FormatFloat('000000000000.00',tNotas.FieldByName('Valor_IsentasICMS').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 096, Arquivo,  mValor ) ;     // 14 - Valor de isentas de ICMS.

                   mValor := FormatFloat('000000000000.00',tNotas.FieldByName('Valor_OutrasICMS').AsCurrency );
                   mValor := RemoveCaracter('.','', mValor);
                   mValor := RemoveCaracter(',','', mValor);
                   Say( mLinha, 110, Arquivo,  mValor );      // 15 - Valor de outras de ICMS.

                   Say( mLinha, 124, Arquivo,  '1' );         // 16 - "1" para CIF e "2" para FOB.

                   If tNotas.FieldByName('Cancelada').AsInteger = 1 then begin
                       Say(mLinha, 125, Arquivo,  'S' )         // 17 - Situação da nota fiscal. "S = Cencelada".
                    end else begin
                       If tNotas.FieldByName('Situacao').AsInteger = 1 then
                          Say(mLinha, 125, Arquivo,  '2' )      // 17 - Situação da nota fiscal. "2 = Denegada".
                       else
                          Say(mLinha, 125, Arquivo,  'N' );     // 17 - Situação da nota fiscal. "N = Normal".
                    End;

                   Inc(mLinha);
                   Inc(mTotal70);
                End;
                tNotas.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 74: "Registro de Inventario".
          // EMPRESAS IMPORTADORAS.
          If cInventario.ItemIndex < 2 then begin
             Inventario.SQL.Clear;
             If EmpresasDistribuidora.AsBoolean = false then begin
                // Apurando o saldo do inventario - Mercadoria Própria
                Inventario.SQL.Add('SELECT Codigo,');
                Inventario.SQL.Add('       Codigo_Fabricante,');
                Inventario.SQL.Add('       NCM,');
                Inventario.SQL.Add('       Descricao,');
                Inventario.SQL.Add('       Unidade,');
                Inventario.SQL.Add('       ROUND((');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)), 0) +');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)+');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData)), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)');
                Inventario.SQL.Add('       ), 3) AS Quantidade,');

                If mDataInventI < StrtoDate('01/01/2014') then begin
                   Inventario.SQL.Add('       Valor_Unitario = (ISNULL(ROUND((SELECT SUM(Valor_Total+Valor_Despesa) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Saida_Entrada=0 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1 AND Data<=:pData), 4), 0)');
                end else begin
                   Inventario.SQL.Add('       Valor_Unitario = (ISNULL(ROUND((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasItens WHERE Codigo_Mercadoria=Codigo AND Saida_Entrada=0 AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1 AND Data<=:pData), 4), 0)');
                End;

                Inventario.SQL.Add('                       + ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario*Quantidade,0)) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario = 1 AND Inventario_Terceiros = 0 AND Data_Entrada <= :pData');
                Inventario.SQL.Add('                         AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 3, 5, 6)), 4), 0))');
                Inventario.SQL.Add('                       / (ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE Saida_Entrada=0 AND Codigo_Mercadoria=Codigo AND Cancelada<>1 AND ISNULL(Nfe_Denegada, 0) = 0 AND Movimenta_Inventario=1 AND Data<=:pData), 0)');
                Inventario.SQL.Add('                       + ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = Codigo AND Movimenta_Inventario = 1 AND Inventario_Terceiros = 0 AND Data_Entrada <= :pData');
                Inventario.SQL.Add('                         AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) IN(0, 3, 5, 6)), 1))');

                Inventario.SQL.Add('       ,CAST(0 AS money) AS Valor_Total,');
                Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                Inventario.SQL.Add('       ''1'' AS Inventario,');
                Inventario.SQL.Add('       ''P'' AS Participante,');
                Inventario.SQL.Add('       '' '' AS Tipo,');
                Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                Inventario.SQL.Add('       '' '' AS IE,');
                Inventario.SQL.Add('       '' '' AS Estado');
                Inventario.SQL.Add('INTO #Temp');
                Inventario.SQL.Add('FROM Produtos');

                // Mercadoria Própria em poder de terceiros.
                Inventario.SQL.Add('UNION ALL');
                Inventario.SQL.Add('SELECT Codigo,');
                Inventario.SQL.Add('       Codigo_Fabricante,');
                Inventario.SQL.Add('       NCM,');
                Inventario.SQL.Add('       Descricao,');
                Inventario.SQL.Add('       Unidade,');
                Inventario.SQL.Add('       ROUND((');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND (Data_Entrada <= :pData)), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0)');
                Inventario.SQL.Add('       ), 3) AS Quantidade,');
                Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('              AND Finalidade_Mercadoria = 4)');
                Inventario.SQL.Add('            /(SELECT SUM(Quantidade)  FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('            AND Finalidade_Mercadoria = 4), 4, 0)');
                Inventario.SQL.Add('       AS Valor_Unitario,');
                Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                Inventario.SQL.Add('       ''2'' AS Inventario,');
                Inventario.SQL.Add('       ''T'' AS Participante,');
                Inventario.SQL.Add('       '' '' AS Tipo,');
                Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                Inventario.SQL.Add('       '' '' AS IE,');
                Inventario.SQL.Add('       '' '' AS Estado');
                Inventario.SQL.Add('FROM   Produtos');

                // Mercadoria de terceiros em poder da empresa.
                Inventario.SQL.Add('UNION ALL');
                Inventario.SQL.Add('SELECT Codigo,');
                Inventario.SQL.Add('       Codigo_Fabricante,');
                Inventario.SQL.Add('       NCM,');
                Inventario.SQL.Add('       Descricao,');
                Inventario.SQL.Add('       Unidade,');
                Inventario.SQL.Add('       ROUND((');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                Inventario.SQL.Add('       ), 3) AS Quantidade,');
                If mDataInventI < StrtoDate('01/01/2014') then begin
                   Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa, 0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario=1)');
                end else begin
                   Inventario.SQL.Add('       Valor_Unitario = ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa*Quantidade,0)) FROM NotasItens WHERE(Codigo_Mercadoria=Codigo) AND (Saida_Entrada=0) AND (Cancelada<>1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario=1)');
                End;
                Inventario.SQL.Add('                        AND (Data<=:pData)) / (SELECT SUM(ISNULL(Quantidade,0)) FROM NotasItens WHERE(Saida_Entrada=0) AND (Codigo_Mercadoria=Codigo) AND (Cancelada<>1) AND (Nfe_Denegada <> 1) AND (Data<=:pData)), 4,0), 0) +');
                Inventario.SQL.Add('                        ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Inventario,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 0)');
                Inventario.SQL.Add('                        AND (Data_Entrada <= :pData) AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) IN(0, 3, 5, 6)), 4,0), 0),');
                Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                Inventario.SQL.Add('       ''3'' AS Inventario,');
                Inventario.SQL.Add('       ''T'' AS Participante,');
                Inventario.SQL.Add('       '' '' AS Tipo,');
                Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                Inventario.SQL.Add('       '' '' AS IE,');
                Inventario.SQL.Add('       '' '' AS Estado');
                Inventario.SQL.Add('FROM   Produtos');
                Inventario.SQL.Add('UPDATE #Temp SET Valor_Total = Valor_Unitario * Quantidade WHERE Quantidade <> 0');
                Inventario.SQL.Add('TRUNCATE TABLE Inventario');
                Inventario.SQL.Add('INSERT INTO Inventario SELECT * FROM #Temp WHERE Quantidade <> 0');
             End;

             // EMPRESAS DISTRIBUIDORAS
             If EmpresasDistribuidora.AsBoolean = true then begin
                // Apurando o saldo do inventario - Mercadoria Própria
                Inventario.SQL.Add('SELECT Codigo,');
                Inventario.SQL.Add('       Codigo_Fabricante,');
                Inventario.SQL.Add('       NCM,');
                Inventario.SQL.Add('       Descricao,');
                Inventario.SQL.Add('       Unidade,');
                Inventario.SQL.Add('       ROUND((');
                Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)), 0) +');
                Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)+');
                Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1)');
                Inventario.SQL.Add('                        AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) <> 5) AND (Data_Entrada <= :pData)), 0) -');
                Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1)');
                Inventario.SQL.Add('                        AND (Finalidade_Mercadoria <> 5) AND (Data <= :pData)), 0) -');
                Inventario.SQL.Add('         ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = Codigo) AND (Data_Transferencia <= :pData) AND (Inventario = 1)), 0)');
                Inventario.SQL.Add('       ), 3) AS Quantidade,');
                Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Inventario*Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData))/');
                Inventario.SQL.Add('       (SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Produtos.Codigo) AND (Movimenta_Inventario = 1) AND (Data_Entrada <= :pData)), 4, 0) AS Valor_Unitario,');
                Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                Inventario.SQL.Add('       ''1'' AS Inventario,');
                Inventario.SQL.Add('       ''P'' AS Participante,');
                Inventario.SQL.Add('       '' '' AS Tipo,');
                Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                Inventario.SQL.Add('       '' '' AS IE,');
                Inventario.SQL.Add('       '' '' AS Estado');
                Inventario.SQL.Add('INTO #Temp');
                Inventario.SQL.Add('FROM Produtos');
                
                // Mercadoria Própria em poder de terceiros.
                Inventario.SQL.Add('UNION ALL');
                Inventario.SQL.Add('SELECT Codigo,');
                Inventario.SQL.Add('       Codigo_Fabricante,');
                Inventario.SQL.Add('       NCM,');
                Inventario.SQL.Add('       Descricao,');
                Inventario.SQL.Add('       Unidade,');
                Inventario.SQL.Add('       ROUND((');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Inventario_Terceiros = 1) AND (Data_Entrada <= :pData)), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 4), 0)');
                Inventario.SQL.Add('       ), 3) AS Quantidade,');
                Inventario.SQL.Add('       ROUND((SELECT SUM(Valor_Total) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('              AND Finalidade_Mercadoria = 4)');
                Inventario.SQL.Add('            /(SELECT SUM(Quantidade)  FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('            AND Finalidade_Mercadoria = 4), 4, 0)');
                Inventario.SQL.Add('       AS Valor_Unitario,');
                Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                Inventario.SQL.Add('       ''2'' AS Inventario,');
                Inventario.SQL.Add('       ''T'' AS Participante,');
                Inventario.SQL.Add('       '' '' AS Tipo,');
                Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                Inventario.SQL.Add('       '' '' AS IE,');
                Inventario.SQL.Add('       '' '' AS Estado');
                Inventario.SQL.Add('FROM   Produtos');

                // Mercadoria de terceiros em poder da empresa.
                Inventario.SQL.Add('UNION ALL');
                Inventario.SQL.Add('SELECT Codigo,');
                Inventario.SQL.Add('       Codigo_Fabricante,');
                Inventario.SQL.Add('       NCM,');
                Inventario.SQL.Add('       Descricao,');
                Inventario.SQL.Add('       Unidade,');
                Inventario.SQL.Add('       ROUND((');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                AND Finalidade_Mercadoria = 5), 0)');
                Inventario.SQL.Add('       ), 3) AS Quantidade,');
                Inventario.SQL.Add('       (');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Total) FROM NotasItens          WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                       AND Finalidade_Mercadoria = 5), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Valor_Total) FROM NotasItens          WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('        AND Finalidade_Mercadoria = 5), 0)');
                Inventario.SQL.Add('       ) / ');
                Inventario.SQL.Add('       NULLIF(');
                Inventario.SQL.Add('       (');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND ((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5) AND (Data_Entrada <= :pData)), 0) +');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                       AND Finalidade_Mercadoria = 5), 0) -');
                Inventario.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          WHERE(Saida_Entrada = 1) AND (Codigo_Mercadoria = Codigo) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1) AND (Movimenta_Inventario = 1) AND (Data <= :pData)');
                Inventario.SQL.Add('                       AND Finalidade_Mercadoria = 5), 0)');
                Inventario.SQL.Add('       ), 0) AS Valor_Unitario,');
                Inventario.SQL.Add('       CAST(0 AS money) AS Valor_Total,');
                Inventario.SQL.Add('       NULL  AS Tipo_Item,');
                Inventario.SQL.Add('       ''3'' AS Inventario,');
                Inventario.SQL.Add('       ''T'' AS Participante,');
                Inventario.SQL.Add('       '' '' AS Tipo,');
                Inventario.SQL.Add('       ''00000000000000'' AS CNPJ,');
                Inventario.SQL.Add('       '' '' AS IE,');
                Inventario.SQL.Add('       '' '' AS Estado');
                Inventario.SQL.Add('FROM   Produtos');
                Inventario.SQL.Add('UPDATE #Temp SET Valor_Total = Valor_Unitario * Quantidade WHERE Quantidade <> 0');
                Inventario.SQL.Add('TRUNCATE TABLE Inventario');
                Inventario.SQL.Add('INSERT INTO Inventario SELECT * FROM #Temp WHERE Quantidade <> 0');
             End;

             Inventario.SQL.Add('SELECT * FROM Inventario ORDER BY Codigo');
             Inventario.SQL.Add('DROP TABLE #TEMP');
             Inventario.ParamByName('pData').AsDateTime := mDataInventF;
             //If EmpresasDistribuidora.AsBoolean = true  then Inventario.SQL.SaveToFile('c:\temp\Inventario_Distribuidor_Sintegra.sql');
             //If EmpresasDistribuidora.AsBoolean = false then Inventario.SQL.SaveToFile('c:\temp\Inventario_Importadora_Sintegra.sql');
             Inventario.Open;

             Janela_Processamento.Progresso.Position := 0;
             Janela_Processamento.Progresso.Max      := Inventario.RecordCount;
             Janela_Processamento.lProcesso.Caption  := 'Montando registro tipo 74...Em poder de terceiros.';
             Application.ProcessMessages;

             While not Inventario.Eof do begin
                   If Inventario.FieldByName('Quantidade').Value <> 0 then begin
                      Say( mLinha, 000, Arquivo, '74' );                                                                                             // 01 - Tipo do registro.
                      Say( mLinha, 002, Arquivo, PoeZero(4,YearOf(mDataInventF))+PoeZero(2, MonthOf(mDataInventF))+PoeZero(2, DayOf(mDataInventF))); // 02 - Data do inventário.
                      Say( mLinha, 010, Arquivo, Inventario.FieldByName('Codigo').AsString);                                                         // 03 - Código do produto do informante.

                      mValor := FormatFloat('0000000000.000',Inventario.FieldByName('Quantidade').AsFloat);
                      mValor := RemoveCaracter('.','', mValor);
                      mValor := RemoveCaracter(',','', mValor);
                      Say(mLinha, 024, Arquivo, mValor);                                                                                             // 04 - Quantidade do produto.

                      mValor := FormatFloat('00000000000.00', Inventario.FieldByName('Valor_Total').AsCurrency);                                     // 05 - Valor bruto do produto.
                      mValor := RemoveCaracter('.','', mValor);
                      mValor := RemoveCaracter(',','', mValor);
                      Say(mLinha, 037, Arquivo, mValor);                                                                                             // 06 - Quantidade do produto.

                      Say( mLinha, 050, Arquivo, Inventario.FieldByName('Inventario').AsString);                                                     // 07 - Tipo do inventario.
                      If Inventario.FieldByName('Inventario').AsInteger = 1 then begin
                         Say( mLinha, 051, Arquivo, '00000000000000');                                                                               // 08 - CNPJ do possuidor da mercadoria.
                         Say( mLinha, 065, Arquivo, '');                                                                                             // 09 - Inscrição estadual do possuidor da mercadoria.
                         Say( mLinha, 079, Arquivo, Space(2));                                                                                       // 10 - Estado do possuidor da mercadoria.
                      end else begin
                         Say( mLinha, 051, Arquivo, '04077240000145');                                                                               // 08 - CNPJ do possuidor da mercadoria.
                         Say( mLinha, 065, Arquivo, '082207925     ');                                                                               // 09 - Inscrição estadual do possuidor da mercadoria.
                         Say( mLinha, 079, Arquivo, 'ES');                                                                                           // 10 - Estado do possuidor da mercadoria.
                      End;
                      Say(mLinha, 081, Arquivo, Space(45));                                                                                          // 11 -

                      Inc(mLinha);
                      Inc(mTotal74);
                   End;
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;
                   
                   Inventario.Next;
             End;
          End;

          // REGISTRO 75: "Código de Produto ou Serviço".
          tItens.SQL.Clear;
          tItens.SQL.Add('SELECT Codigo_Mercadoria,');
          tItens.SQL.Add('       NCM,');
          tItens.SQL.Add('       Unidade_Medida,');
          tItens.SQL.Add('       Valor_BCICMSSub,');
          tItens.SQL.Add('       Aliquota_IPI,');
          tItens.SQL.Add('       Aliquota_ICMSOper,');
          tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria,1,120) AS Descricao_Mercadoria,');
          tItens.SQL.Add('       Aliquota_ICMSReducao,');
          tItens.SQL.Add('       LTRIM(RTRIM(CodigoTrib_TabA))+LTRIM(RTRIM(CodigoTrib_TabB)) AS CST');
          tItens.SQL.Add('FROM   NotasItens');
          tItens.SQL.Add('WHERE  (Data BETWEEN :pDataInicio AND :pDataFim) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)' );
          tItens.SQL.Add('UNION  ALL');
          tItens.SQL.Add('SELECT Codigo_Mercadoria,');
          tItens.SQL.Add('       NCM,');
          tItens.SQL.Add('       Unidade_Medida,');
          tItens.SQL.Add('       0,');
          tItens.SQL.Add('       Aliquota_IPI,');
          tItens.SQL.Add('       Aliquota_ICMSOper,');
          tItens.SQL.Add('       SUBSTRING(Descricao_Mercadoria,1,120) as Descricao_Mercadoria,');
          tItens.SQL.Add('       0,');
          tItens.SQL.Add('       LTRIM(RTRIM(CodigoTrib_TabA))+LTRIM(RTRIM(CodigoTrib_TabB)) AS CST ');
          tItens.SQL.Add('FROM NotasTerceirosItens');
          tItens.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataInicio AND :pDataFim)');
          tItens.SQL.Add('AND   ISNULL((SELECT Servico FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal), '''') = '''' ');
          If cInventario.ItemIndex < 2 then begin
             tItens.SQL.Add('UNION ALL');
             tItens.SQL.Add('SELECT Codigo,');
             tItens.SQL.Add('       NCM,');
             tItens.SQL.Add('       Unidade,');
             tItens.SQL.Add('       0,');
             tItens.SQL.Add('       (SELECT Aliquota_IPI FROM Produtos WHERE Produtos.Codigo = Inventario.Codigo) AS Aliquota_IPI,');
             tItens.SQL.Add('       0,');
             tItens.SQL.Add('       (SELECT SUBSTRING(Descricao, 1, 120) FROM Produtos WHERE Produtos.Codigo = Inventario.Codigo) AS Descricao_Mercadoria,');
             tItens.SQL.Add('       0,');
             tItens.SQL.Add('       '''' AS CST ');
             tItens.SQL.Add('FROM   Inventario');
          End;
          tItens.ParamByName('pDataInicio').AsDate := mDataInicio;
          tItens.ParamByName('pDataFim').AsDate    := mDataFim;
          //tItens.SQL.SaveToFile('c:\Temp\SINTEGRA_RGISTRO_75_Itens.SQL');
          tItens.Open;

          tCodigos.SQL.Clear;
          tCodigos.SQL.Add('SELECT DISTINCT Codigo_Mercadoria');
          tCodigos.SQL.Add('INTO #Temp');
          tCodigos.SQL.Add('FROM   NotasItens');
          tCodigos.SQL.Add('WHERE (Data BETWEEN :pDataInicio AND :pDataFim) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)');
          tCodigos.SQL.Add('UNION ALL');
          tCodigos.SQL.Add('SELECT DISTINCT Codigo_Mercadoria');
          tCodigos.SQL.Add('FROM   NotasTerceirosItens');
          tCodigos.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataInicio AND :pDataFim) AND (Tipo = ''NF'')');
          tCodigos.SQL.Add('AND   ISNULL((SELECT Servico FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal), '''') = '''' ');

          If cInventario.ItemIndex < 2 then begin
             tCodigos.SQL.Add('UNION ALL');
             tCodigos.SQL.Add('SELECT DISTINCT Codigo');
             tCodigos.SQL.Add('FROM   Inventario');
          End;

          tCodigos.SQL.Add('SELECT DISTINCT Codigo_Mercadoria FROM #Temp');
          tCodigos.ParamByName('pDataInicio').AsDate := mDataInicio;
          tCodigos.ParamByName('pDataFim').AsDate    := mDataFim;
          //tCodigos.SQL.SaveToFile('c:\temp\SINTEGRA_75_Codigos.SQL');
          tCodigos.Open;

          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tCodigos.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Montando registro tipo 75...';

          tCodigos.First;
          While not tCodigos.Eof do Begin
                tItens.Locate('Codigo_Mercadoria', tCodigos.FieldByName('Codigo_Mercadoria').AsInteger, [loCaseInsensitive]);

                Say(mLinha, 000, Arquivo, '75' );                                                                                                                       // 01 - Tipo do registro.
                Say(mLinha, 002, Arquivo, InttoStr(YearOf(mDataInicio)) );                                                                                              // 02
                Say(mLinha, 006, Arquivo, FormatFloat('00',MonthOf(mDataInicio)) );
                Say(mLinha, 008, Arquivo, FormatFloat('00',DayOf(mDataInicio)) );
                Say(mLinha, 010, Arquivo, InttoStr(YearOf(mDataFim)) );                                                                                                 // 03
                Say(mLinha, 014, Arquivo, FormatFloat('00',MonthOf(mDataFim)) );
                Say(mLinha, 016, Arquivo, FormatFloat('00',DayOf(mDataFim)) );                                                                                               
                Say(mLinha, 018, Arquivo, Copy(tCodigos.FieldByName('Codigo_Mercadoria').AsString,1,14) );                                                              // 04
                Say(mLinha, 032, Arquivo, tItens.FieldByName('NCM').AsString );                                                                                         // 05

                mDescricao := RemoveCaracter('<{'+Trim(tItens.FieldByName('Codigo_Mercadoria').AsString)+'}>', '', tItens.FieldByName('Descricao_Mercadoria').AsString);
                mDescricao := RemoveCaracter('#13', '', mDescricao);
                mDescricao := RemoveCaracter('#12', '', mDescricao);
                mDescricao := RemoveCaracter('#10', '', mDescricao);
                mDescricao := RemoveCaracterXML(mDescricao);
                mDescricao := Copy(mDescricao, 1, 53);

                Say(mLinha, 040, Arquivo, Trim(mDescricao) ) ;                                                                                                          // 06
                Say(mLinha, 093, Arquivo, Copy(tItens.FieldByName('Unidade_Medida').AsString,1,6) );                                                                    // 07

                mValor := FormatFloat('000.00',tItens.FieldByName('Aliquota_IPI').AsFloat);
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 099, Arquivo, mValor   ) ;                                                                                                                  // 08
                mValor := FormatFloat('00.00',tItens.FieldByName('Aliquota_ICMSOper').AsFloat);
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 104, Arquivo,  mValor   ) ;                                                                                                                 // 09

                mValor := FormatFloat('000.00',tItens.FieldByName('Aliquota_ICMSReducao').AsFloat);
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 108, Arquivo,  mValor   ) ;                                                                                                                 // 10

                mValor := FormatFloat('00000000000.00',tItens.FieldByName('Valor_BCICMSSub').AsCurrency );
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 113, Arquivo,  mValor   ) ;                                                                                                                 // 11 - Base de calculo do ICMS Substitutivo.

                tCodigos.Next;
                Inc(mLinha);
                Inc(mTotal75);
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 85: "Informações de Exportações".
          tMemorando.SQL.Clear;
          tMemorando.SQL.Add('SELECT MemorandoExportacao.*, ProcessosDocumentos.Tipo_Declaracao, ProcessosDocumentos.Natureza_Exportacao, ProcessosDocumentos.Pais,');
          tMemorando.SQL.Add('       ProcessosDocumentos.Data_DesembaracoDeclaracao AS Data_Desembaraco, ProcessosDocumentos.Tipo_Conhecimento,');
          tMemorando.SQL.Add('       NotasFiscais.Modelo, NotasFiscais.Serie');
          tMemorando.SQL.Add('FROM   MemorandoExportacao, ProcessosDocumentos, NotasFiscais');
          tMemorando.SQL.Add('WHERE  (MONTH(MemorandoExportacao.Data_Emissao) = :pMes) AND (YEAR(MemorandoExportacao.Data_Emissao) = :pAno)');
          tMemorando.SQL.Add('       AND (ProcessosDocumentos.Processo = MemorandoExportacao.Processo)');
          tMemorando.SQL.Add('       AND (NotasFiscais.Numero = MemorandoExportacao.NFSaida_Numero) AND (NotasFiscais.Data_Emissao = MemorandoExportacao.NFSaida_Data)');
          tMemorando.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tMemorando.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
          tMemorando.Open;

          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tMemorando.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Montando registro tipo 85...';

          tMemorando.First;
          While not tMemorando.Eof do Begin
                Say(mLinha, 000, Arquivo, '85' );                                                                              // 01.Tipo do registro.
                Say(mLinha, 002, Arquivo, tMemorando.FieldByName('DE_Numero').AsString  );                                     // 02.
                Say(mLinha, 013, Arquivo, PoeZero(4,YearOf(tMemorando.FieldByName('DE_Data').Value))+PoeZero(2, MonthOf(tMemorando.FieldByName('DE_Data').Value))+PoeZero(2, DayOf(tMemorando.FieldByName('DE_Data').Value))); // 03. Data da declaração.
                Say(mLinha, 021, Arquivo, tMemorando.FieldByName('Natureza_Exportacao').AsString );                            // 04.
                Say(mLinha, 022, Arquivo, tMemorando.FieldByName('RE_Numero').AsString );                                      // 05.
                Say(mLinha, 034, Arquivo, PoeZero(4,YearOf(tMemorando.FieldByName('RE_Data').Value))+PoeZero(2, MonthOf(tMemorando.FieldByName('RE_Data').Value))+PoeZero(2, DayOf(tMemorando.FieldByName('RE_Data').Value))); // 06.
                Say(mLinha, 042, Arquivo, tMemorando.FieldByName('CE_Numero').AsString );                                      // 07.
                Say(mLinha, 058, Arquivo, PoeZero(4,YearOf(tMemorando.FieldByName('CE_Data').Value))+PoeZero(2, MonthOf(tMemorando.FieldByName('CE_Data').Value))+PoeZero(2, DayOf(tMemorando.FieldByName('CE_Data').Value))); // 08.
                Say(mLinha, 066, Arquivo, tMemorando.FieldByName('Tipo_Conhecimento').AsString );                              // 09.
                Say(mLinha, 068, Arquivo, Copy(tMemorando.FieldByName('Pais').AsString,1,4) );                                 // 10.
                Say(mLinha, 072, Arquivo, '00000000');                                                                         // 11.
                Say(mLinha, 080, Arquivo, PoeZero(4,YearOf(tMemorando.FieldByName('CE_Data').Value))+PoeZero(2, MonthOf(tMemorando.FieldByName('CE_Data').Value))+PoeZero(2, DayOf(tMemorando.FieldByName('CE_Data').Value))); // 12.
                Say(mLinha, 088, Arquivo, PoeZero(6, tMemorando.FieldByName('NFSaida_Numero').Value) );                        // 13.
                Say(mLinha, 094, Arquivo, PoeZero(4,YearOf(tMemorando.FieldByName('NFSaida_Data').Value))+PoeZero(2, MonthOf(tMemorando.FieldByName('NFSaida_Data').Value))+PoeZero(2, DayOf(tMemorando.FieldByName('NFSaida_Data').Value))); // 14.
                Say(mLinha, 102, Arquivo, tMemorando.FieldByName('Modelo').AsString );                                         // 15.
                Say(mLinha, 104, Arquivo, tMemorando.FieldByName('Serie').AsString );                                          // 16.
                Say(mLinha, 107, Arquivo, Space(19) );                                                                         // 17.

                tMemorando.Next;
                Inc(mLinha);
                Inc(mTotal85);
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // REGISTRO 86: "Informações complementares de Exportações".
          tMemorando.SQL.Clear;
          tMemorando.SQL.Add('SELECT MemorandoExportacao.*, ProcessosDocumentos.RE_Numero, RE_DataAverbacao,');
          tMemorando.SQL.Add('       ProcessosDocumentos.Data_DesembaracoDeclaracao AS Data_Desembaraco, ProcessosDocumentos.Tipo_Conhecimento,');
          tMemorando.SQL.Add('       NotasFiscais.Modelo, NotasFiscais.Serie,');
          tMemorando.SQL.Add('       NotasItens.Codigo_Mercadoria, NotasItens.Quantidade, NotasItens.Valor_Unitario, NotasItens.Valor_Total');
          tMemorando.SQL.Add('FROM   MemorandoExportacao, ProcessosDocumentos, NotasFiscais, NotasItens');
          tMemorando.SQL.Add('WHERE  (MONTH(MemorandoExportacao.Data_Emissao) = :pMes) AND (YEAR(MemorandoExportacao.Data_Emissao) = :pAno)');
          tMemorando.SQL.Add('       AND (ProcessosDocumentos.Processo = MemorandoExportacao.Processo)');
          tMemorando.SQL.Add('       AND (NotasFiscais.Numero = MemorandoExportacao.NFSaida_Numero) AND (NotasFiscais.Data_Emissao = MemorandoExportacao.NFSaida_Data)');
          tMemorando.SQL.Add('       AND (NotasItens.Nota = MemorandoExportacao.NFSaida_Numero) AND (NotasItens.Data = MemorandoExportacao.NFSaida_Data)');
          tMemorando.ParamByName('pAno').AsInteger := cAno.AsInteger;
          tMemorando.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
          tMemorando.Open;

          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tMemorando.RecordCount;
          Janela_Processamento.lProcesso.Caption  := 'Montando registro tipo 85...';

          tMemorando.First;
          While not tMemorando.Eof do Begin
                Say(mLinha, 000, Arquivo, '86' );                                                                              // 01 - Tipo do registro.
                Say(mLinha, 002, Arquivo, Copy(tMemorando.FieldByName('RE_Numero').AsString,1,12)  );                          // 02.
                Say(mLinha, 014, Arquivo, InttoStr(YearOf(tMemorando.FieldByName('RE_DataAverbacao').AsDateTime )) );          // 03.
                Say(mLinha, 018, Arquivo, FormatFloat('00',MonthOf(tMemorando.FieldByName('RE_DataAverbacao').AsDateTime )) ); // 03.
                Say(mLinha, 020, Arquivo, FormatFloat('00',DayOf(tMemorando.FieldByName('RE_DataAverbacao').AsDateTime )) );   // 03.
                Say(mLinha, 022, Arquivo, tMemorando.FieldByName('Fornecedor_CNPJ').AsString );                                // 04.
                Say(mLinha, 036, Arquivo, tMemorando.FieldByName('Fornecedor_Inscricao').AsString );                           // 05.
                Say(mLinha, 050, Arquivo, tMemorando.FieldByName('Fornecedor_Estado').AsString );                              // 06. 
                Say(mLinha, 052, Arquivo, tMemorando.FieldByName('NFSaida_Numero').AsString );                                 // 07.
                Say(mLinha, 058, Arquivo, InttoStr(YearOf(tMemorando.FieldByName('NFSaida_Data').AsDateTime)) );               // 08.
                Say(mLinha, 062, Arquivo, FormatFloat('00',MonthOf(tMemorando.FieldByName('NFSaida_Data').AsDateTime )) );     // 08.
                Say(mLinha, 064, Arquivo, FormatFloat('00',DayOf(tMemorando.FieldByName('NFSaida_Data').AsDateTime )) );       // 08.
                Say(mLinha, 066, Arquivo, tMemorando.FieldByName('Modelo').AsString );                                         // 09.
                Say(mLinha, 068, Arquivo, tMemorando.FieldByName('Serie').AsString );                                          // 10.
                Say(mLinha, 071, Arquivo, tMemorando.FieldByName('Codigo_Mercadoria').AsString );                              // 11.

                mValor := FormatFloat('00000000.000',tMemorando.FieldByName('Quantidade').AsFloat );
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 085, Arquivo,  mValor   ) ;                                                                        // 12 - Quantidade do produto.

                mValor := FormatFloat('0000000000.00',tMemorando.FieldByName('Valor_Unitario').AsCurrency );
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 096, Arquivo,  mValor   ) ;                                                                        // 13.

                mValor := FormatFloat('0000000000.00',tMemorando.FieldByName('Valor_Total').AsCurrency );
                mValor := RemoveCaracter('.','', mValor);
                mValor := RemoveCaracter(',','', mValor);
                Say(mLinha, 108, Arquivo,  mValor   ) ;                                                                        // 14.
                Say(mLinha, 120, Arquivo,  '2' ) ;                                                                             // 15.

                tMemorando.Next;
                Inc(mLinha);
                Inc(mTotal86);
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          Registro90;
     End;
end;

// REGISTRO 90: "Totalização do Aquivo".
procedure TUtilitarios_ExportaSintegra.Registro90;
begin
     With Dados do begin
          Janela_Processamento.lProcesso.Caption  := 'Montando o registro tipo 90...Totalização';

          Say(mLinha, 000, Arquivo, '90' );  // 01 - Tipo do registro.
          Say(mLinha, 002, Arquivo, FormatMaskText('00000000000000', EmpresasCNPJ.Value) ); // 02
          Say(mLinha, 016, Arquivo, Copy( EmpresasIE.Value,1,14) );                         // 03
          mColuna := 30;
          If mTotal50 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '50' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal50) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal51 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '51' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal51) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal53 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '53' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal53) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal54 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '54' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal54) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal56 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '56' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal56) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal70 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '70' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal70) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal74 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '74' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal74) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal75 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '75' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal75) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal85 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '85' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal85) );  // 05
             Inc(mColuna, 10)
          End;
          If mTotal86 <> 0 then begin
             Say(mLinha, mColuna  , Arquivo, '86' );  // 04
             Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal86) );  // 05
             Inc(mColuna, 10)
          End;

          Say(mLinha, mColuna  , Arquivo, '99' );     // 06
          Say(mLinha, mColuna+2, Arquivo, FormatFloat('00000000', mTotal50+mTotal51+mTotal53+mTotal54+mTotal56+mTotal70+mTotal74+mTotal75+mTotal85+mTotal86+3) );  // 06
          Inc(mColuna, 10);
          Say(mLinha, mColuna, Arquivo, Replicate(' ', (125 - mColuna)) );
          Say(mLinha, 125, Arquivo, '1' );            // 06
     End;

     CloseFile(Arquivo);
     Janela_Processamento.Close;

     Screen.Cursor     := crDefault;
     bSintegra.Enabled := True;
     ShowMessage('Arquivo de exportação para o SINTEGRA gerado em '+ mNomeArq );
end;

procedure TUtilitarios_ExportaSintegra.bSintegraClick(Sender: TObject);
Var
    mValidador : ansiString;
begin
      mValidador := Dados.ConfiguracaoPasta_SINTEGRA.Value + '\ValidadorSintegra2009.exe';
      WinExec( PAnsiChar(mValidador), SW_SHOWNORMAL );
end;

procedure TUtilitarios_ExportaSintegra.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('SINTEGRA', 'Identificacao'   ,cIdentificacao.ItemIndex );
      aINI.WriteInteger('SINTEGRA', 'Codigo_Natureza' ,cCodigoNatureza.ItemIndex );
      aINI.WriteInteger('SINTEGRA', 'Tipo_Arquivo'    ,cTipoArquivo.ItemIndex );
      aINI.WriteInteger('SINTEGRA', 'Mes'             ,cMes.ItemIndex );
      aINI.WriteInteger('SINTEGRA', 'Ano'             ,cAno.AsInteger );
      aINI.WriteInteger('SINTEGRA', 'Inventario'      ,cInventario.ItemIndex);
      aINI.WriteString ('SINTEGRA', 'Arquivo'         ,cNomeArquivo.Text );
      aINI.Free;

      LimpaMemoria;
      Utilitarios_ExportaSINTEGRA.Release;
      Utilitarios_ExportaSINTEGRA := nil;
end;

procedure TUtilitarios_ExportaSintegra.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
end;


end.
