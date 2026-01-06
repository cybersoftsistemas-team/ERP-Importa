unit frmUtilitario_ImportarTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Buttons,
  Mask, DBCtrls, Vcl.ComCtrls, Funcoes, RXDBCtrl, DB, DBAccess, MSAccess, INIFiles,
   Grids, DBGrids, RxToolEdit, MemDS;

type
  TUtilitario_ImportarTexto = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    bEstoque: TSpeedButton;
    bNotasEntrada: TSpeedButton;
    PageControl1: TPageControl;
    AbaEstoque: TTabSheet;
    AbaNotas: TTabSheet;
    GradeNotasItens: TRxDBGrid;
    bNotasSaida: TSpeedButton;
    AbrirArquivo: TOpenDialog;
    AbaClientes: TTabSheet;
    bParticipante: TSpeedButton;
    GradeClientes: TRxDBGrid;
    NotasTemp: TMSQuery;
    dsNotasTemp: TDataSource;
    NotasTempItens: TMSQuery;
    dsNotasTempItens: TDataSource;
    ClientesTemp: TMSQuery;
    dsClientesTemp: TDataSource;
    FornecedoresTemp: TMSQuery;
    dsFornecedoresTemp: TDataSource;
    GradeNotas: TRxDBGrid;
    AbaFornecedores: TTabSheet;
    GradeFornecedores: TRxDBGrid;
    cParticipanteMai: TCheckBox;
    tCodigo: TMSQuery;
    bCarregar: TButton;
    EstoqueTemp: TMSQuery;
    dsEstoqueTemp: TDataSource;
    GradeEstoque: TRxDBGrid;
    ProdutosTemp: TMSQuery;
    dsProdutosTemp: TDataSource;
    AbaProdutos: TTabSheet;
    GradeProdutos: TRxDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    AbaInventario: TTabSheet;
    GradeInventario: TRxDBGrid;
    InventarioTemp: TMSQuery;
    dsInventarioTemp: TDataSource;
    bInventario: TSpeedButton;
    StaticText8: TStaticText;
    cProdutos: TEdit;
    bProdutos: TSpeedButton;
    AbaErros: TTabSheet;
    MemoErros: TMemo;
    tEstoque: TMSQuery;
    AbaAvisos: TTabSheet;
    MemoAvisos: TMemo;
    StaticText11: TStaticText;
    cDataEmissao: TDateEdit;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cEstoque: TEdit;
    cNotasEntrada: TEdit;
    cNotasSaida: TEdit;
    StaticText4: TStaticText;
    cParticipante: TEdit;
    StaticText5: TStaticText;
    cItensEntrada: TEdit;
    StaticText6: TStaticText;
    cItensSaida: TEdit;
    StaticText7: TStaticText;
    cInventario: TEdit;
    StaticText12: TStaticText;
    cTipoNota: TEdit;
    cModificar: TCheckBox;
    StaticText9: TStaticText;
    cReferencia: TEdit;
    tQtde: TMSQuery;
    cImpProdutos: TCheckBox;
    cImpEstoque: TCheckBox;
    Inventario: TCheckBox;
    cImpNotas: TCheckBox;
    cImpCliFor: TCheckBox;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bEstoqueClick(Sender: TObject);
    procedure bNotasSaidaClick(Sender: TObject);
    procedure bCarregarClick(Sender: TObject);
    procedure ImportaProdutos;
    procedure ImportaEstoque;
    procedure ImportaFornecedores;
    procedure ImportaClientes;
    procedure ImportaInventario;
    procedure ImportaNotas;
    procedure ImportaItensNotas;
    procedure bNotasEntradaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bParticipanteClick(Sender: TObject);
    procedure bInventarioClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NotasTempAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AtualizaParticipante;
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha       : WideString;
    mNotaEstoque : String;
    mDataEstoque : String;
    mErros       : Integer;
    mAvisos      : Integer;
    mData        : String;
    Arq          : TextFile;
    i            : Integer;
    mInscricao   : String;
    mNotas       : Integer;
    mItensEntrada: Integer;
    mItensSaida  : Integer;
    mCodigo      : Integer;
    mAchou       : Boolean;
    mCarregando  : Boolean;
    mTamanho     : Integer;
    SR           : TSearchRec;
    mProcesso    : String;
    mTipoNota    : String;
    mItem        : Integer;
  end;

var
  Utilitario_ImportarTexto: TUtilitario_ImportarTexto;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TUtilitario_ImportarTexto.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitario_ImportarTexto.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitario_ImportarTexto.bEstoqueClick(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cEstoque.Text := AbrirArquivo.FileName;
         cEstoque.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.bNotasSaidaClick(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cNotasSaida.Text := AbrirArquivo.FileName;
         cNotasSaida.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.ImportaProdutos;
begin
      ProdutosTemp.SQL.Clear;
      ProdutosTemp.SQL.Add('TRUNCATE TABLE ProdutosTemp');
      ProdutosTemp.SQL.Add('SELECT * FROM ProdutosTemp');
      ProdutosTemp.Open;
      PageControl1.Pages[0].Caption := '&Produtos [0]';

      If Trim(cProdutos.Text) <> '' then begin
         AssignFile(Arq, cProdutos.Text);
         Reset(Arq);

         FindFirst(cProdutos.Text, 0, SR);
         mTamanho := SR.Size;
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.Position           := poDesigned;
         Janela_Processamento.Top                := 450;
         Janela_Processamento.Progresso.Max      := Round(mTamanho/405);
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.lProcesso.Caption  := 'Carregando os Produtos do arquivo texto...'+InttoStr(Round(mTamanho/405));
         Janela_Processamento.Show;
         cProdutos.Color := $008080FF;
         cProdutos.SetFocus;

         tCodigo.SQL.Clear;
         tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Produtos');
         tCodigo.Open;
         mCodigo := tCodigo.FieldByName('Codigo').AsInteger + 1;
         i := 0;

         While not Eof(Arq) and (not Funcoes.Cancelado) do begin
               ReadLn(Arq, mLinha);

               ProdutosTemp.Append;
                            ProdutosTemp.FieldByName('Codigo').Value              := mCodigo;
                            ProdutosTemp.FieldByName('Codigo_Fabricante').Value   := Trim(Copy(mLinha, 1, 20));
                            ProdutosTemp.FieldByName('Tipo_Item').Value           := Trim(Copy(mLinha, 329, 2));
                            ProdutosTemp.FieldByName('Unidade').Value             := Trim(Copy(mLinha, 103, 3));
                            ProdutosTemp.FieldByName('Quantidade_Unidade').Value  := 1;
                            ProdutosTemp.FieldByName('NCM').Value                 := Trim(Copy(mLinha, 106, 10));
                            ProdutosTemp.FieldByName('Estoque_Disponivel').Value  := 0;
                            ProdutosTemp.FieldByName('Estoque_Terceiros').Value   := 0;
                            ProdutosTemp.FieldByName('Peso_Liquido').Value        := 0;
                            ProdutosTemp.FieldByName('Peso_Bruto').Value          := 0;
                            ProdutosTemp.FieldByName('Descricao').Value           := Trim(Copy(mLinha, 21, 80));
                            ProdutosTemp.FieldByName('Descricao_Reduzida').Value  := Trim(Copy(mLinha, 21, 60));
                            ProdutosTemp.FieldByName('Aliquota_IPI').Value        := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 142, 5)));
                            ProdutosTemp.FieldByName('Aliquota_II').Value         := 0;
                            ProdutosTemp.FieldByName('Aliquota_PIS').Value        := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 227, 5)));
                            ProdutosTemp.FieldByName('Aliquota_COFINS').Value     := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 232, 5)));
                            ProdutosTemp.FieldByName('Veiculo').Value             := false;
                            ProdutosTemp.FieldByName('Lancado_Pedidos').Value     := 0;
               ProdutosTemp.Post;

               Inc(mCodigo);
               Inc(i);

               Janela_Processamento.Progresso.Position := i;
               Application.ProcessMessages;
         End;
         CloseFile(Arq);
         Janela_Processamento.Close;
      End;
      PageControl1.ActivePageIndex := 0;
      PageControl1.Pages[0].Caption := '&Produtos ['+InttoStr(i)+']';

      ProdutosTemp.SQL.Clear;
      ProdutosTemp.SQL.Add('SELECT * FROM ProdutosTemp ORDER BY Codigo');
      ProdutosTemp.Open;
      ProdutosTemp.EnableControls;

      If ProdutosTemp.RecordCount = 0 then begin
         Inc(mErros);
         MemoErros.Lines.Add('Nenhum produto encontrado...');
      End;
end;

procedure TUtilitario_ImportarTexto.ImportaFornecedores;
begin

      FornecedoresTemp.SQL.Clear;
      FornecedoresTemp.SQL.Add('TRUNCATE TABLE FornecedoresTemp');
      FornecedoresTemp.SQL.Add('SELECT * FROM FornecedoresTemp ORDER BY CNPJ');
      FornecedoresTemp.Open;

      PageControl1.Pages[4].Caption := '&Fornecedores [0]';

      If Trim(cParticipante.Text) <> '' then begin

         AssignFile(Arq, cParticipante.Text);
         Reset(Arq);

         FindFirst(cParticipante.Text, 0, SR);
         mTamanho := SR.Size;
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.Position           := poDesigned;
         Janela_Processamento.Top                := 450;
         Janela_Processamento.Progresso.Max      := Round(mTamanho/615);
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.lProcesso.Caption  := 'Carregando os Fornecedores do arquivo texto...'+InttoStr(Round(mTamanho/615));
         Janela_Processamento.Show;
         cParticipante.Color := $008080FF;

         tCodigo.SQL.Clear;
         tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Fornecedores');
         tCodigo.Open;
         mCodigo := tCodigo.FieldByName('Codigo').AsInteger + 1;

         i := 1;

         While not Eof(Arq) and (not Funcoes.Cancelado) do begin
               ReadLn(Arq, mLinha);

               If NotasTemp.Locate('CNPJ_Participante; Saida_Entrada', VarArrayOf([Copy(mLinha, 12, 14), 0]), [loCaseInsensitive]) = true then begin
                  FornecedoresTemp.Append;
                                   FornecedoresTemp.FieldByName('Codigo').Value := mCodigo;
                                   If cParticipanteMai.Checked = false then begin
                                      FornecedoresTemp.FieldByName('Nome').Value          := Trim(Copy(mLinha,  26, 60));
                                      FornecedoresTemp.FieldByName('Nome_Fantasia').Value := Trim(Copy(mLinha,  86, 20));
                                   end else begin
                                      FornecedoresTemp.FieldByName('Nome').Value          := UpperCase(Trim(Copy(mLinha,  26, 60)));
                                      FornecedoresTemp.FieldByName('Nome_Fantasia').Value := UpperCase(Trim(Copy(mLinha,  86, 20)));
                                   End;

                                   FornecedoresTemp.FieldByName('Rua').Value         := Trim(Copy(mLinha, 116, 60));
                                   FornecedoresTemp.FieldByName('Rua_Numero').Value  := Trim(Copy(mLinha, 176, 10));
                                   FornecedoresTemp.FieldByName('Complemento').Value := Trim(Copy(mLinha, 186, 20));
                                   FornecedoresTemp.FieldByName('Bairro').Value      := Trim(Copy(mLinha, 215, 30));

                                   If Trim(Copy(mLinha, 604, 10)) <> '' then
                                      FornecedoresTemp.FieldByName('Municipio_Codigo').Value := Trim(Copy(mLinha, 604, 10));

                                   FornecedoresTemp.FieldByName('Municipio').Value := Trim(Copy(mLinha, 245, 30));
                                   FornecedoresTemp.FieldByName('Estado').Value    := Trim(Copy(mLinha, 275, 02));

                                   If Trim(Copy(mLinha, 509, 04)) <> '' then
                                      FornecedoresTemp.FieldByName('Pais').Value := StrtoInt(Trim(Copy(mLinha, 509, 04)));

                                   FornecedoresTemp.FieldByName('CEP').Value       := Copy(mLinha, 206, 05)+Copy(mLinha, 212, 3);
                                   FornecedoresTemp.FieldByName('Telefone1').Value := Trim(Copy(mLinha, 285, 5))+Trim(Copy(mLinha, 290,10));
                                   FornecedoresTemp.FieldByName('Telefone2').Value := '';
                                   FornecedoresTemp.FieldByName('FAX').Value       := Trim(Copy(mLinha, 300, 5))+Trim(Copy(mLinha, 305,10));
                                   If (Copy(mLinha, 11, 1) = '0') or (Copy(mLinha, 11, 1) = '2') then
                                      FornecedoresTemp.FieldByName('CNPJ').Value := Trim(Copy(mLinha, 12, 14))
                                   else begin
                                      FornecedoresTemp.FieldByName('CPF').Value  := Trim(Copy(mLinha, 12, 14));
                                      FornecedoresTemp.FieldByName('RG').Value   := Trim(Copy(mLinha, 475, 18));
                                   End;
                                   mInscricao := Trim(Copy(mLinha, 425, 20));
                                   mInscricao := RemoveCaracter('.', '', mInscricao);
                                   mInscricao := RemoveCaracter('-', '', mInscricao);
                                   mInscricao := RemoveCaracter('/', '', mInscricao);

                                   FornecedoresTemp.FieldByName('Inscricao_Estadual').Value  := mInscricao;
                                   FornecedoresTemp.FieldByName('Isento').Value              := Trim(mInscricao) = '';
                                   FornecedoresTemp.FieldByName('Inscricao_Municipal').Value := Trim(Copy(mLinha, 445, 20));
                                   FornecedoresTemp.FieldByName('Email').Value               := Trim(Copy(mLinha, 315, 50));
                                   FornecedoresTemp.FieldByName('Site').Value                := Trim(Copy(mLinha, 365, 60));
                                   FornecedoresTemp.FieldByName('Nota').Value                := NotasTemp.FieldByName('Numero').AsInteger;
                  FornecedoresTemp.Post;
                  Inc(i);
                  Inc(mCodigo);

                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                  Application.ProcessMessages;
               End
         End;
         PageControl1.Pages[4].Caption := '&Fornecedores ['+InttoStr(i)+']';
         CloseFile(Arq);
      End;
      Janela_Processamento.Close;

      FornecedoresTemp.SQL.Clear;
      FornecedoresTemp.SQL.Add('SELECT * FROM FornecedoresTemp ORDER BY Codigo');
      FornecedoresTemp.Open;
      FornecedoresTemp.EnableControls;

      If (FornecedoresTemp.RecordCount = 0) and (ClientesTemp.RecordCount = 0) then begin
         Inc(mErros);
         MemoErros.Lines.Add('Nenhum Cliente encontrado...');
         MemoErros.Lines.Add('Nenhum Fornecedor encontrado...');
      End;
      PageControl1.ActivePageIndex := 4;
