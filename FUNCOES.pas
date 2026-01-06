{************************** Eder Adão Ferreia Bonfim **************************}
{********************** Data última alteração: 24/02/2009 *********************}
{********************************* Versão: 2.0 ********************************}

{$WARN SYMBOL_PLATFORM OFF}

unit FUNCOES;

interface

uses
   Winapi.Windows, Vcl.Forms, System.SysUtils, System.UITypes, Checklst, Vcl.Controls, Db, ShellApi, Vcl.Dialogs, DateUtils, Math, Registry, System.Classes, MSAccess, Grids, ComObj, System.Variants, Tlhelp32,
   Vcl.Graphics, ZLib, MaskUtils, WinInet, ClipBrd, ComCtrls, Menus, DBGrids, Vcl.DBCtrls, RxDBCtrl;


{*********************************** Funções **********************************}
Function DataExtenso(Cidade: String; Data: TDate):String;
Function DataExtenso2(Data: TDate) :String;
Function DataExtenso3(Data: TDate) :String;
Function PoeZero( Tamanho, Valor: Integer): String;
Function NomeMes(Mes: Integer) :String;
Function NomeMesIngles(Mes: Integer) :String;
Function NomeDia(Dia: Integer) :String;
Function Empty(inString:String): Boolean;
Function Replicate(const Ch: Char; const Len: integer): string;
Function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
Function SistemaAberto(ActivateIt: Boolean; Titulo: String) : Boolean;
Function Padr(s:string;n:integer):string;
Function Arredonda(Valor: Double; Dec: Integer): Double;
Function ExRound(Value: Extended; Decimals: Integer): Extended;
Function ApenasNumeros(Const Texto:String):String;
Function ApenasLetras(Const Texto:String):String;
Function RemoveCaracter(PesquisarPor, TrocarPor : String; Texto :String):String;
Function Percentual(Valor:real;Percent:Real):Real;
Function TeclaPressionada(const Key: integer): boolean;
Function NomeComputador: String;
Function RedePresente: Boolean;
function CriaTag(Nome, Valor, Tipo: string; Nivel: integer): string;
function HexToTColor(sColor : string) : TColor;
function CalcCRC16Pix(const Payload: string): string;

Function VerificaCNPJ(Num: string): boolean;
Function VerificaIE(UF: String; IE:String): Boolean;
Function VerificaCPF(Num: String): Boolean;
Function VerificaContainer(Num: String): Boolean;
function ValidaGTIN(AGTIN: string): boolean;
function ValidaCampo(Campo:TObject; Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
function Existe(Banco:TCustomMSConnection; Tabela, Script: string): boolean;

Function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
Function DeletaRelatorios(Nome: String; Paginas:Integer):Boolean;
Function RemoveAcentos(Str:String): String;
Function DigitoNFE(Chave:String) :Integer;
Function DigitoConta(pConta:String) :String;
Function DigitoPais(Pais: String):String;
Function Space(Tamanho: Integer): String;
Function Incidencia(Pesquisa, Texto: String):Integer;
Function CriaAnalitica(Sintetica, Mascara: String):String;
Function RemoveCaracterXML(Str:String): String;
Function CodigoPais(Pais: String):Boolean;
Function DiaUtil(Data: TDate; Acao: String):TDate;
Function ValorExtenso(Valor: Real; NomeMoeda: Boolean): string;
Function ConversaoRecursiva(N: LongWord): string;
Function InverteString(wStr1: String): String;
Function TamanhoArquivo(const FileName: String): integer;
Function NumeroProcesso(Mascara: String; Numero:Integer; Ano: Integer; Forma: String; DigitosAno: Integer): String;
Function AchaCaracterXML(Arquivo: String):WideString;
//Function ImportaEXCEL(AGrid: TStringGrid; AXLSFile: string; NomeAba: TPageControl; Aba, lIni, lFim:Integer; Titulo:Boolean): Boolean;
Function ImportaEXCEL(xStringGrid: TStringGrid; xFileXLS: string; NomeAba: TPageControl; Aba, lIni, lFim:Integer; Titulo:Boolean): Boolean;
Function AbasEXCEL(xFileXLS: string): integer;
Function KillTask(ExeFileName: string): Integer;
Function PegaCampo(Registro:String; Texto:WideString; Campo: Integer; Separador:String): String;
Function AlteraCampo(Registro:String; Texto:WideString; Campo: Integer; Separador:String; Troca: String): String;
Function TBRound(Value: Extended; Decimals: integer): Extended;
Function QuebraString(BaseString, BreakString: string): TStringList;
Function ListaCampos(pTipoNota, pCampo: Integer): WideString;
Function ValorExtenso2(Valor:Real; NomeMoeda:Boolean; Caixa:Integer): WideString;
Function PrimeiraLetraMaiuscula(Str: String): String;
Function CapturaTela: TBitMap;
Function TruncaValor(Valor:Real;Casas:Integer):currency;
Function DataLimpa(pData: String):Boolean;
Function VersaoExe(pEXE:String): String;
Function CalculaInventario(pReferencia: Integer):Real;
Function CalculaEntrada(pReferencia: Integer):Real;
Function CalculaBCPISCTe(pReferencia: Integer):Real;
Function CalculaBCCOFINSCTe(pReferencia: Integer):Real;
Function CalculaBCPIS(pReferencia: Integer):Real;
Function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
Function EstoqueProduto(pProduto: Integer): Real;
Function EstoqueNavio(pProduto, pNavio: Integer): Real;
Function InventarioProduto(pProduto: Integer): Real;
Function DataUTC(pData: TDate): String;
//function DataUTC(const UTCDateTime: TDateTime): String;
Function HorarioVerao: boolean;
Function RemoveZeros(Str, Lado:String): String;
Function StrValor(sValor: String): Real;
Function Internet: Boolean;
Function LimpaXML(Str:String): String;
Function LimpaZerosConta(Conta, Mascara:String): String;
Function SimNao(Campo: Boolean): string;
Function PegaParte(Texto:String; Inicio, Fim:String): String;
Function EliminaEspaco(texto: widestring): string;
Function AspasDuplas(texto: widestring): string;
Function Ordinal(numero: string;Tipo:String): string;
function Permissao(Opcao: string): boolean;


{***************************************************** Funções Contabeis *************************************************}
Function  NivelConta(Conta, Mascara: String): Integer;
Function  GrupoConta(Conta, Mascara: String; Nivel:Integer): String;
Function  ComplementoHistorico(Macro, Beneficiario, Processo, DI, Classificacao, TPDoc, NumDoc, DataDoc, Banco, Obs: String): String;
//function  CriaLote(Data: TDate; Empresa, Descricao, Origem: string): integer;

{*********************************** Procedures **********************************}
procedure GerarLog(Usuario, Tabela, Funcao, Campo, Operacao, Antes, Depois, CampoChave: String);
procedure LogDados(Tabela: TDataSet; Descricao:String; pEstado: TDataSetState);   // Tipo = 'I'=Inclusção, 'A'=Alteração, 'E'=Exclusão.

procedure Say(nLin, nCol: Integer; Var Arquivo: Text;Texto: Variant);
procedure CopiarArquivos(const De, Para: string);
//procedure ModalidadeParcelas(ValorNota, ValorProduto, ValorIPI: Currency; Data: TDate; Parcelas: Integer; Prazo: Integer; Demais: Integer; Nota, Fornecedor: String; DiaFixo: Integer);
procedure ModalidadeParcelas(ValorNota, ValorProduto, ValorIPI: Currency; Data: TDate; Parcelas: Integer; Prazo: Integer; Demais: Integer; Nota, Fornecedor: String; DiaFixo, pModal: Integer);
procedure CopiarArquivos2(Const Origem, Destino: String);
procedure Altera_Reg_Win(Path, Param, Valor, Tipo : String);
procedure FecharTabelas(DataModule1, DataModule2, DataModule3, DataModule4: TDataModule);
procedure DesligaTabelas(DataModule1, DataModule2, DataModule3, DataModule4: TDataModule);
procedure LigaTabelas(DataModule1, DataModule2, DataModule3, DataModule4: TDataModule);
procedure AjustaFinanceiro;
procedure QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth, newHeight: Integer);
procedure Comprimir(ArquivoCompacto: TFileName; Arquivos: array of TFileName);
procedure Descomprimir(ArquivoZip: TFileName; DiretorioDestino: string);
procedure LiberaDLL(aDllName: string);
procedure ExecutarComoAdministrador(Programa: string; Parametros: string; DiretorioInicial: string = '');
procedure AutoAjusteCol(Grid: TStringGrid);
procedure LimpaMemoria;
procedure AtualizaInv(pCodigos:string);
procedure AtualizaEst(pCodigos:string);
Procedure SalvaComoUTF8(const P_PATH_E_NOME_ARQUIVO:String; P_ARQUIVO_MEMO: TStrings );
procedure MontaTreeMenu(mnuMenu: TMenu; treeMenu: TTreeView);

{*********************************** Funções de Boleto Bancário **********************************}
function  Modulo10(Valor: String) : string;
function  Modulo10_2(const Codigo: string): string;

function  Modulo11(Valor: String; Base: Integer; Resto : boolean = false) : string;
function  Modulo11P(Valor: String; Base: Integer) : string;
function  Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
function  CalcularFatorVencimento(DataDesejada : TDateTime) : string;
function  StrZero(S: String; Tam: Integer): String;
function  CodBarrasItau(Banco, Conta, Moeda, AG, Operacao, Carteira, nNumero, Vencto: String; Valor:Real; Tipo: String):String;
function  CodBarrasBradesco(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto: String; Valor:Real ):String;
function  DigitavelBradesco(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto: String; Valor:Real ):String;
function  CodBarrasBB(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto, Convenio: String; Valor:Real ):String;
function  DigitavelBB(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto, Convenio: String; Valor:Real ):String;
function  CodBarrasBanestes(Banco, Conta, Moeda, nNumero, Vencto: String; Valor:Real ):String;
function  DigitavelBanestes(Banco, Conta, Moeda, nNumero, Vencto: String; Valor:Real ):String;
function  DigitoNossoNumero(Banco: Integer; nNumero: String): String;
function  CodBarrasSantander(Banco, NumeroPSK, Moeda, nNumero, Vencto, Carteira: String; Valor:Real ):String;
function  DigitavelSantander(Banco, Beneficiario, Moeda, NossoNumero, Carteira, Vencimento: String; Valor:Real):String;
function  CodigoBarrasGNRE(Estado, Convenio, IdReceita, NossoNumero: String; Valor: Real; Data: TDate):String;

function CodBarrasDARF(pBanco: integer; pVencto: TDate; pValor: Real): string;
function CalculateDV(BarcodeWithoutDV: string): string;


//procedure TransfereBACKUP;

//
// Codigos da impressora. (Epson LX-300).
//
Const
     mNegrito    = #27#71;
     mClaro      = #27#72;
     mComprime12 = #27#33#1;
     mComprime15 = #27#33#5;
     mComprime17 = #27#33#4;
     mExpande    = #18;
     mEjeta      = #12;
     mPula       = #13#10;
     Unidades: array[1..19] of String = ('um ','dois ','três ','quatro ','cinco ','seis ','sete ','oito ','nove ','dez ','onze ','doze ','treze ','quatorze ','quinze ','dezesseis ','dezessete ','dezoito ','dezenove ');
     Dezenas : array[1..9]  of String = ('dez ', 'vinte ', 'trinta ', 'quarenta ','cinqüenta ', 'sessenta ', 'setenta ', 'oitenta ', 'noventa ');
     Centenas: array[1..9]  of String = ('cem ', 'duzentos ', 'trezentos ','quatrocentos ', 'quinhentos ', 'seiscentos ', 'setecentos ','oitocentos ','novecentos ');
Var
    LinhaAtual  : Integer;
    ColunaAtual : Integer;
    Cancelado   : Boolean;

implementation

uses frmDados, frmDMFiscal, frmDMContab, frmDMComercial, frmDMImporta, frmJanela_Processamento, frmMenu_Principal;

// Retorna uma data por extenso.
Function DataExtenso(Cidade: String; Data: TDate) :String;
Var
   mMes : String;
Begin
     Case Monthof(Data) of
          1 : mMes := 'Janeiro';
          2 : mMes := 'Fevereiro';
          3 : mMes := 'Março';
          4 : mMes := 'Abril';
          5 : mMes := 'Maio';
          6 : mMes := 'Junho';
          7 : mMes := 'Julho';
          8 : mMes := 'Agosto';
          9 : mMes := 'Setembro';
         10 : mMes := 'Outubro';
         11 : mMes := 'Novembro';
         12 : mMes := 'Dezembro';
     End;
     Result := Trim(Cidade)+', '+ PoeZero( 2, DayOf(Data) ) + ' de ' + mMes + ' de ' + InttoStr( YearOf(Data) );
end;

// Retorna uma data por extenso.
{
Function DataExtenso2(Data: TDate) :String;
Var
   mMes : String;
Begin
     Case Monthof(Data) of
          1 : mMes := 'Janeiro';
          2 : mMes := 'Fevereiro';
          3 : mMes := 'Março';
          4 : mMes := 'Abril';
          5 : mMes := 'Maio';
          6 : mMes := 'Junho';
          7 : mMes := 'Julho';
          8 : mMes := 'Agosto';
          9 : mMes := 'Setembro';
         10 : mMes := 'Outubro';
         11 : mMes := 'Novembro';
         12 : mMes := 'Dezembro';
     End;
     Result := UPPERCASE(ValorExtenso2(DayOf(Data), false, 0)+' de ' + mMes + ' de ' + ValorExtenso2(YearOf(Data), false, 0));
end;
}
Function DataExtenso2(Data: TDate) :String;
Begin
     Result := uppercase( ValorExtenso2(DayOf(Data), false, 0)+' de ' + NomeMes(MonthOf(Data)) + ' de ' + ValorExtenso2(YearOf(Data), false, 0) );
end;

// Retorna uma data por extenso.
Function DataExtenso3(Data: TDate) :String;
Begin
     Result := concat( formatfloat('00', DayOf(Data)), ' de ', NomeMes(MOnthof(Data)), ' de ', inttostr(YearOf(Data)) );
end;

// Retorna o nome do mes em português.
Function NomeMes(Mes: Integer) :String;
Var
   mMes : String;
Begin
     Case Mes of
          1 : mMes := 'Janeiro';
          2 : mMes := 'Fevereiro';
          3 : mMes := 'Março';
          4 : mMes := 'Abril';
          5 : mMes := 'Maio';
          6 : mMes := 'Junho';
          7 : mMes := 'Julho';
          8 : mMes := 'Agosto';
          9 : mMes := 'Setembro';
         10 : mMes := 'Outubro';
         11 : mMes := 'Novembro';
         12 : mMes := 'Dezembro';
     End;
     Result := mMes;
end;

// Retorna o nome do mes em inglês.
Function NomeMesIngles(Mes: Integer) :String;
Var
   mMes : String;
Begin
     Case Mes of
          1 : mMes := 'January  ';
          2 : mMes := 'February ';
          3 : mMes := 'March    ';
          4 : mMes := 'April    ';
          5 : mMes := 'May      ';
          6 : mMes := 'June     ';
          7 : mMes := 'July     ';
          8 : mMes := 'August   ';
          9 : mMes := 'September';
         10 : mMes := 'Octuber  ';
         11 : mMes := 'November ';
         12 : mMes := 'December ';
     End;
     Result := mMes;
end;

// Retorna o nome do dia da semana em português.
Function NomeDia(Dia: Integer) :String;
Var
   mDia : String;
Begin
     Case Dia of
          1 : mDia := 'Domingo';
          2 : mDia := 'Segunda Feira';
          3 : mDia := 'Terça Feira';
          4 : mDia := 'Quarta Feira';
          5 : mDia := 'Quinta Feira';
          6 : mDia := 'Sexta Feira';
          7 : mDia := 'Sabado';
     End;
     Result := mDia;
end;

//   POEZERO() - Converte numerico em string com zeros a esquerda.
Function PoeZero(Tamanho, Valor: Integer): String;
Var
    fValor : String;
begin
    fValor := InttoStr(Valor);
    Result := Copy( '000000000000000', 1, (Tamanho-Length(fValor)) ) + fValor;
end;

//   EMPTY() - Verifica se a string esta vazia.
function Empty(inString:String): Boolean;
Var
    index : Byte;
Begin
    index := 1;
    Empty := True;
    While (index <= Length(inString)) and (index <> 0) do begin
          If inString[index] = ' ' Then begin
             inc(index)
          end else begin
             Empty := False;
             index := 0
          end;
    end;
end;

// Preenche um string com n caracteres a direita.
Function Replicate(const Ch: Char; const Len: integer): string;
var
   I: integer;
begin
      SetLength(Result, Len);
      For I := 1 to Len do begin
          Result[I] := Ch;
      End;
end;

// Retorna a quantidade de dias entre duas datas.
Function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
Var
    Data: TDateTime;
begin
     Data   := DataAtual - DataVenc;
     Result := FloatToStr(Data);
end;

// Verifica se o sistema ja esta aberto.
Function SistemaAberto(ActivateIt: boolean; Titulo: String) : Boolean;
var
   hSem    : THandle;
   hWndMe  : HWnd;
   AppTitle: string;
begin
    Result := False;
    AppTitle := Application.Title;
    hSem := CreateSemaphore(nil, 0, 1, pChar(AppTitle));
    if ((hSem <> 0) and (GetLastError() = ERROR_ALREADY_EXISTS)) then begin
       CloseHandle(hSem);
       Result := True;
    end;
    if Result and ActivateIt then begin
       //Application.Title :=  'zzzzzzz';
       Application.Title := Titulo;
       hWndMe := FindWindow(nil, pChar(AppTitle));
       if (hWndMe <> 0) then begin
          if IsIconic(hWndMe) then begin
             ShowWindow(hWndMe, SW_SHOWNORMAL);
          end else begin
             SetForegroundWindow(hWndMe);
          end;
       end;
    end;
end;

// Substitui texto informado dentro de outro.
Function RemoveCaracter(PesquisarPor, TrocarPor : String; Texto :String):String;
var
   mPosicao     :Integer;
   mTamanho     :Integer;
   TempStr      :String;
   TempOriginal :String;
begin
    mTamanho     := Length(PesquisarPor);
    TempOriginal := Texto;
    TempStr      := '';
    Repeat
          mPosicao := Pos(PesquisarPor, TempOriginal);
          If (mPosicao <> 0) then begin
             TempStr      := TempStr + Copy(TempOriginal, 1, mPosicao-1);
             TempStr      := TempStr + TrocarPor;
             TempOriginal := Copy( TempOriginal, mPosicao+mTamanho, Length(TempOriginal) );
          End else begin
             Tempstr := Tempstr + TempOriginal;
          End;
    Until (mPosicao = 0);

    Result := Tempstr;
end;

// Alinha texto a direita.
Function Padr(s:String; n:Integer):string;
begin
      Result := Format('%'+IntToStr(n)+'.'+IntToStr(n)+'s',[s]);
end;

// Arredonda valores.
Function Arredonda(Valor: Double; Dec: Integer): Double;
var
   Valor1, Numero1, Numero2, Numero3: Double;
begin
      Valor1  := Exp(Ln(10) * (Dec + 1));
      Numero1 := Int(Valor * Valor1);
      Numero2 := (Numero1 / 10);
      Numero3 := Round(Numero2);
      Result  := (Numero3 / (Exp(Ln(10) * Dec)));
end;

// Arrendodamento II.
Function ExRound(Value: Extended; Decimals: Integer): Extended;
var
    Factor, Fraction: Extended;
begin
      Factor   := IntPower(10, Decimals);
      Value    := StrToFloat(FloatToStr(Value * Factor));
      Result   := Int(Value);
      Fraction := Frac(Value);

      if Fraction >= 0.5 then
         Result := Result + 1
      else
         if Fraction <= -0.5 then
            Result := Result - 1;

      Result := Result / Factor;
end;

// Remove caracteres de uma string deixando apenas numeros.
Function ApenasNumeros(Const Texto:String):String;
var
   I: integer;
   S: string;
begin
      S := '';
      for I := 1 To Length(Texto) do begin
          if CharInSet(Texto[i], ['0'..'9']) then begin
             S := S + Copy(Texto, I, 1);
          End;
      end;
      Result := S;
end;

// Remove numeros de uma string deixando apenas letras e sinais.
Function ApenasLetras(Const Texto:String):String;
var
    I: integer;
    S: string;
begin
      S := '';
      for I := 1 To Length(Texto) do begin
          if not (CharInSet(Texto[i], ['0'..'9'])) and not (CharInSet(Texto[i], ['!'..'/'])) then begin
             S := S + Copy(Texto, I, 1);
          End;
      end;
      Result := S;
end;

// Retorna a porcentagem de um valor
Function Percentual(Valor:real;Percent:Real):Real;
begin
      Percent := Percent / 100;
      Try
         Valor := Valor * Percent;
      Finally
         Result := Valor;
      End;
End;

procedure GerarLog(Usuario, Tabela, Funcao, Campo, Operacao, Antes, Depois, CampoChave: String);
var
   tTab: TMSQuery;
begin
    with Dados do begin
         with Log do begin
              sql.Clear;
              sql.Add('select top 1 * from Log order by Data desc');
              open;
              append;
                    LogData.Value               := Date;
                    LogHora.AsString            := TimetoStr(Time);
                    LogTabela.AsString          := Tabela;
                    LogFuncao.AsString          := Funcao;
                    LogUsuario.value            := '('+Trim(string(Menu_Principal.mUsuarioCodigo))+') ' + Trim(string(Menu_Principal.mUsuarioNome));
                    LogCampo.AsString           := Campo;
                    LogOperacao.AsString        := Operacao;
                    LogConteudo_Antes.AsString  := Antes;
                    LogConteudo_Depois.AsString := Depois;
                    LogComputador.AsString      := NomeComputador;
                    LogModulo.AsString          := Screen.ActiveForm.Name;
                    if Tabela = 'PagarReceber' then begin
                       LogDetalhe.value := 'Documento: '+PagarReceberNumero_Documento.asstring+' Emissão: '+PagarReceberData_Documento.AsString+' Valor: '+formatfloat(',##0.00', PagarReceberValor_Documento.asfloat);
                    end;
                    if Tabela = 'PagarReceberBaixas' then begin
                       if CampoChave = '' then campoChave := '0';
                       tTab := TMSQuery.Create(nil);
                       with tTab do begin
                            Connection := Banco_Empresas;
                            sql.Clear;
                            sql.Add('select Numero_Documento, Data_Documento, Valor_Documento');
                            sql.add('from PagarReceber');
                            sql.Add('where Numero = :pNum');
                            parambyname('pNum').asinteger := strtoint(CampoChave);
                            open;
                            LogDetalhe.value := 'Documento: '+tTab.fieldbyname('Numero_Documento').asstring+' Emissão: '+tTab.fieldbyname('Data_Documento').AsString+' Valor: '+formatfloat(',##0.00', tTab.fieldbyname('Valor_Documento').asfloat);
                       end;
                       tTab.Free;
                    end;
              post;
              close;
         end;
    end;
end;

procedure LogDados(Tabela: TDataSet; Descricao: String; pEstado: TDataSetState);
var
    i    : Integer;
    mData: TDate;
    mHora: String;
    tTab: TMSQuery;
begin
    With Dados, dmFiscal, dmContab, dmComercial, dmImporta do begin
         Log.SQL.Clear;
         Log.SQL.Add('SELECT TOP 1 * FROM Log ORDER BY Data Desc');
         Log.Open;

         If pEstado = dsEdit then begin    // Alteração.
            mData := Date;
            mHora := TimetoStr(Time);
            For i := 0 to Tabela.FieldCount-1 do Begin
                If Tabela.Fields[i].NewValue <> Tabela.Fields[i].OldValue then begin
                   Log.Append;
                       LogData.Value            := mData;
                       LogHora.asString         := mHora;
                       LogFuncao.Value          := 'ALTERAÇÃO';
                       LogUsuario.value         := '('+Trim(Menu_Principal.mUsuarioCodigo)+') ' + Trim(Menu_Principal.mUsuarioNome);
                       LogTabela.AsString       := Tabela.Name;
                       LogCampo.asString        := Tabela.Fields[i].Name;
                       LogOperacao.AsString     := Descricao;
                       if Tabela.Fields[i].OldValue <> null then LogConteudo_Antes.AsString := Tabela.Fields[i].OldValue;
                       if Tabela.Fields[i].NewValue <> null then LogConteudo_Depois.AsString := Tabela.Fields[i].NewValue;
                       LogComputador.AsString := NomeComputador;
                       LogModulo.AsString     := Screen.ActiveForm.Name;
                       
                       if Tabela.Name = 'PagarReceber' then begin
                          LogDetalhe.value := 'Documento: '+PagarReceberNumero_Documento.asstring+' Emissão: '+PagarReceberData_Documento.AsString+' Valor: '+formatfloat(',##0.00', PagarReceberValor_Documento.asfloat);
                       end;
                       if Tabela.name = 'PagarReceberBaixas' then begin
                          tTab := TMSQuery.Create(nil);
                          with tTab do begin
                               Connection := Banco_Empresas;
                               sql.Clear;
                               sql.Add('select Numero_Documento, Data_Documento, Valor_Documento');
                               sql.add('from PagarReceber');
                               sql.Add('where Numero = :pNum');
                               parambyname('pNum').asinteger := PagarReceberBaixasNumero.AsInteger;
                               open;
                               LogDetalhe.value := 'Documento: '+tTab.fieldbyname('Numero_Documento').asstring+' Emissão: '+tTab.fieldbyname('Data_Documento').AsString+' Valor: '+formatfloat(',##0.00', tTab.fieldbyname('Valor_Documento').asfloat);
                          end;
                       end;
                   Log.Post;
                End;
            End;
         End;
         If pEstado = dsInsert then begin    // Inclusão.
            Log.Append;
                LogData.Value          := Date;
                LogHora.AsString       := TimetoStr(Time);
                LogFuncao.AsString     := 'INCLUSÃO';
                LogUsuario.AsString    := '('+Trim(Menu_Principal.mUsuarioCodigo)+') '+Trim(Menu_Principal.mUsuarioNome);
                LogTabela.AsString     := Tabela.Name;
                LogOperacao.AsString   := Descricao;
                LogComputador.AsString := NomeComputador;
                LogModulo.AsString     := Screen.ActiveForm.Name;
                if Tabela.Name = 'PagarReceber' then begin
                    LogDetalhe.value := 'Documento: '+PagarReceberNumero_Documento.asstring+' Emissão: '+PagarReceberData_Documento.AsString+' Valor: '+formatfloat(',##0.00', PagarReceberValor_Documento.asfloat);
                end;
                if Tabela.name = 'PagarReceberBaixas' then begin
                   tTab := TMSQuery.Create(nil);
                   with tTab do begin
                        Connection := Banco_Empresas;
                        sql.Clear;
                        sql.Add('select Numero_Documento, Data_Documento, Valor_Documento');
                        sql.add('from PagarReceber');
                        sql.Add('where Numero = :pNum');
                        parambyname('pNum').asinteger := PagarReceberBaixasNumero.AsInteger;
                        open;
                        LogDetalhe.value := 'Documento: '+tTab.fieldbyname('Numero_Documento').asstring+' Emissão: '+tTab.fieldbyname('Data_Documento').AsString+' Valor: '+formatfloat(',##0.00', tTab.fieldbyname('Valor_Documento').asfloat);
                   end;
                   tTab.Free;
                end;
            Log.Post;
         End;
         If pEstado = dsInactive then begin    // Exclusão.
            Log.Append;
                LogData.Value       := Date;
                LogHora.AsString    := TimetoStr(Time);
                LogFuncao.Value     := 'EXCLUSÃO';
                LogUsuario.AsString := '('+Trim(Menu_Principal.mUsuarioCodigo)+') '+Trim(Menu_Principal.mUsuarioNome);
                LogTabela.Value     := AnsiString(Tabela.Name);
                LogOperacao.Value   := AnsiString(Descricao);
                LogComputador.Value := AnsiString(NomeComputador);
                LogModulo.Value     := AnsiString(Screen.ActiveForm.Name);
                if Tabela.Name = 'PagarReceber' then begin
                   LogDetalhe.value := 'Documento: '+PagarReceberNumero_Documento.asstring+' Emissão: '+PagarReceberData_Documento.AsString+' Valor: '+formatfloat(',##0.00', PagarReceberValor_Documento.asfloat);
                end;
                if Tabela.name = 'PagarReceberBaixas' then begin
                   tTab := TMSQuery.Create(nil);
                   with tTab do begin
                        Connection := Banco_Empresas;
                        sql.Clear;
                        sql.Add('select Numero_Documento, Data_Documento, Valor_Documento');
                        sql.add('from PagarReceber');
                        sql.Add('where Numero = :pNum');
                        parambyname('pNum').asinteger := PagarReceberBaixasNumero.AsInteger;
                        open;
                        LogDetalhe.value := 'Documento: '+tTab.fieldbyname('Numero_Documento').asstring+' Emissão: '+tTab.fieldbyname('Data_Documento').AsString+' Valor: '+formatfloat(',##0.00', tTab.fieldbyname('Valor_Documento').asfloat);
                   end;
                   tTab.Free;
                end;
            Log.Post;
         End;
         Log.Close;
    End;
