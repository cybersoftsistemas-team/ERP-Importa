unit frmUtilitarios_ExportaDNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Mask,
   RXCtrls, Funcoes, DateUtils, Shellapi, IniFiles, RxToolEdit, MemDS;

type
  TUtilitarios_ExportaDNF = class(TForm)
    cNCM: TRadioGroup;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    tNotas: TMSQuery;
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    tItens: TMSQuery;
    StaticText3: TStaticText;
    cNomeArquivo: TEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitarios_ExportaDNF: TUtilitarios_ExportaDNF;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitarios_ExportaDNF.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitarios_ExportaDNF.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ExportaDNF.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Salvandos ultimas opções utilizadas no relatório como default.
      aINI := TIniFile.Create ('ImportaRelatorios.ini' );
      aINI.WriteDate   ('DNF', 'DataInicial', cDataIni.Date);
      aINI.WriteDate   ('DNF', 'DataFinal'  , cDataFim.Date);
      aINI.WriteString ('DNF', 'Arquivo'    , cNomeArquivo.Text );
      aINI.WriteInteger('DNF', 'NCM'        , cNCM.ItemIndex );
      aINI.Free;
      
      Utilitarios_ExportaDNF.Release;
      Utilitarios_ExportaDNF := nil;
end;

procedure TUtilitarios_ExportaDNF.bGerarClick(Sender: TObject);
Var
    Arquivo : TextFile;
    mNomeArq: String;
    mLinha  : Integer;
    mTipo0  : Integer;
    mTipo1  : Integer;