end;

procedure TUtilitario_ImportarTexto.ImportaClientes;
begin
      ClientesTemp.SQL.Clear;
      ClientesTemp.SQL.Add('TRUNCATE TABLE ClientesTemp');
      ClientesTemp.SQL.Add('SELECT * FROM ClientesTemp');
      ClientesTemp.Open;
      PageControl1.Pages[3].Caption := '&Clientes [0]';

      If Trim(cParticipante.Text) <> '' then begin

         AssignFile(Arq, cParticipante.Text);
         Reset(Arq);

         FindFirst(cParticipante.Text, 0, SR);
         mTamanho := SR.Size;
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.Position           := poDesigned;
         Janela_Processamento.Top                := 450;
         Janela_Processamento.Progresso.Max      := Round(mTamanho/615);
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.lProcesso.Caption  := 'Carregando os Clientes do arquivo texto...'+InttoStr(Round(mTamanho/615));
         Janela_Processamento.Show;
         cParticipante.Color := $008080FF;

         i := 1;
         tCodigo.SQL.Clear;
         tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');
         tCodigo.Open;
         mCodigo := tCodigo.FieldByName('Codigo').AsInteger + 1;

         While not Eof(Arq) and (not Funcoes.Cancelado) do begin
               ReadLn(Arq, mLinha);

               If NotasTemp.Locate('CNPJ_Participante; Saida_Entrada', VarArrayOf([Copy(mLinha, 12, 14), 1]), [loCaseInsensitive]) = true then begin
                  ClientesTemp.Append;
                               ClientesTemp.FieldByName('Codigo').Value := mCodigo;
                               If cParticipanteMai.Checked = false then begin
                                  ClientesTemp.FieldByName('Nome').Value := Trim(Copy(mLinha,  26, 60));
                               end else begin
                                  ClientesTemp.FieldByName('Nome').Value := UpperCase(Trim(Copy(mLinha,  26, 60)));
                               End;

                               ClientesTemp.FieldByName('Rua').Value           := Trim(Copy(mLinha, 116, 60));
                               ClientesTemp.FieldByName('Rua_Numero').Value    := Trim(Copy(mLinha, 176, 10));
                               ClientesTemp.FieldByName('Complemento').Value   := Trim(Copy(mLinha, 186, 20));
                               ClientesTemp.FieldByName('Bairro').Value        := Trim(Copy(mLinha, 215, 30));

                               If Trim(Copy(mLinha, 604, 10)) <> '' then
                                  ClientesTemp.FieldByName('Municipio_Codigo').Value := Trim(Copy(mLinha, 604, 10));

                               ClientesTemp.FieldByName('Municipio').Value        := Trim(Copy(mLinha, 245, 30));
                               ClientesTemp.FieldByName('Municipio_Codigo').Value := Trim(Copy(mLinha, 513, 05));
                               ClientesTemp.FieldByName('Estado').Value           := Trim(Copy(mLinha, 275, 02));

                               If Trim(Copy(mLinha, 509, 04)) <> '' then
                                  ClientesTemp.FieldByName('Pais').Value := StrtoInt(Trim(Copy(mLinha, 509, 04)));

                               ClientesTemp.FieldByName('CEP').Value       := Copy(mLinha, 206, 05)+Copy(mLinha, 212, 3);
                               ClientesTemp.FieldByName('Telefone1').Value := Trim(Copy(mLinha, 285, 5))+Trim(Copy(mLinha, 290,10));
                               ClientesTemp.FieldByName('Telefone2').Value := '';
                               ClientesTemp.FieldByName('FAX').Value       := Trim(Copy(mLinha, 300, 5))+Trim(Copy(mLinha, 305,10));
                               If (Copy(mLinha, 11, 1) = '0') or (Copy(mLinha, 11, 1) = '2') then
                                  ClientesTemp.FieldByName('CNPJ').Value := Trim(Copy(mLinha, 12, 14))
                               else begin
                                  ClientesTemp.FieldByName('CPF').Value  := Trim(Copy(mLinha, 12, 14));
                                  ClientesTemp.FieldByName('RG').Value   := Trim(Copy(mLinha, 475, 18));
                               End;
                               mInscricao := Trim(Copy(mLinha, 425, 20));
                               mInscricao := RemoveCaracter('.', '', mInscricao);
                               mInscricao := RemoveCaracter('-', '', mInscricao);
                               mInscricao := RemoveCaracter('/', '', mInscricao);

                               ClientesTemp.FieldByName('Inscricao_Estadual').Value  := mInscricao;
                               ClientesTemp.FieldByName('Isento').Value              := Trim(mInscricao) = '';
                               ClientesTemp.FieldByName('Inscricao_Municipal').Value := Trim(Copy(mLinha, 445, 20));
                               ClientesTemp.FieldByName('Email').Value               := Trim(Copy(mLinha, 315, 50));
                               ClientesTemp.FieldByName('Site').Value                := Trim(Copy(mLinha, 365, 60));
                               ClientesTemp.FieldByName('Nota').Value                := NotasTemp.FieldByName('Numero').AsInteger;
                  ClientesTemp.Post;

                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                  Application.ProcessMessages;
                  Inc(i);
                  Inc(mCodigo);
               End;
         End;
         PageControl1.Pages[3].Caption := '&Clientes ['+InttoStr(i)+']';
         CloseFile(Arq);
      End;
      Janela_Processamento.Close;

      ClientesTemp.SQL.Clear;
      ClientesTemp.SQL.Add('SELECT * FROM ClientesTemp ORDER BY Codigo');
      ClientesTemp.Open;
      ClientesTemp.EnableControls;
      PageControl1.ActivePageIndex := 3;
end;

procedure TUtilitario_ImportarTexto.ImportaNotas;
begin
        NotasTemp.SQL.Clear;
        NotasTemp.SQL.Add('TRUNCATE TABLE NotasTemp');
        NotasTemp.SQL.Add('SELECT * FROM NotasTemp ORDER BY Data_Emissao, Numero');
        NotasTemp.Open;
        PageControl1.Pages[5].Caption := '&Notas Fiscais [0] / Itens Entrada [0] Saídas [0]';

        Janela_Processamento                    := TJanela_Processamento.Create(Self);
        Janela_Processamento.Position           := poDesigned;
        Janela_Processamento.Top                := 450;
        Janela_Processamento.Progresso.Max      := Round(mTamanho/1091);
        Janela_Processamento.Progresso.Position := 0;
        Janela_Processamento.lProcesso.Caption  := 'Carregando as Notas fiscais de Entrada do arquivo texto...'+InttoStr(Round(mTamanho/1091));
        Janela_Processamento.Show;
        cNotasEntrada.Color := $008080FF;

        If Trim(cNotasEntrada.Text) <> '' then begin
           // Importação das notas fiscais de entrada.
           AssignFile(Arq, cNotasEntrada.Text );
           Reset(Arq);

           FindFirst(cNotasEntrada.Text, 0, SR);
           mTamanho := SR.Size;

           mNotas := 0;
           While not Eof(Arq) and (not Funcoes.Cancelado) do begin
                 ReadLn(Arq, mLinha);
                 NotasTemp.Append;
                           NotasTemp.FieldByName('Linha').Value             := mNotas+1;
                           NotasTemp.FieldByName('CNPJ').Value              := Copy(mLinha, 979, 14);
                           NotasTemp.FieldByName('CNPJ_Participante').Value := Copy(mLinha, 5, 14);
                           NotasTemp.FieldByName('Numero').Value            := StrtoInt(Copy(mLinha,  31, 6));
                           NotasTemp.FieldByName('Pedido').Value            := 0;
                           NotasTemp.FieldByName('Saida_Entrada').Value     := 0;

                           If Trim(RemoveCaracter('/', '', cDataEmissao.Text)) = '' then begin
                              mData := Copy(mLinha, 25, 6);
                              Insert( '/', mData, 3 );
                              Insert( '/', mData, 6 );
                           end else begin
                              mData := cDataEmissao.Text;
                           End;

                           NotasTemp.FieldByName('Data_Emissao').Value := StrtoDate(mData);

                           If Trim(RemoveCaracter('/', '', cDataEmissao.Text)) = '' then begin
                              mData := Copy(mLinha, 19, 6);
                              Insert( '/', mData, 3 );
                              Insert( '/', mData, 6 );
                           end else begin
                              mData := cDataEmissao.Text;
                           End;

                           NotasTemp.FieldByName('Data_EntradaSaida').Value := StrtoDate(mData);

                           If Pos(Copy(mLinha,624,4), cTipoNota.Text) > 0 then begin
                              mTipoNota := RemoveCaracter(',', '', Copy(cTipoNota.Text, Pos(Copy(mLinha,624,4), cTipoNota.Text)+5, 2));
                              NotasTemp.FieldByName('Tipo_Nota').Value := StrtoInt(mTipoNota);
                           end else begin
                              If Pos(Copy(mLinha,624,4), cReferencia.Text) > 0 then begin
                                 mTipoNota := RemoveCaracter(',', '', Copy(cReferencia.Text, Pos(Copy(mLinha,624,4), cReferencia.Text)+5, 2));
                                 NotasTemp.FieldByName('Tipo_Nota').Value := StrtoInt(mTipoNota);
                              end else begin
                                 MemoAvisos.Lines.Add('Tipo de Nota da Nota Fiscal :'+PoeZero(6, NotasTemp.FieldByName('Numero').AsInteger) +' não encontrado devido a falta de CFOP '+Copy(mLinha,624,4));
                                 Inc(mAvisos);
                              End;
                           End;

                           If Trim(Copy(mLinha, 973, 44)) <> '' then NotasTemp.FieldByName('Modelo').Value := 55;
                           
                           NotasTemp.FieldByName('Tipo').Value                  := Copy(mLinha, 37, 3);
                           NotasTemp.FieldByName('Serie').Value                 := Copy(mLinha, 4, 3);
                           NotasTemp.FieldByName('Natureza_Codigo').Value       := Copy(mLinha, 624, 4);
                           NotasTemp.FieldByName('Inf_Complementares').Value    := Copy(mLinha, 285, 110);
                           NotasTemp.FieldByName('Estado').AsString             := Copy(mLinha, 273, 2);
                           NotasTemp.FieldByName('Cliente_Codigo').Value        := 0;
                           NotasTemp.FieldByName('Fornecedor_Codigo').Value     := 0;
                           NotasTemp.FieldByName('Transportador_Codigo').Value  := 0;
                           NotasTemp.FieldByName('Valor_PIS').Value             := 0;
                           NotasTemp.FieldByName('Valor_COFINS').Value          := 0;
                           NotasTemp.FieldByName('Aliquota_ICMSOper').Value     := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 188, 5)));
                           NotasTemp.FieldByName('BCICMS').Value                := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 66, 14)));
                           NotasTemp.FieldByName('Valor_ICMS').Value            := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 80, 14)));
                           NotasTemp.FieldByName('Aliquota_ICMSSub').Value      := 0;
                           NotasTemp.FieldByName('Valor_TotalProdutos').Value   := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha,  52, 14)));
                           NotasTemp.FieldByName('Total_Frete').Value           := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 816, 14)));
                           NotasTemp.FieldByName('Valor_Seguro').Value          := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 830, 14)));
                           NotasTemp.FieldByName('Valor_OutrasDespesas').Value  := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 844, 14)));
                           NotasTemp.FieldByName('BCIPI').Value                 := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 141, 14)));
                           NotasTemp.FieldByName('Valor_TotalIPI').Value        := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 155, 14)));
                           NotasTemp.FieldByName('Valor_TotalNota').Value       := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 211, 14)));
                           NotasTemp.FieldByName('Rateio_Despesas').Value       := 0;
                           NotasTemp.FieldByName('Valor_TotalMVA').Value        := 0;
                           NotasTemp.FieldByName('Valor_ICMSReducao').Value     := 0;
                           NotasTemp.FieldByName('Valor_TotalII').Value         := 0;
                           NotasTemp.FieldByName('Modalidade_Pgto').Value       := 0;
                           NotasTemp.FieldByName('Desconto_Percentual').Value   := 0;
                           NotasTemp.FieldByName('Desconto_Tipo').Value         := 0;
                           NotasTemp.FieldByName('Total_Descontos').Value       := 0;
                           NotasTemp.FieldByName('Cancelada').Value             := StrtoInt(Copy(mLinha, 809, 1));
                           NotasTemp.FieldByName('NFe_cNF').Value               := Copy(mLinha, 973, 44);
                           NotasTemp.FieldByName('Incentivo_Fiscal').Value      := Dados.EmpresasIncentivo_Fiscal.Value;
                  NotasTemp.Post;

                  Inc(mNotas);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                  Application.ProcessMessages;
           End;

           PageControl1.Pages[5].Caption := '&Notas Fiscais ['+InttoStr(mNotas)+'] / Itens Entrada [0] Saídas [0]';
           CloseFile(Arq);

           // Ajusta o campo do CNPJ para saber as notas que são da Empresa.
           NotasTemp.First;
           Janela_Processamento.Progresso.Max      := NotasTemp.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Indentificando as notas de emissão própria...';

           NotasTemp.First;
           While not NotasTemp.Eof do begin
                 If (NotasTemp.FieldByName('CNPJ').AsString <> Dados.Empresas.FieldByName('CNPJ').AsString) then begin
                    If ((VerificaCNPJ(RemoveCaracter(' ', '', NotasTemp.FieldByName('CNPJ_Participante').AsString))) = false) or
                       (NotasTemp.FieldByName('CNPJ_Participante').AsString = '00000000000000') or
                       (NotasTemp.FieldByName('CNPJ_Participante').AsString = Dados.EmpresasCNPJ.AsString) then begin
                       NotasTemp.Edit;
                                 NotasTemp.FieldByName('CNPJ').AsString := Dados.EmpresasCNPJ.AsString;
                       NotasTemp.Post;
                    End;
                 End;
                 NotasTemp.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           End;
        End;

        // Importação das notas fiscais de Saída.
        If Trim(cNotasSaida.Text) <> '' then begin
           AssignFile(Arq, cNotasSaida.Text );
           Reset(Arq);

           FindFirst(cNotasSaida.Text, 0, SR);
           mTamanho := SR.Size;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := Round(mTamanho/1501);
           Janela_Processamento.lProcesso.Caption  := 'Carregando as Notas Fiscais de Saída do arquivo texto...'+InttoStr(Round(mTamanho/1501));
           cNotasSaida.Color := $008080FF;

           While not Eof(Arq) and (not Funcoes.Cancelado) do begin
                 ReadLn(Arq, mLinha);
                 NotasTemp.Append;
                           NotasTemp.FieldByName('Linha').Value             := mNotas+1;
                           NotasTemp.FieldByName('CNPJ').Value              := Dados.Empresas.FieldByName('CNPJ').AsString;
                           NotasTemp.FieldByName('CNPJ_Participante').Value := Copy(mLinha,  254, 14);
                           NotasTemp.FieldByName('Numero').Value            := StrtoInt(Copy(mLinha,  7, 6));
                           NotasTemp.FieldByName('Pedido').Value            := 0;
                           NotasTemp.FieldByName('Saida_Entrada').Value     := 1;
                           NotasTemp.FieldByName('Tipo').Value              := 'NF';

                           mData := Copy(mLinha, 20, 6);
                           Insert( '/', mData, 3 );
                           Insert( '/', mData, 6 );
                           NotasTemp.FieldByName('Data_Emissao').Value := StrtoDate(mData);

                           mData := Copy(mLinha, 20, 6);
                           Insert( '/', mData, 3 );
                           Insert( '/', mData, 6 );
                           NotasTemp.FieldByName('Data_EntradaSaida').Value := StrtoDate(mData);
                           NotasTemp.FieldByName('Hora_EntradaSaida').Value := Time;

                           If Pos(Copy(mLinha,734,4), cTipoNota.Text) > 0 then begin
                              mTipoNota := RemoveCaracter(',', '', Copy(cTipoNota.Text, Pos(Copy(mLinha,734,4), cTipoNota.Text)+5, 2));
                              NotasTemp.FieldByName('Tipo_Nota').Value := StrtoInt(mTipoNota);
                           end else begin
                              MemoAvisos.Lines.Add('Tipo de Nota da Nota Fiscal :'+PoeZero(6, NotasTemp.FieldByName('Numero').AsInteger) +'não encontrado devido a falta de CFOP '+Copy(mLinha,624,4));
                              Inc(mAvisos);
                           End;

                           NotasTemp.FieldByName('Serie').Value     := Copy(mLinha, 40, 3);

                           If Trim(Copy(mLinha, 1377, 44)) <> '' then NotasTemp.FieldByName('Modelo').Value := 55;
                           
                           NotasTemp.FieldByName('Natureza_Codigo').Value       := Copy(mLinha, 734, 4);
                           NotasTemp.FieldByName('Inf_Complementares').Value    := Copy(mLinha, 279, 100);
                           NotasTemp.FieldByName('Fornecedor_Codigo').Value     := 0;
                           NotasTemp.FieldByName('Estado').AsString             := Copy(mLinha, 517, 2);
                           NotasTemp.FieldByName('Transportador_Codigo').Value  := 0;
                           NotasTemp.FieldByName('Valor_PIS').Value             := 0;
                           NotasTemp.FieldByName('Valor_COFINS').Value          := 0;
                           NotasTemp.FieldByName('Aliquota_ICMSOper').Value     := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 136, 5)));
                           NotasTemp.FieldByName('BCICMS').Value                := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 66, 14)));
                           NotasTemp.FieldByName('Valor_ICMS').Value            := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 80, 14)));
                           NotasTemp.FieldByName('Aliquota_ICMSSub').Value      := 0;
                           NotasTemp.FieldByName('Valor_TotalProdutos').Value   := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 48, 14)));
                           NotasTemp.FieldByName('Total_Frete').Value           := 0;
                           NotasTemp.FieldByName('Valor_Seguro').Value          := 0;
                           NotasTemp.FieldByName('Valor_OutrasDespesas').Value  := 0;
                           NotasTemp.FieldByName('BCIPI').Value                 := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 118, 14)));
                           NotasTemp.FieldByName('Valor_TotalIPI').Value        := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 155, 14)));
                           NotasTemp.FieldByName('Valor_TotalNota').Value       := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha,  34, 14)));
                           NotasTemp.FieldByName('Rateio_Despesas').Value       := 0;
                           NotasTemp.FieldByName('Valor_TotalMVA').Value        := 0;
                           NotasTemp.FieldByName('Valor_ICMSReducao').Value     := 0;
                           NotasTemp.FieldByName('Valor_TotalII').Value         := 0;
                           NotasTemp.FieldByName('Modalidade_Pgto').Value       := 0;
                           NotasTemp.FieldByName('Desconto_Percentual').Value   := 0;
                           NotasTemp.FieldByName('Desconto_Tipo').Value         := 0;
                           NotasTemp.FieldByName('Total_Descontos').Value       := 0;
                           NotasTemp.FieldByName('Cancelada').Value             := StrtoInt(Copy(mLinha, 930, 1));
                           NotasTemp.FieldByName('NFe_cNF').Value               := Copy(mLinha, 1377, 44);
                 NotasTemp.Post;

                 Inc(mNotas);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           End;
           PageControl1.Pages[5].Caption := '&Notas Fiscais ['+InttoStr(mNotas)+'] / Itens Entrada [0] Saídas [0]';
           CloseFile(Arq);
        End;

        Janela_Processamento.Close;

        NotasTemp.SQL.Clear;
        NotasTemp.SQL.Add('UPDATE NotasTemp SET Emitente = 1 WHERE(Tipo = ''NF'') AND (CNPJ = :pCNPJ)');
        NotasTemp.SQL.Add('UPDATE NotasTemp SET Emitente = 0 WHERE(Emitente <> 1)');
        NotasTemp.ParamByName('pCNPJ').AsString := Dados.EmpresasCNPJ.Value;
        NotasTemp.Execute;
        NotasTemp.SQL.Clear;
        NotasTemp.SQL.Add('SELECT * FROM NotasTemp ORDER BY Data_Emissao, Numero');
        NotasTemp.Open;

        If NotasTemp.RecordCount = 0 then begin
           Inc(mErros);
           MemoErros.Lines.Add('Nenhuma Nota Fiscal encontrada...');
        End;
        PageControl1.ActivePageIndex := 5;