end;

// Verificar se determinada tecla esta pressionada.
Function TeclaPressionada(const Key: integer): boolean;
begin
      Result := GetKeyState(Key) and 128 > 0;
end;

// Retorna o nome do computador.
Function NomeComputador: String;
var
  I: DWord;
begin
     I := MAX_COMPUTERNAME_LENGTH + 1;
     SetLength(Result, I);
     GetComputerName(PChar(Result), I);
     Result := String(PChar(Result));
End;

// Verifica se o computador esta configurado para rede.
Function RedePresente: Boolean;
begin
     Result := GetSystemMetrics(SM_NETWORK) <> 0;
end;

// Verifica se o CNPJ esta correto.
Function VerificaCNPJ(Num: String): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   // Retira cada numero do Edit, e joga p/ variavel
   If Length(trim(Num)) < 14 then begin
      VerificaCNPJ := False;
   end Else begin
      n1  := StrToInt(num[1]);
      n2  := StrToInt(num[2]);
      n3  := StrToInt(num[3]);
      n4  := StrToInt(num[4]);
      n5  := StrToInt(num[5]);
      n6  := StrToInt(num[6]);
      n7  := StrToInt(num[7]);
      n8  := StrToInt(num[8]);
      n9  := StrToInt(num[9]);
      n10 := StrToInt(num[10]);
      n11 := StrToInt(num[11]);
      n12 := StrToInt(num[12]);
      d1  := n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
      d1  := 11-(d1 mod 11);

      if d1 >= 10 then d1 := 0;
      d2 := d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
      d2 := 11-(d2 mod 11);
      if d2 >= 10 then d2 := 0;

      calculado := inttostr(d1)+inttostr(d2);
      digitado  := num[13]+num[14];
      if calculado = digitado then VerificaCNPJ := true else VerificaCNPJ := false;
   End;
End;

// Verificar se inscrição estadual esta correta.
Function VerificaIE(UF,IE: String): Boolean;
Const
  //Define Peso1 e peso2 com os pesos para o calculo do 1o. digito e 2o. Digito
  PesoSP1 : array[1..8]  of Integer = (1,3,4,5,6,7,8,10);
  PesoSP2 : array[1..11] of Integer = (3,2,10,9,8,7,6,5,4,3,2);
  PesoES  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoAC1 : array[1..11] of Integer = (4,3,2,9,8,7,6,5,4,3,2);
  PesoAC2 : array[1..12] of Integer = (5,4,3,2,9,8,7,6,5,4,3,2);
  PesoAL  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoAP  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoAM  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoBA1 : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoBA2 : array[1..7]  of Integer = (8,7,6,5,4,3,2);
  PesoCE  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoDF1 : array[1..11] of Integer = (4,3,2,9,8,7,6,5,4,3,2);
  PesoDF2 : array[1..12] of Integer = (5,4,3,2,9,8,7,6,5,4,3,2);
  PesoGO  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoMA  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoMT  : array[1..10] of Integer = (3,2,9,8,7,6,5,4,3,2);
  PesoMS  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoMG1 : array[1..12] of Integer = (1,2,1,2,1,2,1,2,1,2,1,2);
  PesoMG2 : array[1..12] of Integer = (3,2,11,10,9,8,7,6,5,4,3,2);
  PesoPA  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoPB  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoPR1 : array[1..8]  of Integer = (3,2,7,6,5,4,3,2);
  PesoPR2 : array[1..9]  of Integer = (4,3,2,7,6,5,4,3,2);
  PesoPE1 : array[1..7]  of Integer = (8,7,6,5,4,3,2);
  PesoPE2 : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoPI  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoRJ  : array[1..7]  of Integer = (2,7,6,5,4,3,2);
  PesoRN1 : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoRN2 : array[1..9]  of Integer = (10,9,8,7,6,5,4,3,2);
  PesoRS  : array[1..9]  of Integer = (2,9,8,7,6,5,4,3,2);
  PesoRO  : array[1..13] of Integer = (6,5,4,3,2,9,8,7,6,5,4,3,2);
  PesoRR  : array[1..8]  of Integer = (1,2,3,4,5,6,7,8);
  PesoSC  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoSE  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
  PesoTO  : array[1..8]  of Integer = (9,8,7,6,5,4,3,2);
Var
  Tmp   : Integer;
  Soma  : Integer;
  Dig1  : Integer;
  Dig2  : Integer;
  p     : Integer;
  d     : Integer;
  FimIE : String;
  Modulo: Integer;
  Alg   : String;
  Tmp2  : Integer;
  Dez   : Integer;
  nInt  : Integer;
begin
     Soma  := 0;
     FimIE := '';
     p     := 0;
     d     := 0;
     IE    := ApenasNumeros(IE);
     
     If IE <> '' then begin
        // Calculo do digito do estado do ACRE.
        If (UpperCase(UF) = 'AC') and (Length(IE) = 12) then begin
           // Calculando o primeiro digito.
           For Tmp := 1 to 11 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoAC1[tmp] );
           Dig1 := Soma mod 11;
           Dig1 := 11 - Dig1;
           If Dig1 > 9 then Dig1 := 0;
           FimIE := Copy(IE,1,11) + IntToStr(Dig1);
           // Calculando o segundo digito.
           Soma := 0;
           For Tmp := 1 to 12 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoAC2[tmp] );
           Dig1 := Soma mod 11;
           Dig1 := 11 - Dig1;
           If Dig1 > 9 then Dig1 := 0;
           FimIE := FimIE + IntToStr(Dig1);
        end;

        // Calculo do digito do estado de ALAGOAS.
        If (UpperCase(UF) = 'AL') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoAL[tmp] );
           Soma := Soma * 10;
           Dig1 := Soma - (Trunc(Soma / 11) * 11);
           if (Dig1 = 10) Then Dig1 := 0;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do AMAPA.
        If (UpperCase(UF) = 'AP') and (Length(IE) = 9) then begin
           If (StrtoInt( Copy(IE,1,8) ) <= 03017000) then begin
              p := 5;
              d := 0;
           End;
           If (StrtoInt( Copy(IE,1,8) ) >= 03017001) and (StrtoInt( Copy(IE,1,8) ) <= 03019022) then begin
              p := 9;
              d := 1;
           End;
           If (StrtoInt( Copy(IE,1,8) ) >= 03019023) then begin
              p := 0;
              d := 0;
           End;
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoAP[tmp] );
           Soma := (p + Soma);
           Dig1 := Soma mod 11;
           Dig1 := 11 - Dig1;
           if (Dig1 = 10) then Dig1 := 0;
           if (Dig1 = 11) then Dig1 := d;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do AMAZONAS.
        If (UpperCase(UF) = 'AM') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoAM[tmp] );
           If Soma < 11 then
              Dig1 := 11 - Soma
           else begin
              Dig1 := Soma mod 11;
              If Dig1 <= 1 then
                 Dig1 := 0
              else
                 Dig1 := 11 - Dig1;
           end;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado da BAHIA.
        If (UpperCase(UF) = 'BA') and (Length(IE) = 8) then begin
           Modulo := StrtoInt(Copy(IE,1,1));
           If (Modulo <= 5) or (Modulo = 8) then begin // IE iniciado por 0,1,2,3,4,5 ou 8 = Modulo 10
              // Calculo do 2º digito.
              For tmp := 1 to 6 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoBA1[tmp]);
              Dig2 := Soma mod 10;
              If Dig2 > 0 then Dig2 := 10 - Dig2;
              FimIE := Copy(IE,1,6)+InttoStr(Dig2);
              // Calculo do 1º digito.
              Soma := 0;
              For tmp := 1 to 7 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoBA2[tmp]);
              Dig1  := Soma mod 10;
              Dig1  := 10 - Dig1;
              If Dig1 > 9 then Dig1 := 0;
              FimIE := Copy(IE,1,6)+InttoStr(Dig1)+InttoStr(Dig2);
           end else begin // IE iniciado por 6,7 ou 9 = Modulo 11
              // Calculo do 2º digito.
              For tmp := 1 to 6 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoBA1[tmp]);
              Dig2 := Soma mod 11;
              If (Dig2 <= 1) then Dig2 := 0 else Dig2 := 11 - Dig2;
              FimIE := Copy(IE,1,6)+InttoStr(Dig2);
              // Calculo do 1º digito.
              Soma := 0;
              For tmp := 1 to 7 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoBA2[tmp]);
              Dig1 := Soma mod 11;
              Dig1 := 11 - Dig1;
              FimIE := Copy(IE,1,6)+InttoStr(Dig1)+InttoStr(Dig2);
           end;
        end;

        If (UpperCase(UF) = 'BA') and (Length(IE) = 9) then begin
           Modulo := StrtoInt(Copy(IE,2,1));
           If (Modulo <= 5) or (Modulo = 8) then begin // IE iniciado por 0,1,2,3,4,5 ou 8 = Modulo 10
              // Calculo do 2º digito.
              For tmp := 1 to 7 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoBA2[tmp]);
              Dig2 := Soma mod 10;
              If Dig2 > 0 then Dig2 := 10 - Dig2;
              FimIE := Copy(IE,1,7)+InttoStr(Dig2);
              // Calculo do 1º digito.
              Soma := 0;
              For tmp := 1 to 8 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoBA1[tmp]);
              Dig1  := Soma mod 10;
              Dig1  := 10 - Dig1;
              If Dig1 > 9 then Dig1 := 0;
              FimIE := Copy(IE,1,7)+InttoStr(Dig1)+InttoStr(Dig2);
           end else begin // IE iniciado por 6,7 ou 9 = Modulo 11
              // Calculo do 2º digito.
              For tmp := 1 to 7 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoBA2[tmp]);
              Dig2 := Soma mod 11;
              If (Dig2 <= 1) then Dig2 := 0 else Dig2 := 11 - Dig2;
              FimIE := Copy(IE,1,7)+InttoStr(Dig2);
              // Calculo do 1º digito.
              Soma := 0;
              For tmp := 1 to 8 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoBA1[tmp]);
              Dig1 := Soma mod 11;
              Dig1 := 11 - Dig1;
              FimIE := Copy(IE,1,7)+InttoStr(Dig1)+InttoStr(Dig2);
           end;
        end;

        // Calculo do digito do estado do CEARÁ.
        If (UpperCase(UF) = 'CE') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoCE[tmp] );
           Dig1 := Soma mod 11;
           Dig1 := 11 - Dig1;
           If Dig1 > 9 then Dig1 := 0;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do DISTRITO FEDERAL.
        If (UpperCase(UF) = 'DF') and (Length(IE) = 13) then begin
           // Calculando o primeiro digito.
           For Tmp := 1 to 11 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoDF1[tmp] );
           Dig1 := Soma mod 11;
           Dig1 := 11 - Dig1;
           If Dig1 > 9 then Dig1 := 0;
           FimIE := Copy(IE,1,11) + IntToStr(Dig1);
           // Calculando o segundo digito.
           Soma := 0;
           For Tmp := 1 to 12 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoDF2[tmp] );
           Dig1 := Soma mod 11;
           Dig1 := 11 - Dig1;
           If Dig1 > 9 then Dig1 := 0;
           FimIE := FimIE + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do ESPÍRITO SANTO.
        If (UpperCase(UF) = 'ES') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoES[tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado de GOIÁS.
        If (UpperCase(UF) = 'GO') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoGO[tmp] );
           Dig1 := Soma mod 11;
           If (Dig1 = 1) then begin
              If (StrtoInt(Copy(IE,1,8)) >= 10103105) and (StrtoInt(Copy(IE,1,8)) <= 10119997) then
                 Dig1 := 1
              else
                 Dig1 := 0;
           end else begin
              If Dig1 <> 0 then begin
                 Dig1 := 11 - Dig1;
              end;
           end;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do MARANHÃO.
        If (UpperCase(UF) = 'MA') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoMA[tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do MATO GROSSO.
        If (UpperCase(UF) = 'MT') and (Length(IE) = 11) then begin
           For Tmp := 1 to 10 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoMT[tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,10) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do MATO GROSSO DO SUL.
        If (UpperCase(UF) = 'MS') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoMS[tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado de MINAS GERAIS.
        If (UpperCase(UF) = 'MG') and (Length(IE) = 13) then begin
           FimIE := Copy(IE,1,3)+'0'+Copy(IE,4,8);
           For Tmp := 1 to 12 do begin
               Alg := InttoStr( (StrToInt(FimIE[tmp]) * PesoMG1[tmp]) );
               For Tmp2 := 1 to Length(Alg) do Soma := Soma + StrToInt(Alg[Tmp2]);
           end;
           Tmp2 := Soma;
           Dez  := 0;
           For Tmp := 1 to 15 do begin
               Tmp2 := Tmp2 + 1;
               nInt := Round(Tmp2/10);
               If (Tmp2 - (nInt * 10) = 0) and (Dez = 0) then Dez := Tmp2;
           end;
           Dig1  := Dez - Soma;
           If Dig1 > 9 then Dig1 := 0;
           FimIE := Copy(IE,1,11)+InttoStr(Dig1);
           Soma  := 0;
           For Tmp := 1 to 12 do Soma := Soma + ( StrToInt(FimIE[tmp]) * PesoMG2[tmp] );
           Dig2 := Soma mod 11;
           If Dig2 > 1 then Dig2 := 11 - Dig2 else Dig2 := 0;
           FimIE := FimIE + InttoStr(Dig2);
        end;

        // Calculo do digito do estado do PARÁ
        If (UpperCase(UF) = 'PA') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoPA[tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado da PARAÍBA.
        If (UpperCase(UF) = 'PB') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoPB[tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do PARANÁ.
        If (UpperCase(UF) = 'PR') and (Length(IE) = 10) then begin
           // Calculando o 1º digito.
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoPR1[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
           // Calculando o 2º digito.
           Soma := 0;
           For Tmp := 1 to 9 do Soma := Soma + ( StrToInt(FimIE[Tmp]) * PesoPR2[Tmp] );
           Dig2 := Soma mod 11;
           if (Dig2 < 2) Then Dig2 := 0;
           if (Dig2 > 1) Then Dig2 := 11 - Dig2;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1) +IntToStr(Dig2);
        end;
        // Calculo do digito do estado de PERNAMBUCO.
        If (UpperCase(UF) = 'PE') and (Length(IE) = 9) then begin
           // Calculando o 1º digito.
           For Tmp := 1 to 7 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoPE1[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,7) + IntToStr(Dig1);
           // Calculando o 2º digito.
           Soma := 0;
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(FimIE[Tmp]) * PesoPE2[Tmp] );
           Dig2 := Soma mod 11;
           if (Dig2 < 2) Then Dig2 := 0;
           if (Dig2 > 1) Then Dig2 := 11 - Dig2;
           FimIE := Copy(IE,1,7) + IntToStr(Dig1) +IntToStr(Dig2);
        end;
        // Calculo do digito do estado do PIAUÍ.
        If (UpperCase(UF) = 'PI') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoPI[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do RIO DE JANEIRO.
        If (UpperCase(UF) = 'RJ') and (Length(IE) = 8) then begin
           For Tmp := 1 to 7 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoRJ[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,7) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do RIO GRANDE DO NORTE.
        If (UpperCase(UF) = 'RN') and ( (Length(IE) = 9) or (Length(IE) = 10) ) then begin
           // Calculo de digito de inscrição de 9 digitos.
           If Length(IE) = 9 then begin
              For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoRN1[tmp] );
              Soma := Soma * 10;
              Dig1 := Soma mod 11;
              if (Dig1 = 10) Then Dig1 := 0;
              FimIE := Copy(IE,1,8) + IntToStr(Dig1);
           End;
           // Calculo de digito de inscrição de 10 digitos.
           If Length(IE) = 10 then begin
              For Tmp := 1 to 9 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoRN2[tmp] );
              Soma := Soma * 10;
              Dig1 := Soma mod 11;
              if (Dig1 = 10) Then Dig1 := 0;
              FimIE := Copy(IE,1,9) + IntToStr(Dig1);
           End;
        end;
        // Calculo do digito do estado do RIO GRANDE DO SUL.
        If (UpperCase(UF) = 'RS') and (Length(IE) = 10) then begin
           For Tmp := 1 to 9 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoRS[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,9) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado de RONDÔNIA.
        If (UpperCase(UF) = 'RO') and (Length(IE) = 14) then begin
           For Tmp := 1 to 13 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoRO[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,13) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado de RORAIMA.
        If (UpperCase(UF) = 'RR') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoRR[Tmp] );
           Dig1  := Soma mod 9;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado de SANTA CATARINA.
        If (UpperCase(UF) = 'SC') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoSC[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado de SÃO PAULO.
        If (UpperCase(UF) = 'SP') and (Length(IE) = 12) then begin
           For tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[tmp]) * PesoSP1[tmp]);
           Dig1 := Soma mod 11;
           if (Dig1 >= 10) Then Dig1 := 0;
           FimIE := Copy(Ie,1,8) + IntToStr(Dig1) + Copy(IE,10,2);
           Soma := 0;
           For tmp := 1 To 11 do Soma := Soma + ( StrToInt( FimIE[tmp] ) * PesoSP2[tmp] );
           Dig2 := Soma mod 11;
           If Dig2 >= 10 Then Dig2 := 0;
           FimIE := FimIE + Inttostr(Dig2);
        end;
        // Calculo do digito do estado de SERGIPE.
        If (UpperCase(UF) = 'SE') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoSE[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        // Calculo do digito do estado do TOCANTINS.
        If (UpperCase(UF) = 'TO') and (Length(IE) = 9) then begin
           For Tmp := 1 to 8 do Soma := Soma + ( StrToInt(IE[Tmp]) * PesoTO[Tmp] );
           Dig1 := Soma mod 11;
           if (Dig1 < 2) Then Dig1 := 0;
           if (Dig1 > 1) Then Dig1 := 11 - Dig1;
           FimIE := Copy(IE,1,8) + IntToStr(Dig1);
        end;
        
        Result := FimIE = IE;
     End else begin
        Result := True;
     End;
end;

// Impressão de linha e coluna na impressora matricial.
procedure Say(nLin, nCol: Integer; Var Arquivo: Text;Texto: Variant);
var
    x: Integer;
begin
      If nLin <> LinhaAtual then begin
         For x := LinhaAtual to (Nlin-1) do begin
             WriteLn(Arquivo,'');
             LinhaAtual  := LinhaAtual+1;
             ColunaAtual := 0;
         End;
      End;
      If nCol > 1 then begin
         For X := 1 to (nCol-ColunaAtual)-1 do begin
             Write(Arquivo,' ');
         End;
      End;
      ColunaAtual := NCol+Length(Texto)-1;
      Write(Arquivo,Texto);
//      if Cancelado then closefile(arquivo);
end;

// Retorno o ultimo dia do mês;
Function UltimoDiaMes(Mdt: TDateTime): TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
     Decodedate(mDt, ano, mes, dia);
     mDtTemp := (mDt - dia) + 33;
     Decodedate(mDtTemp, ano, mes, dia);
     Result := mDtTemp - dia;
end;

// Deleta os arquivos ".TXT' de relatórios gerados pelo sistema.
Function DeletaRelatorios(Nome: String; Paginas:Integer):Boolean;
Var
   mNomeArq : String;
begin
      Janela_Processamento.Progresso.Max      := Paginas;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Show;
      While Paginas >= 0 do begin
            mNomeArq := Trim(Nome)+PoeZero(4, Paginas)+'.TXT';
            Janela_Processamento.lProcesso.Caption  := mNomeArq;
            If FileExists(mNomeArq) then DeleteFile(mNomeArq);
            Dec(Paginas);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
            Application.ProcessMessages;
      End;
      Janela_Processamento.Close;
      Result := True;
End;

// Remove caracteres acentuados de uma string.
Function RemoveAcentos(Str:String): String;
Const ComAcento = 'àâêôûãõáéíóúçüñÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
      SemAcento = 'aaeouaoaeioucuNAAEOUAOAEIOUCU';
Var
      x : Integer;
Begin
      For x := 1 to Length(Str) do Begin
          If Pos(Str[x],ComAcento)<>0 Then begin
              Str[x] := SemAcento[Pos(Str[x],ComAcento)];
          End;
      End;
      Result := Str;
End;

// Rotina geradora do digito verificador da chave de acesso.
Function DigitoNFE(Chave:String) :Integer;
Const
    Pesos : array[1..43] of Integer = (4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2);
Var
    Tmp   : Integer;
    Soma  : Integer;
    Dig1  : Integer;
Begin
      Soma := 0;
      For Tmp := 1 to 43 do Soma := Soma + ( StrToInt(Chave[tmp]) * Pesos[Tmp] );
      Dig1 := Soma mod 11;
      if (Dig1 < 2) Then Dig1 := 0;
      if (Dig1 > 1) Then Dig1 := 11 - Dig1;
      Result := Dig1;
End;

// Retorno n espaços em uma string.
Function Space( Tamanho: Integer ): String;
begin
     Result := Replicate( ' ', Tamanho );
end;

// Verificar se o CPF esta correto.
Function VerificaCPF(Num: String): Boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
   d1,d2                     : integer;
   digitado, calculado       : string;
begin
      If (Trim(Num) <> '') and (Length(Num) = 11) then begin
         n1 := StrToInt(Num[1]);
         n2 := StrToInt(Num[2]);
         n3 := StrToInt(Num[3]);
         n4 := StrToInt(Num[4]);
         n5 := StrToInt(Num[5]);
         n6 := StrToInt(Num[6]);
         n7 := StrToInt(Num[7]);
         n8 := StrToInt(Num[8]);
         n9 := StrToInt(Num[9]);
         d1 := n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
         d1 := 11-(d1 mod 11);
         If d1 >= 10 then d1 := 0;
         d2 := d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
         d2 := 11-(d2 mod 11);
         If d2 >= 10 then d2 := 0;
         calculado := InttoStr(d1)+inttostr(d2);
         digitado  := Num[10]+Num[11];
         Result := Calculado = Digitado
      end else begin
         Result := False;
      End;
end;

// Verifica as incidencias de uma string em outra.
Function Incidencia(Pesquisa, Texto: String):Integer;
Var
    i         : Integer;
    Letra     : Integer;
    QtPesquisa: Integer;
    aPesquisa : array of String;
    Acertos   : Integer;
    Validas   : Integer;
begin
      Texto    := AnsiUpperCase(Texto);
      Pesquisa := Trim(AnsiUpperCase(Pesquisa));

      // Achando a quantidade de palavras.
      QtPesquisa := 0;
      For i := 1 to Length(Pesquisa) do begin
          If Copy(Pesquisa, i, 1) = ' ' then Inc(QtPesquisa);
      End;
      SetLength(aPesquisa, QtPesquisa+1);

      // Separando as palavras para pesquisa.
      i := 0;
      Acertos := 0;
      For Letra := 1 to Length(Pesquisa) do begin
          If Copy(Pesquisa, Letra, 1) <> ' ' then begin
             aPesquisa[i] := aPesquisa[i] + Copy(Pesquisa, Letra, 1);
          End else begin
             If Trim(aPesquisa[i]) <> '' then Inc(i);
          End;
      End;

      // Achando o numero exato de palavras válidas.
      Validas := 0;
      For i := 0 to QtPesquisa do begin
          If Trim(aPesquisa[i]) <> '' then Inc(Validas);
      End;

      // Executando a pesquisa.
      For i := 0 to Validas-1 do begin
          If Pos( aPesquisa[i], Texto ) > 0 then Inc(Acertos);
      End;

      Result := Acertos;
end;

// Criar a conta analítica do plano no plano de contas a partir da conta sintetica.
Function CriaAnalitica(Sintetica, Mascara: String ):String;
begin
      Mascara := RemoveCaracter('.', '', Mascara);
      Mascara := RemoveCaracter(';', '', Mascara);
      Mascara := Trim(Mascara);
      Result  := ( Sintetica + Replicate( '0', (Length(Mascara)-Length(Sintetica)-1) )+ '1' );
End;

// Remove caracteres acentuados de uma string e de controle do XML.
Function RemoveCaracterXML(Str:String): String;
Const ComAcento = '&àâêôûãõáéíóúçüúùñÀÂËÊÔÛÃÕÁÉÍÓÚÇÜÑ&<>§"°ºª´`^~¨¢£_--'+CHR(0178)+CHR(0179)+CHR(39)+CHR(8)+CHR(31)+CHR(8211)+CHR(211)+CHR(11)+CHR(8224);
      SemAcento = 'eaaeouaoaeioucuuunAAEEOUAOAEIOUCUNE()             --23        ';
Var
   x: Integer;
Begin
      For x := 1 to Length(Str) do Begin
          If Pos(Str[x],ComAcento) <> 0 then begin
              Str[x] := SemAcento[Pos(Str[x],ComAcento)];
          End;
      End;
      For x := 1 to Length(Str) do begin
          If (Ord(Str[x]) < 32) or (ORD(Str[x]) > 125) then begin
              Str[x] := ' ';
          end;
      End;
      Result := Str;
End;

// Rotina geradora do digito verificador do codigo do pais.
Function DigitoPais(Pais: String):String;
Const
    Pesos : array[1..3] of Integer = (4,3,2);
Var
    Tmp   : Integer;
    Soma  : Integer;
    Dig1  : Integer;
Begin
      if Trim(Pais) <> '' then begin
         Soma := 0;
         For Tmp := 1 to 3 do Soma := Soma + (StrToInt(Pais[Tmp]) * Pesos[Tmp] );
         Dig1 := Soma mod 11;
         If (Dig1 < 2) then Dig1 := 0 else Dig1 := (11 - Dig1);
         Result := InttoStr(Dig1);
      end else begin
         Result := '0';
      end;
End;

// Rotina verificadora do codigo do pais.
Function CodigoPais(Pais: String):Boolean;
Const
    Pesos : array[1..3] of Integer = (4,3,2);
Var
    Tmp   : Integer;
    Soma  : Integer;
    Dig1  : Integer;
    Inicio: String;
Begin
      Inicio := Copy(Pais, 1, 3);
      Soma   := 0;
      For Tmp := 1 to 3 do Soma := Soma + (StrToInt(Inicio[Tmp]) * Pesos[Tmp] );
      Dig1 := Soma mod 11;
      If (Dig1 < 2) then Dig1 := 0 else Dig1 := (11 - Dig1);
      Result := Pais = (Inicio + InttoStr(Dig1));
End;

// Copia arquivos de uma pasta para outra.
procedure CopiarArquivos(const De, Para: string);
var
    Search: TSearchRec;
    Fim   : Boolean;
begin
     // Copia os Arquivos.
     Fim := FindFirst(De + '*.*', faAnyFile, Search) <> 0;
     While not Fim do begin
           If (Search.Attr and faDirectory) <> faDirectory then begin
              if not CopyFile(PCHAR(De+Search.Name), PCHAR(Para+Search.Name), False) then
                 MessageDlg('A cópia falhou', mtError, [mbOK], 0);
           end;
           Fim := FindNext(Search) <> 0;
     end;
end;

procedure CopiarArquivos2(Const Origem, Destino: String);
var
    Dados: TSHFileOpStruct;
begin
      If (Origem <> ' ') and (Destino <> '') then begin
         FillChar(Dados,SizeOf(Dados), 0);
         With Dados do begin
              wFunc  := FO_COPY;
              pFrom  := PChar(Origem);
              pTo    := PChar(Destino);
              fFlags := FOF_ALLOWUNDO;
          End;
          SHFileOperation(Dados);
      end else begin
          ShowMessage('Preencha corretamente os caminhos de origem e destino.');
      end;
end;

{
procedure ModalidadeParcelas(ValorNota, ValorProduto, ValorIPI: Currency; Data: TDate; Parcelas: Integer; Prazo: Integer; Demais: Integer; Nota, Fornecedor: String; DiaFixo: Integer);
Var
    mValorParcela,
    mValorProduto,
    mValorIPI,
    mTotalParcela,
    mDiferenca: Real;
    i,
    mUltimoDia: integer;
    mData: TDate;
begin
      with Dados, dmFiscal do begin
           Dados.Configuracao.Open;

           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(Nota)+Trim(Fornecedor);
           TabParcelas.Execute;
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro) ORDER BY Registro, Parcela');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(Nota)+Trim(Fornecedor);
           TabParcelas.Open;

           mValorParcela := RoundTo((ValorNota / Parcelas), -2);
           mValorProduto := (ValorProduto / Parcelas);
           mValorIPI     := (ValorIPI / Parcelas);
           mData         := Data + Prazo;
           mTotalParcela := 0;

           for i := 0 to Parcelas-1 do begin
               If i > 0 then begin
                  mData := mData + Demais;
               end;

               // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
               if DiaFixo <= 0 then begin
                  if (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                     if (DayOfWeek(mData) = 1) then begin
                        if (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     end;
                     if (DayOfWeek(mData) = 7) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     end;
                  end;
               end else begin
                  if MonthOf(mData) < 12 then
                     mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))))
                  else
                     mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/01/'+InttoStr(YearOf(mData)+1))));

                  if i > 0 then begin
                     if mUltimoDia > DiaFixo then begin
                        if MonthOf(mData) < 12 then
                           mData := StrtoDate(InttoStr(DiaFixo)+'/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))
                        else
                           mData := StrtoDate(InttoStr(DiaFixo)+'/01/'+InttoStr(YearOf(mData)+1))
                     end else begin
                        if MonthOf(mData) < 12 then
                           mData := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))
                        else
                           mData := StrtoDate(InttoStr(mUltimoDia)+'/01/'+InttoStr(YearOf(mData)+1))
                     end;
                  end;
               end;

               TabParcelas.Append;
                           TabParcelasRegistro.Value      := AnsiString(Trim(Nota)+Trim(Fornecedor));
                           TabParcelasParcela.Value       := AnsiString(InttoStr(i+1)+'/'+InttoStr(Parcelas));
                           TabParcelasVencimento.Value    := mData;
                           TabParcelasValor.Value         := mValorParcela;
                           TabParcelasValor_Produto.Value := mValorProduto;
                           TabParcelasValor_IPI.Value     := mValorIPI;
               TabParcelas.Post;
               mTotalParcela := mTotalParcela + mValorParcela;
           end;

           // Verifica se há difirença de arradondamento e jogo a diferença na primeira ou na última parcela "Ver configuração".
           if mTotalParcela <> ValorNota then begin
              mDiferenca := ValorNota - mTotalParcela;

              if ConfiguracaoDiferenca_Duplicata.AsInteger = 0 then
                 TabParcelas.First
              else
                 TabParcelas.Last;

              TabParcelas.Edit;
                          TabParcelasValor.Value := TabParcelasValor.Value + mDiferenca;
              TabParcelas.Post;
           end;
      end;
