unit frmImpressao_NotaFiscalServicoReimpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, MSAccess, DBAccess, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl,
  RXCtrls, MaskUtils, Funcoes, Grids, DBGrids, MemDS;

type
  TImpressao_NotaFiscalServicoReimpressao = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    tTabela: TMSTable;
    bTudo: TButton;
    Button1: TButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo      : TextFile;
    mNotaServico : Integer;
    mPagina      : Integer;
    mNomeArq     : String;
    mValor       : String;
    mTipo        : String;
    mMascara     : String;
    mValorExtenso: String;
    mExtensoL1   : String;
    mExtensoL2   : String;
    mExtensoL3   : String;
  end;

var
  Impressao_NotaFiscalServicoReimpressao: TImpressao_NotaFiscalServicoReimpressao;

implementation

uses frmDMFiscal, frmDados, frmNotaFiscal_VisualizarPedido, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_NotaFiscalServicoReimpressao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_NotaFiscalServicoReimpressao.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do Begin
           NotasServico.SQL.Clear;
           NotasServico.SQL.Add('SELECT * FROM NotasServico ORDER BY Data_Emissao DESC, Numero DESC');
           NotasServico.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;
      End;
end;

procedure TImpressao_NotaFiscalServicoReimpressao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_NotaFiscalServicoReimpressao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Impressao_NotaFiscalServicoReimpressao.Release;
     Impressao_NotaFiscalServicoReimpressao := nil;
end;

procedure TImpressao_NotaFiscalServicoReimpressao.bImprimirClick(Sender: TObject);
Var
    mDescricao: String;
    mQtdeLinha: Integer;
    mPosDesc  : Integer;
    i         : Integer;
    mLinha    : Integer;
    mCampo    : String;