end;

procedure TUtilitario_ImportarTexto.ImportaItensNotas;
begin
        NotasTempItens.SQL.Clear;
        NotasTempItens.SQL.Add('TRUNCATE TABLE NotasTempItens');
        NotasTempItens.SQL.Add('SELECT * FROM NotasTempItens ORDER BY Nota, Linha');
        NotasTempItens.Open;
        PageControl1.Pages[5].Caption := '&Notas Fiscais [0] / Itens [0]';

        If (Trim(cItensEntrada.Text) <> '') and (NotasTemp.RecordCount <> 0) then begin
           // Importação dos itens das notas fiscais de entrada.
           AssignFile(Arq, cItensEntrada.Text);
           Reset(Arq);

           FindFirst(cItensEntrada.Text, 0, SR);
           mTamanho := SR.Size;
           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Position           := poDesigned;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Top                := 450;
           Janela_Processamento.Progresso.Max      := Round(mTamanho/983)-1;
           Janela_Processamento.lProcesso.Caption  := 'Carregando os Itens das Notas Fiscais de Entrada...'+InttoStr(Round(mTamanho/983)-1);
           Janela_Processamento.Show;
           cItensEntrada.Color := $008080FF;

           mItensEntrada := 1;

           While not Eof(Arq) and (not Funcoes.Cancelado) do begin
                 ReadLn(Arq, mLinha);

                 mData := Copy(mLinha, 15, 8);
                 mData := Copy(mData, 7, 2)+'/'+Copy(mData, 5, 2)+'/'+Copy(mData, 1, 4);
                 
                 If ProdutosTemp.Locate('Codigo_Fabricante', Trim(Copy(mLinha, 35, 20)), [loCaseInsensitive]) = false then begin
                    MemoErros.Lines.Add('Produto não encontrado na importação dos itens da nota :'+Trim(Copy(mLinha, 35, 20)) );
                 End;
                 NotasTemp.Locate('Numero; Data_Emissao', VarArrayOf([StrtoInt(Copy(mLinha, 23, 6)), StrtoDate(mData)]), [loCaseInsensitive]);
                 Dados.ReferenciasFiscais.Locate('Codigo', NotasTemp.FieldByName('Tipo_Nota').AsInteger , [loCaseInsensitive]);

                 NotasTempItens.Append;
                                NotasTempItens.FieldByName('Linha').Value                := mItensEntrada;
                                NotasTempItens.FieldByName('Nota').Value                 := StrtoInt(Copy(mLinha,  23, 6));
                                NotasTempItens.FieldByName('Data').Value                 := StrtoDate(mData);
                                NotasTempItens.FieldByName('Tipo').Value                 := NotasTemp.FieldByName('Tipo').Value;
                                NotasTempItens.FieldByName('Item').Value                 := 0;
                                NotasTempItens.FieldByName('Fornecedor').Value           := NotasTemp.FieldByName('Fornecedor_Codigo').Value;
                                NotasTempItens.FieldByName('Codigo_Mercadoria').Value    := ProdutosTemp.FieldByName('Codigo').AsInteger;
                                NotasTempItens.FieldByName('Codigo_Fabricante').Value    := Copy(mLinha, 35, 20);
                                NotasTempItens.FieldByName('Descricao_Mercadoria').Value := ProdutosTemp.FieldByName('Descricao').AsString;
                                NotasTempItens.FieldByName('NCM').Value                  := ProdutosTemp.FieldByName('NCM').AsString;
                                NotasTempItens.FieldByName('Unidade_Medida').Value       := Copy(mLinha, 59, 3);
                                NotasTempItens.FieldByName('Quantidade').Value           := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 65, 14)));
                                NotasTempItens.FieldByName('Disponivel').Value           := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 65, 14)));
                                NotasTempItens.FieldByName('Valor_Unitario').Value       := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 79, 14)));
                                NotasTempItens.FieldByName('Valor_Total').Value          := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 107, 14)));
                                NotasTempItens.FieldByName('Aliquota_IPI').Value         := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 121, 5)));
                                NotasTempItens.FieldByName('Total_IPI').Value            := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 126, 14)));
                                NotasTempItens.FieldByName('Valor_IPI').Value            := (NotasTempItens.FieldByName('Total_IPI').Value / NotasTempItens.FieldByName('Quantidade').Value);
                                NotasTempItens.FieldByName('CodigoTrib_TabA').Value      := Copy(mLinha, 62, 1);
                                NotasTempItens.FieldByName('CodigoTrib_TabB').Value      := Copy(mLinha, 63, 2);
                                NotasTempItens.FieldByName('CSTIPI').Value               := Copy(mLinha, 697, 2);
                                NotasTempItens.FieldByName('CSTPIS').Value               := Copy(mLinha, 699, 2);
                                NotasTempItens.FieldByName('CSTCOFINS').Value            := Copy(mLinha, 701, 2);
                                NotasTempItens.FieldByName('Valor_BCICMSOper').Value     := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 140, 14)));
                                NotasTempItens.FieldByName('Aliquota_ICMSOper').Value    := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 345, 5)));
                                NotasTempItens.FieldByName('Valor_ICMSOper').Value       := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 350, 14)));
                                NotasTempItens.FieldByName('Valor_BCICMSSub').Value      := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 154, 14)));
                                NotasTempItens.FieldByName('Valor_ICMSSub').Value        := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 365, 14)));
                                NotasTempItens.FieldByName('Aliquota_ICMSReducao').Value := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 267, 5)));
                                NotasTempItens.FieldByName('Saida_Entrada').Value        := 0;
                                NotasTempItens.FieldByName('DI').Value                   := Copy(mLinha, 552, 10);
                                NotasTempItens.FieldByName('Valor_IsentasICMS').Value    := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 588, 14)));
                                NotasTempItens.FieldByName('Valor_OutrasICMS').Value     := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 602, 14)));
                                NotasTempItens.FieldByName('Valor_IsentasIPI').Value     := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 616, 14)));
                                NotasTempItens.FieldByName('Valor_OutrasIPI').Value      := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 630, 14)));
                                NotasTempItens.FieldByName('Valor_BCIPI').Value          := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 330, 14)));
                                NotasTempItens.FieldByName('Cancelada').Value            := NotasTemp.FieldByName('Cancelada').AsBoolean;
                                If NotasTemp.FieldByName('CNPJ').AsString = Dados.EmpresasCNPJ.AsString then begin
                                   If Dados.TipoNota.Locate('Codigo', NotasTemp.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]) = true then begin
                                      NotasTempItens.FieldByName('Movimenta_Estoque').Value    := Dados.TipoNotaMovimenta_Estoque.Value;
                                      NotasTempItens.FieldByName('Movimenta_Inventario').Value := Dados.TipoNotaMovimenta_Inventario.Value;
                                   End;
                                end else begin
                                   If Dados.ReferenciasFiscais.Locate('Codigo', NotasTemp.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]) = true then begin
                                      NotasTempItens.FieldByName('Movimenta_Estoque').Value    := Dados.ReferenciasFiscaisMovimenta_Estoque.Value;
                                      NotasTempItens.FieldByName('Movimenta_Inventario').Value := Dados.ReferenciasFiscaisMovimenta_Inventario.Value;
                                   End;
                                End;
                 NotasTempItens.Post;
                 Inc(mItensEntrada);