end;
}
procedure ModalidadeParcelas(ValorNota, ValorProduto, ValorIPI: Currency; Data: TDate; Parcelas: Integer; Prazo: Integer; Demais: Integer; Nota, Fornecedor: String; DiaFixo, pModal: Integer);
Var
    mValorParcela,
    mValorProduto,
    mValorIPI,
    mTotalParcela,
    mDiferenca: Real;
    i,
    mUltimoDia: integer;
    mData: TDate;
    tModalParc: TMSQuery;
begin
      with Dados, dmFiscal do begin
           Configuracao.Open;
           tModalParc := TMSQuery.Create(nil);
           with tModalParc do begin
                Connection := Banco;
                sql.Clear;
                sql.Add('select Parcela');
                sql.add('      ,Dias');
                sql.add('      ,Data_Base = (select Data_Base from ModalidadesPagamento where Codigo = :pCod)');
                sql.add('from ModalidadesParcelas');
                sql.Add('where Codigo = :pCod');
                sql.add('order by Parcela');
                parambyname('pCod').asinteger := pModal;
                open;
                first;
           end;
           with TabParcelas do begin
                SQL.Clear;
                SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
                ParamByName('pRegistro').AsString := Trim(Nota)+Trim(Fornecedor);
                Execute;
                SQL.Clear;
                SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro) ORDER BY Registro, Parcela');
                ParamByName('pRegistro').AsString := Trim(Nota)+Trim(Fornecedor);
                Open;
           end;

           mValorParcela := RoundTo((ValorNota / Parcelas), -2);
           mValorProduto := (ValorProduto / Parcelas);
           mValorIPI     := (ValorIPI / Parcelas);
           mData         := Data + tModalParc.FieldByName('Dias').AsInteger;
           mTotalParcela := 0;

           for i := 0 to Parcelas-1 do begin
               tModalParc.locate('Parcela', i+1, [locaseInsensitive]);
               if tModalParc.FieldByName('Data_Base').AsString = 'V' then begin
                  if i > 0 then begin
                     mData := mData + tModalParc.FieldByName('Dias').AsInteger;
                  end;
               end else begin
                  mData := Data + tModalParc.FieldByName('Dias').AsInteger;
               end;
               // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
               if DiaFixo <= 0 then begin
                  if (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                     if (DayOfWeek(mData) = 1) then begin
                        if (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     end;
                     if (DayOfWeek(mData) = 7) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     end;
                  end;
               end else begin
                  if MonthOf(mData) < 12 then
                     mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))))
                  else
                     mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/01/'+InttoStr(YearOf(mData)+1))));

                  if i > 0 then begin
                     if mUltimoDia > DiaFixo then begin
                        if MonthOf(mData) < 12 then
                           mData := StrtoDate(InttoStr(DiaFixo)+'/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))
                        else
                           mData := StrtoDate(InttoStr(DiaFixo)+'/01/'+InttoStr(YearOf(mData)+1))
                     end else begin
                        if MonthOf(mData) < 12 then
                           mData := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))
                        else
                           mData := StrtoDate(InttoStr(mUltimoDia)+'/01/'+InttoStr(YearOf(mData)+1))
                     end;
                  end;
               end;

               TabParcelas.Append;
                           TabParcelasRegistro.Value      := AnsiString(Trim(Nota)+Trim(Fornecedor));
                           TabParcelasParcela.Value       := AnsiString(InttoStr(i+1)+'/'+InttoStr(Parcelas));
                           TabParcelasVencimento.Value    := mData;
                           TabParcelasValor.Value         := mValorParcela;
                           TabParcelasValor_Produto.Value := mValorProduto;
                           TabParcelasValor_IPI.Value     := mValorIPI;
               TabParcelas.Post;
               mTotalParcela := mTotalParcela + mValorParcela;
           end;

           // Verifica se há difirença de arradondamento e jogo a diferença na primeira ou na última parcela "Ver configuração".
           if mTotalParcela <> ValorNota then begin
              mDiferenca := ValorNota - mTotalParcela;

              if ConfiguracaoDiferenca_Duplicata.AsInteger = 0 then
                 TabParcelas.First
              else
                 TabParcelas.Last;

              TabParcelas.Edit;
                          TabParcelasValor.Value := TabParcelasValor.Value + mDiferenca;
              TabParcelas.Post;
           end;
      end;
end;

// Antecipa ou adianta uma data informada se cair em final de semana.
Function DiaUtil(Data: TDate; Acao: String):TDate;
begin
       If (DayOfWeek(Data) = 1) then begin
          If (Acao = '-') then
             Data := Data -2
          else
             Data := Data +1;
       End;
       If (DayOfWeek(Data) = 7) then begin
          If (Acao = '-') then
             Data := Data -1
          else
             Data := Data +2;
       End;
       Result := Data;
End;

// Transcreve valor informado por extenso.
Function ValorExtenso(Valor: Real; NomeMoeda: Boolean): String;
Const
    ErrorString = 'Valor fora da faixa';
    Min         = 0.01;
    Max         = 4294967295.99;
    Centesimo   = ' centavo';
    Centesimos  = ' centavos';
Var
    mMoedaSing : String;
    mMoedaPlu  : String;
begin
     If NomeMoeda = true then begin
        mMoedaSing := ' real';
        mMoedaPlu  := ' reais';
     End;

     If (Valor >= Min) and (Valor <= Max) then begin
        {Tratar reais}
        Result := ConversaoRecursiva(Round(Int(Valor)));

        If Round(Int(Valor)) = 1 then
           Result := Result + mMoedaSing
        else
           If Round(Int(Valor)) <> 0 then begin
              Result := Result + mMoedaPlu;
           End;

        {Tratar centavos}
        If Frac(Valor) > 0 then begin
           If Round(Int(Valor)) <> 0 then
              Result := Result + ' e ' + ConversaoRecursiva(Round(Frac(Valor) * 100));
              If (Round(Frac(Valor) * 100) = 1) then
                 Result := Result + centesimo
              else
                 Result := Result + centesimos;
        End;
     End else raise
        ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',[Valor, Min, Max]);
end;
// Parte da função extenso de valor.
function ConversaoRecursiva(N: LongWord): string;
begin
     case N of
          1..19:                                                                          Result := Unidades[N];
          20, 30, 40, 50, 60, 70, 80, 90:                                                 Result := Dezenas[N div 10];
          21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:                 Result := Dezenas[N div 10]                    + ' e '       + ConversaoRecursiva(N mod 10);
          100, 200, 300, 400, 500, 600, 700, 800, 900:                                    Result := Centenas[N div 100];
          101..199:                                                                       Result := ' cento e '                          + ConversaoRecursiva(N mod 100);
          201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999: Result := Centenas[N div 100]                  + ' e '       + ConversaoRecursiva(N mod 100);
          1000..999999:                                                                   Result := ConversaoRecursiva(N div 1000)       + ' mil '     + ConversaoRecursiva(N mod 1000);
          1000000..1999999:                                                               Result := ConversaoRecursiva(N div 1000000)    + ' milhão '  + ConversaoRecursiva(N mod 1000000);
          2000000..999999999:                                                             Result := ConversaoRecursiva(N div 1000000)    + ' milhões ' + ConversaoRecursiva(N mod 1000000);
          1000000000..1999999999:                                                         Result := ConversaoRecursiva(N div 1000000000) + ' bilhão '  + ConversaoRecursiva(N mod 1000000000);
          2000000000..4294967295:                                                         Result := ConversaoRecursiva(N div 1000000000) + ' bilhões ' + ConversaoRecursiva(N mod 1000000000);
     end;
end;

// Inverter um String.
Function InverteString(wStr1: String): String;
var
   i: Integer;
begin
  Result := '';
  for i := Length( wStr1 ) downto 1 do Result := Result + copy(wStr1,i,1 );
end;

{ Retorna o tamanho do arquivo, ou -1 se o arquivo não for encontrado }
Function TamanhoArquivo(const FileName: string): integer;
var
   SR: TSearchRec;
   I : integer;
begin
      I := FindFirst(FileName, faArchive, SR);
      Try
        If I = 0 then
           Result := SR.Size
        else
          Result := -1;
      Finally
         FindClose(SR);
      End;
end;

{ Gera o número do processo de importação. }
Function NumeroProcesso(Mascara: String; Numero:Integer; Ano: Integer; Forma: String; DigitosAno: Integer): String;
Var
   mAno : String;
begin
      If DigitosAno = 4 then begin
         mAno    := InttoStr(Ano);
         Mascara := Copy(Mascara, 1, 5);
      end else begin
         mAno    := Copy(InttoStr(Ano),3,2);
         Mascara := Copy(Mascara, 1, 7);
      End;

      // Mascara + Número.
      If Forma = 'MN'  then If Trim(Mascara) <> '' then Result := Trim(Mascara) + ' ' + PoeZero(4, Numero) else Result := Trim(Mascara) + ' ' + InttoStr(Numero);
      // Mascara + Número + Ano.
      If Forma = 'MNA' then Result := Trim(Mascara) + ' ' + PoeZero(4, Numero) + '/' + mAno;
      // Mascara + Ano + Número.
      If Forma = 'MAN' then Result := Trim(Mascara) + ' ' + mAno + '/' + PoeZero(4, Numero);
      // Número + Ano + Mascara.
      If Forma = 'NAM' then Result := PoeZero(4, Numero) + '/' + mAno + ' ' + Trim(Mascara);
      // Ano + Número + Mascara.
      If Forma = 'ANM' then Result := mAno + '/' + PoeZero(4, Numero) +  ' ' + Trim(Mascara);
      // Mascara + Referencia do Navio + BL
      If Forma = 'MNB' then Result := concat(Mascara, inttostr(Numero), ' - BL', inttostr(Ano) );
      
      Result := Trim(Result);
end;


// Deixa apenas caracteres não especiais no texto informado.
Function AchaCaracterXML(Arquivo: String):WideString;
var
    Arq: TextFile;
    mLinha: WideString;
    i: integer;
begin
      if FileExists(Arquivo) then begin
         AssignFile(Arq, Arquivo);
         Reset(Arq);

         while not Eof (Arq) do begin
               ReadLn(Arq, mLinha);
               for i := 1 to Length(mLinha) do begin
                   if (Ord(mLinha[i]) < 32) or (ORD(mLinha[i]) > 125) then begin
                      Result := Result +' Caracter: '+ mLinha[i]+ '  Código:'+InttoStr(ORD(mLinha[i]))+'   Posição:'+InttoStr(i)+#13;
                   end;
               End;
         end;
         ClipBoard.AsText := Result;
         CloseFile (Arq);
      end else begin
         ShowMessage('Arquivo não encontrado...'+Arquivo);
      end;
end;


Procedure Altera_Reg_Win(Path, Param, Valor, Tipo : String);
{
Altera o registro do Winapi.Windows, conforme valores enviados ...
Path : Caminho do parâmetro a ser alterado ; (Chave)
Param: Parâmetro a ser alterado ;
Valor: Valor a ser alterado na chave ; (True, False, ...)
Tipo : Tipo do valor a ser alterado, sendo :
"Str" => String ;
"Int" => Integer ;
"Bin" => Binário ;
"Boo" => Boolean ;
"Cur" => Currency; (moeda)
"Dat" => Date ;
"Dti" => DateTime ;
"Tim" => Time ;
"Flo" => Float ; (Real)
Exemplo de uso ...: (Alterando o localshare do BDE para True)
Altera_Reg_Win( 'SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT',
'LOCAL SHARE', 'TRUE', 'STR');
}
var
    Reg: TRegistry;
begin
      Reg := TRegistry.Create;
      Tipo:= uppercase(Tipo);

      try                                         { Define a chave-raiz do registro }
          Reg.RootKey := HKEY_LOCAL_MACHINE;      { Abre a chave (path). Se não existir, cria e abre. }
          Reg.OpenKey(Path, true);

          // "Str" => String ;
          If Tipo='STR' then
             Reg.WriteString(Param, Valor);

          // "Int" => Integer ;
          If Tipo='INT' then
             Reg.WriteInteger(Param, StrToInt(Valor) );

          // "Bin" => Binário ;
          // If Tipo='BIN' then
          // Reg.WriteBinary(Param, Valor); binary

          // "BOO" => Boolean ;
          If Tipo='Boo' then
             If Uppercase(Valor)='TRUE' then
                Reg.WriteBool(Param, True)
             Else
                Reg.WriteBool(Param, False);

          // "CUR" => Currency; (moeda)
          If Tipo='Cur' then
             Reg.WriteCurrency(Param, StrToFloat(Valor));

          // "DAT" => Date ;
          If Tipo='Dat' then
             Reg.WriteDate(Param, StrToDate(Valor));

          // "DTI" => DateTime ;
          If Tipo='Dti' then
              Reg.WriteDateTime(Param, StrToDateTime(Valor));

          // "TIM" => Time ;
          If Tipo='Tim' then
             Reg.WriteTime(Param, StrToTime(Valor));

          // "FLO" => Float ; (Real)
          If Tipo='Flo' then
             Reg.WriteFloat(Param, StrToFloat(Valor));
      finally
          Reg.Free;
      end;
end;

{ Fecha todas as tabela do Data Module informado.}
procedure FecharTabelas(DataModule1, DataModule2, DataModule3, DataModule4: TDataModule);
var
   I: Integer;
begin
     Screen.Cursor := crHourGlass;
     If DataModule1 <> nil then begin
         For i := 0 to DataModule1.ComponentCount -1 do begin
             If DataModule1.Components[I] is TMSQuery then
                TMSQuery(DataModule1.Components[I]).Close
             else
                 If DataModule1.Components[I] is TMSTable then
                    TMSTable(DataModule1.Components[I]).Close;
         End;
     End;
     If DataModule2 <> nil then begin
         For i := 0 to DataModule2.ComponentCount -1 do begin
             If DataModule2.Components[I] is TMSQuery then
                TMSQuery(DataModule2.Components[I]).Close
             else
                If DataModule2.Components[I] is TMSTable then
                   TMSTable(DataModule2.Components[I]).Close;
         End;
     End;
     If DataModule3 <> nil then begin
        For i := 0 to DataModule3.ComponentCount -1 do begin
            If DataModule3.Components[I] is TMSQuery then
               TMSQuery(DataModule3.Components[I]).Close
            else
               If DataModule3.Components[I] is TMSTable then
                  TMSTable(DataModule3.Components[I]).Close;
        End;
     End;
     If DataModule4 <> nil then begin
        For i := 0 to DataModule4.ComponentCount -1 do begin
            If DataModule4.Components[I] is TMSQuery then
               TMSQuery(DataModule4.Components[I]).Close
            else
               If DataModule4.Components[I] is TMSTable then
                  TMSTable(DataModule4.Components[I]).Close;
        End;
     End;
     Screen.Cursor := crDefault;
end;

// IMPORTA PLANILHA DO EXCEL.
(*
Function ImportaEXCEL(AGrid: TStringGrid; AXLSFile: String; NomeAba: TPageControl; Aba, lIni, lFim:Integer; Titulo:Boolean): Boolean;
const
    xlCellTypeLastCell = $0000000B;
var
    XLApp
   ,Sheet: OLEVariant;
    RangeMatrix: Variant;
    x
   ,y
   ,k
   ,r
   ,l:Integer;
begin
      Result := False;

      //Cria Excel- OLE Object
      XLApp := CreateOleObject('Excel.Application');

      Try
         //Esconde Excel
         XLApp.Visible := False;

         //Abre o Workbook
         XLApp.Workbooks.Open(AXLSFile);
//         Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[Aba];
         Sheet := XLApp.Workbooks[0].WorkSheets[Aba];
         NomeAba.Pages[Aba-1].Caption := XLApp.Sheets[Aba].name;
         Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
         NomeAba.Pages[Aba-1].Caption := XLApp.Sheets[Aba].name;

         //Pegar o número da última linha
         if lFim = 0 then
            x := XLApp.ActiveCell.Row
         else
            x := lFim;

         //Pegar o número da última coluna
         y := XLApp.ActiveCell.Column;

         //Seta Stringgrid linha e coluna
         AGrid.RowCount := x+2;
         AGrid.ColCount := y;

         //Associa a variant WorkSheet com a variant do Delphi
         RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[x, y]].Value;

         //Cria o loop para listar os registros no TStringGrid
         if lFim = 0 then
            k := 1
         else
            k := lIni;

         if Titulo then
            l := 1
         else
            l := 2;

         Repeat
               For r := 1 to y do begin
                   if (not Titulo) and (l = 2) then begin
                      aGrid.Cells[r-1,l-1] := CHR(64+r);
                   end;
                   aGrid.Cells[r-1,l] := RangeMatrix[k, r]
               End;
               Inc(k);
               Inc(l);
         Until k > x;

         RangeMatrix := Unassigned;
      Finally
         //Fecha o Excel
         If not VarIsEmpty(XLApp) then begin
            XLApp.Quit;
            XLAPP  := Unassigned;
            Sheet  := Unassigned;
            Result := True;
//            KillTask('Excel.exe');    // Microsoft Excel
         End;
      End;
end;
*)

Function ImportaEXCEL(xStringGrid: TStringGrid; xFileXLS: string; NomeAba: TPageControl; Aba, lIni, lFim:Integer; Titulo:Boolean): Boolean;
const
    xlCellTypeLastCell = $0000000B;
var
    XLSAplicacao, AbaXLS: OLEVariant;
    RangeMatrix: Variant;
    mLinTot, mColTot, mColPL, mLinPL, mColGr, mLinGr: Integer;
begin
      Result                                  := False;
      Janela_Processamento                    := TJanela_Processamento.Create(nil);
      Janela_Processamento.Caption            := 'Processando...';
      Janela_Processamento.lProcesso.Caption  := 'Abrindo planilha...Aguarde';
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Show;

      // Cria Excel- OLE Object.
      XLSAplicacao := CreateOleObject('Excel.Application');

      try
         // Esconde Excel.
         XLSAplicacao.Visible := False;

         // Abre o Workbook.
         XLSAplicacao.Workbooks.Open(xFileXLS);

         {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
         XLSAplicacao.WorkSheets[Aba].Activate;

         {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
         AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[Aba];
         AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

         //NomeAba.Pages[Aba-1].Caption := XLSAplicacao.Sheets[Aba].name.

         // Pegar o número da última linha.
         mLinTot := XLSAplicacao.ActiveCell.Row+1;
         Janela_Processamento.Progresso.Max := mLinTot;

         // Pegar o número da última coluna.
         mColTot := XLSAplicacao.ActiveCell.Column;

         // Seta xStringGrid linha e coluna.
         XStringGrid.RowCount := mLinTot;
         XStringGrid.ColCount := mColTot;

         // Associaca a variant WorkSheet com a variant do Delphi.
         RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[mLinTot, mColTot]].Value;

         // Cria o loop para listar os registros no TStringGrid.
         if Titulo then
            mLinGr := 1
         else
            mLinGr := 2;

         mLinPL := lIni;
         repeat
              mColGr := 0;
              for mColPL := 1 to mColTot do begin
                  xStringGrid.Cells[mColGr, mLinGr] := RangeMatrix[mLinPL, mColPL];
                  inc(mColGr);
              end;
              inc(mLinGr);
              Inc(mLinPL);
              Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
         until mLinPL > mLinTot;

         RangeMatrix := Unassigned;
      finally
         // Fecha o Microsoft Excel.
         if not VarIsEmpty(XLSAplicacao) then begin
            XLSAplicacao.Quit;
            XLSAplicacao := Unassigned;
            AbaXLS       := Unassigned;
            Result       := True;
            Janela_Processamento.close;
         end;
      end;
end;

Function AbasEXCEL(xFileXLS: string): integer;
var
   XLSAplicacao, AbaXLS: OLEVariant;
begin
   // Cria Excel- OLE Object
   XLSAplicacao := CreateOleObject('Excel.Application');
   try
      // Esconde Excel
      XLSAplicacao.Visible := False;

      // Abre o Workbook
      XLSAplicacao.Workbooks.Open(xFileXLS);
      result := XLSAplicacao.Sheets.Count;
   finally
      // Fecha o Microsoft Excel
      if not VarIsEmpty(XLSAplicacao) then begin
         XLSAplicacao.Quit;
         XLSAplicacao := Unassigned;
         AbaXLS       := Unassigned;
      end;
   end;
end;


// Corrige erro da tabela PagarReceberBaixas Quando não há título lançado em PagarReceber.
procedure AjustaFinanceiro;
Var
    mNumeros: WideString;
begin
      With dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber ORDER BY Numero');
           PagarReceber.Open;
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas ORDER BY Numero');
           PagarReceberBaixas.Open;
           While not PagarReceberBaixas.Eof do begin
                 If PagarReceber.Locate('Numero', PagarReceberBaixas.FieldByName('Numero').AsInteger, [loCaseInsensitive]) = false then begin
                    mNumeros := mNumeros + PagarReceberBaixas.FieldByName('Numero').AsString+',';
                 End;
                 PagarReceberBaixas.Next;
           End;
           Showmessage('Terminado...');
      End;
end;

// Derrubar programa aberto da memoria.
Function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

// Função para pegar o campo informado no arquivo texto pelo separador;
Function PegaCampo(Registro:String; Texto:WideString; Campo: Integer; Separador:String): String;
var
    mCol : Integer;
    mPos : Integer;
    mCol2: Integer;
begin
      Result := '';
      mPos   := 0;
      if Trim(Texto) <> '' then begin
         if Trim(Registro) <> '' then begin
             If Copy(Texto, 2, 4) = Registro then begin
                For mCol := 1 to Length(Texto) do begin
                    If Texto[mCol] = Separador then Inc(mPos);
                    If mPos = Campo then begin
                       For mCol2 := (mCol+1) to Length(Texto) do begin
                           If Texto[mCol2] <> Separador then
                              Result := Result + Texto[mCol2]
                           else
                              Exit;
                       End;
                    End;
                End;
             End;
         end else begin
             for mCol := 0 to Length(Texto) do begin
                 if Texto[mCol] = Separador then Inc(mPos);
                 if mPos = Campo then begin
                    for mCol2 := (mCol+1) to Length(Texto) do begin
                        if Texto[mCol2] <> Separador then
                           Result := Result + Texto[mCol2]
                        else
                           Exit;
                    end;
                 end;
             end;
         end;
      end;
end;

// Função para pegar uma parte da string informando um mcarcador inicial e um final.
Function PegaParte(Texto:String; Inicio, Fim:String): String;
var
    mPos, 
    mTam   : Integer;
    mTexto : String;
begin
      Result := '';
      if Trim(Texto) <> '' then begin
         // Remove o codigo do sistema da descricao.
         if pos('<{', Texto) > 0 then begin
            Texto := Copy(Texto, 1, Pos('<{', Texto)-1);
         end;

         if (Trim(Inicio) <> '') and (Trim(Fim) <> '') then begin
            mPos   := Pos(Inicio, Texto);
            mTam   := Pos(Fim, Texto) - mPos;
            mTexto := Copy(Texto, mPos, mTam);
            mTexto := RemoveCaracter(Inicio, '', mTexto);
            mTexto := RemoveCaracter(Fim, '', mTexto);
         end;
         if (Trim(Inicio) = '') and (Trim(Fim) <> '') then begin
            mPos   := 1;
            mTam   := Pos(Fim, Texto) - mPos;
            mTexto := Copy(Texto, mPos, mTam);
            mTexto := RemoveCaracter(Fim, '', mTexto);
         end;
         if (Trim(Inicio) <> '') and (Trim(Fim) = '') then begin
            mPos   := Pos(Inicio, Texto);
            mTam   := 20;
            mTexto := Copy(Texto, mPos, mTam);
            mTexto := RemoveCaracter(Inicio, '', mTexto);
         end;
      end;
      Result := mTexto;
end;

// Função para alterar o campo informado no arquivo texto pelo separador;
Function AlteraCampo(Registro:String; Texto:WideString; Campo: Integer; Separador:String; Troca: String): String;
var
    mCol : Integer;
    mPos : Integer;
    mCol2: Integer;
begin
      Result := '';
      If Copy(Texto, 2, 4) = Registro then begin
         mPos := 0;
         For mCol := 1 to Length(Texto) do begin
             If Texto[mCol] = Separador then Inc(mPos);
             If mPos = Campo then begin
                For mCol2 := (mCol+1) to Length(Texto) do begin
                    If Texto[mCol2] <> Separador then begin
                       Delete(Texto, mCol2, 1);
                       Insert('¨', Texto, mCol2);
                    end else begin
                       Break;
                    End;
                End;
                Break;
             End;
         End;
         
         Texto  := RemoveCaracter('¨', '', Texto);
         Insert(Troca, Texto, mCol+1);
      End;
      Result := Texto;
end;

Function TBRound(Value: Extended; Decimals: integer): Extended;
var
  Factor, Fraction: Extended;
begin
     Factor := IntPower(10, Decimals);
     { A conversão para string e depois para float evita erros de arredondamentos indesejáveis. }
     Value := StrToFloat(FloatToStr(Value * Factor));
     Result := Int(Value);
     Fraction := Frac(Value);
     if Fraction >= 0.5 then
       Result := Result + 1
     else if Fraction <= -0.5 then
       Result := Result - 1;
     Result := Result / Factor;
end;

// Função para quebra string em partes.
Function QuebraString(BaseString, BreakString: string): TStringList;
var
    EndOfCurrentString: integer;
    sList: TStringList;
begin
     sList := TStringList.create;
     Repeat
           EndOfCurrentString := Pos(BreakString, BaseString);
           If EndOfCurrentString = 0 then
              sList.add(BaseString)
           else
              sList.add(Copy(BaseString, 1, EndOfCurrentString-1));

           //BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);
           BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString)+100);
     Until EndOfCurrentString = 0;

     result := sList;
