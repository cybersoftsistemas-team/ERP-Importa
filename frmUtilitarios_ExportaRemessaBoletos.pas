unit frmUtilitarios_ExportaRemessaBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, RXCtrls, Funcoes, IniFiles, DateUtils, Mask, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TUtilitarios_ExportaRemessaBoletos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    tBoletos: TMSQuery;
    cBanco: TDBLookupComboBox;
    StaticText6: TStaticText;
    cDataIni: TDateEdit;
    StaticText7: TStaticText;
    cDataFim: TDateEdit;
    cNomeArquivo: TEdit;
    tRemessa: TMSQuery;
    StaticText2: TStaticText;
    cRemessa: TCurrencyEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Grade: TDBGrid;
    bSelTodos: TButton;
    bDesTodos: TButton;
    cTeste: TCheckBox;
    cFiltro: TRadioGroup;
    ttmp: TMSQuery;
    tEnvio: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cBancoExit(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradeCellClick(Column: TColumn);
    procedure bSelTodosClick(Sender: TObject);
    procedure bDesTodosClick(Sender: TObject);
    procedure cFiltroClick(Sender: TObject);
    procedure GradeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha    : Integer;
    Arquivo   : TextFile;
    mNomeArq,
    mpasta    : String;
    mSequencia: Integer;
    mLote     : Integer;
    mRegLote  : Integer;
  end;

var
  Utilitarios_ExportaRemessaBoletos: TUtilitarios_ExportaRemessaBoletos;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitarios_ExportaRemessaBoletos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitarios_ExportaRemessaBoletos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaRemessaBoletos.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cBanco.KeyValue := aINI.ReadInteger('REMESSAO_BANCO_BOLETOS', 'Banco'  , -1 );
      cDataIni.Date   := aINI.ReadDate   ('REMESSAO_BANCO_BOLETOS', 'DataIni', Date );
      cDataFim.Date   := aINI.ReadDate   ('REMESSAO_BANCO_BOLETOS', 'DataFim', Date );
      cTeste.Checked  := aINI.ReadBool   ('REMESSAO_BANCO_BOLETOS', 'Teste'  , true );
      aINI.Free;

      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
           Clientes.Open;

           Configuracao.Open;

           cFiltro.ItemIndex := 0;
           cRemessa.Value := BancosBoletos_Remessa.Value;
      End;
      cNomeArquivo.Text := 'Remessa_'+Trim(Dados.BancosNome.AsString)+'_'+RemoveCaracter('/','',DatetoStr(Date))+'.txt';
end;

procedure TUtilitarios_ExportaRemessaBoletos.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('REMESSAO_BANCO_BOLETOS', 'Banco'  , iif(cBanco.Text <> '', cBanco.KeyValue, -1));
      aINI.WriteDate   ('REMESSAO_BANCO_BOLETOS', 'DataIni', cDataIni.Date );
      aINI.WriteDate   ('REMESSAO_BANCO_BOLETOS', 'DataFim', cDataFim.Date );
      aINI.WriteBool   ('REMESSAO_BANCO_BOLETOS', 'Teste'  , cTeste.Checked );
      aINI.Free;

      Utilitarios_ExportaRemessaBoletos.Release;
      Utilitarios_ExportaRemessaBoletos := nil;
end;

procedure TUtilitarios_ExportaRemessaBoletos.cBancoExit(Sender: TObject);
begin
      cRemessa.Value := Dados.BancosBoletos_Remessa.Value;
      cFiltroClick(Self);
end;

procedure TUtilitarios_ExportaRemessaBoletos.bGerarClick(Sender: TObject);
Var
    mAgencia,
    mDigitoAG,
    mConta,
    mDigitoCC,
    mIdentif,
    mDigitoNN,
    mDataVenc,
    mIdentTipo,
    mCPFCNPJ,
    mEndereco,
    mNomeEmp,
    mNomeBanco,
    mDtMul,
    mDataEmi: String;
    mItem: Integer;
    mTotal: Real;
    mTrayler:boolean;
    mDataMulta: TDate;
begin
     mTotal   := 0;
     mTrayler := true;
     With Dados do begin
          with tBoletos do begin
               SQL.Clear;
               SQL.Add('SELECT Boletos.*,');
               If not Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
                  SQL.Add('       (SELECT Conta        FROM Bancos WHERE(Codigo = Boletos.Banco)) AS Conta,');
                  SQL.Add('       (SELECT Numero_Banco FROM Bancos WHERE(Codigo = Boletos.Banco)) AS Numero_Banco,');
                  SQL.Add('       (SELECT Nome         FROM Bancos WHERE(Codigo = Boletos.Banco)) AS Nome_Banco,');
                  SQL.Add('       (SELECT LTRIM(RTRIM(Agencia))+LTRIM(RTRIM(Digito_Ag)) FROM Bancos WHERE(Codigo = Boletos.Banco)) AS Agencia_Banco');
               end else begin
                  SQL.Add('       (SELECT Conta        FROM Cybersoft_Cadastros.dbo.Bancos WHERE(Codigo = Boletos.Banco)) AS Conta,');
                  SQL.Add('       (SELECT Numero_Banco FROM Cybersoft_Cadastros.dbo.Bancos WHERE(Codigo = Boletos.Banco)) AS Numero_Banco,');
                  SQL.Add('       (SELECT Nome         FROM Cybersoft_Cadastros.dbo.Bancos WHERE(Codigo = Boletos.Banco)) AS Nome_Banco,');
                  SQL.Add('       (SELECT LTRIM(RTRIM(Agencia))+LTRIM(RTRIM(Digito_Ag)) FROM Cybersoft_Cadastros.dbo.Bancos WHERE(Codigo = Boletos.Banco)) AS Agencia_Banco');
               End;
               SQL.Add('FROM   Boletos');
               SQL.Add('WHERE  Seleciona = 1');
               SQL.Add('AND    Registro IS NOT NULL');
               SQL.Add('AND    Banco = :pBanco');
               SQL.Add('AND    Data_Emissao BETWEEN :pDataIni AND :pDataFim');
               SQL.Add('AND    ISNULL(Cancelado, 0) <> 1');
               ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
               ParamByName('pDataIni').AsDate  := cDataIni.Date;
               ParamByName('pDataFim').AsDate  := cDataFim.Date;
               //SQL.SaveToFile('c:\temp\Remessa_Boletos.sql');
               Open;
          end;

          If tBoletos.RecordCount = 0 then begin
             MessageDlg('Não existem boletos no período informado para gerar arquivo de remessa.'+#13+#13+'Arquivo não será gerado!', mtError, [mbOK], 0);
             Abort;
          End;
          If Trim(BancosAgencia.AsString) = '' then begin
             MessageDlg('É necessário informar o número da agência no cadastro do banco.'+#13+#13+'Arquivo não será gerado!', mtError, [mbOK], 0);
             Abort;
          End;
          If Trim(BancosNumero_Banco.AsString) = '' then begin
             MessageDlg('É necessário informar o número do banco no cadastro do banco.'+#13+#13+'Arquivo não será gerado!', mtError, [mbOK], 0);
             Abort;
          End;
          If Trim(BancosDigito.AsString) = '' then begin
             MessageDlg('É necessário informar o digito do número do banco no cadastro do banco.'+#13+#13+'Arquivo não será gerado!', mtError, [mbOK], 0);
             Abort;
          End;
          if Bancos.FieldByName('Empresa').AsInteger <> 0 then begin
             with tTmp do begin
                  sql.clear;
                  sql.Add('select Razao_Social, Numero_Filial, Matriz_Filial from cybersoft_Cadastros.dbo.Empresas where Codigo = :pCod');
                  parambyname('pCod').AsInteger := Bancos.FieldByName('Empresa').AsInteger;
                  open;
              
                  mNomeEmp   := RemoveCaracter('\', '-', fieldbyname('Razao_Social').AsString);
                  mNomeEmp   := RemoveCaracter('/', '-', mNomeEmp);
                  mNomeEmp   := Trim(RemoveCaracter('.', '', mNomeEmp));
                  mNomeBanco := RemoveCaracter('\', '-', trim(BancosNome.AsString));
                  mNomeBanco := RemoveCaracter('/', '-', mNomebanco);
              
                  mPasta := Trim(ConfiguracaoPasta_Boleto.Value) + '\'+mNomeEmp + iif(fieldbyname('Matriz_Filial').AsBoolean, '_Matriz', '_Filial'+PoeZero(2, fieldbyname('Numero_Filial').AsInteger));
                  mPasta := mPasta + iif(ConfiguracaoSeparar_BoletoBanco.AsBoolean, '\'+mNomeBanco, '');
                  mPasta := mPasta + iif(ConfiguracaoSeparar_BoletoData.AsBoolean, '\'+ RemoveCaracter('/', '-', DateToStr(date)), '');
             end;    
          end else begin
             mNomeEmp   := RemoveCaracter('\', '-', EmpresasRazao_Social.AsString);
             mNomeEmp   := RemoveCaracter('/', '-', mNomeEmp);
             mNomeEmp   := Trim(RemoveCaracter('.', '', mNomeEmp));
             mNomeBanco := RemoveCaracter('\', '-', BancosNome.AsString);
             mNomeBanco := RemoveCaracter('/', '-', mNomebanco);

             mPasta := Trim(ConfiguracaoPasta_Boleto.Value) + '\'+mNomeEmp + iif(EmpresasMatriz_Filial.AsBoolean, '_Matriz', '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger));
             mPasta := mPasta + iif(ConfiguracaoSeparar_BoletoBanco.AsBoolean, '\'+mNomeBanco, '');
             mPasta := mPasta + iif(ConfiguracaoSeparar_BoletoData.AsBoolean, '\'+ RemoveCaracter('/', '-', DateToStr(date)), '');
          end;

          with tEnvio do begin
               sql.Clear;
               sql.Add('select isnull(max(Numero_Envio), 0)+1 as Envio from Boletos');
               open;
          end;

          If not DirectoryExists(mPasta) then ForceDirectories(mPasta);

          if BancosNome_Remessa.AsString = '' then begin
             mNomeArq := mPasta + '\'+ 'CB'+PoeZero(2, DayOf(Date))+PoeZero(2, MonthOf(Date))+cRemessa.Text+'E'+tEnvio.FieldByName('Envio').asstring;
          end else begin
             mNomeArq := mPasta + '\'+ BancosNome_Remessa.AsString+'E'+tEnvio.FieldByName('Envio').asstring;
          end;
          If cTeste.Checked = true then
             mNomeArq := mNomeArq + '.TST'
          else
             mNomeArq := mNomeArq + '.REM';

          If FileExists(mNomeArq) then DeleteFile(mNomeArq);
          AssignFile(Arquivo, mNomeArq);
          ReWrite(Arquivo);

          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.lProcesso.Caption  := 'Gerando o arquivo de remessa do '+Trim(BancosNome.AsString)+'...';
          Janela_Processamento.Progresso.Max      := tBoletos.RecordCount;
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Show;

          LinhaAtual  := 0;
          ColunaAtual := 0;
          mLinha      := 0;
          mSequencia  := 1;
          mLote       := 1;
          mRegLote    := 1;
          mConta      := ApenasNumeros(Copy(tBoletos.FieldByName('Conta').AsString, 1, Length(tBoletos.FieldByName('Conta').AsString)-1));
          mAgencia    := ApenasNumeros(Copy(tBoletos.FieldByName('Agencia_Banco').AsString, 1, Length(tBoletos.FieldByName('Agencia_Banco').AsString)-1));
          mDigitoAG   := Copy(tBoletos.FieldByName('Agencia_Banco').AsString, Length(tBoletos.FieldByName('Agencia_Banco').AsString), 1);
          mDigitoCC   := Copy(tBoletos.FieldByName('Conta').AsString, Length(tBoletos.FieldByName('Conta').AsString), 1);
          mItem       := 1;

          //===========================================================================[ BRADESCO ]=======================================================================================
          If BancosNumero_Banco.AsInteger = 237 then begin
             //mIdentif    := '0' + PoeZero(3, BancosCarteira.AsInteger) + PoeZero(5, StrtoInt(mAgencia)) + PoeZero(7, StrtoInt(mConta)) + mDigitoCC;
             //-------------------------> Registro Header do Arquivo (Inicio).
             Say( mLinha, 000, Arquivo, '0' );                                                                                             // Identificação do Registro.
             Say( mLinha, 001, Arquivo, '1' );                                                                                             // Identificação do Arquivo Remessa.
             Say( mLinha, 002, Arquivo, 'REMESSA' );                                                                                       // Literal Remessa.
             Say( mLinha, 009, Arquivo, '01' );                                                                                            // Código de Serviço.
             Say( mLinha, 011, Arquivo, 'COBRANCA' );                                                                                      // Literal Serviço.
             Say( mLinha, 026, Arquivo, PoeZero(20, StrtoInt(trim(Bancos.FieldByName('Convenio').AsString))));                             // Código da Empresa.
             if Bancos.FieldByName('Empresa').AsInteger = 0 then begin
                Say( mLinha, 046, Arquivo, Copy(Empresas.FieldByName('Razao_Social').AsString, 1, 30) );                                   // Nome da Empresa.
             end else begin   
                Say( mLinha, 046, Arquivo, Copy(tTmp.FieldByName('Razao_Social').AsString, 1, 30) );                                       // Nome da Empresa.
             end;
             Say( mLinha, 076, Arquivo, Bancos.FieldByName('Numero_Banco').AsString);                                                      // Número do Bradesco na Câmara de Compensação.
             Say( mLinha, 079, Arquivo, Trim(BancosNome_Remessa.AsString));                                                                // Nome do Banco por Extenso.
             Say( mLinha, 094, Arquivo, PoeZero(2, DayOf(Date))+PoeZero(2, MonthOf(Date))+Copy(PoeZero(4, YearOf(Date)), 3, 2));           // Data da Gravação do Arquivo.
             Say( mLinha, 100, Arquivo, '' );                                                                                              // Branco.
             Say( mLinha, 108, Arquivo, 'MX' );                                                                                            // Identificação do Sistema.
             Say( mLinha, 110, Arquivo, PoeZero(7, cRemessa.AsInteger) );                                                                  // Nº Seqüencial de Remessa.
             Say( mLinha, 117, Arquivo, '' );                                                                                              // Branco.
             Say( mLinha, 394, Arquivo, PoeZero(6, mItem) );                                                                               // Nº Seqüencial do Registro de Um em Um.
             Inc(mLinha);

             // Registro de Transação - Tipo 1 (Inicio).
             tBoletos.First;
             While not tBoletos.Eof do begin
                   mIdentif  := '0' + PoeZero(3, tBoletos.FieldByName('Carteira').AsInteger) + PoeZero(5, StrtoInt(mAgencia)) + PoeZero(7, StrtoInt(mConta)) + mDigitoCC;
                   //mDigitoNN := Modulo11P( PoeZero(2, Bancos.FieldByName('Carteira').AsInteger) + StrZero(Copy(tBoletos.FieldByName('Numero_Documento').AsString, 1, 11), 11), 7 );
                   mDigitoNN := Modulo11P( PoeZero(2, tBoletos.FieldByName('Carteira').AsInteger) + StrZero(Copy(tBoletos.FieldByName('Numero_Documento').AsString, 1, 11), 11), 7 );
                   mDataVenc := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Vencimento').Value)), 3, 2);
                   mDataEmi  := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Emissao').Value)), 3, 2);
                                
                   Clientes.Locate('Codigo', tBoletos.FieldByName('Sacado').AsInteger, [loCaseInsensitive]);

                   If Trim(Clientes.FieldByName('CPF').AsString)  <> '' then begin
                      mIdentTipo := '01';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CPF').AsString);
                   End;
                   If Trim(Clientes.FieldByName('CNPJ').AsString) <> '' then begin
                      mIdentTipo := '02';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CNPJ').AsString);
                   End;

                   mEndereco := UpperCase(Trim(ClientesRua.AsString)+', '+Trim(ClientesRua_Numero.AsString));

                   Inc(mItem);

                   Say( mLinha, 000, Arquivo, '1' );                                                                                                    // Identificação do Registro.
                   Say( mLinha, 001, Arquivo, '00000' );                                                                                                // Agência de Débito.
                   Say( mLinha, 006, Arquivo, '0' );                                                                                                    // Dígito da Agência de Débito.
                   Say( mLinha, 007, Arquivo, '00000' );                                                                                                // Razão da Conta Corrente.
                   Say( mLinha, 012, Arquivo, '0000000' );                                                                                              // Conta corrente.
                   Say( mLinha, 019, Arquivo, '0' );                                                                                                    // Digito da conta corrente.
                   Say( mLinha, 020, Arquivo, mIdentif );                                                                                               // Identificação da Empresa.
                   Say( mLinha, 037, Arquivo, tBoletos.FieldByName('Sacado').AsString );                                                                // Número de controle do Participante.
                   Say( mLinha, 062, Arquivo, '000' );                                                                                                  // Código do Banco a ser debitado na Câmara de Compensação.

                   If tBoletos.FieldByName('Percentual_Multa').AsFloat = 0 then
                      Say( mLinha, 065, Arquivo, '0' )                                                                                                  // Campo de Multa "Se 0 não consider percentual / Se 2 Considerar.
                   else
                      Say( mLinha, 065, Arquivo, '2' );

                   Say( mLinha, 066, Arquivo, StrZero(ApenasNumeros(FormatFloat('##0.00',tBoletos.FieldByName('Percentual_Multa').AsCurrency)), 4) );   // Percentual de Multa.
                   Say( mLinha, 070, Arquivo, PoeZero(11, tBoletos.FieldByName('Numero_Documento').AsInteger) );                                        // Identificação do  título no banco.
                   Say( mLinha, 081, Arquivo, mDigitoNN );                                                                                              // Digito de Auto Conferência do Nosso Número.
                   Say( mLinha, 082, Arquivo, '0000000000' );                                                                                           // Desconto Bonificação por dia.
                   Say( mLinha, 092, Arquivo, '2' );                                                                                                    // Condição para Emissão da Papeleta de Cobrança.
                   Say( mLinha, 093, Arquivo, 'N' );                                                                                                    // Ident. se emite papeleta para Débito Automático.
                   Say( mLinha, 108, Arquivo, '01' );                                                                                                   // Identificação ocorrência.
                   Say( mLinha, 110, Arquivo, PoeZero(10, tBoletos.FieldByName('Numero_Documento').AsInteger) );                                        // Número do documento.
                   Say( mLinha, 120, Arquivo, mDataVenc );                                                                                              // Data do Vencimento do Título.
                   Say( mLinha, 126, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_Documento').AsCurrency)), 13) ); // Valor do Título.
                   Say( mLinha, 139, Arquivo, '00000000' );                                                                                             // Banco Encarregado da Cobrança.

                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Duplicata Mercantil' then
                      Say( mLinha, 147, Arquivo, '01' );                                                                                                // Espécie de Título.
                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Nota Promissória' then
                      Say( mLinha, 147, Arquivo, '02' );

                   If (tBoletos.FieldByName('Especie_Documento').AsString <> 'Duplicata Mercantil')
                      and (tBoletos.FieldByName('Especie_Documento').AsString <> 'Nota Promissória') then begin
                      Say( mLinha, 147, Arquivo, '01' );
                   End;

                   Say( mLinha, 149, Arquivo, tBoletos.FieldByName('Aceite_Documento').AsString );                                                      // Identificação.
                   Say( mLinha, 150, Arquivo, mDataEmi );                                                                                               // Data da emissão do Título.
                   Say( mLinha, 156, Arquivo, Trim(ConfiguracaoBoleto_InstrucaoCod.Value));                                                             // 20 1ª Instrução.
                   Say( mLinha, 158, Arquivo, Trim(ConfiguracaoBoleto_InstrucaoCod2.Value));                                                            // 20 2ª Instrução.
                   Say( mLinha, 160, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_JurosDia').AsCurrency)), 13) );  // Valor a ser cobrado por Dia de Atraso.
                   Say( mLinha, 173, Arquivo, Replicate('0', 06) );                                                                                     // Data Limite P/Concessão de Desconto.
                   Say( mLinha, 179, Arquivo, Replicate('0', 13) );                                                                                     // Valor do Desconto.
                   Say( mLinha, 192, Arquivo, Replicate('0', 13) );                                                                                     // Valor do IOF.
                   Say( mLinha, 205, Arquivo, Replicate('0', 13) );                                                                                     // Valor do Abatimento a ser concedido ou cancelado.
                   Say( mLinha, 218, Arquivo, mIdentTipo );                                                                                             // Identificação do Tipo de Inscrição do Sacado.
                   Say( mLinha, 220, Arquivo, mCPFCNPJ );                                                                                               // Nº Inscrição do Sacado.
                   Say( mLinha, 234, Arquivo, UpperCase(Copy(Clientes.FieldByName('Nome').AsString, 1, 40)) );                                          // Nome do Sacado.
                   Say( mLinha, 274, Arquivo, Copy(mEndereco, 1,40) );                                                                                  // Endereço do Sacado.
                   Say( mLinha, 326, Arquivo, Trim(Clientes.FieldByName('CEP').AsString) );                                                             // CEP do Sacado.
                   Say( mLinha, 394, Arquivo, PoeZero(6, mItem) );                                                                                      // Nº Seqüencial do Registro de Um em Um.

                   Inc(mLinha);

                   tBoletos.Next;
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;
             End;
          End;

          //[==============================================================================[ BANCO DO BRASIL ]===========================================================================]
          // CNAB 400.
          If (BancosNumero_Banco.AsInteger = 1) then begin
             //-------------------------> Registro Header do Arquivo (Inicio).
             Say( mLinha, 000, Arquivo, '0' );                                                                                             
             Say( mLinha, 001, Arquivo, '1' );                                                                                             
             Say( mLinha, 002, Arquivo, iif(not cTeste.Checked, 'REMESSA', 'TESTE') );
             Say( mLinha, 009, Arquivo, '01' );
             Say( mLinha, 011, Arquivo, 'COBRANCA' );
             Say( mLinha, 026, Arquivo, PoeZero(4, Strtoint(mAgencia)));
             Say( mLinha, 030, Arquivo, Trim(BancosDigito_Ag.AsString));
             Say( mLinha, 031, Arquivo, PoeZero(8, strtoint(mConta)));
             Say( mLinha, 039, Arquivo, mDigitoCC);                     // 07 DÍGITO DE AUTO CONFERÊNCIA AG/CONTA EMPRESA.
             Say( mLinha, 040, Arquivo, '000000');                      // 07 DÍGITO DE AUTO CONFERÊNCIA AG/CONTA EMPRESA.
             if Bancos.FieldByName('Empresa').AsInteger = 0 then begin
                Say( mLinha, 046, Arquivo, Copy(Empresas.FieldByName('Razao_Social').AsString, 1, 30) );
             end else begin
                Say( mLinha, 046, Arquivo, Copy(tTmp.FieldByName('Razao_Social').AsString, 1, 30) );
             end;
             Say( mLinha, 076, Arquivo, PoeZero(3, Bancos.FieldByName('Numero_Banco').AsInteger)+'BANCODOBRASIL');
             Say( mLinha, 094, Arquivo, PoeZero(2, DayOf(Date))+PoeZero(2, MonthOf(Date))+Copy(PoeZero(4, YearOf(Date)), 3, 2) );
             Say( mLinha, 100, Arquivo, PoeZero(7, tBoletos.FieldByName('Numero_Remessa').AsInteger) );
             Say( mLinha, 129, Arquivo, PoeZero(7, strtoInt(trim(Bancos.FieldByName('Convenio').AsString))) );
             Say( mLinha, 394, Arquivo, '000001' );
             Inc(mLinha);

             // Registro de Transação - Tipo 7 (Inicio).
             tBoletos.First;
             While not tBoletos.Eof do begin
                   mDataVenc := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Vencimento').Value)), 3, 2);
                   mDataEmi  := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Emissao').Value)), 3, 2);

                   Clientes.Locate('Codigo', tBoletos.FieldByName('Sacado').AsInteger, [loCaseInsensitive]);

                   Municipios.SQL.Clear;
                   Municipios.SQL.Add('SELECT * FROM Municipios WHERE Codigo = :pCodigo');
                   Municipios.ParamByName('pCodigo').AsInteger := ClientesMunicipio_Codigo.AsInteger;
                   Municipios.Open;

                   If Trim(Clientes.FieldByName('CPF').AsString) <> '' then begin
                      mIdentTipo := '01';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CPF').AsString);
                   End;
                   If Trim(Clientes.FieldByName('CNPJ').AsString) <> '' then begin
                      mIdentTipo := '02';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CNPJ').AsString);
                   End;

                   mEndereco := UpperCase(Trim(ClientesRua.AsString)+', '+Trim(ClientesRua_Numero.AsString));

                   Inc(mItem);

                   Say( mLinha, 000, Arquivo, '7' );
                   Say( mLinha, 001, Arquivo, '02' );
                   Say( mLinha, 003, Arquivo, EmpresasCNPJ.AsString );
                   Say( mLinha, 017, Arquivo, PoeZero(4, Strtoint(mAgencia)));
                   Say( mLinha, 021, Arquivo, Trim(BancosDigito_Ag.AsString));
                   Say( mLinha, 022, Arquivo, PoeZero(8, StrtoInt(mConta)));
                   Say( mLinha, 030, Arquivo, mDigitoCC);                                                                                               
                   Say( mLinha, 031, Arquivo, PoeZero(7, StrtoInt(Trim(Bancos.FieldByName('Convenio').AsString))));
                   Say( mLinha, 063, Arquivo, StringOfChar('0', 17-Length(trim(ApenasNumeros(tBoletos.FieldByName('Nosso_Numero').AsString))))+trim(ApenasNumeros(tBoletos.FieldByName('Nosso_Numero').AsString)) );
                   Say( mLinha, 080, Arquivo, '00' );
                   Say( mLinha, 082, Arquivo, '00' );
                   Say( mLinha, 091, Arquivo, Trim(Bancos.FieldByName('Variacao_Carteira').AsString) );
                   Say( mLinha, 094, Arquivo, '0' );
                   Say( mLinha, 095, Arquivo, '000000' );
                   Say( mLinha, 106, Arquivo, Trim(tBoletos.FieldByName('Carteira').AsString) );
                   Say( mLinha, 108, Arquivo, '01');
                   Say( mLinha, 110, Arquivo, PoeZero(10, tBoletos.FieldByName('Numero_Documento').value) );
                   Say( mLinha, 120, Arquivo, mDataVenc );
                   Say( mLinha, 126, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_Documento').AsCurrency)), 13));
                   Say( mLinha, 139, Arquivo, '001' );
                   Say( mLinha, 142, Arquivo, '0000');
                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Duplicata Mercantil' then
                      Say( mLinha, 147, Arquivo, '01' );
                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Nota Promissória' then
                      Say( mLinha, 147, Arquivo, '02' );
                   If (tBoletos.FieldByName('Especie_Documento').AsString <> 'Duplicata Mercantil')
                      and (tBoletos.FieldByName('Especie_Documento').AsString <> 'Nota Promissória') then begin
                      Say( mLinha, 147, Arquivo, '01' );
                   End;

                   Say( mLinha, 149, Arquivo, tBoletos.FieldByName('Aceite_Documento').AsString );
                   Say( mLinha, 150, Arquivo, mDataEmi );
                   Say( mLinha, 156, Arquivo, iif(Trim(ConfiguracaoBoleto_InstrucaoCod.AsString)  = '', '00', Trim(strZero(ConfiguracaoBoleto_InstrucaoCod.asString,2))));
                   Say( mLinha, 158, Arquivo, iif(Trim(ConfiguracaoBoleto_InstrucaoCod2.AsString) = '', '00', Trim(ConfiguracaoBoleto_InstrucaoCod2.asString)));
                   Say( mLinha, 160, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_JurosDia').AsCurrency)), 13) );  // Valor a ser cobrado por Dia de Atraso.
                   Say( mLinha, 173, Arquivo, Replicate('0', 06) );                                                                                     // Data Limite P/Concessão de Desconto.
                   Say( mLinha, 179, Arquivo, Replicate('0', 13) );                                                                                     // Valor do Desconto.
                   Say( mLinha, 192, Arquivo, Replicate('0', 13) );                                                                                     // Valor do IOF.
                   Say( mLinha, 205, Arquivo, Replicate('0', 13) );                                                                                     // Valor do Abatimento a ser concedido ou cancelado.
                   Say( mLinha, 218, Arquivo, mIdentTipo );
                   Say( mLinha, 220, Arquivo, StringOfChar('0', 14-Length(mCPFCNPJ))+Trim(mCPFCNPJ) );
                   Say( mLinha, 234, Arquivo, RemoveAcentos(UpperCase(Copy(Clientes.FieldByName('Nome').AsString, 1, 37))) );
                   Say( mLinha, 274, Arquivo, Copy(mEndereco, 1,40) );
                   Say( mLinha, 314, Arquivo, RemoveAcentos(Copy(Clientes.FieldByName('Bairro').AsString, 1, 12)) );
                   Say( mLinha, 326, Arquivo, Trim(Clientes.FieldByName('CEP').AsString) );
                   Say( mLinha, 334, Arquivo, RemoveAcentos(Copy(Municipios.FieldByName('Nome').AsString,1, 15)) );
                   Say( mLinha, 350, Arquivo, RemoveAcentos(Trim(Clientes.FieldByName('Estado').AsString)) );
                   Say( mLinha, 391, Arquivo, FormatFloat('00',ConfiguracaoBoleto_ProtestoDias.AsInteger) );
                   Say( mLinha, 394, Arquivo, PoeZero(6, mItem) );
                   inc(mLinha);

                   // Registro Detalhe Tipo 5 – Multa/Prazo Limite de Recebimento – Opcional – Remessa
                   if Trim(ConfiguracaoBoleto_InstrucaoCod.asString) = '1' then  begin
                      mDataMulta := tBoletos.FieldByName('Data_Vencimento').Value+1;
                      mDtMul     := PoeZero(2, DayOf(mDataMulta))+
                                    PoeZero(2, MonthOf(mDataMulta))+
                                    Copy(InttoStr(YearOf(mDataMulta)), 3, 2);

                      Inc(mItem);

                      Say( mLinha, 000, Arquivo, '5' );
                      Say( mLinha, 001, Arquivo, '99' );
                      Say( mLinha, 003, Arquivo, Configuracao.FieldByName('Boleto_InstrucaoCod').asstring );
                      Say( mLinha, 004, Arquivo, mDtMul);
                      Say( mLinha, 010, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_MultaVencimento').AsCurrency)), 12) );  // Valor a ser cobrado por Dia de Atraso.
                      Say( mLinha, 022, Arquivo, PoeZero(3, 30));
                      Say( mLinha, 394, Arquivo, PoeZero(6, mItem) );
                      Inc(mLinha);
                   end;

                   tBoletos.Next;
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;
             End;

             // Registro Trailer do arquivo.
             mTrayler := false;
             Inc(mItem);
             Say( mLinha, 000, Arquivo, '9' );                                                        // Identificação Registro.
             Say( mLinha, 394, Arquivo, PoeZero(6, mLinha+1) );                                       // Total de linhas do arquivo.
             Inc(mLinha);
             Say( mLinha, 000, Arquivo, '' );                                                         // Posiciona o cursor abaixo da última linha.
          End;

          //[=============================================================================[ BANCO ITAU ]===============================================================================]
          If BancosNumero_Banco.AsInteger = 341 then begin
             //-------------------------> Registro Header do Arquivo (Inicio).
             Say(mLinha, 000, Arquivo, '0');                                                                                              // Identificação do Registro.
             Say(mLinha, 001, Arquivo, '1');                                                                                              // Identificação do Arquivo Remessa.
             Say(mLinha, 002, Arquivo, 'REMESSA');                                                                                        // Literal Remessa.
             Say(mLinha, 009, Arquivo, '01');                                                                                             // Código de Serviço.
             Say(mLinha, 011, Arquivo, 'COBRANCA');                                                                                       // Literal Serviço.
             Say(mLinha, 026, Arquivo, Bancos.FieldByName('Agencia').AsString);                                                           // Agência.
             Say(mLinha, 030, Arquivo, '00');                                                                                             // Zeros.
             Say(mLinha, 032, Arquivo, Bancos.FieldByName('Conta').AsString);                                                             // Conta da Empresa.
             if Bancos.FieldByName('Empresa').AsInteger = 0 then begin
                Say(mLinha, 046, Arquivo, RemoveAcentos(Copy(Empresas.FieldByName('Razao_Social').AsString, 1, 30)) );                    // Nome da Empresa.
             end else begin
                Say(mLinha, 046, Arquivo, RemoveAcentos(Copy(tTmp.FieldByName('Razao_Social').AsString, 1, 30)) );                        // Nome da Empresa.
             end;

             Say(mLinha, 076, Arquivo, Bancos.FieldByName('Numero_Banco').AsString);                                                      // Número do Bradesco na Câmara de Compensação.
             Say(mLinha, 079, Arquivo, Trim(RemoveAcentos(BancosNome_Remessa.AsString)));                                                 // Nome do Banco por Extenso.
             Say(mLinha, 094, Arquivo, PoeZero(2, DayOf(Date))+PoeZero(2, MonthOf(Date))+Copy(PoeZero(4, YearOf(Date)), 3, 2));           // Data da Gravação do Arquivo.
             Say(mLinha, 100, Arquivo, '');                                                                                               // Branco.
             Say(mLinha, 110, Arquivo, PoeZero(7, tBoletos.FieldByName('Numero_Remessa').AsInteger));                                     // Nº Seqüencial de Remessa.
             Say(mLinha, 117, Arquivo, '');                                                                                               // Branco.
             Say(mLinha, 394, Arquivo, PoeZero(6, mItem));                                                                                // Nº Seqüencial do Registro de Um em Um.
             Inc(mLinha);

             // Registro de Transação - Tipo 1 (Inicio).
             tBoletos.First;
             While not tBoletos.Eof do begin
                   mDataVenc := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Vencimento').Value)), 3, 2);
                   mDataEmi  := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Emissao').Value)), 3, 2);

                   Clientes.Locate('Codigo', tBoletos.FieldByName('Sacado').AsInteger, [loCaseInsensitive]);

                   Municipios.SQL.Clear;
                   Municipios.SQL.Add('SELECT * FROM Municipios WHERE Codigo = :pCodigo');
                   Municipios.ParamByName('pCodigo').AsInteger := ClientesMunicipio_Codigo.AsInteger;
                   Municipios.Open;

                   If Trim(Clientes.FieldByName('CPF').AsString) <> '' then begin
                      mIdentTipo := '01';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CPF').AsString);
                   End;
                   If Trim(Clientes.FieldByName('CNPJ').AsString) <> '' then begin
                      mIdentTipo := '02';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CNPJ').AsString);
                   End;

                   mEndereco := UpperCase(Trim(ClientesRua.AsString)+', '+Trim(ClientesRua_Numero.AsString));
                   
                   Inc(mItem);

                   Say( mLinha, 000, Arquivo, '1' );                                                                                                    // 01 IDENTIFICAÇÃO DO REGISTRO TRANSAÇÃO.
                   Say( mLinha, 001, Arquivo, '02' );                                                                                                   // 02 TIPO DE INSCRIÇÃO DA EMPRESA.
                   Say( mLinha, 003, Arquivo, EmpresasCNPJ.AsString );                                                                                  // 03 Nº DE INSCRIÇÃO DA EMPRESA (CPF/CNPJ).
                   Say( mLinha, 017, Arquivo, PoeZero(4,BancosAgencia.Asinteger));                                                                      // 04 AGÊNCIA MANTENEDORA DA CONTA.
                   Say( mLinha, 021, Arquivo, '00' );                                                                                                   // 05 COMPLEMENTO DE REGISTRO.
                   Say( mLinha, 023, Arquivo, Copy(Trim(BancosConta.AsString), 1, 5));                                                                  // 06 NÚMERO DA CONTA CORRENTE DA EMPRESA.
                   Say( mLinha, 028, Arquivo, mDigitoCC);                                                                                               // 07 DÍGITO DE AUTO CONFERÊNCIA AG/CONTA EMPRESA.
                   Say( mLinha, 062, Arquivo, Trim(tBoletos.FieldByName('Numero_Documento').AsString));                                                 // 08 IDENTIFICAÇÃO DO TÍTULO NO BANCO.
                   //Say( mLinha, 083, Arquivo, Trim(BancosCarteira.AsString) );                                                                          // 09 NÚMERO DA CARTEIRA NO BANCO.
                   Say( mLinha, 083, Arquivo, Trim(tBoletos.FieldByName('Carteira').AsString) );                                                        // 09 NÚMERO DA CARTEIRA NO BANCO.
                   Say( mLinha, 107, Arquivo, 'I');                                                                                                     // 10 CÓDIGO DA CARTEIRA.
                   Say( mLinha, 108, Arquivo, '01');                                                                                                    // 11 IDENTIFICAÇÃO DA OCORRÊNCIA.
                   Say( mLinha, 110, Arquivo, Trim(tBoletos.FieldByName('Numero_Documento').AsString));                                                 // 12 Nº DO DOCUMENTO DE COBRANÇA.
                   Say( mLinha, 120, Arquivo, mDataVenc );                                                                                              // 13 DATA DE VENCIMENTO DO TÍTULO.
                   Say( mLinha, 126, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_Documento').AsCurrency)), 13) ); // 14 VALOR NOMINAL DO TÍTULO.
                   Say( mLinha, 139, Arquivo, '341');                                                                                                   // 15 Nº DO BANCO NA CÂMARA DE COMPENSAÇÃO.
                   Say( mLinha, 142, Arquivo, '00000');                                                                                                 // 16 AGÊNCIA ONDE O TÍTULO SERÁ COBRADO.

                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Duplicata Mercantil' then
                      Say( mLinha, 147, Arquivo, '01' );                                                                                                // 17 ESPÉCIE DO TÍTULO.
                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Nota Promissória' then
                      Say( mLinha, 147, Arquivo, '02' );

                   Say( mLinha, 149, Arquivo, tBoletos.FieldByName('Aceite_Documento').AsString );                                                      // 18 IDENTIFICAÇÃO DE TÍTULO ACEITO OU NÃO ACEITO.
                   Say( mLinha, 150, Arquivo, mDataEmi );                                                                                               // 19 DATA DA EMISSÃO DO TÍTULO.
                   Say( mLinha, 156, Arquivo, Trim(ConfiguracaoBoleto_InstrucaoCod.Value));                                                             // 20 1ª Instrução.
                   Say( mLinha, 158, Arquivo, Trim(ConfiguracaoBoleto_InstrucaoCod2.Value));                                                            // 20 2ª Instrução.
                   Say( mLinha, 160, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_JurosDia').AsCurrency)), 13) );  // 22 Juros de Mora por Dia de Atraso
                   Say( mLinha, 173, Arquivo, Replicate('0', 06));                                                                                      // 23 Data Limite P/Concessão de Desconto.
                   Say( mLinha, 179, Arquivo, Replicate('0', 13));                                                                                      // 24 Valor do Desconto.
                   Say( mLinha, 192, Arquivo, Replicate('0', 13));                                                                                      // 25 Valor do IOF.
                   Say( mLinha, 205, Arquivo, Replicate('0', 13));                                                                                      // 26 Valor do Abatimento a ser concedido ou cancelado.
                   Say( mLinha, 218, Arquivo, mIdentTipo);                                                                                              // 27 IDENTIFICAÇÃO DO TIPO DE INSCRIÇÃO/SACADO.
                   Say( mLinha, 220, Arquivo, mCPFCNPJ);                                                                                                // 28 Nº DE INSCRIÇÃO DO SACADO (CPF/CNPJ).
                   Say( mLinha, 234, Arquivo, UpperCase(Copy(RemoveAcentos(Clientes.FieldByName('Nome').AsString), 1, 30)));                            // 29 NOME DO SACADO.
                   Say( mLinha, 274, Arquivo, UpperCase(RemoveAcentos(Copy(mEndereco, 1,40))));                                                         // 30 RUA, NÚMERO E COMPLEMENTO DO SACADO.
                   Say( mLinha, 314, Arquivo, UpperCase(RemoveAcentos(Copy(Clientes.FieldByName('Bairro').AsString, 1, 12))));                          // 31 BAIRRO DO SACADO.
                   Say( mLinha, 326, Arquivo, Trim(Clientes.FieldByName('CEP').AsString));                                                              // 32 CEP DO SACADO.
                   Say( mLinha, 334, Arquivo, UpperCase(RemoveAcentos(Copy(Municipios.FieldByName('Nome').AsString,1, 15))));                           // 33 CIDADE DO SACADO.
                   Say( mLinha, 349, Arquivo, UpperCase(RemoveAcentos(Trim(Clientes.FieldByName('Estado').AsString))));                                 // 34 UF DO SACADO.
                   Say( mLinha, 391, Arquivo, FormatFloat('00',ConfiguracaoBoleto_ProtestoDias.AsInteger));                                             // 35 QUANTIDADE DE DIAS.
                   Say( mLinha, 394, Arquivo, PoeZero(6, mItem));                                                                                       // 36 Nº Seqüencial do Registro de Um em Um.

                   Inc(mLinha);

                   tBoletos.Next;
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;
             End;

             // Registro Trailer do arquivo.
             mTrayler := false;
             Inc(mItem);
             Say( mLinha, 000, Arquivo, '9' );                                                        // Identificação Registro.
             Say( mLinha, 001, Arquivo, '2' );                                                        // Identificação de arquivo retorno.
             Say( mLinha, 002, Arquivo, '01' );                                                       // Identificação do tipo de serviço.
             Say( mLinha, 004, Arquivo, '341' );                                                      // Identificação do banco na compensação.
             Say( mLinha, 017, Arquivo, '00000000' );                                                 // Identificação do banco na compensação.
             Say( mLinha, 025, Arquivo, '00000000000000');                                            // Vlr total dos títulos em cobrança simples.
             Say( mLinha, 057, Arquivo, '00000000' );                                                 // Qtde de títulos em cobrança/vinculada.
             Say( mLinha, 065, Arquivo, '00000000000000' );                                           // Vlr total dos títulos em cobrança/vinculada.
             Say( mLinha, 177, Arquivo, '00000000' );                                                 // Qtde. de títulos em cobr. direta./escritural.
             Say( mLinha, 185, Arquivo, '00000000000000' );                                           // Vlr total dos títulos em cobr. direta/escrit.
             Say( mLinha, 207, Arquivo, '00000' );                                                    // Número seqüencial do arquivo retorno.
             Say( mLinha, 212, Arquivo, '00000000');                                                  // Total de linhas do arquivo.
             Say( mLinha, 220, Arquivo, StrZero(ApenasNumeros(FormatFloat('#0.00',mTotal)), 14));     // Valor dos títulos informados no arquivo.
             Say( mLinha, 394, Arquivo, PoeZero(6, mLinha+1) );                                       // Total de linhas do arquivo.

             Inc(mLinha);
             Say( mLinha, 000, Arquivo, '' );                                                         // Posiciona o cursor abaixo da última linha.
          End;

          //[=========================================================================[ SANTANDER ]=====================================================================]
          If BancosNumero_Banco.AsInteger = 33 then begin
             //-------------------------> Registro Header do Arquivo (Inicio).
             Say( mLinha, 000, Arquivo, '0');                                                                                             // Identificação do Registro.
             Say( mLinha, 001, Arquivo, '1');                                                                                             // Identificação do Arquivo Remessa.
             Say( mLinha, 002, Arquivo, 'REMESSA');                                                                                       // Literal Remessa.
             Say( mLinha, 009, Arquivo, '01');                                                                                            // Código de Serviço.
             Say( mLinha, 011, Arquivo, 'COBRANCA');                                                                                      // Literal Serviço.
             Say( mLinha, 026, Arquivo, Bancos.FieldByName('Codigo_Transmissao').AsString);                                               // Código de transmissão.
             if Bancos.FieldByName('Empresa').AsInteger = 0 then begin
                Say( mLinha, 046, Arquivo, Copy(Empresas.FieldByName('Razao_Social').AsString, 1, 30));                                   // Nome da Empresa.
             end else begin
                Say( mLinha, 046, Arquivo, Copy(tTmp.FieldByName('Razao_Social').AsString, 1, 30));                                       // Nome da Empresa.
             end;   
             Say( mLinha, 076, Arquivo, PoeZero(3, Bancos.FieldByName('Numero_Banco').AsInteger));                                        // Número do Banco na Câmara de Compensação.
             Say( mLinha, 079, Arquivo, Trim(BancosNome_Remessa.AsString));                                                               // Nome do Banco por Extenso.
             Say( mLinha, 094, Arquivo, PoeZero(2, DayOf(Date))+PoeZero(2, MonthOf(Date))+Copy(PoeZero(4, YearOf(Date)), 3, 2));          // Data da Gravação do Arquivo.
             Say( mLinha, 100, Arquivo, '0000000000000000');                                                                              // .
             //Say( mLinha, 391, Arquivo, PoeZero(3, tBoletos.FieldByName('Numero_Remessa').AsInteger));                                  // Nº Seqüencial de Remessa.
             Say( mLinha, 391, Arquivo, '000' );                                                                                          // Nº Seqüencial de Remessa.
             Say( mLinha, 394, Arquivo, PoeZero(6, mItem));                                                                               // Nº Seqüencial do Registro de Um em Um.
             Inc(mLinha);

             // Registro de Transação - Tipo 1 (Inicio).
             tBoletos.First;
             While not tBoletos.Eof do begin
                   //mDigitoNN := Modulo11P( PoeZero(2, Bancos.FieldByName('Carteira').AsInteger) + StrZero(Copy(tBoletos.FieldByName('Numero_Documento').AsString, 1, 11), 11), 7 );
                   mDigitoNN := Modulo11P( PoeZero(2, tBoletos.FieldByName('Carteira').AsInteger) + StrZero(Copy(tBoletos.FieldByName('Numero_Documento').AsString, 1, 11), 11), 7 );
                   mDataVenc := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Vencimento').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Vencimento').Value)), 3, 2);
                   mDataEmi  := PoeZero(2, DayOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                PoeZero(2, MonthOf(tBoletos.FieldByName('Data_Emissao').Value))+
                                Copy(InttoStr(YearOf(tBoletos.FieldByName('Data_Emissao').Value)), 3, 2);

                   Clientes.Locate('Codigo', tBoletos.FieldByName('Sacado').AsInteger, [loCaseInsensitive]);

                   Municipios.SQL.Clear;
                   Municipios.SQL.Add('SELECT * FROM Municipios WHERE Codigo = :pCodigo');
                   Municipios.ParamByName('pCodigo').AsInteger := ClientesMunicipio_Codigo.AsInteger;
                   Municipios.Open;

                   If Trim(Clientes.FieldByName('CPF').AsString) <> '' then begin
                      mIdentTipo := '01';
                      mCPFCNPJ   := Copy('00000000000000', 1, 14-Length(Trim(Clientes.FieldByName('CPF').AsString))) + Trim(Clientes.FieldByName('CPF').AsString);
                   End;
                   If Trim(Clientes.FieldByName('CNPJ').AsString) <> '' then begin
                      mIdentTipo := '02';
                      mCPFCNPJ   := Trim(Clientes.FieldByName('CNPJ').AsString);
                   End;

                   mEndereco := UpperCase(Trim(ClientesRua.AsString)+', '+Trim(ClientesRua_Numero.AsString));

                   Inc(mItem);

                   Say( mLinha, 000, Arquivo, '1' );                                                                                                    // Identificação do Registro.
                   Say( mLinha, 001, Arquivo, '02' );                                                                                                   // Tipo de inscrição do cedente: 01=CPF / 02=CNPJ.
                   Say( mLinha, 003, Arquivo, EmpresasCNPJ.AsString );                                                                                  // CGC ou CPF do cedente.
                   Say( mLinha, 017, Arquivo, Bancos.FieldByName('Codigo_Transmissao').AsString);                                                       // Código de transmissão.
                   Say( mLinha, 062, Arquivo, Copy(tBoletos.FieldByName('Nosso_Numero').AsString, 6, 8));                                               // Identificação do título no banco.
                   Say( mLinha, 070, Arquivo, '000000');                                                                                                // Data do segundo desconto.
                   If tBoletos.FieldByName('Percentual_Juros').AsFloat = 0 then
                      Say( mLinha, 077, Arquivo, '0')                                                                                                   // Informação se multa.
                   else
                      Say( mLinha, 077, Arquivo, '4');
                   Say( mLinha, 078, Arquivo, StrZero(ApenasNumeros(FormatFloat('#0.00',tBoletos.FieldByName('Percentual_Multa').AsCurrency)), 4));     // Percentual de Multa.
                   Say( mLinha, 082, Arquivo, '00');                                                                                                    // Unidade de moeda = 00 = moeda corrente.
                   Say( mLinha, 084, Arquivo, '0000000000000');                                                                                         // Valor do boleto em outra unidade.
                   Say( mLinha, 101, Arquivo, '000000');                                                                                                // Data para cobrança de multa.
                   Say( mLinha, 107, Arquivo, '5');                                                                                                     // Condição para Emissão da Papeleta de Cobrança.
                   Say( mLinha, 108, Arquivo, '01');                                                                                                    // Codigo da ocorrência.
                   Say( mLinha, 110, Arquivo, PoeZero(10, tBoletos.FieldByName('Numero_Documento').AsInteger) );                                        // Número do documento.
                   Say( mLinha, 120, Arquivo, mDataVenc );                                                                                              // Data do Vencimento do Título.
                   Say( mLinha, 126, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_Documento').AsCurrency)), 13) ); // Valor do Título.
                   Say( mLinha, 139, Arquivo, '033' );                                                                                                  // Banco Encarregado da Cobrança.
                   Say( mLinha, 142, Arquivo, '00000' );                                                                                                // Código da agência cobradora do Banco Santander.
                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Duplicata Mercantil' then
                      Say( mLinha, 147, Arquivo, '01' );                                                                                                // Espécie de Título.
                   If tBoletos.FieldByName('Especie_Documento').AsString = 'Nota Promissória' then
                      Say( mLinha, 147, Arquivo, '02' );

                   If (tBoletos.FieldByName('Especie_Documento').AsString <> 'Duplicata Mercantil')
                      and (tBoletos.FieldByName('Especie_Documento').AsString <> 'Nota Promissória') then begin
                      Say( mLinha, 147, Arquivo, '01' );
                   End;
                   Say( mLinha, 149, Arquivo, tBoletos.FieldByName('Aceite_Documento').AsString);                                                       // Identificação.
                   Say( mLinha, 150, Arquivo, mDataEmi );                                                                                               // Data da emissão do Título.
                   Say( mLinha, 156, Arquivo, Trim(ConfiguracaoBoleto_InstrucaoCod.Value));                                                             // 20 1ª Instrução.
                   Say( mLinha, 158, Arquivo, Trim(ConfiguracaoBoleto_InstrucaoCod2.Value));                                                            // 20 2ª Instrução.
                   Say( mLinha, 160, Arquivo, StrZero(ApenasNumeros(FormatFloat('#,##0.00',tBoletos.FieldByName('Valor_JurosDia').AsCurrency)), 13) );  // Valor a ser cobrado por Dia de Atraso.
                   Say( mLinha, 173, Arquivo, Replicate('0', 06));                                                                                      // Data Limite P/Concessão de Desconto.
                   Say( mLinha, 179, Arquivo, Replicate('0', 13));                                                                                      // Valor do Desconto.
                   Say( mLinha, 192, Arquivo, Replicate('0', 13));                                                                                      // Valor do IOF.
                   Say( mLinha, 205, Arquivo, Replicate('0', 13));                                                                                      // Valor do Abatimento a ser concedido ou cancelado.
                   Say( mLinha, 218, Arquivo, mIdentTipo);                                                                                              // Tipo de inscrição do sacado: 01 = CPF 02 = CNPJ.
                   Say( mLinha, 220, Arquivo, mCPFCNPJ);                                                                                                // CPF/CNPJ do pagador.
                   Say( mLinha, 234, Arquivo, UpperCase(Copy(Clientes.FieldByName('Nome').AsString, 1, 40)) );                                          // Nome do Sacado.
                   Say( mLinha, 274, Arquivo, Copy(mEndereco, 1,40));                                                                                   // Endereço do Sacado.
                   Say( mLinha, 314, Arquivo, Copy(Trim(Clientes.FieldByName('Bairro').AsString), 1, 12) );                                             // Bairro do sacado.
                   Say( mLinha, 326, Arquivo, Trim(Clientes.FieldByName('CEP').AsString));                                                              // Bairro do sacado.
                   Say( mLinha, 334, Arquivo, Copy(Municipios.FieldByName('Nome').AsString,1, 15));                                                     // 33 CIDADE DO SACADO.
                   Say( mLinha, 349, Arquivo, Trim(Clientes.FieldByName('Estado').AsString) );                                                          // Estado do sacado.
                   Say( mLinha, 382, Arquivo, 'I' );                                                                                                    // Identificador do Complemento.
                   Say( mLinha, 383, Arquivo, Copy(BancosConta.AsString, Length(BancosConta.AsString)-1, 2) );                                          // Identificador do Complemento.
                   Say( mLinha, 391, Arquivo, '00' );                                                                                                   // Número de dias para protesto.
                   Say( mLinha, 394, Arquivo, PoeZero(6, mItem));                                                                                       // Nº Seqüencial do Registro de Um em Um.

                   Inc(mLinha);

                   mTotal := mTotal + tBoletos.FieldByName('Valor_Documento').AsCurrency;

                   tBoletos.Next;
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;
             End;
          End;

          // Registro Trailer do Lote (Inicio).
          if mTrayler then begin
             Inc(mItem);
             Say( mLinha, 000, Arquivo, '9' );                                                        // Identificação Registro.
             Say( mLinha, 001, Arquivo, PoeZero(6, mItem) );                                          // Nº Seqüencial do Registro de Um em Um.
             Say( mLinha, 007, Arquivo, StrZero(ApenasNumeros(FormatFloat('#0.00',mTotal)), 13));     // Valor total dos titulos.
             Say( mLinha, 020, Arquivo, Replicate('0', 374));                                         // Zeros.
             Say( mLinha, 394, Arquivo, PoeZero(6, mLinha+1) );                                       // Total de linhas do arquivo.
             Inc(mLinha);
             Say( mLinha, 000, Arquivo, '' );                                                         // Posiciona o cursor abaixo da última linha.
          end;
          with tBoletos do begin
               SQL.Clear;
               SQL.Add('UPDATE Boletos SET  Numero_Remessa = :pRemessa');
               SQL.Add('                   ,Data_Remessa   = GETDATE()');
               SQL.Add('                   ,Numero_Envio   = :pEnvio');
               SQL.Add('WHERE  (Banco = :pBanco) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) and (Seleciona = 1)');
               ParamByName('pBanco').AsInteger   := BancosCodigo.AsInteger;
               ParamByName('pDataIni').AsDate    := cDataIni.Date;
               ParamByName('pDataFim').AsDate    := cDataFim.Date;
               ParamByName('pRemessa').AsInteger := cRemessa.AsInteger;
               ParamByName('pEnvio').AsInteger   := tEnvio.FieldByName('Envio').AsInteger;
               Execute;
               SQL.Clear;
               SQL.Add('update Boletos set Seleciona = 0');
               Execute;
          end;
          
          //Boletos.Refresh;
          with Boletos do begin
               close;
               Open;
          end;

          Janela_Processamento.Close;
     End;
     CloseFile(Arquivo);

     Showmessage('Arquivo de remessa de boletos gerado com sucesso!');
end;


procedure TUtilitarios_ExportaRemessaBoletos.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     with Dados do Begin
          if (Column.FieldName = 'Seleciona') then begin
             with Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  if Boletos.FieldByName('Seleciona').AsBoolean then Dados.ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             end;
          end;
     end;
end;

procedure TUtilitarios_ExportaRemessaBoletos.GradeKeyPress(Sender: TObject; var Key: Char);
begin
      with dados, Boletos do begin
           edit;
               BoletosSeleciona.Value := not BoletosSeleciona.Value;
           post;
           next;
      end;
end;

procedure TUtilitarios_ExportaRemessaBoletos.GradeCellClick(Column: TColumn);
begin
      with dados do begin
           Boletos.Edit;
                   BoletosSeleciona.Value := not BoletosSeleciona.Value;
           Boletos.Post;
      end;
end;

procedure TUtilitarios_ExportaRemessaBoletos.bSelTodosClick(Sender: TObject);
begin
      with dados do begin
           tBoletos.SQL.Clear;
           tBoletos.SQL.Add('UPDATE Boletos SET Seleciona = 1');
           tBoletos.SQL.Add('WHERE Banco = :pBanco AND Data_Emissao BETWEEN :pDataIni AND :pDataFim');
           tBoletos.SQL.Add('AND   ISNULL(Cancelado, 0) <> 1');
           tBoletos.ParamByName('pBanco').AsInteger   := BancosCodigo.AsInteger;
           tBoletos.ParamByName('pDataIni').AsDate    := cDataIni.Date;
           tBoletos.ParamByName('pDataFim').AsDate    := cDataFim.Date;
           tBoletos.Execute;
      end;
      cFiltroClick(Self);
end;

procedure TUtilitarios_ExportaRemessaBoletos.bDesTodosClick(Sender: TObject);
begin
      with dados do begin
           tBoletos.SQL.Clear;
           tBoletos.SQL.Add('UPDATE Boletos SET Seleciona = 0');
           tBoletos.SQL.Add('WHERE Banco = :pBanco AND Data_Emissao BETWEEN :pDataIni AND :pDataFim');
           tBoletos.SQL.Add('AND    ISNULL(Cancelado, 0) <> 1');
           tBoletos.ParamByName('pBanco').AsInteger   := BancosCodigo.AsInteger;
           tBoletos.ParamByName('pDataIni').AsDate    := cDataIni.Date;
           tBoletos.ParamByName('pDataFim').AsDate    := cDataFim.Date;
           tBoletos.Execute;
      end;
      cFiltroClick(Self);
end;

procedure TUtilitarios_ExportaRemessaBoletos.cFiltroClick(Sender: TObject);
begin
      with Dados, Boletos do begin
           SQL.Clear;
           SQL.Add('select *');
           SQL.Add('       ,Nome_Sacado = (select Nome from Clientes where Codigo = Sacado)');
           SQL.Add('from   Boletos');
           SQL.Add('where  Banco = :pBanco');
           SQL.Add('and    Data_Emissao between :pDataIni and :pDataFim');
           sql.Add('and    isnull(Cancelado, 0) = 0');
           if cFiltro.ItemIndex = 0 then
              SQL.Add('and   Data_Remessa is null');
           if cFiltro.ItemIndex = 1 then
              SQL.Add('and   Data_Remessa is not null');
           SQL.Add('order by Nome_Sacado');
           ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
           ParamByName('pDataIni').AsDate  := cDataIni.Date;
           ParamByName('pDataFim').AsDate  := cDataFim.Date;
           //SQL.SaveToFile('c:\temp\Boletos_Remessa_Filtro.sql');
           Open;
      end;
end;


end.