MemoAvisos.Lines.Add(inttostr(mItensEntrada));

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
           PageControl1.Pages[5].Caption := '&Notas Fiscais ['+InttoStr(mNotas)+'] / Itens Entrada ['+InttoStr(mItensEntrada)+'] Saídas [0]';
           CloseFile(Arq);
        End;

        // Importação dos itens das notas fiscais de saída.
        If (Trim(cItensSaida.Text) <> '')  and (NotasTemp.RecordCount <> 0) then begin

           mItensSaida := 1;

           AssignFile(Arq, cItensSaida.Text);
           Reset(Arq);

           FindFirst(cItensSaida.Text, 0, SR);
           mTamanho := SR.Size;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := Round(mTamanho/956);
           Janela_Processamento.lProcesso.Caption  := 'Carregando os Itens das Notas Fiscais de Saída...'+InttoStr(Round(mTamanho/956));
           cItensSaida.Color := $008080FF;

           While not Eof(Arq) and (not Funcoes.Cancelado) do begin
                 ReadLn(Arq, mLinha);

                 If ProdutosTemp.Locate('Codigo_Fabricante', Trim(Copy(mLinha, 35, 20)), [loCaseInsensitive]) = false then begin
                    MemoErros.Lines.Add('Produto não encontrado na importação dos itens da nota :'+Trim(Copy(mLinha, 35, 20)) );
                 End;
                 NotasTemp.Locate('Numero', StrtoInt(Copy(mLinha, 23, 6)), [loCaseInsensitive]);
                 Dados.TipoNota.Locate('Codigo', NotasTemp.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]);

                 NotasTempItens.Append;
                           NotasTempItens.FieldByName('Linha').Value := mItensEntrada+mItensSaida;
                           NotasTempItens.FieldByName('Nota').Value  := StrtoInt(Copy(mLinha,  23, 6));

                           mData := Copy(mLinha, 15, 8);
                           mData := Copy(mData, 7, 2)+'/'+Copy(mData, 5, 2)+'/'+Copy(mData, 1, 4);
                           NotasTempItens.FieldByName('Data').Value                 := StrtoDate(mData);
                           NotasTempItens.FieldByName('Item').Value                 := 0;
                           NotasTempItens.FieldByName('Fornecedor').Value           := 0;
                           NotasTempItens.FieldByName('Codigo_Mercadoria').Value    := ProdutosTemp.FieldByName('Codigo').AsInteger;
                           NotasTempItens.FieldByName('Codigo_Fabricante').Value    := Copy(mLinha, 35, 20);
                           NotasTempItens.FieldByName('Descricao_Mercadoria').Value := ProdutosTemp.FieldByName('Descricao').AsString;
                           NotasTempItens.FieldByName('Movimenta_Estoque').Value    := Dados.TipoNotaMovimenta_Estoque.AsBoolean;
                           NotasTempItens.FieldByName('Movimenta_Inventario').Value := Dados.TipoNotaMovimenta_Inventario.AsBoolean;
                           NotasTempItens.FieldByName('NCM').Value                  := ProdutosTemp.FieldByName('NCM').AsString;
                           NotasTempItens.FieldByName('Unidade_Medida').Value       := Copy(mLinha, 59, 3);
                           NotasTempItens.FieldByName('Quantidade').Value           := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 65, 14)));
                           NotasTempItens.FieldByName('Disponivel').Value           := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 65, 14)));
                           NotasTempItens.FieldByName('Valor_Unitario').Value       := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 79, 14)));
                           NotasTempItens.FieldByName('Valor_Total').Value          := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 107, 14)));
                           NotasTempItens.FieldByName('Aliquota_IPI').Value         := StrtoFloat(RemoveCaracter('.',',',Copy(mLinha, 121, 5)));
                           NotasTempItens.FieldByName('Total_IPI').Value            := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 126, 14)));
                           NotasTempItens.FieldByName('Valor_IPI').Value            := (NotasTempItens.FieldByName('Total_IPI').Value / NotasTempItens.FieldByName('Quantidade').Value);
                           NotasTempItens.FieldByName('CodigoTrib_TabA').Value      := Copy(mLinha, 62, 1);
                           NotasTempItens.FieldByName('CodigoTrib_TabB').Value      := Copy(mLinha, 63, 2);
                           NotasTempItens.FieldByName('CSTIPI').Value               := Copy(mLinha, 697, 2);
                           NotasTempItens.FieldByName('CSTPIS').Value               := Copy(mLinha, 699, 2);
                           NotasTempItens.FieldByName('CSTCOFINS').Value            := Copy(mLinha, 701, 2);
                           NotasTempItens.FieldByName('Valor_BCICMSOper').Value     := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 140, 14)));
                           NotasTempItens.FieldByName('Aliquota_ICMSOper').Value    := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 345, 5)));
                           NotasTempItens.FieldByName('Valor_ICMSOper').Value       := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 350, 14)));
                           NotasTempItens.FieldByName('Valor_BCICMSSub').Value      := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 154, 14)));
                           NotasTempItens.FieldByName('Valor_ICMSSub').Value        := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 365, 14)));
                           NotasTempItens.FieldByName('Aliquota_ICMSReducao').Value := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 267, 5)));
                           NotasTempItens.FieldByName('Saida_Entrada').Value        := 1;
                           NotasTempItens.FieldByName('DI').Value                   := Copy(mLinha, 552, 10);
                           NotasTempItens.FieldByName('Valor_IsentasICMS').Value    := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 539, 14)));
                           NotasTempItens.FieldByName('Valor_OutrasICMS').Value     := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 553, 14)));
                           NotasTempItens.FieldByName('Valor_IsentasIPI').Value     := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 567, 14)));
                           NotasTempItens.FieldByName('Valor_OutrasIPI').Value      := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 581, 14)));
                           NotasTempItens.FieldByName('Valor_BCIPI').Value          := StrtoCurr(RemoveCaracter('.',',',Copy(mLinha, 330, 14)));
                           NotasTempItens.FieldByName('Cancelada').Value            := NotasTemp.FieldByName('Cancelada').AsBoolean;
                           NotasTempItens.FieldByName('Tipo').Value                 := NotasTemp.FieldByName('Tipo').Value;
                 NotasTempItens.Post;

                 Inc(mItensSaida);
                 Application.ProcessMessages;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
           End;
           PageControl1.Pages[5].Caption := '&Notas Fiscais ['+InttoStr(mNotas)+'] / Itens Entrada ['+InttoStr(mItensEntrada)+'] Saídas ['+InttoStr(mItensSaida)+']';
           CloseFile(Arq);
        End;

        // Atualiza o numero da DI das notas pelos itens.
        NotasTemp.SQL.Clear;
        NotasTemp.SQL.Add('UPDATE NotasTemp SET DI = NotasTempItens.DI FROM NotasTempItens WHERE(NotasTempItens.Nota = NotasTemp.Numero) AND (NotasTempItens.Data = NotasTemp.Data_Emissao)');
        NotasTemp.Execute;
        NotasTemp.SQL.Clear;
        NotasTemp.SQL.Add('SELECT * FROM NotasTemp ORDER BY Data_Emissao, Numero');
        NotasTemp.Open;
        NotasTemp.EnableControls;
        NotasTempItens.EnableControls;

        Janela_Processamento.Close;

        If NotasTempItens.RecordCount = 0 then begin
           Inc(mErros);
           MemoErros.Lines.Add('Nenhum Item de Nota Fiscal encontrado...');
        End;
end;

procedure TUtilitario_ImportarTexto.ImportaEstoque;
begin
      EstoqueTemp.SQL.Clear;
      EstoqueTemp.SQL.Add('TRUNCATE TABLE EstoqueTemp');
      EstoqueTemp.SQL.Add('SELECT * FROM EstoqueTemp');
      EstoqueTemp.Open;
      PageControl1.Pages[1].Caption := '&Estoque [0]';

      If Trim(cEstoque.Text) <> '' then begin
         AssignFile(Arq, cEstoque.Text);
         Reset(Arq);

         FindFirst(cEstoque.Text, 0, SR);
         mTamanho := SR.Size;
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.Position           := poDesigned;
         Janela_Processamento.Top                := 450;
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.Progresso.Max      := Round(mTamanho/283);
         Janela_Processamento.lProcesso.Caption  := 'Carregando o Estoque do arquivo texto...'+InttoStr(Round(mTamanho/283));
         Janela_Processamento.Show;
         cEstoque.Color := $008080FF;

         i := 1;

         While not Eof(Arq) and (not Funcoes.Cancelado) do begin
               ReadLn(Arq, mLinha);

               EstoqueTemp.Append;
                           EstoqueTemp.FieldByName('Linha').Value := i;
                           mData := Copy(mLinha, 1, 8);
                           Insert( '/', mData, 3 );
                           Insert( '/', mData, 6 );
                           EstoqueTemp.FieldByName('Data_Movimento').Value := StrtoDate(mData);

                           EstoqueTemp.FieldByName('Tipo_Movimento').Value := StrtoInt(Trim(Copy(mLinha, 9, 2)));
                           EstoqueTemp.FieldByName('Nota').Value           := StrtoInt(Trim(Copy(mLinha, 11, 10)));
                           EstoqueTemp.FieldByName('Serie').Value          := Trim(Copy(mLinha, 21, 6));
                           EstoqueTemp.FieldByName('Desdobramento').Value  := StrtoInt(Trim(Copy(mLinha, 27, 3)));

                           mData := Copy(mLinha, 30, 8);
                           Insert( '/', mData, 3 );
                           Insert( '/', mData, 6 );
                           EstoqueTemp.FieldByName('Data_Emissao').Value     := mData;
                       
                           EstoqueTemp.FieldByName('Especie').Value          := Trim(Copy(mLinha, 38, 5));
                           EstoqueTemp.FieldByName('Codigo_Contabil').Value  := Trim(Copy(mLinha, 43, 12));
                           EstoqueTemp.FieldByName('CFOP').Value             := Trim(Copy(mLinha, 55, 4));
                           EstoqueTemp.FieldByName('Codigo_Produto').Value   := Trim(Copy(mLinha, 73, 20));
                           EstoqueTemp.FieldByName('Codigo_Movimento').Value := StrtoInt(Copy(mLinha, 93, 1));
                           EstoqueTemp.FieldByName('Quantidade').Value       := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 94, 21))));
                           EstoqueTemp.FieldByName('Valor_Unitario').Value   := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 115, 17))));
                           EstoqueTemp.FieldByName('Valor_Total').Value      := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 132, 17))));
                           EstoqueTemp.FieldByName('BCIPI').Value            := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 149, 17))));
                           EstoqueTemp.FieldByName('Valor_IPI').Value        := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 166, 17))));
                           EstoqueTemp.FieldByName('Observacao').Value       := Trim(Copy(mLinha, 183, 100));
               EstoqueTemp.Post;

               Inc(i);
               Application.ProcessMessages;
               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
         End;
         PageControl1.Pages[1].Caption := '&Estoque ['+InttoStr(i)+']';
         CloseFile(Arq);
      End;
      EstoqueTemp.SQL.Clear;
      EstoqueTemp.SQL.Add('SELECT * FROM EstoqueTemp ORDER BY Linha');
      EstoqueTemp.Open;
      EstoqueTemp.EnableControls;

      Janela_Processamento.Close;

      If EstoqueTemp.RecordCount = 0 then begin
         Inc(mErros);
         MemoErros.Lines.Add('Nenhum registro de estoque encontrado...');
      End;
      PageControl1.ActivePageIndex := 1;
end;

procedure TUtilitario_ImportarTexto.ImportaInventario;
begin
      InventarioTemp.SQL.Clear;
      InventarioTemp.SQL.Add('TRUNCATE TABLE InventarioTemp');
      InventarioTemp.SQL.Add('SELECT * FROM InventarioTemp');
      InventarioTemp.Open;
      PageControl1.Pages[2].Caption := '&Inventario [0]';

      If Trim(cInventario.Text) <> '' then begin
         AssignFile(Arq, cInventario.Text);
         Reset(Arq);

         FindFirst(cInventario.Text, 0, SR);
         mTamanho := SR.Size;
         Janela_Processamento                    := TJanela_Processamento.Create(Self);
         Janela_Processamento.Position           := poDesigned;
         Janela_Processamento.Top                := 450;
         Janela_Processamento.Progresso.Position := 0;
         Janela_Processamento.Progresso.Max      := Round(mTamanho/363);
         Janela_Processamento.lProcesso.Caption  := 'Carregando o Inventario do arquivo texto...'+InttoStr(Round(mTamanho/363));
         Janela_Processamento.Show;
         cInventario.Color := $008080FF;

         i := 1;

         While not Eof(Arq) and (not Funcoes.Cancelado) do begin
               ReadLn(Arq, mLinha);

               InventarioTemp.Append;
                           InventarioTemp.FieldByName('Linha').Value := i;
                           mData := Copy(mLinha, 1, 8);
                           Insert( '/', mData, 3 );
                           Insert( '/', mData, 6 );
                           InventarioTemp.FieldByName('Data').Value                 := StrtoDate(mData);
                           InventarioTemp.FieldByName('MesAno_Inicio').Value        := Trim(Copy(mLinha, 9, 4));
                           InventarioTemp.FieldByName('MesAno_Final').Value         := Trim(Copy(mLinha, 13, 4));
                           InventarioTemp.FieldByName('Codigo_Mercadoria').Value    := Trim(Copy(mLinha, 17, 20));
                           InventarioTemp.FieldByName('Situacao').Value             := StrtoInt(Trim(Copy(mLinha, 37, 1)));
                           InventarioTemp.FieldByName('CNPJ').Value                 := Trim(Copy(mLinha, 38, 14));
                           InventarioTemp.FieldByName('IE').Value                   := Trim(Copy(mLinha, 52, 20));
                           InventarioTemp.FieldByName('UF').Value                   := Trim(Copy(mLinha, 72, 2));
                           InventarioTemp.FieldByName('Quantidade').Value           := StrtoFloat(Copy(mLinha, 74, 15)+','+Copy(mLinha, 89, 6));
                           InventarioTemp.FieldByName('Valor_Unitario').Value       := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 95, 17))));
                           InventarioTemp.FieldByName('Valor_Total').Value          := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 112, 17))));
                           InventarioTemp.FieldByName('ICMS_Recuperar').Value       := StrtoFloat(RemoveCaracter('.', ',', Trim(Copy(mLinha, 129, 17))));
                           InventarioTemp.FieldByName('Observacao').Value           := Trim(Copy(mLinha, 146, 60));
                           InventarioTemp.FieldByName('Descricao_Mercadoria').Value := Trim(Copy(mLinha, 206, 80));
                           InventarioTemp.FieldByName('Grupo').Value                := Trim(Copy(mLinha, 286, 4));
                           InventarioTemp.FieldByName('NCM').Value                  := StrtoInt(Copy(mLinha, 290, 10));
                           InventarioTemp.FieldByName('Unidade_Medida').Value       := Trim(Copy(mLinha, 330, 3));
                           InventarioTemp.FieldByName('Descricao_Grupo').Value      := Trim(Copy(mLinha, 333, 30));
               InventarioTemp.Post;

               Inc(i);
               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Application.ProcessMessages;
         End;
         PageControl1.Pages[2].Caption := '&Inventario ['+InttoStr(i)+']';
         CloseFile(Arq);
      End;
      InventarioTemp.SQL.Clear;
      InventarioTemp.SQL.Add('SELECT * FROM InventarioTemp ORDER BY Linha');
      InventarioTemp.Open;
      InventarioTemp.EnableControls;
      Janela_Processamento.Close;

      If InventarioTemp.RecordCount = 0 then begin
         MemoErros.Lines.Add('Nenhum Item de Inventario encontrado...');
      End;
      PageControl1.ActivePageIndex := 2;