begin
     If (Trim(RemoveCaracter('/','',cDataIni.Text)) = '') or (Trim(RemoveCaracter('/','',cDataFim.Text)) = '') then begin
         MessageDlg('Atenção!'+#13+#13+'É necessário informar a data inicial e a data final do período desejado para gerar o arquivo!'+#13+#13+'Pressione OK para continuar.', mtError, [mbOK], 0);
         Abort;
     End;

     Screen.Cursor := crAppStart;

     tNotas.SQL.Clear;
     tNotas.SQL.Add('SELECT DISTINCT ');
     tNotas.SQL.Add('       NotasItens.Nota, ');
     tNotas.SQL.Add('       NotasItens.Data AS Data_Emissao, ');
     tNotas.SQL.Add('       NotasFiscais.Data_EntradaSaida AS Data_Saida, ');
     tNotas.SQL.Add('       CNPJ_Destinatario = ');
     tNotas.SQL.Add('       CASE ');
     tNotas.SQL.Add('           WHEN (SELECT CNPJ FROM Clientes WHERE(Clientes.Codigo = NotasFiscais.Cliente_Codigo)) <> '''' THEN ');
     tNotas.SQL.Add('                (SELECT CNPJ FROM Clientes WHERE(Clientes.Codigo = NotasFiscais.Cliente_Codigo)) ');
     tNotas.SQL.Add('           ELSE ');
     tNotas.SQL.Add('                (SELECT CPF FROM Clientes WHERE(Clientes.Codigo = NotasFiscais.Cliente_Codigo)) ');
     tNotas.SQL.Add('       END, ');
     tNotas.SQL.Add('       (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Cybersoft_Cadastros.dbo.Empresas.Codigo = :pEmpresa)) AS CNPJ_Emitente, ');
     tNotas.SQL.Add('       (SELECT NFEletronica_Serie FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Cybersoft_Cadastros.dbo.Empresas.Codigo = :pEmpresa)) AS Serie ');
     tNotas.SQL.Add('FROM   NCM, NotasItens, NotasFiscais ');
     tNotas.SQL.Add('WHERE  (NotasFiscais.Saida_Entrada = 1) ');
     tNotas.SQL.Add('       AND (NotasItens.Data BETWEEN :pDataIni AND :pDataFim) ');
     tNotas.SQL.Add('       AND (NotasFiscais.Numero = NotasItens.Nota) ');
     tNotas.SQL.Add('       AND (NCM.NCM = NotasItens.NCM) ');
     If cNCM.ItemIndex = 0 then begin
        tNotas.SQL.Add(' AND (NCM.Codigo_DNF IS NOT NULL) ');
     End;
     tNotas.SQL.Add('ORDER BY Nota');
     tNotas.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
     tNotas.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
     tNotas.ParamByName('pEmpresa').AsInteger  := Menu_Principal.mEmpresa;
     tNotas.Open;

     If tNotas.RecordCount > 0 then begin
        mNomeArq := Trim(Dados.ConfiguracaoPasta_Exportacao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
        
        If Dados.EmpresasMatriz_Filial.AsBoolean = true then
           mNomeArq := mNomeArq + '_Matriz'
        else
           mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

        mNomeArq := mNomeArq + '\DNF';
        If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
        If Pos('.txt', mNomeArq) > 0 then
           mNomeArq := mNomeArq+'\'+cNomeArquivo.Text
        else
           mNomeArq := mNomeArq+'\'+cNomeArquivo.Text+'.txt';

        If FileExists(mNomeArq) then DeleteFile(mNomeArq);
        AssignFile(Arquivo, mNomeArq);
        ReWrite(Arquivo);

        tItens.SQL.Clear;
        tItens.SQL.Add('SELECT DISTINCT ');
        tItens.SQL.Add('       NotasItens.Nota, ');
        tItens.SQL.Add('       NCM.NCM, ');
        tItens.SQL.Add('       NotasItens.Data AS Data_Emissao, ');
        tItens.SQL.Add('       NotasFiscais.Data_EntradaSaida AS Data_Saida, ');
        tItens.SQL.Add('       CNPJ_Destinatario = ');
        tItens.SQL.Add('       CASE ');
        tItens.SQL.Add('           WHEN (SELECT CNPJ FROM Clientes WHERE(Clientes.Codigo = NotasFiscais.Cliente_Codigo)) <> '''' THEN ');
        tItens.SQL.Add('                (SELECT CNPJ FROM Clientes WHERE(Clientes.Codigo = NotasFiscais.Cliente_Codigo)) ');
        tItens.SQL.Add('           ELSE ');
        tItens.SQL.Add('                (SELECT CPF FROM Clientes WHERE(Clientes.Codigo = NotasFiscais.Cliente_Codigo)) ');
        tItens.SQL.Add('       END, ');
        tItens.SQL.Add('       (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Cybersoft_Cadastros.dbo.Empresas.Codigo = :pEmpresa)) AS CNPJ_Emitente, ');
        tItens.SQL.Add('       (SELECT NFEletronica_Serie FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Cybersoft_Cadastros.dbo.Empresas.Codigo = :pEmpresa)) AS Serie, ');
        tItens.SQL.Add('       NCM.Codigo_DNF, ');
        tItens.SQL.Add('       NCM.CapacidadeVol_DNF, ');
        tItens.SQL.Add('       NCM.FatorConv_DNF, ');
        tItens.SQL.Add('       NotasFiscais.Natureza_Codigo AS CFOP, ');
        tItens.SQL.Add('       NotasItens.Unidade_Medida, ');
        tItens.SQL.Add('       NotasItens.Codigo_Mercadoria, ');
        tItens.SQL.Add('       Item, ');
        tItens.SQL.Add('       Quantidade, ');
        tItens.SQL.Add('       NotasItens.Valor_Unitario, ');
        tItens.SQL.Add('       NotasItens.Valor_Total, ');
        tItens.SQL.Add('       NotasItens.Aliquota_IPI, ');
        tItens.SQL.Add('       (SELECT Valor_IPI FROM Produtos WHERE(Produtos.Codigo = NotasItens.Codigo_Mercadoria)) AS Valor_IPI');
        tItens.SQL.Add('FROM   NCM, NotasItens, NotasFiscais ');
        tItens.SQL.Add('WHERE  (NotasFiscais.Saida_Entrada = 1) ');
        tItens.SQL.Add('       AND (NotasItens.Data BETWEEN :pDataIni AND :pDataFim) ');
        tItens.SQL.Add('       AND (NotasFiscais.Numero = NotasItens.Nota) ');
        tItens.SQL.Add('       AND (NCM.NCM = NotasItens.NCM) ');
        If cNCM.ItemIndex = 0 then begin
           tItens.SQL.Add(' AND (NCM.Codigo_DNF IS NOT NULL) ');
        End;
        tItens.SQL.Add('ORDER  BY Nota, NCM.NCM, Item ');
        tItens.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
        tItens.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
        tItens.ParamByName('pEmpresa').AsInteger  := Menu_Principal.mEmpresa;
        tItens.Open;

        LinhaAtual  := 0;
        ColunaAtual := 0;
        mLinha      := 0;
        mTipo0      := 0;
        mTipo1      := 0;

        Janela_Processamento := TJanela_Processamento.Create(Self);
        Janela_Processamento.Progresso.Position := 0;
        Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
        Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo da DNF...';
        Janela_Processamento.Show;

        While not tNotas.Eof do begin
              // Registro 0 - Notas Fiscais.
              Say( mLinha, 000, Arquivo, '0' );                                                                   // 01 - Registro.
              Say( mLinha, 001, Arquivo, PoeZero(4, YearOf(cDataIni.Date))+PoeZero(2, MonthOf(cDataIni.Date)) );  // 02 - Ano / Mês de referência.
              Say( mLinha, 007, Arquivo, tNotas.FieldByName('CNPJ_Emitente').AsString);                           // 03 - CNPJ do Emitente.
              Say( mLinha, 021, Arquivo, PoeZero(9, tNotas.FieldByName('Nota').AsInteger) );                      // 04 - Numero da nota fiscal.
              Say( mLinha, 030, Arquivo, PoeZero(3,tNotas.FieldByName('Serie').AsInteger));                       // 05 - Série da nota fiscal.
              Say( mLinha, 033, Arquivo, RemoveCaracter('/', '', tNotas.FieldByName('Data_Emissao').AsString));   // 06 - Data da Nota Fiscal.
              Say( mLinha, 041, Arquivo, RemoveCaracter('/', '', tNotas.FieldByName('Data_Saida').AsString));     // 07 - Data de Saída da Nota Fiscal.
              Say( mLinha, 049, Arquivo, tNotas.FieldByName('CNPJ_Destinatario').AsString);                       // 08 - CNPJ do Destinatario.
              Inc(mLinha);

              // Registro 1 - Itens das Notas Fiscais.
              While (tItens.FieldByName('Nota').AsInteger = tNotas.FieldByName('Nota').AsInteger) and (not tItens.Eof) do begin
                    Say( mLinha, 000, Arquivo, '1' );                                                                                                   // 01 - Registro.
                    Say( mLinha, 001, Arquivo, PoeZero(4, YearOf(cDataIni.Date))+PoeZero(2, MonthOf(cDataIni.Date)) );                                  // 02 - Ano / Mês de referência.
                    Say( mLinha, 007, Arquivo, tItens.FieldByName('CNPJ_Emitente').AsString);                                                           // 03 - CNPJ do Emitente.
                    Say( mLinha, 021, Arquivo, PoeZero(9, tItens.FieldByName('Nota').AsInteger) );                                                      // 04 - Numero da nota fiscal.
                    Say( mLinha, 030, Arquivo, PoeZero(3, tItens.FieldByName('Serie').AsInteger) );                                                     // 05 - Série da nota fiscal.
                    Say( mLinha, 033, Arquivo, RemoveCaracter('/', '', tItens.FieldByName('Data_Emissao').AsString));                                   // 06 - Data da Nota Fiscal.
                    Say( mLinha, 041, Arquivo, PoeZero(3, tItens.FieldByName('Item').AsInteger) );                                                      // 07 - Número de ordem do item na nota fiscal.
                    Say( mLinha, 044, Arquivo, tItens.FieldByName('Codigo_DNF').AsString );                                                             // 08 - Código do produto.
                    Say( mLinha, 047, Arquivo, RemoveCaracter(',','',FormatFloat('00.000', tItens.FieldByName('CapacidadeVol_DNF').AsFloat)));          // 09 - Capacidade volumetrica.
                    Say( mLinha, 052, Arquivo, tItens.FieldByName('CFOP').AsString);                                                                    // 10 - CFOP.
                    Say( mLinha, 056, Arquivo, tItens.FieldByName('Unidade_Medida').AsString);                                                          // 11 - Unidade de medida.
                    Say( mLinha, 086, Arquivo, RemoveCaracter(',','',FormatFloat('00000000000.000', tItens.FieldByName('Quantidade').AsFloat)));        // 12 - Quantidade.
                    Say( mLinha, 100, Arquivo, RemoveCaracter(',','',FormatFloat('0000000000.000000', tItens.FieldByName('Valor_Unitario').AsFloat)));  // 13 - Valor unitario do item.
                    Say( mLinha, 116, Arquivo, RemoveCaracter(',','',FormatFloat('000000000000.00', tItens.FieldByName('Valor_Total').AsFloat)));       // 14 - Valor total do item.
                    If tItens.FieldByName('Aliquota_IPI').AsFloat <> 0 then
                       Say( mLinha, 130, Arquivo, RemoveCaracter(',','',FormatFloat('0000.00', tItens.FieldByName('Aliquota_IPI').AsFloat)))            // 15 - Aliquota / Valor IPI.
                    else
                       Say( mLinha, 130, Arquivo, RemoveCaracter(',','',FormatFloat('0000.00', tItens.FieldByName('Valor_IPI').AsFloat)));
                    Say( mLinha, 136, Arquivo, RemoveCaracter(',','',FormatFloat('00000000000.000', tItens.FieldByName('FatorConv_DNF').AsFloat)));     // 16 - Quantidade na unidade.

                    Inc(mLinha);
                    Inc(mTipo1);
                    tItens.Next;
              End;

              Inc(mTipo0);
              Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
              Application.ProcessMessages;
              tNotas.Next;
        End;

        // Registro 0 - Notas Fiscais.
        Say( mLinha, 000, Arquivo, '9' );                 // 01 - Registro.
        Say( mLinha, 001, Arquivo, PoeZero(7, mTipo0) );  // 02 - Quantidade de registros do tipo "0".
        Say( mLinha, 008, Arquivo, PoeZero(7, mTipo1) );  // 03 - Quantidade de registros do tipo "1".
        Say( mLinha, 015, Arquivo, '0000001' );           // 04 - Número do volume.
        Say( mLinha, 022, Arquivo, '0000001' );           // 05 - Quantidade do volume.

        CloseFile(Arquivo);
        Janela_Processamento.Close;
        
        ShellExecute(Handle, 'Open', PChar(mNomeArq), '', Nil, SW_SHOWMAXIMIZED );
     end else begin
        ShowMessage('Não há informações para o período solicitado!');
     End;
     Screen.Cursor := crDefault;
end;

procedure TUtilitarios_ExportaDNF.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date     := aINI.ReadDate   ('DNF', 'DataInicial', Date );
      cDataFim.Date     := aINI.ReadDate   ('DNF', 'DataFinal'  , Date );
      cNomeArquivo.Text := aINI.ReadString ('DNF', 'Arquivo'    , 'DNFNF' );
      cNCM.ItemIndex    := aINI.ReadInteger('DNF', 'NCM'        , 0 );
      aINI.Free;
end;

end.
