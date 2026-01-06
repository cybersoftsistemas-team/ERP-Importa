unit frmUtilitarios_ExportaRemessaDuplicatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXDBCtrl, Vcl.StdCtrls, RXSpin, DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, RXCtrls, Funcoes, IniFiles, Mask, RxToolEdit, MemDS;

type
  TUtilitarios_ExportaRemessaDuplicatas = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    tFatura: TMSQuery;
    cBanco: TDBLookupComboBox;
    StaticText6: TStaticText;
    cDataIni: TDateEdit;
    StaticText7: TStaticText;
    cDataFim: TDateEdit;
    cNomeArquivo: TEdit;
    cCodMov: TComboBox;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cCarteira: TComboBox;
    StaticText5: TStaticText;
    cMoeda: TComboBox;
    StaticText8: TStaticText;
    cEspecie: TComboBox;
    StaticText9: TStaticText;
    cProtesto: TComboBox;
    StaticText10: TStaticText;
    cDesconto: TComboBox;
    StaticText11: TStaticText;
    cMulta: TComboBox;
    StaticText12: TStaticText;
    cJuros: TComboBox;
    StaticText13: TStaticText;
    cDias: TRxSpinEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cBancoExit(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure ITAU;
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha    : Integer;
    Arquivo   : TextFile;
    mNomeArq  : String;
    mSequencia: Integer;
    mLote     : Integer;
    mRegLote  : Integer;
  end;

var
  Utilitarios_ExportaRemessaDuplicatas: TUtilitarios_ExportaRemessaDuplicatas;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal, frmDMFiscal;

{$R *.dfm}

procedure TUtilitarios_ExportaRemessaDuplicatas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitarios_ExportaRemessaDuplicatas.FormCreate(
  Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaRemessaDuplicatas.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cBanco.KeyValue     := aINI.ReadInteger('REMESSAO_BANCO', 'Banco'    , -1 );
      cDataIni.Date       := aINI.ReadDate   ('REMESSAO_BANCO', 'DataIni'  , Date );
      cDataFim.Date       := aINI.ReadDate   ('REMESSAO_BANCO', 'DataFim'  , Date );
      cCodMov.ItemIndex   := aINI.ReadInteger('REMESSAO_BANCO', 'Movimento', -1 );
      cCarteira.ItemIndex := aINI.ReadInteger('REMESSAO_BANCO', 'Carteira' , -1 );
      cMoeda.ItemIndex    := aINI.ReadInteger('REMESSAO_BANCO', 'Moeda'    , -1 );
      cEspecie.ItemIndex  := aINI.ReadInteger('REMESSAO_BANCO', 'Especie'  , -1 );
      cProtesto.ItemIndex := aINI.ReadInteger('REMESSAO_BANCO', 'Protesto' , -1 );
      cDias.AsInteger     := aINI.ReadInteger('REMESSAO_BANCO', 'Dias'     , 0 );
      cDesconto.ItemIndex := aINI.ReadInteger('REMESSAO_BANCO', 'Desconto' , -1 );
      cMulta.ItemIndex    := aINI.ReadInteger('REMESSAO_BANCO', 'Multa'    , -1 );
      cJuros.ItemIndex    := aINI.ReadInteger('REMESSAO_BANCO', 'Juros'    , -1 );
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
      End;
      cNomeArquivo.Text := 'Remessa_'+Trim(Dados.BancosNome.AsString)+'_'+RemoveCaracter('/','',DatetoStr(Date))+'.txt';
end;

procedure TUtilitarios_ExportaRemessaDuplicatas.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('REMESSAO_BANCO', 'Banco'    , cBanco.KeyValue );
      aINI.WriteDate   ('REMESSAO_BANCO', 'DataIni'  , cDataIni.Date );
      aINI.WriteDate   ('REMESSAO_BANCO', 'DataFim'  , cDataFim.Date );
      aINI.WriteInteger('REMESSAO_BANCO', 'Movimento', cCodMov.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Carteira' , cCarteira.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Moeda'    , cMoeda.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Especie'  , cEspecie.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Protesto' , cProtesto.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Dias'     , cDias.AsInteger );
      aINI.WriteInteger('REMESSAO_BANCO', 'Desconto' , cDesconto.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Multa'    , cMulta.ItemIndex );
      aINI.WriteInteger('REMESSAO_BANCO', 'Juros'    , cJuros.ItemIndex );
      aINI.Free;

      Utilitarios_ExportaRemessaDuplicatas.Release;
      Utilitarios_ExportaRemessaDuplicatas := nil;
end;

procedure TUtilitarios_ExportaRemessaDuplicatas.cBancoExit(Sender: TObject);
begin
      cNomeArquivo.Text := 'Remessa_'+Trim(Dados.BancosNome.AsString)+'_'+RemoveCaracter('/','',DatetoStr(Date))+'.txt';
end;

procedure TUtilitarios_ExportaRemessaDuplicatas.bGerarClick(Sender: TObject);
begin
     Case Dados.BancosNumero_Banco.AsInteger of
          341: ITAU;  
          237: ITAU;  
     End;
end;

procedure TUtilitarios_ExportaRemessaDuplicatas.ITAU;
Var
    mValor   : String;
    mAgencia : String;
    mQtdeLote: Integer;
    mTotalTit: Currency;
begin
     mQtdeLote := 0;
     mTotalTit := 0;
     
     With Dados, dmFiscal do begin
          mNomeArq := Trim(ConfiguracaoPasta_Exportacao.AsString)+'\'+Trim(Menu_Principal.lEmpresa.Caption);
          If Dados.EmpresasMatriz_Filial.AsBoolean = true then
             mNomeArq := mNomeArq + '_Matriz'
          else
             mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
          mNomeArq := mNomeArq+'\Exportação';

          If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
          mNomeArq := mNomeArq+'\'+ Trim(cNomeArquivo.Text);
          If FileExists(mNomeArq) then DeleteFile(mNomeArq);
          AssignFile(Arquivo, mNomeArq);
          ReWrite(Arquivo);

          tFatura.SQL.Clear;
          tFatura.SQL.Add('SELECT Fatura.*,');
          tFatura.SQL.Add('       (SELECT Clientes.Nome FROM Clientes WHERE(Codigo = Fatura.Cliente)) AS Cliente_Nome,');
          tFatura.SQL.Add('       (SELECT CNPJ FROM Clientes WHERE(Codigo = Fatura.Cliente)) AS Cliente_CNPJ,');
          tFatura.SQL.Add('       (SELECT CPF  FROM Clientes WHERE(Codigo = Fatura.Cliente)) AS Cliente_CPF,');
          tFatura.SQL.Add('       Duplicatas.*');
          tFatura.SQL.Add('FROM   Fatura, Duplicatas');
          tFatura.SQL.Add('WHERE  (Banco = :pBanco) AND (Duplicatas.Fatura = Fatura.Fatura)');
          tFatura.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
          tFatura.Open;

          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.lProcesso.Caption  := 'Gerando o arquivo de remessa do '+Trim(BancosNome.AsString)+'...';
          Janela_Processamento.Progresso.Max      := tFatura.RecordCount;
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Show;

          LinhaAtual  := 0;
          ColunaAtual := 0;
          mLinha      := 0;
          mSequencia  := 1;
          mLote       := 1;
          mRegLote    := 1;

          // Registro Header do Arquivo.
          Say( mLinha, 000, Arquivo, PoeZero(3, BancosNumero_Banco.AsInteger) );                // Numero do banco.
          Say( mLinha, 003, Arquivo, '0000' );                                                  // Lote de Serviço.
          Say( mLinha, 007, Arquivo, '0' );                                                     // Tipo de registro.
          Say( mLinha, 008, Arquivo, '' );                                                      // Complemento de registro.
          Say( mLinha, 017, Arquivo, '2' );                                                     // 1 - CPF / 2 - CNPJ.
          Say( mLinha, 018, Arquivo, Trim(EmpresasCNPJ.AsString) );                             // Numero da Inscrição da empresa.
          Say( mLinha, 032, Arquivo, '' );                                                      // Código do convenio.
          Say( mLinha, 052, Arquivo, '00000' );                                                 // Agencia.
          Say( mLinha, 057, Arquivo, '' );                                                      // DV da Agencia.
          Say( mLinha, 058, Arquivo, '000000000000' );                                          // Conta corrente.
          Say( mLinha, 070, Arquivo, '' );                                                      // DV Conta.
          Say( mLinha, 071, Arquivo, '' );                                                      // DV Agencia/Conta.
          Say( mLinha, 072, Arquivo, Copy(EmpresasRazao_Social.AsString, 1, 30) );              // Nome da empresa.
          Say( mLinha, 102, Arquivo, 'BANCO ITAU SA' );                                         // Nome do Banco.
          Say( mLinha, 132, Arquivo, '' );                                                      // Complemento de registro.
          Say( mLinha, 142, Arquivo, '2' );                                                     // Código do arquivo.
          Say( mLinha, 143, Arquivo, RemoveCaracter('/','',DatetoStr(Date)) );                  // Data da geração do arquivo.
          Say( mLinha, 151, Arquivo, RemoveCaracter(':','',TimetoStr(Time)) );                  // Hora da geração do arquivo.
          Say( mLinha, 157, Arquivo, PoeZero(6, mSequencia) );                                  // Número de sequência do arquivo de retorno.
          Say( mLinha, 163, Arquivo, '084' );                                                   // Versão do layout.
          Say( mLinha, 166, Arquivo, '' );                                                      // Complemento de registro.
          Inc(mLinha);

          // Registro Header do Lote.
          Say( mLinha, 000, Arquivo, PoeZero(3, BancosNumero_Banco.AsInteger) );                // Numero do banco.
          Say( mLinha, 003, Arquivo, PoeZero(3, mLote) );                                       // Número do lote.
          Say( mLinha, 007, Arquivo, '1' );                                                     // Tipo de registro.
          Say( mLinha, 008, Arquivo, 'I' );                                                     // Operação.
          Say( mLinha, 009, Arquivo, '03' );                                                    // Código do serviço.
          Say( mLinha, 011, Arquivo, '00' );                                                    // Complemento de registro.
          Say( mLinha, 013, Arquivo, '022' );                                                   // Layout do lote.
          Say( mLinha, 016, Arquivo, '' );                                                      // Complemento de registro.
          Say( mLinha, 017, Arquivo, '2' );                                                     // 1 - CPF / 2 - CNPJ.
          Say( mLinha, 018, Arquivo, Trim(EmpresasCNPJ.AsString) );                             // Numero da Inscrição da empresa.
          Say( mLinha, 033, Arquivo, '' );                                                      // Código do convenio.
          Say( mLinha, 053, Arquivo, '00000' );                                                 // Agencia.
          Say( mLinha, 058, Arquivo, '' );                                                      // DV da Agencia.
          Say( mLinha, 059, Arquivo, '000000000000' );                                          // Conta corrente.
          Say( mLinha, 071, Arquivo, '' );                                                      // DV Conta.
          Say( mLinha, 072, Arquivo, '' );                                                      // DV Agencia/Conta.
          Say( mLinha, 073, Arquivo, Copy(EmpresasRazao_Social.AsString, 1, 30) );              // Nome da empresa.
          Say( mLinha, 103, Arquivo, '' );                                                      // Complemento de registro.
          Inc(mQtdeLote);

          // Registro Detalhe - Segmento "G".
          tFatura.First;
          While not tFatura.Eof do begin

                Clientes.Locate('Codigo', tFatura.FieldByName('Cliente').AsInteger, [loCaseInsensitive]);

                Say( mLinha, 000, Arquivo, '' );                                                // Numero do banco.
                Say( mLinha, 003, Arquivo, PoeZero(4, mLote) );                                 // Número do lote.
                Say( mLinha, 007, Arquivo, '3' );                                               // Tipo de registro.
                Say( mLinha, 008, Arquivo, PoeZero(5, mRegLote) );                              // Número do registro.
                Say( mLinha, 013, Arquivo, 'G' );                                               // Segmento.
                Say( mLinha, 014, Arquivo, '' );                                                // Complemento de registro.
                Say( mLinha, 015, Arquivo, Copy(cCodMov.Text,1,2) );                            // Código do movimento.
                Say( mLinha, 017, Arquivo, '');                                                 // Numero do banco.
                Say( mLinha, 020, Arquivo, Trim(Copy(cMoeda.Text,1,2)) );                       // Código da moeda - 9 = Real.
                Say( mLinha, 021, Arquivo, '9');                                                // DV Código de barras.
                Say( mLinha, 022, Arquivo, '0000' );                                            // Fator de vencimento
                Say( mLinha, 026, Arquivo, '0000000000' );                                      // Valor impresso no código de barras.
                Say( mLinha, 036, Arquivo, '' );                                                // Campo livre.

                If Trim(tFatura.FieldByName('Cliente_CPF').AsString) <> '' then begin           // Tipo de inscrição 1 - CPF / 2 - CNPJ.
                   Say( mLinha, 061, Arquivo, '1' );
                   Say( mLinha, 062, Arquivo, Copy('000000000000000', 1, 15-Length(Trim(tFatura.FieldByName('Cliente_CPF').AsString))) + Trim(tFatura.FieldByName('Cliente_CPF').AsString) );
                end else begin
                   Say( mLinha, 061, Arquivo, '2' );
                   Say( mLinha, 062, Arquivo, Copy('000000000000000', 1, 15-Length(Trim(tFatura.FieldByName('Cliente_CNPJ').AsString))) + Trim(tFatura.FieldByName('Cliente_CNPJ').AsString) );
                End;

                Say( mLinha, 077, Arquivo, Copy(tFatura.FieldByName('Cliente_Nome').AsString, 1, 30) );               // Nome do cedente.
                Say( mLinha, 107, Arquivo, RemoveCaracter('/','',tFatura.FieldByName('Data_Vencimento').AsString) );  // Data de vencimento do título.

                mValor := RemoveCaracter('.','',tFatura.FieldByName('Valor').AsString);
                mValor := Trim(RemoveCaracter(',','',mValor));
                mValor := Copy('000000000000000', 1, 15-Length(mValor)) + mValor;

                Say( mLinha, 115, Arquivo, mValor );                                                                  // Valor do título.
                Say( mLinha, 130, Arquivo, mValor );                                                                  // Quantidade de moeda.
                Say( mLinha, 130, Arquivo, Trim(Copy(cMoeda.Text,1,2)) );                                             // Código da moeda - 09 = Real.
                Say( mLinha, 147, Arquivo, Trim(tFatura.FieldByName('Duplicata').AsString) );                         // Número do Documento.

                mAgencia := RemoveCaracter('-', '', Bancos.FieldByName('Agencia').AsString);
                mAgencia := RemoveCaracter('.', '', mAgencia);
                Say( mLinha, 162, Arquivo, PoeZero(5, StrtoInt( Copy(mAgencia,1,Length(mAgencia)-1))) );              // Número da agência.
                Say( mLinha, 167, Arquivo, Copy(mAgencia,Length(mAgencia), 1) );                                      // DV da agência.
                Say( mLinha, 168, Arquivo, '' );                                                                      // Praça cobradora.
                Say( mLinha, 178, Arquivo, Copy(cCarteira.Text,1,1) );                                                // Carteira.
                Say( mLinha, 179, Arquivo, Trim(Copy(cEspecie.Text,1,2)) );                                           // Espécie do título.
                Say( mLinha, 181, Arquivo, RemoveCaracter('/','',tFatura.FieldByName('Data_Emissao').AsString) );     // Data de emissão do título.
                Say( mLinha, 189, Arquivo, '000000000000000' );                                                       // Juros de mora.
                Say( mLinha, 204, Arquivo, Trim(Copy(cDesconto.Text,1,1)) );                                          // Código do 1º desconto.
                Say( mLinha, 205, Arquivo, RemoveCaracter('/','',tFatura.FieldByName('Data_Vencimento').AsString) );  // Data Limite do 1º desconto.
                Say( mLinha, 213, Arquivo, '000000000000000' );                                                       // Valor do 1º desconto.
                Say( mLinha, 228, Arquivo, Trim(Copy(cProtesto.Text,1,1)) );                                          // Código para protesto.
                Say( mLinha, 229, Arquivo, PoeZero(2, cDias.AsInteger) );                                             // Número de dias para protesto.
                Say( mLinha, 231, Arquivo, RemoveCaracter('/','',tFatura.FieldByName('Data_Vencimento').AsString) );  // Data Limite do 1º desconto.
                Say( mLinha, 239, Arquivo, Trim(Copy(cJuros.Text,1,1)) );                                             // Código de juros.
                Inc(mLinha);
                Inc(mQtdeLote);

                mTotalTit := mTotalTit + tFatura.FieldByName('Valor').AsCurrency;

                tFatura.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                Application.ProcessMessages;
          End;

          // Registro Trailer do Lote.
          Inc(mQtdeLote);
          Say( mLinha, 000, Arquivo, PoeZero(3, BancosNumero_Banco.AsInteger) );                // Numero do banco.
          Say( mLinha, 003, Arquivo, Poezero(4, mLote) );                                       // Número do lote.
          Say( mLinha, 007, Arquivo, '5' );                                                     // Tipo de registro.
          Say( mLinha, 008, Arquivo, '' );                                                      // Complemento de registro.
          Say( mLinha, 017, Arquivo, PoeZero(6, mQtdeLote) );                                   // Quantidade de registros do lote= 1,3,5.

          mValor := Trim(RemoveCaracter(',','',CurrtoStr(mTotalTit)));
          mValor := Copy('000000000000000', 1, 15-Length(mValor)) + mValor;

          Say( mLinha, 023, Arquivo, mValor );                                                  // Valor total dos títulos.
          Say( mLinha, 041, Arquivo, '000000000000000' );                                       // Quantidade total de moeda variavel.
          Say( mLinha, 059, Arquivo, '' );                                                      // Complemento de campo.

          // Registro Trailer do Arquivo.
          Inc(mLinha);
          Inc(mQtdeLote);
          Say( mLinha, 000, Arquivo, PoeZero(3, BancosNumero_Banco.AsInteger) );                // Numero do banco.
          Say( mLinha, 003, Arquivo, '9999' );                                                  // Número do lote.
          Say( mLinha, 007, Arquivo, '9' );                                                     // Tipo de registro.
          Say( mLinha, 008, Arquivo, '' );                                                      // Complemento de registro.
          Say( mLinha, 017, Arquivo, '000001' );                                                // Quantidade de registros do tipo 1 "Lote".
          Say( mLinha, 023, Arquivo, PoeZero(6, 4+mQtdeLote) );                                 // Valor total dos títulos.
          Say( mLinha, 029, Arquivo, '' );                                                      // Complemento de campo.

          Janela_Processamento.Close;
     End;
     CloseFile(Arquivo);

     Showmessage('Arquivo de remessa de duplicatas gerado com sucesso!');
end;

end.