end;

procedure TUtilitario_ImportarTexto.bCarregarClick(Sender: TObject);
begin
      mErros            := 0;
      mCarregando       := true;
      AbaErros.Caption  := '&Erros [0]';
      MemoErros.Clear;
      MemoAvisos.Clear;

      cProdutos.Color     := clWhite;
      cEstoque.Color      := clWhite;
      cInventario.Color   := clWhite;
      cParticipante.Color := clWhite;
      cNotasEntrada.Color := clWhite;
      cNotasSaida.Color   := clWhite;
      cItensSaida.Color   := clWhite;
      cItensEntrada.Color := clWhite;

      If Trim(RemoveCaracter('/', '', cDataEmissao.Text)) <> '' then begin
         MemoAvisos.Lines.Add('As notas fiscais serão importadas todas com data de emissão em :'+cDataEmissao.Text);
         Inc(mAvisos);
      End;

      AbaAvisos.Caption := '&Avisos ['+InttoStr(mAvisos)+']';
      If mErros = 0 then begin
         With Dados, dmFiscal do begin
              Produtos.DisableControls;
              ProdutosTemp.DisableControls;
              Clientes.DisableControls;
              ClientesTemp.DisableControls;
              FornecedoresTemp.DisableControls;
              Fornecedores.DisableControls;
              NotasTempItens.DisableControls;
              NotasTemp.DisableControls;
              NotasTempItens.DisableControls;
              Notas.DisableControls;
              NotasItens.DisableControls;
              NotasTerceiros.DisableControls;
              NotasTerceirosItens.DisableControls;
         End;
         ImportaProdutos;
//         If (not Funcoes.Cancelado) then ImportaEstoque;
//         If (not Funcoes.Cancelado) then ImportaInventario;
         If (not Funcoes.Cancelado) then ImportaNotas;
         If (not Funcoes.Cancelado) then ImportaItensNotas;
         If (not Funcoes.Cancelado) then ImportaClientes;
         If (not Funcoes.Cancelado) then ImportaFornecedores;
         If (not Funcoes.Cancelado) then AtualizaParticipante;

         With Dados, dmFiscal do begin
              Produtos.EnableControls;
              ProdutosTemp.EnableControls;
              Clientes.EnableControls;
              ClientesTemp.EnableControls;
              FornecedoresTemp.EnableControls;
              Fornecedores.EnableControls;
              NotasTempItens.EnableControls;
              NotasTemp.EnableControls;
              NotasTempItens.EnableControls;
              Notas.EnableControls;
              NotasItens.EnableControls;
              NotasTerceiros.EnableControls;
              NotasTerceirosItens.EnableControls;
         End;

         PageControl1.ActivePageIndex  := 5;
         PageControl1.Enabled          := true;
//         bImportar.Enabled             := mErros = 0;
         If mErros > 0 then begin
            AbaErros.Caption             := '&Erros ['+InttoStr(mErros)+']';
            PageControl1.ActivePageIndex := 6;
         End;
         PageControl1.Repaint;
      End;
      AbaAvisos.Caption := '&Avisos ['+InttoStr(mAvisos)+']';
      mCarregando       := false;
end;