begin
    mPagina  := 1;
    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
       mNomeArq := mNomeArq + '_Matriz'
    else
       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
    mNomeArq := mNomeArq+'\Impressao';

    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
    mNomeArq := mNomeArq+'\NFSERVICO'+PoeZero(6,dmFiscal.NotasServicoNumero.Value)+'_FRM'+PoeZero(3,mPagina)+'.TXT';
    mNotaServico := dmFiscal.NotasServicoNumero.Value;
    
    AssignFile(Arquivo, mNomeArq);
    ReWrite(Arquivo);

    LinhaAtual  := 1;
    ColunaAtual := 0;

    With Dados, dmFiscal do Begin
         ImpressaoServico.SQL.Clear;
         ImpressaoServico.SQL.Add('SELECT * FROM ImpressaoServico WHERE (Imprimir = 1) ORDER BY Linha,Coluna');
         ImpressaoServico.Open;
         ImpressaoServico.First;
         mLinha := 0;

         Write(Arquivo, #27#67, Char(ConfiguracaoNotaServico_Tamanho.Value));
         //Write(Arquivo, #27#77#18);  // Pitch 15ppp
         Write(Arquivo, #27#80#18);  // Pitch 15ppp

         While not ImpressaoServico.Eof do Begin
               If ImpressaoServicoTabela.Value <> '' then begin
                  tTabela.Close;
                  If UpperCase(ImpressaoServicoBanco.Value) = 'BANCO_EMPRESAS' then
                     tTabela.Connection := Banco_Empresas;
                  If UpperCase(ImpressaoServicoBanco.Value) = 'BANCO' then
                     tTabela.Connection := Banco;
                  If UpperCase(ImpressaoServicoBanco.Value) = 'BANCO_CONTABILIDADE' then
                     tTabela.Connection := Banco_Contabilidade;

                  tTabela.TableName := ImpressaoServicoTabela.Value;
                  tTabela.Open;
                  If UpperCase(ImpressaoServicoTabela.Value) = 'CLIENTES'             then tTabela.Locate('Codigo', NotasServico.FieldByName(ImpressaoServicoPesquisa.Value).AsInteger ,[loCaseInsensitive]);
                  If UpperCase(ImpressaoServicoTabela.Value) = 'IMPOSTOS'             then tTabela.Locate('Codigo', NotasServico.FieldByName(ImpressaoServicoPesquisa.Value).AsString  ,[loCaseInsensitive]);
                  If UpperCase(ImpressaoServicoTabela.Value) = 'MODALIDADESPAGAMENTO' then tTabela.Locate('Codigo', NotasServico.FieldByName(ImpressaoServicoPesquisa.Value).AsString ,[loCaseInsensitive]);
                  If UpperCase(ImpressaoServicoTabela.Value) = 'NOTASSERVICO'         then tTabela.Locate('Numero', mNotaServico, [loCaseInsensitive]);
               End;

               mValor := ImpressaoServicoValor_Padrao.Value;
               If mValor = '' then begin
                  If ImpressaoServicoPesquisa.Value = '' then
                     mCampo := ImpressaoServicoCampo.Value
                  else
                     mCampo := ImpressaoServicoPesquisa.Value;

                  If (ImpressaoServicoTabela.Value <> '') and (NotasServico.FieldByName(mCampo).AsString <> '') then begin
                     mTipo := UpperCase(ImpressaoServicoTipo.Value);

                     If ImpressaoServicoMascara.Value <> '' then
                        mMascara := ImpressaoServicoMascara.Value
                     else
                        mMascara := '!;0; ';

                     If (mTipo = 'STRING') or (mTipo = 'DATE') then begin
                        If Trim(RemoveCaracter('/', '', tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString)) <> '' then begin
                           mValor := FormatMaskText( mMascara, tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString);
                        End;
                     End;

                     If (mTipo = 'FLOAT') or (mTipo = 'INTEGER') or (mTipo = 'CURRENCY') then begin
                        If tTabela.FieldByName(ImpressaoServicoCampo.Value).AsFloat > 0 then begin
                           mValor := PadR(FormatFloat( mMascara, tTabela.FieldByName(ImpressaoServicoCampo.Value).AsFloat), ImpressaoServicoTamanho.Value);
                        End;
                     End;

                     If (UpperCase(ImpressaoServicoCampo.Value) = 'DESCRICAO_SERVICO') then begin
                        // Remove caracteres de controle como quebra de linha. . .
                        mDescricao := Trim(tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString);
                        mDescricao := RemoveCaracter(#13, '', mDescricao);
                        mDescricao := RemoveCaracter(#12, '', mDescricao);
                        mDescricao := RemoveCaracter(#10, '', mDescricao);
                        If Length(mDescricao) <= ImpressaoServicoTamanho.Value then
                           mQtdeLinha := 1
                        else
                           mQtdeLinha := Round(Length(mDescricao) / ImpressaoServicoTamanho.Value);

                        mPosDesc := 1;
                        mLinha   := ImpressaoServicoLinha.Value;
                        For i := 1 to mQtdeLinha do begin
                            Say( mLinha, ImpressaoServicoColuna.Value, Arquivo, Copy(mDescricao, mPosDesc, ImpressaoServicoTamanho.Value ) );
                            Inc(mPosDesc,ImpressaoServicoTamanho.Value);
                            If i < mQtdeLinha then Inc(mLinha);
                        End;
                     End;
                     If (UpperCase(ImpressaoServicoCampo.Value) = 'OBSERVACAO') then begin
                        // Remove caracteres de controle como quebra de linha. . .
                        mDescricao := Trim(tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString);
                        mDescricao := RemoveCaracter(#13, '', mDescricao);
                        mDescricao := RemoveCaracter(#12, '', mDescricao);
                        mDescricao := RemoveCaracter(#10, '', mDescricao);
                        If Length(mDescricao) <= ImpressaoServicoTamanho.Value then
                           mQtdeLinha := 1
                        else
                           mQtdeLinha := Round(Length(mDescricao) / ImpressaoServicoTamanho.Value);

                        mPosDesc := 1;
                        mLinha   := ImpressaoServicoLinha.Value;
                        For i := 1 to mQtdeLinha do begin
                            Say( mLinha, ImpressaoServicoColuna.Value, Arquivo, Copy(mDescricao, mPosDesc, ImpressaoServicoTamanho.Value ) );
                            Inc(mPosDesc,ImpressaoServicoTamanho.Value);
                            If i < mQtdeLinha then Inc(mLinha);
                        End;
                     End;
                  End else begin
                     If UpperCase(Copy(ImpressaoServicoCampo.Value,1,7)) = 'EXTENSO' then begin
                        mExtensoL1 := Copy(mValorExtenso,1,ImpressaoServicoTamanho.Value);
                        mExtensoL2 := Copy(mValorExtenso,ImpressaoServicoTamanho.Value+1,ImpressaoServicoTamanho.Value);
                        mExtensoL3 := Copy(mValorExtenso,(ImpressaoServicoTamanho.Value*2)+1,ImpressaoServicoTamanho.Value);
                        If UpperCase(ImpressaoServicoCampo.Value) = 'EXTENSO_LINHA01' then mValor := mExtensoL1;
                        If UpperCase(ImpressaoServicoCampo.Value) = 'EXTENSO_LINHA02' then mValor := mExtensoL2;
                        If UpperCase(ImpressaoServicoCampo.Value) = 'EXTENSO_LINHA03' then mValor := mExtensoL3;
                     End;
                  End
               End;
               If UpperCase(ImpressaoServicoCampo.Value) = 'NUMERO' then begin
                  //Say( ImpressaoServicoLinha.Value, ImpressaoServicoColuna.Value, Arquivo, #14#27#69+PoeZero(6,mNotaServico)+#20#27#70 );
                  Say( ImpressaoServicoLinha.Value, ImpressaoServicoColuna.Value, Arquivo, #27#14#18+PoeZero(6,mNotaServico));
                  Write(Arquivo, #27#72);
                  Write(Arquivo, #27#14#15);  // Pitch 15ppp
               end else begin
                  If UpperCase(ImpressaoServicoCampo.Value) <> 'DESCRICAO_SERVICO' then begin
                     If (UpperCase(ImpressaoServicoCampo.Value) = 'VALOR_SERVICO') and (mLinha = 0) then
                        Say( mLinha, ImpressaoServicoColuna.Value, Arquivo,Copy(mValor,1,ImpressaoServicoTamanho.Value) )
                     else
                        Say( ImpressaoServicoLinha.Value, ImpressaoServicoColuna.Value, Arquivo,Copy(mValor,1,ImpressaoServicoTamanho.Value) );
                  end;
               End;
               ImpressaoServico.Next;
         End;

         CloseFile(Arquivo);
         NotaFiscal_VisualizarPedido := TNotaFiscal_VisualizarPedido.Create(Self);
         NotaFiscal_VisualizarPedido.ShowModal;

         // Delete os Registros gerados.
         If FileExists(mNomeArq) then DeleteFile(mNomeArq);
    End;
End;


procedure TImpressao_NotaFiscalServicoReimpressao.Button1Click(Sender: TObject);
const
   IPula   = #13;       //Pula 1 linha
   IEspac1 = #27#48;    //Define espaçamento entre linhas de 1/8"
   IEspac2 = #27#49;    //Define espaçamento entre linhas de 7/72"
   IEspac3 = #27#50;    //Define espaçamento entre linhas de 1/6"
   IEject  = #12;       //Ejeta página
   I80car  = #27#80#18; //Imprime com 80 colunas
   I96car  = #27#77#18; //Imprime com 96 colunas
   I137car = #27#80#15; //Imprime com 137 colunas
   I160car = #27#77#15; //Imprime com 160 colunas
   IDuploG = #27#14#18; //Imprime em caracter grande largura dupla
   IDuploP = #27#14#15; //Imprime em caracter pequeno largura dupla
   IDuploC = #27#20;    //Cancela largura dupla
   INegAti = #27#71;    //Imprime em negrito
   INegDes = #27#72;    //Cancela modo negrito
   IItaAti = #27#52;    //Imprime em Itálico
   IItaDes = #27#53;    //Cancela modo Itálico
var
   F : TextFile; //Variável para impressão
begin
   //Tenta imprimir
     AssignFile(F, '\\CYBERSOFT03\EpsonFX-');
     ReWrite(F);
     WriteLn(F, I80Car+'Impressão em 80 caracteres');
     WriteLn(F, I80Car+INegAti+'Impressão em 80 caracteres NEGRITO');
     WriteLn(F, InegDes+IItaAti+I80Car+'Impressão em 80 caracteres ITÁLICO');
     WriteLn(F, IItaDes+IPula); //Pula uma linha
     WriteLn(F, I96Car+'Impressão em 96 caracteres');
     WriteLn(F, InegAti+I96Car+'Impressão em 96 caracteres NEGRITO');
     WriteLn(F, InegDes+IItaAti+I96Car+'Impressão em 96 caracteres ITÁLICO');
     WriteLn(F, IItaDes+IPula); //Pula uma linha
     WriteLn(F, I137Car+'Impressão em 137 caracteres');
     WriteLn(F, InegAti+I137Car+'Impressão em 137 caracteres NEGRITO');
     WriteLn(F, InegDes+IItaAti+I137Car+'Impressão em 137 caracteres ITÁLICO');
     WriteLn(F, IItaDes+IPula); //Pula uma linha
     WriteLn(F, I160Car+'Impressão em 160 caracteres');
     WriteLn(F, InegAti+I160Car+'Impressão em 160 caracteres NEGRITO');
     WriteLn(F, InegDes+IItaAti+I160Car+'Impressão em 160 caracteres ITÁLICO');
     WriteLn(F, IItaDes+IPula); //Pula uma linha
     WriteLn(F, I80Car+IDuploG+'Impressão em caracter Duplo Grande');
     WriteLn(F, I96Car+IDuploP+'Impressão em caracter Duplo Pequeno');
     WriteLn(F, IDuploC+IPula); //Pula uma linha
     Write(F, IEject); //Ejeta folha
     system.Close(F);
end;

end.