end;

Function ListaCampos(pTipoNota, pCampo:Integer): WideString;
var
    mCampo,
    Lista,
    mParte: String;
    mCalculo: WideString;
    i       : Integer;
    Final   : Byte;
begin
     With Dados do begin
          Lista := '';
          TipoNota.Open;
          
          If TipoNota.Locate('Codigo', pTipoNota, [loCaseInsensitive]) = true then begin
             If pCampo = 0 then begin
                For i := 0 to TipoNota.FieldCount-1 do begin
                    mCampo := TipoNota.Fields[i].DisplayName;

                    If (Pos('Calculo_', mCampo) > 0) then begin
                       mCalculo := TipoNota.FieldByName(mCampo).AsString;
                       mCalculo := RemoveCaracter('+'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('-'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('/'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('*'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('('  , ' ', mCalculo);
                       mCalculo := RemoveCaracter(')'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('{'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('>'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter(';'  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('='  , ' ', mCalculo);
                       mCalculo := RemoveCaracter('100', ' ', mCalculo);
                       mCalculo := mCalculo + ' ';

                       If Trim(mCalculo) <> '' then begin
                          Repeat
                               Final  := Pos(' ', mCalculo);
                               mParte := Trim(Copy(mCalculo, 1, Final- 1));
                               If mParte <> '' then begin
                                  If Pos(mParte, Lista) = 0 then begin
                                     Lista := Lista + QuotedStr(mParte) + ',';
                                  End;
                               End;

                               mCalculo := Copy(mCalculo, Final+1, Length(mCalculo) - Final);
                          Until Final = 0;
                       End;
                    End;
                End;
             end else begin
                if pCampo = 1 then
                   mCalculo := TipoNota.FieldByName('Inf_Complementares').AsString
                else   
                   mCalculo := TipoNota.FieldByName('Inf_Complementares2').AsString;

                mCalculo := mCalculo + ' ';

                If Trim(mCalculo) <> '' then begin
                   Repeat
                        Final  := Pos(' ', mCalculo);
                        mParte := Trim(Copy(mCalculo, 1, Final- 1));
                        If Pos('_', mParte) = 0 then mParte := '';
                        mParte := Copy(mParte, 1, Pos(']', mParte));

                        If mParte <> '' then begin
                           If Pos(mParte, Lista) = 0 then begin
                              Lista    := Lista    + QuotedStr(mParte) + ',';
                           End;
                        End;

                        mCalculo := Copy(mCalculo, Final+1, Length(mCalculo) - Final);
                   Until Final = 0;
                End;
             End;
          End;

          If Trim(Lista) <> '' then begin
             Result := Copy(Lista, 1, Length(Lista)-1);
          end else begin
             Result := QuotedStr('');
          End;   
     End;
end;

Function ValorExtenso2(Valor: Real; NomeMoeda:Boolean; Caixa: Integer): WideString;
Label 111, 222, 333, 444, 445;
Var
    Cruzeiro,
    Mil,
    Milhao,
    Bilhao,
    Letra,
    Aux    : String;
    Unidade: Array[1..9]  of String;
    Dezena : Array[1..10] of String;
    Dezenas: Array[1..8]  of String;
    Centena: Array[1..9]  of String;
    Moeda  : Array[1..6]  of String;
    Moedas : Array[1..6]  of String;
    E,
    De,
    Ext,
    Hum,
    Centavo: String;
    mValor : String;
Begin
   Cruzeiro   := '';
   Mil        := '';
   Milhao     := '';
   Bilhao     := '';
   Letra      := '';
   Aux        := '';
   Unidade[1] := 'Um ';
   Unidade[2] := 'Dois ';
   Unidade[3] := 'Três ';
   Unidade[4] := 'Quatro ';
   Unidade[5] := 'Cinco ';
   Unidade[6] := 'Seis ';
   Unidade[7] := 'Sete ';
   Unidade[8] := 'Oito ';
   Unidade[9] := 'Nove ';
   Dezena[1]  := 'Dez ';
   Dezena[2]  := 'Onze ';
   Dezena[3]  := 'Doze ';
   Dezena[4]  := 'Treze ';
   Dezena[5]  := 'Quatorze ';
   Dezena[6]  := 'Quinze ';
   Dezena[7]  := 'Dezesseis ';
   Dezena[8]  := 'Dezessete ';
   Dezena[9]  := 'Dezoito ';
   Dezena[10] := 'Dezenove ';
   Dezenas[1] := 'Vinte ';
   Dezenas[2] := 'Trinta ';
   Dezenas[3] := 'Quarenta ';
   Dezenas[4] := 'Cinquenta ';
   Dezenas[5] := 'Sessenta ';
   Dezenas[6] := 'Setenta ';
   Dezenas[7] := 'Oitenta ';
   Dezenas[8] := 'Noventa ';
   Centena[1] := 'Cem ';
   Centena[2] := 'Duzentos ';
   Centena[3] := 'Trezentos ';
   Centena[4] := 'Quatrocentos ';
   Centena[5] := 'Quinhentos ';
   Centena[6] := 'Seiscentos ';
   Centena[7] := 'Setecentos ';
   Centena[8] := 'Oitocentos ';
   Centena[9] := 'Novecentos ';
   Moeda[1]   := 'Centavo ';
   Moeda[2]   := 'Real ';
   Moeda[3]   := 'Mil ';
   Moeda[4]   := 'Milhão ';
   Moeda[5]   := 'Bilhão ';
   Moeda[6]   := 'Real ';
   Moedas[1]  := 'Centavos ';
   Moedas[2]  := 'Reais ';
   Moedas[3]  := 'Mil ';
   Moedas[4]  := 'Milhões ';
   Moedas[5]  := 'Bilhões ';
   Moedas[6]  := 'Reais ';
   E          := 'e ';
   De         := 'de ';
   Hum        := 'hum ';
   Ext        := '';
   mValor     := FormatFloat('000,000,000,000.00', Valor);
   Centavo    := Copy(mValor,17,2);
   Cruzeiro   := Copy(mValor,13,3);
   Mil        := Copy(mValor,9,3);
   Milhao     := Copy(mValor,5,3);
   Bilhao     := Copy(mValor,1,3);

   If Bilhao > '000' then begin
      If Bilhao = '001' then begin
         Ext := Ext + Hum;
         GoTo 111;
         Exit
      End;
      If Copy(Bilhao,1,1) > '1' Then
         Ext := Ext + Centena[StrToInt(Copy(Bilhao,1,1))]
      else begin
         If (Copy(Bilhao,1,1) = '1') and (Copy(Bilhao,2,2) > '00') then Ext := Ext + 'cento ';
         If (Copy(Bilhao,1,1) = '1') and (Copy(Bilhao,2,2) = '00') then Ext := Ext + 'cem ';
      End;
      If (Copy(Bilhao,2,2) > '00') and (Copy(Bilhao,1,1) > '0') then Ext := Ext + E;
      If (Copy(Bilhao,2,2) > '00') and (Copy(Bilhao,2,2) < '10') Then begin
         Ext := Ext + Unidade[StrToInt(Copy(Bilhao,3,1))];
         GoTo 111;
         Exit
      End;
      If (Copy(Bilhao,2,2) > '09') and (Copy(Bilhao,2,2) < '20') Then begin
         Ext := Ext + Dezena[StrToInt(Copy(Bilhao,2,2))-9];
         GoTo 111;
         Exit;
      End;
      If Copy(Bilhao,2,2) > '19' Then Ext := Ext + Dezenas[StrToInt(Copy(Bilhao,2,1)) - 1];
      If (Copy(Bilhao,2,1) > '1') and (Copy(Bilhao,3,1) > '0') Then Ext := Ext + E + Unidade[StrToInt(Copy(Bilhao,3,1))];
   End;

   111:
   If Bilhao > '000' then begin
      If Bilhao > '001' Then
         Ext := Ext + Moedas[5]
      else
         Ext := Ext + Moeda[5];

     If (Mil < '001') and (Cruzeiro < '001') and (Milhao < '001') Then
        Ext := Ext + ' de '
     else
        Ext := Ext + 'e';
   End;

   If Milhao > '000' then begin
      If (Milhao = '001') and (Bilhao = '000') then begin
         Ext := Ext + Hum;
         GoTo 222;
         Exit;
      End;

      If Copy(Milhao,1,1) > '1' Then
         Ext := Ext + Centena[StrToInt(Copy(Milhao,1,1))]
      else begin
         If (Copy(Milhao,1,1) = '1') and (Copy(Milhao,2,2) > '00') then Ext := Ext + 'cento ';
         If (Copy(Milhao,1,1) = '1') and (Copy(Milhao,2,2) = '00') then Ext := Ext + 'cem ';
      End;

      If (Copy(Milhao,2,2) > '00') and (Copy(Milhao,1,1) > '0') then Ext := Ext + E;
      If (Copy(Milhao,2,2) > '00') and (Copy(Milhao,2,2) < '10') then begin
          Ext := Ext + Unidade[StrToInt(Copy(Milhao,3,1))];
          Goto 222;
          Exit
      End;

      If (Copy(Milhao,2,2) > '09') and (Copy(Milhao,2,2) < '20') then begin
       Ext := Ext + Dezena[StrToInt(Copy(Milhao,2,2))-9];
       GoTo 222;
       Exit;
     End;

     If Copy(Milhao,2,2) > '19' then
        Ext := Ext + Dezenas[StrToInt(Copy(Milhao,2,1)) - 1];
     If (Copy(Milhao,2,1) > '1') and (Copy(Milhao,3,1) > '0') then
        Ext := Ext + E + Unidade[StrToInt(Copy(Milhao,3,1))];
   End;
   
   222:
   If Milhao > '000' then begin
      If Milhao > '001' then
         Ext := Ext + Moedas[4]
      else
         Ext := Ext + Moeda[4];
         
     If (Mil < '001') and (Cruzeiro < '001') then
        Ext := Ext + ' de '
     else
        If Bilhao >= '000' then Ext := Ext + 'e ';
   End;

   If Mil > '000' then begin
      If (Mil = '001') and (Milhao = '000') and (Bilhao = '000') then begin
         Ext := Ext + Hum;

         Goto 333;
         Exit;
     End;

     If Copy(Mil,1,1) > '1' then
        Ext := Ext + Centena[StrToInt(Copy(Mil,1,1))]
     else begin
        If (Copy(Mil,1,1) = '1') and (Copy(Mil,2,2) > '00') then Ext := Ext + ' cento ';
        If (Copy(Mil,1,1) = '1') and (Copy(Mil,2,2) = '00') then Ext := Ext + ' cem ';
     End;

     If (Copy(Mil,2,2) > '00') and (Copy(Mil,1,1) > '0') then Ext := Ext + E;

     If (Copy(Mil,2,2) > '00') and (Copy(Mil,2,2) < '10') then begin
        Ext := Ext + Unidade[StrToInt(Copy(Mil,3,1))];

        Goto 333;
        Exit;
     End;

     If (Copy(Mil,2,2) > '09') and (Copy(Mil,2,2) < '20') then begin
        Ext := Ext + Dezena[StrToInt(Copy(Mil,2,2))-9];

        GoTo 333;
        Exit;
     End;

     If Copy(Mil,2,2) > '19' then
        Ext := Ext + Dezenas[StrToInt(Copy(Mil,2,1)) - 1];
     If (Copy(Mil,2,1) > '1') and (Copy(Mil,3,1) > '0') then
        Ext := Ext + E + Unidade[StrToInt(Copy(Mil,3,1))];
   End;

   333:
   If Mil > '000' then begin
     Ext := Ext + Moeda[3];
     If (Milhao = '000') and (Bilhao = '000') and (Cruzeiro > '000') then
        Ext := Ext + 'e '
     else begin
        If Cruzeiro > '000' then Ext := Ext + 'e ';
        If Cruzeiro = '000' then Ext := Ext + ' ';
     End;
   End;
   
   If Cruzeiro > '000' then begin
      If (Cruzeiro = '001') and (Mil = '000') and (Milhao = '000') and (Bilhao = '000') then begin
         Ext := Ext + Hum;
         Goto 444;
         Exit
      End;
      If (Copy(Cruzeiro,1,1) = '1') and (Copy(Cruzeiro, 2,2) > '00') then
        Ext := Ext + 'Cento ' + E
      else begin
        If Copy(Cruzeiro,1,1) > '0' then begin
           Ext := Ext + Centena[StrToInt(Copy(Cruzeiro,1,1))];
           If Copy(Cruzeiro,2,2) > '00' then Ext := Ext + E;
        End;
      End;

     If (Copy(Cruzeiro,2,2) > '00') and (Copy(Cruzeiro,2,2) < '10') then begin
        Ext := Ext + Unidade[StrToInt(Copy(Cruzeiro,3,1))];
        
        Goto 444;
        Exit;
     End;
     If (Copy(Cruzeiro,2,2) > '09') and (Copy(Cruzeiro,2,2) < '20') then begin
        Ext := Ext + Dezena[StrToInt(Copy(Cruzeiro,2,2))-9];

        Goto 444;
        Exit;
     End;
     
     If Copy(Cruzeiro,2,2) > '19' then
        Ext := Ext + Dezenas[StrToInt(Copy(Cruzeiro,2,1)) - 1];
     If (Copy(Cruzeiro,2,1) > '1') and (Copy(Cruzeiro,3,1) > '0') then
        Ext := Ext + E + Unidade[StrToInt(Copy(Cruzeiro,3,1))];
   End;

   444:
   If NomeMoeda = true then begin
      If Cruzeiro > '001' then
        Ext := Ext + Moedas[2]
      else
        If (Milhao > '000') Or (Bilhao > '000') Or (Cruzeiro > '000') Or (Mil > '000') then
           Ext := Ext + Moedas[2]
        else
           Ext := Ext + Moeda[2];
   End;

   If (Milhao > '000') Or (Bilhao > '000') Or (Cruzeiro > '000') Or (Mil > '000') then
      Ext := Ext
   else
      Ext := '';

   If (Centavo = '001') and (Cruzeiro = '000') and (Mil = '000') and (Milhao = '000') and (Bilhao = '000') then begin
      Ext := Ext + Hum;
      Goto 445;
   End;
   
   If (Bilhao > '000') Or (Milhao > '000') Or (Mil > '000') Or (Cruzeiro > '000') then If Centavo > '00' then Ext := Ext + 'e ';
   If (Centavo > '00') and (Centavo < '10') then Ext := Ext + Unidade[StrToInt(Centavo)];
   If (Centavo > '09') and (Centavo < '20') then Ext := Ext + Dezena[StrToInt(Copy(Centavo,2,1))+1];
   If Centavo > '19' then Ext := Ext + Dezenas[StrToInt(Copy(Centavo,1,1)) - 1];
   If (Copy(Centavo,1,1) > '1') and (Copy(Centavo,2,1) > '0') then Ext := Ext + E + Unidade[StrToInt(Copy(Centavo,2,1))];

   445:
   If Centavo = '01' then Ext := Ext + ' '+Moeda[1];
   If Centavo > '01' then Ext := Ext + ' '+Moedas[1];

   If Caixa = 0 then Result := Ext;
   If Caixa = 1 then Result := AnsiLowerCase(Ext);
   If Caixa = 2 then Result := AnsiUpperCase(Ext);
End;

// Nesta funçao, passa-se como parametro uma string e é retornado a string com a primeira letra de cada palavra em maíuscula.
function PrimeiraLetraMaiuscula(Str: string): string;
var
   i  :integer;
   esp:boolean;
begin
      Str := LowerCase(Trim(Str));
      for i := 1 to Length(Str) do begin
          if i = 1 then
             Str[i] := UpCase(str[i])
          else begin
             if i <> Length(Str) then begin
                Esp := (Str[i] = ' ');
                If Esp then Str[i+1] := UpCase(Str[i+1]);
             end;
          end;
      end;
      Result := Str;
end;

// Captura a imagem da tela e salva em arquivo.
Function CapturaTela: TBitMap;
var
   DC: hdc;
   CV: TCanvas;
begin
     Result        := TBitmap.Create;
     Result.Width  := Screen.Width;
     Result.Height := Screen.Height;
     DC            := GetDC(0);
     CV            := TCanvas.Create;
     CV.Handle     := DC;
     Result.Canvas.CopyRect(Rect(0, 0, Screen.Width, Screen.Height), CV, Rect(0, 0, Screen.Width, Screen.Height));
     CV.Free;
     ReleaseDC(0, DC);
end;

// Redimensiona uma imagem.
procedure QualityResizeBitmap(bmpOrig, bmpDest: TBitmap; newWidth, newHeight: Integer);
var
    xIni, xFin, yIni, yFin, xSalt, ySalt: Double;
    X, Y, pX, pY, tpX: Integer;
    R, G, B: Integer;
    pxColor: TColor;
begin
    bmpDest.Width  := newWidth;
    bmpDest.Height := newHeight;

    xSalt := bmpOrig.Width / newWidth;
    ySalt := bmpOrig.Height / newHeight;

    yFin := 0;
    for Y := 0 to pred(newHeight) do begin
        yIni := yFin;
        yFin := yIni + ySalt;
        if yFin >= bmpOrig.Height then yFin := pred(bmpOrig.Height);
       xFin := 0;
       for X := 0 to pred(newWidth) do begin
           xIni := xFin;
           xFin := xIni + xSalt;
           if xFin >= bmpOrig.Width then xFin := pred(bmpOrig.Width);

           R := 0;
           G := 0;
           B := 0;
           tpX := 0;

           for pY := Round(yIni) to Round(yFin) do
               for pX := Round(xIni) to Round(xFin) do begin
                   Inc(tpX);
                   pxColor := ColorToRGB(bmpOrig.Canvas.Pixels[pX, pY]);
                   R := R + GetRValue(pxColor);
                   G := G + GetGValue(pxColor);
                   B := B + GetBValue(pxColor);
               end;

           bmpDest.Canvas.Pixels[X,Y] := RGB(Round(R/tpX),Round(G/tpX),Round(B/tpX));
       end;
    end;
end;

// Trunca um valor real.
{
Function TruncaValor(Value:Real;Casas:Integer):Real;
Var
    sValor: String;
    nPos  : Integer;
begin
   //Transforma o valor em string
   sValor := FloatToStr(Value);

   //Verifica se possui pondo decimal
   nPos := Pos(FormatSettings.DecimalSeparator,sValor);
   If ( nPos > 0 ) Then begin
      sValor := Copy(sValor,1,nPos+Casas);
   End;

   Result := StrToFloat(sValor);
end;
}
function TruncaValor(Valor:Real;Casas:Integer):currency;
begin
    result := power(10,-Casas) * Trunc(power(10,Casas) * valor);
end;

// Verifica se o número do container esta correto.
Function VerificaContainer(Num: String): boolean;
Var
    mSoma   : Real;
    i       : Integer;
    mDigito : Integer;
begin
      mSoma := 0;
      If Length(Num) <> 11 then begin
         VerificaContainer := False;
      end else begin
         For i := 0 to 9 do begin
             If i < 4 then begin
                If Num[i+1] = 'A' then mSoma := mSoma + (10 * Power(2,i));
                If Num[i+1] = 'B' then mSoma := mSoma + (12 * Power(2,i));
                If Num[i+1] = 'C' then mSoma := mSoma + (13 * Power(2,i));
                If Num[i+1] = 'D' then mSoma := mSoma + (14 * Power(2,i));
                If Num[i+1] = 'E' then mSoma := mSoma + (15 * Power(2,i));
                If Num[i+1] = 'F' then mSoma := mSoma + (16 * Power(2,i));
                If Num[i+1] = 'G' then mSoma := mSoma + (17 * Power(2,i));
                If Num[i+1] = 'H' then mSoma := mSoma + (18 * Power(2,i));
                If Num[i+1] = 'I' then mSoma := mSoma + (19 * Power(2,i));
                If Num[i+1] = 'J' then mSoma := mSoma + (20 * Power(2,i));
                If Num[i+1] = 'K' then mSoma := mSoma + (21 * Power(2,i));
                If Num[i+1] = 'L' then mSoma := mSoma + (23 * Power(2,i));
                If Num[i+1] = 'M' then mSoma := mSoma + (24 * Power(2,i));
                If Num[i+1] = 'N' then mSoma := mSoma + (25 * Power(2,i));
                If Num[i+1] = 'O' then mSoma := mSoma + (26 * Power(2,i));
                If Num[i+1] = 'P' then mSoma := mSoma + (27 * Power(2,i));
                If Num[i+1] = 'Q' then mSoma := mSoma + (28 * Power(2,i));
                If Num[i+1] = 'R' then mSoma := mSoma + (29 * Power(2,i));
                If Num[i+1] = 'S' then mSoma := mSoma + (30 * Power(2,i));
                If Num[i+1] = 'T' then mSoma := mSoma + (31 * Power(2,i));
                If Num[i+1] = 'U' then mSoma := mSoma + (32 * Power(2,i));
                If Num[i+1] = 'V' then mSoma := mSoma + (34 * Power(2,i));
                If Num[i+1] = 'W' then mSoma := mSoma + (35 * Power(2,i));
                If Num[i+1] = 'X' then mSoma := mSoma + (36 * Power(2,i));
                If Num[i+1] = 'Y' then mSoma := mSoma + (37 * Power(2,i));
                If Num[i+1] = 'Z' then mSoma := mSoma + (38 * Power(2,i));
             end else begin
                mSoma := mSoma + (StrtoInt(Num[i+1])* Power(2,i));
             End;
         End;
         mDigito  := Trunc(mSoma) mod 11;

         If Num[11] = InttoStr(mDigito) then VerificaContainer := true else VerificaContainer := false;
      End;
End;

Function DataLimpa(pData: String):Boolean;
begin
     Result := Trim(RemoveCaracter('/', '', pData)) = '';
End;
(*
Function VersaoExe(pEXE:String): String;
type
    PFFI = ^vs_FixedFileInfo;
var
    F       : PFFI;
    Handle  : Dword;
    Len     : Longint;
    Data    : Pchar;
    Buffer  : Pointer;
    Tamanho : Dword;
    pArquivo: Pchar;
begin
      pArquivo := StrAlloc(Length(pEXE) + 1);
      StrPcopy(PArquivo, pEXE);
      Len    := GetFileVersionInfoSize(pArquivo, Handle);
      Result := '';

      If Len > 0 then begin
         Data := StrAlloc(Len+1);
         If GetFileVersionInfo(pArquivo,Handle,Len,Data) then begin
            VerQueryValue(Data, '\',Buffer,Tamanho);
            F      := PFFI(Buffer);
            Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs), LoWord(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs), Loword(F^.dwFileVersionLs)]);
         End;
         StrDispose(Data);
      End;
      StrDispose(pArquivo);
end;
*)
Function VersaoExe(pEXE:String): String;
type
    PFFI = ^vs_FixedFileInfo;
var
    F       : PFFI;
    Handle  : Dword;
    Len     : Longint;
    Data    : Pchar;
    Buffer  : Pointer;
    Tamanho : Dword;
    pArquivo: Pchar;
begin
      pArquivo := StrAlloc(Length(pEXE) + 1);
      StrPcopy(PArquivo, pEXE);
      Len    := GetFileVersionInfoSize(pArquivo, Handle);
      Result := '';

      If Len > 0 then begin
         Data := StrAlloc(Len+1);
         If GetFileVersionInfo(pArquivo,Handle,Len,Data) then begin
            VerQueryValue(Data, '\',Buffer,Tamanho);
            F      := PFFI(Buffer);
            Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs), LoWord(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs), Loword(F^.dwFileVersionLs)]);
         End;
         StrDispose(Data);
      End;
      StrDispose(pArquivo);
end;

// Calcula o valor do inventario pela formuala da referência fiscal.
Function CalculaInventario(pReferencia: Integer):Real;
Var
    mTotal: Real;
begin
      with Dados, dmFiscal do begin
           ReferenciasFiscais.Locate('Codigo', pReferencia, [loCaseInsensitive]);
           Result := NotasTerceirosItensValor_UnitarioOrig.Value;
           mTotal := 0;
           
           if ReferenciasFiscaisSinal_IPI.Value = '-' then begin
              if NotasTerceirosItensValor_IPI.AsCurrency > 0 then
                 mTotal := mTotal - NotasTerceirosItensValor_IPI.Value
              else
                 mTotal := mTotal - NotasTerceirosItensValor_IPIOrig.Value;
           end;
           if ReferenciasFiscaisSinal_IPI.Value = '+' then begin
              if NotasTerceirosItensValor_IPI.AsCurrency > 0 then
                 mTotal := mTotal + NotasTerceirosItensValor_IPI.Value
              else
                 mTotal := mTotal + NotasTerceirosItensValor_IPIOrig.Value;
           end;

           if ReferenciasFiscaisSinal_ICMSOper.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSOper.Value;
           if ReferenciasFiscaisSinal_ICMSOper.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSOper.Value;
           if ReferenciasFiscaisSinal_ICMSST.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSSub.Value;
           if ReferenciasFiscaisSinal_ICMSST.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSSub.Value;
           if Dados.CSTIPITributavel.AsBoolean then begin
              if NotasTerceirosItensAliquota_PIS.AsFloat = ConfiguracaoPIS_AliquotaBasica.AsFloat then begin
                 if ReferenciasFiscaisSinal_PIS.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_PIS.Value;
                 if ReferenciasFiscaisSinal_PIS.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_PIS.Value;
                 if ReferenciasFiscaisSinal_COFINS.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_COFINS.Value;
                 if ReferenciasFiscaisSinal_COFINS.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_COFINS.Value;
              end else begin
                 if ReferenciasFiscaisSinal_PISDif.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_PIS.Value;
                 if ReferenciasFiscaisSinal_PISDif.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_PIS.Value;
                 if ReferenciasFiscaisSinal_COFINSDif.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_COFINS.Value;
                 if ReferenciasFiscaisSinal_COFINSDif.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_COFINS.Value;
              end;
           end else begin
              if NotasTerceirosItensAliquota_PIS.AsFloat = ConfiguracaoPIS_AliquotaBasica.AsFloat then begin
                 if ReferenciasFiscaisSinal_PIS.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_PISOrig.Value;
                 if ReferenciasFiscaisSinal_PIS.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_PISOrig.Value;
                 if ReferenciasFiscaisSinal_COFINS.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_COFINSOrig.Value;
                 if ReferenciasFiscaisSinal_COFINS.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_COFINSOrig.Value;
              end else begin
                 if ReferenciasFiscaisSinal_PISDif.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_PISOrig.Value;
                 if ReferenciasFiscaisSinal_PISDif.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_PISOrig.Value;
                 if ReferenciasFiscaisSinal_COFINSDif.Value = '-' then
                    mTotal := mTotal - NotasTerceirosItensValor_COFINSOrig.Value;
                 if ReferenciasFiscaisSinal_COFINSDif.Value = '+' then
                    mTotal := mTotal + NotasTerceirosItensValor_COFINSOrig.Value;
              end;
           end;

           if NotasTerceirosItensQuantidade.AsFloat > 0 then
              mTotal := mTotal/NotasTerceirosItensQuantidade.AsFloat;

           Result := Result + mTotal;
      end;
end;

// Calcula o valor do inventario pela formula da referência fiscal.
Function CalculaEntrada(pReferencia: Integer):Real;
Var
    mTotal: Real;
begin
      With Dados, dmFiscal do begin
           ReferenciasFiscais.Locate('Codigo', pReferencia, [loCaseInsensitive]);
           
           Result := NotasTerceirosItensValor_UnitarioOrig.Value;
           mTotal := 0;
           
           If ReferenciasFiscaisSinal_EntradaIPI.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_EntradaIPI.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_EntradaICMSOper.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_EntradaICMSOper.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_EntradaICMSST.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_EntradaICMSST.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_EntradaPIS.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_PISOrig.Value;
           If ReferenciasFiscaisSinal_EntradaPIS.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_PISOrig.Value;
           If ReferenciasFiscaisSinal_EntradaCOFINS.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_COFINSOrig.Value;
           If ReferenciasFiscaisSinal_EntradaCOFINS.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_COFINSOrig.Value;
           If ReferenciasFiscaisSinal_EntradaFrete.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_Frete.Value;
           If ReferenciasFiscaisSinal_EntradaFrete.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_Frete.Value;
           If ReferenciasFiscaisSinal_EntradaDespesa.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_Despesa.Value;
           If ReferenciasFiscaisSinal_EntradaDespesa.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_Despesa.Value;
           If NotasTerceirosItensQuantidade.AsFloat > 0 then
              mTotal := mTotal / NotasTerceirosItensQuantidade.AsFloat;
              
           Result := Result + mTotal;
      End;
end;

// Calcula o valor da BC PIS CTe.
Function CalculaBCPISCTe(pReferencia: Integer):Real;
Var
    mTotal: Real;
begin
      With Dados, dmFiscal do begin
           ReferenciasFiscais.Locate('Codigo', pReferencia, [loCaseInsensitive]);

           Result := NotasTerceirosItensValor_BCPIS.Value;
           mTotal := 0;

           If ReferenciasFiscaisSinal_BCIPI.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_BCIPI.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_BCICMSOper.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSOper.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSST.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSST.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_BCFrete.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_Frete.Value;
           If ReferenciasFiscaisSinal_BCFrete.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_Frete.Value;

           Result := Result + mTotal;
      End;
end;

// Calcula o valor da BC COFINS CTe.
Function CalculaBCCOFINSCTe(pReferencia: Integer):Real;
Var
    mTotal: Real;
begin
      With Dados, dmFiscal do begin
           ReferenciasFiscais.Locate('Codigo', pReferencia, [loCaseInsensitive]);

           Result := NotasTerceirosItensValor_BCCOFINS.Value;
           mTotal := 0;

           If ReferenciasFiscaisSinal_BCIPI.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_BCIPI.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_BCICMSOper.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSOper.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSST.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSST.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_BCFrete.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_Frete.Value;
           If ReferenciasFiscaisSinal_BCFrete.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_Frete.Value;

           Result := Result + mTotal;
      End;
end;

// Calcula o valor do inventario pela formula da referência fiscal.
Function CalculaBCPIS(pReferencia: Integer):Real;
Var
    mTotal: Real;
begin
      with Dados, dmFiscal do begin
           ReferenciasFiscais.Locate('Codigo', pReferencia, [loCaseInsensitive]);
           
           Result := NotasTerceirosItensValor_UnitarioOrig.Value;
           mTotal := 0;
           
           If ReferenciasFiscaisSinal_BCIPI.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_IPI.Value;
           If ReferenciasFiscaisSinal_BCIPI.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_IPI.Value;

           If ReferenciasFiscaisSinal_BCICMSOper.Value = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSOperOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSOper.Value = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSOperOrig.Value;

           If ReferenciasFiscaisSinal_BCICMSST.Value   = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_ICMSSubOrig.Value;
           If ReferenciasFiscaisSinal_BCICMSST.Value   = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_ICMSSubOrig.Value;

           If ReferenciasFiscaisSinal_BCFrete.Value   = '-' then
              mTotal := mTotal - NotasTerceirosItensValor_Frete.Value;
           If ReferenciasFiscaisSinal_BCFrete.Value   = '+' then
              mTotal := mTotal + NotasTerceirosItensValor_Frete.Value;

           If NotasTerceirosItensQuantidade.AsFloat > 0 then
              mTotal := mTotal / NotasTerceirosItensQuantidade.AsFloat;

           Result := Result + mTotal;
      End;
end;

// Função para compactar arquivos.
procedure Comprimir(ArquivoCompacto: TFileName; Arquivos: array of TFileName);
var
   FileInName : TFileName;
   FileEntrada, FileSaida: TFileStream;
   Compressor: TCompressionStream;
   NumArq, I, Len, Size: Integer;
   Fim: Byte;
begin
   FileSaida  := TFileStream.Create(ArquivoCompacto, fmCreate or fmShareExclusive);
   Compressor := TCompressionStream.Create(clMax, FileSaida);
   NumArq     := Length(Arquivos);
   Compressor.Write(NumArq, SizeOf(Integer));

   Try
       For I := Low(Arquivos) to High(Arquivos) do begin
           FileEntrada := TFileStream.Create(Arquivos[I], fmOpenRead and fmShareExclusive);
           Try
              FileInName := ExtractFileName(Arquivos[I]);
              Len := Length(FileInName);
              Compressor.Write(Len, SizeOf(Integer));
              Compressor.Write(FileInName[1], Len);
              Size := FileEntrada.Size;
              Compressor.Write(Size, SizeOf(Integer));
              Compressor.CopyFrom(FileEntrada, FileEntrada.Size);
              Fim := 0;
              Compressor.Write(Fim, SizeOf(Byte));
           Finally
              FileEntrada.Free;
           End;
       End;
   Finally
       FreeAndNil(Compressor);
       FreeAndNil(FileSaida);
   End;
end;

// Função para Descompactar arquivos.
procedure Descomprimir(ArquivoZip: TFileName; DiretorioDestino: string);
var
  NomeSaida: string;
  FileEntrada, FileOut: TFileStream;
  Descompressor: TDecompressionStream;
  NumArq, I, Len, Size: Integer;
  Fim: Byte;
begin
     FileEntrada := TFileStream.Create(ArquivoZip, fmOpenRead and fmShareExclusive);
     Descompressor := TDecompressionStream.Create(FileEntrada);
     Descompressor.Read(NumArq, SizeOf(Integer));
     try
         I := 0;
         while I < NumArq do begin
               Descompressor.Read(Len, SizeOf(Integer));
               SetLength(NomeSaida, Len);
               Descompressor.Read(NomeSaida[1], Len);
               Descompressor.Read(Size, SizeOf(Integer));
               FileOut := TFileStream.Create(IncludeTrailingBackslash(DiretorioDestino) + NomeSaida, fmCreate or fmShareExclusive);
               try
                  FileOut.CopyFrom(Descompressor, Size);
               finally
                  FileOut.Free;
               end;
               Descompressor.Read(Fim, SizeOf(Byte));
               Inc(I);
         end;
     finally
           FreeAndNil(Descompressor);
           FreeAndNil(FileEntrada);
     end;
end;

// Libera DLL da memoria.
procedure LiberaDLL(aDllName: string);
var
   hDLL: THandle;
   aName: array[0..10] of char;
   FoundDLL: Boolean;
begin
    StrPCopy(aName, aDllName);
    FoundDLL := False;
    Repeat
          hDLL := GetModuleHandle(aName);
          If hDLL = 0 then Break;
          FoundDLL := True;
          FreeLibrary(hDLL);
    Until False;

    If not FoundDLL then MessageDlg('Erro ao remover DLL "'+aDLLName+'" DLL não encontrada!', mtError, [mbOK], 0);
end;

function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
    if Expressao then
       Result := ParteTRUE
    else
       Result := ParteFALSE;
end;

// Inicio das funções de boleto bancario.
function Modulo10(Valor: String) : string;
var
    Auxiliar : string;
    Contador, Peso : integer;
    Digito : integer;
begin
    Auxiliar := '';
    Peso     := 2;
    For Contador := Length(Valor) Downto 1 do begin
        Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
        If Peso = 1 then
           Peso := 2
        else
           Peso := 1;
    End;

    Digito := 0;
    For Contador := 1 to Length(Auxiliar) do begin
       Digito := Digito + StrToInt(Auxiliar[Contador]);
    End;
    Digito := 10 - (Digito mod 10);
    If (Digito > 9) then Digito := 0;

    Result := IntToStr(Digito);
end;

function Modulo10_2(const Codigo: string): string;
var
  I, Mult, SubTot, Tot: Integer; // I = usado no for, Mult = alterna entre 1 e 2, SubTot é o produto multiplicado, e Tot = somatorio
begin
    Tot := 0; Mult:= 2;
    // percorre o código de barras
    for I := Length(Codigo) downto 1 do begin
        SubTot := Mult * StrToInt(Codigo[I]);      // faz a multiplicacao
        while SubTot > 9 do begin                  // enquanto tem 2 algarismos soma os mesmos
             SubTot := StrToInt(IntToStr(SubTot)[1]) + StrToInt(IntToStr(SubTot)[2]);
        end;
        Tot := Tot + SubTot;                       // acrescenta o valor ao tot
        if Mult = 2 then
           Mult := 1
        else
           Mult := 2;                              // troca o multiplicador
    end;
    SubTot := Tot;

    // se div por 10 não sobra nada, incrementa 10
    if SubTot mod 10 = 0 then
       Inc(SubTot,10)
    else // senão enquando não achar a dezena posterior ao SubTot vai incrementando
       while (SubTot mod 10) <> 0 do begin
             Inc(SubTot);
       end;      
    Tot := SubTot - Tot;        // pega o dígito verificador
    if Tot = 10 then
       Tot := 0;                // se ele for 10 retorna ZERO
    Result := IntToStr(Tot);
end;

function Modulo11(Valor: String; Base: Integer; Resto: boolean = false) : string;
var
    Soma : integer;
    Contador, Peso, Digito : integer;
begin
    Soma := 0;
    Peso := 2;
    for Contador := Length(Valor) Downto 1 do Begin
       Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
       if Peso < Base then
          Peso := Peso + 1
       else
          Peso := 2;
    end;

    if Resto then
       Result := IntToStr(Soma mod 11)
    else begin
       Digito := 11 - (Soma mod 11);
       if (Digito > 9) then
          Digito := 0;
       Result := IntToStr(Digito);
    end;
end;

Function Modulo11P(Valor: String; Base: Integer): string;
Var
    Soma,
    Contador,
    Peso     :Integer;
    Digito   :String;
begin
    Soma := 0;
    Peso := 2;
    For Contador := Length(Valor) Downto 1 do Begin
       Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
       If Peso < Base then
          Peso := Peso + 1
       else
          Peso := 2;
    End;

    Digito := InttoStr(11 - (Soma mod 11));
    If (Soma mod 11) = 1 then Digito := 'P';
    If (Soma mod 11) = 0 then Digito := '0';
    Result := Digito;
end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
var
    QuantidadeAcrescentar,
    TamanhoTexto,
    PosicaoInicial,
    i : integer;

begin
    case CaracterAcrescentar of
       '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
       else
          CaracterAcrescentar := ' ';
    end;

    Texto := Trim(AnsiUpperCase(Texto));
    TamanhoTexto := Length(Texto);
    for i := 1 to (TamanhoTexto) do begin
       if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/{}[]:;,.<>') = 0 then begin
          case Texto[i] of
             'Á','À','Â','Ä','Ã' : Texto[i] := 'A';
             'É','È','Ê','Ë' : Texto[i] := 'E';
             'Í','Ì','Î','Ï' : Texto[i] := 'I';
             'Ó','Ò','Ô','Ö','Õ' : Texto[i] := 'O';
             'Ú','Ù','Û','Ü' : Texto[i] := 'U';
             'Ç' : Texto[i] := 'C';
             'Ñ' : Texto[i] := 'N';
             else Texto[i] := ' ';
          end;
       end;
    end;

    QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
    if QuantidadeAcrescentar < 0 then
       QuantidadeAcrescentar := 0;
    if CaracterAcrescentar = '' then
       CaracterAcrescentar := ' ';
    if TamanhoTexto >= TamanhoDesejado then
       PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
    else
       PosicaoInicial := 1;

    if AcrescentarADireita then
       Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
    else
       Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

    Result := AnsiUpperCase(Texto);
end;

function CalcularFatorVencimento(DataDesejada : TDateTime) : string;
begin
    //Result := IntToStr(Trunc(DataDesejada - EncodeDate(1997,10,07)));
    Result := IntToStr(Trunc(DataDesejada - EncodeDate(2022, 05, 29)));
end;

Function StrZero(S: String; Tam: Integer): String;
var
    wZeros : String;
    wCont  : Integer;
begin
     wZeros := '';

     for wCont := 1 to Tam - Length(Trim(s)) do
         wZeros := '0' + wZeros;

     Result := wZeros + S;
end;

// Gera código de barras banco Itau.
function CodBarrasItau(Banco, Conta, Moeda, AG, Operacao, Carteira, nNumero, Vencto: String; Valor:Real; Tipo: String):String;
var
    aFatorVencimento
   ,aCodigoBarras
   ,aDigitonNumero
   ,aDigitoCodigoBarras
   ,mValor
   ,p1
   ,p2
   ,p3
   ,p4
   ,p5 :string;
begin
    //Primeira parte do código de barras
    aFatorVencimento := Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0');
    mValor           := FormatFloat(',##0.00', Valor);
    aDigitonNumero   := Modulo10(AG+Copy(Conta, 1, 5)+Carteira+ApenasNumeros(nNumero));

    //Calcula o dígito e completa o código de barras
    aCodigoBarras := StrZero( Banco, 3 ) +
                     StrZero( Moeda, 1 ) +
                     StrZero( aFatorVencimento, 4 ) +
                     StrZero( ApenasNumeros(mValor), 10 ) +
                     StrZero( Carteira, 3 ) +
                     StrZero( ApenasNumeros(nNumero), 8 ) +
                     StrZero( aDigitonNumero, 1) +
                     StrZero( AG, 4) +
                     StrZero( Copy(Conta, 1, 5), 5) +
                     StrZero( Modulo10(AG+Copy(Conta, 1, 5)), 1) +
                     '000';
    aDigitoCodigoBarras := Modulo11(aCodigoBarras,9);
    If aDigitoCodigoBarras = '0' then aDigitoCodigoBarras := '1';

    // LInha Digitavel.
    p1 := Banco + Moeda + Carteira + Copy(nNumero, 1, 2);
    p1 := p1 + Modulo10(p1);

    p2 := Copy(nNumero, 3, 6) + aDigitonNumero + Copy(AG, 1, 3);
    p2 := p2 + Modulo10(p2);

    p3 := Copy(AG, 4,1) + Conta + '000';
    p3 := p3 + Modulo10(p3);
    
    p4 := aDigitoCodigoBarras;
    p5 := StrZero(aFatorVencimento, 4) + StrZero(ApenasNumeros(mValor), 10);

    If Tipo = 'CB' then
       Result := ApenasNumeros(Copy(aCodigoBarras,1,4) + aDigitoCodigoBarras + Copy(aCodigoBarras,5,length(aCodigoBarras)-4));
    If Tipo = 'LD' then
       Result := p1+p2+p3+p4+p5;
end;

// Gera código de barras banco Bradesco.
function CodBarrasBradesco(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto: String; Valor:Real ):String;
var
    aFatorVencimento,
    aCodigoBarras,
    mNossoNumero,
    aDigitoCodigoBarras,
    mValor,
    mLivre: String;
begin
    //Primeira parte do código de barras
    AFatorVencimento := Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0');
    mNossoNumero     := StrZero(Copy(nNumero, 1, 11), 11);
    mValor           := FormatFloat(',##0.00', Valor);
    mLivre           := StrZero(Copy(AG, 1, 4), 4) +
                        StrZero(ApenasNumeros(Carteira), 2) +
                        StrZero(ApenasNumeros(mNossoNumero), 11) +
                        StrZero(Copy(Conta, 1, Length(Trim(Conta))-1), 7) +
                        '0';

    //Calcula o dígito e completa o código de barras
    aCodigoBarras := StrZero(Banco, 3) +
                     StrZero(Moeda, 1) +
                     StrZero(aFatorVencimento, 4) +
                     StrZero(ApenasNumeros(mValor), 10 ) +
                     mLivre;

    ADigitoCodigoBarras := Modulo11(ACodigoBarras,9);
    If ADigitoCodigoBarras = '0' then ADigitoCodigoBarras := '1';

    Result := ApenasNumeros(Copy(ACodigoBarras,1,4) + ADigitoCodigoBarras + Copy(ACodigoBarras,5,length(ACodigoBarras)-4));
end;

function DigitavelBradesco(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto: String; Valor:Real ):String;
var
    p1, p2, p3, p4,
    Campo1, Campo2, Campo3, Campo4, Campo5, mLivre, mFator, mValor, mBarras, mNossoNumero: string;
begin
    mNossoNumero := StrZero(Copy(nNumero, 1, 11), 11);
    mBarras      := CodBarrasBradesco(Banco, Conta, Moeda, AG, Carteira, mNossoNumero, Vencto, Valor);
    mFator       := Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0');
    mValor       := FormatFloat(',##0.00', Valor);
    mLivre       := StrZero(Copy(AG, 1, 4), 4) +
                    StrZero(ApenasNumeros(Carteira), 2) +
                    StrZero(ApenasNumeros(mNossoNumero), 11) +
                    StrZero(Copy(Conta, 1, Length(Trim(Conta))-1), 7) +
                    '0';

    // Campo 1 = Código do Banco + Código moéda + Cinco Primeira posições do campo livre + Digito Verificador deste campo.
    p1     := Banco;
    p2     := Moeda;
    p3     := Copy(mLivre, 1, 5);
    p4     := Modulo10(p1+p2+p3);
    Campo1 := p1 + P2 + p3 + p4;

    // Campo 2 - 6 a 15 posições do campo livre e DV deste campo.
    p1     := Copy(mLivre, 6, 10);
    p2     := Modulo10(p1);
    Campo2 := p1+p2;

    // Campo 3 - composto pelas posicoes 16 a 25 do campo livre e DV (modulo10) deste campo.
    p1     := Copy(mLivre, 16, 10);
    p2     := Modulo10(p1);
    Campo3 := p1+p2;

    // Campo 4 - Dígito verificador do codigo de barras (Quinta Posição).
    Campo4 := Copy(mBarras, 5, 1);

    // Campo 5 - Fator de vencimento + Valor nominal do documento.
    Campo5 := StrZero( mFator, 4 ) + StrZero( ApenasNumeros(mValor), 10 );

    Result := ApenasNumeros(Campo1 +Campo2 + Campo3 + Campo4 + Campo5);
End;

function CodBarrasBB(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto, Convenio: String; Valor:Real ):String;
var
    aFatorVencimento,
    aCodigoBarras,
    mNossoNumero,
    aDigitoCodigoBarras,
    mValor: String;
begin
    // Primeira parte do código de barras.
    aFatorVencimento := Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0');
    mValor           := FormatFloat(',##0.00', Valor);
    if not (StrtoInt(Carteira) in[17,18,19]) then begin
       mNossoNumero := StrZero(Copy(nNumero, 1, 11), 11);
    end else begin
       mNossoNumero := StrZero(Trim(Copy(nNumero , 1, 17)), 17);
    end;

    aCodigoBarras := StrZero(Banco, 3) +
                     StrZero(Moeda, 1) +
                     StrZero(aFatorVencimento, 4)+
                     StrZero(ApenasNumeros(mValor), 10)+
                     '000000'+
                     StrZero(Trim(Copy(Convenio, 1, 7)), 7)+
                     StrZero(InttoStr(StrtoInt(ApenasNumeros(nNumero))), 10) +
                     StrZero(Carteira, 2);

    // Calcula o dígito e completa o código de barras.
    aDigitoCodigoBarras := Modulo11(aCodigoBarras, 9);
    if aDigitoCodigoBarras = '0' then aDigitoCodigoBarras := '1';

    Result := ApenasNumeros(Copy(aCodigoBarras,1,4) + aDigitoCodigoBarras + Copy(aCodigoBarras, 5,Length(aCodigoBarras)-4));
end;

function DigitavelBB(Banco, Conta, Moeda, AG, Carteira, nNumero, Vencto, Convenio: String; Valor:Real ):String;
var
    p1, p2, p3, p4,
    Campo1,
    Campo2,
    Campo3,
    Campo4,
    Campo5,
    mFator,
    mValor,
    mBarras,
    mConta,
    mNossoNumero: string;
begin
    mConta  := ApenasNumeros(Conta);
    mBarras := CodBarrasBB(Banco, mConta, Moeda, AG, Carteira, nNumero, Vencto, Convenio, Valor);
    mFator    := Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0');
    mValor  := FormatFloat(',##0.00', Valor);

    If not (StrtoInt(Carteira) in[17,18,19]) then begin
       mNossoNumero := StrZero(Copy(nNumero, 1, 11), 11);
{
       mLivre := ApenasNumeros(mNossoNumero) +
                 StrZero(Copy(AG, 1, 4), 4) +
                 StrZero(Copy(mConta, 1, Length(Trim(mConta))-1), 8) +
                 StrZero(ApenasNumeros(Carteira), 2);
}
    end else begin
       mNossoNumero := StrZero(Trim(Copy(nNumero, 1, 17)), 17);
       {
       mLivre       := StrZero(Trim(Copy(Convenio, 1, 6)), 6) +
                       mNossoNumero +
                       StrZero(Carteira, 2);
       }
    End;

    // Campo 1.
    //   a) Campo 1: AAABC.CCCCX
    //      A = Número Código da Instituição Destinatária
    //      B = Código da moeda (9) -Real
    //      C = Posições 20 a 24 do código de barras
    //      X = DV do Campo 1 (calculado de acordo com o Módulo 10)
    p1     := PoeZero(3, strtoint(Banco));
    p2     := Moeda;
    p3     := Copy(mBarras, 20, 5);
    p4     := Modulo10(p1+p2+p3);
    Campo1 := p1 + P2 + p3 + p4;

    // Campo 2.
    //   b) Campo 2: DDDDD.DDDDDY
    //      D = Posições 25 a 34 do código de barras
    //      Y = DV do Campo 2 (calculado de acordo com o Módulo 10)
    p1     := Copy(mBarras, 25, 10);
    p2     := Modulo10(p1);
    Campo2 := p1 + p2;

    // Campo 3.
    //   c) Campo 3: EEEEE.EEEEEZ
    //      E = Posições 35 a 44 do código de barras
    //      Z = DV do Campo 3 (calculado de acordo com o Módulo 10)
    p1     := Copy(mBarras, 35, 10);
    p2     := Modulo10(p1);
    Campo3 := p1 + p2;

    // Campo 4.
    //   d) Campo 4: K
    //      K = DV do código de barras (calculado de acordo com o Módulo 11)
    Campo4 := Copy(mBarras, 5, 1);

    // Campo 5
    //   e) Campo 5: UUUUVVVVVVVVVV
    //      U = Fator de Vencimento (cálculo conforme anexo VI)
    //      V = Valor do boleto de pagamento (com duas casas decimais, sem ponto e vírgula.)
    Campo5 := StrZero(mFator, 4) + StrZero(ApenasNumeros(mValor), 10);
    Result := ApenasNumeros(Campo1+Campo2+Campo3+Campo4+Campo5);
End;

// Gera código de barras banco Banestes.
function CodBarrasBanestes(Banco, Conta, Moeda, nNumero, Vencto: String; Valor:Real ):String;
var
    AFatorVencimento,
    ACodigoBarras,
    ADigitoCodigoBarras,
    mASBACE,
    mValor : String;
begin
    //Primeira parte do código de barras
    aFatorVencimento := iif(Vencto <> '', Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0'), '0000');
    mValor           := FormatFloat(',##0.00', Valor);
    
    mASBACE := concat(StrZero(ApenasNumeros(Copy(nNumero, 1, 8)), 8), StrZero(Copy(Conta, 1, Length(Trim(Conta))-1), 11), '2', StrZero(Banco,3));
    mASBACE := mASBACE + Modulo10(mASBACE);
    mASBACE := mASBACE + Modulo11(mASBACE, 7);

    //Calcula o dígito e completa o código de barras
    aCodigoBarras       := concat(StrZero(Banco, 3), StrZero(Moeda, 1), StrZero(aFatorVencimento, 4), StrZero(ApenasNumeros(mValor), 10), mASBACE);
    aDigitoCodigoBarras := Modulo11(aCodigoBarras, 9);
    aDigitoCodigoBarras := iif(aDigitoCodigoBarras = '0', '1', aDigitoCodigoBarras);

    Result := ApenasNumeros(Copy(aCodigoBarras,1,4) + aDigitoCodigoBarras + Copy(aCodigoBarras,5,length(aCodigoBarras)-4));
end;

function DigitavelBanestes(Banco, Conta, Moeda, nNumero, Vencto: String; Valor:Real ):String;
var
    p1, p2, p3, p4,
    Campo1, Campo2, Campo3, Campo4, Campo5,
    mBarras,
    mLivre: string;
begin

    mBarras := CodBarrasBanestes(Banco, Conta, Moeda, nNumero, Vencto, Valor);
    mLivre  := StrZero(ApenasNumeros(Copy(nNumero, 1, 8)), 8) +
               StrZero(Copy(Conta, 1, Length(Trim(Conta))-1), 11) +
               '2' +
               StrZero(Banco,3);
    mLivre := mLivre + Modulo10(mLivre);
    mLivre := mLivre + Modulo11(mLivre,7);

    //Campo 1 - 
    p1     := StrZero(Banco, 3);
    p2     := Moeda;
    p3     := Copy(mLivre, 1, 5);
    p4     := Modulo10(p1+p2+p3);
    Campo1 := p1 + p2 + p3 + p4;

    //Campo 2 - composto pelas posiçoes 6 a 15 do campo livre e DV (modulo10) deste campo.
    p1     := Copy(mLivre, 6, 10);
    p2     := Modulo10(p1);
    Campo2 := p1 + p2;

    //Campo 3 - composto pelas posicoes 16 a 25 do campo livre e DV (modulo10) deste campo.
    p1     := Copy(mLivre, 16, 10);
    p2     := Modulo10(p1);
    Campo3 := p1 + p2;

    //Campo 4 - digito verificador do código de barras.
    Campo4 := Copy(mBarras, 5, 1);

    //Campo 5 - composto pelo valor nominal do documento, sem indicacao de zeros a esquerda e sem edicao (sem ponto e virgula).
    //Quando se tratar de valor zerado, a representacao deve ser 000 (tres zeros).
    Campo5 := Copy(mBarras, 6, 14);
    Result := ApenasNumeros(Campo1 + ' ' + Campo2 + ' ' + Campo3 + ' ' + Campo4 + ' ' + Campo5);
End;

{ Desabilita os controls de todas as tabela do Data Module informado.}
procedure DesligaTabelas(DataModule1, DataModule2, DataModule3, DataModule4: TDataModule);
var
   I: Integer;
begin
     Screen.Cursor := crHourGlass;
     If DataModule1 <> nil then begin
         For i := 0 to DataModule1.ComponentCount -1 do begin
             If DataModule1.Components[I] is TMSQuery then
                TMSQuery(DataModule1.Components[I]).DisableControls
             else
                 If DataModule1.Components[I] is TMSTable then
                    TMSTable(DataModule1.Components[I]).DisableControls;
         End;
     End;
     If DataModule2 <> nil then begin
         For i := 0 to DataModule2.ComponentCount -1 do begin
             If DataModule2.Components[I] is TMSQuery then
                TMSQuery(DataModule2.Components[I]).DisableControls
             else
                If DataModule2.Components[I] is TMSTable then
                   TMSTable(DataModule2.Components[I]).DisableControls;
         End;
     End;
     If DataModule3 <> nil then begin
        For i := 0 to DataModule3.ComponentCount -1 do begin
            If DataModule3.Components[I] is TMSQuery then
               TMSQuery(DataModule3.Components[I]).DisableControls
            else
               If DataModule3.Components[I] is TMSTable then
                  TMSTable(DataModule3.Components[I]).DisableControls;
        End;
     End;
     If DataModule4 <> nil then begin
        For i := 0 to DataModule4.ComponentCount -1 do begin
            If DataModule4.Components[I] is TMSQuery then
               TMSQuery(DataModule4.Components[I]).DisableControls
            else
               If DataModule4.Components[I] is TMSTable then
                  TMSTable(DataModule4.Components[I]).DisableControls;
        End;
     End;
     Screen.Cursor := crDefault;
end;

{ Desabilita os controls de todas as tabela do Data Module informado.}
procedure LigaTabelas(DataModule1, DataModule2, DataModule3, DataModule4: TDataModule);
var
   I: Integer;
begin
     Screen.Cursor := crHourGlass;
     If DataModule1 <> nil then begin
         For i := 0 to DataModule1.ComponentCount -1 do begin
             If DataModule1.Components[I] is TMSQuery then
                TMSQuery(DataModule1.Components[I]).EnableControls
             else
                 If DataModule1.Components[I] is TMSTable then
                    TMSTable(DataModule1.Components[I]).EnableControls;
         End;
     End;
     If DataModule2 <> nil then begin
         For i := 0 to DataModule2.ComponentCount -1 do begin
             If DataModule2.Components[I] is TMSQuery then
                TMSQuery(DataModule2.Components[I]).EnableControls
             else
                If DataModule2.Components[I] is TMSTable then
                   TMSTable(DataModule2.Components[I]).EnableControls;
         End;
     End;
     If DataModule3 <> nil then begin
        For i := 0 to DataModule3.ComponentCount -1 do begin
            If DataModule3.Components[I] is TMSQuery then
               TMSQuery(DataModule3.Components[I]).EnableControls
            else
               If DataModule3.Components[I] is TMSTable then
                  TMSTable(DataModule3.Components[I]).EnableControls;
        End;
     End;
     If DataModule4 <> nil then begin
        For i := 0 to DataModule4.ComponentCount -1 do begin
            If DataModule4.Components[I] is TMSQuery then
               TMSQuery(DataModule4.Components[I]).EnableControls
            else
               If DataModule4.Components[I] is TMSTable then
                  TMSTable(DataModule4.Components[I]).EnableControls;
        End;
     End;
     Screen.Cursor := crDefault;
end;

// Calculando o estoque disponível do produto informado.
Function EstoqueProduto(pProduto: Integer): Real;
begin
      With Dados do begin
           Configuracao.Open;
           screen.Cursor := crSqlWait;
           with tEstoque do begin
                sql.Clear;
                if not ConfiguracaoTela_LiberaPedidos.AsBoolean then begin
                   // Apuração do estoque do produtos para quem emite nota fiscal de pedidos dos representantes.
                   sql.Add('select Disponivel = cast((isnull((select sum(Quantidade)');
                   sql.Add('                                  from NotasItens');
                   sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
                   sql.Add('                                  and Saida_Entrada = 0');
                   sql.Add('                                  and Movimenta_Estoque = 1');
                   sql.Add('                                  and Cancelada <> 1');
                   sql.Add('                                  and isnull(NFe_Denegada, 0) = 0), 0) +');
                   sql.Add('                                  isnull((select sum(Quantidade) from NotasTerceirosItens where Codigo_Mercadoria = :pCodigo and Movimenta_Estoque = 1), 0) +');
                   sql.Add('                          isnull((select sum(Quantidade_Entrada)');
                   sql.Add('                                  from ProdutosTransferencia');
                   sql.Add('                                  where Produto_Entrada = :pCodigo), 0) -');
                   sql.Add('                          isnull((select sum(Quantidade)');
                   sql.Add('                                  from NotasItens');
                   sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
                   sql.Add('                                  and Saida_Entrada = 1');
                   sql.Add('                                  and Movimenta_Estoque = 1');
                   sql.Add('                                  and Cancelada <> 1');
                   sql.Add('                                  and isnull(NFe_Denegada, 0) = 0), 0) -');
                   sql.Add('                          isnull((select sum(Quantidade)');
                   sql.Add('                                  from PedidosItens');
                   sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
                   sql.Add('                                  and Saida_Entrada = 1');
                   sql.Add('                                  and Movimenta_Estoque = 1), 0)) -');
                   sql.Add('                          isnull((select sum(Quantidade)');
                   sql.Add('                                  from ProdutosTransferencia');
                   sql.Add('                                  where Produto_Saida = :pCodigo), 0) as decimal(14,3)) -');
                   sql.Add('                          isnull((select sum(Quantidade)');
                   sql.Add('                                  from PedidosRepresentantesItens pri');
                   sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
                   sql.Add('                                  and isnull(Faturamento, 0) = 0');
                   sql.Add('                                  and isnull(Faturado, 0) = 0');
                   sql.Add('                                  and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
                   sql.Add('                                  and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
                end else begin
                   // Apuração do estoque do produtos para quem não emite nota fiscal de pedidos dos representantes.
                   sql.add('select Disponivel = cast(');
                   sql.add('                       isnull((select sum(Quantidade)');
                   sql.add('                               from NotasTerceirosItens');
                   sql.Add('                               where Codigo_Mercadoria = :pCodigo');
                   sql.add('                               and Movimenta_Estoque = 1), 0) +');
                   sql.add('                       isnull((select sum(Quantidade_Entrada)');
                   sql.Add('                               from ProdutosTransferencia');
                   sql.Add('                               where Produto_Entrada = :pCodigo), 0) -');
                   sql.add('                       isnull((select sum(Quantidade)');
                   sql.Add('                               from ProdutosTransferencia');
                   sql.Add('                               where Produto_Saida = :pCodigo), 0) -');
                   sql.add('                       isnull((select sum(Quantidade)');
                   sql.Add('                               from PedidosRepresentantesItens pri');
                   sql.Add('                               where Codigo_Mercadoria = :pCodigo');
                   sql.Add('                               and isnull(Faturamento, 0) = 0');
                   sql.Add('                               and isnull(Faturado, 0) = 0');
                   sql.Add('                               and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0), 0) ');
                   sql.add('                       as decimal(14,3))');
                end;
                ParamByName('pCodigo').AsInteger := pProduto;
                //sql.SavetoFile('c:\temp\Funcoes_Apura_Estoque.sql');
                open;
                result := FieldByName('Disponivel').Value;
                close;
           end;
           screen.Cursor := crDefault;
      End;
End;

// Calculando o estoque disponível do produto informado.
Function EstoqueNavio(pProduto, pNavio: Integer): Real;
var
   tEstoque:TMSQuery;
begin
      tEstoque := TMSQuery.Create(nil);
      with tEstoque do begin
           Connection := Dados.Banco_Empresas;
           sql.Clear;
           sql.Add('select Disponivel = isnull((select sum(iif(Saida_Entrada = 0, Quantidade, Quantidade *-1)) from NotasItensNavios where Codigo_Mercadoria = :pCodigo and Navio = :pNavio), 0)+');
           sql.add('                    isnull((select sum(iif(Saida_Entrada = 0, Quantidade, Quantidade *-1)) from PedidosItensNavios where Codigo_Mercadoria = 3 and Navio = :pNavio), 0)');
           ParamByName('pCodigo').AsInteger := pProduto;
           ParamByName('pNavio').AsInteger  := pNavio;
           //sql.SavetoFile('c:\temp\Funcoes_Apura_Estoque_Navio.sql');
           open;
           result := FieldByName('Disponivel').asfloat;
           close;
      end;
End;

// Calculando o inventario disponível do produto informado.
Function InventarioProduto(pProduto: Integer): Real;
begin
      With Dados do begin
           with tInventario do begin 
                sql.Clear;
                sql.Add('select Disponivel = cast((isnull((select sum(Quantidade) FROM NotasItens WHERE Codigo_Mercadoria = :pCodigo and Saida_Entrada = 0 and Movimenta_Inventario = 1 and Cancelada <> 1 and isnull(NFe_Denegada, 0) = 0), 0) +');
                sql.Add('                    isnull((select sum(Quantidade) from NotasTerceirosItens where Codigo_Mercadoria = :pCodigo and Movimenta_Inventario = 1), 0) +');
                sql.Add('                    isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada = :pCodigo), 0) -');
                sql.Add('                    isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Inventario = 1 and Cancelada <> 1 and isnull(NFe_Denegada, 0) = 0), 0) -');
                sql.Add('                    isnull((select sum(Quantidade) from PedidosItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Inventario = 1), 0)) -');
                sql.Add('                    isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida = :pCodigo), 0) as decimal(14,3)) -');
                sql.Add('                    isnull((select sum(Quantidade) from PedidosRepresentantesItens pri where Codigo_Mercadoria = :pCodigo and isnull(Faturamento, 0) = 0 and isnull(Faturado, 0) = 0');
                sql.Add('                                                                                       and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
                sql.Add('                                                                                       and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
                parambyname('pCodigo').asinteger := pProduto;
                //sql.SavetoFile('c:\temp\Funcoes_Apura_Inventario.sql');
                open;
                result := FieldByName('Disponivel').Value;
                close;
           end;
      end;
end;

// Calculando a data no padrão UTC.
(*
Function DataUTC(pData: TDate): String;
var
    TimeZoneInfo: TTimezoneinformation;
    R: Word;
    Minutes: Integer;
    Sign: string;
begin
      R := GetTimezoneInformation(TimeZoneInfo);

      If R in [TIME_ZONE_ID_UNKNOWN, TIME_ZONE_ID_STANDARD, TIME_ZONE_ID_DAYLIGHT] then begin
         Minutes := TimeZoneInfo.Bias * -1;
         If R in [TIME_ZONE_ID_DAYLIGHT] then
            Minutes := Minutes + 60;
         If Minutes < 0 then
           Sign := '-'
         else
           Sign := '+';

         Result := PoeZero(4,YearOf(pData))+'-'+PoeZero(2,MonthOf(pData))+'-'+PoeZero(2,DayOf(pData))+'T'+FormatDateTime('hh:MM:ss', pData)+Sign + FormatDateTime('hh:MM', IncMinute(-1, Minutes));
      end else
         Result := '';
End;
*)
function DataUTC(pData: TDate): String;
var
    TimeZone: TTimeZoneInformation;
    hora:string;
begin
     GetTimeZoneInformation(TimeZone);
     hora := FormatFloat('00', TimeZone.Bias div -60) + ':00';
     result := FormatDateTime('YYYY-MM-DD', pData) + 'T' + FormatDateTime('hh:nn:ss', pData) + hora;
end;

// Verificando se o PC esta em horario de verão.
Function HorarioVerao: boolean;
var
   T: TTimeZoneInformation;
begin
     Result := GetTimeZoneInformation(T) = TIME_ZONE_ID_DAYLIGHT;
end;

// Executa programa com administrador.
procedure ExecutarComoAdministrador(Programa: string; Parametros: string; DiretorioInicial: string = '');
var
   SEInfo: TShellExecuteInfo;
   ExecuteFile, ParamString: string;
begin
    ExecuteFile:=Programa;
    ParamString := Parametros;
    FillChar(SEInfo, SizeOf(SEInfo), 0) ;
    SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
    With SEInfo do begin
         fMask        := SEE_MASK_NOCLOSEPROCESS;
         Wnd          := Application.Handle;
         lpFile       := PChar(ExecuteFile);
         lpParameters := PChar(ParamString);
         nShow        := SW_SHOWNORMAL;
         lpVerb       := PChar('Runas');
    End;

    ShellExecuteEx(@SEInfo)
end;

// Remove os zeros a esquerda ou a direita da string informada.
// "E" = Esquerda.
// "D" = Direita.
Function RemoveZeros(Str, Lado:String): String;
Var
   i, z: Integer;
Begin
      result := '';
      If Lado = 'E' then begin
         For i := 1 to Length(Str) do Begin
             If Str[i] <> '0' then break;
         End;
         result := Copy(Str, i, Length(Str)-i+1);
      end else begin
         z := 0;
         For i := Length(Str) downto 1 do begin
             If Str[i] = '0' then
                inc(z)
             else
                Break;
         End;
         If z > 0 then
            result := Copy(Str, 1, Length(Str)-z)
         else
            result := Str;
      End;
End;

// Remove o ponto de um valor string.
Function StrValor(sValor: String):Real;
Begin
      result := StrtoFloat(RemoveCaracter('.', '', sValor));
End;

Function NivelConta(Conta, Mascara: String): Integer;
var
    i: Integer;
begin
      Conta  := FormatMaskText(Mascara+';0; ', Conta);
      result := 1;
      For i := 1 to Length(Conta) do begin
          If (Conta[i] = '.') and (AnsiChar(Conta[i+1]) in (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Inc(result);
          If (Conta[i] = ' ') then Break;
      End;
End;

Function GrupoConta(Conta, Mascara: String; Nivel:Integer): String;
var
    mNivel,
    i: Integer;
begin
{#.#.##.##.##.##}
      Conta  := FormatMaskText(Mascara+';0; ', Conta);
      mNivel := 1;
      result := '';
      If Nivel > 1 then begin
         For i := 1 to Length(Conta) do begin
             result := result + Conta[i];
             If (Conta[i] = '.') and (AnsiChar(Conta[i+1]) in (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Inc(mNivel);
             If mNivel = (Nivel) then Break;
         End;
         result := RemoveCaracter('.', '', result);
      End;
End;

Function Internet: Boolean;
var
  Flags: Cardinal;
begin
      Result := InternetGetConnectedState(@Flags, 0);
end;

// Gera o digito do nosso número para o boleto bancario.
Function DigitoNossoNumero(Banco: Integer; nNumero: String): String;
Const
     Peso13: array[1..13] of Integer = (2,7,6,5,4,3,2,7,6,5,4,3,2);
     Peso10: array[1..20] of Integer = (1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2);
     Peso12: array[1..12] of Integer = (2,3,4,5,6,7,8,9,2,3,4,5);
Var
     Soma: Integer;
     Tmp : Integer;
     Dig : Integer;
     Mult: String;
begin
     Soma := 0;

     // BRADESCO.
     If Banco = 237 then begin
        For Tmp := 1 to 13 do begin
            Soma := Soma + (StrToInt(nNumero[tmp]) * Peso13[tmp]);
        End;

        Dig := 11 - (Soma mod 11);
        If Dig = 10 then
           result := 'P'
        else
           If Dig = 11 then
              result := '0'
           else
              result := InttoStr(Dig);
     End;

     // ITAÚ.
     If Banco = 341 then begin
        For Tmp := 1 to Length(Trim(nNumero)) do begin
            Mult := InttoStr(StrtoInt(nNumero[tmp]) * Peso10[Tmp]);
            If StrtoInt(Mult) < 10 then begin
               Soma := Soma + StrtoInt(Mult);
            end else begin
               Soma := Soma + StrtoInt(Mult[1])+StrtoInt(Mult[2]);
            End;
        End;
        Dig := 10 - (Soma mod 10);
        If (Dig > 9) then Dig := 0;
        Result := InttoStr(Dig);
     End;

     // SANTANDER.
     If Banco = 33 then begin
        nNumero := InverteString(StrZero(nNumero, 12));
        For Tmp := 1 to 12 do begin
            Soma := Soma + (StrToInt(nNumero[tmp]) * Peso12[tmp]);
        End;

        Dig := Soma mod 11;
        If (Dig = 0) or (Dig = 1)   then Dig := 0;
        If (Dig = 10)               then Dig := 1;
        If (Dig > 1) and (Dig < 10) then Dig := 11 - Dig;

        Result := InttoStr(Dig);
     End;
end;

// Rotina geradora do digito verificador do codigo reduzido do plano de contas.
Function DigitoConta(pConta: String):String;
Const
     Pesos: array[1..5] of Integer = (6,5,4,3,2);
Var
    Tmp,
    Soma,
    Dig1: Integer;
Begin
      Soma   := 0;
      pConta := Trim(ApenasNumeros(pConta));

      For Tmp := 1 to 5 do begin
          Soma := Soma + ( StrToInt(pConta[Tmp]) * Pesos[Tmp] );
      End;

      Dig1 := (Soma mod 11);
      If (Dig1 < 2) then
         Dig1 := 0
      else
         Dig1 := 11 - Dig1;

      Result := InttoStr(Dig1);
End;

// Remove caracteres acentuados de uma string e de controle do XML.
Function LimpaXML(Str:String): String;
Const ComAcento = 'àâêôûãõáéíóúçüúùñÀÂËÊÔÛÃÕÁÉÍÓÚÇÜÑ&§°ºª´`^~¨¢£_--•'+CHR(39)+CHR(8)+CHR(31)+CHR(8211)+CHR(211)+CHR(11)+CHR(3)+CHR(7);
      SemAcento = 'aaeouaoaeioucuuunAAEEOUAOAEIOUCUNE            --         ';
Var
      x: Integer;
Begin
      For x := 1 to Length(Str) do Begin
          If Pos(Str[x],ComAcento) <> 0 then begin
              Str[x] := SemAcento[Pos(Str[x],ComAcento)];
          End;
          If (Ord(Str[x]) < 32) or (ORD(Str[x]) > 125) then begin
              Str[x] := ' ';
          end;
      End;

      Result := Trim(Str);
End;

procedure AutoAjusteCol(Grid: TStringGrid);
var
  i,c, W, WMax: integer;
begin
     for c := 0 to pred(Grid.ColCount) do begin
         WMax := 0;
         for i := 0 to pred(Grid.RowCount) do begin
             W := Grid.Canvas.TextWidth(Grid.Cells[c, i]);
             if W > WMax then WMax := W;
         end;
         Grid.ColWidths[c] := WMax + 10; //+ (WMax div 3);
         if Grid.ColWidths[c] > 500 then Grid.ColWidths[c] := 500;
     end;
end;

// Gera código de barras banco Santander
function CodBarrasSantander(Banco, NumeroPSK, Moeda, nNumero, Vencto, Carteira: String; Valor:Real ):String;
Const
    Pesos : array[1..43] of Integer = (2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4);
var
    aFatorVencimento,
    aCodigoBarras,
    mNossoNumero,
    mValor: String;
    
    Tmp,
    Soma,
    Dig: Integer;
begin
    //Primeira parte do código de barras
    aFatorVencimento := Formatar(CalcularFatorVencimento(StrToDate(Vencto)), 4, false, '0');
    mNossoNumero     := StrZero(Copy(nNumero, 1, 13), 13);
    mValor           := StrZero(ApenasNumeros(FormatFloat(',##0.00', Valor)), 10 );

    aCodigoBarras := InverteString(StrZero(Banco, 3)+StrZero(Moeda, 1)+StrZero(aFatorVencimento, 4)+mValor+'9'+NumeroPSK+mNossoNumero+'0'+Carteira);

    Soma := 0;
    For Tmp := 1 to 43 do begin
        Soma := Soma + (StrtoInt(aCodigoBarras[tmp]) * Pesos[Tmp]);
    End;
    Soma := Soma * 10;
    Dig  := Soma mod 11;

    if (Dig = 0) or (Dig = 10) Then Dig := 1;

    Result := (StrZero(Banco, 3)+StrZero(Moeda, 1)+InttoStr(Dig)+StrZero(aFatorVencimento, 4)+mValor+'9'+NumeroPSK+mNossoNumero +'0'+Carteira);
end;

function DigitavelSantander(Banco, Beneficiario, Moeda, NossoNumero, Carteira, Vencimento: String; Valor:Real):String;
Const
    Pesos : array[1..10]  of Integer = (2,1,2,1,2,1,2,1,2,1);
Var
   Grupo1,
   Grupo2,
   Grupo3,
   Grupo4,
   Grupo5,
   Mult : String;
   Tmp,
   Dig,
   Soma: Integer;
begin
     // Grupo 1.
     Grupo1 := InverteString(PoeZero(3, StrtoInt(Banco)) + Moeda + '9' + Copy(Beneficiario, 1, 4));
     Soma   := 0;
     For Tmp := 1 to 9 do begin
         Mult := InttoStr(StrtoInt(Grupo1[tmp]) * Pesos[Tmp]);
         If StrtoInt(Mult) < 10 then begin
            Soma := Soma + StrtoInt(Mult);
         end else begin
            Soma := Soma + StrtoInt(Mult[1])+StrtoInt(Mult[2]);
         End;
     End;
     Dig := (Soma mod 10);
     if Dig > 0 then Dig := 10 - Dig;

     Grupo1 := Banco + Moeda + '9' + Copy(Beneficiario,1,4) + InttoStr(Dig);

     // Grupo 2.
     Grupo2 := InverteString(PoeZero(3, StrtoInt(Copy(Beneficiario, 5, 3)))+PoeZero(7, StrtoInt(Copy(NossoNumero, 1, 7))));
     Soma   := 0;
     For Tmp := 1 to 10 do begin
         Mult := InttoStr(StrtoInt(Grupo2[tmp]) * Pesos[Tmp]);
         If StrtoInt(Mult) < 10 then begin
            Soma := Soma + StrtoInt(Mult);
         end else begin
            Soma := Soma + StrtoInt(Mult[1])+StrtoInt(Mult[2]);
         End;
     End;
     Dig := (Soma mod 10);
     if Dig > 0 then Dig := 10 - Dig;

     Grupo2 := PoeZero(3, StrtoInt(Copy(Beneficiario, 5, 3)))+PoeZero(7, StrtoInt(Copy(NossoNumero, 1, 7))) + InttoStr(Dig);
     
     // Grupo 3.
     Grupo3 := InverteString(Copy(NossoNumero, 8, 6)+ '0' + Carteira);
     Soma   := 0;
     For Tmp := 1 to 10 do begin
         Mult := InttoStr(StrtoInt(Grupo3[tmp]) * Pesos[Tmp]);
         If StrtoInt(Mult) < 10 then begin
            Soma := Soma + StrtoInt(Mult);
         end else begin
            Soma := Soma + StrtoInt(Mult[1])+StrtoInt(Mult[2]);
         End;
     End;
     Dig := (Soma mod 10);
     if Dig > 0 then Dig := 10 - Dig;

     Grupo3 := Copy(NossoNumero, 8, 6)+ '0' + Carteira + InttoStr(Dig);

     // Grupo 4.
     Grupo4 := Copy(CodBarrasSantander(Banco, Beneficiario, Moeda, NossoNumero, Vencimento, Carteira, Valor), 5, 1);

     // Grupo 5.
     Grupo5 := Copy(CodBarrasSantander(Banco, Beneficiario, Moeda, NossoNumero, Vencimento, Carteira, Valor), 6, 14);

     Result := Grupo1+Grupo2+Grupo3+Grupo4+Grupo5;
end;

function CodigoBarrasGNRE(Estado, Convenio, IdReceita, NossoNumero: String; Valor: Real; Data: TDate):String;
var
   mDataIni: TDate;
   mDias,
   mAno,
   mCodigo,
   mBloco1,
   mBloco2,
   mBloco3,
   mBloco4,
   Mult,
   Dig,
   Dig1,
   Dig2,
   Dig3,
   Dig4 : String;
   mSoma, i: integer;
Const
   Pesos2: array[1..43] of Integer = (4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2,9,8,7,6,5,4,3,2);
   Pesos3: array[1..11] of Integer = (2,1,2,1,2,1,2,1,2,1,2);
begin
      mDataIni := StrtoDate('31/12/'+InttoStr(YearOf(Data)-1));
      mDias    := DifDias(mDataIni, Data);
      mAno     := Copy(InttoStr(YearOf(Data)), 3, 2);

      mCodigo := '8' +                                                        // Identificação do produto.
                 '5' +                                                        // Identificacao do segmento. (5 = Orgão governamentais).
                 '8' +                                                        // Identificacao do valor efetivo (8 = Valor em reais).
                 StrZero(ApenasNumeros(FormatFloat(',##0.00', Valor)), 11) +  // Valor efetivo em reais.
                 Convenio +                                                   // Identificação Empresa/Orgão (Código convênio FEBRABAN).
                 (mAno+mDias) +                                               // Data limite para pagamento (Data Juliana).
                 IdReceita +                                                  // Identificação da Receita.
                 NossoNumero +                                                // Nosso número.
                 '00';                                                        // Campo livre.
      mSoma := 0;

      // Digito verificador geral.
      for i := 1 to 43 do begin
          mSoma := mSoma + (StrtoInt(mCodigo[i]) * Pesos2[i]);
      end;
      Dig := InttoStr(11 - (mSoma mod 11));
      if StrtoInt(Dig) > 9 then Dig := '1';

      // Digito do primeiro bloco.
      mBloco1 := Copy(mCodigo, 1, 11);
      mSoma   := 0;
      for i := 1 to 11 do begin
          mSoma := mSoma + (StrtoInt(mBloco1[i]) * Pesos3[i]);
      end;
      Dig1    := InttoStr(10 - (mSoma mod 10));
      If Dig1 = '10' then Dig1 := '0';

      // Digito do segudo bloco.
      mBloco2 := Copy(mCodigo, 11, 11);
      mSoma   := 0;
      for i := 1 to 11 do begin
          mSoma := mSoma + (StrtoInt(mBloco2[i]) * Pesos3[i]);
      end;
      Dig2 := InttoStr(10 - (mSoma mod 10));
      If Dig2 = '10' then Dig2 := '1';

      // Digito do terceiro bloco.
      mBloco3 := Copy(mCodigo, 22, 11);
      mSoma   := 0;
      for i := 1 to 11 do begin
          mSoma := mSoma + (StrtoInt(mBloco3[i]) * Pesos3[i]);
      end;
      Dig3 := InttoStr(10 - (mSoma mod 10));
      If Dig3 = '10' then Dig3 := '1';

      // Digito do quarto bloco.
      mBloco4 := Copy(mCodigo, 33, 11);
      mSoma   := 0;
      for i := 1 to 11 do begin
          Mult := InttoStr(StrtoInt(mBloco4[i]) * Pesos3[i]);
          if StrtoInt(Mult) < 10 then begin
             mSoma := mSoma + StrtoInt(Mult);
          end else begin
             mSoma := mSoma + StrtoInt(Mult[1])+StrtoInt(Mult[2]);
          end;
      end;
      Dig4 := InttoStr(10 - (mSoma mod 10));
      If Dig4 = '10' then Dig4 := '1';

      Result := Copy(mBloco1, 1, 3) + Dig + Copy(mBloco1, 4, 7) + Dig1 + mBloco2 + Dig2 + mBloco3 + Dig3 + mBloco4 + Dig4;
end;

Function LimpaZerosConta(Conta, Mascara:String): String;
var
   i,q, r:Integer;
   Parte: String;
begin
     Conta := RemoveCaracter('.', '', Conta);
     Conta := FormatMaskText(Mascara+';0', Conta);
     q := 0;
     for i := 1 to Length(Conta) do begin
         if Conta[i] = '.' then Inc(q);
     end;

     for r := 1 to q do begin
         Parte := '';
         for i := Length(Trim(Conta)) downto 1 do begin
             if Conta[i] = '.' then begin
                Break;
             end else begin
                Parte := Parte + Conta[i];
             end;
         end;
         Parte := InverteString(Parte);
         
         if parte <> '' then begin
            if Strtoint(Parte) = 0 then
               Conta := Copy( Conta, 1, Length(Trim(Conta))-(Length(Trim(Parte))+1) )
            else
               Conta := Copy( Conta, 1, Length(Trim(Conta)) );
         end;
     end;
     result := RemoveCaracter('.', '', Conta);
end;

Function ComplementoHistorico(Macro, Beneficiario, Processo, DI, Classificacao, TPDoc, NumDoc, DataDoc, Banco, Obs: String): String;
var
   mMacro, mobs:string;
begin
     with dmContab do begin
          mMacro := Macro;
          mobs   := StringReplace(Obs , #13, ' ', [rfReplaceAll]);
          mobs   := StringReplace(mObs, #12, ' ', [rfReplaceAll]);
          mobs   := StringReplace(mObs, #10, ' ', [rfReplaceAll]);
          mMacro := RemoveCaracter('<{BENEFICIARIO}>'                      , Beneficiario , mMacro);
          mMacro := RemoveCaracter('<{PROCESSO}>'                          , Processo     , mMacro);
          mMacro := RemoveCaracter('<{DI}>'                                , DI           , mMacro);
          mMacro := RemoveCaracter('<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>', Classificacao, mMacro);
          mMacro := RemoveCaracter('<{TIPO DE DOCUMENTO}>'                 , TPDoc        , mMacro);
          mMacro := RemoveCaracter('<{Nº DOCUMENTO}>'                      , NumDoc       , mMacro);
          mMacro := RemoveCaracter('<{DATA DOCUMENTO}>'                    , DataDoc      , mMacro);
          mMacro := RemoveCaracter('<{BANCO}>'                             , Banco        , mMacro);
          mMacro := RemoveCaracter('<{OBSERVAÇÃO}>'                        , mObs         , mMacro);
          Result := mMacro;
     end;
end;

// Converte um valor booleano para 'S' ou 'N'.
function SimNao(Campo: Boolean): string;
begin
      if Campo then
         result := 'S'
      else
         result := 'N';
end;

// Libera memoria
procedure LimpaMemoria;
var
   MainHandle : THandle;
begin
     try
        MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
        SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
        CloseHandle(MainHandle) ;
     except

     end;
     Application.ProcessMessages;
end;

function DifHoras(aDateStart, aDateEnd: TDateTime): String;
var
  Hour, Minute, Second: Integer;
begin
      Result := '';

      if (aDateStart < aDateEnd) then
        Second := Round(86400 * (aDateEnd - aDateStart))
      else
        Second := Round(86400 * (aDateStart - aDateEnd));

      Hour   := Second div 3600;
      Second := Second - (Hour * 3600);
      Minute := Second div 60;
      Second := Second - (Minute * 60);

      if (Hour > 0) then begin
        if (Length(IntToStr(Hour)) > 2) then
          Result := IntToStr(Hour)
        else
          Result := FormatFloat('00', Hour);
      end else
         Result := FormatFloat('00', 0);

      Result := Result + ':' + FormatFloat('00', Minute) + ':' + FormatFloat('00', Second);
end;

// Função para verificar o codigo "GTIN/CEAN'.
function ValidaGTIN(AGTIN: string): boolean;
var
  i, soma, resultado, base10: integer;
begin
      //Verifica se todos os caracteres de AGTIN são números
      for i := 1 to Length(AGTIN) do begin
          if not (AnsiChar(AGTIN[i]) in ['0'..'9']) then begin
             Result := False;
             Exit;
          end;
      end;
      
      //Verifica se AGTIN tem o tamanho necessário
      if Length(AGTIN) in [8,12,13,14] then begin
         soma:= 0;
         for i:= 1 to (Length(AGTIN) -1) do begin
             if Length(AGTIN) = 13 then begin
                if Odd(i) then
                   soma := soma + (strtoint(AGTIN[i]) * 1)
                else
                   soma := soma + (strtoint(AGTIN[i]) * 3);
             end else begin
                if Odd(i) then
                   soma := soma + (strtoint(AGTIN[i]) * 3)
                else
                   soma := soma + (strtoint(AGTIN[i]) * 1);
             end;
         end;
         base10:= soma;
         //Verifica se base10 é múltiplo de 10
         if not (base10 mod 10 = 0) then begin
            while not (base10 mod 10 = 0) do begin
                  base10 := base10 + 1;
            end;
         end;
         resultado:= base10 - soma;
         //Verifica se o resultado encontrado é igual ao caractere de controle
         if resultado = strtoint(AGTIN[Length(AGTIN)]) then
            Result := True
         else
            Result := False;
      end else
         Result := False;
end;

procedure AtualizaInv(pCodigos:string);
Var
   mSalAnt,
   mTotAnt: Real;
   mItem,
   mCod:integer;
   tAltera,
   tRegistro,
   tSaldo:TMSQuery;
begin
      Screen.Cursor := crSQLWait;

      with Dados, dmFiscal do begin
           tAltera              := TMSQuery.Create(nil);
           tSaldo               := TMSQuery.Create(nil);
           tRegistro            := TMSQuery.Create(nil);
           tAltera.Connection   := Banco_Empresas;
           tSaldo.Connection    := Banco_Empresas;
           tRegistro.Connection := Banco_Empresas;

           //----------------------------------------------------------[ MONTAGEM DA FICHA DE INVENTARIO ]-------------------------------------------------------
           TempFichaInv.SQL.Clear;
           TempFichaInv.SQL.Add('-- NOTAS DE ENTRADA PROPRIA -- ');
           TempFichaInv.SQL.Add('If (SELECT COUNT(*) FROM SYSOBJECTS WHERE XTYPE = ''U'' and NAME  = ''TempFichaInv'') > 0');
           TempFichaInv.SQL.Add('   TRUNCATE TABLE TempFichaInv');
           TempFichaInv.SQL.Add('ELSE ');
           TempFichaInv.SQL.Add('   SELECT * INTO TempFichaInv FROM FichaInventario WHERE Registro > (SELECT MAX(Registro) FROM FichaInventario)');
           TempFichaInv.SQL.Add('SELECT MIN(Data_Emissao) AS Data');
           TempFichaInv.SQL.Add('INTO #TEMPDT');
           TempFichaInv.SQL.Add('FROM NotasFiscais WHERE isnull(Cancelada, 0) = 0 and isnull(Nfe_Denegada, 0) = 0');
           TempFichaInv.SQL.Add('UNION ALL');
           TempFichaInv.SQL.Add('SELECT MIN(Data_Entrada) AS Data');
           TempFichaInv.SQL.Add('FROM NotasTerceiros');
           TempFichaInv.SQL.Add('WHERE isnull(Provisoria, 0) <> 1');
           TempFichaInv.SQL.Add('UNION ALL');
           TempFichaInv.SQL.Add('SELECT MIN(Data_Transferencia) AS Data');
           TempFichaInv.SQL.Add('FROM ProdutosTransferencia');
           TempFichaInv.SQL.Add('DELETE FROM #TEMPDT WHERE Data IS NULL');
           TempFichaInv.SQL.Add('DECLARE  @Menor_Data datetime');
           TempFichaInv.SQL.Add('        ,@Maior_Data datetime');
           TempFichaInv.SQL.Add('SET @Menor_Data = (SELECT MIN(Data) FROM #TEMPDT)');
           TempFichaInv.SQL.Add('SET @Maior_Data = GETDATE()');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaInv.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaInv.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaInv.SQL.Add('       ,NCM                 = NCM');
           TempFichaInv.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = CASE isnull(Finalidade_Mercadoria, 0)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Nota ');
           TempFichaInv.SQL.Add('       ,Data');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Fornecedor_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaInv.SQL.Add('       ,Processo');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaInv.SQL.Add('                                   Quantidade');
           TempFichaInv.SQL.Add('                              ELSE');
           TempFichaInv.SQL.Add('                                   0');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 4) ');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaInv.SQL.Add('INTO   #TEMP ');
           TempFichaInv.SQL.Add('FROM   NotasItens NI ');
           TempFichaInv.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Saida_Entrada = 0');
           TempFichaInv.SQL.Add('  and Valor_Unitario > 0');
           TempFichaInv.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaInv.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaInv.SQL.Add('  and (isnull(Movimenta_Inventario, 0) = 1 OR isnull((SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada and Valor_Unitario > 0), 0) = 1)');
           TempFichaInv.SQL.Add('-- NOTAS DE SAÍDA -- ');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaInv.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaInv.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaInv.SQL.Add('       ,NCM                 = NCM');
           TempFichaInv.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = CASE isnull(Finalidade_Mercadoria, 0)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Nota');
           TempFichaInv.SQL.Add('       ,Data');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Cliente_Codigo    FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaInv.SQL.Add('       ,Processo');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaInv.SQL.Add('                                   Quantidade');
           TempFichaInv.SQL.Add('                              ELSE');
           TempFichaInv.SQL.Add('                                   0');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaInv.SQL.Add('FROM   NotasItens NI ');
           TempFichaInv.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Saida_Entrada = 1 ');
           TempFichaInv.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaInv.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaInv.SQL.Add('  and isnull(Movimenta_Inventario, 0) = 1 ');
           TempFichaInv.SQL.Add('  and Valor_Unitario > 0');
           TempFichaInv.SQL.Add('  and (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada) <> 1');
           TempFichaInv.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           TempFichaInv.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           TempFichaInv.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaInv.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaInv.SQL.Add('       ,CFOP                = null ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE WHEN Motivo = ''A'' THEN');
           TempFichaInv.SQL.Add('                                   ''* SALDO DE ABERTURA DE ESTOQUE *''');
           TempFichaInv.SQL.Add('                              ELSE');
           TempFichaInv.SQL.Add('                                   ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *''');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('       ,Nota                = Registro');
           TempFichaInv.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaInv.SQL.Add('       ,Finalidade          = 0 ');
           TempFichaInv.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaInv.SQL.Add('       ,Processo_Entrada');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = Quantidade_Entrada ');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Unitario, 2) ');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Unitario, 2) * Quantidade_Entrada ');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaInv.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaInv.SQL.Add('WHERE Produto_Entrada IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Inventario = 1 ');
           TempFichaInv.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Produto_Saida');
           TempFichaInv.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           TempFichaInv.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           TempFichaInv.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Saida) ');
           TempFichaInv.SQL.Add('       ,CFOP                = null');
           TempFichaInv.SQL.Add('       ,Historico           = ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *'' ');
           TempFichaInv.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('       ,Nota                = Registro');
           TempFichaInv.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaInv.SQL.Add('       ,Finalidade          = 0');
           TempFichaInv.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaInv.SQL.Add('       ,Processo_Saida');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = Quantidade');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaInv.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaInv.SQL.Add('WHERE Produto_Saida IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Inventario = 1');
           TempFichaInv.SQL.Add('  and Motivo  = ''TRF'' ');
           TempFichaInv.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaInv.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaInv.SQL.Add('       ,UM                  = Unidade_Medida');
           TempFichaInv.SQL.Add('       ,NCM                 = NCM');
           TempFichaInv.SQL.Add('       ,CFOP                = Natureza_Codigo ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''COMPRA - REVENDA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''COMPRA - CONSUMO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''COMPRA - IMOBILIZADO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = CASE isnull((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal), 0)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Nota ');
           TempFichaInv.SQL.Add('       ,Data                = Data_Entrada');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = Fornecedor ');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = (SELECT Nome FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaInv.SQL.Add('       ,Finalidade          = (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) ');
           TempFichaInv.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaInv.SQL.Add('       ,Processo');
           TempFichaInv.SQL.Add('       ,Tipo_Processos      = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = Quantidade ');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 2) ');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''T'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''NFT'' ');
           TempFichaInv.SQL.Add('FROM   NotasTerceirosItens NTI');
           TempFichaInv.SQL.Add('WHERE  Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and  Nota IS NOT NULL');
           TempFichaInv.SQL.Add('  and  NTI.Movimenta_Inventario = 1 ');
           TempFichaInv.SQL.Add('  and  (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota and NT.Data_Emissao = NTI.Data_Emissao and NT.Fornecedor = NTI.Fornecedor) <> 1');
           TempFichaInv.SQL.Add('SELECT  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           TempFichaInv.SQL.Add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           TempFichaInv.SQL.Add('       ,*');
           TempFichaInv.SQL.Add('INTO #TEMP2');
           TempFichaInv.SQL.Add('FROM #TEMP');
           TempFichaInv.SQL.Add('ORDER BY Codigo, Data , ES');
           TempFichaInv.SQL.Add('-- ATUALIZANDO AS QUANTIDADE DOS SALDOS.');
           TempFichaInv.SQL.Add('UPDATE #TEMP2 SET Qtde_Saldo = CAST(');
           TempFichaInv.SQL.Add('                               isnull((SELECT SUM(Qtde_Entrada) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''E''), 0)');
           TempFichaInv.SQL.Add('                               - isnull((SELECT SUM(Qtde_Saida) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''S''), 0)');
           TempFichaInv.SQL.Add('                               + Qtde_Entrada');
           TempFichaInv.SQL.Add('                               - Qtde_Saida');
           TempFichaInv.SQL.Add('                               AS DECIMAL(14,3))');
           TempFichaInv.SQL.Add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           TempFichaInv.SQL.Add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           TempFichaInv.SQL.Add('                 ,Unitario_Saldo = CASE WHEN Qtde_Saldo > 0 THEN (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           TempFichaInv.SQL.Add('WHERE Item = 1');
           TempFichaInv.SQL.Add('INSERT INTO TempFichaInv');
           TempFichaInv.SQL.Add('            SELECT Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           TempFichaInv.SQL.Add('                  ,Item');
           TempFichaInv.SQL.Add('                  ,Codigo ');
           TempFichaInv.SQL.Add('                  ,NCM');
           TempFichaInv.SQL.Add('                  ,Descricao ');
           TempFichaInv.SQL.Add('                  ,UM ');
           TempFichaInv.SQL.Add('                  ,CFOP ');
           TempFichaInv.SQL.Add('                  ,Historico ');
           TempFichaInv.SQL.Add('                  ,Estoque ');
           TempFichaInv.SQL.Add('                  ,Emissor');
           TempFichaInv.SQL.Add('                  ,Origem');
           TempFichaInv.SQL.Add('                  ,Nota ');
           TempFichaInv.SQL.Add('                  ,Data ');
           TempFichaInv.SQL.Add('                  ,ES ');
           TempFichaInv.SQL.Add('                  ,Destinatario_Codigo ');
           TempFichaInv.SQL.Add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           TempFichaInv.SQL.Add('                  ,Destinatario_CNPJ ');
           TempFichaInv.SQL.Add('                  ,Finalidade ');
           TempFichaInv.SQL.Add('                  ,Processo ');
           TempFichaInv.SQL.Add('                  ,Tipo_Processo');
           TempFichaInv.SQL.Add('                  ,Qtde_Entrada ');
           TempFichaInv.SQL.Add('                  ,Unitario_Entrada ');
           TempFichaInv.SQL.Add('                  ,Total_Entrada ');
           TempFichaInv.SQL.Add('                  ,Qtde_Saida ');
           TempFichaInv.SQL.Add('                  ,Unitario_Saida ');
           TempFichaInv.SQL.Add('                  ,Total_Saida ');
           TempFichaInv.SQL.Add('                  ,Qtde_Saldo ');
           TempFichaInv.SQL.Add('                  ,Unitario_Saldo ');
           TempFichaInv.SQL.Add('                  ,Total_Saldo ');
           TempFichaInv.SQL.Add('            FROM  #TEMP2 ');
           TempFichaInv.SQL.Add('            ORDER BY Codigo, Data, ES, Nota ');
           TempFichaInv.SQL.Add('SELECT * FROM TempFichaInv ORDER BY Codigo, Item');
           TempFichaInv.SQL.Add('DROP TABLE #TEMP, #TEMP2, #TEMPDT');
           TempFichaInv.ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           TempFichaInv.ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           TempFichaInv.ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //TempFichaInv.SQL.SaveToFile('c:\temp\Funcoes_Ficha_Inventario.sql');
           TempFichaInv.Open;
           TempFichaInv.First;
           
           TempFichaInv.DisableControls;
           tAltera.DisableControls;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT Unitario_Saldo = isnull(Unitario_Saldo, 0)');
           tSaldo.SQL.Add('      ,Total_Saldo    = isnull(Total_Saldo, 0)');
           tSaldo.SQL.Add('FROM  FichaInventario WHERE Codigo = :pCodigo and Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := TempFichaInv.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := TempFichaInv.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE TempFichaInv SET Total_Saldo    = :pTotalSaldo');
           tAltera.SQL.Add('                       ,Unitario_Saida = :pUniSaida');
           tAltera.SQL.Add('                       ,Total_Saida    = :pTotSaida');
           tAltera.SQL.Add('                       ,Unitario_Saldo = :pUniSaldo');
           tAltera.SQL.Add('WHERE Registro = :pRegistro and Item > 1');
           
           Janela_Processamento.Progresso.Max      := TempFichaInv.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de inventario...';

           While not TempFichaInv.Eof do begin
                 tAltera.ParamByName('pUniSaida').AsFloat   := mSalAnt;
                 tAltera.ParamByName('pTotSaida').AsFloat   := mSalAnt * TempFichaInv.FieldByName('Qtde_Saida').AsFloat;
                 tAltera.ParamByName('pTotalSaldo').AsFloat := mTotAnt + TempFichaInv.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaInv.FieldByName('Qtde_Saida').AsFloat);
                 If TempFichaInv.FieldByName('Qtde_Saldo').AsFloat > 0 then
                    tAltera.ParamByName('pUniSaldo').AsFloat := (mTotAnt + TempFichaInv.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaInv.FieldByName('Qtde_Saida').AsFloat)) / TempFichaInv.FieldByName('Qtde_Saldo').AsFloat
                 else
                    tAltera.ParamByName('pUniSaldo').AsFloat := 0;
                 tAltera.ParamByName('pRegistro').AsInteger  := TempFichaInv.FieldByName('Registro').AsInteger;
                 tAltera.Execute;

                 TempFichaInv.RefreshRecord;

                 mSalAnt := TempFichaInv.FieldByName('Unitario_Saldo').AsFloat;
                 mTotAnt := TempFichaInv.FieldByName('Total_Saldo').AsFloat;

                 TempFichaInv.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           End;
           TempFichaInv.EnableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('DELETE FROM FichaInventario');
           tAltera.SQL.Add('WHERE  Codigo IN('+pCodigos+')');
           tAltera.Execute;
           
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM FichaInventario');
           tRegistro.Open;

           FichaInventario.Open;
           Janela_Processamento.Progresso.Position := 0;
           //Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de inventario...';

           TempFichaInv.First;
           mItem := 1;
           mCod  := TempFichaInv.FieldByName('Codigo').AsInteger;
           while not TempFichaInv.Eof do begin
                 tRegistro.Open;
                 FichaInventario.Append;
                                 FichaInventarioRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger;
                                 FichaInventarioItem.Value                := mItem;
                                 FichaInventarioCodigo.Value              := TempFichaInv.FieldByName('Codigo').AsInteger;
                                 FichaInventarioNCM.Value                 := TempFichaInvNCM.Value;
                                 FichaInventarioCFOP.Value                := TempFichaInvCFOP.Value;
                                 FichaInventarioDescricao.Value           := TempFichaInvDescricao.Value;
                                 FichaInventarioUM.Value                  := TempFichaInvUM.Value;
                                 FichaInventarioHistorico.Value           := TempFichaInvHistorico.Value;
                                 FichaInventarioEstoque.Value             := TempFichaInvEstoque.Value;
                                 FichaInventarioEmissor.Value             := TempFichaInvEmissor.value;
                                 FichaInventarioNota.Value                := TempFichaInvNota.Value;
                                 FichaInventarioData.Value                := TempFichaInvData.Value;
                                 FichaInventarioES.Value                  := TempFichaInvES.Value;
                                 FichaInventarioDestinatario_Codigo.Value := TempFichaInvDestinatario_Codigo.Value;
                                 FichaInventarioDestinatario_Nome.Value   := TempFichaInvDestinatario_Nome.Value;
                                 FichaInventarioDestinatario_CNPJ.Value   := TempFichaInvDestinatario_CNPJ.Value;
                                 FichaInventarioFinalidade.Value          := TempFichaInvFinalidade.Value;
                                 FichaInventarioQtde_Entrada.Value        := TempFichaInvQtde_Entrada.Value;
                                 FichaInventarioUnitario_Entrada.Value    := TempFichaInvUnitario_Entrada.Value;
                                 FichaInventarioTotal_Entrada.Value       := TempFichaInvTotal_Entrada.Value;
                                 FichaInventarioQtde_Saida.Value          := TempFichaInvQtde_Saida.Value;
                                 FichaInventarioUnitario_Saida.Value      := TempFichaInvUnitario_Saida.Value;
                                 FichaInventarioTotal_Saida.Value         := TempFichaInvTotal_Saida.Value;
                                 FichaInventarioQtde_Saldo.Value          := TempFichaInvQtde_Saldo.Value;
                                 FichaInventarioTotal_Saldo.Value         := TempFichaInvTotal_Saldo.Value;
                                 FichaInventarioUnitario_Saldo.Value      := TempFichaInvUnitario_Saldo.Value;
                                 FichaInventarioOrigem.Value              := TempFichaInvOrigem.Value;
                                 FichaInventarioProcesso.Value            := TempFichaInvProcesso.Value;
                                 FichaInventarioTipo_Processo.Value       := TempFichaInvTipo_Processo.Value;
                 FichaInventario.Post;
                 tRegistro.Close;
                 TempFichaInv.Next;
                 inc(mItem);
                 if mCod <> TempFichaInv.FieldByName('Codigo').AsInteger then begin
                    mItem := 1;
                    mCod  := TempFichaInv.FieldByName('Codigo').AsInteger;
                 end;   

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           end;
           FichaInventario.close;
           
           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaInventario SET Unitario_Saida = 0');
           tAltera.SQL.Add('                          ,Total_Saida    = 0');
           tAltera.SQL.Add('                          ,Qtde_Saida     = 0');
           tAltera.SQL.Add('WHERE ES = ''E'' ');
           tAltera.Execute;
      end;
      Screen.Cursor := crDefault;
end;

procedure AtualizaEst(pCodigos:string);
Var
   mSalAnt,
   mTotAnt:Real;
   mItem,
   mCod:integer;
   tAltera,
   tRegistro,
   tSaldo:TMSQuery;
begin
      Screen.Cursor := crSQLWait;
      with Dados, dmFiscal do begin
           tAltera   := TMSQuery.Create(nil);
           tSaldo    := TMSQuery.Create(nil);
           tRegistro := TMSQuery.Create(nil);
           tAltera.Connection   := Banco_Empresas;
           tSaldo.Connection    := Banco_Empresas;
           tRegistro.Connection := Banco_Empresas;

           //----------------------------------------------------------( MONTAGEM DA FICHA DE ESTOQUE )-------------------------------------------------------\\
           TempFichaEst.SQL.Clear;
           TempFichaEst.SQL.Add('-- NOTAS DE ENTRADA PROPRIA -- ');
           TempFichaEst.SQL.Add('If (SELECT COUNT(*) FROM SYSOBJECTS WHERE XTYPE = ''U'' and NAME  = ''TempFichaEst'') > 0');
           TempFichaEst.SQL.Add('   BEGIN');
           TempFichaEst.SQL.Add('         DROP TABLE TempFichaEst');
           TempFichaEst.SQL.Add('         SELECT TOP 1 * INTO TempFichaEst FROM FichaEstoque WHERE Registro > (SELECT MAX(Registro) FROM FichaInventario)');
           TempFichaEst.SQL.Add('         TRUNCATE TABLE TempFichaEst');
           TempFichaEst.SQL.Add('   END');
           TempFichaEst.SQL.Add('ELSE ');
           TempFichaEst.SQL.Add('   SELECT * INTO TempFichaEst FROM FichaEstoque WHERE Registro > (SELECT MAX(Registro) FROM FichaInventario)');
           TempFichaEst.SQL.Add('SELECT MIN(Data_Emissao) AS Data');
           TempFichaEst.SQL.Add('INTO #TEMPDT');
           TempFichaEst.SQL.Add('FROM NotasFiscais WHERE isnull(Cancelada, 0) = 0 and isnull(Nfe_Denegada, 0) = 0');
           TempFichaEst.SQL.Add('UNION ALL');
           TempFichaEst.SQL.Add('SELECT MIN(Data_Entrada) AS Data');
           TempFichaEst.SQL.Add('FROM NotasTerceiros');
           TempFichaEst.SQL.Add('WHERE isnull(Provisoria, 0) <> 1');
           TempFichaEst.SQL.Add('UNION ALL');
           TempFichaEst.SQL.Add('SELECT MIN(Data_Transferencia) AS Data');
           TempFichaEst.SQL.Add('FROM ProdutosTransferencia');
           TempFichaEst.SQL.Add('DELETE FROM #TEMPDT WHERE Data IS NULL');
           TempFichaEst.SQL.Add('DECLARE @Menor_Data datetime');
           TempFichaEst.SQL.Add('       ,@Maior_Data datetime');
           TempFichaEst.SQL.Add('SET @Menor_Data = (SELECT MIN(Data) FROM #TEMPDT)');
           TempFichaEst.SQL.Add('SET @Maior_Data = GETDATE()');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaEst.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaEst.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaEst.SQL.Add('       ,NCM                 = NCM');
           TempFichaEst.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Nota ');
           TempFichaEst.SQL.Add('       ,Data');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Fornecedor_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaEst.SQL.Add('       ,Processo');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaEst.SQL.Add('                                   Quantidade');
           TempFichaEst.SQL.Add('                              ELSE');
           TempFichaEst.SQL.Add('                                   0');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 4) ');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaEst.SQL.Add('INTO   #TEMP ');
           TempFichaEst.SQL.Add('FROM   NotasItens NI ');
           TempFichaEst.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Saida_Entrada = 0');
           TempFichaEst.SQL.Add('  and Valor_Unitario > 0');
           TempFichaEst.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaEst.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaEst.SQL.Add('  and (isnull(Movimenta_Estoque, 0) = 1 OR (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada and Valor_Unitario > 0) = 1)');
           TempFichaEst.SQL.Add('-- NOTAS DE SAÍDA -- ');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaEst.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaEst.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaEst.SQL.Add('       ,NCM                 = NCM');
           TempFichaEst.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Nota');
           TempFichaEst.SQL.Add('       ,Data');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Cliente_Codigo    FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaEst.SQL.Add('       ,Processo');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaEst.SQL.Add('                                   Quantidade');
           TempFichaEst.SQL.Add('                              ELSE');
           TempFichaEst.SQL.Add('                                   0');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaEst.SQL.Add('FROM   NotasItens NI ');
           TempFichaEst.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Saida_Entrada = 1');
           TempFichaEst.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaEst.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaEst.SQL.Add('  and isnull(Movimenta_Estoque, 0) = 1 ');
           TempFichaEst.SQL.Add('  and Valor_Unitario > 0');
           TempFichaEst.SQL.Add('  and (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada) <> 1');
           TempFichaEst.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           TempFichaEst.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           TempFichaEst.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaEst.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaEst.SQL.Add('       ,CFOP                = null ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE WHEN Motivo = ''A'' THEN');
           TempFichaEst.SQL.Add('                                   ''* SALDO DE ABERTURA DE ESTOQUE *''');
           TempFichaEst.SQL.Add('                              ELSE');
           TempFichaEst.SQL.Add('                                   ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *''');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('       ,Nota                = Registro');
           TempFichaEst.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaEst.SQL.Add('       ,Finalidade          = 0 ');
           TempFichaEst.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaEst.SQL.Add('       ,Processo_Entrada');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = Quantidade_Entrada');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Unitario, 2) ');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Unitario, 2) * Quantidade_Entrada');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaEst.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaEst.SQL.Add('WHERE Produto_Entrada IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Estoque = 1 ');
           TempFichaEst.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Produto_Saida');
           TempFichaEst.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           TempFichaEst.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           TempFichaEst.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Saida) ');
           TempFichaEst.SQL.Add('       ,CFOP                = null');
           TempFichaEst.SQL.Add('       ,Historico           = ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *'' ');
           TempFichaEst.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('       ,Nota                = Registro');
           TempFichaEst.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaEst.SQL.Add('       ,Finalidade          = 0');
           TempFichaEst.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaEst.SQL.Add('       ,Processo_Saida');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = Quantidade');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaEst.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaEst.SQL.Add('WHERE Produto_Saida IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Motivo  = ''TRF'' ');
           TempFichaEst.SQL.Add('  and Estoque = 1');
           TempFichaEst.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaEst.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaEst.SQL.Add('       ,UM                  = Unidade_Medida');
           TempFichaEst.SQL.Add('       ,NCM                 = NCM ');
           TempFichaEst.SQL.Add('       ,CFOP                = Natureza_Codigo ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''COMPRA - REVENDA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''COMPRA - CONSUMO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''COMPRA - IMOBILIZADO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Nota ');
           TempFichaEst.SQL.Add('       ,Data                = Data_Entrada');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = Fornecedor ');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = (SELECT Nome FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaEst.SQL.Add('       ,Finalidade          = (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) ');
           TempFichaEst.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaEst.SQL.Add('       ,Processo');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = Quantidade ');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 2) ');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''T'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''NFT'' ');
           TempFichaEst.SQL.Add('FROM   NotasTerceirosItens NTI');
           TempFichaEst.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and NTI.Movimenta_Estoque = 1 ');
           TempFichaEst.SQL.Add('  and  (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota and NT.Data_Emissao = NTI.Data_Emissao and NT.Fornecedor = NTI.Fornecedor) <> 1');
           TempFichaEst.SQL.Add('SELECT  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           TempFichaEst.SQL.Add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           TempFichaEst.SQL.Add('       ,*');
           TempFichaEst.SQL.Add('INTO #TEMP2');
           TempFichaEst.SQL.Add('FROM #TEMP');
           TempFichaEst.SQL.Add('ORDER BY Codigo, Data , ES');
           TempFichaEst.SQL.Add('-- ATUALIZANDO AS QUANTIDADE DOS SALDOS.');
           TempFichaEst.SQL.Add('UPDATE #TEMP2 SET Qtde_Saldo = CAST(');
           TempFichaEst.SQL.Add('                               isnull((SELECT SUM(Qtde_Entrada) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''E''), 0)');
           TempFichaEst.SQL.Add('                               - isnull((SELECT SUM(Qtde_Saida) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''S''), 0)');
           TempFichaEst.SQL.Add('                               + Qtde_Entrada');
           TempFichaEst.SQL.Add('                               - Qtde_Saida');
           TempFichaEst.SQL.Add('                               AS DECIMAL(14,3))');
           TempFichaEst.SQL.Add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           TempFichaEst.SQL.Add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           TempFichaEst.SQL.Add('                 ,Unitario_Saldo = CASE WHEN Qtde_Saldo > 0 THEN (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           TempFichaEst.SQL.Add('WHERE Item = 1');
           TempFichaEst.SQL.Add('INSERT INTO TempFichaEst');
           TempFichaEst.SQL.Add('            SELECT Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           TempFichaEst.SQL.Add('                  ,Item');
           TempFichaEst.SQL.Add('                  ,Codigo ');
           TempFichaEst.SQL.Add('                  ,NCM');
           TempFichaEst.SQL.Add('                  ,Descricao ');
           TempFichaEst.SQL.Add('                  ,UM ');
           TempFichaEst.SQL.Add('                  ,CFOP ');
           TempFichaEst.SQL.Add('                  ,Historico ');
           TempFichaEst.SQL.Add('                  ,Estoque ');
           TempFichaEst.SQL.Add('                  ,Emissor');
           TempFichaEst.SQL.Add('                  ,Origem');
           TempFichaEst.SQL.Add('                  ,Nota ');
           TempFichaEst.SQL.Add('                  ,Data ');
           TempFichaEst.SQL.Add('                  ,ES ');
           TempFichaEst.SQL.Add('                  ,Destinatario_Codigo ');
           TempFichaEst.SQL.Add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           TempFichaEst.SQL.Add('                  ,Destinatario_CNPJ ');
           TempFichaEst.SQL.Add('                  ,Finalidade ');
           TempFichaEst.SQL.Add('                  ,Processo ');
           TempFichaEst.SQL.Add('                  ,Tipo_Processo');
           TempFichaEst.SQL.Add('                  ,Qtde_Entrada ');
           TempFichaEst.SQL.Add('                  ,Unitario_Entrada ');
           TempFichaEst.SQL.Add('                  ,Total_Entrada ');
           TempFichaEst.SQL.Add('                  ,Qtde_Saida ');
           TempFichaEst.SQL.Add('                  ,Unitario_Saida ');
           TempFichaEst.SQL.Add('                  ,Total_Saida ');
           TempFichaEst.SQL.Add('                  ,Qtde_Saldo ');
           TempFichaEst.SQL.Add('                  ,Unitario_Saldo ');
           TempFichaEst.SQL.Add('                  ,Total_Saldo ');
           TempFichaEst.SQL.Add('            FROM  #TEMP2 ');
           TempFichaEst.SQL.Add('            ORDER BY Codigo, Data, ES, Nota ');
           TempFichaEst.SQL.Add('SELECT * FROM TempFichaEst ORDER BY Codigo, Item');
           TempFichaEst.SQL.Add('DROP TABLE #TEMP, #TEMP2, #TEMPDT ');
           TempFichaEst.ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           TempFichaEst.ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           TempFichaEst.ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //TempFichaEst.SQL.SaveToFile('c:\temp\Funcoes_Ficha_Estoque.sql');
           TempFichaEst.Open;
           TempFichaEst.First;

           TempFichaEst.DisableControls;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT Unitario_Saldo = isnull(Unitario_Saldo, 0)');
           tSaldo.SQL.Add('      ,Total_Saldo    = isnull(Total_Saldo, 0)');
           tSaldo.SQL.Add('FROM  FichaEstoque WHERE Codigo = :pCodigo and Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := TempFichaEst.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := TempFichaEst.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE TempFichaEst SET Total_Saldo    = :pTotalSaldo');
           tAltera.SQL.Add('                       ,Unitario_Saida = :pUniSaida');
           tAltera.SQL.Add('                       ,Total_Saida    = :pTotSaida');
           tAltera.SQL.Add('                       ,Unitario_Saldo = :pUniSaldo');
           tAltera.SQL.Add('WHERE Registro = :pRegistro and Item > 1');

           Janela_Processamento.Progresso.Max      := TempFichaInv.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de estoque...';

           While not TempFichaEst.Eof do begin
                 tAltera.ParamByName('pUniSaida').AsFloat   := mSalAnt;
                 tAltera.ParamByName('pTotSaida').AsFloat   := mSalAnt * TempFichaEst.FieldByName('Qtde_Saida').AsFloat;
                 tAltera.ParamByName('pTotalSaldo').AsFloat := mTotAnt + TempFichaEst.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaEst.FieldByName('Qtde_Saida').AsFloat);
                 If TempFichaEst.FieldByName('Qtde_Saldo').AsFloat > 0 then
                    tAltera.ParamByName('pUniSaldo').AsFloat := (mTotAnt + TempFichaEst.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaEst.FieldByName('Qtde_Saida').AsFloat)) / TempFichaEst.FieldByName('Qtde_Saldo').AsFloat
                 else
                    tAltera.ParamByName('pUniSaldo').AsFloat := 0;
                 tAltera.ParamByName('pRegistro').AsInteger  := TempFichaEst.FieldByName('Registro').AsInteger;
                 tAltera.Execute;

                 TempFichaEst.RefreshRecord;

                 mSalAnt := TempFichaEst.FieldByName('Unitario_Saldo').AsFloat;
                 mTotAnt := TempFichaEst.FieldByName('Total_Saldo').AsFloat;

                 TempFichaEst.Next;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           End;
           TempFichaEst.EnableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('DELETE FROM FichaEstoque');
           tAltera.SQL.Add('WHERE  Codigo IN('+pCodigos+')');
           tAltera.Execute;

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM FichaEstoque');
           tRegistro.Open;

           FichaEstoque.Open;
           TempFichaEst.First;
           Janela_Processamento.Progresso.Position := 0;
           //Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de estoque...';
           
           mItem := 1;
           mCod  := TempFichaEst.FieldByName('Codigo').AsInteger;

           while not TempFichaEst.Eof do begin
                 tRegistro.Open;
                 FichaEstoque.Append;
                              FichaEstoqueRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger;
                              FichaEstoqueItem.Value                := mItem;
                              FichaEstoqueCodigo.Value              := TempFichaEst.FieldByName('Codigo').AsInteger;
                              FichaEstoqueDescricao.Value           := TempFichaEstDescricao.Value;
                              FichaEstoqueUM.Value                  := TempFichaEstUM.Value;
                              FichaEstoqueCFOP.Value                := TempFichaEstCFOP.Value;
                              FichaEstoqueHistorico.Value           := TempFichaEstHistorico.Value;
                              FichaEstoqueEstoque.Value             := TempFichaEstEstoque.Value;
                              FichaEstoqueEmissor.Value             := TempFichaEstEmissor.value;
                              FichaEstoqueNota.Value                := TempFichaEstNota.Value;
                              FichaEstoqueData.Value                := TempFichaEstData.Value;
                              FichaEstoqueES.Value                  := TempFichaEstES.Value;
                              FichaEstoqueDestinatario_Codigo.Value := TempFichaEstDestinatario_Codigo.Value;
                              FichaEstoqueDestinatario_Nome.Value   := TempFichaEstDestinatario_Nome.Value;
                              FichaEstoqueDestinatario_CNPJ.Value   := TempFichaEstDestinatario_CNPJ.Value;
                              FichaEstoqueFinalidade.Value          := TempFichaEstFinalidade.Value;
                              FichaEstoqueQtde_Entrada.Value        := TempFichaEstQtde_Entrada.Value;
                              FichaEstoqueUnitario_Entrada.Value    := TempFichaEstUnitario_Entrada.Value;
                              FichaEstoqueTotal_Entrada.Value       := TempFichaEstTotal_Entrada.Value;
                              FichaEstoqueQtde_Saida.Value          := TempFichaEstQtde_Saida.Value;
                              FichaEstoqueUnitario_Saida.Value      := TempFichaEstUnitario_Saida.Value;
                              FichaEstoqueTotal_Saida.Value         := TempFichaEstTotal_Saida.Value;
                              FichaEstoqueQtde_Saldo.Value          := TempFichaEstQtde_Saldo.Value;
                              FichaEstoqueTotal_Saldo.Value         := TempFichaEstTotal_Saldo.Value;
                              FichaEstoqueUnitario_Saldo.Value      := TempFichaEstUnitario_Saldo.Value;
                              FichaEstoqueOrigem.Value              := TempFichaEstOrigem.Value;
                              FichaEstoqueProcesso.Value            := TempFichaEstProcesso.Value;
                              FichaEstoqueTipo_Processo.Value       := TempFichaEstTipo_Processo.Value;
                 FichaEstoque.Post;
                 tRegistro.Close;
                 TempFichaEst.Next;
                 inc(mItem);
                 if mCod <> TempFichaEst.FieldByName('Codigo').AsInteger then begin
                    mItem := 1;
                    mCod  := TempFichaEst.FieldByName('Codigo').AsInteger;
                 end;   
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           end;
           FichaEstoque.close;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaEstoque SET Unitario_Saida = 0');
           tAltera.SQL.Add('                       ,Total_Saida    = 0');
           tAltera.SQL.Add('                       ,Qtde_Saida     = 0');
           tAltera.SQL.Add('WHERE ES = ''E'' ');
           tAltera.Execute;
      end;
      Screen.Cursor := crDefault;
end;

function EliminaEspaco(texto: widestring): string;
var
  r: string;
  i, a: integer;
begin
      a := 0;
      texto := StringReplace(Texto, #8 , '', [rfReplaceAll, rfIgnoreCase]);
      texto := StringReplace(Texto, #10, '', [rfReplaceAll, rfIgnoreCase]);
      texto := StringReplace(Texto, #12, '', [rfReplaceAll, rfIgnoreCase]);
      texto := StringReplace(Texto, #13, '', [rfReplaceAll, rfIgnoreCase]);
      for i := 0 to length(texto) do begin
          if ord(texto[i]) = 32 then
             inc(a)
          else
             a := 0;
          if a <= 1 then r := TrimLeft(r) + texto[i];
      end;
      EliminaEspaco := r;
end;

function AspasDuplas(texto: widestring): string;
begin
      result := '"'+texto+'"';
end;

Function ordinal(numero: string; Tipo:string): string;
var
  conta: smallint;
  s,
  Texto: string;
const
  Unidades: array[0..9] of string = ('','Primeiro ' , 'Segundo '    , 'Terceiro '    , 'Quarto '          , 'Quinto '       , 'Sexto '       , 'Sétimo '         , 'Oitavo '        , 'Nono ');
  Dezenas : array[0..9] of string = ('','Décimo '   , 'Vigésimo '   , 'Trigésimo '   , 'Quadragésimo '    , 'Quinquagésimo ', 'Sexagésimo '  , 'Setuagésimo '    , 'Octogésimo '    , 'Novagésimo ');
  Centenas: array[0..9] of string = ('','Centésimo ', 'Ducentésimo ', 'Tricentésimo ', 'Quadringentésimo ', 'Quingentésimo ', 'Sexcentésimo ', 'Septingentésimo ', 'Octingentésimo ', 'Noningentésimo ');
begin
  // tira os possiveis espacos em branco.
  numero := trim(numero);
  // cria um laço para caminhar na string da direita para esquerda pegando os numeros.
  for conta := length(numero) downto 1 do begin
       // unidades
       if length(numero)-conta = 0 then begin
          texto := unidades[strtoint(copy(numero,conta,1))];
          if (Tipo <> 'M') and (Texto <> '') then
             texto := Copy(Texto, 1, Length(Texto)-2)+'a ';
       end;
       // dezenas
       if length(numero)-conta = 1 then begin
          s := dezenas[strtoint(copy(numero,conta,1))];
          if Tipo <> 'M' then
             s := Copy(s, 1, Length(s)-2)+'a ';
          texto := s+texto;
       end;
       // centenas
       if length(numero)-conta = 2 then begin
          s := centenas[strtoint(copy(numero,conta,1))];
          if Tipo <> 'M' then
             s := Copy(s, 1, Length(s)-2)+'a ';
          texto := s+texto;
       end;
       // milhares
       //if length(numero)-conta > 2 then  texto := 'nao sabe contar tanto,ainda.'+texto;
  end;
  result := texto;
end;

{
// Cria um novo lote.
function CriaLote(Data: TDate; Empresa, Descricao, Origem: string): integer;
var
   tLote: TMSQuery;
begin
      tLote := TMSQuery.Create(nil);
      with Dados, dmContab do begin
           tLote.Connection := Banco_Contabilidade;
           tLote.SQL.Clear;
           tLote.SQL.Add('SELECT Lote     = (SELECT isnull(MAX(Lote), 0)+1     FROM Lotes WHERE Data = :pData and Empresa = :pEmpresa)');
           tLote.SQL.Add('      ,Registro = (SELECT isnull(MAX(Registro), 0)+1 FROM Lotes )');
           tLote.ParamByName('pData').asDate   := Data;
           tLote.ParamByName('pEmpresa').value := Empresa;
           tLote.Open;

           with Lotes do begin
                sql.clear;
                sql.add('select top 1 * from Lotes');
                open;
                Append;
                      FieldByName('Registro').value     := tLote.FieldByName('Registro').asinteger;
                      FieldByName('Data').value         := Data;
                      FieldByName('Lote').value         := tLote.FieldByName('Lote').asinteger;
                      FieldByName('Empresa').value      := Empresa;
                      FieldByName('Origem').value       := Origem;
                      FieldByName('Descricao').value    := Descricao;
                      FieldByName('Contabilizar').value := true;
                      FieldByName('Aberto').value       := true;
                      FieldByName('Recriar').value      := 1;
                Post;
                close;
           end;
      end;
      result := tLote.FieldByName('Lote').asinteger;
end;
}

// Gera tag xml.
function CriaTag(Nome, Valor, Tipo: string; Nivel: integer): string;
{
 1: Nome  : Nome da tag.
 2: Valor : Conteudo do campo 'Dado'.
 3: Tipo  : Tipo de tag.
                "A" Abertura.
                "F" Fechamento.
                "D", Dados.
 4: Nivel : Nivel em relação a tag pai.
}
var
   mEspaco: string;
begin
     if Nivel > 0  then mEspaco := Replicate(' ', Nivel * 4);

     if Tipo = 'A' then CriaTag := Concat(mEspaco, '<' , Nome, '>');
     if Tipo = 'F' then CriaTag := Concat(mEspaco, '</', Nome, '>');
     if Tipo = 'D' then CriaTag := Concat(mEspaco, '<' , Nome, '>', valor, '</', Nome, '>');
end;

Procedure SalvaComoUTF8(const P_PATH_E_NOME_ARQUIVO:String; P_ARQUIVO_MEMO: TStrings );
const
  cUTF8 = $BFBBEF;
var
  W_TXT: UTF8String;
  fs: TFileStream;
  wBOM: Integer;
begin
    if trim(P_ARQUIVO_MEMO.Text) <> '' then begin
       //se o arquivo estiver vazio, iria gerar uma excessão !!!
       W_TXT := P_ARQUIVO_MEMO.Text;
       fs:= Tfilestream.create( P_PATH_E_NOME_ARQUIVO, fmCreate );
       try
          wBOM := cUTF8;
          //aqui está o "segredo"...
          //inserir o B.O.M. no início do arquivo, antes do texto.
          fs.WriteBUffer( wBOM, sizeof(wBOM)-1);
          //aqui, grava o texto que nos interessa...
          fs.WriteBuffer( W_TXT[1], Length(W_TXT)*Sizeof( W_TXT[1] ));
       finally
          fs.free
       end;
    end;
end;

procedure MontaTreeMenu(mnuMenu: TMenu; treeMenu: TTreeView);
var
  i: integer;
  No: TTreeNode;
  procedure MontaTreeItem(mnuItem: TMenuItem; NoPai: TTreeNode = nil);
  var
    x: integer;
    NoFilho: TTreeNode;
  begin
      for x := 0 to mnuItem.Count - 1 do begin
          if  mnuItem.Items[x].Caption <> '-' then begin
             NoFilho := treeMenu.Items.AddChild(NoPai, stringreplace(mnuItem.Items[x].Caption, '&', '', [rfReplaceAll]));
             NoFilho.ImageIndex := 0;
             if mnuItem.Items[x].Count > 0 then begin
                MontaTreeItem(mnuItem.Items[x], NoFilho);
             end;
          end;
      end;
  end;
begin
     treeMenu.Items.BeginUpdate;
     treeMenu.Items.Clear;
     for i := 0 to mnuMenu.Items.Count - 1 do begin
         if  mnuMenu.Items[i].Caption <> '-' then begin
             No := treeMenu.Items.Add(nil, stringreplace(mnuMenu.Items[i].Caption, '&', '', [rfReplaceAll]));
             treemenu.Items.Item[i].ImageIndex := 0;
             if mnuMenu.Items[i].Count > 0 then begin
                MontaTreeItem(mnuMenu.Items[i], No);
             end;
         end;
     end;
     treeMenu.Items.EndUpdate;
end;

function HexToTColor(sColor : string) : TColor;
begin
   Result :=RGB(
                StrToInt('$'+Copy(sColor, 1, 2)),
                StrToInt('$'+Copy(sColor, 3, 2)),
                StrToInt('$'+Copy(sColor, 5, 2))
               );
end;

// Compara dois campos do mesmo tipo.
function ValidaCampo(Campo:TObject; Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
var
    mCond: boolean;
begin
     mCond := false;
     if Condicao = '='  then mCond := Valor1 =  Valor2;
     if Condicao = '>'  then mCond := Valor1 >  Valor2;
     if Condicao = '<'  then mCond := Valor1 <  Valor2;
     if Condicao = '<>' then mCond := Valor1 <> Valor2;
     if Condicao = '>=' then mCond := Valor1 >= Valor2;
     if Condicao = '<=' then mCond := Valor1 <= Valor2;
     if mCond then begin
        Messagedlg(Titulo+#13+#13+msg, mterror, [mbok], 0);
        MessageBeep(MB_ICONERROR);
        if Campo is TDBLookUpComboBox then TDBLookUpComboBox(Campo).setfocus;
        if Campo is TDBEdit           then TDBEdit(Campo).setfocus;
        if Campo is TDBDateEdit       then TDBDateEdit(Campo).setfocus;
     end;
     ValidaCampo := mCond;
end;

function Existe(Banco:TCustomMSConnection; Tabela, Script: string): boolean;
var
   tTab: TMSQuery;
begin
     tTab := TMSQuery.Create(nil);
     with tTab do begin
          Connection := Banco;
          sql.clear;
          sql.Add('select Existe = isnull(count(*), 0) from '+Tabela+' where '+Script);
          open;
          Existe := fieldbyname('Existe').AsInteger > 0;
     end;
end;

function CodBarrasDARF(pBanco: integer; pVencto: TDate; pValor: Real): string;
var
  Banco, Moeda, DV, FatorVencimento, ValorDocumento, CampoLivre: string;
  CodigoBarras: string;
  Valor: Currency;
begin
  // Exemplo de dados
  Banco          := inttostr(pBanco);
  Moeda          := '9';
  Valor          := 1060.00;

  FatorVencimento := CalcularFatorVencimento(pVencto);
  ValorDocumento  := FormatFloat('000000000000000000', pValor * 100); // Valor em centavos

  // Campo livre pode variar; aqui é um exemplo fictício
  CampoLivre := '0000000000000000000000000';

  // Código de barras sem DV
  CodigoBarras := Banco + Moeda + '0' + FatorVencimento + ValorDocumento + CampoLivre;

  // Calcular o DV
  DV := CalculateDV(CodigoBarras);

  // Inserir o DV no código de barras
  CodBarrasDARF := Banco + Moeda + DV + FatorVencimento + ValorDocumento + CampoLivre;

  // Mostrar o código de barras gerado
//  MemoBarcode.Lines.Text := CodigoBarras;
end;

{
function CalculateFatorVencimento(DateVencimento: TDate): string;
const
  BaseDate: TDate = 25512; // 07/10/1997
begin
  Result := FormatFloat('0000', Trunc(DateVencimento - BaseDate));
end;
}
function CalculateDV(BarcodeWithoutDV: string): string;
var
  I, Sum, Weight: Integer;
  Digit: Char;
begin
  Sum := 0;
  Weight := 2;

  for I := Length(BarcodeWithoutDV) downto 1 do begin
      Digit := BarcodeWithoutDV[I];
      Sum := Sum + (Ord(Digit) - Ord('0')) * Weight;
      if Weight < 9 then
        Inc(Weight)
      else
        Weight := 2;
  end;

  Sum := 11 - (Sum mod 11);
  if (Sum = 0) or (Sum = 10) or (Sum = 11) then Sum := 1;
  Result := Chr(Sum + Ord('0'));
end;

// Verifica se o usuario tem uma permissao especifica.
function Permissao(Opcao: string): boolean;
var
  tUsu: TMSQuery;
begin
     tUsu := TMSQuery.Create(nil);
     with tUsu do begin
          Connection := Dados.Banco;
          sql.Clear;
          sql.Add('select Permitido from UsuariosPermissoes where Matricula = :pUsu and Nome = :pNome');
          parambyname('pUsu').value  := Menu_Principal.mUsuarioCodigo;
          parambyname('pNome').value := Opcao;
          open;
          Permissao := fieldbyname('Permitido').AsBoolean;
     end;
     tusu.Free;
end;

function CalcCRC16Pix(const Payload: string): string;
const
  POLY = $1021;
var
  CRC: Word;
  I, J: Integer;
  C: Byte;
begin
     CRC := $FFFF;
     for I := 1 to Length(Payload) do begin
         C   := Ord(Payload[I]);
         CRC := CRC xor (C shl 8);
         for J := 0 to 7 do begin
             if (CRC and $8000) <> 0 then
                CRC := (CRC shl 1) xor POLY
             else
                CRC := CRC shl 1;
         end;
         CRC := CRC and $FFFF;
     end;
     Result := UpperCase(IntToHex(CRC, 4));
end;

function ConverterQtdEstatistica(const AQtdComercial: Double;const AFatorConversao: Double;out AMsgErro: string): Double;
begin
     Result   := 0;
     AMsgErro := '';
     if AQtdComercial <= 0 then begin
        AMsgErro := 'Quantidade comercial inválida';
        Exit;
     end;
     if AFatorConversao <= 0 then begin
       AMsgErro := 'Fator de conversão inválido';
       Exit;
     end;
     // Receita NÃO aceita valores negativos ou zerados
     Result := AQtdComercial * AFatorConversao;
     // Evita problemas de precisão (padrão DUIMP)
     Result := SimpleRoundTo(Result, -6); // 6 casas decimais
end;




end.