procedure TUtilitario_ImportarTexto.bNotasEntradaClick(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cNotasEntrada.Text := AbrirArquivo.FileName;
         cNotasEntrada.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.SpeedButton2Click(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cItensEntrada.Text := AbrirArquivo.FileName;
         cItensEntrada.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.SpeedButton1Click(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cItensSaida.Text := AbrirArquivo.FileName;
         cItensSaida.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.bParticipanteClick(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cParticipante.Text := AbrirArquivo.FileName;
         cParticipante.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.bInventarioClick(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cInventario.Text := AbrirArquivo.FileName;
         cInventario.Setfocus;
      End;
end;

procedure TUtilitario_ImportarTexto.bProdutosClick(Sender: TObject);
begin
      If AbrirArquivo.Execute then begin
         cProdutos.Text := AbrirArquivo.FileName;
         cProdutos.SetFocus;
      End;
end;

procedure TUtilitario_ImportarTexto.bImportarClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Produtos.DisableControls;
           ProdutosTemp.DisableControls;
           Clientes.DisableControls;
           ClientesTemp.DisableControls;
           FornecedoresTemp.DisableControls;
           Fornecedores.DisableControls;
           NotasTempItens.DisableControls;
           NotasTemp.DisableControls;
           NotasTempItens.DisableControls;
           Notas.DisableControls;
           NotasItens.DisableControls;
           NotasTerceiros.DisableControls;
           NotasTerceirosItens.DisableControls;
      End;

      mCarregando := true;
      MemoAvisos.Clear;
      MemoErros.Clear;

      Janela_Processamento                    := TJanela_Processamento.Create(Self);
      Janela_Processamento.Position           := poDesigned;
      Janela_Processamento.Top                := 450;
      Janela_Processamento.Show;

      // Importação do cadastro de produtos.
      If cImpProdutos.Checked then begin
          With Dados do begin
               Produtos.SQL.Clear;
               Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
               Produtos.Open;

               ProdutosTemp.Open;

               Janela_Processamento.Progresso.Max      := ProdutosTemp.RecordCount;
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.lProcesso.Caption  := 'Importando os Produtos...';

               ProdutosTemp.First;
               While not ProdutosTemp.Eof and (not Funcoes.Cancelado) do begin
                     If (Produtos.Locate('Codigo_Fabricante', ProdutosTemp.FieldByName('Codigo_Fabricante').AsString, [loCaseInsensitive]) = false) then begin
                        Produtos.Append;
                     end else begin
                        Inc(mAvisos);
                        If cModificar.Checked = false then begin
                           MemoAvisos.Lines.Add('Produto não foi importado (Já Cadastrado): '+ProdutosTemp.FieldByName('Codigo_Fabricante').Value + ' - '+ProdutosTemp.FieldByName('Descricao').Value);
                        end else
                           Produtos.Edit;
                     End;

                     If (Produtos.State = dsInsert) or (Produtos.State = dsEdit) then begin
                        tEstoque.SQL.Clear;
                        tEstoque.SQL.Add('SELECT (SELECT SUM(Quantidade) FROM NotasTempItens WHERE(Codigo_Fabricante = :pCodigo) AND (Saida_Entrada = 0)) AS Entradas,');
                        tEstoque.SQL.Add('       (SELECT SUM(Quantidade) FROM NotasTempItens WHERE(Codigo_Fabricante = :pCodigo) AND (Saida_Entrada = 1)) AS Saidas');
                        tEstoque.SQL.Add('FROM ProdutosTemp');
                        tEstoque.SQL.Add('WHERE (ProdutosTemp.Codigo_Fabricante = :pCodigo)');
                        tEstoque.ParamByName('pCodigo').AsString := ProdutosTemp.FieldByName('Codigo_Fabricante').AsString;
                        tEstoque.Open;

                        Produtos.FieldByName('Codigo').Value               := ProdutosTemp.FieldByName('Codigo').Value;
                        Produtos.FieldByName('Codigo_Fabricante').Value    := ProdutosTemp.FieldByName('Codigo_Fabricante').Value;
                        Produtos.FieldByName('Tipo_Item').Value            := ProdutosTemp.FieldByName('Tipo_Item').Value;
                        Produtos.FieldByName('Unidade').Value              := ProdutosTemp.FieldByName('Unidade').Value;
                        Produtos.FieldByName('Quantidade_Unidade').Value   := ProdutosTemp.FieldByName('Quantidade_Unidade').Value;
                        Produtos.FieldByName('NCM').Value                  := ProdutosTemp.FieldByName('NCM').Value;
                        Produtos.FieldByName('Estoque_Disponivel').Value   := tEstoque.FieldByName('Entradas').AsFloat - tEstoque.FieldByName('Saidas').AsFloat;
                        Produtos.FieldByName('Estoque_Terceiros').Value    := ProdutosTemp.FieldByName('Estoque_Terceiros').Value;
                        Produtos.FieldByName('Peso_Liquido').Value         := ProdutosTemp.FieldByName('Peso_Liquido').Value;
                        Produtos.FieldByName('Peso_Bruto').Value           := ProdutosTemp.FieldByName('Peso_Bruto').Value;
                        Produtos.FieldByName('Descricao').Value            := ProdutosTemp.FieldByName('Descricao').Value;
                        Produtos.FieldByName('Descricao_Reduzida').Value   := ProdutosTemp.FieldByName('Descricao_Reduzida').Value;
                        Produtos.FieldByName('Aliquota_IPI').Value         := ProdutosTemp.FieldByName('Aliquota_IPI').Value;
                        Produtos.FieldByName('Aliquota_II').Value          := ProdutosTemp.FieldByName('Aliquota_II').Value;
                        Produtos.FieldByName('Aliquota_PIS').Value         := ProdutosTemp.FieldByName('Aliquota_PIS').Value;
                        Produtos.FieldByName('Aliquota_COFINS').Value      := ProdutosTemp.FieldByName('Aliquota_COFINS').Value;
                        Produtos.FieldByName('Veiculo').Value              := ProdutosTemp.FieldByName('Veiculo').Value;
                        Produtos.FieldByName('Lancado_Pedidos').Value      := ProdutosTemp.FieldByName('Lancado_Pedidos').Value;
                        Produtos.Post;
                     End;

                     ProdutosTemp.Next;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;
               End;
          End;
          If mAvisos > 0 then MemoAvisos.Lines.Add(Replicate('-', 130));
      End;

      // Importação do cadastro de Clientes.
      If cImpCliFor.Checked then begin
          With Dados do begin
               Clientes.SQL.Clear;
               Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
               Clientes.Open;

               Municipios.SQL.Clear;
               Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome');
               Municipios.Open;

               tCodigo.SQL.Clear;
               tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');
               tCodigo.Open;

               ClientesTemp.Open;

               mCodigo := tCodigo.FieldByName('Codigo').AsInteger + 1;

               Janela_Processamento.Progresso.Max      := ClientesTemp.RecordCount;
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.lProcesso.Caption  := 'Importando os Clientes...';

               ClientesTemp.First;
               While not ClientesTemp.Eof and (not Funcoes.Cancelado) do begin
                     If (Clientes.Locate('CNPJ', ClientesTemp.FieldByName('CNPJ').AsString, [loCaseInsensitive]) = false) then begin
                        Clientes.Append;
                     end else begin
                        If cModificar.Checked = false then begin
                           Inc(mAvisos);
                           MemoAvisos.Lines.Add('Cliente não foi importado (Já Cadastrado): '+ClientesTemp.FieldByName('CNPJ').Value + ' - '+ClientesTemp.FieldByName('Nome').Value);
                        end else
                           Clientes.Edit;
                     End;

                     If (Clientes.State = dsInsert) or (Clientes.State = dsEdit) then begin
                        If (Clientes.State = dsInsert) then begin
                           Clientes.FieldByName('Codigo').Value              := ClientesTemp.FieldByName('Codigo').Value;
                        End;
                        Clientes.FieldByName('Nome').Value                := ClientesTemp.FieldByName('Nome').Value;
                        Clientes.FieldByName('Rua').Value                 := ClientesTemp.FieldByName('Rua').Value;
                        Clientes.FieldByName('Rua_Numero').Value          := ClientesTemp.FieldByName('Rua_Numero').Value;
                        Clientes.FieldByName('Complemento').Value         := ClientesTemp.FieldByName('Complemento').Value;
                        Clientes.FieldByName('Bairro').Value              := ClientesTemp.FieldByName('Bairro').Value;

                        If Municipios.Locate('Nome', ClientesTemp.FieldByName('Municipio').Value, [loCaseInsensitive]) then
                           Clientes.FieldByName('Municipio_Codigo').Value := Municipios.FieldByName('Codigo').Value;

                        Clientes.FieldByName('Municipio').Value           := ClientesTemp.FieldByName('Municipio').Value;
                        Clientes.FieldByName('Estado').Value              := ClientesTemp.FieldByName('Estado').Value;
                        Clientes.FieldByName('Pais').Value                := ClientesTemp.FieldByName('Pais').Value;
                        Clientes.FieldByName('CEP').Value                 := ClientesTemp.FieldByName('CEP').Value;
                        Clientes.FieldByName('Telefone1').Value           := ClientesTemp.FieldByName('Telefone1').Value;
                        Clientes.FieldByName('Telefone2').Value           := ClientesTemp.FieldByName('Telefone2').Value;
                        Clientes.FieldByName('FAX').Value                 := ClientesTemp.FieldByName('FAX').Value;
                        Clientes.FieldByName('CNPJ').Value                := ClientesTemp.FieldByName('CNPJ').Value;
                        Clientes.FieldByName('CPF').Value                 := ClientesTemp.FieldByName('CPF').Value;
                        Clientes.FieldByName('RG').Value                  := ClientesTemp.FieldByName('RG').Value;
                        Clientes.FieldByName('Inscricao_Estadual').Value  := ClientesTemp.FieldByName('Inscricao_Estadual').Value;
                        Clientes.FieldByName('Isento').Value              := ClientesTemp.FieldByName('Isento').Value;
                        Clientes.FieldByName('Inscricao_Municipal').Value := ClientesTemp.FieldByName('Inscricao_Municipal').Value;
                        Clientes.FieldByName('Email').Value               := ClientesTemp.FieldByName('Email').Value;
                        Clientes.FieldByName('Site').Value                := ClientesTemp.FieldByName('Site').Value;
                        Clientes.FieldByName('Data_Cadastro').Value       := Date;
                        Clientes.FieldByName('Ativo').Value               := 1;
                        Clientes.FieldByName('Simples_Nacional').Value    := 0;
                        Clientes.Post;
                     End;
                     ClientesTemp.Next;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;
               End;
               If mAvisos > 0 then MemoAvisos.Lines.Add(Replicate('-', 130));
          End;

          // Importação do cadastro de Fornecedores
          With Dados do begin
               Fornecedores.SQL.Clear;
               Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
               Fornecedores.Open;

               Municipios.SQL.Clear;
               Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome');
               Municipios.Open;

               FornecedoresTemp.Open;

               Janela_Processamento.Progresso.Max      := FornecedoresTemp.RecordCount;
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.lProcesso.Caption  := 'Importando os Fornecedores...';

               FornecedoresTemp.First;
               While not FornecedoresTemp.Eof and (not Funcoes.Cancelado) do begin
                     If UpperCase(FornecedoresTemp.FieldByName('Estado').AsString) <> 'EX' then
                        mAchou := Fornecedores.Locate('CNPJ', FornecedoresTemp.FieldByName('CNPJ').AsString, [loCaseInsensitive])
                     else
                        mAchou := Fornecedores.Locate('Nome', FornecedoresTemp.FieldByName('Nome').AsString, [loCaseInsensitive]);
                     If mAchou = false then begin
                        Fornecedores.Append;
                     end else begin
                        If cModificar.Checked = false then begin
                           Inc(mAvisos);
                           MemoAvisos.Lines.Add('Fornecedor não foi importado (Já Cadastrado): '+FornecedoresTemp.FieldByName('CNPJ').Value + ' - '+FornecedoresTemp.FieldByName('Nome').Value);
                        end else
                           Fornecedores.Edit;
                     End;

                     If (Fornecedores.State = dsInsert) or (Fornecedores.State = dsEdit) then begin
                        If (Fornecedores.State = dsInsert) then begin
                            Fornecedores.FieldByName('Codigo').Value := FornecedoresTemp.FieldByName('Codigo').Value;
                        End;
                        Fornecedores.FieldByName('Nome').Value                := FornecedoresTemp.FieldByName('Nome').Value;
                        Fornecedores.FieldByName('Nome_Fantasia').Value       := FornecedoresTemp.FieldByName('Nome_Fantasia').Value;
                        Fornecedores.FieldByName('Rua').Value                 := FornecedoresTemp.FieldByName('Rua').Value;
                        Fornecedores.FieldByName('Rua_Numero').Value          := FornecedoresTemp.FieldByName('Rua_Numero').Value;
                        Fornecedores.FieldByName('Complemento').Value         := FornecedoresTemp.FieldByName('Complemento').Value;
                        Fornecedores.FieldByName('Bairro').Value              := FornecedoresTemp.FieldByName('Bairro').Value;

                        If Trim(UpperCase(FornecedoresTemp.FieldByName('Municipio').AsString)) <> 'EXTERIOR' then begin
                           Fornecedores.FieldByName('Municipio_Codigo').Value   := FornecedoresTemp.FieldByName('Municipio_Codigo').Value;
                           Fornecedores.FieldByName('CNPJ').Value               := FornecedoresTemp.FieldByName('CNPJ').Value;
                           Fornecedores.FieldByName('Inscricao_Estadual').Value := FornecedoresTemp.FieldByName('Inscricao_Estadual').Value;
                           Fornecedores.FieldByName('Isento').Value             := FornecedoresTemp.FieldByName('Isento').Value;
                        end else begin
                           Fornecedores.FieldByName('Municipio_Codigo').Value := '9999999';
                           Fornecedores.FieldByName('Isento').Value           := true;
                           Fornecedores.FieldByName('Ramo_Atividade').Value   := 3;
                        End;
                        Fornecedores.FieldByName('Municipio').Value           := FornecedoresTemp.FieldByName('Municipio').Value;
                        Fornecedores.FieldByName('Estado').Value              := FornecedoresTemp.FieldByName('Estado').Value;
                        Fornecedores.FieldByName('Pais').Value                := FornecedoresTemp.FieldByName('Pais').Value;
                        Fornecedores.FieldByName('CEP').Value                 := FornecedoresTemp.FieldByName('CEP').Value;
                        Fornecedores.FieldByName('Telefone1').Value           := FornecedoresTemp.FieldByName('Telefone1').Value;
                        Fornecedores.FieldByName('Telefone2').Value           := FornecedoresTemp.FieldByName('Telefone2').Value;
                        Fornecedores.FieldByName('FAX').Value                 := FornecedoresTemp.FieldByName('FAX').Value;
                        Fornecedores.FieldByName('CPF').Value                 := FornecedoresTemp.FieldByName('CPF').Value;
                        Fornecedores.FieldByName('RG').Value                  := FornecedoresTemp.FieldByName('RG').Value;
                        Fornecedores.FieldByName('Inscricao_Municipal').Value := FornecedoresTemp.FieldByName('Inscricao_Municipal').Value;
                        Fornecedores.FieldByName('Email').Value               := FornecedoresTemp.FieldByName('Email').Value;
                        Fornecedores.FieldByName('Site').Value                := FornecedoresTemp.FieldByName('Site').Value;
                        Fornecedores.FieldByName('Alterado').Value            := false;
                        Fornecedores.Post;
                     End;
                     FornecedoresTemp.Next;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;
               End;
               If mAvisos > 0 then MemoAvisos.Lines.Add(Replicate('-', 130));
          End;
      End;

      // Importação das notas fiscais próprias.
      If cImpNotas.Checked then begin
          With Dados, dmFiscal do begin
               ProcessosDOC.SQL.Clear;
               ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
               ProcessosDOC.Open;

               Notas.SQL.Clear;
               Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Data_Emissao = :pData) ORDER BY Numero');
               Notas.ParamByName('pData').AsDate := Date;
               Notas.Open;

               NotasItens.SQL.Clear;
               NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Data = :pData)');
               NotasItens.ParamByName('pData').AsDate := Date;
               NotasItens.Open;

               NotasTemp.SQL.Clear;
               NotasTemp.SQL.Add('SELECT * FROM NotasTemp WHERE(CNPJ = :pCNPJ)');
               NotasTemp.ParamByName('pCNPJ').AsString := EmpresasCNPJ.AsString;
               NotasTemp.Open;

               Janela_Processamento.Progresso.Max      := NotasTemp.RecordCount;
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.lProcesso.Caption  := 'Importando as Notas Fiscais Próprias...';

               NotasTemp.First;
               While (not NotasTemp.Eof) and (not Funcoes.Cancelado) do begin
                     If (Notas.Locate('Numero; Data_Emissao', VarArrayOf([NotasTemp.FieldByName('Numero').Value, NotasTemp.FieldByName('Data_Emissao').Value]), [loCaseInsensitive]) = false) then begin
                        Notas.Append;
                     end else begin
                        If cModificar.Checked = false then begin
                           Inc(mAvisos);
                           MemoAvisos.Lines.Add('Nota Fiscal não foi importada (Já Cadastrada): '+NotasTemp.FieldByName('Numero').AsString+ ' - '+NotasTemp.FieldByName('Data_Emissao').AsString);
                        end else
                           Notas.Edit;
                     End;

                     mProcesso := '';
                     If ProcessosDOC.Locate('Numero_Declaracao', NotasTemp.FieldByName('DI').AsString, [loCaseInsensitive]) = true then begin
                        mProcesso := Trim(ProcessosDOC.FieldByName('Processo').AsString);
                     End;
                     If mProcesso = '' then mProcesso := 'AJUSTE ESTOQUE';

                     If (Notas.State = dsInsert) or (Notas.State = dsEdit) then begin
                        Notas.FieldByName('Numero').Value                := NotasTemp.FieldByName('Numero').Value;
                        Notas.FieldByName('Processo').Value              := mProcesso;
                        Notas.FieldByName('Pedido').Value                := NotasTemp.FieldByName('Pedido').Value;
                        Notas.FieldByName('Saida_Entrada').Value         := NotasTemp.FieldByName('Saida_Entrada').Value;
                        Notas.FieldByName('Data_Emissao').Value          := NotasTemp.FieldByName('Data_Emissao').Value;
                        Notas.FieldByName('Data_EntradaSaida').Value     := NotasTemp.FieldByName('Data_EntradaSaida').Value;
                        Notas.FieldByName('Tipo_Nota').Value             := NotasTemp.FieldByName('Tipo_Nota').Value;
                        Notas.FieldByName('Serie').Value                 := NotasTemp.FieldByName('Serie').Value;
                        Notas.FieldByName('DI').Value                    := NotasTemp.FieldByName('DI').Value;
                        Notas.FieldByName('Natureza_Codigo').Value       := NotasTemp.FieldByName('Natureza_Codigo').Value;
                        Notas.FieldByName('Inf_Complementares').Value    := NotasTemp.FieldByName('Inf_Complementares').Value;
                        Notas.FieldByName('Fornecedor_Codigo').Value     := NotasTemp.FieldByName('Fornecedor_Codigo').Value;
                        Notas.FieldByName('Cliente_Codigo').Value        := NotasTemp.FieldByName('Cliente_Codigo').Value;
                        Notas.FieldByName('Estado').AsString             := NotasTemp.FieldByName('Estado').AsString;
                        Notas.FieldByName('Transportador_Codigo').Value  := NotasTemp.FieldByName('Transportador_Codigo').Value;
                        Notas.FieldByName('Valor_PIS').Value             := NotasTemp.FieldByName('Valor_PIS').Value;
                        Notas.FieldByName('Valor_COFINS').Value          := NotasTemp.FieldByName('Valor_COFINS').Value;
                        Notas.FieldByName('Aliquota_ICMSOper').Value     := NotasTemp.FieldByName('Aliquota_ICMSOper').Value;
                        Notas.FieldByName('BCICMS').Value                := NotasTemp.FieldByName('BCICMS').Value;
                        Notas.FieldByName('Valor_ICMS').Value            := NotasTemp.FieldByName('Valor_ICMS').Value;
                        Notas.FieldByName('Aliquota_ICMSSub').Value      := NotasTemp.FieldByName('Aliquota_ICMSSub').Value;
                        Notas.FieldByName('Valor_TotalProdutos').Value   := NotasTemp.FieldByName('Valor_TotalProdutos').Value;
                        Notas.FieldByName('Total_Frete').Value           := NotasTemp.FieldByName('Total_Frete').Value;
                        Notas.FieldByName('Valor_Seguro').Value          := NotasTemp.FieldByName('Valor_Seguro').Value;
                        Notas.FieldByName('Valor_OutrasDespesas').Value  := NotasTemp.FieldByName('Valor_OutrasDespesas').Value;
                        Notas.FieldByName('BCIPI').Value                 := NotasTemp.FieldByName('BCIPI').Value;
                        Notas.FieldByName('Valor_TotalIPI').Value        := NotasTemp.FieldByName('Valor_TotalIPI').Value;
                        Notas.FieldByName('Valor_TotalNota').Value       := NotasTemp.FieldByName('Valor_TotalNota').Value;
                        Notas.FieldByName('Rateio_Despesas').Value       := NotasTemp.FieldByName('Rateio_Despesas').Value;
                        Notas.FieldByName('Valor_TotalMVA').Value        := NotasTemp.FieldByName('Valor_TotalMVA').Value;
                        Notas.FieldByName('Valor_ICMSReducao').Value     := NotasTemp.FieldByName('Valor_ICMSReducao').Value;
                        Notas.FieldByName('Valor_TotalII').Value         := NotasTemp.FieldByName('Valor_TotalII').Value;
                        Notas.FieldByName('Modalidade_Pgto').Value       := NotasTemp.FieldByName('Modalidade_Pgto').Value;
                        Notas.FieldByName('Desconto_Percentual').Value   := NotasTemp.FieldByName('Desconto_Percentual').Value;
                        Notas.FieldByName('Desconto_Tipo').Value         := NotasTemp.FieldByName('Desconto_Tipo').Value;
                        Notas.FieldByName('Total_Descontos').Value       := NotasTemp.FieldByName('Total_Descontos').Value;
                        Notas.FieldByName('Cancelada').Value             := NotasTemp.FieldByName('Cancelada').Value;
                        Notas.FieldByName('NFe_cNF').Value               := NotasTemp.FieldByName('NFe_cNF').Value;
                        Notas.FieldByName('Incentivo_Fiscal').Value      := NotasTemp.FieldByName('Incentivo_Fiscal').Value;
                        Notas.Post;

                        // Importando os itens da nota fiscal.
                        NotasItens.SQL.Clear;
                        NotasItens.SQL.Add('DELETE FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
                        NotasItens.ParamByName('pNota').AsInteger := NotasTemp.FieldByName('Numero').AsInteger;
                        NotasItens.ParamByName('pData').AsDate    := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        NotasItens.Execute;
                        NotasItens.SQL.Clear;
                        NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNota) AND (Data = :pData)');
                        NotasItens.ParamByName('pNota').AsInteger := NotasTemp.FieldByName('Numero').AsInteger;
                        NotasItens.ParamByName('pData').AsDate    := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        NotasItens.Open;
                        NotasTempItens.SQL.Clear;
                        NotasTempItens.SQL.Add('SELECT * FROM NotasTempItens WHERE(Nota = :pNota) AND (Data = :pData)');
                        NotasTempItens.ParamByName('pNota').AsInteger := NotasTemp.FieldByName('Numero').AsInteger;
                        NotasTempItens.ParamByName('pData').AsDate    := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        NotasTempItens.Open;
                        NotasTempItens.First;

                        mItem := 1;
                        While (not NotasTempItens.Eof) and (not Funcoes.Cancelado) do begin
                              NotasItens.Append;
                                         NotasItens.FieldByName('Nota').Value                 := NotasTempItens.FieldByName('Nota').Value;
                                         NotasItens.FieldByName('Data').Value                 := NotasTempItens.FieldByName('Data').Value;
                                         NotasItens.FieldByName('Movimenta_Estoque').Value    := NotasTempItens.FieldByName('Movimenta_Estoque').Value;
                                         NotasItens.FieldByName('Item').Value                 := mItem;
                                         NotasItens.FieldByName('Codigo_Mercadoria').Value    := NotasTempItens.FieldByName('Codigo_Mercadoria').Value;
                                         NotasItens.FieldByName('Codigo_Fabricante').Value    := NotasTempItens.FieldByName('Codigo_Fabricante').Value;
                                         NotasItens.FieldByName('Descricao_Mercadoria').Value := NotasTempItens.FieldByName('Descricao_Mercadoria').Value;
                                         NotasItens.FieldByName('NCM').Value                  := NotasTempItens.FieldByName('NCM').Value;
                                         NotasItens.FieldByName('Unidade_Medida').Value       := NotasTempItens.FieldByName('Unidade_Medida').Value;
                                         NotasItens.FieldByName('Quantidade').Value           := NotasTempItens.FieldByName('Quantidade').Value;
                                         NotasItens.FieldByName('Disponivel').Value           := NotasTempItens.FieldByName('Disponivel').Value;
                                         NotasItens.FieldByName('Valor_Unitario').Value       := NotasTempItens.FieldByName('Valor_Unitario').Value;
                                         NotasItens.FieldByName('Valor_Total').Value          := NotasTempItens.FieldByName('Valor_Total').Value;
                                         NotasItens.FieldByName('Aliquota_IPI').Value         := NotasTempItens.FieldByName('Aliquota_IPI').Value;
                                         NotasItens.FieldByName('Total_IPI').Value            := NotasTempItens.FieldByName('Total_IPI').Value;
                                         NotasItens.FieldByName('Valor_IPI').Value            := NotasTempItens.FieldByName('Valor_IPI').Value;
                                         NotasItens.FieldByName('CodigoTrib_TabA').Value      := NotasTempItens.FieldByName('CodigoTrib_TabA').Value;
                                         NotasItens.FieldByName('CodigoTrib_TabB').Value      := NotasTempItens.FieldByName('CodigoTrib_TabB').Value;
                                         NotasItens.FieldByName('CSTIPI').Value               := NotasTempItens.FieldByName('CSTIPI').Value;
                                         NotasItens.FieldByName('CSTPIS').Value               := NotasTempItens.FieldByName('CSTPIS').Value;
                                         NotasItens.FieldByName('CSTCOFINS').Value            := NotasTempItens.FieldByName('CSTCOFINS').Value;
                                         NotasItens.FieldByName('Valor_BCICMSOper').Value     := NotasTempItens.FieldByName('Valor_BCICMSOper').Value;
                                         NotasItens.FieldByName('Aliquota_ICMSOper').Value    := NotasTempItens.FieldByName('Aliquota_ICMSOper').Value;
                                         NotasItens.FieldByName('Valor_ICMSOper').Value       := NotasTempItens.FieldByName('Valor_ICMSOper').Value;
                                         NotasItens.FieldByName('Valor_BCICMSSub').Value      := NotasTempItens.FieldByName('Valor_BCICMSSub').Value;
                                         NotasItens.FieldByName('Valor_ICMSSub').Value        := NotasTempItens.FieldByName('Valor_ICMSSub').Value;
                                         NotasItens.FieldByName('Aliquota_ICMSReducao').Value := NotasTempItens.FieldByName('Aliquota_ICMSReducao').Value;
                                         NotasItens.FieldByName('Saida_Entrada').Value        := NotasTempItens.FieldByName('Saida_Entrada').Value;
                                         NotasItens.FieldByName('DI').Value                   := NotasTempItens.FieldByName('DI').Value;
                                         NotasItens.FieldByName('Valor_IsentasICMS').Value    := NotasTempItens.FieldByName('Valor_IsentasICMS').Value;
                                         NotasItens.FieldByName('Valor_OutrasICMS').Value     := NotasTempItens.FieldByName('Valor_OutrasICMS').Value;
                                         NotasItens.FieldByName('Valor_IsentasIPI').Value     := NotasTempItens.FieldByName('Valor_IsentasIPI').Value;
                                         NotasItens.FieldByName('Valor_OutrasIPI').Value      := NotasTempItens.FieldByName('Valor_OutrasIPI').Value;
                                         NotasItens.FieldByName('Valor_BCIPI').Value          := NotasTempItens.FieldByName('Valor_BCIPI').Value;
                                         NotasItens.FieldByName('Processo').Value             := mProcesso;
                                         NotasItens.FieldByName('Movimenta_Estoque').Value    := NotasTempItens.FieldByName('Movimenta_Estoque').Value;
                                         NotasItens.FieldByName('Movimenta_Inventario').Value := NotasTempItens.FieldByName('Movimenta_Inventario').Value;
                                         NotasItens.FieldByName('Cancelada').Value            := NotasTempItens.FieldByName('Cancelada').Value;
                              NotasItens.Post;
                              NotasTempItens.Next;
                              Inc(mItem);
                        End;
                        Notas.Edit;
                              NotasProcesso.Value := mProcesso;
                        Notas.Post;
                     End;

                     NotasTemp.Next;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;
               End;
               If mAvisos > 0 then MemoAvisos.Lines.Add(Replicate('-', 130));
          End;

          // Importação das notas fiscais de terceiros.
          With Dados, dmFiscal do begin
               ProcessosDOC.SQL.Clear;
               ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
               ProcessosDOC.Open;

               NotasTerceiros.SQL.Clear;
               NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros ORDER BY Nota');
               NotasTerceiros.Open;

               NotasTerceirosItens.SQL.Clear;
               NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens');
               NotasTerceirosItens.Open;

               NotasTemp.SQL.Clear;
               NotasTemp.SQL.Add('SELECT * FROM NotasTemp WHERE(CNPJ <> :pCNPJ)');
               NotasTemp.ParamByName('pCNPJ').AsString := EmpresasCNPJ.AsString;
               NotasTemp.Open;

               Janela_Processamento.Progresso.Max      := NotasTemp.RecordCount;
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.lProcesso.Caption  := 'Importando as Notas Fiscais de Terceiros...';

               NotasTemp.First;
               While (not NotasTemp.Eof) and (not Funcoes.Cancelado) do begin
                     If (NotasTerceiros.Locate('Nota; Data_Emissao; Fornecedor', VarArrayOf([NotasTemp.FieldByName('Numero').Value, NotasTemp.FieldByName('Data_Emissao').Value, NotasTemp.FieldByName('Fornecedor_Codigo').Value]), [loCaseInsensitive]) = false) then begin
                        NotasTerceiros.Append;
                     end else begin
                        If cModificar.Checked = false then begin
                           Inc(mAvisos);
                           MemoAvisos.Lines.Add('Nota Fiscal não foi importada (Já Cadastrada): '+NotasTemp.FieldByName('Numero').AsString+ ' - '+NotasTemp.FieldByName('Data_Emissao').AsString);
                        end else
                           NotasTerceiros.Edit;
                     End;

                     mProcesso := '';
                     If ProcessosDOC.Locate('Numero_Declaracao', NotasTemp.FieldByName('DI').AsString, [loCaseInsensitive]) = true then begin
                        mProcesso := Trim(ProcessosDOC.FieldByName('Processo').AsString);
                     End;
                     If mProcesso = '' then mProcesso := 'AJUSTE ESTOQUE';

                     If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
                        // Totalizando os itens da nota de terceiro.
                        tQtde.SQL.Clear;
                        tQtde.SQL.Add('SELECT SUM(Quantidade) AS Quantidade FROM NotasTempItens WHERE(Nota = :pNota) AND (Data = :pData) AND (Fornecedor = :pFornecedor)');
                        tQtde.ParamByName('pNota').AsInteger       := NotasTemp.FieldByName('Numero').AsInteger;
                        tQtde.ParamByName('pData').AsDate          := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        tQtde.ParamByName('pFornecedor').AsInteger := NotasTemp.FieldByName('Fornecedor_Codigo').AsInteger;
                        tQtde.Open;

                        NotasTerceiros.FieldByName('Processo').Value          := mProcesso;
                        NotasTerceiros.FieldByName('Nota').Value              := NotasTemp.FieldByName('Numero').Value;
                        NotasTerceiros.FieldByName('Referencia_Fiscal').Value := NotasTemp.FieldByName('Tipo_Nota').Value;
                        NotasTerceiros.FieldByName('Data_Emissao').Value      := NotasTemp.FieldByName('Data_Emissao').Value;
                        NotasTerceiros.FieldByName('Fornecedor').Value        := NotasTemp.FieldByName('Fornecedor_Codigo').Value;
                        NotasTerceiros.FieldByName('Estado').Value            := NotasTemp.FieldByName('Estado').AsString;
                        NotasTerceiros.FieldByName('Data_Entrada').Value      := NotasTemp.FieldByName('Data_EntradaSaida').Value;
                        NotasTerceiros.FieldByName('Tipo').Value              := NotasTemp.FieldByName('Tipo').Value;
                        NotasTerceiros.FieldByName('Modelo').Value            := NotasTemp.FieldByName('Modelo').Value;
                        NotasTerceiros.FieldByName('Serie').Value             := NotasTemp.FieldByName('Serie').Value;
                        NotasTerceiros.FieldByName('SubSerie').Value          := '';
                        NotasTerceiros.FieldByName('Natureza_Codigo').Value   := NotasTemp.FieldByName('Natureza_Codigo').Value;

                        If ReferenciasFiscais.Locate('Codigo', NotasTemp.FieldByName('Tipo_Nota').Value, [loCaseInsensitive]) = true then begin
                           If Trim(ReferenciasFiscaisServico.AsString) <> '' then begin
                              NotasTerceiros.FieldByName('Servico').Value := ReferenciasFiscaisServico.AsString;
                           End;
                        end else begin
                           MemoAvisos.Lines.Add('Referência fiscal não encontrada para a nota fiscal :'+NotasTemp.FieldByName('Numero').AsString);
                        End;   

                        NotasTerceiros.FieldByName('Quantidade').Value           := tQtde.FieldByName('Quantidade').Value;
                        NotasTerceiros.FieldByName('Valor_BCICMSOper').Value     := NotasTemp.FieldByName('BCICMS').Value;
                        NotasTerceiros.FieldByName('Aliquota_ICMSOper').Value    := NotasTemp.FieldByName('Aliquota_ICMSOper').Value;
                        NotasTerceiros.FieldByName('Valor_ICMSOper').Value       := NotasTemp.FieldByName('Valor_ICMS').Value;
                        NotasTerceiros.FieldByName('Valor_IsentasICMS').Value    := NotasTemp.FieldByName('Valor_IsentasICMS').Value;
                        NotasTerceiros.FieldByName('Valor_OutrasICMS').Value     := NotasTemp.FieldByName('Valor_Seguro').Value;
                        NotasTerceiros.FieldByName('Valor_TotalProdutos').Value  := NotasTemp.FieldByName('Valor_TotalProdutos').Value;
                        NotasTerceiros.FieldByName('Valor_TotalDescontos').Value := NotasTemp.FieldByName('Total_Descontos').Value;
                        NotasTerceiros.FieldByName('Valor_TotalNota').Value      := NotasTemp.FieldByName('Valor_TotalNota').Value;
                        NotasTerceiros.FieldByName('Valor_TotalLiquido').Value   := NotasTemp.FieldByName('Valor_TotalProdutos').Value;
                        NotasTerceiros.FieldByName('Valor_BCICMSSub').Value      := NotasTemp.FieldByName('BCICMS_Substitutivo').Value;
                        NotasTerceiros.FieldByName('Valor_ICMSSub').Value        := NotasTemp.FieldByName('ValorICMS_Substitutivo').Value;
                        NotasTerceiros.FieldByName('Aliquota_ICMSSub').Value     := NotasTemp.FieldByName('Aliquota_ICMSSub').Value;
                        NotasTerceiros.FieldByName('Valor_TotalBCIPI').Value     := NotasTemp.FieldByName('BCIPI').Value;
                        NotasTerceiros.FieldByName('Valor_TotalIPI').Value       := NotasTemp.FieldByName('Valor_TotalIPI').Value;
                        NotasTerceiros.FieldByName('Valor_IsentasIPI').Value     := NotasTemp.FieldByName('Valor_IsentasIPI').Value;
                        NotasTerceiros.FieldByName('Valor_OutrasIPI').Value      := NotasTemp.FieldByName('Valor_OutrasIPI').Value;
                        NotasTerceiros.FieldByName('Observacoes').Value          := 'NOTA FISCAL IMPORTADA EM '+ NotasTemp.FieldByName('Data_Emissao').AsString + ' PARA AJUSTE DE ESTOQUE.';
                        NotasTerceiros.FieldByName('Volume_PesoLiquido').Value   := NotasTemp.FieldByName('Volume_PesoLiquido').Value;
                        NotasTerceiros.FieldByName('Volume_PesoBruto').Value     := NotasTemp.FieldByName('Volume_PesoBruto').Value;
                        NotasTerceiros.FieldByName('Aliquota_PIS').Value         := 0;
                        NotasTerceiros.FieldByName('Valor_PIS').Value            := NotasTemp.FieldByName('Valor_PIS').Value;
                        NotasTerceiros.FieldByName('Aliquota_COFINS').Value      := 0;
                        NotasTerceiros.FieldByName('Valor_COFINS').Value         := NotasTemp.FieldByName('Valor_COFINS').Value;
                        NotasTerceiros.FieldByName('Aliquota_ISS').Value         := 0;
                        NotasTerceiros.FieldByName('Valor_ISS').Value            := 0;
                        NotasTerceiros.FieldByName('NFe_cNF').Value              := NotasTemp.FieldByName('NFe_cNF').Value;
                        NotasTerceiros.FieldByName('NFe_Protocolo').Value        := NotasTemp.FieldByName('NFe_Protocolo').Value;
                        NotasTerceiros.FieldByName('Incentivo_Fiscal').Value     := NotasTemp.FieldByName('Incentivo_Fiscal').Value;
                        NotasTerceiros.Post;

                        // Importando os itens da nota fiscal de terceiros.
                        NotasTerceirosItens.SQL.Clear;
                        NotasTerceirosItens.SQL.Add('DELETE FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
                        NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTemp.FieldByName('Numero').AsInteger;
                        NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTemp.FieldByName('Fornecedor_Codigo').AsInteger;
                        NotasTerceirosItens.Execute;
                        NotasTerceirosItens.SQL.Clear;
                        NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
                        NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTemp.FieldByName('Numero').AsInteger;
                        NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTemp.FieldByName('Fornecedor_Codigo').AsInteger;
                        NotasTerceirosItens.Open;
                        NotasTempItens.SQL.Clear;
                        NotasTempItens.SQL.Add('SELECT * FROM NotasTempItens WHERE(Nota = :pNota) AND (Data = :pData) AND (Fornecedor = :pFornecedor)');
                        NotasTempItens.ParamByName('pNota').AsInteger       := NotasTemp.FieldByName('Numero').AsInteger;
                        NotasTempItens.ParamByName('pData').AsDate          := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                        NotasTempItens.ParamByName('pFornecedor').AsInteger := NotasTemp.FieldByName('Fornecedor_Codigo').AsInteger;
                        NotasTempItens.Open;
                        NotasTempItens.First;

                        mItem := 1;
                        While (not NotasTempItens.Eof) and (not Funcoes.Cancelado) do begin
                              NotasTerceirosItens.Append;
                                                  NotasTerceirosItens.FieldByName('Nota').Value                 := NotasTempItens.FieldByName('Nota').Value;
                                                  NotasTerceirosItens.FieldByName('Item').Value                 := NotasTempItens.FieldByName('Item').Value;
                                                  NotasTerceirosItens.FieldByName('Data_Emissao').Value         := NotasTempItens.FieldByName('Data').Value;
                                                  NotasTerceirosItens.FieldByName('Data_Entrada').Value         := NotasTemp.FieldByName('Data_EntradaSaida').Value;
                                                  NotasTerceirosItens.FieldByName('Processo').Value             := mProcesso;
                                                  NotasTerceirosItens.FieldByName('Fornecedor').Value           := NotasTempItens.FieldByName('Fornecedor').Value;
                                                  NotasTerceirosItens.FieldByName('Natureza_Codigo').Value      := NotasTemp.FieldByName('Natureza_Codigo').Value;
                                                  NotasTerceirosItens.FieldByName('Codigo_Mercadoria').Value    := NotasTempItens.FieldByName('Codigo_Mercadoria').Value;
                                                  NotasTerceirosItens.FieldByName('Descricao_Mercadoria').Value := NotasTempItens.FieldByName('Descricao_Mercadoria').Value;
                                                  NotasTerceirosItens.FieldByName('Adicao').Value               := NotasTempItens.FieldByName('Adicao').Value;
                                                  NotasTerceirosItens.FieldByName('NCM').Value                  := NotasTempItens.FieldByName('NCM').Value;
                                                  NotasTerceirosItens.FieldByName('Unidade_Medida').Value       := NotasTempItens.FieldByName('Unidade_Medida').Value;
                                                  NotasTerceirosItens.FieldByName('CodigoTrib_TabA').Value      := NotasTempItens.FieldByName('CodigoTrib_TabA').Value;
                                                  NotasTerceirosItens.FieldByName('CodigoTrib_TabB').Value      := NotasTempItens.FieldByName('CodigoTrib_TabB').Value;
                                                  NotasTerceirosItens.FieldByName('Quantidade').Value           := NotasTempItens.FieldByName('Quantidade').Value;
                                                  NotasTerceirosItens.FieldByName('Disponivel').Value           := NotasTempItens.FieldByName('Disponivel').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_Unitario').Value       := NotasTempItens.FieldByName('Valor_Unitario').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_Desconto').Value       := 0;
                                                  NotasTerceirosItens.FieldByName('Valor_Liquido').Value        := NotasTempItens.FieldByName('Valor_Unitario').Value;
                                                  NotasTerceirosItens.FieldByName('Aliquota_ICMSOper').Value    := NotasTempItens.FieldByName('Aliquota_ICMSOper').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_BCICMSOper').Value     := NotasTempItens.FieldByName('Valor_BCICMSOper').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_ICMSOper').Value       := NotasTempItens.FieldByName('Valor_ICMSOper').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_IsentasICMS').Value    := NotasTempItens.FieldByName('Valor_IsentasICMS').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_OutrasICMS').Value     := NotasTempItens.FieldByName('Valor_OutrasICMS').Value;
                                                  NotasTerceirosItens.FieldByName('Gera_Registro88').Value      := false;
                                                  NotasTerceirosItens.FieldByName('Aliquota_ICMSSub').Value     := NotasTempItens.FieldByName('Aliquota_ICMSSub').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_BCICMSSub').Value      := NotasTempItens.FieldByName('Valor_BCICMSSub').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_ICMSSub').Value        := NotasTempItens.FieldByName('Valor_ICMSSub').Value;
                                                  NotasTerceirosItens.FieldByName('Aliquota_IPI').Value         := NotasTempItens.FieldByName('Aliquota_IPI').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_IPI').Value            := NotasTempItens.FieldByName('Valor_IPI').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_BCIPI').Value          := NotasTempItens.FieldByName('Valor_BCIPI').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_OutrasIPI').Value      := NotasTempItens.FieldByName('Valor_OutrasIPI').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_IsentasIPI').Value     := NotasTempItens.FieldByName('Valor_IsentasIPI').Value;
                                                  NotasTerceirosItens.FieldByName('Peso_Liquido').Value         := NotasTempItens.FieldByName('Peso_Liquido').Value;
                                                  NotasTerceirosItens.FieldByName('Peso_Bruto').Value           := NotasTempItens.FieldByName('Peso_Bruto').Value;
                                                  NotasTerceirosItens.FieldByName('Tipo').Value                 := NotasTempItens.FieldByName('Tipo').Value;
                                                  NotasTerceirosItens.FieldByName('Aliquota_PIS').Value         := NotasTempItens.FieldByName('Aliquota_PIS').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_PIS').Value            := NotasTempItens.FieldByName('Valor_PIS').Value;
                                                  NotasTerceirosItens.FieldByName('Aliquota_COFINS').Value      := NotasTempItens.FieldByName('Aliquota_COFINS').Value;
                                                  NotasTerceirosItens.FieldByName('Valor_COFINS').Value         := NotasTempItens.FieldByName('Valor_COFINS').Value;
                                                  NotasTerceirosItens.FieldByName('Consumo_Energia').Value      := 0;
                                                  NotasTerceirosItens.FieldByName('CST_IPI').Value              := NotasTempItens.FieldByName('CSTIPI').Value;
                                                  NotasTerceirosItens.FieldByName('CST_PIS').Value              := NotasTempItens.FieldByName('CSTPIS').Value;
                                                  NotasTerceirosItens.FieldByName('CST_COFINS').Value           := NotasTempItens.FieldByName('CSTCOFINS').Value;
                                                  NotasTerceirosItens.FieldByName('Movimenta_Estoque').Value    := NotasTempItens.FieldByName('Movimenta_Estoque').Value;
                                                  NotasTerceirosItens.FieldByName('Movimenta_Inventario').Value := NotasTempItens.FieldByName('Movimenta_Inventario').Value;
                                                  NotasTerceirosItens.FieldByName('DI').Value                   := NotasTempItens.FieldByName('DI').Value;
                              NotasTerceirosItens.Post;
                              NotasTempItens.Next;
                              Inc(mItem);
                        End;
                        NotasTerceiros.Edit;
                                       NotasTerceirosProcesso.Value := mProcesso;
                        NotasTerceiros.Post;
                     End;

                     NotasTemp.Next;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;
               End;
               If mAvisos > 0 then MemoAvisos.Lines.Add(Replicate('-', 130));

               NotasTerceiros.EnableControls;
               NotasTemp.EnableControls;
               NotasTerceirosItens.EnableControls;
               NotasTempItens.EnableControls;
          End;
      End;

      mCarregando := false;
      Janela_Processamento.Close;
      PageControl1.ActivePageIndex := 7;

      With Dados, dmFiscal do begin
           Produtos.EnableControls;
           ProdutosTemp.EnableControls;
           Clientes.EnableControls;
           ClientesTemp.EnableControls;
           FornecedoresTemp.EnableControls;
           Fornecedores.EnableControls;
           NotasTempItens.EnableControls;
           NotasTemp.EnableControls;
           NotasTempItens.EnableControls;
           Notas.EnableControls;
           NotasItens.EnableControls;
           NotasTerceiros.EnableControls;
           NotasTerceirosItens.EnableControls;
      End;      
end;

procedure TUtilitario_ImportarTexto.FormShow(Sender: TObject);
var
       aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cProdutos.Text           := aINI.ReadString('EXPORTACAO_PROSOFT', 'Produtos'    , '');
      cEstoque.Text            := aINI.ReadString('EXPORTACAO_PROSOFT', 'Estoque'     , '');
      cInventario.Text         := aINI.ReadString('EXPORTACAO_PROSOFT', 'Inventario'  , '');
      cNotasEntrada.Text       := aINI.ReadString('EXPORTACAO_PROSOFT', 'NotasEntrada', '');
      cItensEntrada.Text       := aINI.ReadString('EXPORTACAO_PROSOFT', 'ItensEntrada', '');
      cNotasSaida.Text         := aINI.ReadString('EXPORTACAO_PROSOFT', 'NotasSaida'  , '');
      cItensSaida.Text         := aINI.ReadString('EXPORTACAO_PROSOFT', 'ItensSaida'  , '');
      cParticipante.Text       := aINI.ReadString('EXPORTACAO_PROSOFT', 'Participante', '');
      cParticipanteMai.Checked := aINI.ReadBool  ('EXPORTACAO_PROSOFT', 'Maiusculo'   , true);
      cDataEmissao.Text        := aINI.ReadString('EXPORTACAO_PROSOFT', 'Data'        , '');
      cTipoNota.Text           := aINI.ReadString('EXPORTACAO_PROSOFT', 'TipoNota'    , '');
      cReferencia.Text         := aINI.ReadString('EXPORTACAO_PROSOFT', 'Referencia'  , '');
      cModificar.Checked       := aINI.ReadBool  ('EXPORTACAO_PROSOFT', 'Modificar'   , false);
      aINI.Free;

      With Dados do begin
           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota ORDER BY Codigo');
           TipoNota.Open;

           ReferenciasFiscais.SQL.Clear;
           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais ORDER BY Codigo');
           ReferenciasFiscais.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo) ORDER BY Codigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;
end;

procedure TUtilitario_ImportarTexto.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'Produtos'    , cProdutos.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'Estoque'     , cEstoque.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'Inventario'  , cInventario.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'NotasEntrada', cNotasEntrada.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'ItensEntrada', cItensEntrada.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'NotasSaida'  , cNotasSaida.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'ItensSaida'  , cItensSaida.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'Participante', cParticipante.Text);
      aINI.WriteBool  ( 'EXPORTACAO_PROSOFT', 'Maiusculo'   , cParticipanteMai.Checked);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'Data'        , cDataEmissao.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'TipoNota'    , cTiponota.Text);
      aINI.WriteString( 'EXPORTACAO_PROSOFT', 'Referencia'  , cReferencia.Text);
      aINI.WriteBool  ( 'EXPORTACAO_PROSOFT', 'Modificar'   , cModificar.Checked);

      aINI.Free;
      Utilitario_ImportarTexto.Release;
      Utilitario_ImportarTexto := nil;
end;

procedure TUtilitario_ImportarTexto.NotasTempAfterScroll(DataSet: TDataSet);
begin
     If mCarregando = false then begin
        NotasTempItens.SQL.Clear;
        NotasTempItens.SQL.Add('SELECT * FROM NotasTempItens WHERE(Nota = :pNota) ORDER BY Linha');
        NotasTempItens.ParamByName('pNota').AsInteger := NotasTemp.FieldByName('Numero').AsInteger;
        NotasTempItens.Open;
     End;
end;

procedure TUtilitario_ImportarTexto.AtualizaParticipante;
begin
      Janela_Processamento                    := TJanela_Processamento.Create(Self);
      Janela_Processamento.Position           := poDesigned;
      Janela_Processamento.Top                := 450;
      Janela_Processamento.Progresso.Max      := NotasTemp.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Relacionando as notas aos Clientes/Fornecedores...';
      Janela_Processamento.Show;

      PageControl1.ActivePageIndex := 5;
      Application.ProcessMessages;

      NotasTemp.First;
      While not NotasTemp.Eof do begin
            If NotasTemp.FieldByName('Saida_Entrada').AsInteger = 0 then begin
               If FornecedoresTemp.Locate('CNPJ', NotasTemp.FieldByName('CNPJ_Participante').AsString, [loCaseInsensitive]) = true then begin
                  NotasTemp.Edit;
                            NotasTemp.FieldByName('Fornecedor_Codigo').Value := FornecedoresTemp.FieldByName('Codigo').AsInteger;
                  NotasTemp.Post;

                  NotasTempItens.SQL.Clear;
                  NotasTempItens.SQL.Add('UPDATE NotasTempItens SET Fornecedor = :pFornecedor WHERE(Nota = :pNota) AND (Data = :pData)');
                  NotasTempItens.ParamByName('pFornecedor').AsInteger := NotasTemp.FieldByName('Fornecedor_Codigo').AsInteger;
                  NotasTempItens.ParamByName('pData').AsDate          := NotasTemp.FieldByName('Data_Emissao').AsDateTime;
                  NotasTempItens.ParamByName('pNota').AsInteger       := NotasTemp.FieldByName('Numero').AsInteger;
                  NotasTempItens.Execute;
               End;
            end else begin
               If ClientesTemp.Locate('CNPJ', NotasTemp.FieldByName('CNPJ_Participante').AsString, [loCaseInsensitive]) = true then begin
                  NotasTemp.Edit;
                            NotasTemp.FieldByName('Cliente_Codigo').Value := ClientesTemp.FieldByName('Codigo').AsInteger;
                  NotasTemp.Post;
               End;
            End;
            NotasTemp.Next;
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      End;

      NotasTempItens.SQL.Clear;
      NotasTempItens.SQL.Add('SELECT * FROM NotasTempItens ORDER BY Item');
      NotasTempItens.Execute;

      Janela_Processamento.Close
End;

end.
